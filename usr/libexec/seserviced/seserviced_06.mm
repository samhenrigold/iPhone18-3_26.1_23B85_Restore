uint64_t sub_10009B9B8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_13;
  }

  if (*(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {

    if (static UUID.== infix(_:_:)())
    {
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v14 = qword_10051B5A0;

      sub_100239874(a1, a2, 1, a3, v14, v4);
    }
  }

  v8 = sub_1002B3B94(&off_1004C38F8);
  a1 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1002FFA0C(0x425F454349564544, 0xEB00000000595355, v24);
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending %s", v19, 0xCu);
    sub_1000752F4(v20);
  }

  if (qword_100501B60 != -1)
  {
    goto LABEL_17;
  }

LABEL_13:
  v21 = sub_100239160(3, 17, v8, a1);
  v23 = v22;
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_1000E71A0(v21, v23, a3);
  sub_10006A178(v8, a1);
  return sub_10006A178(v21, v23);
}

void sub_10009BE50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  v13 = *(v9 + 104);
  v39 = enum case for DispatchPredicate.onQueue(_:);
  v38 = v13;
  v13(v11);
  v36 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v37 = *(v9 + 8);
  v37(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v34 = v9 + 104;
  v35 = v8;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v32 = v5;
  v33 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v7;
    v19 = v18;
    v40[0] = v18;
    *v17 = 136315138;
    v20 = UUID.uuidString.getter();
    v22 = sub_1002FFA0C(v20, v21, v40);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Disconnected %s", v17, 0xCu);
    sub_1000752F4(v19);
    v7 = v31;
  }

  swift_beginAccess();
  sub_10010DAA4(a1);
  swift_endAccess();

  v8 = v35;
  if (!*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
LABEL_10:
    if (qword_100501B70 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_100099870(2);

  while (1)
  {
    if (qword_100501BA0 != -1)
    {
LABEL_17:
      swift_once();
    }

    *v11 = v36;
    v38(v11, v39, v8);
    v28 = _dispatchPreconditionTest(_:)();
    v37(v11, v8);
    if (v28)
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_11:
    v23 = qword_10051B5B0;

    v24 = sub_10024F2B4(v23, a1);

    v25 = sub_1000CA828(v24);

    if (v25)
    {
      sub_100246878(v26, v27);
    }
  }

  (*(v32 + 16))(v7, a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v33);
  swift_beginAccess();
  sub_1000C4DD4(0, 0, 0, 1, v7);
  swift_endAccess();
  v29 = objc_opt_self();
  UUID.uuidString.getter();
  v30 = String._bridgeToObjectiveC()();

  sub_1003ADC30(v29, v30);
}

void sub_10009C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v8 + 104);
  (v38)(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v36 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v8 + 8);
  v13 = v8 + 8;
  v37 = v14;
  v14(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v35 = v12;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v34 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v13;
    v21 = v20;
    v41[0] = v20;
    *v19 = 134218754;
    *(v19 + 4) = v39;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a2;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a3;
    *(v19 + 32) = 2080;
    v22 = UUID.uuidString.getter();
    v24 = a3;
    v25 = a4;
    v26 = sub_1002FFA0C(v22, v23, v41);

    *(v19 + 34) = v26;
    a4 = v25;
    a3 = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Time sync event type %ld ticks %llu counter %llu peer %s", v19, 0x2Au);
    sub_1000752F4(v21);

    v7 = v33;
  }

  if (qword_100501BA0 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v27 = qword_10051B600;
  *v10 = v36;
  v38(v10);
  v28 = _dispatchPreconditionTest(_:)();
  v37(v10, v7);
  if (v28)
  {
    v29 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v30 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v27 + v30);
    *(v27 + v30) = 0x8000000000000000;
    sub_100314954(v39, v34, a3, a4 + v29, isUniquelyReferenced_nonNull_native);
    *(v27 + v30) = v40;
    swift_endAccess();
    sub_1002553AC(a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10009C71C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = v7;
  v7 = a1;
  if (qword_100501968 != -1)
  {
LABEL_7:
    swift_once();
  }

  v17 = *(v5 + 16);
  v17(v10, v7, v4);
  type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v10, v4);
  v19 = (v18 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
  *v19 = 0xD000000000000011;
  v19[1] = 0x80000001004607F0;
  v20 = (v18 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
  *v20 = sub_1000B2CF8;
  v20[1] = v2;

  sub_1000E82EC(v18);

  v21 = v24;
  v17(v24, v7, v4);
  swift_beginAccess();
  sub_1000D6D84(v10, v21);
  swift_endAccess();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_10009CA88(_BYTE *a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    v13 = *(v8 + 8);
    v8 += 8;
    result = v13(v10, v7);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers;
    swift_beginAccess();
    sub_10010D6E8(a1, v6);
    swift_endAccess();
    result = sub_100075768(v6, &unk_10050BE80, &unk_10040B360);
    if (*(*(a2 + v15) + 16))
    {
      return result;
    }

    v7 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
    swift_beginAccess();
    a2 = *(a2 + v7);
    a1 = *(a2 + 16);

    if (!a1)
    {
    }

    v6 = 0;
    v10 = (a2 + 40);
    while (v6 < *(a2 + 16))
    {
      ++v6;
      v16 = *(v10 - 1);
      v7 = *v10;

      v16(v17);

      v10 += 2;
      if (a1 == v6)
      {
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_10009CCF8()
{
  v1 = type metadata accessor for UUID();
  v76 = *(v1 - 8);
  v77 = v1;
  __chkstk_darwin(v1);
  v75 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = type metadata accessor for DispatchPredicate();
  v4 = *(i - 8);
  __chkstk_darwin(i);
  v6 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    v8 = enum case for DispatchPredicate.onQueue(_:);
    v9 = v4 + 104;
    v10 = *(v4 + 104);
    v10(v6, enum case for DispatchPredicate.onQueue(_:), i);
    v11 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    v13 = *(v4 + 8);
    v4 += 8;
    v12 = v13;
    result = (v13)(v6, i);
    if ((v7 & 1) == 0)
    {
      break;
    }

    if (*(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state))
    {
      return result;
    }

    v65 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
    v71 = v11;
    v72 = v12;
    v66 = v10;
    v67 = v8;
    v68 = v9;
    v69 = v4;
    v70 = i;
    v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers;
    swift_beginAccess();
    v73 = v0;
    v64 = v15;
    v16 = *(v0 + v15);
    if ((v16 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_1000B2B6C(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v17 = v80;
      v18 = v81;
      v19 = v82;
      v20 = v83;
      v21 = v84;
    }

    else
    {
      v22 = -1 << *(v16 + 32);
      v18 = v16 + 56;
      v19 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v16 + 56);
      swift_bridgeObjectRetain_n();
      v20 = 0;
      v17 = v16;
    }

    v74 = v19;
    for (i = (v19 + 64) >> 6; v17 < 0; v21 = v27)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_22;
      }

      v78 = v28;
      type metadata accessor for Peer(0);
      swift_dynamicCast();
      v4 = v79[0];
      v0 = v20;
      v27 = v21;
      if (!v79[0])
      {
        goto LABEL_22;
      }

LABEL_19:
      if (*(v4 + OBJC_IVAR____TtC10seserviced4Peer_isConnected))
      {
        sub_100093854(v17);

        v9 = v73;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v63 = v31;
          v74 = swift_slowAlloc();
          v79[0] = v74;
          *v31 = 136315138;
          v32 = v76;
          v33 = *(v76 + 16);
          HIDWORD(v62) = v30;
          v34 = v75;
          v35 = v77;
          v33(v75, v4 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v77);
          sub_1000B2B6C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v36 = v9;
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v38;
          (*(v32 + 8))(v34, v35);
          v40 = v37;
          v9 = v36;
          v41 = sub_1002FFA0C(v40, v39, v79);

          v42 = v63;
          *(v63 + 1) = v41;
          _os_log_impl(&_mh_execute_header, v29, BYTE4(v62), "Processing First Approach for %s", v42, 0xCu);
          sub_1000752F4(v74);
        }

        v12 = v71;
        v8 = v72;
        v43 = qword_1005019E8;

        if (v43 != -1)
        {
          goto LABEL_43;
        }

        goto LABEL_27;
      }

      v20 = v0;
    }

    v25 = v20;
    v26 = v21;
    v0 = v20;
    if (v21)
    {
LABEL_15:
      v27 = (v26 - 1) & v26;
      v4 = *(*(v17 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v26)))));

      if (v4)
      {
        goto LABEL_19;
      }

LABEL_22:
      sub_100093854(v17);
    }

    while (1)
    {
      v0 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v0 >= i)
      {
        goto LABEL_22;
      }

      v26 = *(v18 + 8 * v0);
      ++v25;
      if (v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_27:
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1000B2A5C;
  *(v44 + 24) = v4;

  v45 = sub_1000CAA04();

  v46 = sub_1000CA810(v45);

  if (!v46)
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to retrieve endpoint", v56, 2u);
    }

    swift_beginAccess();
    sub_10010DAA4(v4);
    swift_endAccess();

    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    v57 = qword_10051B5B0;

    v58 = sub_10024F2B4(v57, v4);

    v59 = sub_1000CA828(v58);

    if (v59)
    {
      sub_100246878(v60, v61);
    }
  }

  *(v9 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) = 1;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s", v62);
  *(v9 + v65) = 5;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v62);
  *(v9 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = v4;

  v47 = *(v9 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  *(v9 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = v46;
  v48 = v46;

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v49 = qword_10051B5A0;
  *v6 = v12;
  v50 = v70;
  v66(v6, v67, v70);
  v51 = v12;
  v52 = _dispatchPreconditionTest(_:)();
  v8(v6, v50);
  if ((v52 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  *(v49 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 1;
  if (qword_100501968 != -1)
  {
LABEL_45:
    swift_once();
  }

  type metadata accessor for DSKBLEPairing.BLEPairingRequest();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1004098E0;
  *(v53 + 32) = v4;
  *(v53 + 40) = &off_1004C34A8;
  *(v53 + 48) = sub_1000B3F4C;
  *(v53 + 56) = v9;
  *(v53 + 64) = sub_1000B3FB8;
  *(v53 + 72) = v9;
  swift_retain_n();

  sub_1000E9034(v53);
}

void sub_10009D764()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_1005018E0 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_100068B94();
  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) = 0;
  v8 = (v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v9 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v10 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
  *v8 = 0;
  v8[1] = 0;
  sub_1000B2A4C(v9, v10);
  v11 = OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers;
  swift_beginAccess();
  *(v1 + v11) = &_swiftEmptySetSingleton;

  v12 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
  swift_beginAccess();
  *(v1 + v12) = &_swiftEmptySetSingleton;

  v13 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachPeers;
  swift_beginAccess();
  *(v1 + v13) = &_swiftEmptySetSingleton;

  v14 = OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers;
  swift_beginAccess();
  *(v1 + v14) = &_swiftEmptySetSingleton;

  v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
  swift_beginAccess();
  *(v1 + v15) = _swiftEmptyArrayStorage;

  v16 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = 0;

  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s", v17);
  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = 0;

  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v17);
}

BOOL sub_10009DA54(void *a1, uint64_t a2)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v4 = [a1 publicKeyIdentifier];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v9 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v8 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v7 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_10006A2BC(v9, v8);
      sub_10006A2D0(v5, v7);
      return 1;
    }

    goto LABEL_7;
  }

  if (v8 >> 60 == 15)
  {
LABEL_7:
    sub_10006A2BC(v9, v8);
    sub_10006A2D0(v5, v7);
    sub_10006A2D0(v9, v8);
    return 0;
  }

  sub_10006A2BC(v9, v8);
  sub_10006A2BC(v9, v8);
  sub_100069E2C(v5, v7);
  v11 = sub_10008FB4C(v5, v7, v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A178(v5, v7);
  sub_10006A2D0(v5, v7);
  return v11;
}

void sub_10009DBC4(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v265 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v16 = qword_10051B7F0;
    *v15 = qword_10051B7F0;
    (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
    v17 = v16;
    v18 = _dispatchPreconditionTest(_:)();
    v19 = *(v13 + 8);
    v13 += 8;
    v19(v15, v12);
    if ((v18 & 1) == 0)
    {
      __break(1u);
      goto LABEL_79;
    }

    v291 = a3;
    a3 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;

    v21 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v22 = os_log_type_enabled(v21, v18);
    v292 = a4;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v293 = v6;
      v294 = a1;
      v25 = a3;
      v26 = a2;
      v27 = v24;
      v303 = v24;
      *v23 = 136315138;
      v28 = UUID.uuidString.getter();
      v30 = sub_1002FFA0C(v28, v29, &v303);

      *(v23 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v18, "Pairing started %s", v23, 0xCu);
      sub_1000752F4(v27);
      a2 = v26;
      a3 = v25;
      v6 = v293;
      a1 = v294;
    }

    v12 = *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
    if (!v12)
    {
      goto LABEL_13;
    }

    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      break;
    }

    a4 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
    if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 5)
    {

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v303 = v41;
        *v40 = 136315138;
        LOBYTE(v301) = *(v6 + a4);
        v42 = String.init<A>(describing:)();
        v44 = sub_1002FFA0C(v42, v43, &v303);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Wrong state %s", v40, 0xCu);
        sub_1000752F4(v41);
      }

      v45 = 2;
      goto LABEL_92;
    }

    v13 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_29;
      }

      v47 = *(a1 + 16);
      v46 = *(a1 + 24);
      v48 = __OFSUB__(v46, v47);
      v49 = v46 - v47;
      if (v48)
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v49 != 6)
      {
        goto LABEL_29;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_107;
      }

      if (HIDWORD(a1) - a1 != 6)
      {
LABEL_29:
        sub_100069E2C(a1, a2);
        v56 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v56, v18))
        {
          sub_10006A178(a1, a2);
          goto LABEL_91;
        }

        v57 = swift_slowAlloc();
        *v57 = 134218240;
        if (v13 > 1)
        {
          if (v13 != 2)
          {
            v58 = 0;
            goto LABEL_41;
          }

          v60 = *(a1 + 16);
          v59 = *(a1 + 24);
          v48 = __OFSUB__(v59, v60);
          v58 = v59 - v60;
          if (!v48)
          {
            goto LABEL_41;
          }

          __break(1u);
        }

        else if (!v13)
        {
          v58 = BYTE6(a2);
LABEL_41:
          *(v57 + 4) = v58;
          v61 = v57;
          sub_10006A178(a1, a2);
          *(v61 + 12) = 2048;
          *(v61 + 14) = 6;
          v62 = "Invalid BTAddrA %ld != %ld";
          v63 = v18;
          v64 = v56;
          v65 = v61;
          v66 = 22;
LABEL_90:
          _os_log_impl(&_mh_execute_header, v64, v63, v62, v65, v66);

          goto LABEL_91;
        }

        LODWORD(v58) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_150;
        }

        v58 = v58;
        goto LABEL_41;
      }
    }

    else if (BYTE6(a2) != 6)
    {
      goto LABEL_29;
    }

    v50 = *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
    if (!v50)
    {
      goto LABEL_88;
    }

    v51 = v50;
    v52 = [v51 bleDCKIdentifier];
    if (!v52)
    {
      goto LABEL_58;
    }

    v294 = a1;
    v289 = a2;
    v290 = v51;
    v53 = v52;
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v54;

    a2 = v18 >> 62;
    if ((v18 >> 62) <= 1)
    {
      if (!a2)
      {
        v55 = BYTE6(v18);
        v51 = v290;
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (a2 != 2)
    {

      goto LABEL_55;
    }

    v68 = *(a1 + 16);
    v67 = *(a1 + 24);
    v48 = __OFSUB__(v67, v68);
    v55 = v67 - v68;
    v51 = v290;
    if (v48)
    {
      __break(1u);
LABEL_46:
      LODWORD(v55) = HIDWORD(a1) - a1;
      v51 = v290;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_158;
      }

      v55 = v55;
    }

LABEL_48:
    if (v55 != 8)
    {

LABEL_55:
      v74 = a1;
LABEL_87:
      sub_10006A178(v74, v18);
      goto LABEL_88;
    }

    v69 = [v51 bleIntroKey];
    if (!v69)
    {
      v75 = a1;
      goto LABEL_57;
    }

    v286 = a1;
    v70 = v69;
    v288 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v287 = v72;
    a1 = v72 >> 62;
    if (a1 <= 1)
    {
      if (!a1)
      {
        v73 = BYTE6(v287);
        v51 = v290;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    if (a1 != 2)
    {

      goto LABEL_86;
    }

    v77 = *(v288 + 16);
    v76 = *(v288 + 24);
    v48 = __OFSUB__(v76, v77);
    v73 = v76 - v77;
    v51 = v290;
    if (v48)
    {
      __break(1u);
LABEL_63:
      LODWORD(v73) = HIDWORD(v288) - v288;
      v51 = v290;
      if (__OFSUB__(HIDWORD(v288), v288))
      {
        goto LABEL_197;
      }

      v73 = v73;
    }

LABEL_65:
    if (v73 != 16)
    {

LABEL_86:
      sub_10006A178(v288, v287);
      v74 = v286;
      goto LABEL_87;
    }

    v78 = [v51 bleOOBKey];
    if (!v78)
    {
      sub_10006A178(v288, v287);
      v75 = v286;
LABEL_57:
      sub_10006A178(v75, v18);
LABEL_58:

LABEL_88:
      v56 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        v62 = "Wrong parameters for pairing";
        v63 = v86;
        v64 = v56;
        v65 = v87;
        v66 = 2;
        goto LABEL_90;
      }

LABEL_91:

      v45 = 5;
LABEL_92:
      sub_100099870(v45);

      return;
    }

    v283 = a1;
    v79 = v78;
    v284 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v285 = v81;
    v20 = v81 >> 62;
    if ((v81 >> 62) <= 1)
    {
      if (!v20)
      {
        v82 = BYTE6(v285);
        v15 = v290;
        a1 = v284;
LABEL_81:
        if (v82 == 16)
        {
          v281 = v20;
          v282 = v18;
          v18 = 0;
          v279 = sub_1001383EC(8);
          v280 = v88;
          v89 = sub_1001383EC(8);
          v275 = a5;
          v293 = v6;
          v276 = a3;
          v277 = v89;
          v278 = v90;
          if (v283 == 2)
          {
            v93 = *(v288 + 16);
            v92 = *(v288 + 24);
            v48 = __OFSUB__(v92, v93);
            v91 = v92 - v93;
            if (!v48)
            {
LABEL_101:
              if (v91 != 16)
              {
LABEL_138:
                v126 = Logger.logObject.getter();
                v127 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v126, v127))
                {
                  v128 = swift_slowAlloc();
                  *v128 = 0;
                  _os_log_impl(&_mh_execute_header, v126, v127, "Failed to encrypt DK_Identifier", v128, 2u);
                }

                sub_100099870(1);
                goto LABEL_141;
              }

              if (a2 != 2)
              {
                if (a2 == 1)
                {
                  if (__OFSUB__(HIDWORD(v286), v286))
                  {
LABEL_261:
                    __break(1u);
                    goto LABEL_262;
                  }

                  v94 = HIDWORD(v286) - v286;
LABEL_112:
                  v303 = sub_1000B07FC(v94);
                  v304 = v97;
                  v269 = sub_10008FCB4(4uLL);
                  v301 = v269;
                  v302 = v98 & 0xFFFFFFFFFFFFFFLL;
                  v270 = v98 & 0xFFFFFFFFFFFFFFLL;
                  if (a2 == 2)
                  {
                    v113 = v286;
                    a2 = *(v286 + 16);
                    a1 = *(v286 + 24);
                    sub_100069E2C(v288, v287);
                    sub_100069E2C(v279, v280);
                    sub_100069E2C(v113, v282);
                    v114 = __DataStorage._bytes.getter();
                    if (v114)
                    {
                      v115 = __DataStorage._offset.getter();
                      if (__OFSUB__(a2, v115))
                      {
LABEL_264:
                        __break(1u);
                        goto LABEL_265;
                      }

                      v114 += a2 - v115;
                    }

                    v48 = __OFSUB__(a1, a2);
                    a2 = a1 - a2;
                    if (v48)
                    {
LABEL_263:
                      __break(1u);
                      goto LABEL_264;
                    }

                    v101 = v282;
                    v116 = __DataStorage._length.getter();
                    if (v116 >= a2)
                    {
                      v117 = a2;
                    }

                    else
                    {
                      v117 = v116;
                    }

                    v118 = v114;
                    v119 = v117 + v114;
                    if (v114)
                    {
                      v120 = v119;
                    }

                    else
                    {
                      v120 = 0;
                    }

                    v121 = v286;
                    v123 = v287;
                    v122 = v288;
                    v124 = v279;
                    v125 = v280;
                    sub_1000AA9A4(v118, v120, v288, v287, v279, v280, &v303, &v301, &v299, 0, v286, v101, 4);
                    v271 = v18;
                    sub_10006A178(v122, v123);
                    sub_10006A178(v124, v125);
                    v112 = v121;
                  }

                  else
                  {
                    if (a2 != 1)
                    {
                      v129 = v286;
                      v299 = v286;
                      v130 = v282;
                      LODWORD(v300) = v282;
                      WORD2(v300) = WORD2(v282);
                      v283 = &v299 + BYTE6(v282);
                      v131 = v287;
                      v132 = v288;
                      sub_100069E2C(v288, v287);
                      v133 = v279;
                      v134 = v280;
                      sub_100069E2C(v279, v280);
                      sub_1000AA9A4(&v299, v283, v132, v131, v133, v134, &v303, &v301, &v297, 0, v129, v130, 4);
                      v271 = v18;
                      sub_10006A178(v132, v131);
                      sub_10006A178(v133, v134);
                      sub_10006A178(v129, v130);
                      if (v297)
                      {
                        goto LABEL_137;
                      }

LABEL_143:
                      v18 = v303;
                      v135 = v304;
                      v136 = v301;
                      a1 = v302;
                      sub_100069E2C(v303, v304);
                      sub_100069E2C(v136, a1);
                      v273 = v136;
                      v283 = a1;
                      sub_10006A178(v136, a1);
                      v274 = v18;
                      sub_10006A178(v18, v135);
                      v272 = v135;
                      a2 = v135 >> 62;
                      if ((v135 >> 62) <= 1)
                      {
                        if (!a2)
                        {
                          v137 = BYTE6(v272);
                          goto LABEL_153;
                        }

                        goto LABEL_151;
                      }

                      if (a2 != 2)
                      {
                        goto LABEL_168;
                      }

                      v139 = *(v274 + 16);
                      v138 = *(v274 + 24);
                      v48 = __OFSUB__(v138, v139);
                      v137 = v138 - v139;
                      if (!v48)
                      {
LABEL_153:
                        if (v137 != 8)
                        {
                          goto LABEL_168;
                        }

                        v55 = v283 >> 62;
                        if ((v283 >> 62) <= 1)
                        {
                          if (!v55)
                          {
                            v140 = BYTE6(v283);
                            goto LABEL_164;
                          }

                          goto LABEL_162;
                        }

LABEL_158:
                        if (v55 != 2)
                        {
                          goto LABEL_168;
                        }

                        v142 = *(v273 + 16);
                        v141 = *(v273 + 24);
                        v48 = __OFSUB__(v141, v142);
                        v140 = v141 - v142;
                        if (!v48)
                        {
LABEL_164:
                          if (v140 == 4)
                          {
                            v143 = v292 >> 62;
                            if ((v292 >> 62) > 1)
                            {
                              if (v143 != 2)
                              {
                                goto LABEL_210;
                              }

                              v156 = *(v291 + 16);
                              v155 = *(v291 + 24);
                              v48 = __OFSUB__(v155, v156);
                              v144 = v155 - v156;
                              if (!v48)
                              {
LABEL_200:
                                if (v144 >= 34)
                                {
                                  v158 = v291;
                                  v157 = v292;
                                  sub_100069E2C(v291, v292);
                                  v159 = v158;
                                  v160 = v271;
                                  v161 = sub_1000939AC(v159, v157, 0, 0, 0);
                                  v271 = v160;
                                  if (!v160)
                                  {
                                    if (v161 != 114)
                                    {
                                      goto LABEL_210;
                                    }

                                    v163 = v291;
                                    v162 = v292;
                                    sub_100069E2C(v291, v292);
                                    v164 = v163;
                                    v165 = v271;
                                    v166 = sub_1000939AC(v164, v162, 17, 0, 0);
                                    v271 = v165;
                                    if (!v165)
                                    {
                                      if (v166 != 99)
                                      {
                                        goto LABEL_210;
                                      }

                                      v18 = v291;
                                      v267 = Data.subdata(in:)();
                                      v268 = v167;
                                      v291 = Data.subdata(in:)();
                                      v292 = v168;
                                      if (v13 != 2)
                                      {
                                        if (v13 == 1)
                                        {
                                          LODWORD(v169) = HIDWORD(v294) - v294;
                                          if (__OFSUB__(HIDWORD(v294), v294))
                                          {
LABEL_348:
                                            __break(1u);
LABEL_349:
                                            __break(1u);
                                            goto LABEL_350;
                                          }

                                          v169 = v169;
LABEL_219:
                                          v182 = v292 >> 62;
                                          if ((v292 >> 62) > 1)
                                          {
                                            if (v182 != 2)
                                            {
                                              v183 = 0;
                                              goto LABEL_229;
                                            }

                                            v185 = *(v291 + 16);
                                            v184 = *(v291 + 24);
                                            v48 = __OFSUB__(v184, v185);
                                            v183 = v184 - v185;
                                            if (!v48)
                                            {
LABEL_229:
                                              v48 = __OFADD__(v169, v183);
                                              v186 = v169 + v183;
                                              if (!v48)
                                              {
                                                v187 = v268 >> 62;
                                                if ((v268 >> 62) > 1)
                                                {
                                                  if (v187 != 2)
                                                  {
                                                    v188 = 0;
                                                    goto LABEL_240;
                                                  }

                                                  v190 = *(v267 + 16);
                                                  v189 = *(v267 + 24);
                                                  v48 = __OFSUB__(v189, v190);
                                                  v188 = v189 - v190;
                                                  if (!v48)
                                                  {
LABEL_240:
                                                    if (!__OFADD__(v186, v188))
                                                    {
                                                      v301 = sub_1001303A8(v186 + v188);
                                                      v302 = v191;
                                                      Data.append(_:)();
                                                      Data.append(_:)();
                                                      Data.append(_:)();
                                                      v289 = v301;
                                                      v294 = v302;
                                                      if (v281 == 2)
                                                      {
                                                        v194 = *(v284 + 16);
                                                        v193 = *(v284 + 24);
                                                        v48 = __OFSUB__(v193, v194);
                                                        v192 = v193 - v194;
                                                        if (!v48)
                                                        {
LABEL_249:
                                                          if (v192 != 16)
                                                          {
LABEL_284:
                                                            v233 = Logger.logObject.getter();
                                                            v234 = static os_log_type_t.error.getter();
                                                            if (os_log_type_enabled(v233, v234))
                                                            {
                                                              v235 = swift_slowAlloc();
                                                              *v235 = 0;
                                                              _os_log_impl(&_mh_execute_header, v233, v234, "Failed to encrypt BTAddrA || Ca || ra", v235, 2u);
                                                            }

                                                            sub_100099870(1);
                                                            sub_10006A178(v286, v282);
                                                            sub_10006A178(v288, v287);
                                                            sub_10006A178(v284, v285);
                                                            v236 = v279;
                                                            v237 = v280;
                                                            goto LABEL_287;
                                                          }

                                                          v195 = v294 >> 62;
                                                          if ((v294 >> 62) <= 1)
                                                          {
                                                            if (!v195)
                                                            {
                                                              v196 = v294;
                                                              v299 = sub_1000B07FC(BYTE6(v294));
                                                              v300 = v197;
                                                              v297 = v269;
                                                              v298 = v270;
                                                              v198 = v289;
                                                              v296[0] = v289;
                                                              LOWORD(v296[1]) = v196;
                                                              BYTE2(v296[1]) = BYTE2(v196);
                                                              BYTE3(v296[1]) = BYTE3(v196);
                                                              BYTE4(v296[1]) = BYTE4(v196);
                                                              BYTE5(v296[1]) = BYTE5(v196);
                                                              v199 = v284;
                                                              v200 = v285;
                                                              sub_100069E2C(v284, v285);
                                                              v201 = v277;
                                                              v202 = v278;
                                                              sub_100069E2C(v277, v278);
                                                              v18 = v271;
                                                              sub_1000AA9A4(v296, v296 + BYTE6(v196), v199, v200, v201, v202, &v299, &v297, &v295, 0, v198, v196, 4);
                                                              sub_10006A178(v199, v200);
                                                              sub_10006A178(v201, v202);
                                                              v203 = v198;
                                                              v204 = v196;
                                                              goto LABEL_282;
                                                            }

LABEL_266:
                                                            if (!__OFSUB__(HIDWORD(v289), v289))
                                                            {
                                                              v299 = sub_1000B07FC(HIDWORD(v289) - v289);
                                                              v300 = v210;
                                                              v297 = v269;
                                                              v298 = v270;
                                                              a1 = v289;
                                                              a2 = (v289 >> 32) - v289;
                                                              if (v289 >> 32 >= v289)
                                                              {
                                                                sub_100069E2C(v284, v285);
                                                                sub_100069E2C(v277, v278);
                                                                sub_100069E2C(v289, v294);
                                                                v13 = __DataStorage._bytes.getter();
                                                                if (!v13)
                                                                {
                                                                  goto LABEL_271;
                                                                }

                                                                v211 = __DataStorage._offset.getter();
                                                                if (!__OFSUB__(a1, v211))
                                                                {
                                                                  v13 += a1 - v211;
                                                                  goto LABEL_271;
                                                                }

LABEL_356:
                                                                __break(1u);
                                                                goto LABEL_357;
                                                              }

                                                              goto LABEL_354;
                                                            }

LABEL_353:
                                                            __break(1u);
LABEL_354:
                                                            __break(1u);
                                                            goto LABEL_355;
                                                          }

                                                          if (v195 != 2)
                                                          {
                                                            v299 = sub_1000B07FC(0);
                                                            v300 = v226;
                                                            v297 = v269;
                                                            v298 = v270;
                                                            memset(v296, 0, 14);
                                                            v227 = v284;
                                                            v228 = v285;
                                                            sub_100069E2C(v284, v285);
                                                            v229 = v277;
                                                            v230 = v278;
                                                            sub_100069E2C(v277, v278);
                                                            v231 = v294;
                                                            v232 = v289;
                                                            v18 = v271;
                                                            sub_1000AA9A4(v296, v296, v227, v228, v229, v230, &v299, &v297, &v295, 0, v289, v294, 4);
                                                            sub_10006A178(v227, v228);
                                                            sub_10006A178(v229, v230);
                                                            v203 = v232;
                                                            v204 = v231;
LABEL_282:
                                                            sub_10006A178(v203, v204);
                                                            if (v295)
                                                            {
LABEL_283:
                                                              sub_10006A178(v297, v298);
                                                              sub_10006A178(v299, v300);
                                                              goto LABEL_284;
                                                            }

                                                            goto LABEL_278;
                                                          }

                                                          v206 = *(v289 + 16);
                                                          v205 = *(v289 + 24);
                                                          if (!__OFSUB__(v205, v206))
                                                          {
                                                            v299 = sub_1000B07FC(v205 - v206);
                                                            v300 = v207;
                                                            v297 = v269;
                                                            v298 = v270;
                                                            v208 = v289;
                                                            a2 = *(v289 + 16);
                                                            a1 = *(v289 + 24);
                                                            sub_100069E2C(v284, v285);
                                                            sub_100069E2C(v277, v278);
                                                            sub_100069E2C(v208, v294);
                                                            v13 = __DataStorage._bytes.getter();
                                                            if (v13)
                                                            {
                                                              v209 = __DataStorage._offset.getter();
                                                              if (__OFSUB__(a2, v209))
                                                              {
LABEL_355:
                                                                __break(1u);
                                                                goto LABEL_356;
                                                              }

                                                              v13 += a2 - v209;
                                                            }

                                                            v48 = __OFSUB__(a1, a2);
                                                            a2 = a1 - a2;
                                                            if (!v48)
                                                            {
LABEL_271:
                                                              v212 = v294;
                                                              v213 = __DataStorage._length.getter();
                                                              if (v213 >= a2)
                                                              {
                                                                v214 = a2;
                                                              }

                                                              else
                                                              {
                                                                v214 = v213;
                                                              }

                                                              v215 = v214 + v13;
                                                              if (v13)
                                                              {
                                                                v216 = v215;
                                                              }

                                                              else
                                                              {
                                                                v216 = 0;
                                                              }

                                                              v217 = v289;
                                                              v218 = v13;
                                                              v219 = v284;
                                                              v220 = v285;
                                                              v221 = v277;
                                                              v222 = v278;
                                                              v18 = v271;
                                                              sub_1000AA9A4(v218, v216, v284, v285, v277, v278, &v299, &v297, v296, 0, v289, v212, 4);
                                                              sub_10006A178(v219, v220);
                                                              sub_10006A178(v221, v222);
                                                              sub_10006A178(v217, v212);
                                                              if (LODWORD(v296[0]))
                                                              {
                                                                goto LABEL_283;
                                                              }

LABEL_278:
                                                              a1 = v299;
                                                              v13 = v300;
                                                              v224 = v297;
                                                              v223 = v298;
                                                              sub_100069E2C(v299, v300);
                                                              sub_100069E2C(v224, v223);
                                                              v271 = v224;
                                                              v281 = v223;
                                                              sub_10006A178(v224, v223);
                                                              sub_10006A178(a1, v13);
                                                              a2 = v13 >> 62;
                                                              if ((v13 >> 62) <= 1)
                                                              {
                                                                if (!a2)
                                                                {
                                                                  v225 = BYTE6(v13);
LABEL_296:
                                                                  if (v225 != 38)
                                                                  {
                                                                    goto LABEL_319;
                                                                  }

                                                                  v240 = v281 >> 62;
                                                                  if ((v281 >> 62) <= 1)
                                                                  {
                                                                    if (!v240)
                                                                    {
                                                                      v241 = BYTE6(v281);
                                                                      goto LABEL_309;
                                                                    }

LABEL_307:
                                                                    LODWORD(v241) = HIDWORD(v271) - v271;
                                                                    if (__OFSUB__(HIDWORD(v271), v271))
                                                                    {
LABEL_361:
                                                                      __break(1u);
                                                                      return;
                                                                    }

                                                                    v241 = v241;
                                                                    goto LABEL_309;
                                                                  }

                                                                  if (v240 != 2)
                                                                  {
                                                                    goto LABEL_319;
                                                                  }

                                                                  v243 = *(v271 + 16);
                                                                  v242 = *(v271 + 24);
                                                                  v48 = __OFSUB__(v242, v243);
                                                                  v241 = v242 - v243;
                                                                  if (!v48)
                                                                  {
LABEL_309:
                                                                    if (v241 == 4)
                                                                    {
                                                                      type metadata accessor for __DataStorage();
                                                                      swift_allocObject();
                                                                      v244 = __DataStorage.init(capacity:)();
                                                                      v299 = 0;
                                                                      v300 = v244 | 0x4000000000000000;
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      *(v293 + a4) = 6;
                                                                      sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v265);
                                                                      a2 = "v16@?0@SEEndPoint8";
                                                                      v269 = v299;
                                                                      v270 = v300;
                                                                      v245 = Logger.logObject.getter();
                                                                      v246 = static os_log_type_t.info.getter();
                                                                      if (os_log_type_enabled(v245, v246))
                                                                      {
                                                                        v247 = swift_slowAlloc();
                                                                        v248 = swift_slowAlloc();
                                                                        v297 = v248;
                                                                        *v247 = 136315138;
                                                                        *(v247 + 4) = sub_1002FFA0C(0xD000000000000011, 0x8000000100462240, &v297);
                                                                        _os_log_impl(&_mh_execute_header, v245, v246, "Sending %s", v247, 0xCu);
                                                                        sub_1000752F4(v248);
                                                                      }

                                                                      if (qword_100501B60 == -1)
                                                                      {
                                                                        goto LABEL_313;
                                                                      }

                                                                      goto LABEL_358;
                                                                    }

LABEL_319:
                                                                    sub_100069E2C(a1, v13);
                                                                    sub_100069E2C(v271, v281);
                                                                    v254 = Logger.logObject.getter();
                                                                    v255 = static os_log_type_t.error.getter();
                                                                    if (!os_log_type_enabled(v254, v255))
                                                                    {
                                                                      sub_10006A178(v271, v281);
                                                                      sub_10006A178(a1, v13);
LABEL_342:

                                                                      sub_100099870(1);
                                                                      sub_10006A178(v286, v282);
                                                                      sub_10006A178(v288, v287);
                                                                      sub_10006A178(v284, v285);
                                                                      sub_10006A178(v279, v280);
                                                                      sub_10006A178(v271, v281);
                                                                      v236 = a1;
                                                                      v237 = v13;
LABEL_287:
                                                                      sub_10006A178(v236, v237);
                                                                      sub_10006A178(v291, v292);
                                                                      sub_10006A178(v267, v268);
                                                                      sub_10006A178(v273, v283);
                                                                      sub_10006A178(v274, v272);
                                                                      sub_10006A178(v277, v278);

LABEL_288:
                                                                      sub_10006A178(v289, v294);
                                                                      return;
                                                                    }

                                                                    v256 = swift_slowAlloc();
                                                                    v257 = v256;
                                                                    *v256 = 134218752;
                                                                    if (a2 > 1)
                                                                    {
                                                                      if (a2 != 2)
                                                                      {
                                                                        v258 = 0;
                                                                        goto LABEL_331;
                                                                      }

                                                                      v260 = *(a1 + 16);
                                                                      v259 = *(a1 + 24);
                                                                      v48 = __OFSUB__(v259, v260);
                                                                      v258 = v259 - v260;
                                                                      if (!v48)
                                                                      {
                                                                        goto LABEL_331;
                                                                      }

                                                                      __break(1u);
                                                                    }

                                                                    else if (!a2)
                                                                    {
                                                                      v258 = BYTE6(v13);
                                                                      goto LABEL_331;
                                                                    }

                                                                    LODWORD(v258) = HIDWORD(a1) - a1;
                                                                    if (__OFSUB__(HIDWORD(a1), a1))
                                                                    {
                                                                      __break(1u);
LABEL_360:
                                                                      __break(1u);
                                                                      goto LABEL_361;
                                                                    }

                                                                    v258 = v258;
LABEL_331:
                                                                    *(v256 + 4) = v258;
                                                                    sub_10006A178(a1, v13);
                                                                    *(v257 + 12) = 2048;
                                                                    *(v257 + 14) = 38;
                                                                    *(v257 + 22) = 2048;
                                                                    v261 = v281 >> 62;
                                                                    if ((v281 >> 62) > 1)
                                                                    {
                                                                      if (v261 != 2)
                                                                      {
                                                                        v262 = 0;
                                                                        goto LABEL_341;
                                                                      }

                                                                      v264 = *(v271 + 16);
                                                                      v263 = *(v271 + 24);
                                                                      v48 = __OFSUB__(v263, v264);
                                                                      v262 = v263 - v264;
                                                                      if (!v48)
                                                                      {
                                                                        goto LABEL_341;
                                                                      }

                                                                      __break(1u);
                                                                    }

                                                                    else if (!v261)
                                                                    {
                                                                      v262 = BYTE6(v281);
LABEL_341:
                                                                      *(v257 + 24) = v262;
                                                                      sub_10006A178(v271, v281);
                                                                      *(v257 + 32) = 2048;
                                                                      *(v257 + 34) = 4;
                                                                      _os_log_impl(&_mh_execute_header, v254, v255, "Invalid E2_Payload %ld != %ld or Tag2 %ld != %ld", v257, 0x2Au);

                                                                      goto LABEL_342;
                                                                    }

                                                                    LODWORD(v262) = HIDWORD(v271) - v271;
                                                                    if (!__OFSUB__(HIDWORD(v271), v271))
                                                                    {
                                                                      v262 = v262;
                                                                      goto LABEL_341;
                                                                    }

                                                                    goto LABEL_360;
                                                                  }

                                                                  __break(1u);
                                                                  goto LABEL_304;
                                                                }

                                                                goto LABEL_294;
                                                              }

                                                              if (a2 != 2)
                                                              {
                                                                goto LABEL_319;
                                                              }

                                                              v239 = *(a1 + 16);
                                                              v238 = *(a1 + 24);
                                                              v48 = __OFSUB__(v238, v239);
                                                              v225 = v238 - v239;
                                                              if (!v48)
                                                              {
                                                                goto LABEL_296;
                                                              }

                                                              __break(1u);
LABEL_293:
                                                              __break(1u);
LABEL_294:
                                                              LODWORD(v225) = HIDWORD(a1) - a1;
                                                              if (!__OFSUB__(HIDWORD(a1), a1))
                                                              {
                                                                v225 = v225;
                                                                goto LABEL_296;
                                                              }

LABEL_357:
                                                              __break(1u);
LABEL_358:
                                                              swift_once();
LABEL_313:
                                                              v265 = sub_100239160(5, 14, v269, v270);
                                                              v266 = v249;
                                                              if (qword_100501960 != -1)
                                                              {
                                                                swift_once();
                                                              }

                                                              sub_1000E71A0(v265, v266, v275);
                                                              if (v18)
                                                              {
                                                                v250 = Logger.logObject.getter();
                                                                v251 = static os_log_type_t.error.getter();
                                                                if (os_log_type_enabled(v250, v251))
                                                                {
                                                                  v252 = swift_slowAlloc();
                                                                  v253 = swift_slowAlloc();
                                                                  v297 = v253;
                                                                  *v252 = 136315138;
                                                                  *(v252 + 4) = sub_1002FFA0C(0xD000000000000011, a2 | 0x8000000000000000, &v297);
                                                                  _os_log_impl(&_mh_execute_header, v250, v251, "Failed to send %s", v252, 0xCu);
                                                                  sub_1000752F4(v253);
                                                                }

                                                                sub_100099870(2);
                                                                sub_10006A178(v279, v280);
                                                                sub_10006A178(v277, v278);
                                                                sub_10006A178(v267, v268);
                                                                sub_10006A178(v291, v292);
                                                                sub_10006A178(v284, v285);
                                                                sub_10006A178(v288, v287);
                                                                sub_10006A178(v286, v282);

                                                                sub_10006A178(v271, v281);
                                                                sub_10006A178(a1, v13);
                                                                sub_10006A178(v273, v283);
                                                                sub_10006A178(v274, v272);
                                                                sub_10006A178(v265, v266);
                                                              }

                                                              else
                                                              {

                                                                sub_10006A178(v279, v280);
                                                                sub_10006A178(v277, v278);
                                                                sub_10006A178(v267, v268);
                                                                sub_10006A178(v291, v292);
                                                                sub_10006A178(v284, v285);
                                                                sub_10006A178(v288, v287);
                                                                sub_10006A178(v286, v282);

                                                                sub_10006A178(v271, v281);
                                                                sub_10006A178(a1, v13);
                                                                sub_10006A178(v273, v283);
                                                                sub_10006A178(v274, v272);
                                                                sub_10006A178(v265, v266);
                                                              }

                                                              sub_10006A178(v269, v270);
                                                              goto LABEL_288;
                                                            }

                                                            __break(1u);
                                                            goto LABEL_261;
                                                          }

LABEL_352:
                                                          __break(1u);
                                                          goto LABEL_353;
                                                        }

                                                        __break(1u);
                                                      }

                                                      else if (v281 == 1)
                                                      {
                                                        LODWORD(v192) = HIDWORD(v284) - v284;
                                                        if (!__OFSUB__(HIDWORD(v284), v284))
                                                        {
                                                          v192 = v192;
                                                          goto LABEL_249;
                                                        }

                                                        goto LABEL_349;
                                                      }

                                                      v192 = BYTE6(v285);
                                                      goto LABEL_249;
                                                    }

                                                    goto LABEL_347;
                                                  }

                                                  __break(1u);
                                                }

                                                else if (!v187)
                                                {
                                                  v188 = BYTE6(v268);
                                                  goto LABEL_240;
                                                }

                                                LODWORD(v188) = HIDWORD(v267) - v267;
                                                if (__OFSUB__(HIDWORD(v267), v267))
                                                {
LABEL_351:
                                                  __break(1u);
                                                  goto LABEL_352;
                                                }

                                                v188 = v188;
                                                goto LABEL_240;
                                              }

LABEL_346:
                                              __break(1u);
LABEL_347:
                                              __break(1u);
                                              goto LABEL_348;
                                            }

                                            __break(1u);
                                          }

                                          else if (!v182)
                                          {
                                            v183 = BYTE6(v292);
                                            goto LABEL_229;
                                          }

                                          LODWORD(v183) = HIDWORD(v291) - v291;
                                          if (__OFSUB__(HIDWORD(v291), v291))
                                          {
LABEL_350:
                                            __break(1u);
                                            goto LABEL_351;
                                          }

                                          v183 = v183;
                                          goto LABEL_229;
                                        }

LABEL_218:
                                        v169 = BYTE6(v289);
                                        goto LABEL_219;
                                      }

LABEL_215:
                                      v181 = *(v294 + 16);
                                      v180 = *(v294 + 24);
                                      v48 = __OFSUB__(v180, v181);
                                      v169 = v180 - v181;
                                      if (!v48)
                                      {
                                        goto LABEL_219;
                                      }

                                      __break(1u);
                                      goto LABEL_218;
                                    }
                                  }

                                  v271 = 0;
                                }

LABEL_210:
                                v171 = v291;
                                v170 = v292;
                                sub_100069E2C(v291, v292);
                                v172 = Logger.logObject.getter();
                                v173 = static os_log_type_t.error.getter();
                                sub_10006A178(v171, v170);
                                if (os_log_type_enabled(v172, v173))
                                {
                                  v174 = swift_slowAlloc();
                                  v175 = swift_slowAlloc();
                                  v301 = v175;
                                  *v174 = 136315138;
                                  v299 = sub_100288788(v291, v292);
                                  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                                  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                                  v176 = BidirectionalCollection<>.joined(separator:)();
                                  v178 = v177;

                                  v179 = sub_1002FFA0C(v176, v178, &v301);

                                  *(v174 + 4) = v179;
                                  _os_log_impl(&_mh_execute_header, v172, v173, "Invalid OOB data %s", v174, 0xCu);
                                  sub_1000752F4(v175);
                                }

                                v154 = 5;
                                goto LABEL_192;
                              }

                              __break(1u);
LABEL_197:
                              __break(1u);
                            }

                            else if (!v143)
                            {
                              v144 = BYTE6(v292);
                              goto LABEL_200;
                            }

                            LODWORD(v144) = HIDWORD(v291) - v291;
                            if (__OFSUB__(HIDWORD(v291), v291))
                            {
                              __break(1u);
                              goto LABEL_346;
                            }

                            v144 = v144;
                            goto LABEL_200;
                          }

LABEL_168:
                          sub_100069E2C(v274, v272);
                          sub_100069E2C(v273, v283);
                          v145 = Logger.logObject.getter();
                          v18 = static os_log_type_t.error.getter();
                          if (!os_log_type_enabled(v145, v18))
                          {
                            sub_10006A178(v273, v283);
                            sub_10006A178(v274, v272);
LABEL_191:

                            v154 = 1;
LABEL_192:
                            sub_100099870(v154);
                            sub_10006A178(v273, v283);
                            sub_10006A178(v274, v272);
LABEL_141:
                            sub_10006A178(v277, v278);
                            sub_10006A178(v279, v280);
                            sub_10006A178(v284, v285);
                            sub_10006A178(v288, v287);
                            sub_10006A178(v286, v282);

                            return;
                          }

                          v146 = swift_slowAlloc();
                          v13 = v146;
                          *v146 = 134218752;
                          if (a2 > 1)
                          {
                            if (a2 != 2)
                            {
                              v147 = 0;
                              goto LABEL_180;
                            }

                            v149 = *(v274 + 16);
                            v148 = *(v274 + 24);
                            v48 = __OFSUB__(v148, v149);
                            v147 = v148 - v149;
                            if (!v48)
                            {
LABEL_180:
                              *(v146 + 4) = v147;
                              sub_10006A178(v274, v272);
                              *(v13 + 12) = 2048;
                              *(v13 + 14) = 8;
                              *(v13 + 22) = 2048;
                              v150 = v283 >> 62;
                              if ((v283 >> 62) > 1)
                              {
                                if (v150 != 2)
                                {
                                  v151 = 0;
                                  goto LABEL_190;
                                }

                                v153 = *(v273 + 16);
                                v152 = *(v273 + 24);
                                v48 = __OFSUB__(v152, v153);
                                v151 = v152 - v153;
                                if (!v48)
                                {
                                  goto LABEL_190;
                                }

                                __break(1u);
                              }

                              else if (!v150)
                              {
                                v151 = BYTE6(v283);
LABEL_190:
                                *(v13 + 24) = v151;
                                sub_10006A178(v273, v283);
                                *(v13 + 32) = 2048;
                                *(v13 + 34) = 4;
                                _os_log_impl(&_mh_execute_header, v145, v18, "Invalid E1_Payload %ld != %ld or Tag1 %ld != %ld", v13, 0x2Au);

                                goto LABEL_191;
                              }

                              LODWORD(v151) = HIDWORD(v273) - v273;
                              if (__OFSUB__(HIDWORD(v273), v273))
                              {
LABEL_305:
                                __break(1u);
                                goto LABEL_306;
                              }

                              v151 = v151;
                              goto LABEL_190;
                            }

                            __break(1u);
                          }

                          else if (!a2)
                          {
                            v147 = BYTE6(v272);
                            goto LABEL_180;
                          }

                          LODWORD(v147) = HIDWORD(v274) - v274;
                          if (__OFSUB__(HIDWORD(v274), v274))
                          {
LABEL_304:
                            __break(1u);
                            goto LABEL_305;
                          }

                          v147 = v147;
                          goto LABEL_180;
                        }

                        __break(1u);
LABEL_162:
                        LODWORD(v140) = HIDWORD(v273) - v273;
                        if (__OFSUB__(HIDWORD(v273), v273))
                        {
LABEL_306:
                          __break(1u);
                          goto LABEL_307;
                        }

                        v140 = v140;
                        goto LABEL_164;
                      }

                      __break(1u);
LABEL_150:
                      __break(1u);
LABEL_151:
                      LODWORD(v137) = HIDWORD(v274) - v274;
                      if (__OFSUB__(HIDWORD(v274), v274))
                      {
                        goto LABEL_293;
                      }

                      v137 = v137;
                      goto LABEL_153;
                    }

                    a1 = v286;
                    a2 = (v286 >> 32) - v286;
                    if (v286 >> 32 < v286)
                    {
LABEL_262:
                      __break(1u);
                      goto LABEL_263;
                    }

                    sub_100069E2C(v288, v287);
                    sub_100069E2C(v279, v280);
                    sub_100069E2C(v286, v282);
                    v99 = __DataStorage._bytes.getter();
                    if (v99)
                    {
                      v100 = __DataStorage._offset.getter();
                      if (__OFSUB__(a1, v100))
                      {
LABEL_265:
                        __break(1u);
                        goto LABEL_266;
                      }

                      v99 += a1 - v100;
                    }

                    v101 = v282;
                    v102 = __DataStorage._length.getter();
                    if (v102 >= a2)
                    {
                      v103 = a2;
                    }

                    else
                    {
                      v103 = v102;
                    }

                    v104 = v103 + v99;
                    if (v99)
                    {
                      v105 = v104;
                    }

                    else
                    {
                      v105 = 0;
                    }

                    v106 = v286;
                    v107 = v99;
                    v109 = v287;
                    v108 = v288;
                    v110 = v279;
                    v111 = v280;
                    sub_1000AA9A4(v107, v105, v288, v287, v279, v280, &v303, &v301, &v299, 0, v286, v101, 4);
                    v271 = v18;
                    sub_10006A178(v108, v109);
                    sub_10006A178(v110, v111);
                    v112 = v106;
                  }

                  sub_10006A178(v112, v101);
                  if (v299)
                  {
LABEL_137:
                    sub_10006A178(v301, v302);
                    sub_10006A178(v303, v304);
                    goto LABEL_138;
                  }

                  goto LABEL_143;
                }

LABEL_111:
                v94 = BYTE6(v282);
                goto LABEL_112;
              }

LABEL_108:
              v96 = *(v286 + 16);
              v95 = *(v286 + 24);
              v94 = v95 - v96;
              if (!__OFSUB__(v95, v96))
              {
                goto LABEL_112;
              }

              __break(1u);
              goto LABEL_111;
            }

            __break(1u);
          }

          else if (v283 == 1)
          {
            LODWORD(v91) = HIDWORD(v288) - v288;
            if (!__OFSUB__(HIDWORD(v288), v288))
            {
              v91 = v91;
              goto LABEL_101;
            }

LABEL_214:
            __break(1u);
            goto LABEL_215;
          }

          v91 = BYTE6(v287);
          goto LABEL_101;
        }

        v85 = a1;
        goto LABEL_85;
      }

