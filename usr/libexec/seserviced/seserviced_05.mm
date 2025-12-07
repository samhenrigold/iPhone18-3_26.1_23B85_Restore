uint64_t sub_100088DE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (*(v2 + 16) == 1)
    {
      v12 = *(v2 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);
      v18[0] = a1;
      v18[1] = a2;
      __chkstk_darwin(result);
      *&v17[-16] = v18;

      v13 = sub_1002F78F8(sub_100093834, &v17[-32], v12);
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Not running", v16, 2u);
      }

      v13 = 0;
    }

    return v13 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100089040(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v12(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_15;
  }

  v13 = *(v2 + 16);
  v14 = Logger.logObject.getter();
  if (v13 != 1)
  {
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v14, v35, "Not running", v36, 2u);
    }

    return;
  }

  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Lyon onChannelOpen", v16, 2u);
  }

  v18 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8);
  v19 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier);
  v20 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8);
  v54 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
  v17 = v54;
  v55 = v18;
  v53[3] = &type metadata for Data;
  v53[4] = &protocol witness table for Data;
  v53[0] = v19;
  v53[1] = v20;
  v21 = sub_1000752B0(v53, &type metadata for Data);
  v22 = *v21;
  v23 = v21[1];

  sub_100069E2C(v17, v18);
  sub_100069E2C(v19, v20);
  v7 = 0;
  sub_10008E4C8(v22, v23, &v54);
  sub_1000752F4(v53);
  v24 = v54;
  v25 = v55;
  sub_1002FAC14(v54, v55);

  sub_10006A178(v24, v25);
  v26 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v10 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v10 >> 60 == 15)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53[0] = v30;
      *v29 = 136315138;

      v31 = UUID.uuidString.getter();
      v33 = v32;

      v34 = sub_1002FFA0C(v31, v33, v53);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s connected without valid key identifier", v29, 0xCu);
      sub_1000752F4(v30);
    }

    sub_100080E48(a1, 0);
    return;
  }

  v11 = *v26;
  sub_100069E2C(*v26, *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  if (qword_100501BD8 != -1)
  {
    goto LABEL_31;
  }

LABEL_15:
  v37 = sub_10027C110(v11, v10);
  if (v37)
  {
    if (v37 == 1)
    {
      if (qword_100501950 != -1)
      {
        swift_once();
      }

      sub_1000CA2E8(a1);
      if (qword_1005018E8 != -1)
      {
        swift_once();
      }

      v38 = *(qword_10051B168 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
      v39 = qword_10051B168;
      sub_1000757C8(a1, v38, v39);
    }

    else
    {
      *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 1;
      if (qword_100501BF0 != -1)
      {
        swift_once();
      }

      sub_1002A1220(a1);
      if (v7)
      {
        sub_100080E48(a1, 0);
        sub_10006A2D0(v11, v10);

        return;
      }
    }
  }

  else
  {
    sub_10006A2BC(v11, v10);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    sub_10006A2D0(v11, v10);

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53[0] = v52;
      *v42 = 136315394;
      v54 = sub_100288788(v11, v10);
      HIDWORD(v51) = v41;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;

      v46 = sub_1002FFA0C(v43, v45, v53);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;

      v47 = UUID.uuidString.getter();
      v49 = v48;

      v50 = sub_1002FFA0C(v47, v49, v53);

      *(v42 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, BYTE4(v51), "%s is no longer express, disconnecting %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    sub_100080E48(a1, 0);
  }

  sub_10006A2D0(v11, v10);
}

void sub_1000897F0(uint64_t a1)
{
  if (qword_100501960 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1000E67E4(a1);
}

void sub_100089854(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v51 = type metadata accessor for UUID();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    (*(v8 + 8))(v10, v7);
    if ((v11 & 1) == 0)
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_5;
    }

    if (*(v3 + 16) != 1)
    {
      break;
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_35;
    }

LABEL_5:
    v10 = off_10050B110;
    v13 = sub_1000CAAC4();
    v15 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v10 = type metadata accessor for Peer(0);
      sub_10009388C(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v15 = v55[1];
      v16 = v55[2];
      v17 = v55[3];
      v7 = v55[4];
      v18 = v55[5];
    }

    else
    {
      v7 = 0;
      v22 = -1 << *(v13 + 32);
      v16 = v13 + 56;
      v17 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v18 = v24 & *(v13 + 56);
    }

    v41[1] = v17;
    v8 = (v17 + 64) >> 6;
    v43 = (v5 + 1);
    v44 = (v5 + 2);
    *&v14 = 136315394;
    v42 = v14;
    v45 = a2;
    v46 = v3;
    while (v15 < 0)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28 || (v54 = v28, type metadata accessor for Peer(0), swift_dynamicCast(), v5 = v55[0], v27 = v7, v10 = v18, !v55[0]))
      {
LABEL_31:
        sub_100093854(v15);
        return;
      }

LABEL_28:
      if (*v5 == _TtC10seserviced8LyonPeer)
      {
        v53 = v10;

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v55[0] = v49;
          *v31 = v42;
          v32 = *v44;
          v47 = v30;
          v33 = v50;
          v48 = v29;
          v34 = v51;
          v32(v50, v5 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v51);
          sub_10009388C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v35 = v15;
          v36 = dispatch thunk of CustomStringConvertible.description.getter();
          v38 = v37;
          (*v43)(v33, v34);
          v39 = v36;
          v15 = v35;
          v40 = sub_1002FFA0C(v39, v38, v55);
          a2 = v45;

          *(v31 + 4) = v40;
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_1002FFA0C(v52, a2, v55);
          v29 = v48;
          _os_log_impl(&_mh_execute_header, v48, v47, "Disconnecting %s because %s", v31, 0x16u);
          swift_arrayDestroy();
          v3 = v46;
        }

        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        sub_100080E48(v5, 0);

        v10 = v53;
      }

      v7 = v27;
      v18 = v10;
    }

    v25 = v7;
    v26 = v18;
    v27 = v7;
    if (v18)
    {
LABEL_24:
      v10 = ((v26 - 1) & v26);
      v5 = *(*(v15 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

      if (!v5)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v8)
      {
        goto LABEL_31;
      }

      v26 = *(v16 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
  }
}

void sub_100089F1C(NSObject *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    v40 = v11;
    swift_once();
    v11 = v40;
LABEL_18:
    sub_1002A1A18(a1, v11);
    v17 = v8[66];
    if ((*(&a1->isa + v17) & 0x100) == 0)
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = *(&a1->isa + v17);
        if ((v22 & 0xFF00) == 0x200)
        {
          v23 = 0;
          v24 = 0;
        }

        else
        {
          sub_1000755A4();
          swift_allocError();
          *v25 = v22;
          v25[1] = HIBYTE(v22) & 1;
          v23 = _swift_stdlib_bridgeErrorToNSError();
          v24 = v23;
        }

        *(v20 + 4) = v23;
        *v21 = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Restarting scanning with error %@", v20, 0xCu);
        sub_100075768(v21, &unk_100503F70, &unk_10040B2E0);
      }

      if (qword_100501B58 != -1)
      {
        swift_once();
      }

      v26 = qword_10051B588;
      if (*(qword_10051B588 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v26 + 17) = 0;
        sub_1002263E4(v27);
      }
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136315138;

      v32 = UUID.uuidString.getter();
      v34 = v33;

      v35 = sub_1002FFA0C(v32, v34, &v42);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Lyon onDisconnection for %s", v30, 0xCu);
      sub_1000752F4(v31);
    }

    v36 = *(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_endpointType);
    v37 = *(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus);
    v38 = *(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue);
    v39 = *(&a1->isa + v2);

    sub_1002F8758(v39, v36, v37, v38);

    if (qword_1005018E8 != -1)
    {
      swift_once();
    }

    sub_100073834(a1);
    if (qword_100501950 != -1)
    {
      swift_once();
    }

    sub_1000CA51C(a1);
    return;
  }

  if (*(v3 + 16) == 1)
  {
    v2 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    v8 = &unk_10051B000;
    if (*(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) <= 9u && ((*(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) & 0xFF00) != 0x200 ? (v12 = (*(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) & 0x100) == 0) : (v12 = 0), v12))
    {
      v11 = 1;
    }

    else
    {
      v13 = *(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension);
      if (*(v13 + 40))
      {
        v11 = (*(v13 + 24) & 1) == 0;
      }

      else
      {
        v11 = 0;
      }
    }

    if (qword_100501BF0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Not running", v16, 2u);
  }
}

void *sub_10008A550()
{
  type metadata accessor for Lyon.SupportedProtocolVersions();
  swift_allocObject();
  result = sub_10008A58C();
  qword_10051B190 = result;
  return result;
}

void *sub_10008A58C()
{
  v0[2] = &off_1004C3538;
  v0[3] = &off_1004C3560;
  v0[4] = &off_1004C3588;
  if (qword_100501A18 != -1)
  {
    swift_once();
  }

  sub_100074970(0xD000000000000018, 0x8000000100461E20);
  if (v1)
  {
    v0[2] = v1;
  }

  sub_100074970(0xD000000000000010, 0x8000000100461E00);
  if (v2)
  {
    v0[3] = v2;
  }

  sub_100074970(0xD00000000000001ELL, 0x8000000100461DE0);
  if (v3)
  {
    v0[4] = v3;
  }

  return v0;
}

uint64_t sub_10008A6A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008A6E8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced4Lyon_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10008A7BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008A898()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10[1] = qword_10051B7F0;
  aBlock[4] = sub_10008C164;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5CE0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10009388C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

unint64_t sub_10008AB80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100092ECC(*(a1 + 48) + 40 * v12, v27);
        sub_1000754F0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100092ECC(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000754F0(v25 + 8, v20);
        sub_100075768(v24, &qword_100502C00, &qword_100409CA8);
        v21 = v18;
        sub_100075D50(v20, v22);
        v13 = v21;
        sub_100075D50(v22, v23);
        sub_100075D50(v23, &v21);
        result = sub_10008C934(v13, *(&v13 + 1), &String.hash(into:), sub_10008D664);
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_1000752F4(v10);
          result = sub_100075D50(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100075D50(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100075768(v24, &qword_100502C00, &qword_100409CA8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10008AE84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502CD8, &qword_100409DB8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100092ECC(*(a1 + 48) + 40 * v12, v24);
        sub_1000754F0(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_100092ECC(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_100075768(v21, &qword_100502C00, &qword_100409CA8);

          goto LABEL_23;
        }

        sub_1000754F0(v22 + 8, v20);
        sub_100075768(v21, &qword_100502C00, &qword_100409CA8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_10008C934(v18, v19, &String.hash(into:), sub_10008D664);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

double sub_10008B178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10008C934(a1, a2, &String.hash(into:), sub_10008D664), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1000754F0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

Swift::Int sub_10008B2F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008B36C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10008B3B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009385C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008B3E8()
{

  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8));
  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8));
}

uint64_t sub_10008B484()
{
  v1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier, v2);
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8));

  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8));
  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8));

  return v0;
}