LABEL_79:
      a1 = v284;
      LODWORD(v82) = HIDWORD(v284) - v284;
      v15 = v290;
      if (__OFSUB__(HIDWORD(v284), v284))
      {
        __break(1u);
        goto LABEL_214;
      }

      v82 = v82;
      goto LABEL_81;
    }

    if (v20 != 2)
    {

      v85 = v284;
LABEL_85:
      sub_10006A178(v85, v285);
      goto LABEL_86;
    }

    a1 = v284;
    v84 = *(v284 + 16);
    v83 = *(v284 + 24);
    v48 = __OFSUB__(v83, v84);
    v82 = v83 - v84;
    v15 = v290;
    if (!v48)
    {
      goto LABEL_81;
    }

    __break(1u);
LABEL_77:
    swift_once();
  }

LABEL_13:

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v303 = v34;
    *v33 = 136315138;
    v35 = UUID.uuidString.getter();
    v37 = sub_1002FFA0C(v35, v36, &v303);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Wrong peer %s", v33, 0xCu);
    sub_1000752F4(v34);
  }
}

void sub_1000A00CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v140 = v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v139 = *(v9 - 8);
  __chkstk_darwin(v9);
  v138 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    swift_once();
LABEL_32:
    v63 = sub_100239160(3, 17, v9, v17);
    v65 = v64;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v66 = v133;
    sub_1000E71A0(v63, v65, a2);
    if (v66)
    {
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v139 = v9;
        v70 = v69;
        v71 = v17;
        v72 = swift_slowAlloc();
        aBlock = v72;
        *v70 = 136315138;
        *(v70 + 4) = sub_1002FFA0C(0xD00000000000001CLL, v140 | 0x8000000000000000, &aBlock);
        _os_log_impl(&_mh_execute_header, v67, v68, "Failed to send %s", v70, 0xCu);
        sub_1000752F4(v72);
        v17 = v71;

        v9 = v139;
      }

      sub_100099870(2);
      sub_10006A178(v9, v17);

      sub_10006A178(v63, v65);
    }

    else
    {
      sub_10006A178(v9, v17);

      sub_10006A178(v63, v65);
    }

    return;
  }

  v135 = v9;
  v136 = v7;
  v137 = v6;
  v18 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v3;
    v22 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = UUID.uuidString.getter();
    v25 = sub_1002FFA0C(v23, v24, &v142);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = 0xE000000000000000;
    if (a1)
    {
      aBlock = 0;
      v144 = 0xE000000000000000;
      v27._countAndFlagsBits = 0x7272652068746977;
      v27._object = 0xEB0000000020726FLL;
      String.append(_:)(v27);
      v141 = a1;
      sub_100068FC4(&unk_100503F80, &qword_100409CF0);
      _print_unlocked<A, B>(_:_:)();
      v28 = aBlock;
      v26 = v144;
    }

    else
    {
      v28 = 0;
    }

    v29 = sub_1002FFA0C(v28, v26, &v142);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "Pairing completed for %s %s", v22, 0x16u);
    swift_arrayDestroy();

    v3 = v21;
  }

  else
  {
  }

  if (!*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    goto LABEL_18;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

LABEL_18:

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136315138;
      v41 = UUID.uuidString.getter();
      v43 = sub_1002FFA0C(v41, v42, &aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Wrong peer %s", v39, 0xCu);
      sub_1000752F4(v40);
    }

    return;
  }

  v30 = v3;
  v31 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  if (*(v30 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 7)
  {

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      LOBYTE(v142) = *(v30 + v31);
      v48 = String.init<A>(describing:)();
      v50 = sub_1002FFA0C(v48, v49, &aBlock);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Wrong state %s", v46, 0xCu);
      sub_1000752F4(v47);
    }

    goto LABEL_23;
  }

  if (a1)
  {
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Pairing failed with error %@", v34, 0xCu);
      sub_100075768(v35, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100099870(2);

    goto LABEL_25;
  }

  v51 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
  v52 = *(v30 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode);
  if (!*(v30 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode))
  {

    v44 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v74 = 136315138;
      LOBYTE(v142) = *(v30 + v51);
      v76 = String.init<A>(describing:)();
      v78 = sub_1002FFA0C(v76, v77, &aBlock);

      *(v74 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v44, v73, "Wrong mode %s", v74, 0xCu);
      sub_1000752F4(v75);
    }

LABEL_23:

LABEL_24:
    sub_100099870(2);
LABEL_25:

    return;
  }

  v134 = v18;
  if (v52 == 1)
  {
    v53 = objc_opt_self();
    UUID.uuidString.getter();
    v54 = String._bridgeToObjectiveC()();

    sub_1003AE298(v53, 5, v54);

    v133 = 0;
    goto LABEL_29;
  }

  v79 = *(v30 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  if (!v79)
  {
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "No endpoint", v93, 2u);
    }

    goto LABEL_24;
  }

  v80 = qword_100501960;
  v81 = v79;
  if (v80 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409E40;
  *(inited + 32) = a2;

  v83 = sub_1000B0570(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1000E616C(v83, &aBlock);
  v132 = v81;
  v133 = 0;
  v94 = aBlock;
  v95 = v144;
  v96 = v145;
  v97 = v147;
  v98 = v146;

  sub_100069E2C(v94, v95);
  sub_100069E2C(v96, v98);

  sub_10006A178(v96, v98);
  sub_10006A178(v94, v95);
  if (*(v97 + 2))
  {
    v123 = v95;
    v124 = v94;
    v125 = v98;
    v126 = v96;
    v99 = *(v97 + 4);
    v100 = *(v97 + 5);
    v102 = *(v97 + 6);
    v101 = *(v97 + 7);
    v103 = *(v97 + 8);
    v127 = *(v97 + 9);
    v104 = *(v97 + 10);
    v128 = v99;

    v130 = v100;
    v129 = v102;
    sub_100069E2C(v100, v102);
    v131 = v103;
    sub_100069E2C(v101, v103);
    v105 = v127;
    sub_100069E2C(v127, v104);

    v122 = v97;
    if (qword_100501D98 != -1)
    {
      swift_once();
    }

    v121 = qword_10051B7F8;
    v106 = swift_allocObject();
    v107 = v128;
    v106[2] = v132;
    v106[3] = v107;
    v108 = v129;
    v106[4] = v130;
    v106[5] = v108;
    v109 = v131;
    v106[6] = v101;
    v106[7] = v109;
    v106[8] = v105;
    v106[9] = v104;
    v106[10] = a2;
    v106[11] = v30;
    v119 = v104;
    v118 = v101;
    v147 = sub_1000B2B04;
    v148 = v106;
    aBlock = _NSConcreteStackBlock;
    v144 = 1107296256;
    v145 = sub_100080830;
    v146 = &unk_1004C5F60;
    v120 = _Block_copy(&aBlock);

    v132 = v132;

    v110 = v130;
    sub_100069E2C(v130, v108);
    sub_100069E2C(v101, v131);
    sub_100069E2C(v105, v104);

    v111 = v138;
    static DispatchQoS.unspecified.getter();
    v142 = _swiftEmptyArrayStorage;
    v117[1] = sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    v112 = v110;
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v113 = v140;
    v114 = v137;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v115 = v111;
    v116 = v120;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v116);

    sub_10006A178(v112, v129);
    sub_10006A178(v118, v131);
    sub_10006A178(v127, v119);

    sub_10006A178(v124, v123);
    sub_10006A178(v126, v125);

    (*(v136 + 8))(v113, v114);
    (*(v139 + 8))(v115, v135);

LABEL_29:
    *(v30 + v31) = 8;
    sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v117[0]);
    v9 = sub_1002B3B94(&off_1004C3920);
    v17 = v55;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    v58 = os_log_type_enabled(v56, v57);
    v140 = "REQUEST_OWNER_PAIRING";
    if (v58)
    {
      v59 = v17;
      v60 = swift_slowAlloc();
      v61 = v9;
      v62 = swift_slowAlloc();
      aBlock = v62;
      *v60 = 136315138;
      *(v60 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100462200, &aBlock);
      _os_log_impl(&_mh_execute_header, v56, v57, "Sending %s", v60, 0xCu);
      sub_1000752F4(v62);
      v9 = v61;

      v17 = v59;
    }

    if (qword_100501B60 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

  sub_10006A178(v94, v95);
  sub_10006A178(v96, v98);

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock = v87;
    *v86 = 136315138;
    v88 = UUID.uuidString.getter();
    v90 = sub_1002FFA0C(v88, v89, &aBlock);

    *(v86 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v84, v85, "Failed to retrieve pairing info for %s", v86, 0xCu);
    sub_1000752F4(v87);
  }

  sub_100099870(2);
}