uint64_t sub_10008B5E0()
{
  sub_10008B484();

  return swift_deallocClassInstance();
}

uint64_t sub_10008B660(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonSessionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonSessionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008B8D0()
{
  result = qword_100502BC0;
  if (!qword_100502BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502BC0);
  }

  return result;
}

void sub_10008B924(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (v9)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v11 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v11;
    v12 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v13 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    v14 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v15 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v14;
    *(inited + 88) = v15;
    *(inited + 120) = sub_100068FC4(&qword_100502BF0, &qword_100409C88);
    *(inited + 96) = a3;
    *(inited + 104) = a4;

    sub_10006A2BC(a3, a4);
    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKey:v17];
  }

  else
  {
    __break(1u);
  }
}

void sub_10008BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (v11)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v13 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v13;
    v15 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v14 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v15;
    *(inited + 56) = v14;
    v16 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v17 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v16;
    *(inited + 88) = v17;
    *(inited + 120) = sub_100068FC4(a4, a5);
    *(inited + 96) = a3;

    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = String._bridgeToObjectiveC()();
    [v11 setObject:isa forKey:v19];
  }

  else
  {
    __break(1u);
  }
}

void sub_10008BD40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (v9)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v11 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v11;
    v12 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v13 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    v14 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v15 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v14;
    *(inited + 88) = v15;
    *(inited + 120) = sub_100068FC4(&qword_100502D08, &qword_100409DE0);
    *(inited + 96) = a3;
    *(inited + 104) = a4 & 1;

    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKey:v17];
  }

  else
  {
    __break(1u);
  }
}