uint64_t sub_1000A1300(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_1002FFA0C(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to process DK UWB message %s", v7, 0xCu);
      sub_1000752F4(v8);
    }

    sub_100099870(2);
  }

  else if (a2 >> 60 != 15)
  {
    v13 = result;
    sub_100069E2C(result, a2);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v13, a2, a5);

    return sub_10006A2D0(v13, a2);
  }

  return result;
}

void sub_1000A15AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v124 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v122 = *(v7 - 8);
  v123 = v7;
  __chkstk_darwin(v7);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v121 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v20 = *(v14 + 8);
  v19 = v14 + 8;
  v20(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v21 != 2)
    {
      goto LABEL_11;
    }

    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (!v24)
    {
      if (v25 >= 2)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    goto LABEL_76;
  }

  if (v21)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_16;
      }

LABEL_11:
      sub_100069E2C(a1, a2);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock = v29;
        *v28 = 136315138;
        v131 = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        v33 = sub_1002FFA0C(v30, v32, &aBlock);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "Invalid Command Complete event %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      goto LABEL_58;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
    goto LABEL_41;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_11;
  }

LABEL_16:
  sub_100069E2C(a1, a2);
  v16 = 0;
  v34 = sub_1000939AC(a1, a2, 1, 0, 0);
  v19 = v4;
  if (v34 > 0xFB)
  {
    if (v34 > 253)
    {
      if (v34 == 254)
      {
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          v45 = "Received FA_CRYPTO_OPERATION_FAILED";
          goto LABEL_56;
        }
      }

      else
      {
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          v45 = "Received WRONG_PARAMETERS";
          goto LABEL_56;
        }
      }
    }

    else if (v34 == 252)
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Received OOB_MISMATCH";
        goto LABEL_56;
      }
    }

    else
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Received BLE_PAIRING_FAILED";
LABEL_56:
        _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
      }
    }

LABEL_57:

LABEL_58:
    sub_100099870(2);
    return;
  }

  if (v34 > 127)
  {
    if (v34 == 128)
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Received GENERAL_ERROR";
        goto LABEL_56;
      }
    }

    else
    {
      if (v34 != 134)
      {
LABEL_60:
        sub_100069E2C(a1, a2);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.info.getter();
        sub_10006A178(a1, a2);
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          aBlock = v62;
          *v61 = 136315138;
          v131 = sub_100288788(a1, a2);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v63 = BidirectionalCollection<>.joined(separator:)();
          v65 = v64;

          v66 = sub_1002FFA0C(v63, v65, &aBlock);

          *(v61 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v59, v60, "Ignoring unknown Command Complete event %s", v61, 0xCu);
          sub_1000752F4(v62);
        }

        return;
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Received OP_DEVICE_NOT_INSIDE_VEHICLE";
        goto LABEL_56;
      }
    }

    goto LABEL_57;
  }

  if (v34)
  {
    if (v34 == 1)
    {
      v35 = v124;
      if (*(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2)
      {
        return;
      }

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Received BLE_PAIRING_READY", v38, 2u);
      }

      v39 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
      v40 = v4;
      if (*(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 4)
      {
        *(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 5;
        sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v105);
        if (qword_100501968 != -1)
        {
          swift_once();
        }

        type metadata accessor for DSKBLEPairing.BLEPairingRequest();
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1004098E0;
        *(v41 + 32) = v35;
        *(v41 + 40) = &off_1004C3840;
        *(v41 + 48) = sub_1000B3678;
        *(v41 + 56) = v4;
        *(v41 + 64) = sub_1000B367C;
        *(v41 + 72) = v4;
        swift_retain_n();

        sub_1000E9034(v41);

        return;
      }

      v42 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock = v69;
        *v68 = 136315138;
        LOBYTE(v131) = *(v40 + v39);
        v70 = String.init<A>(describing:)();
        v72 = sub_1002FFA0C(v70, v71, &aBlock);

        *(v68 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v42, v67, "Wrong state %s", v68, 0xCu);
        sub_1000752F4(v69);
      }

      goto LABEL_57;
    }

    goto LABEL_60;
  }

  a1 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Received DESELECT_SE", v48, 2u);
  }

  if (qword_100501A30 != -1)
  {
    goto LABEL_78;
  }

LABEL_41:
  v49 = v124;
  sub_100194774(v124);
  if (*(v19 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 1 || *(v19 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 9)
  {
    return;
  }

  v120 = a1;
  *(v19 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 10;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v105);
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409E40;
  *(inited + 32) = v49;

  v51 = sub_1000B0570(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1000E616C(v51, &aBlock);
  if (v16)
  {

LABEL_47:

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v54 = 136315138;
      v56 = UUID.uuidString.getter();
      v58 = sub_1002FFA0C(v56, v57, &aBlock);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to retrieve pairing info for %s", v54, 0xCu);
      sub_1000752F4(v55);
    }

    goto LABEL_58;
  }

  v73 = aBlock;
  v74 = v126;
  v75 = v127;
  v76 = v128;
  v77 = v129;

  sub_100069E2C(v73, v74);
  sub_100069E2C(v75, v76);

  v118 = v76;
  sub_10006A178(v75, v76);
  sub_10006A178(v73, v74);
  if (!*(v77 + 2))
  {

    sub_10006A178(v73, v74);
    sub_10006A178(v75, v118);
    goto LABEL_47;
  }

  v110 = v74;
  v109 = v73;
  v111 = v75;
  v78 = *(v77 + 4);
  v79 = *(v77 + 5);
  v80 = *(v77 + 6);
  v81 = *(v77 + 7);
  v82 = *(v77 + 9);
  v119 = *(v77 + 8);
  v83 = *(v77 + 10);
  v112 = v78;

  v114 = v79;
  v113 = v80;
  sub_100069E2C(v79, v80);
  v115 = v81;
  sub_100069E2C(v81, v119);
  v117 = v82;
  v116 = v83;
  sub_100069E2C(v82, v83);

  v84 = (v124 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v85 = *(v124 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v85 >> 60 == 15)
  {
    v86 = v109;
    v87 = v110;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Failed to retrieve key identifier", v90, 2u);
    }

    sub_100099870(2);

    sub_10006A178(v114, v113);
    sub_10006A178(v115, v119);
    sub_10006A178(v117, v116);
    sub_10006A178(v86, v87);
    sub_10006A178(v111, v118);
  }

  else
  {
    v120 = v77;
    v91 = *v84;
    sub_100069E2C(*v84, v85);
    if (qword_100501D98 != -1)
    {
      swift_once();
    }

    v108 = qword_10051B7F8;
    v92 = swift_allocObject();
    v92[2] = v91;
    v92[3] = v85;
    v93 = v114;
    v92[4] = v112;
    v92[5] = v93;
    v94 = v115;
    v92[6] = v113;
    v92[7] = v94;
    v95 = v117;
    v92[8] = v119;
    v92[9] = v95;
    v96 = v116;
    v105 = v85;
    v97 = v91;
    v107 = v91;
    v98 = v124;
    v92[10] = v116;
    v92[11] = v98;
    v92[12] = v19;
    v129 = sub_1000B36E8;
    v130 = v92;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v127 = sub_100080830;
    v128 = &unk_1004C61E0;
    v106 = _Block_copy(&aBlock);

    v99 = v93;
    v100 = v113;
    sub_100069E2C(v99, v113);
    v101 = v119;
    sub_100069E2C(v94, v119);
    sub_100069E2C(v117, v96);
    v102 = v105;
    sub_10006A2BC(v97, v105);

    static DispatchQoS.unspecified.getter();
    v131 = _swiftEmptyArrayStorage;
    sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v103 = v123;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v104 = v106;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v104);

    sub_10006A178(v114, v100);
    sub_10006A178(v115, v101);
    sub_10006A178(v117, v116);
    sub_10006A2D0(v107, v102);
    sub_10006A178(v109, v110);
    sub_10006A178(v111, v118);

    (*(v122 + 8))(v9, v103);
    (*(v121 + 8))(v12, v10);
  }
}

void sub_1000A291C(unint64_t a1, uint64_t a2, char **a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v10 & 1) == 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v12 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = [v12 TLVsWithData:isa];

    if (!v14)
    {
      break;
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(a1 >> 62))
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

LABEL_18:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
LABEL_19:

      return;
    }

LABEL_6:
    v9 = 0;
    v7 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v15 = *(a1 + 8 * v9 + 32);
      }

      v16 = v15;
      v17 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v19 = v15;
      sub_1000A470C(&v19, a3, v3);

      ++v9;
      if (v17 == v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
}

void sub_1000A2B9C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_86;
  }

  if (!*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    goto LABEL_17;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

LABEL_17:

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v125 = v28;
      *v27 = 136315138;
      v29 = UUID.uuidString.getter();
      v31 = sub_1002FFA0C(v29, v30, &v125);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Wrong peer %s", v27, 0xCu);
      sub_1000752F4(v28);
    }

    return;
  }

  v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 7)
  {
    v132 = a1;
    v133 = a2;
    sub_100069E2C(a1, a2);
    v16 = sub_1001A292C(38);
    if (v17 >> 60 == 15)
    {
LABEL_12:
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Invalid length for FIRST_APPROACH_RS", v24, 2u);
      }

      sub_100099870(2);
      goto LABEL_15;
    }

    v11 = v16;
    a1 = v17;
    v18 = sub_1001A292C(8);
    if (v19 >> 60 == 15)
    {
LABEL_11:
      sub_10006A2D0(v11, a1);
      goto LABEL_12;
    }

    v122 = v19;
    v123 = v18;
    v20 = sub_1001A292C(4);
    if (v21 >> 60 == 15)
    {
      sub_10006A2D0(v123, v122);
      goto LABEL_11;
    }

    v120 = v20;
    v121 = v21;
    v39 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
    if (v39)
    {
      v40 = v39;
      v41 = [v40 bleOOBKey];
      if (v41)
      {
        v117 = v40;
        v42 = v41;
        v119 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v118 = v44;
        v45 = v44 >> 62;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2)
          {
            goto LABEL_78;
          }

          v51 = *(v119 + 16);
          v50 = *(v119 + 24);
          v52 = __OFSUB__(v50, v51);
          v46 = v50 - v51;
          if (!v52)
          {
LABEL_38:
            if (v46 == 16)
            {
              v53 = a1 >> 62;
              if ((a1 >> 62) > 1)
              {
                if (v53 != 2)
                {
                  v54 = 0;
                  goto LABEL_49;
                }

                v56 = *(v11 + 16);
                v55 = *(v11 + 24);
                v54 = v55 - v56;
                if (!__OFSUB__(v55, v56))
                {
                  goto LABEL_49;
                }

                __break(1u);
              }

              else if (!v53)
              {
                v54 = BYTE6(a1);
LABEL_49:
                v130 = sub_1000B07FC(v54);
                v131 = v57;
                v125 = sub_10008FCB4(4uLL);
                v126 = v58 & 0xFFFFFFFFFFFFFFLL;
                if (v53 > 1)
                {
                  if (v53 != 2)
                  {
                    *(&v129 + 6) = 0;
                    *&v129 = 0;
                    v85 = v118;
                    v84 = v119;
                    sub_100069E2C(v119, v118);
                    v62 = v122;
                    v86 = v123;
                    sub_10006A2BC(v123, v122);
                    sub_1000AA9A4(&v129, &v129, v84, v85, v86, v62, &v130, &v125, &v124, 1, v11, a1, 4);
                    sub_10006A178(v119, v85);
                    v63 = v86;
LABEL_76:
                    sub_10006A2D0(v63, v62);
                    sub_10006A2D0(v11, a1);
                    if (v124)
                    {
LABEL_77:
                      sub_10006A178(v125, v126);
                      sub_10006A178(v130, v131);
                      goto LABEL_78;
                    }

LABEL_71:
                    v113 = 0;
                    v4 = v130;
                    v79 = v131;
                    v80 = v125;
                    v81 = v126;
                    sub_100069E2C(v130, v131);
                    sub_100069E2C(v80, v81);
                    sub_10006A178(v80, v81);
                    sub_10006A178(v4, v79);
                    v114 = v80;
                    v115 = v81;
                    v82 = sub_10008FB4C(v80, v81, v120, v121);
                    v116 = v79;
                    if (!v82)
                    {
                      v90 = Logger.logObject.getter();
                      v91 = static os_log_type_t.error.getter();
                      if (os_log_type_enabled(v90, v91))
                      {
                        v92 = swift_slowAlloc();
                        *v92 = 0;
                        v93 = "Failed authentication";
LABEL_96:
                        _os_log_impl(&_mh_execute_header, v90, v91, v93, v92, 2u);
                      }

LABEL_97:

                      sub_100099870(1);
                      sub_10006A2D0(v123, v122);

                      sub_10006A178(v114, v115);
                      sub_10006A2D0(v120, v121);
                      sub_10006A178(v4, v116);
LABEL_81:
                      sub_10006A178(v119, v118);
LABEL_82:
                      sub_10006A2D0(v11, a1);
LABEL_15:

                      sub_10006A178(v132, v133);
                      return;
                    }

                    v14 = v79 >> 62;
                    if ((v79 >> 62) <= 1)
                    {
                      if (!v14)
                      {
                        v83 = BYTE6(v79);
                        goto LABEL_92;
                      }

                      goto LABEL_90;
                    }

LABEL_86:
                    if (v14 != 2)
                    {
                      goto LABEL_94;
                    }

                    v95 = *(v4 + 16);
                    v94 = *(v4 + 24);
                    v52 = __OFSUB__(v94, v95);
                    v83 = v94 - v95;
                    if (!v52)
                    {
LABEL_92:
                      if (v83 == 38)
                      {
                        v111 = Data.subdata(in:)();
                        v112 = v96;
                        v110 = v4;
                        v97 = Data.subdata(in:)();
                        v99 = v98;
                        type metadata accessor for __DataStorage();
                        swift_allocObject();
                        v100 = __DataStorage.init(capacity:)();
                        *&v129 = 0;
                        *(&v129 + 1) = v100 | 0x4000000000000000;
                        v101 = sub_100068FC4(&qword_100502608, &qword_100409A28);
                        v127 = v101;
                        v107 = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28, &protocol conformance descriptor for <A> CollectionOfOne<A>);
                        v128 = v107;
                        LOBYTE(v125) = 114;
                        LOBYTE(v124) = *sub_1000752B0(&v125, v101);
                        Data._Representation.replaceSubrange(_:with:count:)();
                        sub_1000752F4(&v125);
                        v108 = v97;
                        v109 = v99;
                        Data.append(_:)();
                        v127 = v101;
                        v128 = v107;
                        LOBYTE(v125) = 99;
                        LOBYTE(v124) = *sub_1000752B0(&v125, v101);
                        Data._Representation.replaceSubrange(_:with:count:)();
                        sub_1000752F4(&v125);
                        Data.append(_:)();
                        if (qword_100501968 == -1)
                        {
                          goto LABEL_99;
                        }

                        goto LABEL_111;
                      }

LABEL_94:
                      v90 = Logger.logObject.getter();
                      v91 = static os_log_type_t.error.getter();
                      if (os_log_type_enabled(v90, v91))
                      {
                        v92 = swift_slowAlloc();
                        *v92 = 0;
                        v93 = "Invalid OOB data length";
                        goto LABEL_96;
                      }

                      goto LABEL_97;
                    }

                    __break(1u);
LABEL_90:
                    LODWORD(v83) = HIDWORD(v4) - v4;
                    if (__OFSUB__(HIDWORD(v4), v4))
                    {
                      __break(1u);
                      return;
                    }

                    v83 = v83;
                    goto LABEL_92;
                  }

                  v64 = *(v11 + 16);
                  v65 = *(v11 + 24);
                  sub_100069E2C(v119, v118);
                  sub_10006A2BC(v123, v122);
                  sub_10006A2BC(v11, a1);
                  v66 = __DataStorage._bytes.getter();
                  if (v66)
                  {
                    v67 = __DataStorage._offset.getter();
                    if (__OFSUB__(v64, v67))
                    {
LABEL_109:
                      __break(1u);
                      goto LABEL_110;
                    }

                    v66 += v64 - v67;
                  }

                  v52 = __OFSUB__(v65, v64);
                  v68 = v65 - v64;
                  if (!v52)
                  {
                    v69 = __DataStorage._length.getter();
                    if (v69 >= v68)
                    {
                      v70 = v68;
                    }

                    else
                    {
                      v70 = v69;
                    }

                    goto LABEL_67;
                  }

LABEL_108:
                  __break(1u);
                  goto LABEL_109;
                }

                if (!v53)
                {
                  *&v129 = v11;
                  WORD4(v129) = a1;
                  BYTE10(v129) = BYTE2(a1);
                  BYTE11(v129) = BYTE3(a1);
                  BYTE12(v129) = BYTE4(a1);
                  BYTE13(v129) = BYTE5(a1);
                  v116 = &v129 + BYTE6(a1);
                  v60 = v118;
                  v59 = v119;
                  sub_100069E2C(v119, v118);
                  v62 = v122;
                  v61 = v123;
                  sub_10006A2BC(v123, v122);
                  sub_1000AA9A4(&v129, v116, v59, v60, v61, v62, &v130, &v125, &v124, 1, v11, a1, 4);
                  sub_10006A178(v59, v60);
                  v63 = v123;
                  goto LABEL_76;
                }

                if (v11 >> 32 >= v11)
                {
                  sub_100069E2C(v119, v118);
                  sub_10006A2BC(v123, v122);
                  sub_10006A2BC(v11, a1);
                  v66 = __DataStorage._bytes.getter();
                  if (!v66)
                  {
                    goto LABEL_64;
                  }

                  v71 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v11, v71))
                  {
                    v66 += v11 - v71;
LABEL_64:
                    v72 = __DataStorage._length.getter();
                    if (v72 >= (v11 >> 32) - v11)
                    {
                      v70 = (v11 >> 32) - v11;
                    }

                    else
                    {
                      v70 = v72;
                    }

LABEL_67:
                    v73 = v70 + v66;
                    if (v66)
                    {
                      v74 = v73;
                    }

                    else
                    {
                      v74 = 0;
                    }

                    v75 = v118;
                    v76 = v119;
                    v77 = v122;
                    v78 = v123;
                    sub_1000AA9A4(v66, v74, v119, v118, v123, v122, &v130, &v125, &v129, 1, v11, a1, 4);
                    sub_10006A178(v76, v75);
                    sub_10006A2D0(v78, v77);
                    sub_10006A2D0(v11, a1);
                    if (v129)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_71;
                  }

LABEL_110:
                  __break(1u);
LABEL_111:
                  swift_once();
LABEL_99:
                  v107 = *(&v129 + 1);
                  v102 = v129;
                  v103 = v113;
                  sub_1000E98C8(v129, *(&v129 + 1), a3);
                  if (v103)
                  {
                    v104 = Logger.logObject.getter();
                    v105 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v104, v105))
                    {
                      v106 = swift_slowAlloc();
                      v113 = v102;
                      *v106 = 0;
                      _os_log_impl(&_mh_execute_header, v104, v105, "Failed to request pairing", v106, 2u);
                      v102 = v113;
                    }

                    sub_100099870(2);
                    sub_10006A2D0(v123, v122);

                    sub_10006A178(v108, v109);
                    sub_10006A178(v111, v112);
                    sub_10006A178(v114, v115);
                    sub_10006A2D0(v120, v121);

                    sub_10006A178(v110, v116);
                    sub_10006A178(v119, v118);
                    sub_10006A2D0(v11, a1);

                    sub_10006A178(v132, v133);
                  }

                  else
                  {
                    sub_10006A178(v132, v133);
                    sub_10006A2D0(v11, a1);
                    sub_10006A2D0(v123, v122);

                    sub_10006A178(v108, v109);
                    sub_10006A178(v111, v112);
                    sub_10006A178(v114, v115);
                    sub_10006A178(v110, v116);
                    sub_10006A178(v119, v118);
                    sub_10006A2D0(v120, v121);
                  }

                  sub_10006A178(v102, v107);
                  return;
                }

LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

              if (!__OFSUB__(HIDWORD(v11), v11))
              {
                v54 = HIDWORD(v11) - v11;
                goto LABEL_49;
              }

LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_78:
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              _os_log_impl(&_mh_execute_header, v87, v88, "Failed to decrypt OOB data", v89, 2u);
            }

            sub_100099870(1);
            sub_10006A2D0(v123, v122);

            sub_10006A2D0(v120, v121);
            goto LABEL_81;
          }

          __break(1u);
        }

        else if (!v45)
        {
          v46 = BYTE6(v118);
          goto LABEL_38;
        }

        LODWORD(v46) = HIDWORD(v119) - v119;
        if (__OFSUB__(HIDWORD(v119), v119))
        {
          __break(1u);
          goto LABEL_106;
        }

        v46 = v46;
        goto LABEL_38;
      }
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Missing endpoint or bleOOBKey", v49, 2u);
    }

    sub_100099870(2);
    sub_10006A2D0(v123, v122);
    sub_10006A2D0(v120, v121);
    goto LABEL_82;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v125 = v35;
    *v34 = 136315138;
    LOBYTE(v132) = *(v3 + v15);
    v36 = String.init<A>(describing:)();
    v38 = sub_1002FFA0C(v36, v37, &v125);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Wrong state %s", v34, 0xCu);
    sub_1000752F4(v35);
  }

  sub_100099870(2);
}

uint64_t sub_1000A3B8C(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v7 = a3[1];
  v33 = *a3;
  v34 = a5;
  v9 = a3[2];
  v8 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  v12 = a3[6];
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v40 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v38 = *(v15 - 8);
  v39 = v15;
  __chkstk_darwin(v15);
  v36 = a2;
  v37 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  aBlock = sub_100288788(a1, a2);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();

  v32[0] = String._bridgeToObjectiveC()();

  v17 = swift_allocObject();
  v17[2] = v33;
  v17[3] = v7;
  v17[4] = v9;
  v17[5] = v8;
  v17[6] = v10;
  v17[7] = v11;
  v18 = v43;
  v17[8] = v12;
  v17[9] = v18;
  v49 = sub_1000B3FA8;
  v50 = v17;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v32[1] = &v47;
  v47 = sub_1000A409C;
  v48 = &unk_1004C6230;
  v19 = _Block_copy(&aBlock);

  sub_100069E2C(v7, v9);
  sub_100069E2C(v8, v10);
  sub_100069E2C(v11, v12);

  v20 = v32[0];
  v21 = SESEndPointUpdateWithBlock();
  _Block_release(v19);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v24 = v34;
  v23 = v35;
  v22[2] = v21;
  v22[3] = v24;
  v25 = v36;
  v22[4] = v23;
  v22[5] = v25;
  v22[6] = v43;
  v49 = sub_1000B383C;
  v50 = v22;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100080830;
  v48 = &unk_1004C6280;
  v26 = _Block_copy(&aBlock);

  v27 = v21;

  sub_100069E2C(v23, v25);
  v28 = v37;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  v29 = v40;
  v30 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v41 + 8))(v29, v30);
  (*(v38 + 8))(v28, v39);
}

void sub_1000A409C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000A4104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(char *, uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update BLE data for endpoint %@", v8, 0xCu);
      sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100099870(2);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Endpoint updated with BLE UUID", v16, 2u);
    }

    v17 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
    swift_beginAccess();
    sub_10010DEBC(a3, a4, &v33);
    swift_endAccess();
    sub_10006A2D0(v33, *(&v33 + 1));
    swift_beginAccess();
    sub_10010DAA4(a5);
    swift_endAccess();

    if (!*(*(a2 + v17) + 16))
    {
      if (qword_1005019E8 != -1)
      {
        swift_once();
      }

      v18 = *(off_100504A68 + 3);
      os_unfair_lock_lock((v18 + 32));
      sub_1000B3EF8((v18 + 16));
      os_unfair_lock_unlock((v18 + 32));
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Handing off the peripheral to Alisha", v21, 2u);
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    sub_10022E104(a5, *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion));
    v22 = sub_1002B3B94(&off_1004C3948);
    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100462200, v32);
      _os_log_impl(&_mh_execute_header, v25, v26, "Sending %s", v27, 0xCu);
      sub_1000752F4(v28);
    }

    v29 = sub_100239160(3, 17, v22, v24);
    v31 = v30;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v29, v31, a5);
    sub_10006A178(v22, v24);
    sub_10006A178(v29, v31);
    sub_100099870(6);
  }
}

void sub_1000A470C(id *a1, char **a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 tag];
  switch(v6)
  {
    case 0x7F79u:
      v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion;
      if (*(a3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) < 0x300u)
      {
        return;
      }

      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      v16 = [v5 children];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = v16;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10034ADB0(v18, *(a3 + v15), a2);
LABEL_17:

      return;
    case 0x7F72u:
      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      v12 = [v5 children];
      if (!v12)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v13 = v12;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10034A0DC(v14, *(a3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion), a2);
      goto LABEL_17;
    case 0x5F78u:
      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      v7 = [v5 value];
      if (v7)
      {
        v8 = v7;
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        sub_100349188(v9, v11, a2);
        sub_10006A178(v9, v11);
        return;
      }

      goto LABEL_23;
  }

  v19 = v5;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = [v19 tag];

    _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring unknown event %u", v22, 8u);
  }

  else
  {
  }
}

BOOL sub_1000A4A18(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v6 = [a1 publicKeyIdentifier];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_10008FB4C(v7, v9, a2, a3);
  sub_10006A178(v7, v9);
  return v10;
}

uint64_t sub_1000A4AC0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = sub_100288788(a1, a2);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();

  v12 = String._bridgeToObjectiveC()();

  v28 = sub_1000A4EF4;
  v29 = 0;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000A409C;
  v27 = &unk_1004C6370;
  v13 = _Block_copy(&aBlock);
  v14 = SESEndPointUpdateWithBlock();
  _Block_release(v13);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a3;
  v28 = sub_1000B3D18;
  v29 = v15;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100080830;
  v27 = &unk_1004C63C0;
  v16 = _Block_copy(&aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v8, v6);
  (*(v20 + 8))(v11, v21);
}