void sub_10008BF48(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v9 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v9;
    v11 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v10 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v11;
    *(inited + 56) = v10;
    v12 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v13 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v12;
    *(inited + 88) = v13;
    *(inited + 120) = sub_100068FC4(&qword_100502C60, &qword_100409D38);
    *(inited + 96) = a3;

    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v15 = String._bridgeToObjectiveC()();
    [v7 setObject:isa forKey:v15];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008C168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_100069E2C(v7, v6);
          sub_100069E2C(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_100069E2C(v7, v6);
        sub_100069E2C(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_100069E2C(v7, v6);
          sub_100069E2C(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_10019F024(v24, v25, v26, v33);
          sub_10006A178(v9, v8);
          sub_10006A178(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_100069E2C(v7, v6);
        sub_100069E2C(v9, v8);
      }

      sub_10019F024(v33, v9, v8, &v32);
      sub_10006A178(v9, v8);
      sub_10006A178(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_10008C58C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10008C678(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10008FA94(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10006A178(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10019F024(v13, a3, a4, &v12);
  v10 = v4;
  sub_10006A178(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10008C808(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10009388C(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10008DBAC(a1, v2, &type metadata accessor for UUID, &qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

uint64_t sub_10008C934(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_10008C9C8(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10008D71C(a1, v2);
}

unint64_t sub_10008CA34(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10008D788(v1, v2);
}

unint64_t sub_10008CA7C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10008D7F8(a1, v4);
}

unint64_t sub_10008CAC0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10008D8C0(a1, v2);
}

unint64_t sub_10008CB58(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10008DE10(a1, v4, &qword_100504760, RBSAssertion_ptr);
}

unint64_t sub_10008CBA8(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10008D9C4(v1, v2);
}

unint64_t sub_10008CBF0(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return sub_10008DA30(v1, v2);
}

unint64_t sub_10008CC58(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10009388C(&qword_10050AB70, type metadata accessor for CFString, &unk_10040979C);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10008DAA0(a1, v2);
}

unint64_t sub_10008CD0C(uint64_t a1)
{
  type metadata accessor for CredentialType();
  sub_10009388C(&unk_10050ABE0, &type metadata accessor for CredentialType, &protocol conformance descriptor for CredentialType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10008DBAC(a1, v2, &type metadata accessor for CredentialType, &qword_100502CE0, &type metadata accessor for CredentialType, &protocol conformance descriptor for CredentialType);
}

unint64_t sub_10008CDE0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10008DD4C(a1, v4);
}

unint64_t sub_10008CE24(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10008DE10(a1, v4, &qword_100503EB0, CBUUID_ptr);
}

unint64_t sub_10008CE74(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10008DEDC(v1, v2);
}

unint64_t sub_10008CF34(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10008E07C(v1, v2);
}

unint64_t sub_10008D020(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10008E224(v1, v2);
}

unint64_t sub_10008D0F4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10008DE10(a1, v4, &qword_100504C80, NSNumber_ptr);
}

unint64_t sub_10008D144(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10009388C(&unk_10050ABB0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10008DBAC(a1, v2, &type metadata accessor for URL, &qword_100502CD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_10008D218(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10008E3CC(v2, a1);
}

unint64_t sub_10008D264(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_100069E2C(v17, v16);
          sub_10019F024(v45, v9, v8, &v44);
          sub_10006A178(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_100069E2C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_100069E2C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_10019F024(v34, a1, a2, v45);
        sub_10006A178(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100069E2C(v17, v16);
      sub_10019F024(v45, v9, v8, &v44);
      sub_10006A178(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_10008D664(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10008D71C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008D788(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008D7F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100092ECC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100092F28(v8);
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

unint64_t sub_10008D8C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008D9C4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008DA30(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008DAA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10009388C(&qword_10050AB70, type metadata accessor for CFString, &unk_10040979C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

unint64_t sub_10008DBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_10009388C(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10008DD4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CredentialInternal();
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

unint64_t sub_10008DE10(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_10009393C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10008DEDC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000016;
          v7 = 0x8000000100460D30;
          v8 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v6 = 0xD000000000000019;
          v7 = 0x8000000100460D50;
          v8 = a1;
          if (!a1)
          {
LABEL_17:
            v10 = 0xE200000000000000;
            if (v6 != 25705)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE200000000000000;
        v6 = 25705;
        v8 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v8 == 1)
      {
        v9 = 0xD000000000000016;
      }

      else
      {
        v9 = 0xD000000000000019;
      }

      if (v8 == 1)
      {
        v10 = 0x8000000100460D30;
      }

      else
      {
        v10 = 0x8000000100460D50;
      }

      if (v6 != v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v10)
      {

        return v4;
      }

LABEL_19:
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008E07C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = 0xD000000000000015;
      v8 = v6 == 2 ? 0xD000000000000013 : 0xD000000000000015;
      v9 = v6 == 2 ? 0x8000000100460D80 : 0x8000000100460DA0;
      v10 = *(*(v23 + 48) + v4) ? 0x656D614E707061 : 0x64496D616461;
      v11 = *(*(v23 + 48) + v4) ? 0xE700000000000000 : 0xE600000000000000;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v7 = 0xD000000000000013;
        v14 = 0x8000000100460D80;
      }

      else
      {
        v14 = 0x8000000100460DA0;
      }

      v15 = v5 ? 0x656D614E707061 : 0x64496D616461;
      v16 = v5 ? 0xE700000000000000 : 0xE600000000000000;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008E224(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6D617473656D6974;
          v8 = 0xEC00000079614470;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x7461676572676761;
          v8 = 0xEA00000000007365;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v7 != 0x644974726F706572)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x644974726F706572;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6D617473656D6974;
      }

      else
      {
        v10 = 0x7461676572676761;
      }

      if (v9 == 1)
      {
        v11 = 0xEC00000079614470;
      }

      else
      {
        v11 = 0xEA00000000007365;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008E3CC(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

_BYTE *sub_10008E434@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10008FCD4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10008FD8C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10008FE08(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10008E4C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10008E600(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10008E600(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_10008E600(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008E694(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10008E6F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_10008E7AC(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for DSKBLE.BLEScanRequest();
      swift_dynamicCast();
      return v11;
    }

    goto LABEL_26;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for DSKBLE.BLEScanRequest();
    swift_dynamicCast();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = -1 << *(a4 + 32);
    v5 = v6 & ~v7;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v8 = ~v7;
      do
      {
        v9 = *(*(a4 + 48) + 8 * v5);
        v10 = *(v9 + 16) == *(v11 + 16) && *(v9 + 24) == *(v11 + 24);
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_20;
        }

        v5 = (v5 + 1) & v8;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_20:
  }
}

void sub_10008E990(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_10008EBB4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for UWBSession();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for UWBSession();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_10008EDB4(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for Peer(0);
      swift_dynamicCast();
      return v10;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for Peer(0);
    swift_dynamicCast();
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10009388C(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = -1 << *(a4 + 32);
    v5 = v6 & ~v7;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v8 = ~v7;
      do
      {

        v9 = static UUID.== infix(_:_:)();

        if (v9)
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v8;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

unint64_t sub_10008F004(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      return v10;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10009388C(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = -1 << *(a4 + 32);
    v5 = v6 & ~v7;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v8 = ~v7;
      do
      {

        v9 = static UUID.== infix(_:_:)();

        if (v9)
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v8;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

void sub_10008F260(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v24 = __CocoaSet.element(at:)();
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      return;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    v13 = v10;
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v24 = __CocoaSet.Index.element.getter();
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v6 = v23;
    Hasher.init(_seed:)();
    v14 = [*(v6 + 24) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10009388C(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v12, v13);
    v15 = Hasher._finalize()();
    v16 = -1 << *(a4 + 32);
    a1 = v15 & ~v16;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v17 = ~v16;
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      do
      {
        v18 = *(*(*(a4 + 48) + 8 * a1) + 24);
        v19 = *(v6 + 24);

        v20 = v18;
        v21 = v19;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v17;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != v6)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_10008F590(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (__CocoaSet.Index.age.getter() != *(a4 + 36))
      {
        goto LABEL_74;
      }

      v40 = __CocoaSet.Index.element.getter();
      type metadata accessor for DSKExpress.ExpressKey();
      swift_dynamicCast();
      v5 = *v39;
      Hasher.init(_seed:)();
      Data.hash(into:)();
      v6 = Hasher._finalize()();
      v7 = v4 + 56;
      v8 = -1 << *(v4 + 32);
      v9 = v6 & ~v8;
      if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        v36 = v4 + 56;
        v37 = *v39;
        v38 = ~v8;
        v34 = v4;
        while (1)
        {
          v11 = *(*(v4 + 48) + 8 * v9);
          v12 = *(v11 + 16);
          v13 = *(v11 + 24);
          v15 = *(v5 + 16);
          v14 = *(v5 + 24);
          v16 = v13 >> 62;
          v17 = v14 >> 62;
          if (v13 >> 62 == 3)
          {
            break;
          }

          if (v16 <= 1)
          {
            if (!v16)
            {
              v19 = BYTE6(v13);
              if (v17 <= 1)
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }

            LODWORD(v19) = HIDWORD(v12) - v12;
            if (__OFSUB__(HIDWORD(v12), v12))
            {
              goto LABEL_69;
            }

            v19 = v19;
            goto LABEL_32;
          }

          if (v16 == 2)
          {
            v22 = *(v12 + 16);
            v21 = *(v12 + 24);
            v23 = __OFSUB__(v21, v22);
            v19 = v21 - v22;
            if (v23)
            {
              goto LABEL_68;
            }

            goto LABEL_32;
          }

          v19 = 0;
          if (v17 <= 1)
          {
LABEL_33:
            if (v17)
            {
              LODWORD(v24) = HIDWORD(v15) - v15;
              if (__OFSUB__(HIDWORD(v15), v15))
              {
                goto LABEL_67;
              }

              v24 = v24;
            }

            else
            {
              v24 = BYTE6(v14);
            }

            goto LABEL_40;
          }

LABEL_38:
          if (v17 != 2)
          {
            if (!v19)
            {
              goto LABEL_60;
            }

            goto LABEL_9;
          }

          v26 = *(v15 + 16);
          v25 = *(v15 + 24);
          v23 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (v23)
          {
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_40:
          if (v19 != v24)
          {
            goto LABEL_9;
          }

          if (v19 < 1)
          {
            goto LABEL_60;
          }

          if (v16 > 1)
          {
            if (v16 == 2)
            {
              v27 = *(v12 + 16);
              v35 = *(v12 + 24);

              v28 = __DataStorage._bytes.getter();
              if (v28)
              {
                v29 = __DataStorage._offset.getter();
                if (__OFSUB__(v27, v29))
                {
                  goto LABEL_72;
                }

                v28 += v27 - v29;
              }

              if (__OFSUB__(v35, v27))
              {
                goto LABEL_71;
              }

              __DataStorage._length.getter();
              sub_10019F024(v28, v15, v14, v39);

              v30 = v39[0];
              goto LABEL_56;
            }

            *&v39[6] = 0;
            *v39 = 0;
          }

          else
          {
            if (v16)
            {
              v31 = v12;
              if (v12 >> 32 < v12)
              {
                goto LABEL_70;
              }

              v32 = __DataStorage._bytes.getter();
              if (v32)
              {
                v33 = __DataStorage._offset.getter();
                if (__OFSUB__(v31, v33))
                {
                  goto LABEL_73;
                }

                v32 += v31 - v33;
              }

              __DataStorage._length.getter();
              sub_10019F024(v32, v15, v14, v39);

              v30 = v39[0];
              v4 = v34;
LABEL_56:
              v7 = v36;
              v5 = v37;
              v10 = v38;
              if (v30)
              {
                goto LABEL_60;
              }

              goto LABEL_9;
            }

            *v39 = *(v11 + 16);
            *&v39[8] = v13;
            v39[10] = BYTE2(v13);
            v39[11] = BYTE3(v13);
            v39[12] = BYTE4(v13);
            v39[13] = BYTE5(v13);

            v10 = v38;
          }

          sub_10019F024(v39, v15, v14, &v40);

          if (v40)
          {
            goto LABEL_60;
          }

LABEL_9:
          v9 = (v9 + 1) & v10;
          if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        if (v12)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 == 0xC000000000000000;
        }

        v19 = 0;
        v20 = v18 && v14 >> 62 == 3;
        if (v20 && !v15 && v14 == 0xC000000000000000)
        {
LABEL_60:
        }

LABEL_32:
        if (v17 <= 1)
        {
          goto LABEL_33;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (result < 0 || 1 << *(a4 + 32) <= result)
      {
        goto LABEL_75;
      }

      if ((*(a4 + 8 * (result >> 6) + 56) >> result))
      {
        if (*(a4 + 36) == a2)
        {
        }
      }

      else
      {
LABEL_76:
        __break(1u);
      }

      __break(1u);
    }

LABEL_78:

    __break(1u);
  }

  if (a3)
  {
    v40 = __CocoaSet.element(at:)();
    type metadata accessor for DSKExpress.ExpressKey();
    swift_dynamicCast();
    return *v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008FA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10019F024(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10008FB4C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100069E2C(a3, a4);
          return sub_10008C678(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10008FCB4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008FCD4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10008FD8C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10008FE08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10008FEB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_100069E2C(v7, v8);

      result = sub_10008C934(v7, v8, &Data.hash(into:), sub_10008D264);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10008FFDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, &v13, &qword_100507D30, &unk_100409C90);
      v5 = v13;
      v6 = v14;
      result = sub_10008C934(v13, v14, &String.hash(into:), sub_10008D664);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100075D50(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100090134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C78, &qword_100409D58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 34); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10008CA34(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100090214(unint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 2))
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if (((v6)(a3 + 2, v10) & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = a3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_20:
    _StringGuts.grow(_:)(47);

    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x6164206D6F726620;
    v16._object = 0xEF206E656C206174;
    String.append(_:)(v16);
    if (v9 > 1)
    {
      if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_43;
    }

LABEL_36:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x2074657366666F20;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
    return swift_willThrow();
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 16);
    v14 = v13 + a3;
    if (__OFADD__(v13, a3))
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  v17 = __OFADD__(v13, a3);
  v18 = v13 + a3;
  if (v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = __OFADD__(v18, 2);
  v19 = v18 + 2;
  if (v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 < v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_100068FC4(&qword_100502C28, &qword_100409CF8);
  sub_1000937E0();
  sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8, &protocol conformance descriptor for Range<A>);
  DataProtocol.copyBytes<A>(to:from:)();
  v20 = bswap32(0) >> 16;
  if (a4)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

unint64_t sub_1000905BC(unint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 8))
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if (((v6)(a3 + 8, v10) & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = a3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_20:
    _StringGuts.grow(_:)(47);

    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x6164206D6F726620;
    v16._object = 0xEF206E656C206174;
    String.append(_:)(v16);
    if (v9 > 1)
    {
      if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_43;
    }

LABEL_36:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x2074657366666F20;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
    return swift_willThrow();
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 16);
    v14 = v13 + a3;
    if (__OFADD__(v13, a3))
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  v17 = __OFADD__(v13, a3);
  v18 = v13 + a3;
  if (v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = __OFADD__(v18, 8);
  v19 = v18 + 8;
  if (v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 < v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_100068FC4(&qword_100502C28, &qword_100409CF8);
  sub_1000937E0();
  sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8, &protocol conformance descriptor for Range<A>);
  DataProtocol.copyBytes<A>(to:from:)();
  v20 = bswap64(0);
  if (a4)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_100090960(char a1, char a2, unsigned int a3)
{
  v11 = 0;
  v12 = 0;
  LOBYTE(v6) = a1;
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = (&v6 + 1);
  sub_1000752B0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v7);
  LOBYTE(v6) = a2;
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = (&v6 + 1);
  sub_1000752B0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v7);
  v6 = bswap32(a3) >> 16;
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = &v7;
  sub_1000752B0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v7);
  return v11;
}

uint64_t sub_100090A8C(uint64_t result, char a2, uint64_t a3, unint64_t a4)
{
  v4 = BYTE6(a4);
  v7 = result;
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v9 = v9;
  }

LABEL_11:
  result = v9 + 4;
  if (__OFADD__(v9, 4))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1001303A8(result);
  v19 = result;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_24;
    }

    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v8)
  {
    LODWORD(v13) = v4;
LABEL_25:
    v16 = sub_100090960(v7, a2, v13);
    v18 = v17;
    Data.append(_:)();
    sub_10006A178(v16, v18);
    Data.append(_:)();
    return v19;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v13 = HIDWORD(a3) - a3;
LABEL_21:
    if ((v13 & 0x8000000000000000) == 0)
    {
      if (!(v13 >> 16))
      {
        goto LABEL_25;
      }

      __break(1u);
LABEL_24:
      LODWORD(v13) = 0;
      goto LABEL_25;
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100090BC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v13, &qword_100502C48, &qword_10040B2D0);
      result = sub_10008CA7C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100075D50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100090D4C(unint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 4))
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if (((v6)(a3 + 4, v10) & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = a3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_20:
    _StringGuts.grow(_:)(47);

    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x6164206D6F726620;
    v16._object = 0xEF206E656C206174;
    String.append(_:)(v16);
    if (v9 > 1)
    {
      if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_43;
    }

LABEL_36:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x2074657366666F20;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
    return swift_willThrow();
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 16);
    v14 = v13 + a3;
    if (__OFADD__(v13, a3))
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  v17 = __OFADD__(v13, a3);
  v18 = v13 + a3;
  if (v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = __OFADD__(v18, 4);
  v19 = v18 + 4;
  if (v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 < v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_100068FC4(&qword_100502C28, &qword_100409CF8);
  sub_1000937E0();
  sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8, &protocol conformance descriptor for Range<A>);
  DataProtocol.copyBytes<A>(to:from:)();
  v20 = bswap32(0);
  if (a4)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

unint64_t sub_1000910F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10008C934(v5, v6, &String.hash(into:), sub_10008D664);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10009122C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C50, &qword_100409D18);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_100069E2C(v5, v6);
      result = sub_10008C934(v5, v6, &Data.hash(into:), sub_10008D264);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100091354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_10050AAE0, &qword_100409D10);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_100069E2C(v5, v6);
      sub_100069E2C(v7, v8);
      result = sub_10008C934(v5, v6, &Data.hash(into:), sub_10008D264);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000914B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100068FC4(&unk_10050AAF0, &qword_100409D50);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_10008CA34(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return _swiftEmptyDictionarySingleton;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 2 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_100069E2C(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 8);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_10008CA34(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000915E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;
      result = sub_10008CBF0(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000916C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C70, &qword_100409D48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10008CC58(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000917B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502D10, &qword_100409DE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10008C934(v5, v6, &String.hash(into:), sub_10008D664);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000918D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C80, &qword_100409D60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, &v11, &qword_100502C88, &qword_100409D68);
      v5 = v11;
      result = sub_10008CC58(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000919FC(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100502CF8, &qword_100409DD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100068FC4(&qword_100502D00, &qword_100409DD8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000938D4(v9, v5, &qword_100502CF8, &qword_100409DD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10008C934(*v5, v12, &String.hash(into:), sub_10008D664);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100091C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CE8, &qword_100409DC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10008C934(v5, v6, &String.hash(into:), sub_10008D664);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100091D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CC0, &qword_100409DA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, &v13, &qword_100502CC8, &qword_100409DA8);
      v5 = v13;
      v6 = v14;
      result = sub_10008C934(v13, v14, &String.hash(into:), sub_10008D664);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100075D50(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100091E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100068FC4(&qword_100502CF0, &qword_100409DC8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10008CBA8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_10008CBA8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100091FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CB0, &unk_100409D90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v11, &qword_100502CB8, &qword_100410F70);
      v5 = v11[0];
      result = sub_10008CE74(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000920D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CA0, &qword_100409D80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v11, &qword_100502CA8, &qword_100409D88);
      v5 = v11[0];
      result = sub_10008CF34(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100092200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C90, &unk_100409D70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v11, &qword_100502C98, &qword_100410F40);
      v5 = v11[0];
      result = sub_10008D020(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10009233C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10008C934(v7, v8, &String.hash(into:), sub_10008D664);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100092460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10008C934(v7, v8, &String.hash(into:), sub_10008D664);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10009257C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v13 = [objc_allocWithZone(SESConfigAliro) init];
  v47[0] = 0;
  v14 = [v13 getConfiguration:v47];

  v15 = v47[0];
  if (!v14)
  {
    v29 = v47[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v15;

  v18 = sub_10008AB80(v16);

  if (v18)
  {
    v2 = 0xD000000000000016;
    if (*(v18 + 16))
    {
      v20 = sub_10008C934(0xD000000000000016, 0x8000000100461D40, &String.hash(into:), sub_10008D664);
      if (v21)
      {
        sub_1000754F0(*(v18 + 56) + 32 * v20, v47);
        sub_100068FC4(&qword_100502428, &unk_100409C70);
        if (swift_dynamicCast())
        {
          v22 = v46;
          if (qword_100501900 != -1)
          {
            swift_once();
          }

          v23 = qword_10051B190;
          if ((sub_10008C58C(v22, *(qword_10051B190 + 16)) & 1) == 0)
          {
            *(v23 + 16) = v22;

            if (qword_100501A18 != -1)
            {
              swift_once();
            }

            sub_10008BB44(0xD000000000000018, 0x8000000100461E20, v22, &qword_100502BF8, &qword_100409CA0);

            v24 = 1;
            if (!*(v18 + 16))
            {
LABEL_28:
              if (*(v18 + 16))
              {
                v30 = sub_10008C934(0xD00000000000001CLL, 0x8000000100461D80, &String.hash(into:), sub_10008D664);
                if (v31)
                {
                  sub_1000754F0(*(v18 + 56) + 32 * v30, v47);
                  sub_100068FC4(&qword_100502428, &unk_100409C70);
                  if (swift_dynamicCast())
                  {
                    v32 = v46;
                    if (qword_100501900 != -1)
                    {
                      swift_once();
                    }

                    v33 = qword_10051B190;
                    if ((sub_10008C58C(v32, *(qword_10051B190 + 32)) & 1) == 0)
                    {
                      *(v33 + 32) = v32;

                      if (qword_100501A18 != -1)
                      {
                        swift_once();
                      }

                      sub_10008BB44(0xD00000000000001ELL, 0x8000000100461DE0, v32, &qword_100502BF8, &qword_100409CA0);

                      if (qword_1005018E8 != -1)
                      {
                        swift_once();
                      }

                      sub_10006CAB0();
                      goto LABEL_36;
                    }
                  }
                }
              }

              if (!v24)
              {
              }

LABEL_36:
              if (qword_100501D88 == -1)
              {
LABEL_37:
                (*(v4 + 16))(v6, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v3);

                v34 = Logger.logObject.getter();
                v35 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  v37 = swift_slowAlloc();
                  v47[0] = v37;
                  *v36 = 136315138;
                  v38 = Dictionary.description.getter();
                  v40 = v39;

                  v41 = sub_1002FFA0C(v38, v40, v47);
                  v2 = 0xD000000000000016;

                  *(v36 + 4) = v41;
                  _os_log_impl(&_mh_execute_header, v34, v35, "Aliro protocol versions updated %s", v36, 0xCu);
                  sub_1000752F4(v37);
                }

                else
                {
                }

                (*(v4 + 8))(v6, v3);
                v42 = sub_10013044C(v2 - 4, 0x8000000100461630);
                v44 = v43;
                sub_1003375E0(v2 + 39, 0x8000000100461DA0, v42, v43, 0, 0xF000000000000000, 0);
                return sub_10006A2D0(v42, v44);
              }

LABEL_49:
              swift_once();
              goto LABEL_37;
            }

LABEL_14:
            v25 = sub_10008C934(0xD000000000000016, 0x8000000100461D60, &String.hash(into:), sub_10008D664);
            if (v26)
            {
              sub_1000754F0(*(v18 + 56) + 32 * v25, v47);
              sub_100068FC4(&qword_100502428, &unk_100409C70);
              if (swift_dynamicCast())
              {
                v27 = v46;
                if (qword_100501900 != -1)
                {
                  swift_once();
                }

                v28 = qword_10051B190;
                if (sub_10008C58C(v27, *(qword_10051B190 + 24)))
                {
                }

                else
                {
                  *(v28 + 24) = v27;

                  if (qword_100501A18 != -1)
                  {
                    swift_once();
                  }

                  sub_10008BB44(0xD000000000000010, 0x8000000100461E00, v27, &qword_100502BF8, &qword_100409CA0);

                  v24 = 1;
                }
              }
            }

            goto LABEL_28;
          }
        }
      }
    }

    v24 = 0;
    if (!*(v18 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100092F7C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100501B78 == -1)
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
  v12 = byte_10051B5B8;
  if ((byte_10051B5B8 & 1) == 0)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v3 + 16))(v5, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Lyon can't start because UWB is not supported on this device", v15, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v12;
}

void sub_100093260(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (*(v1 + 16) != 1)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Not running", v25, 2u);
    }

    return;
  }

  if (qword_1005018F8 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v10 = [objc_opt_self() TLVWithTag:0 value:0];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v10 asData];

  if (!v12)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = sub_100090A8C(2, 0, v13, v15);
  v18 = v17;
  sub_10006A178(v13, v15);
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_1000E71A0(v16, v18, a1);
  sub_10006A178(v16, v18);
  if (!v2)
  {
    v19 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    v20 = *(v19 + 68);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v19 + 68) = v22;
      return;
    }

    __break(1u);
    goto LABEL_20;
  }
}

id sub_10009357C(void *a1, uint64_t (*a2)(void *))
{
  v4 = [a1 appletIdentifier];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v9 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  v10 = v8;
  if (v7 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_10006A2D0(v5, v7);
LABEL_9:
      result = [a1 endPointType];
      if (result == 4)
      {
        if (qword_100501B00 != -1)
        {
          swift_once();
        }

        return a2(a1);
      }

      return result;
    }
  }

  else if (v8 >> 60 != 15)
  {
    sub_100069E2C(v5, v7);
    sub_10006A2BC(v9, v10);
    v12 = sub_10008FB4C(v5, v7, v9, v10);
    sub_10006A2D0(v9, v10);
    sub_10006A2D0(v9, v10);
    sub_10006A178(v5, v7);
    result = sub_10006A2D0(v5, v7);
    if (!v12)
    {
      return result;
    }

    goto LABEL_9;
  }

  sub_10006A2D0(v5, v7);

  return sub_10006A2D0(v9, v10);
}

uint64_t sub_100093734()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009376C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000937D4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1000937E0()
{
  result = qword_100502C30;
  if (!qword_100502C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502C30);
  }

  return result;
}

uint64_t sub_10009385C(uint64_t result)
{
  if (result >= 0xFu)
  {
    return 15;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10009388C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000938D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100068FC4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009393C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100093A54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100068FC4(&qword_100502D40, &unk_100409E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for SECMetadata();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v40 - v11;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v40 - v21;
  v23 = [a1 productConfigId];
  if (v23)
  {
    v42 = v6;
    v43 = v8;
    v46 = a2;
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
      a2 = v46;
    }

    else
    {
      (*(v16 + 32))(v22, v14, v15);
      v25 = [a1 credentialMetadata];
      if (v25)
      {
        v26 = v25;
        v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100095A10(&qword_100502D48, &protocol conformance descriptor for SECMetadata);
        v30 = v42;
        v40 = v27;
        v41 = v29;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        a2 = v46;

        v37 = v43;
        (*(v43 + 56))(v30, 0, 1, v7);
        v38 = v45;
        (*(v37 + 32))(v45, v30, v7);
        (*(v16 + 16))(v18, v22, v15);
        (*(v37 + 16))(v44, v38, v7);
        SECCredentialConfig.init(configUUID:metadata:)();
        sub_10006A178(v40, v41);

        (*(v37 + 8))(v38, v7);
        (*(v16 + 8))(v22, v15);
        v39 = 0;
        goto LABEL_12;
      }

      (*(v16 + 8))(v22, v15);
      a2 = v46;
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_10051B2C8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Corrupted metadata entity", v34, 2u);
  }

  v39 = 1;
LABEL_12:
  v35 = type metadata accessor for SECCredentialConfig();
  return (*(*(v35 - 8) + 56))(a2, v39, 1, v35);
}

void sub_100094048(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SECMetadata();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CredentialMetadataEntity();
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v34 = a1;
  v13 = [v12 initWithContext:a1];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v31 = a2;
  SECCredentialConfig.metadata.getter();
  sub_100095A10(&qword_100502D28, &protocol conformance descriptor for SECMetadata);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    (*(v9 + 8))(v11, v8);

    v18 = v17;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v13 setCredentialMetadata:isa];

    SECCredentialConfig.configUUID.getter();
    UUID.uuidString.getter();
    (*(v32 + 8))(v7, v33);
    v20 = String._bridgeToObjectiveC()();

    [v13 setProductConfigId:v20];

    v35 = 0;
    if ([v34 save:&v35])
    {
      v21 = v35;
      sub_10006A178(v16, v17);

      return;
    }

    v22 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v16, v18);
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_10051B2C8);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_1002FFA0C(0xD000000000000019, 0x8000000100461FF0, &v35);
    *(v26 + 12) = 2080;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    v29 = sub_1002FFA0C(v27, v28, &v35);

    *(v26 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: CoreData error %s encountered while saving view context", v26, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v30 = 0;
  swift_willThrow();
}

void sub_10009453C(uint64_t a1@<X8>)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  sub_100095970();
  sub_100068FC4(&qword_100502440, &unk_10040B240);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004098F0;
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000959BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v10 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v10];

  v11 = sub_10035E904();
  if (v1)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100462030, &v25);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_1002FFA0C(v17, v18, &v25);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s: CoreData error %s encountered while fetching entity", v16, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    return;
  }

  v12 = v11;
  type metadata accessor for CredentialMetadataEntity();
  v21 = NSManagedObjectContext.fetch<A>(_:)();

  if (v21 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

LABEL_15:

    v24 = type metadata accessor for SECCredentialConfig();
    (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
    return;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_13:
    v23 = v22;

    sub_100093A54(v23, a1);

    return;
  }

  __break(1u);
}

void *sub_100094934()
{
  v1 = sub_100068FC4(&qword_100502D50, &qword_100414C30);
  __chkstk_darwin(v1 - 8);
  v3 = &v67 - v2;
  v4 = type metadata accessor for SECCredentialConfig();
  v75 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithEntityName:v8];

  v10 = sub_10035E904();
  if (v0)
  {

    if (qword_1005019D8 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_4;
  }

  v11 = v10;
  v79 = v6;
  v73 = v3;
  v74 = v4;
  type metadata accessor for CredentialMetadataEntity();
  v76 = NSManagedObjectContext.fetch<A>(_:)();
  v72 = v9;

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_10051B2C8);
  v22 = v76;

  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v22 >> 62;
  v29 = v73;
  v28 = v74;
  v30 = v75;
  v71 = 0;
  if (v26)
  {
    v31 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v81 = v70;
    *v31 = 136315394;
    *(v31 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100462070, &v81);
    *(v31 + 12) = 2080;
    if (v27)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = v31;
    LODWORD(v77) = v25;
    if (v32)
    {
      v80 = _swiftEmptyArrayStorage;
      result = sub_10019F504(0, v32 & ~(v32 >> 63), 0);
      if (v32 < 0)
      {
        __break(1u);
        return result;
      }

      v68 = v27;
      v69 = v24;
      v33 = v80;
      if ((v76 & 0xC000000000000001) != 0)
      {
        v34 = 0;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v35 = [swift_unknownObjectRetain() productConfigId];
          if (v35)
          {
            v36 = v35;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            v37 = 0;
            v39 = 0;
          }

          v80 = v33;
          v41 = v33[2];
          v40 = v33[3];
          if (v41 >= v40 >> 1)
          {
            sub_10019F504((v40 > 1), v41 + 1, 1);
            v33 = v80;
          }

          ++v34;
          v33[2] = v41 + 1;
          v42 = &v33[2 * v41];
          v42[4] = v37;
          v42[5] = v39;
        }

        while (v32 != v34);
      }

      else
      {
        v43 = (v76 + 32);
        do
        {
          v44 = *v43;
          v45 = [v44 productConfigId];
          if (v45)
          {
            v46 = v45;
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;
          }

          else
          {

            v47 = 0;
            v49 = 0;
          }

          v80 = v33;
          v51 = v33[2];
          v50 = v33[3];
          if (v51 >= v50 >> 1)
          {
            sub_10019F504((v50 > 1), v51 + 1, 1);
            v33 = v80;
          }

          v33[2] = v51 + 1;
          v52 = &v33[2 * v51];
          v52[4] = v47;
          v52[5] = v49;
          ++v43;
          --v32;
        }

        while (v32);
      }

      v29 = v73;
      v30 = v75;
      v27 = v68;
      v24 = v69;
    }

    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    v53 = Array.description.getter();
    v55 = v54;

    v56 = sub_1002FFA0C(v53, v55, &v81);

    v57 = v78;
    *(v78 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v24, v77, "%s: credential configs include %s", v57, 0x16u);
    swift_arrayDestroy();

    v28 = v74;
    v23 = v76;
  }

  else
  {
  }

  if (v27)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (v58)
    {
      goto LABEL_36;
    }

LABEL_54:
    v4 = _swiftEmptyArrayStorage;
LABEL_55:

    return v4;
  }

  v58 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_54;
  }

LABEL_36:
  v59 = 0;
  v77 = v23 & 0xFFFFFFFFFFFFFF8;
  v78 = v23 & 0xC000000000000001;
  v60 = (v30 + 48);
  v61 = (v30 + 32);
  v4 = _swiftEmptyArrayStorage;
  while (v78)
  {
    v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v63 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_50;
    }

LABEL_42:
    sub_100093A54(v62, v29);
    if ((*v60)(v29, 1, v28) == 1)
    {
      sub_100075768(v29, &qword_100502D50, &qword_100414C30);
    }

    else
    {
      v64 = *v61;
      (*v61)(v79, v29, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10012EDA4(0, v4[2] + 1, 1, v4);
      }

      v66 = v4[2];
      v65 = v4[3];
      if (v66 >= v65 >> 1)
      {
        v4 = sub_10012EDA4((v65 > 1), v66 + 1, 1, v4);
      }

      v4[2] = v66 + 1;
      v28 = v74;
      v64(v4 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v66);
      v29 = v73;
      v23 = v76;
    }

    ++v59;
    if (v63 == v58)
    {
      goto LABEL_55;
    }
  }

  if (v59 >= *(v77 + 16))
  {
    goto LABEL_51;
  }

  v62 = *(v23 + 8 * v59 + 32);
  v63 = v59 + 1;
  if (!__OFADD__(v59, 1))
  {
    goto LABEL_42;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_4:
  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_10051B2C8);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100462070, &v81);
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002FFA0C(v16, v17, &v81);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: CoreData error %s encountered while fetching entity", v15, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();

  return v4;
}

void sub_1000951CC(uint64_t a1, void *a2, void *a3)
{
  v59 = a3;
  v4 = type metadata accessor for UUID();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SECCredentialConfig();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = objc_allocWithZone(NSFetchRequest);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithEntityName:v14];

  type metadata accessor for CredentialMetadataEntity();
  v16 = v61;
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v16)
  {
  }

  else
  {
    v60 = v12;
    v53 = v9;
    v19 = v7;
    v48 = v6;
    v43 = v15;
    v49 = v4;
    v20 = v59[2];
    if (v20)
    {
      v61 = *(v54 + 16);
      v21 = v59 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v57 = *(v54 + 72);
      v58 = v17;
      v56 = (v54 + 8);
      v45 = (v52 + 8);
      v46 = "getCredentialMetadata(with:)";
      *&v18 = 136315394;
      v44 = v18;
      v22 = 0;
      v23 = v60;
      v47 = a2;
      v54 += 16;
      v55 = v19;
      for (i = v61(v60, v21, v19); ; i = v61(v23, v21, v19))
      {
        __chkstk_darwin(i);
        *(&v42 - 2) = v23;
        v26 = sub_10011F6D0(sub_100095A54, (&v42 - 4), v58);
        if (v26)
        {
          v59 = v26;
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          sub_1000958E4(v27, qword_10051B2C8);
          v28 = v53;
          v61(v53, v60, v19);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v52 = v22;
            v32 = v31;
            v51 = swift_slowAlloc();
            v62 = v51;
            *v32 = v44;
            *(v32 + 4) = sub_1002FFA0C(0xD00000000000001BLL, v46 | 0x8000000000000000, &v62);
            *(v32 + 12) = 2080;
            v33 = v48;
            SECCredentialConfig.configUUID.getter();
            v50 = UUID.uuidString.getter();
            v35 = v34;
            (*v45)(v33, v49);
            v25 = *v56;
            (*v56)(v28, v55);
            v36 = sub_1002FFA0C(v50, v35, &v62);
            a2 = v47;

            *(v32 + 14) = v36;
            _os_log_impl(&_mh_execute_header, v29, v30, "%s deleting credential config %s", v32, 0x16u);
            swift_arrayDestroy();

            v22 = v52;

            v19 = v55;
          }

          else
          {

            v19 = v55;
            v25 = *v56;
            (*v56)(v28, v55);
          }

          v37 = v59;
          [a2 deleteObject:v59];

          v23 = v60;
        }

        else
        {
          v25 = *v56;
        }

        v25(v23, v19);
        v21 += v57;
        if (!--v20)
        {
          break;
        }
      }
    }

    v62 = 0;
    v38 = [a2 save:&v62];
    v39 = v43;
    if (v38)
    {
      v40 = v62;
    }

    else
    {
      v41 = v62;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100095770(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  SECCredentialConfig.configUUID.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = [v6 productConfigId];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v7 == v12 && v9 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000958E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10009591C()
{
  result = qword_100504260;
  if (!qword_100504260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504260);
  }

  return result;
}

unint64_t sub_100095970()
{
  result = qword_100502D30;
  if (!qword_100502D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100502D30);
  }

  return result;
}

unint64_t sub_1000959BC()
{
  result = qword_100502D38;
  if (!qword_100502D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502D38);
  }

  return result;
}

uint64_t sub_100095A10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SECMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100095A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a1;
  v61 = a2;
  v4 = sub_100068FC4(&qword_100502F10, &qword_10040A010);
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v6 = &v53 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v8 + 104);
  v13(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v62 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    v22 = swift_once();
    goto LABEL_13;
  }

  v55 = v14;
  v56 = v13;
  v57 = v12;
  v14 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
  if (v3[OBJC_IVAR____TtC10seserviced13AlishaPairing_mode] == 1)
  {
    sub_100099870(3);
  }

  v13 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  v15 = v3[OBJC_IVAR____TtC10seserviced13AlishaPairing_state];
  v16 = Logger.logObject.getter();
  if (v15)
  {
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Already running", v18, 2u);
    }

    v19 = 2;
    goto LABEL_31;
  }

  v54 = v7;
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v16, v20, "Starting Owner Pairing", v21, 2u);
  }

  v53 = (v8 + 104);

  if (qword_1005019E8 != -1)
  {
    goto LABEL_39;
  }

LABEL_13:
  v23 = *(off_100504A68 + 3);
  __chkstk_darwin(v22);
  v24 = v62;
  *(&v53 - 2) = v3;
  *(&v53 - 1) = v24;
  os_unfair_lock_lock(v23 + 8);
  sub_1000B3FD8(&v23[4]);
  os_unfair_lock_unlock(v23 + 8);
  *(v14 + v3) = 2;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s", v53);
  *(v13 + v3) = 1;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v53);
  v25 = &v3[OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart];
  v26 = *&v3[OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart];
  v27 = *&v3[OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8];
  v28 = v61;
  *v25 = v60;
  v25[1] = v28;
  sub_1000B2A4C(v26, v27);
  v29 = qword_100501B78;

  if (v29 != -1)
  {
    swift_once();
  }

  if (byte_10051B5B8 != 1)
  {
    v19 = 4;
LABEL_31:
    sub_100099870(v19);
    return;
  }

  v60 = 0;
  *&v63[0] = 893797958;
  *(&v63[0] + 1) = 0xE400000000000000;
  v65 = 0;
  v66 = 0;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v30 = v59;
  UserDefaultBacked.wrappedValue.getter();
  (*(v58 + 8))(v6, v30);
  v58 = *(&v63[0] + 1);
  v59 = *&v63[0];
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v61 = qword_10051B288;
  sub_100068FC4(&unk_100504720, &qword_100414C40);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100409900;
  *(v31 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v31 + 40) = v32;
  *(v31 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v31 + 56) = v33;
  sub_100068FC4(&qword_100503F10, &qword_10040A008);
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100409A40;
  v39 = v38 + v37;
  if (qword_100501D30 != -1)
  {
    swift_once();
  }

  v40 = sub_1000958E4(v34, qword_10051B7A0);
  v41 = *(v35 + 16);
  v41(v39, v40, v34);
  if (qword_100501D20 != -1)
  {
    swift_once();
  }

  v42 = sub_1000958E4(v34, qword_10051B770);
  v41(v39 + v36, v42, v34);
  v43 = v39 + 2 * v36;
  if (qword_100501D28 != -1)
  {
    swift_once();
  }

  v44 = sub_1000958E4(v34, qword_10051B788);
  v41(v43, v44, v34);
  if (qword_100501B98 != -1)
  {
    swift_once();
  }

  v45 = *(qword_10051B5F8 + 16);
  type metadata accessor for DSKBLE.BLEScanRequest();
  v46 = swift_allocObject();
  v47 = v58;
  *(v46 + 16) = v59;
  *(v46 + 24) = v47;
  *(v46 + 32) = 196;
  *(v46 + 56) = 0;
  *(v46 + 64) = v45;
  *(v46 + 40) = v31;
  *(v46 + 48) = v38;
  *(v46 + 72) = 0;
  *(v46 + 80) = 0;
  *(v46 + 88) = 1;
  *(v46 + 96) = 0;
  *(v46 + 104) = sub_1000B387C;
  *(v46 + 112) = v3;
  *(v46 + 120) = sub_1000B389C;
  *(v46 + 128) = v3;
  *(v46 + 136) = sub_1000B38B4;
  *(v46 + 144) = v3;
  *(v46 + 152) = sub_1000B38B8;
  *(v46 + 160) = v3;
  *(v46 + 168) = sub_1000B38BC;
  *(v46 + 176) = v3;
  *(v46 + 184) = sub_1000B38C0;
  *(v46 + 192) = v3;
  *(v46 + 200) = 0;
  *(v46 + 208) = 0;
  swift_retain_n();

  v48 = v60;
  sub_1000E7EB0(v46);

  if (!v48)
  {
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v49 = qword_10051B5A0;
    v50 = v62;
    *v10 = v62;
    v51 = v54;
    v56(v10, v57, v54);
    v52 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v55(v10, v51);
    if (v50)
    {
      *(v49 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 1;
      if (qword_100501B70 == -1)
      {
LABEL_36:
        v64 = 0;
        memset(v63, 0, sizeof(v63));
        sub_1002400AC(0, v63);
        sub_100075768(v63, &qword_100502F08, &qword_10040A000);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_36;
  }

  *&v63[0] = v48;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast() && v65 == 3)
  {

    sub_100099870(0);
  }

  else
  {

    sub_100099870(2);
  }
}

void sub_100096454()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode);
    v9 = Logger.logObject.getter();
    if (v8 == 2)
    {
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Stopping", v11, 2u);
      }

      sub_100099870(2);
    }

    else
    {
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, v12, "Not running", v13, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000966A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "pairingEnded", v12, 2u);
      }

      if (a1)
      {
        swift_errorRetain();
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          swift_errorRetain();
          v17 = _swift_stdlib_bridgeErrorToNSError();
          *(v15 + 4) = v17;
          *v16 = v17;
          _os_log_impl(&_mh_execute_header, v13, v14, "Pairing ended with error %@", v15, 0xCu);
          sub_100075768(v16, &unk_100503F70, &unk_10040B2E0);
        }

        sub_100099870(2);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10009695C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_9:
    v16 = sub_100239160(0, 12, a1, a2);
    v18 = v17;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v16, v18, v9);
    sub_10006A178(v16, v18);

    return 0;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2)
  {
    sub_100069DD8();
    result = swift_allocError();
    *v19 = 2;
    return result;
  }

  v9 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
  if (v9)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1002FFA0C(1430540353, 0xE400000000000000, v25);
      _os_log_impl(&_mh_execute_header, v12, v13, "Sending %s", v14, 0xCu);
      sub_1000752F4(v15);
    }

    if (qword_100501B60 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Missing peer", v22, 2u);
  }

  sub_100099870(2);
  sub_100069DD8();
  result = swift_allocError();
  *v23 = 2;
  return result;
}

void sub_100096E44()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if (*(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Session ended", v9, 2u);
      }

      sub_100099870(6);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10009701C(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v41 = v5;
    __chkstk_darwin(v17);
    v11 = &v37[-32];
    *&v37[-16] = a1;
    *&v37[-8] = a2;
    if (qword_1005019E8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v18 = swift_once();
LABEL_5:
  __chkstk_darwin(v18);
  *&v37[-16] = sub_1000B3C64;
  *&v37[-8] = v11;
  v20 = *(v19 + 24);
  __chkstk_darwin(v21);
  *&v37[-32] = sub_1000B3FF8;
  *&v37[-24] = v22;
  *&v37[-16] = v23;
  os_unfair_lock_lock(v20 + 8);
  sub_1000B3F58(&v20[4], aBlock);
  os_unfair_lock_unlock(v20 + 8);
  v24 = aBlock[0];
  if (aBlock[0])
  {
    v25 = [aBlock[0] blePairingRequest];
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      sub_100069E2C(a1, a2);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v39 = v29;
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v29 = 136315138;
        v45 = sub_100288788(a1, a2);
        v38 = v28;
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        v33 = sub_1002FFA0C(v30, v32, aBlock);

        v34 = v39;
        *(v39 + 1) = v33;
        _os_log_impl(&_mh_execute_header, v27, v38, "Request to start First Approach for %s", v34, 0xCu);
        sub_1000752F4(v40);
      }

      if (qword_100501D98 != -1)
      {
        swift_once();
      }

      v35 = swift_allocObject();
      v35[2] = a1;
      v35[3] = a2;
      v35[4] = v44;
      aBlock[4] = sub_1000B3CAC;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C6348;
      v36 = _Block_copy(aBlock);
      sub_100069E2C(a1, a2);

      static DispatchQoS.unspecified.getter();
      v45 = _swiftEmptyArrayStorage;
      sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v36);
      (*(v41 + 8))(v7, v4);
      (*(v42 + 8))(v10, v43);
    }
  }
}

void sub_1000976F4(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v7 + 104;
  v145 = *(v7 + 104);
  v145(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v144 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v13 = v15;
  v15(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:

    v48 = v130;
LABEL_84:
    swift_deallocUninitializedObject();

    goto LABEL_109;
  }

  v141 = v11;
  v142 = v12;
  v143 = v13;
  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
    if (v16 && (v17 = [v16 keyIdentifier]) != 0)
    {
      v18 = v17;
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v21 >> 60 != 15)
      {
        if (a2 >> 60 != 15)
        {
          sub_100069E2C(a1, a2);
          sub_10006A2BC(v19, v21);
          v22 = sub_10008FB4C(v19, v21, a1, a2);
          sub_10006A2D0(v19, v21);
          sub_10006A2D0(a1, a2);
          sub_10006A2D0(v19, v21);
          if (v22)
          {
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        sub_100069E2C(a1, a2);
        sub_10006A2D0(v19, v21);
        sub_10006A2D0(a1, a2);
        goto LABEL_15;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0xF000000000000000;
    }

    if (a2 >> 60 == 15)
    {
      sub_100069E2C(a1, a2);
      sub_10006A2D0(v19, v21);
      return;
    }

    goto LABEL_14;
  }

LABEL_15:
  v23 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
  swift_beginAccess();
  v140 = v23;
  v24 = *(v3 + v23);

  v25 = sub_1000C66AC(a1, a2, v24);

  if (v25)
  {
    return;
  }

  __chkstk_darwin(v26);
  *(&v125 - 2) = a1;
  *(&v125 - 1) = a2;
  if (qword_1005019E8 != -1)
  {
    v27 = swift_once();
  }

  __chkstk_darwin(v27);
  *(&v125 - 2) = sub_1000B356C;
  *(&v125 - 1) = (&v125 - 4);
  v29 = *(v28 + 24);
  __chkstk_darwin(v30);
  *(&v125 - 4) = sub_10006A280;
  *(&v125 - 3) = v31;
  v138 = v32;
  *(&v125 - 2) = v32;
  os_unfair_lock_lock(v29 + 8);
  sub_1000B358C(&v29[4], v147);
  os_unfair_lock_unlock(v29 + 8);
  v33 = v147[0];
  if (!v147[0])
  {
    return;
  }

  v131 = v14;
  v34 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  sub_100069E2C(a1, a2);
  v139 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  sub_10006A178(a1, a2);
  v37 = os_log_type_enabled(v35, v36);
  v134 = a2;
  v133 = a1;
  v132 = v6;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v147[0] = v136;
    *v38 = 136315138;
    v39 = sub_100288788(a1, a2);
    v137 = 0;
    v146[0] = v39;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v40 = BidirectionalCollection<>.joined(separator:)();
    v42 = v41;

    v43 = sub_1002FFA0C(v40, v42, v147);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Starting First Approach for %s", v38, 0xCu);
    sub_1000752F4(v136);
  }

  else
  {
    v137 = 0;
  }

  v44 = [v33 deviceConfiguration];
  if (!v44)
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Missing device configuration", v61, 2u);
    }

    return;
  }

  v45 = v44;
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v51 = [v49 TLVsWithData:isa];

  v135 = v33;
  if (!v51)
  {
    goto LABEL_110;
  }

  v52 = sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = v46;
  v130 = v48;
  if (!v54)
  {
LABEL_108:

    v48 = v130;
    goto LABEL_109;
  }

  v128 = v52;
  v55 = 0;
  while (1)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v56 = *(v53 + 8 * v55 + 32);
    }

    v57 = v56;
    v58 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_94;
    }

    if ([v56 tag] == 32585)
    {
      break;
    }

    ++v55;
    if (v58 == v54)
    {
      goto LABEL_108;
    }
  }

  v62 = [v57 children];
  if (!v62)
  {
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    return;
  }

  v63 = v62;
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v64 >> 62)
  {
LABEL_106:
    v65 = _CocoaArrayWrapper.endIndex.getter();
    if (v65)
    {
      goto LABEL_43;
    }

    goto LABEL_107;
  }

  v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
LABEL_107:

    goto LABEL_108;
  }

LABEL_43:
  v66 = 0;
  v136 = v57;
  while ((v64 & 0xC000000000000001) == 0)
  {
    if (v66 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_98;
    }

    v67 = *(v64 + 8 * v66 + 32);
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_52;
    }

LABEL_47:
    v57 = v67;
    if ([v67 tag] == 32594)
    {
      goto LABEL_53;
    }

    ++v66;
    v57 = v136;
    if (v68 == v65)
    {
      goto LABEL_107;
    }
  }

  v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v68 = v66 + 1;
  if (!__OFADD__(v66, 1))
  {
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  v126 = v57;
  v69 = [v57 children];
  if (!v69)
  {
    goto LABEL_121;
  }

  v64 = v69;
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v70 >> 62)
  {
LABEL_116:
    v57 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v57 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v127 = swift_allocObject();
  if (v57)
  {
    v71 = 0;
    v72 = v70 & 0xC000000000000001;
    v73 = v70 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v72)
      {
        v74 = v70;
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v71 >= *(v73 + 16))
        {
          goto LABEL_105;
        }

        v74 = v70;
        v75 = *(v70 + 8 * v71 + 32);
      }

      v64 = v75;
      v70 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if ([v75 tag] == 208)
      {
        break;
      }

      ++v71;
      v76 = v70 == v57;
      v70 = v74;
      if (v76)
      {
        goto LABEL_67;
      }
    }

    v77 = [v64 value];

    v48 = v130;
    if (!v77)
    {

      goto LABEL_68;
    }

    v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v81 = v127;
    *(v127 + 16) = v78;
    *(v81 + 24) = v80;
    v82 = [v126 children];
    if (!v82)
    {
      goto LABEL_122;
    }

    v83 = v82;

    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v53 >> 62)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v64 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v128 = swift_allocObject();
    if (!v64)
    {
LABEL_83:

      goto LABEL_84;
    }

    v84 = 0;
    while (1)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v84 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_115;
        }

        v85 = *(v53 + 8 * v84 + 32);
      }

      v86 = v85;
      v70 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if ([v85 tag] == 209)
      {
        break;
      }

      ++v84;
      v48 = v130;
      if (v70 == v64)
      {
        goto LABEL_83;
      }
    }

    v87 = [v86 value];

    if (!v87)
    {
      goto LABEL_96;
    }

    v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91 = v128;
    *(v128 + 16) = v88;
    *(v91 + 24) = v90;
    v92 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v147[3] = v92;
    v147[4] = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28, &protocol conformance descriptor for <A> CollectionOfOne<A>);
    LOBYTE(v147[0]) = 0;
    LOBYTE(v146[0]) = *sub_1000752B0(v147, v92);
    Data._Representation.replaceSubrange(_:with:count:)();
    v93 = sub_1000752F4(v147);
    v94 = v127;
    sub_1000A517C(v93);
    swift_beginAccess();
    v95 = v133;
    v96 = v134;
    sub_100069E2C(v133, v134);
    sub_1000D589C(v146, v95, v96);
    swift_endAccess();
    v97 = sub_10006A178(v146[0], v146[1]);
    v98 = *(v138 + 24);
    __chkstk_darwin(v97);
    v99 = v144;
    *(&v125 - 2) = v3;
    *(&v125 - 1) = v99;
    os_unfair_lock_lock(v98 + 8);
    sub_1000B35E4(&v98[4]);
    os_unfair_lock_unlock(v98 + 8);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v64 = qword_10051B288;
    v53 = swift_allocObject();
    *(v53 + 16) = v128;
    *(v53 + 24) = v3;
    *(v53 + 32) = v95;
    *(v53 + 40) = v96;
    *(v53 + 48) = v94;
    *v9 = v99;
    v100 = v99;
    v101 = v132;
    v145(v9, v141, v132);
    v102 = v100;
    v103 = v95;
    sub_100069E2C(v95, v96);

    v104 = _dispatchPreconditionTest(_:)();
    v143(v9, v101);
    if (v104)
    {
      v105 = *(v64 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
      if (v105 == 10 || v105 == 5)
      {
        v106 = v64;
        v107 = v128;
        swift_beginAccess();
        v108 = *(v107 + 16);
        v109 = *(v107 + 24);
        sub_100069E2C(v103, v96);
        v110 = v127;

        sub_100069E2C(v108, v109);
        sub_100111E28(v108, v109, v106, v103, v96, v3, v107, v110);

        sub_10006A178(v103, v96);
        sub_10006A178(v108, v109);
        v111 = v136;
        v112 = v130;
        goto LABEL_102;
      }

LABEL_98:
      v104 = swift_allocObject();
      *(v104 + 16) = sub_1000B3618;
      *(v104 + 24) = v53;
      v3 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
      swift_beginAccess();
      v95 = *(v64 + v3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v64;
      *(v64 + v3) = v95;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_99:
        v115 = v95[2];
        v114 = v95[3];
        if (v115 >= v114 >> 1)
        {
          v95 = sub_10012E6B0((v114 > 1), v115 + 1, 1, v95);
        }

        v95[2] = v115 + 1;
        v116 = &v95[3 * v115];
        *(v116 + 32) = 1;
        v116[5] = sub_1000B3FF0;
        v116[6] = v104;
        *(v101 + v3) = v95;
        swift_endAccess();
        v112 = v130;
        v111 = v136;
LABEL_102:

        sub_10006A178(v129, v112);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    v95 = sub_10012E6B0(0, v95[2] + 1, 1, v95);
    *(v101 + v3) = v95;
    goto LABEL_99;
  }

LABEL_67:

  v48 = v130;
LABEL_68:

  swift_deallocUninitializedObject();
LABEL_109:
  v46 = v129;
LABEL_110:
  sub_100069E2C(v46, v48);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.error.getter();
  sub_10006A178(v46, v48);
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v147[0] = v120;
    *v119 = 136315138;
    v146[0] = sub_100288788(v46, v48);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v121 = BidirectionalCollection<>.joined(separator:)();
    v123 = v122;

    v124 = sub_1002FFA0C(v121, v123, v147);

    *(v119 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v117, v118, "Invalid device configuration %s", v119, 0xCu);
    sub_1000752F4(v120);

    sub_10006A178(v46, v48);
  }

  else
  {

    sub_10006A178(v46, v48);
  }
}

void *sub_10009894C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    sub_10019F3C0(0, v4, 0);
    v35 = _swiftEmptyArrayStorage;
    v6 = v3 + 56;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v28 = v3 + 64;
    v29 = v4;
    v30 = v3 + 56;
    v31 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = v8;
      v34 = *(v3 + 36);
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      sub_100069E2C(*v11, v13);
      v33 = v2;
      sub_100288788(v12, v13);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;

      result = sub_10006A178(v12, v13);
      v17 = v35;
      v19 = v35[2];
      v18 = v35[3];
      if (v19 >= v18 >> 1)
      {
        result = sub_10019F3C0((v18 > 1), v19 + 1, 1);
        v17 = v35;
      }

      v17[2] = v19 + 1;
      v20 = &v17[2 * v19];
      v20[4] = v14;
      v20[5] = v16;
      v3 = v31;
      v9 = 1 << *(v31 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v6 = v30;
      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v35 = v17;
      if (v34 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v2 = v33;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        v2 = v33;
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1000937D4(v7, v34, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v7, v34, 0);
      }

LABEL_4:
      v8 = v32 + 1;
      v7 = v9;
      if (v32 + 1 == v29)
      {
        return v35;
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

void *sub_100098C20(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v42 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v34)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v39 = result;
  v40 = v5;
  v41 = v34 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v31 = v1 + 56;
    v30 = v1 + 64;
    v32 = v2;
    v33 = v1;
    while (v6 < v2)
    {
      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
        goto LABEL_37;
      }

      v35 = v9;
      v10 = v41;
      v36 = v40;
      v37 = v39;
      result = sub_10008EDB4(v39, v40, v41, v1);
      v11 = (result + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v12 = *(result + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v12 >> 60 == 15)
      {
        goto LABEL_42;
      }

      v13 = *v11;
      sub_100069E2C(*v11, v12);
      v38 = sub_100288788(v13, v12);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;
      sub_10006A2D0(v13, v12);

      v42 = v3;
      v18 = v3[2];
      v17 = v3[3];
      if (v18 >= v17 >> 1)
      {
        sub_10019F3C0((v17 > 1), v18 + 1, 1);
        v3 = v42;
      }

      v3[2] = v18 + 1;
      v19 = &v3[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      if (v34)
      {
        v1 = v33;
        result = v37;
        if (!v10)
        {
          goto LABEL_43;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v32;
        sub_100068FC4(&qword_100502C08, &qword_100409CC8);
        v7 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v7(&v38, 0);
      }

      else
      {
        v1 = v33;
        result = v37;
        if (v10)
        {
          goto LABEL_44;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v20 = 1 << *(v33 + 32);
        if (v37 >= v20)
        {
          goto LABEL_38;
        }

        v21 = v37 >> 6;
        v22 = *(v31 + 8 * (v37 >> 6));
        if (((v22 >> v37) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v33 + 36) != v36)
        {
          goto LABEL_40;
        }

        v23 = v22 & (-2 << (v37 & 0x3F));
        if (v23)
        {
          v20 = __clz(__rbit64(v23)) | v37 & 0x7FFFFFFFFFFFFFC0;
          v2 = v32;
        }

        else
        {
          v24 = v21 << 6;
          v25 = v21 + 1;
          v26 = (v30 + 8 * v21);
          v2 = v32;
          while (v25 < (v20 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              result = sub_1000937D4(v37, v36, 0);
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_33;
            }
          }

          result = sub_1000937D4(v37, v36, 0);
        }

LABEL_33:
        v29 = *(v33 + 36);
        v39 = v20;
        v40 = v29;
        v41 = 0;
      }

      v6 = v35;
      if (v35 == v2)
      {
        sub_1000937D4(v39, v40, v41);
        return v3;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10009901C()
{
  type metadata accessor for AlishaPairing(0);
  swift_allocObject();
  result = sub_1000991C8();
  qword_10051B230 = result;
  return result;
}

void sub_10009905C(void *a1, uint64_t a2, const char *a3, ...)
{

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = String.init<A>(describing:)();
    v9 = sub_1002FFA0C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, a3, v5, 0xCu);
    sub_1000752F4(v6);
  }

  else
  {
  }
}

uint64_t sub_1000991C8()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) = 0;
  v1 = (v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachPeers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) = 256;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers) = &_swiftEmptySetSingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_1000B2F98;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004C6078;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

_DWORD *sub_1000993A4()
{
  v1 = v0;
  v2 = 1701736302;
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  if (v3)
  {
    v4 = [v3 publicKeyIdentifier];
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *&v37 = sub_100288788(v5, v7);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;
    sub_10006A178(v5, v7);

    v38 = &type metadata for String;
    v11 = 0xE400000000000000;
    if (v10)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1701736302;
    }

    if (v10)
    {
      v11 = v10;
    }
  }

  else
  {
    v38 = &type metadata for String;
    v11 = 0xE400000000000000;
    v12 = 1701736302;
  }

  *&v37 = v12;
  *(&v37 + 1) = v11;
  sub_100075D50(&v37, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v36, 0x746E696F70646E65, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v14 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed);
  v38 = &type metadata for Bool;
  LOBYTE(v37) = v14;
  sub_100075D50(&v37, v36);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v36, 0xD000000000000011, 0x80000001004620C0, v15);
  LOBYTE(v37) = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode);
  v16 = String.init<A>(describing:)();
  v38 = &type metadata for String;
  *&v37 = v16;
  *(&v37 + 1) = v17;
  sub_100075D50(&v37, v36);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v36, 1701080941, 0xE400000000000000, v18);
  if (!*(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    v38 = &type metadata for String;
    goto LABEL_13;
  }

  v19 = UUID.uuidString.getter();
  v21 = v20;

  v38 = &type metadata for String;
  if (!v21)
  {
LABEL_13:
    v21 = 0xE400000000000000;
    goto LABEL_14;
  }

  v2 = v19;
LABEL_14:
  *&v37 = v2;
  *(&v37 + 1) = v21;
  sub_100075D50(&v37, v36);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v36, 1919247728, 0xE400000000000000, v22);
  swift_beginAccess();

  v24 = sub_100098C20(v23);

  v25 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v38 = v25;
  *&v37 = v24;
  sub_100075D50(&v37, v36);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v36, 0xD000000000000015, 0x8000000100462260, v26);
  swift_beginAccess();

  v28 = sub_10009894C(v27);

  v38 = v25;
  *&v37 = v28;
  sub_100075D50(&v37, v36);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v36, 0xD000000000000018, 0x8000000100462280, v29);
  LOBYTE(v37) = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state);
  v30 = String.init<A>(describing:)();
  v38 = &type metadata for String;
  *&v37 = v30;
  *(&v37 + 1) = v31;
  sub_100075D50(&v37, v36);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v36, 0x6574617473, 0xE500000000000000, v32);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = sub_100015DA0("alishapairing.state", isa);

  return v34;
}

void sub_100099870(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v86 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  __chkstk_darwin(v7);
  v91 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = *(v10 + 104);
  v15(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v97 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v98 = *(v10 + 8);
  v98(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_71:
    swift_once();
    goto LABEL_54;
  }

  if (!*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state))
  {
    return;
  }

  v94 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  v95 = v15;
  v96 = v14;
  v83 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Clean up", v18, 2u);
  }

  v90 = v10 + 104;
  if (v3 == 6 || (v19 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer)) == 0)
  {
    v44 = 0;
    goto LABEL_32;
  }

  v20 = qword_100501B70;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B5B0;

  v22 = sub_10024F2B4(v21, v19);

  v23 = sub_1000CA828(v22);

  if (v23)
  {
    sub_100246878(v24, v25);
  }

  v82 = v19;
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  v80 = v3;
  v26 = v97;
  *v12 = v97;
  v95(v12, v96, v9);
  v78 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v98(v12, v9);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  v27 = *(v92 + 16);
  v19 = v82;
  v75 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v28 = v91;
  v77 = v92 + 16;
  v76 = v27;
  v27(v91, v82 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v93);
  swift_beginAccess();
  sub_1000C4DD4(0, 0, 0, 1, v28);
  swift_endAccess();
  if (qword_100501968 != -1)
  {
LABEL_75:
    swift_once();
  }

  sub_1000E885C(v19);
  v29 = sub_1002B3B94(&off_1004C34E8);
  v81 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v29;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1002FFA0C(0x5F4C4152454E4547, 0xED0000524F525245, aBlock);
    _os_log_impl(&_mh_execute_header, v31, v32, "Sending %s", v34, 0xCu);
    sub_1000752F4(v35);

    v29 = v33;
  }

  v36 = v82;
  v37 = v81;
  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v79 = v29;
  v38 = sub_100239160(3, 17, v29, v37);
  v40 = v39;
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v41 = v40;
  v42 = v36;
  v43 = v40;
  v44 = 0;
  sub_1000E71A0(v38, v41, v42);
  sub_10006A178(v79, v37);
  sub_10006A178(v38, v43);
  v45 = v82;
  if (*(v2 + v94) - 8 < 3)
  {
    v46 = v91;
    v47 = v93;
    v76(v91, v82 + v75, v93);
    v48 = v92;
    v49 = *(v92 + 80);
    v83 = 0;
    v50 = (v49 + 24) & ~v49;
    v51 = swift_allocObject();
    *(v51 + 16) = v2;
    v52 = v46;
    v45 = v82;
    (*(v48 + 32))(v51 + v50, v52, v47);
    aBlock[4] = sub_1000B2C94;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004C6050;
    v93 = _Block_copy(aBlock);

    v53 = v84;
    static DispatchQoS.unspecified.getter();
    v99 = _swiftEmptyArrayStorage;
    v92 = sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    v54 = v86;
    v55 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v56 = v93;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);
    (*(v88 + 8))(v54, v55);
    v57 = v53;
    v44 = v83;
    (*(v85 + 8))(v57, v87);
  }

  LOBYTE(v3) = v80;
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  sub_1002A7730(v58);

  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  sub_1003488C8(v45);