void sub_1000A4EF4(void *a1)
{
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [a1 setBlePairingRequest:isa];
}

void sub_1000A4F6C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_1002FFA0C(v5, v6, &v11);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to update endpoint %s", v3, 0xCu);
      sub_1000752F4(v4);
    }

    else
    {
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Endpoint updated with BLE pairing request", v9, 2u);
    }
  }
}

void sub_1000A517C(uint64_t result)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      return;
    }
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        return;
      }

      v67 = 0;
      v6 = BYTE6(v4);
      goto LABEL_12;
    }

    if (v3 == v3 >> 32)
    {
      return;
    }
  }

  if (v5 == 2)
  {
    v6 = *(v3 + 24);
    v67 = *(v3 + 16);
  }

  else
  {
    v67 = v3;
    v6 = v3 >> 32;
  }

LABEL_12:
  if (__OFSUB__(v6, 1))
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
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
    __break(1u);
  }

  if (v67 < v6 - 1)
  {
    v7 = v6 - 2;
    v65 = v1;
    while (1)
    {
      v9 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        break;
      }

      if (v9)
      {
        if (v67 >= v3 >> 32 || v67 < v3)
        {
          goto LABEL_112;
        }

        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_142;
        }

        v12 = v15;
        v16 = __DataStorage._offset.getter();
        v14 = v67 - v16;
        if (__OFSUB__(v67, v16))
        {
          goto LABEL_114;
        }

LABEL_33:
        v10 = *(v12 + v14);
        goto LABEL_34;
      }

      if (v67 >= BYTE6(v4))
      {
        goto LABEL_111;
      }

      v68 = v3;
      LOWORD(v69) = v4;
      BYTE2(v69) = BYTE2(v4);
      HIBYTE(v69) = BYTE3(v4);
      LOBYTE(v70) = BYTE4(v4);
      HIBYTE(v70) = BYTE5(v4);
      v10 = *(&v68 + v67);
LABEL_34:
      v17 = v7 + 1;
      v18 = *v2;
      v19 = v2[1];
      v20 = v19 >> 62;
      v66 = v10;
      if ((v19 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_143;
        }

        if (v17 < *(v18 + 16))
        {
          goto LABEL_115;
        }

        if (v17 >= *(v18 + 24))
        {
          goto LABEL_119;
        }

        v22 = __DataStorage._bytes.getter();
        if (!v22)
        {
          goto LABEL_147;
        }

        v23 = v22;
        v24 = __DataStorage._offset.getter();
        v25 = v17 - v24;
        if (__OFSUB__(v17, v24))
        {
          goto LABEL_122;
        }

        goto LABEL_49;
      }

      if (v20)
      {
        if (v17 >= v18 >> 32 || v17 < v18)
        {
          goto LABEL_118;
        }

        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_146;
        }

        v23 = v26;
        v27 = __DataStorage._offset.getter();
        v25 = v17 - v27;
        if (__OFSUB__(v17, v27))
        {
          goto LABEL_120;
        }

LABEL_49:
        v21 = *(v23 + v25);
        goto LABEL_50;
      }

      if (v17 >= BYTE6(v19))
      {
        goto LABEL_116;
      }

      v68 = *v2;
      LOWORD(v69) = v19;
      BYTE2(v69) = BYTE2(v19);
      HIBYTE(v69) = BYTE3(v19);
      LOBYTE(v70) = BYTE4(v19);
      HIBYTE(v70) = BYTE5(v19);
      v21 = *(&v68 + v7 + 1);
LABEL_50:
      v3 = *v2;
      v28 = v2[1];
      v29 = v28 >> 62;
      if ((v28 >> 62) > 1)
      {
        if (v29 != 2)
        {
          goto LABEL_145;
        }

        v31 = v28 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v3, v28);
        *v2 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v67 < *(v3 + 16))
        {
          goto LABEL_121;
        }

        if (v67 >= *(v3 + 24))
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v3 + 16);
          v33 = *(v3 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v32, __DataStorage._offset.getter()))
            {
              goto LABEL_137;
            }

            if (__OFSUB__(v33, v32))
            {
              goto LABEL_134;
            }
          }

          else if (__OFSUB__(v33, v32))
          {
            goto LABEL_134;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v39 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v31 = v39;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = *(v3 + 16);
          v41 = *(v3 + 24);
          type metadata accessor for Data.RangeReference();
          v42 = swift_allocObject();
          *(v42 + 16) = v40;
          *(v42 + 24) = v41;
          v17 = v7 + 1;

          v3 = v42;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v43 = __DataStorage._bytes.getter();
        if (!v43)
        {
          goto LABEL_150;
        }

        v44 = v43;
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v67, v45))
        {
          goto LABEL_130;
        }

        *(v44 + v67 - v45) = v21;
        v30 = v31 | 0x8000000000000000;
LABEL_79:
        *v2 = v3;
        v2[1] = v30;
        goto LABEL_80;
      }

      if (v29)
      {
        v34 = v28 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v3, v28);
        *v2 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v67 >= v3 >> 32 || v67 < v3)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
          {
            goto LABEL_136;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v35 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v34 = v35;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v36 = __DataStorage._bytes.getter();
        if (!v36)
        {
          goto LABEL_148;
        }

        v37 = v36;
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v67, v38))
        {
          goto LABEL_126;
        }

        *(v37 + v67 - v38) = v21;
        v30 = v34 | 0x4000000000000000;
        goto LABEL_79;
      }

      sub_10006A178(v3, v28);
      v68 = v3;
      LOWORD(v69) = v28;
      BYTE2(v69) = BYTE2(v28);
      HIBYTE(v69) = BYTE3(v28);
      LOBYTE(v70) = BYTE4(v28);
      HIBYTE(v70) = BYTE5(v28);
      v71 = BYTE6(v28);
      if (v67 >= BYTE6(v28))
      {
        goto LABEL_123;
      }

      *(&v68 + v67) = v21;
      v3 = v68;
      v30 = v64 & 0xF00000000000000 | v69 | ((v70 | (v71 << 16)) << 32);
      v2 = v65;
      *v65 = v68;
      v65[1] = v30;
      v64 = v30;
LABEL_80:
      v46 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v46 != 2)
        {
          goto LABEL_149;
        }

        v47 = v30 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v3, v30);
        *v2 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v17 < *(v3 + 16))
        {
          goto LABEL_127;
        }

        if (v17 >= *(v3 + 24))
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = *(v3 + 16);
          v49 = *(v3 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v48, __DataStorage._offset.getter()))
            {
              goto LABEL_139;
            }

            if (__OFSUB__(v49, v48))
            {
              goto LABEL_135;
            }
          }

          else if (__OFSUB__(v49, v48))
          {
            goto LABEL_135;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v55 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v47 = v55;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = v17;
          v57 = *(v3 + 16);
          v58 = *(v3 + 24);
          type metadata accessor for Data.RangeReference();
          v59 = swift_allocObject();
          *(v59 + 16) = v57;
          *(v59 + 24) = v58;
          v17 = v56;

          v3 = v59;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v60 = __DataStorage._bytes.getter();
        if (!v60)
        {
          goto LABEL_152;
        }

        v61 = v60;
        v62 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v62))
        {
          goto LABEL_133;
        }

        *(v61 + v17 - v62) = v66;
        v4 = v47 | 0x8000000000000000;
LABEL_15:
        *v2 = v3;
        v2[1] = v4;
        goto LABEL_16;
      }

      if (v46)
      {
        v50 = v30 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v3, v30);
        *v2 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v17 >= v3 >> 32 || v17 < v3)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
          {
            goto LABEL_138;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v51 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v50 = v51;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
          goto LABEL_151;
        }

        v53 = v52;
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v54))
        {
          goto LABEL_132;
        }

        *(v53 + v17 - v54) = v66;
        v4 = v50 | 0x4000000000000000;
        goto LABEL_15;
      }

      sub_10006A178(v3, v30);
      v68 = v3;
      LOWORD(v69) = v30;
      BYTE2(v69) = BYTE2(v30);
      HIBYTE(v69) = BYTE3(v30);
      LOBYTE(v70) = BYTE4(v30);
      HIBYTE(v70) = BYTE5(v30);
      v71 = BYTE6(v30);
      if (v17 >= BYTE6(v30))
      {
        goto LABEL_128;
      }

      v2 = v65;
      *(&v68 + v7 + 1) = v66;
      v3 = v68;
      v4 = v63 & 0xF00000000000000 | v69 | ((v70 | (v71 << 16)) << 32);
      *v65 = v68;
      v65[1] = v4;
      v63 = v4;
LABEL_16:
      if (++v67 >= v7--)
      {
        return;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_141;
    }

    if (v67 < *(v3 + 16))
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
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
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v67 >= *(v3 + 24))
    {
      goto LABEL_113;
    }

    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
      goto LABEL_144;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    v14 = v67 - v13;
    if (__OFSUB__(v67, v13))
    {
      goto LABEL_117;
    }

    goto LABEL_33;
  }
}

uint64_t sub_1000A5CB0(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *, uint64_t))
{
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B288;
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  sub_100069E2C(a3, a4);

  sub_100069E2C(v11, v12);
  sub_100111E28(v11, v12, v10, a3, a4, a2, a1, a5);

  sub_10006A178(a3, a4);
  return sub_10006A178(v11, v12);
}

uint64_t sub_1000A5DD4(void *a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v103 = a7;
  v115 = a6;
  v116 = a5;
  LODWORD(v114) = a2;
  v100 = a1;
  v111 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v101 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for DispatchTime();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v102 = &v99 - v17;
  v113 = type metadata accessor for UUID();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a3;
  v119 = a4;
  if (qword_1005019E8 != -1)
  {
    v18 = swift_once();
  }

  __chkstk_darwin(v18);
  *(&v99 - 2) = sub_1000B3FF4;
  *(&v99 - 1) = &v117;
  v22 = *(v21 + 24);
  __chkstk_darwin(v23);
  *(&v99 - 2) = sub_1000B3FF8;
  *(&v99 - 1) = v24;
  os_unfair_lock_lock(v22 + 8);
  sub_1000B3630(&v22[4], &aBlock);
  os_unfair_lock_unlock(v22 + 8);
  if (aBlock == 1)
  {
    v25 = v116;
    if (v114)
    {
      v26 = v115;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v113 = v29;
        v114 = swift_slowAlloc();
        *&aBlock = v114;
        *v29 = 136315138;
        swift_beginAccess();
        v31 = *(v26 + 2);
        v30 = *(v26 + 3);
        sub_100069E2C(v31, v30);
        v32 = Data.description.getter();
        LODWORD(v115) = v28;
        v33 = v32;
        v35 = v34;
        v36 = v31;
        v25 = v116;
        sub_10006A178(v36, v30);
        v37 = sub_1002FFA0C(v33, v35, &aBlock);

        v38 = v113;
        *(v113 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v27, v115, "Failed to retrieve peripheral with address %s", v38, 0xCu);
        sub_1000752F4(v114);
      }

      v39 = v25;
      sub_1000A6DB8(a3, a4);
      if (qword_100501D90 != -1)
      {
        swift_once();
      }

      v116 = qword_10051B7F0;
      static DispatchTime.now()();
      *v13 = 5;
      v40 = v101;
      (*(v101 + 104))(v13, enum case for DispatchTimeInterval.seconds(_:), v11);
      v41 = v102;
      + infix(_:_:)();
      (*(v40 + 8))(v13, v11);
      v115 = *(v104 + 8);
      v42 = v105;
      (v115)(v15, v105);
      v43 = swift_allocObject();
      v43[2] = v39;
      v43[3] = a3;
      v43[4] = a4;
      v126 = sub_1000B364C;
      v127 = v43;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v125 = sub_100080830;
      *(&v125 + 1) = &unk_1004C6168;
      v44 = _Block_copy(&aBlock);
      sub_100069E2C(a3, a4);

      v45 = v106;
      static DispatchQoS.unspecified.getter();
      v123 = _swiftEmptyArrayStorage;
      sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      v46 = v108;
      v47 = v111;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v44);
      (*(v110 + 8))(v46, v47);
      (*(v107 + 8))(v45, v109);
      (v115)(v41, v42);
    }

    else
    {
      v57 = [v100 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Peer(0);
      swift_allocObject();
      v58 = sub_10025CF18(v20);
      v59 = (v58 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v60 = *(v58 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v61 = *(v58 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      *v59 = a3;
      v59[1] = a4;
      sub_100069E2C(a3, a4);
      sub_10006A2D0(v60, v61);
      swift_beginAccess();

      sub_1000D5D24(v122, v58);
      swift_endAccess();

      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v126 = 0;
      aBlock = 0u;
      v125 = 0u;
      sub_1002400AC(0, &aBlock);
      sub_100075768(&aBlock, &qword_100502F08, &qword_10040A000);
      v62 = v112;
      if (qword_100501B98 != -1)
      {
        swift_once();
      }

      v63 = *(qword_10051B5F8 + 16);
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
      v67 = v115;
      swift_beginAccess();
      v68 = *(v67 + 2);
      v69 = *(v67 + 3);
      *(&v125 + 1) = &type metadata for Data;
      *&aBlock = v68;
      *(&aBlock + 1) = v69;
      sub_100075D50(&aBlock, v122);

      sub_100069E2C(v68, v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121[0] = v63;
      sub_100315178(v122, v64, v66, isUniquelyReferenced_nonNull_native);

      v71 = v121[0];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
      v75 = v103;
      swift_beginAccess();
      v76 = *(v75 + 16);
      v77 = *(v75 + 24);
      *(&v125 + 1) = &type metadata for Data;
      *&aBlock = v76;
      *(&aBlock + 1) = v77;
      sub_100075D50(&aBlock, v122);
      sub_100069E2C(v76, v77);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v71;
      sub_100315178(v122, v72, v74, v78);

      v79 = v120;

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&aBlock = v83;
        *v82 = 136315138;

        v84 = UUID.uuidString.getter();
        v86 = v85;

        v87 = sub_1002FFA0C(v84, v86, &aBlock);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "Requesting connection for First Approach %s", v82, 0xCu);
        sub_1000752F4(v83);
      }

      v88 = v113;
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_100068FC4(&qword_100503F10, &qword_10040A008);
      v89 = *(v62 + 72);
      v90 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_100409A40;
      v92 = v91 + v90;
      if (qword_100501D30 != -1)
      {
        swift_once();
      }

      v93 = sub_1000958E4(v88, qword_10051B7A0);
      v94 = *(v62 + 16);
      v94(v92, v93, v88);
      if (qword_100501D20 != -1)
      {
        swift_once();
      }

      v95 = sub_1000958E4(v88, qword_10051B770);
      v94(v92 + v89, v95, v88);
      v96 = v92 + 2 * v89;
      if (qword_100501D28 != -1)
      {
        swift_once();
      }

      v97 = sub_1000958E4(v88, qword_10051B788);
      v94(v96, v97, v88);
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      v98 = swift_allocObject();
      *(v98 + 16) = v58;
      *(v98 + 24) = 893797958;
      *(v98 + 32) = 0xE400000000000000;
      *(v98 + 40) = v91;
      *(v98 + 64) = 0;
      *(v98 + 72) = 0;
      *(v98 + 80) = 1;
      *(v98 + 48) = v79;
      *(v98 + 56) = 0;
      *(v98 + 88) = sub_1000B3F10;
      *(v98 + 96) = v25;
      *(v98 + 104) = sub_1000B3FBC;
      *(v98 + 112) = v25;
      *(v98 + 120) = sub_1000B3F28;
      *(v98 + 128) = v25;
      *(v98 + 136) = sub_1000B3FAC;
      *(v98 + 144) = v25;
      *(v98 + 152) = sub_1000B3F38;
      *(v98 + 160) = v25;
      *(v98 + 168) = 0;
      *(v98 + 176) = 0;
      swift_retain_n();

      sub_1000EA4CC(v98, 0);
    }
  }

  else
  {
    sub_100069E2C(a3, a4);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    sub_10006A178(a3, a4);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&aBlock = v51;
      *v50 = 136315138;
      *&v122[0] = sub_100288788(a3, a4);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v52 = BidirectionalCollection<>.joined(separator:)();
      v54 = v53;

      v55 = sub_1002FFA0C(v52, v54, &aBlock);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Cancelling pending first approach due to missing endpoint %s", v50, 0xCu);
      sub_1000752F4(v51);
    }

    return sub_1000A6DB8(a3, a4);
  }
}

uint64_t sub_1000A6DB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v78 = a2;
  v81 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v9 = v8;
    LOBYTE(v8) = _dispatchPreconditionTest(_:)();
    (*(v5 + 8))(v7, v4);
    if ((v8 & 1) == 0)
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      swift_once();
      goto LABEL_94;
    }

    v10 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
    swift_beginAccess();
    v11 = v78;
    sub_10010DEBC(v81, v78, &v84);
    result = swift_endAccess();
    if (*(&v84 + 1) >> 60 == 15)
    {
      return result;
    }

    sub_10006A2D0(v84, *(&v84 + 1));
    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 || *(*(v3 + v10) + 16))
    {
      v74 = 0;
      goto LABEL_7;
    }

    if (qword_1005019E8 != -1)
    {
      goto LABEL_112;
    }

LABEL_94:
    v58 = *(off_100504A68 + 3);
    os_unfair_lock_lock((v58 + 32));
    sub_1000B3EF8((v58 + 16));
    v74 = 0;
    os_unfair_lock_unlock((v58 + 32));
    v11 = v78;