LABEL_32:
  v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
  v8 = &unk_100502000;
  if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode))
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 1)
    {
      if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
      {
        swift_beginAccess();

        sub_10010DAA4(v59);
        swift_endAccess();
      }
    }

    else
    {
      v60 = v3;
      if (v3 == 6)
      {
        if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) == 1)
        {
          if (qword_1005018E0 != -1)
          {
            swift_once();
          }

          sub_1000684C4();
        }
      }

      else
      {
        if (qword_1005018E0 != -1)
        {
          swift_once();
        }

        sub_10006877C(v3);
      }

      if (qword_1005018E0 != -1)
      {
        swift_once();
      }

      sub_100068B94();
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E8C60(893797958, 0xE400000000000000);
      if (v44)
      {
      }

      if (qword_1005019E8 != -1)
      {
        swift_once();
      }

      v3 = *(off_100504A68 + 3);
      os_unfair_lock_lock((v3 + 32));
      sub_1000B2BB4((v3 + 16));
      os_unfair_lock_unlock((v3 + 32));
      LOBYTE(v3) = v60;
      v8 = &unk_100502000;
    }
  }

  if (qword_100501B60 != -1)
  {
    goto LABEL_71;
  }

LABEL_54:
  v61 = qword_10051B5A0;
  v62 = v97;
  *v12 = v97;
  v95(v12, v96, v9);
  v63 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v98(v12, v9);
  if (v62)
  {
    *(v61 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 0;
    if (qword_1005019E8 == -1)
    {
      goto LABEL_56;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_56:
  v64 = sub_1000CAA04();
  if ((v64 & 0xC000000000000001) != 0)
  {
    v65 = __CocoaSet.count.getter();

    if (v65)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v66 = v64[2];

    if (v66)
    {
      goto LABEL_67;
    }
  }

  v67 = sub_1000CAA04();
  if ((v67 & 0xC000000000000001) != 0)
  {
    v68 = __CocoaSet.count.getter();

    if (!v68)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v69 = v67[2];

    if (!v69)
    {
LABEL_64:
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      sub_100240A9C(0);
    }
  }

LABEL_67:
  *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) = 256;
  v70 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = 0;

  *(v2 + v8[428]) = 0;
  *(v15 + v2) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s", v74[0]);
  v71 = (v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v72 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v73 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
  *v71 = 0;
  v71[1] = 0;
  sub_1000B2A4C(v72, v73);
  *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = 0;

  *(v2 + v94) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v74[0]);
  if (v3 != 3)
  {
    sub_10009CCF8();
  }
}

uint64_t sub_10009A884(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
    if (*(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2 || *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) && (, v16 = static UUID.== infix(_:_:)(), , (v16 & 1) != 0))
    {

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = v3;
        v34 = v20;
        v38 = v20;
        *v19 = 136315138;
        type metadata accessor for UUID();
        v35 = a2;
        sub_1000B2B6C(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = Dictionary.description.getter();
        v23 = sub_1002FFA0C(v21, v22, &v38);
        a2 = v35;

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Read characteristics %s", v19, 0xCu);
        sub_1000752F4(v34);
        v4 = v36;
      }

      if (*(v5 + v15) != 2 || (v24 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state, *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 1))
      {
        if (qword_100501B98 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = 136315138;
        v37 = *(v5 + v24);
        v30 = String.init<A>(describing:)();
        v32 = sub_1002FFA0C(v30, v31, &v38);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "Wrong state %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      sub_100099870(2);
    }

    sub_100069DD8();
    swift_allocError();
    *v33 = 2;
    return swift_willThrow();
  }

  __break(1u);
LABEL_20:
  swift_once();
LABEL_12:
  result = sub_100250494(a1, a2);
  if (!v4)
  {
    *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) = WORD1(result);
  }

  return result;
}

void sub_10009AD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v58 = type metadata accessor for UUID();
  v7 = *(v58 - 8);
  __chkstk_darwin(v58);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v17(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (!a1)
  {
    v16 = a2;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60[0] = v38;
      *v37 = 136315138;
      v39 = UUID.uuidString.getter();
      v41 = sub_1002FFA0C(v39, v40, v60);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Channel established %s", v37, 0xCu);
      sub_1000752F4(v38);
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
    {

      if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
      {
        v42 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
        if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 1)
        {

          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v60[0] = v53;
            *v52 = 136315138;
            v59 = *(v3 + v42);
            v54 = String.init<A>(describing:)();
            v56 = sub_1002FFA0C(v54, v55, v60);

            *(v52 + 4) = v56;
            _os_log_impl(&_mh_execute_header, v50, v51, "Wrong state %s", v52, 0xCu);
            sub_1000752F4(v53);
          }

          sub_100099870(2);
          goto LABEL_34;
        }

        *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 2;
        sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v57[0]);
      }
    }

    if (qword_100501B70 == -1)
    {
LABEL_26:
      v43 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion);
      v60[3] = v6;
      v60[4] = &off_1004C5EF0;
      v60[0] = v3;

      sub_1002413A0(v16, v43, v60);
      sub_1000752F4(v60);
      v44 = objc_opt_self();
      UUID.uuidString.getter();
      v45 = String._bridgeToObjectiveC()();

      sub_10004CA44(v44, v45);

      return;
    }