LABEL_7:
    v13 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachPeers;
    swift_beginAccess();
    v68 = v13;
    v14 = *(v3 + v13);
    v69 = v3;
    v76 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_1000B2B6C(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v4 = v85;
      v15 = v86;
      v7 = v87;
      v16 = v88;
      v17 = v89;
    }

    else
    {
      v18 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v7 = ~v18;
      v19 = -v18;
      v20 = v19 < 64 ? ~(-1 << v19) : -1;
      v17 = v20 & *(v14 + 56);
      v4 = v14;
      swift_bridgeObjectRetain_n();
      v16 = 0;
    }

    v75 = v7;
    v3 = (v7 + 64) >> 6;
    v21 = !v81 && v11 == 0xC000000000000000;
    v22 = !v21;
    v73 = v22;
    v77 = v11 >> 62;
    v23 = __OFSUB__(HIDWORD(v81), v81);
    v71 = v23;
    v70 = HIDWORD(v81) - v81;
    v72 = BYTE6(v11);
    v79 = v4;
    v5 = v16;
    if (v4 < 0)
    {
      break;
    }

    while (1)
    {
      v28 = v5;
      v29 = v17;
      v26 = v5;
      if (!v17)
      {
        break;
      }

LABEL_30:
      v27 = (v29 - 1) & v29;
      v25 = *(*(v4 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));

      if (!v25)
      {
        goto LABEL_91;
      }

LABEL_31:
      v80 = v27;
      v31 = *(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v30 = *(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v30 >> 60 == 15)
      {
        if (v11 >> 60 == 15)
        {
          sub_10006A2BC(*(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
          sub_100069E2C(v81, v11);
          sub_100093854(v79);
          sub_10006A2D0(v31, v30);
          goto LABEL_98;
        }

LABEL_35:
        sub_10006A2BC(*(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
        v7 = v81;
        sub_100069E2C(v81, v11);

        sub_10006A2D0(v31, v30);
        sub_10006A2D0(v7, v11);
        v4 = v79;
        v17 = v80;
        v5 = v26;
        if (v79 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11 >> 60 == 15)
        {
          goto LABEL_35;
        }

        v32 = v30 >> 62;
        if (v30 >> 62 == 3)
        {
          if (v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v30 == 0xC000000000000000;
          }

          v34 = v77;
          v36 = !v33 || v77 < 3;
          if (((v36 | v73) & 1) == 0)
          {
            sub_10006A2BC(0, 0xC000000000000000);
            sub_100069E2C(0, 0xC000000000000000);
            sub_10006A2D0(0, 0xC000000000000000);
            v31 = 0;
LABEL_96:
            sub_10006A2D0(v31, v30);
LABEL_97:
            sub_100093854(v79);
LABEL_98:

            v11 = v69;
            swift_beginAccess();
            sub_10010DAA4(v25);
            swift_endAccess();

            swift_beginAccess();
            sub_10010DAA4(v25);
            swift_endAccess();

            if (qword_100501960 == -1)
            {
LABEL_99:
              sub_1000E67E4(v25);
              if (*(v11 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
              {

                if (static UUID.== infix(_:_:)())
                {
                  sub_100099870(2);
                }
              }

              if (qword_100501B70 == -1)
              {
LABEL_104:
                v60 = qword_10051B5B0;

                v61 = sub_10024F2B4(v60, v25);

                v62 = sub_1000CA828(v61);

                if (v62)
                {
                  sub_100246878(v63, v64);
                }
              }

LABEL_118:
              swift_once();
              goto LABEL_104;
            }

LABEL_115:
            swift_once();
            goto LABEL_99;
          }

LABEL_59:
          v37 = 0;
          if (v34 <= 1)
          {
            goto LABEL_56;
          }

          goto LABEL_60;
        }

        v34 = v77;
        if (v32 > 1)
        {
          if (v32 != 2)
          {
            goto LABEL_59;
          }

          v39 = *(v31 + 16);
          v38 = *(v31 + 24);
          v40 = __OFSUB__(v38, v39);
          v37 = v38 - v39;
          if (v40)
          {
            goto LABEL_114;
          }

          if (v77 <= 1)
          {
            goto LABEL_56;
          }
        }

        else if (v32)
        {
          LODWORD(v37) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v37 = v37;
          if (v77 <= 1)
          {
LABEL_56:
            v41 = v72;
            if (v34)
            {
              v41 = v70;
              if (v71)
              {
                goto LABEL_111;
              }
            }

            goto LABEL_62;
          }
        }

        else
        {
          v37 = BYTE6(v30);
          if (v77 <= 1)
          {
            goto LABEL_56;
          }
        }

LABEL_60:
        if (v34 != 2)
        {
          if (!v37)
          {
LABEL_95:
            sub_10006A2BC(*(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
            v59 = v81;
            sub_100069E2C(v81, v11);
            sub_10006A2D0(v59, v11);
            goto LABEL_96;
          }

LABEL_68:
          sub_10006A2BC(*(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
          v7 = v81;
          sub_100069E2C(v81, v11);
          sub_10006A2D0(v7, v11);
          sub_10006A2D0(v31, v30);
          goto LABEL_89;
        }

        v43 = *(v81 + 16);
        v42 = *(v81 + 24);
        v40 = __OFSUB__(v42, v43);
        v41 = v42 - v43;
        if (v40)
        {
          goto LABEL_110;
        }

LABEL_62:
        if (v37 != v41)
        {
          goto LABEL_68;
        }

        if (v37 < 1)
        {
          goto LABEL_95;
        }

        if (v32 > 1)
        {
          if (v32 != 2)
          {
            memset(v83, 0, 14);
            sub_10006A2BC(v31, v30);
            sub_10006A2BC(v31, v30);
            v44 = v81;
            sub_100069E2C(v81, v11);
            goto LABEL_81;
          }

          v45 = *(v31 + 24);
          v67 = *(v31 + 16);
          v66 = v45;
          sub_10006A2BC(v31, v30);
          sub_10006A2BC(v31, v30);
          sub_100069E2C(v81, v11);
          v46 = __DataStorage._bytes.getter();
          if (v46)
          {
            v47 = v46;
            v48 = __DataStorage._offset.getter();
            v49 = v67;
            if (__OFSUB__(v67, v48))
            {
              __break(1u);
LABEL_120:
              __break(1u);
            }

            v65 = &v67[v47 - v48];
          }

          else
          {
            v65 = 0;
            v49 = v67;
          }

          if (__OFSUB__(v66, v49))
          {
            goto LABEL_117;
          }

          __DataStorage._length.getter();
          v55 = v65;
        }

        else
        {
          if (!v32)
          {
            v83[0] = *(v25 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
            LOWORD(v83[1]) = v30;
            BYTE2(v83[1]) = BYTE2(v30);
            BYTE3(v83[1]) = BYTE3(v30);
            BYTE4(v83[1]) = BYTE4(v30);
            BYTE5(v83[1]) = BYTE5(v30);
            v67 = v83 + BYTE6(v30);
            sub_10006A2BC(v31, v30);
            sub_10006A2BC(v31, v30);
            v44 = v81;
            sub_100069E2C(v81, v11);
LABEL_81:
            v53 = v11;
            v54 = v74;
            sub_10019F024(v83, v44, v53, v82);
            v74 = v54;
            v11 = v78;
            sub_10006A2D0(v31, v30);
            sub_10006A2D0(v44, v11);
            v7 = v82[0];
            goto LABEL_88;
          }

          v67 = ((v31 >> 32) - v31);
          if (v31 >> 32 < v31)
          {
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          sub_10006A2BC(v31, v30);
          sub_10006A2BC(v31, v30);
          sub_100069E2C(v81, v78);
          v50 = __DataStorage._bytes.getter();
          if (v50)
          {
            v66 = v50;
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v31, v51))
            {
              goto LABEL_120;
            }

            v52 = v31 - v51 + v66;
          }

          else
          {
            v52 = 0;
          }

          __DataStorage._length.getter();
          v55 = v52;
        }

        v56 = v78;
        v57 = v74;
        sub_10019F024(v55, v81, v78, v83);
        v74 = v57;
        v11 = v56;
        sub_10006A2D0(v31, v30);
        sub_10006A2D0(v81, v56);
        v7 = LOBYTE(v83[0]);
LABEL_88:
        sub_10006A2D0(v31, v30);
        if (v7)
        {
          goto LABEL_97;
        }

LABEL_89:
        v4 = v79;

        v17 = v80;
        v5 = v26;
        if (v4 < 0)
        {
          goto LABEL_23;
        }
      }
    }

    while (1)
    {
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v26 >= v3)
      {
        goto LABEL_91;
      }

      v29 = *(v15 + 8 * v26);
      ++v28;
      if (v29)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_108:
    swift_once();
  }

LABEL_23:
  v24 = __CocoaSet.Iterator.next()();
  if (v24)
  {
    *v82 = v24;
    type metadata accessor for Peer(0);
    swift_dynamicCast();
    v25 = v83[0];
    v26 = v5;
    v27 = v17;
    if (v83[0])
    {
      goto LABEL_31;
    }
  }

LABEL_91:
  sub_100093854(v4);
}

uint64_t sub_1000A798C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 publicKeyIdentifier];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  LOBYTE(a3) = sub_10008FB4C(v7, v9, a2, a3);
  sub_10006A178(v7, v9);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v10 = [a1 bleUUID];
  if (v10)
  {

    return 0;
  }

  result = [a1 blePairingRequest];
  if (result)
  {

    v12 = [a1 revocationAttestation];
    if (!v12)
    {
      return 1;
    }

    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10006A178(v14, v16);
    return 0;
  }

  return result;
}

uint64_t sub_1000A7AA0(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B288;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_100069E2C(a2, a3);
  v12 = qword_100501D90;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    a1 = sub_10012E6B0(0, a1[2] + 1, 1, a1);
    *(v10 + v6) = a1;
    goto LABEL_13;
  }

  v15 = *(v10 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v15 == 10 || v15 == 5)
  {
    sub_1000976F4(a2, a3);
  }

  a3 = swift_allocObject();
  *(a3 + 16) = sub_1000B3908;
  *(a3 + 24) = v11;
  v6 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  a1 = *(v10 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + v6) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v19 = a1[2];
  v18 = a1[3];
  if (v19 >= v18 >> 1)
  {
    a1 = sub_10012E6B0((v18 > 1), v19 + 1, 1, a1);
  }

  a1[2] = v19 + 1;
  v20 = &a1[3 * v19];
  *(v20 + 32) = 1;
  v20[5] = sub_1000B3FF0;
  v20[6] = a3;
  *(v10 + v6) = a1;
  swift_endAccess();
}

uint64_t sub_1000A7D8C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v8 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
    swift_beginAccess();
    a1 = *(v8 + v2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v2) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  a1 = sub_10012EDCC(0, a1[2] + 1, 1, a1);
  *(v8 + v2) = a1;
LABEL_5:
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12 >> 1)
  {
    a1 = sub_10012EDCC((v12 > 1), v13 + 1, 1, a1);
  }

  a1[2] = v13 + 1;
  v14 = &a1[2 * v13];
  v14[4] = sub_1000B3564;
  v14[5] = v5;
  *(v8 + v2) = a1;
  return swift_endAccess();
}

void sub_1000A7FAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
    if (v9)
    {
      v10 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
      *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 0;

      sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v14);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Restarting Owner Pairing", v13, 2u);
      }

      sub_100095A74(v9, v10);
      sub_1000B2A4C(v9, v10);
    }

    else
    {
      sub_100099870(2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A81DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v10 >> 60 != 15)
    {
      v11 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      sub_100069E2C(v11, v10);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Restarting First Approach", v14, 2u);
      }

      sub_1000A6DB8(v11, v10);
      sub_1000976F4(v11, v10);
      return sub_10006A2D0(v11, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A83F0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = UUID.uuidString.getter();
    v14 = sub_1002FFA0C(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "UWB Alisha session started running for %s", v10, 0xCu);
    sub_1000752F4(v11);
  }

  if (qword_100501BA0 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1002553AC(a1);
}

void sub_1000A8668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = UUID.uuidString.getter();
      v16 = sub_1002FFA0C(v14, v15, &v21);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = sub_1002482E8(a1);
      v19 = sub_1002FFA0C(v17, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "UWB Alisha session suspended for %s %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
    {

      if (static UUID.== infix(_:_:)())
      {
        sub_100099870(4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000A8948(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = UUID.uuidString.getter();
      v13 = sub_1002FFA0C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "UWB Alisha session resumed for %s", v9, 0xCu);
      sub_1000752F4(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A8B78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if (qword_100501960 == -1)
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
  sub_1000E71A0(a1, a2, a3);
  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B5A0;

  sub_10023A8F8(a1, a2, 1, a3, v14, v4, a3);
}

_BYTE *sub_1000A8E24(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (*result != 5 || result[1] != 13)
  {
    return result;
  }

  if (*(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {

    if (static UUID.== infix(_:_:)())
    {
      v5 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
      if (*(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 2)
      {
        v6 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
        if (v6)
        {
          v7 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);

          v6(0);
          sub_1000B2A4C(v6, v7);
        }

        *(a2 + v5) = 3;
        sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v19);
        v8 = sub_1002B3B94(&off_1004C3970);
        v10 = v9;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v20 = v8;
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v21[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = sub_1002FFA0C(0xD000000000000015, 0x80000001004621E0, v21);
          _os_log_impl(&_mh_execute_header, v11, v12, "Sending %s", v13, 0xCu);
          sub_1000752F4(v14);

          v8 = v20;
        }

        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v15 = sub_100239160(3, 17, v8, v10);
        v17 = v16;
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E71A0(v15, v17, a3);
        sub_10006A178(v8, v10);

        return sub_10006A178(v15, v17);
      }

      else
      {
      }
    }
  }

  swift_beginAccess();

  v18 = sub_1000D5D24(&v22, a3);
  swift_endAccess();

  if (v18)
  {
    return sub_10009CCF8();
  }

  return result;
}

void sub_1000A92D4(char a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      v18[7] = a1;
      v12 = String.init<A>(describing:)();
      v14 = sub_1002FFA0C(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = UUID.uuidString.getter();
      v17 = sub_1002FFA0C(v15, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session health update %s for %s", v11, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A9558(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v38 = a2[5];
  v39 = a3;
  v10 = a2[6];
  v36 = v5;
  v37 = v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v41 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = __chkstk_darwin(v13);
  v40 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 publicKeyIdentifier];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  aBlock = sub_100288788(v17, v19);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v17, v19);

  v35[0] = String._bridgeToObjectiveC()();

  v20 = swift_allocObject();
  v21 = v37;
  v20[2] = v36;
  v20[3] = v6;
  v20[4] = v7;
  v20[5] = v8;
  v23 = v38;
  v22 = v39;
  v20[6] = v9;
  v20[7] = v23;
  v20[8] = v21;
  v20[9] = v22;
  v52 = sub_1000B2B60;
  v53 = v20;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v35[1] = &v50;
  v50 = sub_1000A409C;
  v51 = &unk_1004C5FB0;
  v24 = _Block_copy(&aBlock);

  sub_100069E2C(v6, v7);
  sub_100069E2C(v8, v9);
  sub_100069E2C(v23, v21);

  v25 = v35[0];
  v26 = SESEndPointUpdateWithBlock();
  _Block_release(v24);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v27 = swift_allocObject();
  v28 = v42;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v52 = sub_1000B2B64;
  v53 = v27;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_100080830;
  v51 = &unk_1004C6000;
  v29 = _Block_copy(&aBlock);
  v30 = v26;

  v31 = v40;
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  v32 = v41;
  v33 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v45 + 8))(v32, v33);
  (*(v43 + 8))(v31, v44);
}

void sub_1000A9A78(void *a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setBleAddress:isa];

  UUID.uuidString.getter();
  v3 = String._bridgeToObjectiveC()();

  [a1 setBleUUID:v3];
}

void sub_1000A9B20(uint64_t a1)
{
  if (a1)
  {
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
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to update BLE data for endpoint %@", v3, 0xCu);
      sub_100075768(v4, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100099870(2);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Endpoint updated with BLE UUID", v7, 2u);
    }
  }
}

uint64_t sub_1000A9CF4(uint64_t a1, unint64_t a2)
{
  v96 = a1;
  v3 = 0;
  v4 = type metadata accessor for Logger();
  v79 = *(v4 - 8);
  __chkstk_darwin(v4);
  v78 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v97 = *(v6 - 8);
  __chkstk_darwin(v6);
  v75[0] = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v75 - v9;
  __chkstk_darwin(v11);
  v13 = v75 - v12;
  __chkstk_darwin(v14);
  v93 = v75 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v18.n128_f64[0] = __chkstk_darwin(v16);
  v20 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v21;
  if (qword_100501D90 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v22 = qword_10051B7F0;
    *v20 = qword_10051B7F0;
    v23 = *(v17 + 104);
    v87 = enum case for DispatchPredicate.onQueue(_:);
    v24 = v17;
    v85 = v23;
    v86 = v17 + 104;
    v23(v20, v18);
    v84 = v22;
    v25 = _dispatchPreconditionTest(_:)();
    v26 = *(v24 + 8);
    v88 = v20;
    v89 = v24 + 8;
    v83 = v26;
    v26(v20, v16);
    if (v25)
    {
      v82 = v10;
      v20 = v6;
      v91 = a2;
      v16 = v96;
      v27 = *(v96 + 32);
      v28 = v27 & 0x3F;
      v10 = ((1 << v27) + 63) >> 6;
      v25 = 8 * v10;

      v92 = v13;
      if (v28 <= 0xD)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
LABEL_4:
      v76 = v10;
      v77 = v4;
      v75[1] = v75;
      __chkstk_darwin(isStackAllocationSafe);
      v80 = v75 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v80, v25);
      v81 = 0;
      v10 = 0;
      v4 = v16 + 56;
      v30 = 1 << *(v16 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v13 = v31 & *(v16 + 56);
      v32 = (v30 + 63) >> 6;
      v94 = (v97 + 8);
      v95 = v97 + 16;
      v6 = v20;
      v20 = v93;
      while (v13)
      {
        v33 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_14:
        v36 = v33 | (v10 << 6);
        v37 = *(v16 + 48);
        v38 = *(v97 + 72);
        v93 = v36;
        v39 = (*(v97 + 16))(v20, v37 + v38 * v36, v6);
        __chkstk_darwin(v39);
        v75[-2] = v20;
        if (qword_100501D78 != -1)
        {
          v40 = swift_once();
        }

        __chkstk_darwin(v40);
        v75[-2] = sub_1000B3510;
        v75[-1] = &v75[-4];
        v42 = *(v41 + 24);
        __chkstk_darwin(v43);
        v75[-2] = sub_100078968;
        v75[-1] = v44;
        os_unfair_lock_lock(v42 + 8);
        sub_1000B3514(&v42[4], v98);
        os_unfair_lock_unlock(v42 + 8);
        a2 = v98[0];
        (*v94)(v20, v6);
        v16 = v96;
        if ((a2 & 1) == 0)
        {
          *&v80[(v93 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v93;
          if (__OFADD__(v81++, 1))
          {
            __break(1u);
          }
        }
      }

      v34 = v10;
      while (1)
      {
        v10 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v10 >= v32)
        {
          v20 = sub_10024ACE0(v80, v76, v81, v16);
          v4 = v77;
          goto LABEL_21;
        }

        v35 = *(v4 + 8 * v10);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v13 = (v35 - 1) & v35;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

    v73 = swift_slowAlloc();
    v74 = sub_1000AFE40(v73, v10, v16, sub_1000AA884);

    v6 = v20;
    v20 = v74;
LABEL_21:
    v46 = v79;
    v13 = v78;
    if (!*(v20 + 2))
    {
      break;
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    (v46[2])(v13, qword_10051B5A0 + OBJC_IVAR____TtC10seserviced6Alisha_logger, v4);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = *(v20 + 2);

      _os_log_impl(&_mh_execute_header, v47, v48, "Unpairing %ld unknown paired peers", v49, 0xCu);
    }

    else
    {
    }

    v46[1](v13, v4);
    a2 = (v20 + 56);
    v54 = 1 << v20[32];
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v13 = v55 & *(v20 + 7);
    v78 = OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers;
    v56 = ((v54 + 63) >> 6);
    v95 = 0x80000001004607F0;
    v96 = v97 + 16;
    v94 = (v97 + 32);
    v79 = (v97 + 8);

    v57 = 0;
    v81 = v20 + 56;
    v80 = v56;
    v93 = v20;
    while (v13)
    {
      v10 = v57;
      v4 = v92;
LABEL_43:
      v58 = *(v97 + 16);
      v58(v4, *(v20 + 6) + *(v97 + 72) * (__clz(__rbit64(v13)) | (v10 << 6)), v6);
      v59 = v88;
      v61 = v84;
      v60 = v85;
      *v88 = v84;
      a2 = v90;
      v60(v59, v87, v90);
      v62 = v61;
      LOBYTE(v61) = _dispatchPreconditionTest(_:)();
      v83(v59, a2);
      if ((v61 & 1) == 0)
      {
        goto LABEL_52;
      }

      if (qword_100501968 != -1)
      {
        swift_once();
      }

      v13 &= v13 - 1;
      v63 = v82;
      v58(v82, v4, v6);
      type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
      v64 = swift_allocObject();
      (*v94)(v64 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v63, v6);
      v65 = (v64 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
      *v65 = 0xD000000000000011;
      v65[1] = v95;
      v66 = (v64 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
      v67 = v4;
      v68 = v6;
      v69 = v91;
      *v66 = sub_1000B3FA0;
      v66[1] = v69;

      sub_1000E82EC(v64);
      if (v3)
      {
        (*v79)(v67, v68);

        v3 = 0;
      }

      else
      {

        v70 = v75[0];
        v58(v75[0], v67, v68);
        swift_beginAccess();
        sub_1000D6D84(v63, v70);
        swift_endAccess();
        v71 = *v79;
        (*v79)(v63, v68);
        v71(v67, v68);
      }

      v57 = v10;
      v6 = v68;
      v20 = v93;
      a2 = v81;
      v56 = v80;
    }

    v4 = v92;
    while (1)
    {
      v10 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v10 >= v56)
      {
      }

      v13 = *(a2 + 8 * v10);
      ++v57;
      if (v13)
      {
        goto LABEL_43;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v72 = v17;
    swift_once();
    v17 = v72;
    v16 = v90;
  }

  v50 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
  v51 = v91;
  swift_beginAccess();
  a2 = *(v51 + v50);
  v3 = *(a2 + 16);

  if (v3)
  {
    v6 = 0;
    v10 = a2 + 40;
    while (v6 < *(a2 + 16))
    {
      ++v6;
      v13 = *(v10 - 8);

      (v13)(v52);

      v10 += 16;
      if (v3 == v6)
      {
      }
    }

    goto LABEL_51;
  }
}

void sub_1000AA884(uint64_t a1)
{
  if (qword_100501D78 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  v3 = *(v2 + 24);
  __chkstk_darwin(v4);
  os_unfair_lock_lock(v3 + 8);
  sub_1000B3FC0(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 8);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1000AA9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, int64_t a9@<X8>, char a10, uint64_t a11, int64_t a12, uint64_t a13)
{
  v13 = a6;
  v15 = a4;
  v16 = a3;
  v19 = a12;
  v20 = a13;
  v21 = a11;
  v22 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_17;
  }

  v176 = a13;
  if (!v22)
  {
    v188[0] = a3;
    LOWORD(v188[1]) = a4;
    BYTE2(v188[1]) = BYTE2(a4);
    BYTE3(v188[1]) = BYTE3(a4);
    BYTE4(v188[1]) = BYTE4(a4);
    v22 = a6 >> 62;
    BYTE5(v188[1]) = BYTE5(a4);
    if ((a6 >> 62) > 1)
    {
      goto LABEL_44;
    }

    if (v22)
    {
      v174 = a9;
      v52 = a3;
      if (a5 > a5 >> 32)
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v183 = a12;
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      v63 = __DataStorage._bytes.getter();
      if (v63)
      {
        v64 = v63;
        v65 = __DataStorage._offset.getter();
        if (__OFSUB__(a5, v65))
        {
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        v66 = a5 - v65 + v64;
        goto LABEL_132;
      }

LABEL_131:
      v66 = 0;
LABEL_132:
      v25 = v52;
      __DataStorage._length.getter();
      v103 = *a7;
      v104 = a7[1];
      v105 = v104 >> 62;
      v173 = v66;
      if ((v104 >> 62) > 1)
      {
        goto LABEL_144;
      }

      v106 = v183;
      v107 = a11;
      if (v105)
      {
        v127 = *a7;
        sub_100069E2C(a11, v183);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v183);
        sub_100069E2C(v25, v15);
        v109 = v104 & 0x3FFFFFFFFFFFFFFFLL;
        sub_100069E2C(a11, v183);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        sub_100069E2C(v127, v104);
        sub_10006A178(v127, v104);
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        a9 = v127;
        v168 = v127;
        v128 = v127 >> 32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v128 < a9)
          {
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
          {
            goto LABEL_219;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v129 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v109 = v129;
        }

        if (v128 < a9)
        {
          goto LABEL_202;
        }

        sub_100069E2C(a11, v183);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);

        v23 = v109;
        v28 = __DataStorage._bytes.getter();
        v52 = v173;
        if (!v28)
        {
          goto LABEL_235;
        }

        v112 = v28;
        v104 = v109;
        v130 = __DataStorage._offset.getter();
        v105 = a9 - v130;
        if (!__OFSUB__(a9, v130))
        {
          goto LABEL_177;
        }

        __break(1u);
LABEL_144:
        v114 = v183;
        a9 = a11;
        if (v105 != 2)
        {
          goto LABEL_157;
        }

        v131 = v103;
        sub_100069E2C(a11, v183);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v183);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a11, v183);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        sub_100069E2C(v131, v104);
        sub_10006A178(v131, v104);
        *&v187 = v131;
        *(&v187 + 1) = v104 & 0x3FFFFFFFFFFFFFFFLL;
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        Data.LargeSlice.ensureUniqueReference()();
        v23 = *(&v187 + 1);
        v169 = v187;
        v132 = *(v187 + 16);
        sub_100069E2C(a11, v183);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v117 = v28;
          v133 = __DataStorage._offset.getter();
          v119 = v132 - v133;
          if (!__OFSUB__(v132, v133))
          {
            goto LABEL_156;
          }

          __break(1u);
          goto LABEL_149;
        }

LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
        goto LABEL_236;
      }

LABEL_152:
      v135 = v103 >> 8;
      v158 = v103 >> 16;
      v159 = v103 >> 24;
      v160 = HIDWORD(v103);
      v161 = v103 >> 40;
      v162 = HIWORD(v103);
      v163 = HIBYTE(v103);
      v136 = v103;
      v137 = v106;
      sub_100069E2C(v107, v106);
      sub_100069E2C(v25, v15);
      sub_100069E2C(a5, v13);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v107, v137);
      sub_100069E2C(v25, v15);
      sub_100069E2C(v107, v137);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v25, v15);
      sub_10006A178(v136, v104);
      LOBYTE(v187) = v136;
      BYTE1(v187) = v135;
      BYTE2(v187) = v158;
      BYTE3(v187) = v159;
      BYTE4(v187) = v160;
      BYTE5(v187) = v161;
      BYTE6(v187) = v162;
      BYTE7(v187) = v163;
      WORD4(v187) = v104;
      BYTE10(v187) = BYTE2(v104);
      BYTE11(v187) = BYTE3(v104);
      BYTE12(v187) = BYTE4(v104);
      BYTE13(v187) = BYTE5(v104);
      BYTE14(v187) = BYTE6(v104);
      sub_100069E2C(v107, v137);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v25, v15);
      v180 = sub_1000B089C(a8, a10 & 1, v25, v15, v188, a5, v13, v173, v107, v137, a1, &v187, v176);
      sub_10006A178(v107, v137);
      sub_10006A178(a5, v13);
      sub_10006A178(v25, v15);
      v138 = v187;
      v139 = DWORD2(v187) | ((WORD6(v187) | (BYTE14(v187) << 16)) << 32);
      sub_10006A178(v25, v15);
      sub_10006A178(a5, v13);
      sub_10006A178(v107, v137);
      sub_10006A178(v25, v15);
      *a7 = v138;
      a7[1] = v139;
      sub_10006A178(a5, v13);
      sub_10006A178(v107, v137);
      sub_10006A178(v107, v137);
      sub_10006A178(a5, v13);
      sub_10006A178(v25, v15);
      v140 = v107;
LABEL_178:
      v146 = v137;
      goto LABEL_179;
    }

    v186[0] = a5;
    LOWORD(v186[1]) = a6;
    BYTE2(v186[1]) = BYTE2(a6);
    BYTE3(v186[1]) = BYTE3(a6);
    BYTE4(v186[1]) = BYTE4(a6);
    a2 = *a7;
    v23 = a7[1];
    v24 = v23 >> 62;
    BYTE5(v186[1]) = BYTE5(a6);
    if ((v23 >> 62) > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_94;
      }

      v175 = a9;
      v25 = a12;
      sub_100069E2C(a5, a6);
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      sub_100069E2C(a11, a12);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a2, v23);
      sub_10006A178(a2, v23);
      *&v187 = a2;
      *(&v187 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
      *a7 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v23 = *(&v187 + 1);
      v79 = v16;
      v184 = v187;
      v16 = *(v187 + 16);
      a9 = a12;
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      v80 = v15;
      v15 = v79;
      a2 = v80;
      sub_100069E2C(v79, v80);
      v28 = __DataStorage._bytes.getter();
      if (!v28)
      {
        __break(1u);
        goto LABEL_222;
      }

      v81 = v28;
      v82 = __DataStorage._offset.getter();
      v47 = v16 - v82;
      if (!__OFSUB__(v16, v82))
      {
        goto LABEL_93;
      }

      __break(1u);
LABEL_80:
      if (v47 != 2)
      {
        goto LABEL_94;
      }

      v175 = a9;
      v83 = v21;
      v25 = v19;
      sub_100069E2C(a5, v13);
      sub_100069E2C(v83, v25);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v83, v25);
      sub_100069E2C(v16, v15);
      sub_100069E2C(v83, v25);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a2, v23);
      sub_10006A178(a2, v23);
      *&v187 = a2;
      *(&v187 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
      *a7 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v23 = *(&v187 + 1);
      v84 = v16;
      v184 = v187;
      v16 = *(v187 + 16);
      v85 = v83;
      a9 = v25;
      sub_100069E2C(v85, v25);
      sub_100069E2C(a5, v13);
      v86 = v15;
      v15 = v84;
      a2 = v86;
      sub_100069E2C(v84, v86);
      v28 = __DataStorage._bytes.getter();
      if (v28)
      {
        v81 = v28;
        v87 = __DataStorage._offset.getter();
        v47 = v16 - v87;
        if (!__OFSUB__(v16, v87))
        {
          goto LABEL_93;
        }

        __break(1u);
LABEL_85:
        if (v47 != 2)
        {
          goto LABEL_94;
        }

        v175 = a9;
        v88 = v21;
        v25 = v19;
        sub_100069E2C(a5, v13);
        sub_100069E2C(v88, v25);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v88, v25);
        sub_100069E2C(v16, v15);
        sub_100069E2C(v88, v25);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v16, v15);
        sub_100069E2C(a2, v23);
        sub_10006A178(a2, v23);
        *&v187 = a2;
        *(&v187 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        Data.LargeSlice.ensureUniqueReference()();
        v23 = *(&v187 + 1);
        v89 = v16;
        v184 = v187;
        v16 = *(v187 + 16);
        v90 = v88;
        a9 = v25;
        sub_100069E2C(v90, v25);
        sub_100069E2C(a5, v13);
        v91 = v15;
        v15 = v89;
        a2 = v91;
        sub_100069E2C(v89, v91);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v81 = v28;
          v92 = __DataStorage._offset.getter();
          v47 = v16 - v92;
          if (!__OFSUB__(v16, v92))
          {
            goto LABEL_93;
          }

          __break(1u);
LABEL_90:
          if (v47 == 2)
          {
            v175 = a9;
            v93 = v21;
            v25 = v19;
            sub_100069E2C(a5, v13);
            sub_100069E2C(v93, v25);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v93, v25);
            sub_100069E2C(v16, v15);
            sub_100069E2C(v93, v25);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v16, v15);
            sub_100069E2C(a2, v23);
            sub_10006A178(a2, v23);
            *&v187 = a2;
            *(&v187 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
            *a7 = xmmword_1004098D0;
            sub_10006A178(0, 0xC000000000000000);
            Data.LargeSlice.ensureUniqueReference()();
            v23 = *(&v187 + 1);
            v94 = v16;
            v184 = v187;
            v95 = *(v187 + 16);
            v96 = v93;
            a9 = v25;
            sub_100069E2C(v96, v25);
            sub_100069E2C(a5, v13);
            v97 = v15;
            v15 = v94;
            a2 = v97;
            sub_100069E2C(v94, v97);
            v28 = __DataStorage._bytes.getter();
            if (v28)
            {
              v81 = v28;
              v98 = __DataStorage._offset.getter();
              v47 = v95 - v98;
              if (__OFSUB__(v95, v98))
              {
LABEL_193:
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
                goto LABEL_200;
              }

LABEL_93:
              v99 = v47 + v81;
              __DataStorage._length.getter();
              sub_100069E2C(a11, a9);
              sub_100069E2C(a5, v13);
              v16 = v15;
              v100 = v15;
              v15 = a2;
              sub_100069E2C(v100, a2);
              v180 = sub_1000B089C(a8, a10 & 1, v16, a2, v188, a5, v13, v186, a11, a9, a1, v99, v176);
              sub_10006A178(a11, a9);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, a2);
              sub_10006A178(a11, a9);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, a2);
              sub_10006A178(v16, a2);
              sub_10006A178(a5, v13);
              sub_10006A178(a11, a9);
              sub_10006A178(v16, a2);
              *a7 = v184;
              a7[1] = v23 | 0x8000000000000000;
              sub_10006A178(a5, v13);
              sub_10006A178(a11, a9);
              sub_10006A178(a11, a9);
              a9 = v175;
LABEL_168:
              sub_10006A178(a5, v13);
              result = sub_10006A178(v16, v15);
              goto LABEL_182;
            }

LABEL_224:
            __break(1u);
            goto LABEL_225;
          }

LABEL_94:
          *(&v187 + 7) = 0;
          *&v187 = 0;
          v101 = v21;
          v102 = v19;
          sub_100069E2C(v21, v19);
          sub_100069E2C(a5, v13);
          v180 = sub_1000B089C(a8, a10 & 1, v16, v15, v188, a5, v13, v186, v101, v102, a1, &v187, v176);
          v77 = v101;
          v78 = v102;
          goto LABEL_167;
        }

LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v181 = a12;
    if (!v24)
    {
      goto LABEL_74;
    }

    sub_100069E2C(a5, a6);
    v25 = a2;
    sub_100069E2C(a11, a12);
    sub_100069E2C(a5, v13);
    sub_100069E2C(a11, a12);
    sub_100069E2C(v16, v15);
    sub_100069E2C(a11, a12);
    sub_100069E2C(a5, v13);
    sub_100069E2C(v16, v15);
    sub_100069E2C(a2, v23);
    sub_10006A178(a2, v23);
    *a7 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    v23 &= 0x3FFFFFFFFFFFFFFFuLL;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = a2;
    v170 = v25;
    v27 = v25 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v165 = v25 >> 32;
      if (v27 < v25)
      {
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      v25 = v23;

      if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
      {
        goto LABEL_213;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v27 = v165;
    }

    if (v27 < a2)
    {
      goto LABEL_194;
    }

    sub_100069E2C(a11, a12);
    sub_100069E2C(a5, v13);
    sub_100069E2C(v16, v15);

    v28 = __DataStorage._bytes.getter();
    if (!v28)
    {
      goto LABEL_229;
    }

    v30 = v28;
    v31 = __DataStorage._offset.getter();
    v22 = a2 - v31;
    if (!__OFSUB__(a2, v31))
    {
      goto LABEL_166;
    }

    __break(1u);
LABEL_17:
    if (v22 == 2)
    {
      v32 = a5;
      v33 = v20;
      v174 = a9;
      v34 = v16;
      v35 = *(v16 + 16);
      v36 = *(v34 + 24);
      v182 = v19;
      sub_100069E2C(v21, v19);
      v164 = v32;
      v171 = v13;
      sub_100069E2C(v32, v13);
      v166 = v34;
      sub_100069E2C(v34, v15);
      v37 = __DataStorage._bytes.getter();
      a9 = v15;
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v35, v38))
        {
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        v37 += v35 - v38;
      }

      if (!__OFSUB__(v36, v35))
      {
        __DataStorage._length.getter();
        v23 = v164;
        v13 = v166;
        v25 = v171;
        sub_1000AD1F4(v37, v164, v171, a7, a8, a10 & 1, v166, &v187, v15, a11, v182, a1, a2, v33);
        v28 = a11;
        v29 = v182;
        if (!v177)
        {
          sub_10006A178(a11, v182);
          sub_10006A178(v166, v15);
          result = sub_10006A178(v164, v171);
          v180 = v187;
LABEL_181:
          a9 = v174;
          goto LABEL_182;
        }

        goto LABEL_237;
      }

LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v46 = v13 >> 62;
    memset(v188, 0, 14);
    v176 = v20;
    if ((v13 >> 62) > 1)
    {
      if (v46 == 2)
      {
        v174 = a9;
        v52 = v16;
        v58 = *(a5 + 16);
        v183 = v19;
        sub_100069E2C(v21, v19);
        sub_100069E2C(a5, v13);
        v59 = __DataStorage._bytes.getter();
        if (v59)
        {
          v60 = v59;
          v61 = __DataStorage._offset.getter();
          if (__OFSUB__(v58, v61))
          {
LABEL_190:
            __break(1u);
            goto LABEL_191;
          }

          v62 = v58 - v61 + v60;
LABEL_114:
          v25 = v52;
          __DataStorage._length.getter();
          v103 = *a7;
          v104 = a7[1];
          v105 = v104 >> 62;
          v173 = v62;
          if ((v104 >> 62) <= 1)
          {
            v106 = v183;
            v107 = a11;
            if (!v105)
            {
              goto LABEL_152;
            }

            v120 = *a7;
            sub_100069E2C(a11, v183);
            sub_100069E2C(v25, v15);
            sub_100069E2C(a5, v13);
            sub_100069E2C(a5, v13);
            sub_100069E2C(a11, v183);
            sub_100069E2C(v25, v15);
            v109 = v104 & 0x3FFFFFFFFFFFFFFFLL;
            sub_100069E2C(a11, v183);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v25, v15);
            sub_100069E2C(v120, v104);
            sub_10006A178(v120, v104);
            *a7 = xmmword_1004098D0;
            sub_10006A178(0, 0xC000000000000000);
            a9 = v120;
            v168 = v120;
            v121 = v120 >> 32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              if (v121 < a9)
              {
LABEL_210:
                __break(1u);
                goto LABEL_211;
              }

              if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
              {
                goto LABEL_218;
              }

              type metadata accessor for __DataStorage();
              swift_allocObject();
              v122 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

              v109 = v122;
            }

            if (v121 < a9)
            {
              goto LABEL_199;
            }

            sub_100069E2C(a11, v183);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v25, v15);

            v23 = v109;
            v28 = __DataStorage._bytes.getter();
            v52 = v173;
            if (!v28)
            {
              goto LABEL_234;
            }

            v112 = v28;
            v104 = v109;
            v123 = __DataStorage._offset.getter();
            v105 = a9 - v123;
            if (!__OFSUB__(a9, v123))
            {
              goto LABEL_177;
            }

            __break(1u);
          }

          v114 = v183;
          a9 = a11;
          if (v105 != 2)
          {
            goto LABEL_157;
          }

          v124 = v103;
          sub_100069E2C(a11, v183);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v183);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          sub_100069E2C(v124, v104);
          sub_10006A178(v124, v104);
          *&v187 = v124;
          *(&v187 + 1) = v104 & 0x3FFFFFFFFFFFFFFFLL;
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          Data.LargeSlice.ensureUniqueReference()();
          v23 = *(&v187 + 1);
          v169 = v187;
          v125 = *(v187 + 16);
          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          v28 = __DataStorage._bytes.getter();
          if (v28)
          {
            v117 = v28;
            v126 = __DataStorage._offset.getter();
            v119 = v125 - v126;
            if (!__OFSUB__(v125, v126))
            {
              goto LABEL_156;
            }

            __break(1u);
            goto LABEL_131;
          }

LABEL_226:
          __break(1u);
          goto LABEL_227;
        }

LABEL_113:
        v62 = 0;
        goto LABEL_114;
      }

LABEL_72:
      memset(v186, 0, 14);
      a2 = *a7;
      v23 = a7[1];
      v47 = v23 >> 62;
      if ((v23 >> 62) <= 1)
      {
        v181 = v19;
        if (v47)
        {
          sub_100069E2C(a5, v13);
          v25 = a2;
          sub_100069E2C(a11, v181);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v181);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a11, v181);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a2, v23);
          sub_10006A178(a2, v23);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          v23 &= 0x3FFFFFFFFFFFFFFFuLL;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          v170 = a2;
          v148 = a2 >> 32;
          if ((v147 & 1) == 0)
          {
            if (v148 < a2)
            {
LABEL_208:
              __break(1u);
              goto LABEL_209;
            }

            v25 = v23;

            if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
            {
              goto LABEL_216;
            }

            type metadata accessor for __DataStorage();
            swift_allocObject();
            v149 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v23 = v149;
            v148 = a2 >> 32;
          }

          if (v148 < a2)
          {
            goto LABEL_197;
          }

          sub_100069E2C(a11, v181);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);

          v28 = __DataStorage._bytes.getter();
          if (v28)
          {
            v30 = v28;
            v150 = __DataStorage._offset.getter();
            v22 = a2 - v150;
            if (!__OFSUB__(a2, v150))
            {
LABEL_166:
              v151 = v22 + v30;
              __DataStorage._length.getter();
              sub_100069E2C(a11, v181);
              sub_100069E2C(a5, v13);
              sub_100069E2C(v16, v15);
              v180 = sub_1000B089C(a8, a10 & 1, v16, v15, v188, a5, v13, v186, a11, v181, a1, v151, v176);
              sub_10006A178(a11, v181);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, v15);
              sub_10006A178(a11, v181);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, v15);

              sub_10006A178(v16, v15);
              sub_10006A178(a5, v13);
              sub_10006A178(a11, v181);
              sub_10006A178(v16, v15);
              *a7 = v170;
              a7[1] = v23 | 0x4000000000000000;
              sub_10006A178(a5, v13);
              sub_10006A178(a11, v181);
              v77 = a11;
              v78 = v181;
              goto LABEL_167;
            }

            goto LABEL_201;
          }

          goto LABEL_232;
        }

        goto LABEL_74;
      }

      goto LABEL_90;
    }

    if (v46)
    {
      v174 = a9;
      v52 = v16;
      if (a5 > a5 >> 32)
      {
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v183 = v19;
      sub_100069E2C(v21, v19);
      sub_100069E2C(a5, v13);
      v67 = __DataStorage._bytes.getter();
      if (v67)
      {
        v68 = v67;
        v69 = __DataStorage._offset.getter();
        if (__OFSUB__(a5, v69))
        {
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v70 = a5 - v69 + v68;
LABEL_150:
        v25 = v52;
        __DataStorage._length.getter();
        v103 = *a7;
        v104 = a7[1];
        v134 = v104 >> 62;
        v173 = v70;
        if ((v104 >> 62) <= 1)
        {
          v106 = v183;
          v107 = a11;
          if (!v134)
          {
            goto LABEL_152;
          }

          v152 = *a7;
          sub_100069E2C(a11, v183);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v183);
          sub_100069E2C(v25, v15);
          v109 = v104 & 0x3FFFFFFFFFFFFFFFLL;
          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          sub_100069E2C(v152, v104);
          sub_10006A178(v152, v104);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          a9 = v152;
          v168 = v152;
          v153 = v152 >> 32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v153 < a9)
            {
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
              goto LABEL_220;
            }

            if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
            {
LABEL_220:
              __break(1u);
            }

            type metadata accessor for __DataStorage();
            swift_allocObject();
            v154 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v109 = v154;
          }

          if (v153 < a9)
          {
            goto LABEL_203;
          }

          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);

          v23 = v109;
          v28 = __DataStorage._bytes.getter();
          v52 = v173;
          if (v28)
          {
            v112 = v28;
            v155 = __DataStorage._offset.getter();
            v105 = a9 - v155;
            if (__OFSUB__(a9, v155))
            {
LABEL_204:
              __break(1u);
              goto LABEL_205;
            }

            goto LABEL_177;
          }

LABEL_236:
          __break(1u);
LABEL_237:
          sub_10006A178(v28, v29);
          sub_10006A178(v13, a9);
          v157 = v23;
          goto LABEL_239;
        }

        v114 = v183;
        a9 = a11;
        if (v134 == 2)
        {
          v141 = *a7;
          sub_100069E2C(a11, v183);
          sub_100069E2C(v52, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v183);
          sub_100069E2C(v52, v15);
          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v52, v15);
          sub_100069E2C(v141, v104);
          sub_10006A178(v141, v104);
          *&v187 = v141;
          *(&v187 + 1) = v104 & 0x3FFFFFFFFFFFFFFFLL;
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          Data.LargeSlice.ensureUniqueReference()();
          v23 = *(&v187 + 1);
          v169 = v187;
          v142 = *(v187 + 16);
          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v52, v15);
          v28 = __DataStorage._bytes.getter();
          if (v28)
          {
            v117 = v28;
            v143 = __DataStorage._offset.getter();
            v119 = v142 - v143;
            if (__OFSUB__(v142, v143))
            {
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
              goto LABEL_204;
            }

            goto LABEL_156;
          }

          goto LABEL_228;
        }

LABEL_157:
        *(&v187 + 7) = 0;
        *&v187 = 0;
        sub_100069E2C(a9, v114);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        v180 = sub_1000B089C(a8, a10 & 1, v25, v15, v188, a5, v13, v173, a9, v114, a1, &v187, v176);
        sub_10006A178(a9, v114);
        sub_10006A178(a5, v13);
        sub_10006A178(v25, v15);
        v140 = a9;
        v146 = v114;
LABEL_179:
        sub_10006A178(v140, v146);
        sub_10006A178(a5, v13);
        v145 = v25;
        goto LABEL_180;
      }