LABEL_36:
    swift_once();
    goto LABEL_26;
  }

  v60[0] = a1;
  swift_errorRetain();
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast() && v59 == 6)
  {
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Trying to unpair since we're paired but the peripheral unpaired from us", v21, 2u);
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode))
    {
      if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 1)
      {
        if (qword_100501968 != -1)
        {
          swift_once();
        }

        v22 = *(v7 + 16);
        v57[1] = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
        v23 = v58;
        v22(v9, v18 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v58);
        v24 = swift_allocObject();
        *(v24 + 16) = v18;
        *(v24 + 24) = v3;
        type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
        v25 = swift_allocObject();
        (*(v7 + 32))(v25 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v9, v23);
        v26 = (v25 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
        *v26 = 0;
        v26[1] = 0;
        v27 = (v25 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
        *v27 = sub_1000B386C;
        v27[1] = v24;

        sub_1000E82EC(v25);
      }

      else
      {
        if (qword_100501968 != -1)
        {
          swift_once();
        }

        v46 = v58;
        (*(v7 + 16))(v9, v18 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v58);
        type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
        v47 = swift_allocObject();
        (*(v7 + 32))(v47 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v9, v46);
        v48 = (v47 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
        *v48 = 0;
        v48[1] = 0;
        v49 = (v47 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
        *v49 = sub_1000B3874;
        v49[1] = v3;

        sub_1000E82EC(v47);
      }

LABEL_34:

      return;
    }
  }

  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v60[0] = v31;
    *v30 = 136315138;
    swift_getErrorValue();
    v32 = Error.localizedDescription.getter();
    v34 = sub_1002FFA0C(v32, v33, v60);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to open channel %s", v30, 0xCu);
    sub_1000752F4(v31);
  }

  sub_100099870(2);
}