LABEL_149:
      v70 = 0;
      goto LABEL_150;
    }

    v186[0] = a5;
    LOWORD(v186[1]) = v13;
    BYTE2(v186[1]) = BYTE2(v13);
    BYTE3(v186[1]) = BYTE3(v13);
    BYTE4(v186[1]) = BYTE4(v13);
    a2 = *a7;
    v23 = a7[1];
    v47 = v23 >> 62;
    BYTE5(v186[1]) = BYTE5(v13);
    if ((v23 >> 62) <= 1)
    {
      v181 = v19;
      if (!v47)
      {
        goto LABEL_74;
      }

      sub_100069E2C(a5, v13);
      v25 = a2;
      sub_100069E2C(a11, v181);
      sub_100069E2C(a5, v13);
      sub_100069E2C(a11, v181);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a11, v181);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a2, v23);
      sub_10006A178(a2, v23);
      *a7 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      v23 &= 0x3FFFFFFFFFFFFFFFuLL;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v170 = a2;
      v49 = a2 >> 32;
      if ((v48 & 1) == 0)
      {
        if (v49 < a2)
        {
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        v25 = v23;

        if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
        {
          goto LABEL_214;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v50 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v23 = v50;
        v49 = a2 >> 32;
      }

      if (v49 < a2)
      {
        goto LABEL_195;
      }

      sub_100069E2C(a11, v181);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);

      v28 = __DataStorage._bytes.getter();
      if (!v28)
      {
        goto LABEL_230;
      }

      v30 = v28;
      v51 = __DataStorage._offset.getter();
      v22 = a2 - v51;
      if (!__OFSUB__(a2, v51))
      {
        goto LABEL_166;
      }

      __break(1u);
LABEL_44:
      if (v22 == 2)
      {
        v174 = a9;
        v52 = v16;
        v53 = *(a5 + 16);
        v183 = v19;
        sub_100069E2C(v21, v19);
        sub_100069E2C(a5, v13);
        v54 = __DataStorage._bytes.getter();
        if (v54)
        {
          v55 = v54;
          v56 = __DataStorage._offset.getter();
          if (__OFSUB__(v53, v56))
          {
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          v57 = v53 - v56 + v55;
        }

        else
        {
          v57 = 0;
        }

        v25 = v52;
        __DataStorage._length.getter();
        v103 = *a7;
        v104 = a7[1];
        v105 = v104 >> 62;
        v173 = v57;
        if ((v104 >> 62) <= 1)
        {
          v106 = v183;
          v107 = a11;
          if (!v105)
          {
            goto LABEL_152;
          }

          v108 = *a7;
          sub_100069E2C(a11, v183);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v183);
          sub_100069E2C(v25, v15);
          v109 = v104 & 0x3FFFFFFFFFFFFFFFLL;
          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          sub_100069E2C(v108, v104);
          sub_10006A178(v108, v104);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          a9 = v108;
          v168 = v108;
          v110 = v108 >> 32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v110 < a9)
            {
LABEL_209:
              __break(1u);
              goto LABEL_210;
            }

            if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
            {
              goto LABEL_217;
            }

            type metadata accessor for __DataStorage();
            swift_allocObject();
            v111 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v109 = v111;
          }

          if (v110 < a9)
          {
            goto LABEL_198;
          }

          sub_100069E2C(a11, v183);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);

          v23 = v109;
          v28 = __DataStorage._bytes.getter();
          v52 = v173;
          if (!v28)
          {
            goto LABEL_233;
          }

          v112 = v28;
          v104 = v109;
          v113 = __DataStorage._offset.getter();
          v105 = a9 - v113;
          if (!__OFSUB__(a9, v113))
          {
LABEL_177:
            v156 = v105 + v112;
            __DataStorage._length.getter();
            v137 = v183;
            sub_100069E2C(a11, v183);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v25, v15);
            v180 = sub_1000B089C(a8, a10 & 1, v25, v15, v188, a5, v13, v52, a11, v183, a1, v156, v176);
            sub_10006A178(a11, v183);
            sub_10006A178(a5, v13);
            sub_10006A178(v25, v15);
            sub_10006A178(a11, v183);
            sub_10006A178(a5, v13);
            sub_10006A178(v25, v15);

            sub_10006A178(v25, v15);
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v183);
            sub_10006A178(v25, v15);
            *a7 = v168;
            a7[1] = v109 | 0x4000000000000000;
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v183);
            sub_10006A178(a11, v183);
            sub_10006A178(a5, v13);
            sub_10006A178(v25, v15);
            v140 = a11;
            goto LABEL_178;
          }

          __break(1u);
        }

        v114 = v183;
        a9 = a11;
        if (v105 != 2)
        {
          goto LABEL_157;
        }

        v115 = v103;
        sub_100069E2C(a11, v183);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v183);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a11, v183);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        sub_100069E2C(v115, v104);
        sub_10006A178(v115, v104);
        *&v187 = v115;
        *(&v187 + 1) = v104 & 0x3FFFFFFFFFFFFFFFLL;
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        Data.LargeSlice.ensureUniqueReference()();
        v23 = *(&v187 + 1);
        v169 = v187;
        v116 = *(v187 + 16);
        sub_100069E2C(a11, v183);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v117 = v28;
          v118 = __DataStorage._offset.getter();
          v119 = v116 - v118;
          if (!__OFSUB__(v116, v118))
          {
LABEL_156:
            v144 = v119 + v117;
            __DataStorage._length.getter();
            sub_100069E2C(a11, v183);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v52, v15);
            v180 = sub_1000B089C(a8, a10 & 1, v52, v15, v188, a5, v13, v173, a11, v183, a1, v144, v176);
            sub_10006A178(a11, v183);
            sub_10006A178(a5, v13);
            sub_10006A178(v52, v15);
            sub_10006A178(a11, v183);
            sub_10006A178(a5, v13);
            sub_10006A178(v52, v15);
            sub_10006A178(v52, v15);
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v183);
            sub_10006A178(v52, v15);
            *a7 = v169;
            a7[1] = v23 | 0x8000000000000000;
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v183);
            sub_10006A178(a11, v183);
            sub_10006A178(a5, v13);
            sub_10006A178(v52, v15);
            sub_10006A178(a11, v183);
            sub_10006A178(a5, v13);
            v145 = v52;
LABEL_180:
            result = sub_10006A178(v145, v15);
            goto LABEL_181;
          }

          __break(1u);
          goto LABEL_113;
        }

LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      memset(v186, 0, 14);
      a2 = *a7;
      v23 = a7[1];
      v47 = v23 >> 62;
      if ((v23 >> 62) <= 1)
      {
        v181 = v19;
        if (v47)
        {
          sub_100069E2C(a5, v13);
          v25 = a2;
          sub_100069E2C(a11, v181);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v181);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a11, v181);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a2, v23);
          sub_10006A178(a2, v23);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          v23 &= 0x3FFFFFFFFFFFFFFFuLL;
          v71 = swift_isUniquelyReferenced_nonNull_native();
          v170 = a2;
          v72 = a2 >> 32;
          if ((v71 & 1) == 0)
          {
            if (v72 < a2)
            {
LABEL_207:
              __break(1u);
              goto LABEL_208;
            }

            v25 = v23;

            if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
            {
              goto LABEL_215;
            }

            type metadata accessor for __DataStorage();
            swift_allocObject();
            v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v72 = a2 >> 32;
          }

          if (v72 < a2)
          {
            goto LABEL_196;
          }

          sub_100069E2C(a11, v181);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);

          v28 = __DataStorage._bytes.getter();
          if (!v28)
          {
            goto LABEL_231;
          }

          v30 = v28;
          v73 = __DataStorage._offset.getter();
          v22 = a2 - v73;
          if (!__OFSUB__(a2, v73))
          {
            goto LABEL_166;
          }

          __break(1u);
          goto LABEL_72;
        }

LABEL_74:
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v181);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v181);
        sub_100069E2C(v16, v15);
        sub_100069E2C(a11, v181);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v16, v15);
        sub_10006A178(a2, v23);
        *&v187 = a2;
        WORD4(v187) = v23;
        BYTE10(v187) = BYTE2(v23);
        BYTE11(v187) = BYTE3(v23);
        BYTE12(v187) = BYTE4(v23);
        BYTE13(v187) = BYTE5(v23);
        BYTE14(v187) = BYTE6(v23);
        sub_100069E2C(a11, v181);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v16, v15);
        v180 = sub_1000B089C(a8, a10 & 1, v16, v15, v188, a5, v13, v186, a11, v181, a1, &v187, v176);
        sub_10006A178(a11, v181);
        sub_10006A178(a5, v13);
        sub_10006A178(v16, v15);
        v74 = v187;
        v75 = v16;
        v76 = DWORD2(v187) | ((WORD6(v187) | (BYTE14(v187) << 16)) << 32);
        sub_10006A178(v75, v15);
        sub_10006A178(a5, v13);
        sub_10006A178(a11, v181);
        sub_10006A178(v75, v15);
        *a7 = v74;
        a7[1] = v76;
        v16 = v75;
        sub_10006A178(a5, v13);
        sub_10006A178(a11, v181);
        v77 = a11;
        v78 = v181;
LABEL_167:
        sub_10006A178(v77, v78);
        goto LABEL_168;
      }

      goto LABEL_85;
    }

    goto LABEL_80;
  }

  v40 = a9;
  v41 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_184;
  }

  sub_100069E2C(a11, a12);
  sub_100069E2C(a5, a6);
  v167 = a3;
  sub_100069E2C(a3, v15);
  v44 = __DataStorage._bytes.getter();
  if (v44)
  {
    v45 = __DataStorage._offset.getter();
    if (__OFSUB__(v41, v45))
    {
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    v44 += v41 - v45;
  }

  a9 = v40;
  __DataStorage._length.getter();
  v25 = a6;
  sub_1000AD1F4(v44, a5, a6, a7, a8, a10 & 1, v167, &v187, v15, a11, a12, a1, a2, a13);
  if (!v177)
  {
    sub_10006A178(a11, a12);
    sub_10006A178(v167, v15);
    result = sub_10006A178(a5, a6);
    v180 = v187;
LABEL_182:
    *a9 = v180;
    return result;
  }

  sub_10006A178(a11, a12);
  sub_10006A178(v167, v15);
  v157 = a5;
LABEL_239:
  sub_10006A178(v157, v25);

  __break(1u);
  return result;
}

uint64_t sub_1000AD1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, char a6@<W6>, unint64_t a7@<X7>, _DWORD *a8@<X8>, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v98, 0, 14);
      v19 = *a4;
      v18 = a4[1];
      v33 = v18 >> 62;
      if ((v18 >> 62) <= 1)
      {
        if (v33)
        {
          sub_100069E2C(a7, a9);
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a10, a11);
          sub_100069E2C(a2, a3);
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a2, a3);
          sub_100069E2C(v19, v18);
          sub_10006A178(v19, v18);
          *a4 = xmmword_1004098D0;
          v22 = v18 & 0x3FFFFFFFFFFFFFFFLL;
          sub_10006A178(0, 0xC000000000000000);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v19;
          v70 = v19 >> 32;
          v88 = v19;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_70;
          }

          v85 = v19 >> 32;
          if (v70 < v19)
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v19, __DataStorage._offset.getter()))
          {
            goto LABEL_107;
          }

LABEL_69:
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v69 = v88;
          v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v70 = v85;
LABEL_70:
          if (v70 >= v69)
          {
            sub_100069E2C(a10, a11);
            sub_100069E2C(a7, a9);
            sub_100069E2C(a2, a3);

            result = __DataStorage._bytes.getter();
            if (result)
            {
              v74 = result;
              v77 = __DataStorage._offset.getter();
              v76 = v88 - v77;
              if (!__OFSUB__(v88, v77))
              {
LABEL_73:
                v78 = v76 + v74;
                __DataStorage._length.getter();
                sub_100069E2C(a10, a11);
                sub_100069E2C(a7, a9);
                sub_100069E2C(a2, a3);
                v94 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v98, a10, a11, a12, v78, a14);
                sub_10006A178(a10, a11);
                sub_10006A178(a2, a3);
                sub_10006A178(a7, a9);
                sub_10006A178(a10, a11);
                sub_10006A178(a2, a3);
                sub_10006A178(a7, a9);

                sub_10006A178(a7, a9);
                sub_10006A178(a2, a3);
                sub_10006A178(a10, a11);
                sub_10006A178(a7, a9);
                v43 = v22 | 0x4000000000000000;
                v44 = a4;
                *a4 = v19;
                v34 = v94;
                goto LABEL_74;
              }

              goto LABEL_99;
            }

            goto LABEL_115;
          }

          goto LABEL_96;
        }

        goto LABEL_20;
      }

      goto LABEL_26;
    }

    v26 = *(a2 + 16);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v27 = __DataStorage._bytes.getter();
    if (v27)
    {
      v28 = v27;
      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v26, v29))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v89 = v26 - v29 + v28;
    }

    else
    {
      v89 = 0;
    }

    __DataStorage._length.getter();
    v48 = *a4;
    v47 = a4[1];
    v49 = v47 >> 62;
    if ((v47 >> 62) <= 1)
    {
      if (!v49)
      {
LABEL_47:
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a2, a3);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        sub_10006A178(v48, v47);
        *&v99 = v48;
        WORD4(v99) = v47;
        BYTE10(v99) = BYTE2(v47);
        BYTE11(v99) = BYTE3(v47);
        BYTE12(v99) = BYTE4(v47);
        BYTE13(v99) = BYTE5(v47);
        BYTE14(v99) = BYTE6(v47);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v89, a10, a11, a12, &v99, a14);
        sub_10006A178(a10, a11);
        sub_10006A178(a2, a3);
        sub_10006A178(a7, a9);
        v60 = v99;
        v61 = DWORD2(v99) | ((WORD6(v99) | (BYTE14(v99) << 16)) << 32);
        sub_10006A178(a7, a9);
        sub_10006A178(a2, a3);
        sub_10006A178(a10, a11);
        sub_10006A178(a7, a9);
        *a4 = v60;
        a4[1] = v61;
LABEL_88:
        sub_10006A178(a2, a3);
        sub_10006A178(a10, a11);
        goto LABEL_89;
      }

      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(v48, v47);
      sub_10006A178(v48, v47);
      *a4 = xmmword_1004098D0;
      v50 = v47 & 0x3FFFFFFFFFFFFFFFLL;
      sub_10006A178(0, 0xC000000000000000);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v48;
      v53 = v48 >> 32;
      v86 = v48;
      if ((v51 & 1) == 0)
      {
        v84 = v48 >> 32;
        if (v53 < v48)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v48, __DataStorage._offset.getter()))
        {
          goto LABEL_108;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v52 = v48;
        v50 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v53 = v48 >> 32;
      }

      if (v53 < v52)
      {
        goto LABEL_97;
      }

      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);

      result = __DataStorage._bytes.getter();
      if (!result)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v79 = result;
      v80 = __DataStorage._offset.getter();
      v81 = v48 - v80;
      if (!__OFSUB__(v48, v80))
      {
        goto LABEL_86;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v49 != 2)
    {
      goto LABEL_52;
    }

    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a2, a3);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    sub_100069E2C(v48, v47);
    sub_10006A178(v48, v47);
    *&v99 = v48;
    *(&v99 + 1) = v47 & 0x3FFFFFFFFFFFFFFFLL;
    *a4 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v54 = *(&v99 + 1);
    v87 = v99;
    v55 = *(v99 + 16);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v56 = result;
    v57 = __DataStorage._offset.getter();
    v58 = v55 - v57;
    if (!__OFSUB__(v55, v57))
    {
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (!v17)
  {
    v98[0] = a2;
    LOWORD(v98[1]) = a3;
    BYTE2(v98[1]) = BYTE2(a3);
    BYTE3(v98[1]) = BYTE3(a3);
    BYTE4(v98[1]) = BYTE4(a3);
    v19 = *a4;
    v18 = a4[1];
    v20 = v18 >> 62;
    BYTE5(v98[1]) = BYTE5(a3);
    if ((v18 >> 62) <= 1)
    {
      if (v20)
      {
        sub_100069E2C(a7, a9);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a2, a3);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        sub_100069E2C(v19, v18);
        sub_10006A178(v19, v18);
        *a4 = xmmword_1004098D0;
        v22 = v18 & 0x3FFFFFFFFFFFFFFFLL;
        sub_10006A178(0, 0xC000000000000000);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = v19;
        v25 = v19 >> 32;
        v88 = v19;
        if ((v23 & 1) == 0)
        {
          v85 = v19 >> 32;
          if (v25 < v19)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v19, __DataStorage._offset.getter()))
          {
            goto LABEL_106;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v24 = v19;
          v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v25 = v19 >> 32;
        }

        if (v25 >= v24)
        {
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a2, a3);

          result = __DataStorage._bytes.getter();
          if (result)
          {
            v74 = result;
            v75 = __DataStorage._offset.getter();
            v76 = v19 - v75;
            if (!__OFSUB__(v19, v75))
            {
              goto LABEL_73;
            }

            __break(1u);
            goto LABEL_69;
          }

LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_20:
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_10006A178(v19, v18);
      *&v99 = v19;
      WORD4(v99) = v18;
      BYTE10(v99) = BYTE2(v18);
      BYTE11(v99) = BYTE3(v18);
      BYTE12(v99) = BYTE4(v18);
      BYTE13(v99) = BYTE5(v18);
      BYTE14(v99) = BYTE6(v18);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v98, a10, a11, a12, &v99, a14);
      sub_10006A178(a10, a11);
      sub_10006A178(a2, a3);
      sub_10006A178(a7, a9);
      v35 = v99;
      v36 = DWORD2(v99) | ((WORD6(v99) | (BYTE14(v99) << 16)) << 32);
      sub_10006A178(a7, a9);
      sub_10006A178(a2, a3);
      sub_10006A178(a10, a11);
      sub_10006A178(a7, a9);
      *a4 = v35;
      a4[1] = v36;
LABEL_75:
      sub_10006A178(a2, a3);
      v45 = a10;
      v46 = a11;
      goto LABEL_90;
    }

    if (v20 != 2)
    {
      goto LABEL_30;
    }

    sub_100069E2C(a7, a9);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a2, a3);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    sub_100069E2C(v19, v18);
    sub_10006A178(v19, v18);
    *&v99 = v19;
    *(&v99 + 1) = v18 & 0x3FFFFFFFFFFFFFFFLL;
    *a4 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v18 = *(&v99 + 1);
    v90 = v99;
    v19 = *(v99 + 16);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v38 = result;
    v39 = __DataStorage._offset.getter();
    v33 = v19 - v39;
    if (!__OFSUB__(v19, v39))
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_26:
    if (v33 == 2)
    {
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(v19, v18);
      sub_10006A178(v19, v18);
      *&v99 = v19;
      *(&v99 + 1) = v18 & 0x3FFFFFFFFFFFFFFFLL;
      *a4 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v18 = *(&v99 + 1);
      v90 = v99;
      v40 = *(v99 + 16);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      result = __DataStorage._bytes.getter();
      if (result)
      {
        v38 = result;
        v41 = __DataStorage._offset.getter();
        v33 = v40 - v41;
        if (!__OFSUB__(v40, v41))
        {
LABEL_29:
          v42 = v33 + v38;
          __DataStorage._length.getter();
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a2, a3);
          v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v98, a10, a11, a12, v42, a14);
          sub_10006A178(a10, a11);
          sub_10006A178(a2, a3);
          sub_10006A178(a7, a9);
          sub_10006A178(a10, a11);
          sub_10006A178(a2, a3);
          sub_10006A178(a7, a9);
          sub_10006A178(a7, a9);
          sub_10006A178(a2, a3);
          sub_10006A178(a10, a11);
          sub_10006A178(a7, a9);
          v43 = v18 | 0x8000000000000000;
          v44 = a4;
          *a4 = v90;
LABEL_74:
          v44[1] = v43;
          goto LABEL_75;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      goto LABEL_111;
    }

LABEL_30:
    *(&v99 + 7) = 0;
    *&v99 = 0;
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v98, a10, a11, a12, &v99, a14);
    v45 = a2;
    v46 = a3;
LABEL_90:
    sub_10006A178(v45, v46);
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    result = sub_10006A178(a7, a9);
    *a8 = v34;
    return result;
  }

  if (a2 > a2 >> 32)
  {
    __break(1u);
    goto LABEL_92;
  }

  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);
  v30 = __DataStorage._bytes.getter();
  if (v30)
  {
    v31 = v30;
    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v32))
    {
      v89 = a2 - v32 + v31;
      goto LABEL_45;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_44:
  v89 = 0;
LABEL_45:
  __DataStorage._length.getter();
  v48 = *a4;
  v47 = a4[1];
  v59 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    if (v59 == 2)
    {
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(v48, v47);
      sub_10006A178(v48, v47);
      *&v99 = v48;
      *(&v99 + 1) = v47 & 0x3FFFFFFFFFFFFFFFLL;
      *a4 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v54 = *(&v99 + 1);
      v87 = v99;
      v62 = *(v99 + 16);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      result = __DataStorage._bytes.getter();
      if (!result)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v56 = result;
      v63 = __DataStorage._offset.getter();
      v58 = v62 - v63;
      if (__OFSUB__(v62, v63))
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_51:
      v64 = v58 + v56;
      __DataStorage._length.getter();
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v89, a10, a11, a12, v64, a14);
      sub_10006A178(a10, a11);
      sub_10006A178(a2, a3);
      sub_10006A178(a7, a9);
      sub_10006A178(a10, a11);
      sub_10006A178(a2, a3);
      sub_10006A178(a7, a9);
      sub_10006A178(a7, a9);
      sub_10006A178(a2, a3);
      sub_10006A178(a10, a11);
      sub_10006A178(a7, a9);
      v65 = v54 | 0x8000000000000000;
      v66 = a4;
      *a4 = v87;
LABEL_87:
      v66[1] = v65;
      goto LABEL_88;
    }

LABEL_52:
    *(&v99 + 7) = 0;
    *&v99 = 0;
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v89, a10, a11, a12, &v99, a14);
LABEL_89:
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    v45 = a7;
    v46 = a9;
    goto LABEL_90;
  }

  if (!v59)
  {
    goto LABEL_47;
  }

  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a10, a11);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);
  sub_100069E2C(v48, v47);
  sub_10006A178(v48, v47);
  *a4 = xmmword_1004098D0;
  v50 = v47 & 0x3FFFFFFFFFFFFFFFLL;
  sub_10006A178(0, 0xC000000000000000);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v72 = v48;
  v73 = v48 >> 32;
  v86 = v48;
  if ((v71 & 1) == 0)
  {
    v84 = v48 >> 32;
    if (v73 < v48)
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v48, __DataStorage._offset.getter()))
    {
LABEL_109:
      __break(1u);
    }

LABEL_82:
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v72 = v86;
    v50 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v73 = v84;
  }

  if (v73 < v72)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v79 = result;
    v82 = __DataStorage._offset.getter();
    v81 = v86 - v82;
    if (__OFSUB__(v86, v82))
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_86:
    v83 = v81 + v79;
    __DataStorage._length.getter();
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v95 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v89, a10, a11, a12, v83, a14);
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    sub_10006A178(a7, a9);
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    sub_10006A178(a7, a9);

    sub_10006A178(a7, a9);
    sub_10006A178(a2, a3);
    sub_10006A178(a10, a11);
    sub_10006A178(a7, a9);
    v65 = v50 | 0x4000000000000000;
    v66 = a4;
    *a4 = v48;
    v34 = v95;
    goto LABEL_87;
  }

LABEL_117:
  __break(1u);
  return result;
}

Swift::Int sub_1000AE8DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000AE924()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000AE968(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_1000B2A4C(*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart), *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8));

  return v2;
}

uint64_t sub_1000AEA4C(uint64_t a1, uint64_t a2)
{
  sub_1000AE968(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaPairing(uint64_t a1)
{
  result = qword_100502DE8;
  if (!qword_100502DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AEAF8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for AlishaPairing.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlishaPairing.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}