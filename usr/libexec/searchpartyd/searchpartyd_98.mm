uint64_t sub_100ACAE68()
{
  v37 = v0;
  (*(v0 + 536))(*(v0 + 408), *(v0 + 448), *(v0 + 376));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v35 = *(v0 + 448);
    v3 = *(v0 + 408);
    v4 = *(v0 + 376);
    v5 = *(v0 + 384);
    v34 = *(v0 + 368);
    v6 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v10 = *(v5 + 8);
    v10(v3, v4);
    v11 = sub_1000136BC(v7, v9, &v36);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v36);

    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error reading latest advertisement from ObservationService beacon: %{private,mask.hash}s, error: %{public}s.", v6, 0x20u);
    swift_arrayDestroy();

    sub_100022C40(v34, type metadata accessor for BeaconIdentifier);
    v10(v35, v4);
  }

  else
  {
    v15 = *(v0 + 448);
    v16 = *(v0 + 408);
    v17 = *(v0 + 376);
    v18 = *(v0 + 384);
    v19 = *(v0 + 368);

    v20 = *(v18 + 8);
    v20(v16, v17);
    sub_100022C40(v19, type metadata accessor for BeaconIdentifier);
    v20(v15, v17);
  }

  v21 = *(v0 + 544) + 1;
  if (v21 == *(v0 + 512))
  {

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    *(v0 + 544) = v21;
    v24 = *(v0 + 536);
    v25 = *(v0 + 448);
    v26 = *(v0 + 376);
    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v29 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v21;
    *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v25, v29, v26);
    v30 = getuid();
    sub_1000294F0(v30);
    v24(v27 + *(v28 + 20), v25, v26);
    v31 = swift_task_alloc();
    *(v0 + 560) = v31;
    *v31 = v0;
    v31[1] = sub_100AC9744;
    v32 = *(v0 + 368);
    v33 = *(v0 + 328);

    return sub_1010CD810(v33, v32);
  }
}

uint64_t sub_100ACB390()
{
  v39 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 448);
  v3 = *(v0 + 400);
  v4 = *(v0 + 376);
  v5 = *(v0 + 240);
  (*(v0 + 592))(*(v0 + 424), v4);
  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  v1(v3, v2, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 592);
  v10 = *(v0 + 448);
  v11 = *(v0 + 400);
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  if (v8)
  {
    v37 = *(v0 + 448);
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v13;
    v17 = v16;
    v9(v11, v12);
    v18 = sub_1000136BC(v15, v17, &v38);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v34 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not read any attach events from ObservationService for beacon: %{private,mask.hash}s, %{public}@.", v14, 0x20u);
    sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v36);

    sub_100022C40(v35, type metadata accessor for BeaconIdentifier);
    v20 = v37;
  }

  else
  {

    v9(v11, v12);
    sub_100022C40(v13, type metadata accessor for BeaconIdentifier);
    v20 = v10;
  }

  v9(v20, v12);
  v21 = *(v0 + 544) + 1;
  if (v21 == *(v0 + 512))
  {

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    *(v0 + 544) = v21;
    v24 = *(v0 + 536);
    v25 = *(v0 + 448);
    v26 = *(v0 + 376);
    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v29 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v21;
    *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v25, v29, v26);
    v30 = getuid();
    sub_1000294F0(v30);
    v24(v27 + *(v28 + 20), v25, v26);
    v31 = swift_task_alloc();
    *(v0 + 560) = v31;
    *v31 = v0;
    v31[1] = sub_100AC9744;
    v32 = *(v0 + 368);
    v33 = *(v0 + 328);

    return sub_1010CD810(v33, v32);
  }
}

uint64_t sub_100ACB8B8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007F54();
  v7 = v6[2];
  if (v7)
  {
    v16 = a1;
    v20 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v7, 0);
    v8 = v20;
    v15 = v6;
    v9 = (v6 + 4);
    do
    {
      sub_10001F280(v9, v17);
      v11 = v18;
      v10 = v19;
      sub_1000035D0(v17, v18);
      (*(*(*(v10 + 8) + 8) + 32))(v11);
      sub_100007BAC(v17);
      v20 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_101123D4C((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      v8[2] = v13 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v5, v2);
      v9 += 40;
      --v7;
    }

    while (v7);

    a1 = v16;
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_100ACBAA8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100AA5C88();
  if (v6[2])
  {
    sub_100022A54(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for OwnedBeaconRecord);

    v7 = *(v2 + 20);
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    (*(v9 + 16))(a1, &v5[v7], v8);
    sub_100022C40(v5, type metadata accessor for OwnedBeaconRecord);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {

    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_100ACBC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016A7900, &qword_1013D6920);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  sub_100AC53EC(a1, (&v15 - v8));
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
  {
    *(&v16 + 1) = v10;
    v17 = &off_1016265B0;
    v13 = sub_1000280DC(&v15);
    sub_10002911C(v9, v13, type metadata accessor for OwnedBeaconGroup);
    return sub_10000A748(&v15, a2);
  }

  sub_10000B3A8(v9, &unk_1016AF8B0, &unk_1013A0700);
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  sub_100AC6364(a1, v6);
  v11 = type metadata accessor for SharedBeaconGroup(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
  {
    *(a2 + 24) = v11;
    *(a2 + 32) = &off_10161CE28;
    v14 = sub_1000280DC(a2);
    result = sub_10002911C(v6, v14, type metadata accessor for SharedBeaconGroup);
    if (!*(&v16 + 1))
    {
      return result;
    }

    return sub_10000B3A8(&v15, &unk_1016AA480, &unk_1013BD050);
  }

  result = sub_10000B3A8(v6, &qword_1016A7900, &qword_1013D6920);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  if (*(&v16 + 1))
  {
    return sub_10000B3A8(&v15, &unk_1016AA480, &unk_1013BD050);
  }

  return result;
}

uint64_t sub_100ACBF00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = v3[9];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v6;
  aBlock[4] = sub_100B25324;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647708;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

uint64_t sub_100ACC20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v4 = type metadata accessor for OSSignpostID();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OSSignposter();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000076D4(v7, qword_10177BA08);
  (*(v8 + 16))(v10, v14, v7);
  OSSignposter.init(logger:)();
  static OSSignpostID.exclusive.getter();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  v18 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v18, "duplicateReport", "", v15, 2u);
  sub_100ACC51C(v23, v24, v25);
  v19 = static os_signpost_type_t.end.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v19, v20, "duplicateReport", "", v15, 2u);

  (*(v27 + 8))(v6, v28);
  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_100ACC51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100025044();
  v13 = sub_100B20CDC(v12);

  v17 = *(a1 + 136);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  aBlock[4] = sub_100B25330;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647758;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

void *sub_100ACC81C(void (*a1)(void *, void), uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a1;
  v4 = type metadata accessor for StableIdentifier(0);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016B54D0, &qword_1013D6918);
  result = static _DictionaryStorage.copy(original:)();
  v8 = result;
  v9 = 0;
  v29 = a3;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 8;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v9 << 6);
      v20 = v29;
      v21 = *(v28 + 72) * v19;
      sub_100022A54(*(v29 + 48) + v21, v6, type metadata accessor for StableIdentifier);
      v22 = *(*(*(v20 + 56) + 8 * v19) + 16);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_10002911C(v6, v8[6] + v21, type metadata accessor for StableIdentifier);
      *(v8[7] + 8 * v19) = v22;
      v23 = v8[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v8[2] = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        v27(v8, 0);
      }

      v18 = *(v10 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id *sub_100ACCA44()
{

  v1 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconsChangedPoster;
  v2 = type metadata accessor for ThrottledDarwinPoster();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_unknownBeaconsChangedPoster, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_unknownBeaconsSetChangedPoster, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_separationMonitoringBeaconsChangedPoster, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_separationMonitoringStateChangedPoster, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_didPairPoster, v2);

  v4 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_transactionManager;
  v5 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  sub_1000BB27C(*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler), *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler + 8));
  sub_1000BB27C(*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged), *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged + 8));

  return v0;
}

uint64_t sub_100ACCDD4()
{
  sub_100ACCA44();

  return swift_deallocClassInstance();
}

uint64_t sub_100ACCE34(uint64_t a1)
{
  result = type metadata accessor for ThrottledDarwinPoster();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PressuredExitTransactionManager();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_100ACCFC4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1002ECE54(319, &qword_1016B5388, &qword_1016B5390, &unk_1013D64D8);
      if (v3 <= 0x3F)
      {
        sub_1002ECE54(319, &unk_1016B5398, &qword_1016AF8E0, &qword_101393130);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100ACD0DC()
{
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100ACD150(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords) = 0;

  *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords) = 0;

  v2 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconNamingRecordCache;
  swift_beginAccess();
  *(a1 + v2) = _swiftEmptyDictionarySingleton;

  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);
  swift_beginAccess();
  *(v3 + 16) = _swiftEmptyDictionarySingleton;

  swift_beginAccess();
  *(v3 + 24) = _swiftEmptyDictionarySingleton;
}

uint64_t sub_100ACD22C(char a1)
{
  *(v1 + 64) = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v1 + 24) = swift_task_alloc();
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_100ACD2F8;

  return daemon.getter();
}

uint64_t sub_100ACD2F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100ACD4D4;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100ACD4D4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100ACD654, 0, 0);
  }
}

uint64_t sub_100ACD654()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task info state changed for reason %ld.", v6, 0xCu);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  *(v0 + 16) = v5;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v7;
  v13[5] = v9;
  v13[6] = v11;
  sub_100A838F0(0, 0, v8, &unk_1013D6668, v13, (&type metadata for () + 1));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100ACD84C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100ACD8DC;

  return daemon.getter();
}

uint64_t sub_100ACD8DC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 24) = a1;

  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ItemSharingNotificationsService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v3 = v9;
  v3[1] = sub_100ACDAB8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100ACDAB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100ACDC2C, a1, 0);
  }
}

uint64_t sub_100ACDC2C()
{
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  swift_weakInit();
  v5 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v2 = v0;
  v2[1] = sub_100ACDD3C;

  return v5(v0 + 64, &unk_1013D6670, v1, v3);
}

uint64_t sub_100ACDD3C()
{
  v2 = *v1;

  v3 = *(v2 + 40);
  if (v0)
  {

    v4 = sub_100B27E1C;
  }

  else
  {

    v4 = sub_100ACDE98;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100ACDEB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ACDF14(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = a2;
  *(v14 + 24) = v15;
  aBlock[4] = sub_100B22B78;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016466A0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v5, v3);
  (*(v20 + 8))(v8, v21);
}

void sub_100ACE2D8()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100B2128C(v0);
  Transaction.capture()();
}

void sub_100ACE33C(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101694760 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10177ADF0, "Posting SPPersistentConnectionChanged Darwin notification from BeaconStore", 74, 2, _swiftEmptyArrayStorage);
  v2 = SPPersistentConnectionChangedNotification;

  sub_100B2128C(v2);
}

uint64_t sub_100ACE3E0()
{
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v0 + 16) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100ACE4A8;

  return daemon.getter();
}

uint64_t sub_100ACE4A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100ACE684;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100ACE684(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100ACE7F4, 0, 0);
  }
}

uint64_t sub_100ACE7F4()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  strcpy((v4 + 40), "CanBeLeashed");
  *(v4 + 53) = 0;
  *(v4 + 54) = -5120;
  sub_100A838F0(0, 0, v2, &unk_1013D6BC8, v4, (&type metadata for () + 1));

  v5 = v0[1];

  return v5();
}

uint64_t sub_100ACE914()
{
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v0 + 16) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100ACE9DC;

  return daemon.getter();
}

uint64_t sub_100ACE9DC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100ACEBB8;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100ACEBB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100ACED28, 0, 0);
  }
}

uint64_t sub_100ACED28()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  strcpy((v4 + 40), "CanBeLeashed");
  *(v4 + 53) = 0;
  *(v4 + 54) = -5120;
  sub_100A838F0(0, 0, v2, &unk_1013D66C8, v4, (&type metadata for () + 1));

  v5 = v0[1];

  return v5();
}

void sub_100ACEE48()
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B780);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Posting SPSeparationMonitoringSafeLocationsChanged Darwin notification from BeaconStore", v3, 2u);
  }

  v4 = SPSeparationMonitoringSafeLocationsChangedNotification;

  sub_100B2128C(v4);
}

uint64_t sub_100ACEF3C()
{
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v0 + 16) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100ACF004;

  return daemon.getter();
}

uint64_t sub_100ACF004(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100ACF1E0;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100ACF1E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100ACF350, 0, 0);
  }
}

uint64_t sub_100ACF350()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  strcpy((v4 + 40), "CanBeLeashed");
  *(v4 + 53) = 0;
  *(v4 + 54) = -5120;
  sub_100A838F0(0, 0, v2, &unk_1013D6740, v4, (&type metadata for () + 1));

  v5 = v0[1];

  return v5();
}

uint64_t sub_100ACF470(uint64_t a1)
{
  v2 = v1;
  v120 = type metadata accessor for BeaconStoreFileRecord(0);
  v100 = *(v120 - 8);
  __chkstk_darwin(v120);
  v114 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BeaconEstimatedLocation(0);
  v98 = *(v5 - 8);
  __chkstk_darwin(v5);
  v97 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v8 = __chkstk_darwin(v7 - 8);
  v113 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v97 - v10;
  v111 = type metadata accessor for DirectorySequence();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for URL();
  v14 = *(v121 - 8);
  v15 = __chkstk_darwin(v121);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v97 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v97 - v22;
  __chkstk_darwin(v21);
  v116 = &v97 - v24;
  v108 = type metadata accessor for Date();
  v101 = *(v108 - 8);
  __chkstk_darwin(v108);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v109 = v23;
  v99 = v20;
  v106 = v17;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074588(v125);

  v107 = v26;
  Date.init(timeIntervalSinceNow:)();
  v27 = *(v2 + 168);
  v28 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v102 = v27;
  v119 = v5;
  v29 = v121;
  v30 = sub_1000076D4(v121, qword_10177BF38);
  v104 = a1;
  UUID.uuidString.getter();
  *&v117 = v30;
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v28);
  v125 = _swiftEmptyArrayStorage;
  v124 = _swiftEmptyArrayStorage;
  v112 = objc_opt_self();
  v31 = [v112 defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v32 = v13;
  DirectorySequence.next()();
  v33 = v14 + 48;
  v115 = *(v14 + 48);
  v34 = v115(v11, 1, v29);
  v105 = v14;
  if (v34 == 1)
  {
    v35 = v121;
  }

  else
  {
    v122 = *(v14 + 32);
    v123 = v14 + 32;
    v36 = (v14 + 8);
    v35 = v121;
    v37 = v115;
    v38 = v102;
    v39 = v109;
    do
    {
      v122(v39, v11, v35);
      v40 = objc_autoreleasePoolPush();
      sub_1006011CC(v39, v38, &v125, &v124);
      objc_autoreleasePoolPop(v40);
      (*v36)(v39, v35);
      DirectorySequence.next()();
    }

    while (v37(v11, 1, v35) != 1);
  }

  v118 = v33;
  (*(v110 + 8))(v32, v111);
  LODWORD(v123) = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v41 = static OS_os_log.default.getter();
  v111 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10138BBE0;
  v43 = v125;
  v44 = v125[2];
  *(v42 + 56) = &type metadata for Int;
  *(v42 + 64) = &protocol witness table for Int;
  *(v42 + 32) = v44;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v45 = v116;
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  *(v42 + 96) = &type metadata for String;
  v49 = sub_100008C00();
  *(v42 + 104) = v49;
  *(v42 + 72) = v46;
  *(v42 + 80) = v48;
  os_log(_:dso:log:_:_:)(v123, &_mh_execute_header, v41, "Found %i records at %@", 22, 2, v42);

  v50 = v124;
  v122 = *(v105 + 8);
  v123 = v105 + 8;
  v51 = (v122)(v45, v35);
  __chkstk_darwin(v51);
  *(&v97 - 2) = v107;

  v52 = sub_10013D74C(sub_100B27574, (&v97 - 4), v43);
  v53 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v110 = qword_10177C380;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_101391790;
  sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v55 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v54 + 56) = &type metadata for String;
  *(v54 + 64) = v49;
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  v57 = UUID.uuidString.getter();
  *(v54 + 96) = &type metadata for String;
  *(v54 + 104) = v49;
  v109 = v49;
  *(v54 + 72) = v57;
  *(v54 + 80) = v58;
  v59 = v52[2];
  v60 = v50[2];
  v61 = __OFADD__(v59, v60);
  v62 = v59 + v60;
  v63 = v50;
  v64 = v106;
  if (v61)
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v65 = v53;
  v104 = v52;
  *(v54 + 136) = &type metadata for Int;
  *(v54 + 144) = &protocol witness table for Int;
  *(v54 + 112) = v62;
  v66 = v43[2];

  if (__OFADD__(v66, v60))
  {
    goto LABEL_29;
  }

  *(v54 + 176) = &type metadata for Int;
  *(v54 + 184) = &protocol witness table for Int;
  *(v54 + 152) = v66 + v60;
  os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v110, "prune BeaconEstimatedLocations predating, %@, identifier, %@, deleted, %i/%i", 76, 2, v54);

  v67 = *(v104 + 16);
  v103 = v63;
  if (v67)
  {
    v68 = v104 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v116 = *(v98 + 72);
    v69 = v97;
    v70 = v99;
    v71 = v102;
    do
    {
      sub_100022A54(v68, v69, type metadata accessor for BeaconEstimatedLocation);
      v72 = (v69 + *(v119 + 20));
      v73 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v73);
      __chkstk_darwin(v74);
      *(&v97 - 4) = v71;
      *(&v97 - 3) = v72;
      *(&v97 - 2) = v70;
      OS_dispatch_queue.sync<A>(execute:)();
      (v122)(v70, v121);
      sub_100022C40(v69, type metadata accessor for BeaconEstimatedLocation);
      v68 += v116;
      --v67;
    }

    while (v67);

    v64 = v106;
    v63 = v103;
  }

  else
  {
  }

  v75 = v63[2];
  v77 = v113;
  v76 = v114;
  v78 = v121;
  v79 = v115;
  if (v75)
  {
    v80 = v63 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v119 = *(v100 + 72);
    v81 = (v105 + 32);
    v117 = xmmword_101385D80;
    do
    {
      sub_100022A54(v80, v76, type metadata accessor for BeaconStoreFileRecord);
      sub_1000D2A70(v76 + *(v120 + 20), v77, &unk_101696AC0, &qword_101390A60);
      if (v79(v77, 1, v78) == 1)
      {
        sub_100022C40(v76, type metadata accessor for BeaconStoreFileRecord);
        sub_10000B3A8(v77, &unk_101696AC0, &qword_101390A60);
      }

      else
      {
        (*v81)(v64, v77, v78);
        v82 = [v112 defaultManager];
        URL._bridgeToObjectiveC()(v83);
        v85 = v84;
        v125 = 0;
        v86 = v64;
        v87 = [v82 removeItemAtURL:v84 error:&v125];

        if (v87)
        {
          v88 = v125;
        }

        else
        {
          v89 = v125;
          v90 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v91 = static os_log_type_t.default.getter();
          v92 = swift_allocObject();
          *(v92 + 16) = v117;
          v125 = v90;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v93 = String.init<A>(describing:)();
          v94 = v109;
          *(v92 + 56) = &type metadata for String;
          *(v92 + 64) = v94;
          *(v92 + 32) = v93;
          *(v92 + 40) = v95;
          os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v110, "Could not delete tombstoned record %@", 37, 2, v92);
        }

        (v122)(v86, v78);
        v76 = v114;
        sub_100022C40(v114, type metadata accessor for BeaconStoreFileRecord);
        v77 = v113;
        v64 = v86;
        v79 = v115;
      }

      v80 += v119;
      --v75;
    }

    while (v75);
  }

  return (*(v101 + 8))(v107, v108);
}

uint64_t sub_100AD02A8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  sub_100044B3C(v6, a3);
  sub_1000076D4(v6, a3);
  return a4();
}

uint64_t sub_100AD0304@<X0>(uint64_t a1@<X8>)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v12)
  {
    v2 = [objc_allocWithZone(NSProcessInfo) init];
    [v2 processIdentifier];

    _StringGuts.grow(_:)(31);
    v3 = NSTemporaryDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4._countAndFlagsBits = 0x2D7473657463782FLL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._object = 0x800000010136BA00;
    v6._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v6);
    if (qword_101694C08 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for UUID();
    sub_1000076D4(v7, qword_1016B48E0);
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    URL.init(fileURLWithPath:isDirectory:)();
  }

  else
  {
    if (qword_101694F00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for URL();
    v11 = sub_1000076D4(v10, qword_10177C158);
    return (*(*(v10 - 8) + 16))(a1, v11, v10);
  }
}

void sub_100AD05E0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = type metadata accessor for BeaconNamingRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38[-1] - v11;
  v13 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v13);
  v15 = (&v38[-1] - v14);
  sub_1000D2A70(a1, &v38[-1] - v14, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    sub_100022A54(a3, v10, type metadata accessor for BeaconNamingRecord);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38[0] = v22;
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_100022C40(v10, type metadata accessor for BeaconNamingRecord);
      v26 = sub_1000136BC(v23, v25, v38);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2114;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v27;
      *v21 = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to save name record for beacon %{private,mask.hash}s: %{public}@", v20, 0x20u);
      sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v22);
    }

    else
    {

      sub_100022C40(v10, type metadata accessor for BeaconNamingRecord);
    }

    swift_beginAccess();
    *(a4 + 16) = v16;
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177BA08);
    sub_100022A54(a3, v12, type metadata accessor for BeaconNamingRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_100022C40(v12, type metadata accessor for BeaconNamingRecord);
      v36 = sub_1000136BC(v33, v35, v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Name record created for beacon: %{private,mask.hash}s", v31, 0x16u);
      sub_100007BAC(v32);
    }

    else
    {

      sub_100022C40(v12, type metadata accessor for BeaconNamingRecord);
    }

    sub_10000B3A8(v15, &qword_1016A7808, &qword_1013D6750);
  }

  dispatch_group_leave(v37);
}

void sub_100AD0B8C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016B5490, &unk_1013D67E0);
  __chkstk_darwin(v6);
  v8 = (v18 - v7);
  sub_1000D2A70(a1, v18 - v7, &qword_1016B5490, &unk_1013D67E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v18[1] = v9;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Failed to save productInfoRecord: %@", 36, 2, v12);

    swift_beginAccess();
    *(a3 + 16) = v9;
  }

  else
  {
    v16 = static os_log_type_t.info.getter();
    if (qword_1016950C8 != -1)
    {
      v17 = v16;
      swift_once();
      v16 = v17;
    }

    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C410, "Successfully saved productInfoRecord", 36, 2, _swiftEmptyArrayStorage);
    sub_10000B3A8(v8, &qword_1016B5490, &unk_1013D67E0);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100AD0DF8(void (*a1)(uint64_t *, char *), uint64_t a2, char a3)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v8);
  v10 = (&v15 - v9);
  sub_100139CA0();
  v11 = swift_allocError();
  *v12 = a3;
  *v10 = v11;
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  a1(v10, v7);
  sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  return sub_10000B3A8(v10, &unk_1016B15A0, &qword_1013A0900);
}

uint64_t sub_100AD0F98(void (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  *(&v13 - v9) = a3;
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  swift_errorRetain();
  a1(v10, v7);
  sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  return sub_10000B3A8(v10, &unk_1016B15A0, &qword_1013A0900);
}

void sub_100AD111C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a4;
  v47 = a5;
  v48 = a2;
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v14);
  v16 = (&v42 - v15);
  sub_1000D2A70(a1, &v42 - v15, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v49[0] = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Failed to save newRecord: %@", 28, 2, v20);

    swift_beginAccess();
    *(a7 + 16) = v17;
  }

  else
  {
    v45 = a3;
    v43 = a6;
    sub_10002911C(v16, v13, type metadata accessor for OwnedBeaconRecord);
    v24 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    v44 = xmmword_101385D80;
    *(v26 + 16) = xmmword_101385D80;
    v27 = UUID.uuidString.getter();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    v30 = sub_100008C00();
    *(v26 + 64) = v30;
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "New remote pairing completed: %@", 32, 2, v26);

    v31 = static os_log_type_t.default.getter();
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C3D8;
    v33 = swift_allocObject();
    *(v33 + 16) = v44;
    v34 = UUID.uuidString.getter();
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v30;
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "New OwnedBeaconRecord saved to cloudKit: %@", 43, 2, v33);

    v36 = type metadata accessor for Transaction();
    __chkstk_darwin(v36);
    v38 = v45;
    v37 = v46;
    *(&v42 - 4) = v45;
    *(&v42 - 3) = v37;
    *(&v42 - 2) = v47;
    static Transaction.named<A>(_:with:)();
    My = type metadata accessor for Feature.FindMy();
    v49[3] = My;
    v49[4] = sub_10000768C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v40 = sub_1000280DC(v49);
    (*(*(My - 8) + 104))(v40, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    v41 = sub_100007BAC(v49);
    if (My)
    {
      __chkstk_darwin(v41);
      *(&v42 - 2) = v43;
      *(&v42 - 1) = v38;
      static Transaction.named<A>(_:with:)();
    }

    sub_100022C40(v13, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(v48);
}

uint64_t sub_100AD1694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v22 = a4;
  v20[1] = a2;
  v6 = type metadata accessor for KeySyncMetadata(0);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for KeyAlignmentRecord(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_100022A54(a3, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeyAlignmentRecord);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_10002911C(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for KeyAlignmentRecord);

  sub_1006E0D08(a3, 0, sub_100B24688, v15);

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_100022A54(v22, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeySyncMetadata);
  v17 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_10002911C(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for KeySyncMetadata);
  sub_100A838F0(0, 0, v10, &unk_1013D67F8, v18, (&type metadata for () + 1));
}

uint64_t sub_100AD19A0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  __chkstk_darwin(v2);
  v4 = (v19 - v3);
  Transaction.capture()();
  sub_1000D2A70(a1, v4, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v6 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v7 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    v19[1] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Failed to save keyAlignmentRecord: %@", 37, 2, v8);
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    type metadata accessor for KeyAlignmentRecord(0);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Successfully saved keyAlignmentRecord: %@", 41, 2, v15);

    return sub_10000B3A8(v4, &unk_1016B1690, &qword_1013D6800);
  }
}

uint64_t sub_100AD1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100AD1CEC;

  return daemon.getter();
}

uint64_t sub_100AD1CEC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100AD1EC8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100AD1EC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    v7 = swift_task_alloc();
    *(v3 + 56) = v7;
    *v7 = v4;
    v7[1] = sub_100AD2068;
    v8 = *(v3 + 16);

    return sub_1010CDAC4(v8);
  }
}

uint64_t sub_100AD2068()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10037F1E8;
  }

  else
  {
    v2 = sub_1004A9788;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100AD217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a3;
  v39 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = v34 - v9;
  v10 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v35 = *(v10 - 1);
  v11 = *(v35 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (v34 - v14);
  sub_100A7F75C(v41);
  if (v3)
  {
    v16 = v39;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177CE28);
    (*(v5 + 16))(v8, v16, v4);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      v24 = sub_1000136BC(v21, v23, v43);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1000136BC(v25, v26, v43);

      *(v20 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to create OwnedDeviceKeyRecord for %{private,mask.hash}s error: %s.", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    UUID.init()();
    v28 = v10[6];
    v34[1] = 0;
    v29 = *(v5 + 16);
    v29(v15 + v28, v39, v4);
    v42 = v41[1];
    *v43 = v41[0];
    sub_10012C094(v43, v40);
    sub_10012C038(&v42, v40);
    sub_100A80F28(v41);
    *v15 = xmmword_10138C660;
    v30 = v42;
    *(v15 + v10[7]) = *v43;
    *(v15 + v10[8]) = v30;
    v29(v38, v39, v4);
    sub_100022A54(v15, v13, type metadata accessor for OwnedDeviceKeyRecord);
    v31 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v32 = (v6 + *(v35 + 80) + v31) & ~*(v35 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v36;
    (*(v5 + 32))(v33 + v31, v38, v4);
    sub_10002911C(v13, v33 + v32, type metadata accessor for OwnedDeviceKeyRecord);

    sub_1006DE50C(v15, 0, sub_100B245B0, v33);

    sub_100022C40(v15, type metadata accessor for OwnedDeviceKeyRecord);
  }
}

void sub_100AD26E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v5 = __chkstk_darwin(v49);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v48 - v7;
  v52 = type metadata accessor for UUID();
  v9 = *(v52 - 8);
  v10 = __chkstk_darwin(v52);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  Transaction.capture()();
  sub_1000D2A70(a1, v17, &qword_1016A7810, &qword_1013B66C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177CE28);
    v19 = v52;
    (*(v9 + 16))(v12, v50, v52);
    v20 = v48;
    sub_100022A54(v51, v48, type metadata accessor for OwnedDeviceKeyRecord);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53 = v51;
      *v23 = 141559043;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v50) = v22;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v9 + 8))(v12, v19);
      v27 = sub_1000136BC(v24, v26, &v53);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2160;
      *(v23 + 24) = 1752392040;
      *(v23 + 32) = 2081;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_100022C40(v20, type metadata accessor for OwnedDeviceKeyRecord);
      v31 = sub_1000136BC(v28, v30, &v53);

      *(v23 + 34) = v31;
      *(v23 + 42) = 2080;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = sub_1000136BC(v32, v33, &v53);

      *(v23 + 44) = v34;
      _os_log_impl(&_mh_execute_header, v21, v50, "Failed to save OwnedDeviceKeyRecord for %{private,mask.hash}s uuid: %{private,mask.hash}s error: %s.", v23, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022C40(v20, type metadata accessor for OwnedDeviceKeyRecord);
      (*(v9 + 8))(v12, v19);
    }
  }

  else
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177CE28);
    v36 = v52;
    (*(v9 + 16))(v14, v50, v52);
    sub_100022A54(v51, v8, type metadata accessor for OwnedDeviceKeyRecord);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53 = v51;
      *v39 = 141558787;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v50) = v38;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v9 + 8))(v14, v36);
      v43 = sub_1000136BC(v40, v42, &v53);

      *(v39 + 14) = v43;
      *(v39 + 22) = 2160;
      *(v39 + 24) = 1752392040;
      *(v39 + 32) = 2081;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_100022C40(v8, type metadata accessor for OwnedDeviceKeyRecord);
      v47 = sub_1000136BC(v44, v46, &v53);

      *(v39 + 34) = v47;
      _os_log_impl(&_mh_execute_header, v37, v50, "Successfully saved OwnedDeviceKeyRecord for %{private,mask.hash}s uuid: %{private,mask.hash}s.", v39, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022C40(v8, type metadata accessor for OwnedDeviceKeyRecord);
      (*(v9 + 8))(v14, v36);
    }

    sub_10000B3A8(v17, &qword_1016A7810, &qword_1013B66C0);
  }
}

uint64_t sub_100AD2E7C(uint64_t a1, void (*a2)(void *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v12);
  v14 = (&v20 - v13);
  swift_beginAccess();
  v15 = *(a1 + 16);
  if (v15)
  {
    *v14 = v15;
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v11, a4, v16);
    (*(v17 + 56))(v11, 0, 1, v16);
    swift_errorRetain();
    swift_errorRetain();
    a2(v14, v11);
  }

  else
  {
    sub_100022A54(a5, v14, type metadata accessor for OwnedBeaconRecord);
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    a2(v14, v11);
  }

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  return sub_10000B3A8(v14, &unk_1016B15A0, &qword_1013A0900);
}

uint64_t sub_100AD30EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for UUID();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100AD31BC, 0, 0);
}

uint64_t sub_100AD31BC()
{
  v1 = v0[14];
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[19] = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100AD331C;
  v7 = v0[17];
  v6 = v0[18];

  return sub_100687A6C((v0 + 2), v6, v7);
}

uint64_t sub_100AD331C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_100AD350C;
  }

  else
  {
    v4 = v2[18];
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[15];
    v8 = *(v6 + 8);
    v8(v5, v7);
    v8(v4, v7);

    v3 = sub_100AD3480;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AD3480()
{
  v1 = *(v0 + 96);
  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 64) = *(v0 + 80);
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 16) = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100AD350C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v4 = *(v0[16] + 8);
  v4(v0[17], v2);
  v4(v1, v2);

  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;

  v5 = v0[1];

  return v5();
}

uint64_t sub_100AD35D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1009153A8;

  return sub_1007383E8(a1, a3);
}

uint64_t sub_100AD3688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for UUID();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100AD3758, 0, 0);
}

uint64_t sub_100AD3758()
{
  v1 = v0[14];
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[19] = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100AD38B8;
  v7 = v0[17];
  v6 = v0[18];

  return sub_100687A6C((v0 + 2), v6, v7);
}

uint64_t sub_100AD38B8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_100B2800C;
  }

  else
  {
    v4 = v2[18];
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[15];
    v8 = *(v6 + 8);
    v8(v5, v7);
    v8(v4, v7);

    v3 = sub_100B27E48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AD3A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100AD3AE0, 0, 0);
}

uint64_t sub_100AD3AE0()
{
  v1 = v0[5];
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[9] = v0[2];
  v2 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100AD3C10;
  v5 = v0[3];

  return sub_10068A150(v5, v1 + v2);
}

uint64_t sub_100AD3C10()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100AD3D70, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_100AD3D70()
{
  v1 = v0[3];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = type metadata accessor for KeyDropLostItemDates(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100AD3E34(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100AA33AC(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &unk_1016A9A20, &qword_10138B280);
LABEL_3:
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177BA08);
    (*(v3 + 16))(v5, a1, v2);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v29 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v3 + 8))(v5, v2);
      v21 = sub_1000136BC(v18, v20, &v29);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not compute productUUID from nil productData of beacon %{private,mask.hash}s.", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return UUID.init(uuid:)();
  }

  sub_10002911C(v8, v12, type metadata accessor for OwnedBeaconRecord);
  v22 = sub_100D5F668();
  if (v23 >> 60 == 15)
  {
    v22 = sub_100314604(*&v12[*(v9 + 64)], *&v12[*(v9 + 68)]);
    if (v23 >> 60 == 15)
    {
      sub_100022C40(v12, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_3;
    }
  }

  v24 = v23;
  v25 = v22;
  if (qword_101694570 != -1)
  {
    swift_once();
  }

  v29 = xmmword_10169DAA8;
  sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
  Data.append(_:)();
  v26 = v29;
  v28 = v29;
  sub_100017D5C(v29, *(&v29 + 1));
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v25, v24);
  sub_100016590(v26, *(&v26 + 1));
  sub_100022C40(v12, type metadata accessor for OwnedBeaconRecord);
  return sub_100016590(v26, *(&v26 + 1));
}

BOOL sub_100AD4334(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100AD43C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for BeaconStatus(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  sub_100AC6DA0(a2 + *(v4 + 20), v9);
  v16 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_10000B3A8(v9, &qword_10169DBD0, &unk_1013D6790);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    sub_100022A54(a2, v6, type metadata accessor for OwnedBeaconRecord);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315138;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
      v25 = sub_1000136BC(v22, v24, &v36);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "No multipart observation for beacon %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {

      sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
    }

    static Date.distantPast.getter();
    return 0;
  }

  else
  {
    sub_10002911C(v9, v13, type metadata accessor for BeaconStatus);
    sub_10002911C(v13, v15, type metadata accessor for BeaconStatus);
    v26 = sub_10001993C(v15[*(v10 + 20)] & 0xB);
    v27 = (v26 >> 8) & 1;
    v28 = HIWORD(v26) & 1;
    v29 = HIBYTE(v26) & 1;
    v30 = sub_100B0E7A8(a2);
    v31 = sub_100165E94(v27, v28, v29, v30);
    v32 = *(v10 + 24);
    v33 = type metadata accessor for Date();
    (*(*(v33 - 8) + 16))(a1, &v15[v32], v33);
    sub_100022C40(v15, type metadata accessor for BeaconStatus);
    return v31;
  }
}

void *sub_100AD4838(void *a1, uint64_t a2)
{
  v223 = a2;
  v221 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v221);
  v220 = &v206 - v3;
  v4 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  __chkstk_darwin(v4 - 8);
  v242 = &v206 - v5;
  v228 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v228);
  v229 = &v206 - v6;
  v254 = type metadata accessor for UUID();
  v232 = *(v254 - 8);
  v7 = __chkstk_darwin(v254);
  v211 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v213 = &v206 - v10;
  v11 = __chkstk_darwin(v9);
  v231 = &v206 - v12;
  v13 = __chkstk_darwin(v11);
  v240 = &v206 - v14;
  v15 = __chkstk_darwin(v13);
  v238 = &v206 - v16;
  v17 = __chkstk_darwin(v15);
  v249 = &v206 - v18;
  v19 = __chkstk_darwin(v17);
  v227 = &v206 - v20;
  __chkstk_darwin(v19);
  v250 = &v206 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = __chkstk_darwin(v22 - 8);
  v224 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v226 = &v206 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v206 - v28;
  __chkstk_darwin(v27);
  v31 = &v206 - v30;
  v247 = type metadata accessor for BeaconStatus(0);
  v32 = *(v247 - 8);
  v33 = __chkstk_darwin(v247);
  v234 = &v206 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v243 = &v206 - v36;
  __chkstk_darwin(v35);
  v38 = &v206 - v37;
  v259 = &_swiftEmptySetSingleton;
  v39 = a1 + 7;
  v40 = 1 << *(a1 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & a1[7];
  v43 = (v40 + 63) >> 6;
  v245 = a1;

  v44 = 0;
LABEL_4:
  if (v42)
  {
    v45 = v44;
    goto LABEL_10;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v43)
    {

      return &_swiftEmptySetSingleton;
    }

    v42 = v39[v45];
    ++v44;
    if (v42)
    {
      v44 = v45;
LABEL_10:
      v46 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v47 = *(v32 + 9);
      sub_100022A54(v245[6] + v47 * (v46 | (v45 << 6)), v38, type metadata accessor for BeaconStatus);
      v48 = *&v38[*(v247 + 36)];

      sub_100022C40(v38, type metadata accessor for BeaconStatus);
      if (v48)
      {
        v218 = v47;

        if (qword_101694BF8 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_93;
      }

      goto LABEL_4;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  swift_once();
LABEL_12:
  v49 = type metadata accessor for Logger();
  v50 = sub_1000076D4(v49, qword_10177BA38);
  sub_1000D2A70(v223, v31, &qword_1016980D0, &unk_10138F3B0);
  v236 = v50;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = v31;
  v31 = &unk_10138A000;
  if (os_log_type_enabled(v51, v52))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v258 = v55;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v56 = v53;
    sub_1000D2A70(v53, v29, &qword_1016980D0, &unk_10138F3B0);
    v57 = v232;
    if ((*(v232 + 48))(v29, 1, v254) == 1)
    {
      sub_10000B3A8(v29, &qword_1016980D0, &unk_10138F3B0);
      v58 = 0xE400000000000000;
      v59 = 1701736302;
    }

    else
    {
      v59 = UUID.uuidString.getter();
      v58 = v62;
      (*(v57 + 8))(v29, v254);
    }

    sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    v63 = sub_1000136BC(v59, v58, &v258);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v51, v52, "Primary beacon: %{private,mask.hash}s", v54, 0x16u);
    sub_100007BAC(v55);

    v31 = &unk_10138A000;
  }

  else
  {

    v61 = sub_10000B3A8(v53, &qword_1016980D0, &unk_10138F3B0);
  }

  v64 = v245;
  v65 = v245[2];
  if (v65)
  {
    v66 = sub_1003A87E0(v245[2], 0);
    v253 = sub_1003AA0BC(&v258, &v66[(v32[80] + 32) & ~v32[80]], v65, v64);
    v67 = v258;

    v61 = sub_1000128F8(v67);
    if (v253 == v65)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  v66 = _swiftEmptyArrayStorage;
LABEL_23:
  __chkstk_darwin(v61);
  *(&v206 - 2) = v223;
  v258 = v66;

  sub_100A8AC4C(sub_100B24AE4, (&v206 - 2));
  v248 = 0;

  v29 = v258;

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v258 = v71;
    *v70 = 136315138;
    v72 = Array.description.getter();
    v74 = sub_1000136BC(v72, v73, &v258);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v68, v69, "sortedStatuses %s", v70, 0xCu);
    sub_100007BAC(v71);
  }

  v75 = v250;
  v76 = v234;
  v257 = &_swiftEmptySetSingleton;
  v217 = *(v29 + 2);
  if (v217)
  {
    v77 = v232;
    v216 = &v29[(v32[80] + 32) & ~v32[80]];
    v215 = *(v230 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    swift_beginAccess();
    v78 = 0;
    v79 = (v77 + 16);
    v252 = (v77 + 8);
    v237 = (v77 + 32);
    v235 = (v32 + 48);
    v210 = (v77 + 56);
    v209 = (v77 + 48);
    *&v80 = 136315907;
    v208 = v80;
    *&v80 = 141558275;
    v206 = v80;
    *&v80 = 136315138;
    v207 = v80;
    v32 = v229;
    v81 = v218;
    v214 = v29;
    v253 = v77 + 16;
    do
    {
      if (v78 >= *(v29 + 2))
      {
        goto LABEL_92;
      }

      v233 = v78;
      v82 = v243;
      sub_100022A54(&v216[v78 * v81], v243, type metadata accessor for BeaconStatus);
      v83 = *v79;
      v84 = (*v79)(v75, v82, v254);
      __chkstk_darwin(v84);
      *(&v206 - 2) = v230;
      *(&v206 - 1) = v75;
      v85 = v248;
      QueueSynchronizer.conditionalSync<A>(_:)();
      v248 = v85;
      v86 = type metadata accessor for BeaconNamingRecord(0);
      if ((*(*(v86 - 8) + 48))(v32, 1, v86) == 1)
      {
        sub_10000B3A8(v32, &unk_1016B29E0, &unk_1013B70E0);
        v87 = 0;
        v88 = 0xE000000000000000;
      }

      else
      {
        v89 = &v32[*(v86 + 32)];
        v87 = *v89;
        v88 = v89[1];

        sub_100022C40(v32, type metadata accessor for BeaconNamingRecord);
      }

      v90 = v227;
      v246 = v83;
      v83(v227, v75, v254);
      sub_100022A54(v243, v76, type metadata accessor for BeaconStatus);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        *v93 = v208;
        v94 = sub_1000136BC(v87, v88, &v255);

        *(v93 + 4) = v94;
        *(v93 + 12) = 2160;
        *(v93 + 14) = 1752392040;
        *(v93 + 22) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v31 = v254;
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        v32 = *v252;
        (*v252)(v90, v31);
        v98 = sub_1000136BC(v95, v97, &v255);

        *(v93 + 24) = v98;
        *(v93 + 32) = 2080;
        v99 = v234;
        sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v100 = Set.description.getter();
        v102 = v101;

        sub_100022C40(v99, type metadata accessor for BeaconStatus);
        v103 = sub_1000136BC(v100, v102, &v255);

        *(v93 + 34) = v103;
        _os_log_impl(&_mh_execute_header, v91, v92, "(%s) %{private,mask.hash}s nearby: %s", v93, 0x2Au);
        swift_arrayDestroy();
        v75 = v250;
      }

      else
      {

        sub_100022C40(v76, type metadata accessor for BeaconStatus);
        v32 = *v252;
        (*v252)(v90, v254);
      }

      v104 = v257;
      v105 = v257[2];
      v244 = v32;
      v106 = v246;
      v251 = v257;
      if (v105)
      {
        sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v107 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v108 = v104 + 7;
        v109 = -1 << *(v104 + 32);
        v110 = v107 & ~v109;
        if ((*(v104 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v110))
        {
          v111 = ~v109;
          v112 = *(v232 + 72);
          while (1)
          {
            v113 = v249;
            v114 = v254;
            v106(v249, v251[6] + v112 * v110, v254);
            sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v115 = dispatch thunk of static Equatable.== infix(_:_:)();
            (v32)(v113, v114);
            if (v115)
            {
              break;
            }

            v110 = (v110 + 1) & v111;
            if (((*(v108 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          v140 = v211;
          v75 = v250;
          v79 = v253;
          v106(v211, v250, v254);
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v255 = v144;
            *v143 = v206;
            *(v143 + 4) = 1752392040;
            *(v143 + 12) = 2081;
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v31 = v254;
            v145 = dispatch thunk of CustomStringConvertible.description.getter();
            v147 = v146;
            v148 = v244;
            (v244)(v140, v31);
            v149 = sub_1000136BC(v145, v147, &v255);

            *(v143 + 14) = v149;
            _os_log_impl(&_mh_execute_header, v141, v142, "%{private,mask.hash}s has already been inserted", v143, 0x16u);
            sub_100007BAC(v144);
            v79 = v253;

            v148(v75, v31);
          }

          else
          {

            v204 = v254;
            v205 = v244;
            (v244)(v140, v254);
            v205(v75, v204);
          }

LABEL_85:
          v32 = v229;
          goto LABEL_88;
        }

LABEL_42:

        v75 = v250;
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v116 = (*(v232 + 80) + 32) & ~*(v232 + 80);
      v241 = *(v232 + 72);
      v117 = swift_allocObject();
      v31 = v254;
      v106(v117 + v116, v75, v254);
      v219 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v255 = Set.init(minimumCapacity:)();
      v118 = v238;
      v106(v238, v117 + v116, v31);
      v119 = v249;
      sub_100DE8BCC(v249, v118);
      (v32)(v119, v31);
      swift_setDeallocating();
      (v32)(v117 + v116, v31);
      swift_deallocClassInstance();
      v120 = v255;
      v256 = v255;
      v121 = *(v243 + *(v247 + 36));
      if (!v121)
      {
        v130 = v213;
        v106(v213, v75, v254);
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = v130;
          v135 = swift_slowAlloc();
          v255 = v135;
          *v133 = v206;
          *(v133 + 4) = 1752392040;
          *(v133 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v31 = v254;
          v136 = dispatch thunk of CustomStringConvertible.description.getter();
          v138 = v137;
          (v32)(v134, v31);
          v139 = sub_1000136BC(v136, v138, &v255);
          v75 = v250;

          *(v133 + 14) = v139;
          _os_log_impl(&_mh_execute_header, v131, v132, "No nearby peers for %{private,mask.hash}s", v133, 0x16u);
          sub_100007BAC(v135);
        }

        else
        {

          (v32)(v130, v254);
        }

        v190 = v251;

        v191 = sub_100037E20(v75, v190);

        v79 = v253;
        if (v191)
        {

          (v32)(v75, v254);
          goto LABEL_85;
        }

        sub_100DEEB44(&v255, v120);

        swift_beginAccess();
        sub_1005C9E68(v120);
        swift_endAccess();
        v192 = Logger.logObject.getter();
        v193 = static os_log_type_t.debug.getter();
        v194 = os_log_type_enabled(v192, v193);
        v32 = v229;
        if (v194)
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v255 = v196;
          *v195 = v207;

          v31 = v254;
          v197 = Set.description.getter();
          v199 = v198;

          v200 = v197;
          v79 = v253;
          v201 = sub_1000136BC(v200, v199, &v255);
          v75 = v250;

          *(v195 + 4) = v201;
          _os_log_impl(&_mh_execute_header, v192, v193, "Inserted: %s", v195, 0xCu);
          sub_100007BAC(v196);

          v202 = v75;
          v203 = v31;
        }

        else
        {

          v202 = v75;
          v203 = v254;
        }

        (v244)(v202, v203);
LABEL_88:
        v76 = v234;
        goto LABEL_29;
      }

      v122 = v121 + 56;
      v123 = 1 << *(v121 + 32);
      if (v123 < 64)
      {
        v124 = ~(-1 << v123);
      }

      else
      {
        v124 = -1;
      }

      v125 = v124 & *(v121 + 56);
      v126 = (v123 + 63) >> 6;

      v128 = 0;
      v29 = v242;
      v129 = v231;
      v239 = v127;
      while (v125)
      {
        v155 = v129;
LABEL_61:
        v157 = v240;
        v158 = v254;
        v106(v240, *(v127 + 48) + (__clz(__rbit64(v125)) | (v128 << 6)) * v241, v254);
        v159 = *v237;
        v160 = (*v237)(v155, v157, v158);
        __chkstk_darwin(v160);
        v161 = v155;
        *(&v206 - 2) = v155;
        v162 = v29;
        v163 = v248;
        sub_1012BC438(sub_1002DB664, v245, v162);
        v248 = v163;
        v29 = v242;
        v164 = v247;
        if ((*v235)(v242, 1, v247) == 1)
        {
          sub_10000B3A8(v29, &qword_10169DBD8, &qword_1013BF910);
          v32 = v244;
LABEL_67:
          v31 = v251;

          v129 = v161;
          v173 = sub_100037E20(v161, v31);

          v106 = v246;
          if ((v173 & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        }

        v165 = *&v29[*(v164 + 36)];

        sub_100022C40(v29, type metadata accessor for BeaconStatus);
        v32 = v244;
        if (!v165)
        {
          goto LABEL_67;
        }

        v212 = v159;
        v222 = v165;
        v166 = v226;
        v167 = v254;
        v246(v226, v250, v254);
        (*v210)(v166, 0, 1, v167);
        v168 = *(v221 + 48);
        v169 = v220;
        sub_1000D2A70(v166, v220, &qword_1016980D0, &unk_10138F3B0);
        v225 = v168;
        sub_1000D2A70(v223, v169 + v168, &qword_1016980D0, &unk_10138F3B0);
        v170 = *v209;
        if ((*v209)(v169, 1, v167) == 1)
        {
          sub_10000B3A8(v166, &qword_1016980D0, &unk_10138F3B0);
          v171 = v170(v169 + v225, 1, v167);
          v172 = v231;
          v32 = v244;
          v106 = v246;
          if (v171 == 1)
          {

            sub_10000B3A8(v169, &qword_1016980D0, &unk_10138F3B0);
            v29 = v242;
            v129 = v172;
LABEL_53:
            v150 = v129;
            v151 = v238;
            v31 = v254;
            v106(v238, v150, v254);
            v152 = v249;
            v153 = v151;
            v129 = v150;
            v32 = v244;
            sub_100DE8BCC(v249, v153);
            v154 = v152;
            v106 = v246;
            (v32)(v154, v31);
            goto LABEL_54;
          }
        }

        else
        {
          sub_1000D2A70(v169, v224, &qword_1016980D0, &unk_10138F3B0);
          if (v170(v169 + v225, 1, v167) != 1)
          {
            v176 = v249;
            v177 = v254;
            v212(v249, v169 + v225, v254);
            sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v178 = dispatch thunk of static Equatable.== infix(_:_:)();
            v179 = v244;
            (v244)(v176, v177);
            sub_10000B3A8(v226, &qword_1016980D0, &unk_10138F3B0);
            v179(v224, v177);
            v32 = v179;
            sub_10000B3A8(v169, &qword_1016980D0, &unk_10138F3B0);
            v29 = v242;
            v129 = v231;
            v106 = v246;
            if (v178)
            {

              goto LABEL_53;
            }

            goto LABEL_72;
          }

          sub_10000B3A8(v226, &qword_1016980D0, &unk_10138F3B0);
          v32 = v244;
          (v244)(v224, v254);
          v172 = v231;
          v106 = v246;
        }

        sub_10000B3A8(v169, &qword_1016AF880, &unk_10138CE20);
        v29 = v242;
        v129 = v172;
LABEL_72:
        v31 = v222;
        v174 = sub_100037E20(v250, v222);

        if (v174)
        {
          v175 = v251;

          v31 = sub_100037E20(v129, v175);

          if ((v31 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

LABEL_54:
        v125 &= v125 - 1;
        (v32)(v129, v254);
        v127 = v239;
      }

      while (1)
      {
        v156 = v128 + 1;
        if (__OFADD__(v128, 1))
        {
          __break(1u);
          goto LABEL_91;
        }

        if (v156 >= v126)
        {
          break;
        }

        v125 = *(v122 + 8 * v156);
        ++v128;
        if (v125)
        {
          v155 = v129;
          v128 = v156;
          goto LABEL_61;
        }
      }

      v180 = v256;

      sub_100DEEB44(&v255, v180);

      swift_beginAccess();
      sub_1005C9E68(v180);
      swift_endAccess();
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v255 = v184;
        *v183 = v207;

        v31 = v254;
        v185 = Set.description.getter();
        v186 = v32;
        v188 = v187;

        v189 = sub_1000136BC(v185, v188, &v255);

        *(v183 + 4) = v189;
        _os_log_impl(&_mh_execute_header, v181, v182, "Inserted: %s", v183, 0xCu);
        sub_100007BAC(v184);

        v75 = v250;
        (v186)(v250, v31);
      }

      else
      {

        v75 = v250;
        (v32)(v250, v254);
      }

      v32 = v229;
      v76 = v234;
      v79 = v253;
LABEL_29:
      sub_100022C40(v243, type metadata accessor for BeaconStatus);
      v29 = v214;
      v78 = v233 + 1;
      v81 = v218;
    }

    while (v233 + 1 != v217);
  }

  return v259;
}

uint64_t sub_100AD6764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a3, v8, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    type metadata accessor for BeaconStatus(0);
    v13 = static Date.< infix(_:_:)();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if ((static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + *(type metadata accessor for BeaconStatus(0) + 36)))
    {
      (*(v10 + 8))(v12, v9);
      v13 = 1;
    }

    else if ((static UUID.== infix(_:_:)() & 1) != 0 && *(a2 + *(type metadata accessor for BeaconStatus(0) + 36)))
    {
      (*(v10 + 8))(v12, v9);
      v13 = 0;
    }

    else
    {
      type metadata accessor for BeaconStatus(0);
      v14 = static Date.< infix(_:_:)();
      (*(v10 + 8))(v12, v9);
      v13 = v14;
    }
  }

  return v13 & 1;
}

BOOL sub_100AD69D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022A54(a1 + *(v4 + 24), v9, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v16 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    if (*(a2 + 16))
    {
      v17 = v9[*(v16 + 96)];
      v18 = static Hasher._hash(seed:bytes:count:)();
      v19 = a2 + 56;
      v20 = -1 << *(a2 + 32);
      v21 = v18 & ~v20;
      if ((*(a2 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        v23 = *(a2 + 48);
        do
        {
          v24 = *(v23 + v21);
          v25 = v24 == v17;
          if (v24 == v17)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
        }

        while (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177BA38);
      sub_100022A54(a1, v6, type metadata accessor for OwnedBeaconRecord);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 141558275;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;
        v31 = sub_1010DA578();
        v33 = v32;
        sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
        v34 = sub_1000136BC(v31, v33, &v45);

        *(v29 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "nearbyMultipartPeers: Invalid stableIdentifier %{private,mask.hash}s", v29, 0x16u);
        sub_100007BAC(v30);
      }

      else
      {

        sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
      }

      sub_100022C40(v9, type metadata accessor for StableIdentifier);
      return 0;
    }

    v11 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v12 = &v9[*(v11 + 96)];
    v13 = *v12;
    v14 = v12[1];

    if (v14 == 1)
    {
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 8))(v9, v15);
      return 0;
    }

    if (*(a2 + 16))
    {
      v35 = static Hasher._hash(seed:bytes:count:)();
      v36 = a2 + 56;
      v37 = -1 << *(a2 + 32);
      v38 = v35 & ~v37;
      if ((*(a2 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        v39 = ~v37;
        v40 = *(a2 + 48);
        do
        {
          v41 = *(v40 + v38);
          v25 = v41 == v13;
          if (v41 == v13)
          {
            break;
          }

          v38 = (v38 + 1) & v39;
        }

        while (((*(v36 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
        goto LABEL_22;
      }
    }
  }

  v25 = 0;
LABEL_22:
  v42 = type metadata accessor for UUID();
  (*(*(v42 - 8) + 8))(v9, v42);
  return v25;
}

id sub_100AD6EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v71 = a4;
  v4 = type metadata accessor for Date();
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v7);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v75;
  sub_100A785D8(v82);
  if (v18)
  {

    v19 = swift_allocObject();
    v20 = v74;
    *(v19 + 16) = v73;
    *(v19 + 24) = v20;
    v80 = sub_100B27E40;
    v81 = v19;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v78 = sub_100006684;
    v79 = &unk_1016483D8;
    v21 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&v86 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v87 + 8))(v15, v13);
    (*(v69 + 8))(v17, v70);

    v22 = type metadata accessor for OwnedBeaconRecord(0);
    return (*(*(v22 - 8) + 56))(v71, 1, 1, v22);
  }

  v66 = v17;
  v60 = v15;
  v24 = v87;
  v75 = v9;
  v62 = v6;
  v61 = v4;
  v64 = v10;
  v65 = 0;
  UUID.init()();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v25 = result;
  v63 = v12;
  v26 = MobileGestalt_copy_uniqueDeviceID_obj();

  v27 = v13;
  v28 = v74;
  v29 = v73;
  if (v26)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = v66;
  v34 = v72;
  v35 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v35 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    v87 = *(v34 + 136);
    v44 = swift_allocObject();
    *(v44 + 16) = v29;
    *(v44 + 24) = v28;
    v80 = sub_100B27544;
    v81 = v44;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v78 = sub_100006684;
    v79 = &unk_101648428;
    v45 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&v86 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v46 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);
    sub_1001DA760(v82);
    (*(v24 + 8))(v46, v27);
    (*(v69 + 8))(v33, v70);
    (*(v68 + 8))(v63, v64);

    v47 = type metadata accessor for OwnedBeaconRecord(0);
    return (*(*(v47 - 8) + 56))(v71, 1, 1, v47);
  }

  v36 = v75;
  *v75 = v30;
  v36[1] = v32;
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_22;
  }

  v37 = result;
  v38 = MobileGestalt_copy_buildVersion_obj();

  v39 = v68;
  v40 = v62;
  if (v38)
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0xE000000000000000;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_23;
  }

  v48 = result;
  v49 = MobileGestalt_copy_productType_obj();

  if (v49)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  aBlock = v82[2];
  v85 = v82[4];
  v86 = v82[3];
  v83 = v82[1];
  v84 = v82[0];
  sub_10012BFDC(&aBlock, v76);
  sub_1000D2A70(&v86, v76, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(&v85, v76, &qword_1016977A8, &qword_1013D6820);
  sub_10012C038(&v84, v76);
  sub_10012C094(&v83, v76);
  sub_100A82D10(v40);
  sub_1001DA760(v82);
  v53 = type metadata accessor for OwnedBeaconRecord(0);
  v54 = v71;
  v55 = v64;
  (*(v39 + 32))(&v71[v53[5]], v63, v64);
  sub_10002911C(v75, &v54[v53[6]], type metadata accessor for StableIdentifier);
  (*(v39 + 56))(&v54[v53[7]], 1, 1, v55);
  *v54 = xmmword_10138C660;
  (*(v67 + 32))(&v54[v53[8]], v40, v61);
  *&v54[v53[9]] = aBlock;
  v56 = v85;
  *&v54[v53[10]] = v86;
  *&v54[v53[11]] = v56;
  v57 = v83;
  *&v54[v53[12]] = v84;
  *&v54[v53[13]] = v57;
  v58 = &v54[v53[14]];
  *v58 = v50;
  v58[1] = v52;
  v59 = &v54[v53[15]];
  *v59 = v41;
  v59[1] = v43;
  *&v54[v53[16]] = -1;
  *&v54[v53[17]] = -1;
  v54[v53[18]] = 3;
  v54[v53[19]] = 0;
  v54[v53[20]] = 0;
  return (*(*(v53 - 1) + 56))(v54, 0, 1, v53);
}

uint64_t sub_100AD79A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v23 - v13;
  v25 = *(a2 + 136);
  sub_1000D2A70(a1, &v23 - v13, &unk_1016B15A0, &qword_1013A0900);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1000D2AD8(v14, v17 + v15, &unk_1016B15A0, &qword_1013A0900);
  *(v17 + v16) = a2;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  aBlock[4] = sub_100B27360;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648310;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v29 + 8))(v7, v21);
  (*(v26 + 8))(v9, v28);
}

id sub_100AD7D6C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v73 = a3;
  v74 = a4;
  v71 = a2;
  v70 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v70);
  v6 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = __chkstk_darwin(v7 - 8);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v64 - v10;
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v67 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v68 = v14;
  v69 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v17 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v18 = __chkstk_darwin(v17);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = (&v64 - v21);
  sub_1000D2A70(a1, &v64 - v21, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    v24 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    v75 = v23;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Failed to save newRecord: %@", 28, 2, v26);

    *v20 = v23;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v73(v20);

    return sub_10000B3A8(v20, &unk_1016B15A0, &qword_1013A0900);
  }

  else
  {
    v65 = v6;
    sub_10002911C(v22, v16, type metadata accessor for OwnedBeaconRecord);
    v31 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    v66 = xmmword_101385D80;
    *(v33 + 16) = xmmword_101385D80;
    v34 = *(v12 + 20);
    v35 = UUID.uuidString.getter();
    v37 = v36;
    *(v33 + 56) = &type metadata for String;
    v38 = sub_100008C00();
    *(v33 + 64) = v38;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "New local pairing requested: %@", 31, 2, v33);

    v39 = static os_log_type_t.default.getter();
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v40 = qword_10177C3D8;
    v41 = swift_allocObject();
    *(v41 + 16) = v66;
    v42 = UUID.uuidString.getter();
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v38;
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "New OwnedBeaconRecord saved to cloudKit: %@", 43, 2, v41);

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for UUID();
    v45 = *(v44 - 8);
    v46 = *(v45 + 16);
    *&v66 = v34;
    v46(v11, &v16[v34], v44);
    (*(v45 + 56))(v11, 0, 1, v44);
    sub_1000034A4();
    v47 = v72;
    sub_1000D2A70(v11, v72, &qword_1016980D0, &unk_10138F3B0);
    sub_100EEAE98(v47);

    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v48 = result;
      v49 = MobileGestalt_copy_userAssignedDeviceName_obj();

      if (v49)
      {
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;
      }

      else
      {
        v50 = 0;
        v52 = 0xE000000000000000;
      }

      v54 = v65;
      v53 = v66;
      v55 = v70;
      UUID.init()();
      v46(v54 + v55[6], &v16[v53], v44);
      v56 = SPBeaconRoleIdUndefined;
      *v54 = xmmword_10138C660;
      *(v54 + v55[7]) = v56;
      v57 = (v54 + v55[8]);
      *v57 = v50;
      v57[1] = v52;
      v58 = (v54 + v55[9]);
      *v58 = 0;
      v58[1] = 0;
      v59 = v69;
      sub_100022A54(v16, v69, type metadata accessor for OwnedBeaconRecord);
      v60 = (*(v67 + 80) + 40) & ~*(v67 + 80);
      v61 = swift_allocObject();
      v62 = v73;
      v63 = v74;
      v61[2] = v71;
      v61[3] = v62;
      v61[4] = v63;
      sub_10002911C(v59, v61 + v60, type metadata accessor for OwnedBeaconRecord);

      sub_1006DD754(v54, 0, sub_100B27408, v61);

      sub_100022C40(v54, type metadata accessor for BeaconNamingRecord);
      return sub_100022C40(v16, type metadata accessor for OwnedBeaconRecord);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100AD8568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v26 = a4;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(3u);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  sub_100022A54(v24, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v17 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 16) = v25;
  *(v18 + 24) = v19;
  sub_10002911C(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for OwnedBeaconRecord);
  aBlock[4] = sub_100B27480;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648388;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v30 + 8))(v6, v21);
  (*(v28 + 8))(v9, v29);
}

uint64_t sub_100AD8A2C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_100022A54(a3, &v15 - v12, a6);
  swift_storeEnumTagMultiPayload();
  a1(v13);
  return sub_10000B3A8(v13, a4, a5);
}

uint64_t sub_100AD8B08(char *a1, uint64_t a2, unint64_t a3)
{
  v85 = a2;
  v86 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v78 = v4;
  v79 = v5;
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v7;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v84 = &v47 - v9;
  v11 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v17;
  v18 = *(a1 + 1);
  v55 = *a1;
  v54 = v18;
  v19 = type metadata accessor for OwnedBeaconRecord(0);
  v81 = v19[5];
  v70 = v15;
  v20 = *(v15 + 16);
  v68 = v14;
  v20(v17, &a1[v81], v14);
  v80 = v19[6];
  sub_100022A54(&a1[v80], v13, type metadata accessor for StableIdentifier);
  (*(v15 + 56))(v10, 1, 1, v14);
  v76 = v19[8];
  (*(v5 + 16))(v7, &a1[v76], v4);
  v21 = v19[10];
  v75 = &a1[v19[9]];
  v53 = *v75;
  v22 = v53;
  v87 = v75[1];
  v74 = &a1[v21];
  v23 = *&a1[v21 + 8];
  v51 = *&a1[v21];
  v24 = v51;
  v50 = v23;
  v25 = v19[13];
  v73 = &a1[v19[12]];
  v26 = v73[1];
  v52 = *v73;
  v27 = v52;
  v48 = v26;
  v72 = &a1[v25];
  v28 = *&a1[v25 + 8];
  v49 = *&a1[v25];
  v29 = v19[15];
  v69 = &a1[v19[14]];
  v30 = *(v69 + 1);
  v71 = *v69;
  v65 = v19[16];
  v64 = v19[17];
  v67 = *&a1[v65];
  v66 = *&a1[v64];
  v62 = v19[18];
  v60 = v19[19];
  v63 = a1[v62];
  v56 = &a1[v29];
  v31 = *&a1[v29 + 8];
  v57 = *&a1[v29];
  v61 = a1[v60];
  v58 = v19[20];
  v59 = a1[v58];
  v32 = v55;
  v33 = v54;
  sub_100017D5C(v55, v54);
  sub_100017D5C(v22, v87);
  v34 = v50;
  sub_10002E98C(v24, v50);
  v35 = v48;
  sub_100017D5C(v27, v48);
  v36 = v49;
  sub_100017D5C(v49, v28);

  sub_100022C40(a1, type metadata accessor for OwnedBeaconRecord);
  *a1 = v32;
  *(a1 + 1) = v33;
  (*(v70 + 32))(&a1[v81], v82, v68);
  sub_10002911C(v83, &a1[v80], type metadata accessor for StableIdentifier);
  sub_1000D2AD8(v84, &a1[v19[7]], &qword_1016980D0, &unk_10138F3B0);
  (*(v79 + 32))(&a1[v76], v77, v78);
  v37 = v74;
  v38 = v75;
  *v75 = v53;
  v39 = v86;
  v38[1] = v87;
  *v37 = v51;
  v37[1] = v34;
  v40 = &a1[v19[11]];
  v41 = v85;
  *v40 = v85;
  v40[1] = v39;
  v42 = v72;
  v43 = v73;
  *v73 = v52;
  v43[1] = v35;
  *v42 = v36;
  v42[1] = v28;
  v44 = v69;
  *v69 = v71;
  *(v44 + 1) = v30;
  v45 = v56;
  *v56 = v57;
  *(v45 + 1) = v31;
  *&a1[v65] = v67;
  *&a1[v64] = v66;
  a1[v62] = v63;
  a1[v60] = v61;
  a1[v58] = v59;
  return sub_100017D5C(v41, v39);
}

void sub_100AD9098(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = swift_projectBox();
  sub_1000D2A70(a1, v10, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Failed to upgrade record: %@", 28, 2, v14);
  }

  else
  {
    sub_10002911C(v10, v7, type metadata accessor for OwnedBeaconRecord);
    swift_beginAccess();
    sub_100B25C50(v7, v11, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_100AD92FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 210) = a7;
  *(v7 + 209) = a6;
  *(v7 + 208) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  *(v7 + 48) = swift_task_alloc();
  v8 = type metadata accessor for KeyGenerationBeaconInfo(0);
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = type metadata accessor for BeaconIdentifier(0);
  *(v7 + 88) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v7 + 96) = v9;
  *v9 = v7;
  v9[1] = sub_100AD9464;

  return daemon.getter();
}

uint64_t sub_100AD9464(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100AD9640;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100AD9640(uint64_t a1)
{
  *(*v2 + 120) = a1;

  if (v1)
  {

    v3 = sub_100AD99A0;
  }

  else
  {

    v3 = sub_100AD9790;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AD9790()
{
  v1 = v0[4];
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = v1[3];
  v4 = v1[4];
  sub_1000035D0(v1, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_100AD988C;
  v6 = v0[11];
  v7 = v0[6];

  return sub_10098F404(v7, v6);
}

uint64_t sub_100AD988C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100AD9E30;
  }

  else
  {
    v2 = sub_100AD9BA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AD99A0()
{
  if (qword_101694A18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B538);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconKeyService.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_10000768C(&qword_101697368, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000101351540;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = *(v0 + 16);
  *v7 = 0;
  v7[1] = 0;
  *(*(v0 + 16) + 16) = 3;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100AD9BA8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  if ((*(*(v0 + 64) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    goto LABEL_7;
  }

  v3 = *(v0 + 72);
  sub_10002911C(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100022C40(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
LABEL_7:
    if (*(v0 + 208))
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        v14 = sub_100A848EC;
        v9 = swift_task_alloc();
        *(v0 + 176) = v9;
        *v9 = v0;
        v10 = sub_100ADA158;
LABEL_12:
        v9[1] = v10;
        v11 = *(v0 + 209);
        v13 = *(v0 + 32);
        v12 = *(v0 + 40);

        return v14(v13, v12, v11);
      }
    }

    else
    {
    }

    v14 = sub_100A83E64;
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v10 = sub_100AD9FAC;
    goto LABEL_12;
  }

  sub_100022C40(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v5 = *(v0 + 16);
  *v5 = 0;
  v5[1] = 0;
  *(*(v0 + 16) + 16) = 3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100AD9E30()
{
  v1 = v0[11];

  sub_100022C40(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[2];
  *v2 = 0;
  v2[1] = 0;
  *(v0[2] + 16) = 3;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100AD9EF0()
{
  v1 = v0[5].i64[1];

  sub_100022C40(v1, type metadata accessor for BeaconIdentifier);
  v2 = v0[13].i8[3];
  *v0[1].i64[0] = vextq_s8(v0[9], v0[9], 8uLL);
  *(v0[1].i64[0] + 16) = v2;

  v3 = v0->i64[1];

  return v3();
}

uint64_t sub_100AD9FAC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100ADA304, 0, 0);
  }

  else
  {
    v8 = *(v6 + 208);
    v9 = swift_task_alloc();
    *(v6 + 192) = v9;
    *v9 = v7;
    v9[1] = sub_100ADA3C4;
    v10 = *(v6 + 210);
    v11 = *(v6 + 32);

    return sub_100731BF4(v11, a1, a2, v8 & 1, v10, 0);
  }
}

uint64_t sub_100ADA158(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100ADA5C0, 0, 0);
  }

  else
  {
    v8 = *(v6 + 208);
    v9 = swift_task_alloc();
    *(v6 + 192) = v9;
    *v9 = v7;
    v9[1] = sub_100ADA3C4;
    v10 = *(v6 + 210);
    v11 = *(v6 + 32);

    return sub_100731BF4(v11, a1, a2, v8 & 1, v10, 0);
  }
}

uint64_t sub_100ADA304()
{
  v1 = v0[11];

  sub_100022C40(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[2];
  *v2 = 0;
  v2[1] = 0;
  *(v0[2] + 16) = 3;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100ADA3C4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 200) = v3;

  if (v3)
  {
    v9 = sub_100ADA500;
  }

  else
  {
    *(v8 + 211) = a3;
    *(v8 + 144) = a2;
    *(v8 + 152) = a1;
    v9 = sub_100AD9EF0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100ADA500()
{
  v1 = v0[11];

  sub_100022C40(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[2];
  *v2 = 0;
  v2[1] = 0;
  *(v0[2] + 16) = 3;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100ADA5C0()
{
  v1 = v0[11];

  sub_100022C40(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[2];
  *v2 = 0;
  v2[1] = 0;
  *(v0[2] + 16) = 3;

  v3 = v0[1];

  return v3();
}

void *sub_100ADA680(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v443 = a2;
  v448 = a1;
  v430 = type metadata accessor for UUID();
  v429 = *(v430 - 8);
  __chkstk_darwin(v430);
  v428 = &v422 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v4 = __chkstk_darwin(v3 - 8);
  v426 = &v422 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v424 = &v422 - v7;
  v8 = __chkstk_darwin(v6);
  v425 = &v422 - v9;
  __chkstk_darwin(v8);
  v423 = &v422 - v10;
  v454 = _s18ConnectionKeyGroupVMa(0);
  v431 = *(v454 - 8);
  v11 = __chkstk_darwin(v454);
  v441 = &v422 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v434 = &v422 - v14;
  v15 = __chkstk_darwin(v13);
  v427 = &v422 - v16;
  v17 = __chkstk_darwin(v15);
  v440 = &v422 - v18;
  __chkstk_darwin(v17);
  v439 = &v422 - v19;
  v458 = type metadata accessor for TimeBasedKey(0);
  v453 = *(v458 - 8);
  v20 = __chkstk_darwin(v458);
  v447 = &v422 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v437 = &v422 - v23;
  v24 = __chkstk_darwin(v22);
  v445 = &v422 - v25;
  v26 = __chkstk_darwin(v24);
  v450 = &v422 - v27;
  v28 = __chkstk_darwin(v26);
  v446 = &v422 - v29;
  v30 = __chkstk_darwin(v28);
  v436 = &v422 - v31;
  v32 = __chkstk_darwin(v30);
  v444 = &v422 - v33;
  __chkstk_darwin(v32);
  v449 = &v422 - v34;
  v35 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v455 = *(v35 - 8);
  v456 = v35;
  v36 = __chkstk_darwin(v35);
  v38 = &v422 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v41 = &v422 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v422 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v422 - v46;
  v48 = __chkstk_darwin(v45);
  v435 = &v422 - v49;
  __chkstk_darwin(v48);
  v451 = &v422 - v50;
  v51 = type metadata accessor for Date();
  __chkstk_darwin(v51 - 8);
  v53 = &v422 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = type metadata accessor for DateInterval();
  v438 = *(v452 - 8);
  v54 = *(v438 + 64);
  v55 = __chkstk_darwin(v452);
  v56 = __chkstk_darwin(v55);
  v433 = &v422 - v57;
  __chkstk_darwin(v56);
  v432 = &v422 - v58;
  v59 = type metadata accessor for TimeBasedKeysCriteria(0);
  __chkstk_darwin(v59);
  v61 = &v422 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022A54(v443, v61, type metadata accessor for TimeBasedKeysCriteria);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v449 = v44;
    v439 = v41;
    v422 = &v422 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (EnumCaseMultiPayload)
    {
      v126 = *v61;
      __chkstk_darwin(EnumCaseMultiPayload);
      i = v442;
      v421 = v448;
      v127 = v457;
      v128 = sub_1005C6F0C(sub_100B24B1C, (&v422 - 4), v126);
      v457 = v127;

      return v128;
    }

    v68 = v438;
    v451 = *(v438 + 32);
    v69 = v422;
    v70 = v61;
    v71 = v452;
    (v451)(v422, v70);
    type metadata accessor for BeaconKeyManager(0);
    v72 = v457;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v457 = v72;
    v73 = v460;
    sub_10001F280(v448, &v460);
    v74 = v433;
    v75 = v69;
    v76 = v71;
    v443 = *(v68 + 16);
    v443(v433, v75, v71);
    v444 = (v68 + 16);
    v77 = (*(v68 + 80) + 64) & ~*(v68 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = v73;
    sub_10000A748(&v460, v78 + 24);
    (v451)(v78 + v77, v74, v76);
    v79 = v78 + v77 + v54;
    *v79 = 0;
    *(v79 + 2) = 0;

    unsafeFromAsyncTask<A>(_:)();

    v81 = *(&v460 + 1);
    v80 = v460;
    v446 = v460;
    if (v461 > 1u)
    {
      if (v461 != 2)
      {
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v234 = type metadata accessor for Logger();
        sub_1000076D4(v234, qword_10177BA08);
        sub_10001F280(v448, &v460);
        v235 = Logger.logObject.getter();
        v236 = static os_log_type_t.default.getter();
        v237 = os_log_type_enabled(v235, v236);
        v238 = v422;
        if (v237)
        {
          v239 = swift_slowAlloc();
          v240 = swift_slowAlloc();
          v464 = v240;
          *v239 = 141558275;
          *(v239 + 4) = 1752392040;
          *(v239 + 12) = 2081;
          v242 = v462;
          v241 = v463;
          sub_1000035D0(&v460, v462);
          v243 = v428;
          (*(*(*(v241 + 8) + 8) + 32))(v242);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v244 = v430;
          v245 = dispatch thunk of CustomStringConvertible.description.getter();
          v247 = v246;
          (*(v429 + 8))(v243, v244);
          sub_100007BAC(&v460);
          v248 = sub_1000136BC(v245, v247, &v464);

          *(v239 + 14) = v248;
          sub_100007BAC(v240);
        }

        else
        {

          sub_100007BAC(&v460);
        }

        (*(v438 + 8))(v238, v452);
        return _swiftEmptyArrayStorage;
      }

      v137 = *(v460 + 16);
      if (v137)
      {
        v436 = *(&v460 + 1);
        *&v460 = _swiftEmptyArrayStorage;
        sub_101124AA8(0, v137, 0);
        v128 = v460;
        v138 = v80 + ((*(v431 + 80) + 32) & ~*(v431 + 80));
        v451 = *(v431 + 72);
        v139 = (v453 + 56);
        v140 = (v431 + 56);
        v141 = v427;
        do
        {
          sub_100022A54(v138, v141, _s18ConnectionKeyGroupVMa);
          v142 = *(v456 + 48);
          (*v139)(v38, 1, 1, v458);
          sub_10002911C(v141, &v38[v142], _s18ConnectionKeyGroupVMa);
          (*v140)(&v38[v142], 0, 1, v454);
          *&v460 = v128;
          v144 = v128[2];
          v143 = v128[3];
          if (v144 >= v143 >> 1)
          {
            sub_101124AA8((v143 > 1), v144 + 1, 1);
            v141 = v427;
            v128 = v460;
          }

          v128[2] = v144 + 1;
          sub_1000D2AD8(v38, v128 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v144, &qword_1016A5A80, &qword_1013B35A8);
          v138 += v451;
          --v137;
        }

        while (v137);
        v252 = v446;
        v253 = v436;
        v254 = 2;
LABEL_195:
        sub_100359088(v252, v253, v254);
        (*(v438 + 8))(v422, v452);
        return v128;
      }

      v329 = *(&v460 + 1);
      v328 = v460;
      v330 = 2;
    }

    else
    {
      if (!v461)
      {
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_1000076D4(v82, qword_10177BA08);
        sub_10001F280(v448, &v460);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();
        v85 = os_log_type_enabled(v83, v84);
        v86 = v422;
        v87 = v437;
        if (v85)
        {
          v88 = swift_slowAlloc();
          v451 = swift_slowAlloc();
          v464 = v451;
          *v88 = 141558275;
          *(v88 + 4) = 1752392040;
          *(v88 + 12) = 2081;
          v90 = v462;
          v89 = v463;
          sub_1000035D0(&v460, v462);
          v91 = v428;
          (*(*(*(v89 + 8) + 8) + 32))(v90);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v92 = v430;
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = v94;
          (*(v429 + 8))(v91, v92);
          sub_100007BAC(&v460);
          v96 = sub_1000136BC(v93, v95, &v464);
          v80 = v446;

          *(v88 + 14) = v96;
          v86 = v422;
          sub_100007BAC(v451);
        }

        else
        {

          sub_100007BAC(&v460);
        }

        v291 = v447;
        v53 = v439;
        v292 = *(v80 + 16);
        if (v292)
        {
          v436 = v81;
          v464 = _swiftEmptyArrayStorage;
          sub_101124AA8(0, v292, 0);
          v61 = 0;
          v128 = v464;
          v449 = (v80 + ((*(v453 + 80) + 32) & ~*(v453 + 80)));
          v448 = v453 + 56;
          v442 = (v431 + 56);
          v445 = v292;
          while (1)
          {
            if (v61 >= *(v80 + 16))
            {
              goto LABEL_212;
            }

            v293 = v453;
            sub_100022A54(&v449[*(v453 + 72) * v61], v87, type metadata accessor for TimeBasedKey);
            v451 = *(v456 + 48);
            sub_100022A54(v87, v53, type metadata accessor for TimeBasedKey);
            v294 = *(v293 + 56);
            v295 = v458;
            v294(v53, 0, 1, v458);
            sub_100022A54(v87, v291, type metadata accessor for TimeBasedKey);
            v296 = (v291 + *(v295 + 24));
            v297 = v296[1];
            if (v297 >> 60 == 15)
            {
              sub_100022C40(v87, type metadata accessor for TimeBasedKey);
              sub_100022C40(v291, type metadata accessor for TimeBasedKey);
              v298 = 1;
              v299 = v454;
              v300 = v451;
            }

            else
            {
              v167 = *v296;
              v146 = String.utf8Data.getter();
              v157 = v301;
              type metadata accessor for __DataStorage();
              swift_allocObject();
              v302 = __DataStorage.init(length:)();
              *&v460 = 0x2000000000;
              *(&v460 + 1) = v302 | 0x4000000000000000;
              sub_100017D5C(v146, v157);
              sub_10002E98C(v167, v297);
              v303 = v457;
              v304 = sub_100A7F110(v146, v157, v146, v157, v167, v297, &v460, 32);
              v53 = v303;
              if (v303)
              {
                sub_100006654(v167, v297);
                sub_100016590(v146, v157);
LABEL_344:
                v399 = *(&v460 + 1);
                v398 = v460;
LABEL_345:
                sub_100016590(v398, v399);
                v396 = v146;
                v397 = v157;
                goto LABEL_346;
              }

              v305 = v304;
              sub_100006654(v167, v297);
              sub_100016590(v146, v157);
              if (v305)
              {
                v379 = static os_log_type_t.error.getter();
                if (qword_101694BE0 != -1)
                {
                  swift_once();
                }

                v380 = qword_10177BA00;
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v381 = swift_allocObject();
                *(v381 + 16) = xmmword_101385D80;
                *(v381 + 56) = &type metadata for Int32;
                *(v381 + 64) = &protocol witness table for Int32;
                *(v381 + 32) = v305;
                os_log(_:dso:log:_:_:)(v379, &_mh_execute_header, v380, "Error running CCDeriveKey. Code: %d.", v422);

                v382 = v426;
                CryptoError.init(rawValue:)();
                v383 = type metadata accessor for CryptoError();
                sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
                v53 = swift_allocError();
                v385 = v384;
                v386 = *(v383 - 8);
                v387 = *(v386 + 48);
                if (v387(v382, 1, v383) == 1)
                {
                  (*(v386 + 104))(v385, enum case for CryptoError.unspecifiedError(_:), v383);
                  if (v387(v426, 1, v383) != 1)
                  {
                    sub_10000B3A8(v426, &qword_10169C9A0, &unk_1013D5A40);
                  }
                }

                else
                {
                  (*(v386 + 32))(v385, v426, v383);
                }

                swift_willThrow();
                goto LABEL_344;
              }

              v162 = *(&v460 + 1);
              v170 = v460;
              sub_100017D5C(v460, *(&v460 + 1));
              sub_100016590(v170, v162);
              v306 = v162 >> 62;
              if ((v162 >> 62) > 1)
              {
                if (v306 != 2)
                {
                  v415 = 0;
                  goto LABEL_358;
                }

                v309 = *(v170 + 16);
                v308 = *(v170 + 24);
                v175 = __OFSUB__(v308, v309);
                v307 = v308 - v309;
                if (v175)
                {
                  goto LABEL_220;
                }
              }

              else if (v306)
              {
                LODWORD(v307) = HIDWORD(v170) - v170;
                if (__OFSUB__(HIDWORD(v170), v170))
                {
                  goto LABEL_224;
                }

                v307 = v307;
              }

              else
              {
                v307 = BYTE6(v162);
              }

              if (v307 != 32)
              {
                goto LABEL_251;
              }

              sub_100016590(v146, v157);
              v310 = *v447;
              v311 = v441;
              *(v441 + 7) = &type metadata for PrimaryIndex;
              *(v311 + 8) = sub_10002A2B8();
              *(v311 + 4) = v310;
              v312 = sub_100A7A194(v296[2], v296[3], 0, 0);
              v313 = sub_100A7829C(v312, 0, 2);
              v457 = 0;
              v146 = v313;
              v157 = v314;
              CCECCryptorRelease();
              v315 = v157 >> 62;
              v53 = v441;
              v450 = v128;
              if ((v157 >> 62) > 1)
              {
                if (v315 != 2)
                {
                  v419 = 0;
                  goto LABEL_367;
                }

                v318 = *(v146 + 16);
                v317 = *(v146 + 24);
                v175 = __OFSUB__(v317, v318);
                v316 = v317 - v318;
                if (v175)
                {
                  goto LABEL_225;
                }
              }

              else if (v315)
              {
                LODWORD(v316) = HIDWORD(v146) - v146;
                if (__OFSUB__(HIDWORD(v146), v146))
                {
                  goto LABEL_226;
                }

                v316 = v316;
              }

              else
              {
                v316 = BYTE6(v157);
              }

              v440 = v61;
              if (v316 != 28)
              {
                goto LABEL_267;
              }

              v319 = v170;
              sub_10002EA98(6, v146, v157, &v460);
              v87 = v437;
              sub_100022C40(v437, type metadata accessor for TimeBasedKey);
              v321 = *(&v460 + 1);
              v320 = v460;
              v299 = v454;
              v291 = v447;
              v443((v53 + *(v454 + 28)), &v447[*(v458 + 20)], v452);
              *v53 = __PAIR128__(v321, v320);
              *(v53 + 16) = v319;
              *(v53 + 24) = v162;
              sub_100022C40(v291, type metadata accessor for TimeBasedKey);
              v300 = v451;
              v322 = v53;
              v53 = v439;
              sub_10002911C(v322, &v439[v451], _s18ConnectionKeyGroupVMa);
              v298 = 0;
              v80 = v446;
              v128 = v450;
              v61 = v440;
            }

            (*v442)(v53 + v300, v298, 1, v299);
            v464 = v128;
            v324 = v128[2];
            v323 = v128[3];
            if (v324 >= v323 >> 1)
            {
              sub_101124AA8((v323 > 1), v324 + 1, 1);
              v128 = v464;
            }

            ++v61;
            v128[2] = v324 + 1;
            sub_1000D2AD8(v53, v128 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v324, &qword_1016A5A80, &qword_1013B35A8);
            if (v445 == v61)
            {
              v252 = v80;
              v253 = v436;
              v254 = 0;
              goto LABEL_195;
            }
          }
        }

        sub_100359088(v80, v81, 0);
        (*(v438 + 8))(v86, v452);
        return _swiftEmptyArrayStorage;
      }

      v203 = *(v460 + 16);
      if (v203)
      {
        v436 = *(&v460 + 1);
        v464 = _swiftEmptyArrayStorage;
        sub_101124AA8(0, v203, 0);
        v204 = 0;
        v128 = v464;
        v448 = v80 + ((*(v453 + 80) + 32) & ~*(v453 + 80));
        v447 = (v453 + 56);
        v441 = (v431 + 56);
        v53 = v445;
        v61 = v449;
        v442 = v203;
        while (1)
        {
          if (v204 >= *(v80 + 16))
          {
            goto LABEL_211;
          }

          v205 = v453;
          v206 = v450;
          sub_100022A54(v448 + *(v453 + 72) * v204, v450, type metadata accessor for TimeBasedKey);
          v451 = *(v456 + 48);
          sub_100022A54(v206, v61, type metadata accessor for TimeBasedKey);
          v207 = *(v205 + 56);
          v208 = v458;
          v207(v61, 0, 1, v458);
          sub_100022A54(v206, v53, type metadata accessor for TimeBasedKey);
          v146 = v53 + *(v208 + 24);
          v209 = *(v146 + 8);
          if (v209 >> 60 == 15)
          {
            sub_100022C40(v206, type metadata accessor for TimeBasedKey);
            sub_100022C40(v53, type metadata accessor for TimeBasedKey);
            v210 = 1;
            v146 = v454;
            v211 = v449;
            v212 = v451;
          }

          else
          {
            v157 = *v146;
            v167 = String.utf8Data.getter();
            v53 = v213;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v214 = __DataStorage.init(length:)();
            *&v460 = 0x2000000000;
            *(&v460 + 1) = v214 | 0x4000000000000000;
            sub_100017D5C(v167, v53);
            sub_10002E98C(v157, v209);
            v215 = v457;
            v216 = sub_100A7F110(v167, v53, v167, v53, v157, v209, &v460, 32);
            v162 = v215;
            if (v215)
            {
              sub_100006654(v157, v209);
              sub_100016590(v167, v53);
LABEL_336:
              v392 = *(&v460 + 1);
              v391 = v460;
LABEL_337:
              sub_100016590(v391, v392);
              sub_100016590(v167, v53);
              *&v460 = 0;
              *(&v460 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v393._object = 0x8000000101354990;
              v393._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v393);
              v459 = v162;
              goto LABEL_347;
            }

            v217 = v216;
            sub_100006654(v157, v209);
            sub_100016590(v167, v53);
            if (v217)
            {
              v361 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v362 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v363 = swift_allocObject();
              *(v363 + 16) = xmmword_101385D80;
              *(v363 + 56) = &type metadata for Int32;
              *(v363 + 64) = &protocol witness table for Int32;
              *(v363 + 32) = v217;
              os_log(_:dso:log:_:_:)(v361, &_mh_execute_header, v362, "Error running CCDeriveKey. Code: %d.", v422);

              v364 = v424;
              CryptoError.init(rawValue:)();
              v365 = type metadata accessor for CryptoError();
              sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v162 = swift_allocError();
              v367 = v366;
              v368 = *(v365 - 8);
              v369 = *(v368 + 48);
              if (v369(v364, 1, v365) == 1)
              {
                (*(v368 + 104))(v367, enum case for CryptoError.unspecifiedError(_:), v365);
                if (v369(v424, 1, v365) != 1)
                {
                  sub_10000B3A8(v424, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v368 + 32))(v367, v424, v365);
              }

              swift_willThrow();
              goto LABEL_336;
            }

            v61 = *(&v460 + 1);
            v170 = v460;
            sub_100017D5C(v460, *(&v460 + 1));
            sub_100016590(v170, v61);
            v218 = v61 >> 62;
            v440 = v61;
            if ((v61 >> 62) > 1)
            {
              if (v218 != 2)
              {
                v414 = 0;
                goto LABEL_354;
              }

              v221 = *(v170 + 16);
              v220 = *(v170 + 24);
              v175 = __OFSUB__(v220, v221);
              v219 = v220 - v221;
              if (v175)
              {
                goto LABEL_219;
              }
            }

            else if (v218)
            {
              LODWORD(v219) = HIDWORD(v170) - v170;
              if (__OFSUB__(HIDWORD(v170), v170))
              {
                goto LABEL_223;
              }

              v219 = v219;
            }

            else
            {
              v219 = BYTE6(v61);
            }

            if (v219 != 32)
            {
              goto LABEL_247;
            }

            sub_100016590(v167, v53);
            v222 = *v445;
            v61 = v434;
            *(v434 + 7) = &type metadata for PrimaryIndex;
            *(v61 + 64) = sub_10002A2B8();
            *(v61 + 32) = v222;
            v157 = sub_100A7A194(*(v146 + 16), *(v146 + 24), 0, 0);
            v223 = sub_100A7829C(v157, 0, 2);
            v457 = 0;
            v146 = v454;
            v167 = v223;
            v162 = v224;
            CCECCryptorRelease();
            v225 = v162 >> 62;
            if ((v162 >> 62) > 1)
            {
              if (v225 != 2)
              {
                v418 = 0;
                goto LABEL_362;
              }

              v228 = *(v167 + 16);
              v227 = *(v167 + 24);
              v175 = __OFSUB__(v227, v228);
              v226 = v227 - v228;
              if (v175)
              {
                goto LABEL_229;
              }
            }

            else if (v225)
            {
              LODWORD(v226) = HIDWORD(v167) - v167;
              if (__OFSUB__(HIDWORD(v167), v167))
              {
                goto LABEL_232;
              }

              v226 = v226;
            }

            else
            {
              v226 = BYTE6(v162);
            }

            if (v226 != 28)
            {
              goto LABEL_263;
            }

            sub_10002EA98(6, v167, v162, &v460);
            sub_100022C40(v450, type metadata accessor for TimeBasedKey);
            v230 = *(&v460 + 1);
            v229 = v460;
            v53 = v445;
            v443((v61 + *(v146 + 28)), &v445[*(v458 + 20)], v452);
            *v61 = __PAIR128__(v230, v229);
            v231 = v440;
            *(v61 + 16) = v170;
            *(v61 + 24) = v231;
            sub_100022C40(v53, type metadata accessor for TimeBasedKey);
            v211 = v449;
            v212 = v451;
            sub_10002911C(v61, &v449[v451], _s18ConnectionKeyGroupVMa);
            v210 = 0;
            v80 = v446;
          }

          (*v441)(v211 + v212, v210, 1, v146);
          v464 = v128;
          v233 = v128[2];
          v232 = v128[3];
          v61 = v211;
          if (v233 >= v232 >> 1)
          {
            sub_101124AA8((v232 > 1), v233 + 1, 1);
            v128 = v464;
          }

          ++v204;
          v128[2] = v233 + 1;
          sub_1000D2AD8(v211, v128 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v233, &qword_1016A5A80, &qword_1013B35A8);
          if (v442 == v204)
          {
            v252 = v80;
            v253 = v436;
            v254 = 1;
            goto LABEL_195;
          }
        }
      }

      v329 = *(&v460 + 1);
      v328 = v460;
      v330 = 1;
    }

    sub_100359088(v328, v329, v330);
    (*(v438 + 8))(v422, v452);
    return _swiftEmptyArrayStorage;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v97 = *v61;
    if (!*v61)
    {
      goto LABEL_350;
    }

    v98 = v97 - 1;
    if (v97 - 1 <= 1)
    {
      v98 = 1;
    }

    if (is_mul_ok(v98, 0x60uLL))
    {
      v99 = 96 * v98;
      if ((v99 - 96) <= 1)
      {
        v63 = 1;
      }

      else
      {
        v63 = v99 - 96;
      }

      if (v99 - 1 >= v63)
      {
        if (is_mul_ok(v97, 0x60uLL))
        {
          v100 = 96 * v97;
          v67 = v100 - 1;
          v101 = v100 - 96;
          if (v101 <= 1)
          {
            v101 = 1;
          }

          if (v67 >= v101)
          {
            v64 = *(v61 + 8);
            return sub_100ADFC20(v448, v64, v63, v67);
          }

          goto LABEL_216;
        }

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
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
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
        goto LABEL_233;
      }

LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v63 = *(v61 + 8);
    v64 = *(v61 + 16);
    if (*v61)
    {
      if (!v63)
      {
        LODWORD(v421) = 0;
        v401 = 4387;
        goto LABEL_370;
      }

      if (is_mul_ok(v63, 0x60uLL))
      {
        v65 = 96 * v63 - 96;
        if (v65 <= 1)
        {
          v65 = 1;
        }

        if (96 * v63 - 1 >= v65)
        {
          if (is_mul_ok(v63 + 1, 0x60uLL))
          {
            v66 = 96 * (v63 + 1);
            v67 = v66 - 1;
            if (v66 - 1 >= (v66 - 96))
            {
              v63 = v65;
              return sub_100ADFC20(v448, v64, v63, v67);
            }

            goto LABEL_237;
          }

LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

LABEL_235:
        __break(1u);
        goto LABEL_236;
      }

LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

    v67 = v63 + 96;
    if (v63 < 0xFFFFFFFFFFFFFFA0)
    {
      return sub_100ADFC20(v448, v64, v63, v67);
    }

LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  static Date.trustedNow.getter(v53);
  v102 = v432;
  DateInterval.init(start:duration:)();
  type metadata accessor for BeaconKeyManager(0);
  v103 = v457;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v457 = v103;
  v104 = v460;
  sub_10001F280(v448, &v460);
  v105 = v438;
  v106 = *(v438 + 16);
  v107 = v433;
  v108 = v452;
  v445 = (v438 + 16);
  v443 = v106;
  v106(v433, v102, v452);
  v109 = (*(v105 + 80) + 64) & ~*(v105 + 80);
  v110 = swift_allocObject();
  *(v110 + 16) = v104;
  sub_10000A748(&v460, v110 + 24);
  (*(v105 + 32))(v110 + v109, v107, v108);
  v111 = v110 + v109 + v54;
  *v111 = 0;
  *(v111 + 2) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v53 = *(&v460 + 1);
  v61 = v460;
  v447 = v460;
  if (v461 <= 1u)
  {
    if (!v461)
    {
      if (qword_101694BE8 == -1)
      {
LABEL_36:
        v112 = type metadata accessor for Logger();
        sub_1000076D4(v112, qword_10177BA08);
        sub_10001F280(v448, &v460);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();
        v115 = os_log_type_enabled(v113, v114);
        v116 = v436;
        if (v115)
        {
          v117 = swift_slowAlloc();
          v451 = swift_slowAlloc();
          v464 = v451;
          *v117 = 141558275;
          *(v117 + 4) = 1752392040;
          *(v117 + 12) = 2081;
          v119 = v462;
          v118 = v463;
          sub_1000035D0(&v460, v462);
          v120 = v428;
          (*(*(*(v118 + 8) + 8) + 32))(v119);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v121 = v430;
          v122 = dispatch thunk of CustomStringConvertible.description.getter();
          v124 = v123;
          (*(v429 + 8))(v120, v121);
          sub_100007BAC(&v460);
          v125 = sub_1000136BC(v122, v124, &v464);

          *(v117 + 14) = v125;
          sub_100007BAC(v451);
          v61 = v447;
        }

        else
        {

          sub_100007BAC(&v460);
        }

        v255 = v435;
        v256 = *(v61 + 16);
        if (v256)
        {
          v437 = v53;
          v464 = _swiftEmptyArrayStorage;
          sub_101124AA8(0, v256, 0);
          v157 = 0;
          v128 = v464;
          v449 = (v61 + ((*(v453 + 80) + 32) & ~*(v453 + 80)));
          v448 = v453 + 56;
          v442 = (v431 + 56);
          v53 = v446;
          v444 = v256;
          while (1)
          {
            if (v157 >= *(v61 + 16))
            {
              goto LABEL_210;
            }

            v257 = v453;
            sub_100022A54(&v449[*(v453 + 72) * v157], v116, type metadata accessor for TimeBasedKey);
            v451 = *(v456 + 48);
            sub_100022A54(v116, v255, type metadata accessor for TimeBasedKey);
            v258 = *(v257 + 56);
            v259 = v458;
            v258(v255, 0, 1, v458);
            sub_100022A54(v116, v53, type metadata accessor for TimeBasedKey);
            v260 = (v53 + *(v259 + 24));
            v261 = v260[1];
            if (v261 >> 60 == 15)
            {
              sub_100022C40(v116, type metadata accessor for TimeBasedKey);
              sub_100022C40(v53, type metadata accessor for TimeBasedKey);
              v262 = 1;
              v263 = v454;
              v264 = v451;
            }

            else
            {
              v61 = *v260;
              v162 = String.utf8Data.getter();
              v146 = v265;
              type metadata accessor for __DataStorage();
              swift_allocObject();
              v266 = __DataStorage.init(length:)();
              *&v460 = 0x2000000000;
              *(&v460 + 1) = v266 | 0x4000000000000000;
              sub_100017D5C(v162, v146);
              sub_10002E98C(v61, v261);
              v267 = v457;
              v268 = sub_100A7F110(v162, v146, v162, v146, v61, v261, &v460, 32);
              v53 = v267;
              if (v267)
              {
                sub_100006654(v61, v261);
                sub_100016590(v162, v146);
                goto LABEL_340;
              }

              v269 = v268;
              sub_100006654(v61, v261);
              sub_100016590(v162, v146);
              if (v269)
              {
                v370 = static os_log_type_t.error.getter();
                if (qword_101694BE0 != -1)
                {
                  swift_once();
                }

                v371 = qword_10177BA00;
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v372 = swift_allocObject();
                *(v372 + 16) = xmmword_101385D80;
                *(v372 + 56) = &type metadata for Int32;
                *(v372 + 64) = &protocol witness table for Int32;
                *(v372 + 32) = v269;
                os_log(_:dso:log:_:_:)(v370, &_mh_execute_header, v371, "Error running CCDeriveKey. Code: %d.", v422);

                v373 = v425;
                CryptoError.init(rawValue:)();
                v374 = type metadata accessor for CryptoError();
                sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
                v53 = swift_allocError();
                v376 = v375;
                v377 = *(v374 - 8);
                v378 = *(v377 + 48);
                if (v378(v373, 1, v374) == 1)
                {
                  (*(v377 + 104))(v376, enum case for CryptoError.unspecifiedError(_:), v374);
                  if (v378(v425, 1, v374) != 1)
                  {
                    sub_10000B3A8(v425, &qword_10169C9A0, &unk_1013D5A40);
                  }
                }

                else
                {
                  (*(v377 + 32))(v376, v425, v374);
                }

                swift_willThrow();
LABEL_340:
                v395 = *(&v460 + 1);
                v394 = v460;
LABEL_341:
                sub_100016590(v394, v395);
                v396 = v162;
                v397 = v146;
LABEL_346:
                sub_100016590(v396, v397);
                *&v460 = 0;
                *(&v460 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(35);
                v400._object = 0x8000000101354990;
                v400._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v400);
                v459 = v53;
LABEL_347:
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                LODWORD(v421) = 0;
                v350 = 458;
LABEL_348:
                for (i = v350; ; i = v401)
                {
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_350:
                  LODWORD(v421) = 0;
                  v401 = 4371;
LABEL_370:
                  ;
                }
              }

              v167 = *(&v460 + 1);
              v170 = v460;
              sub_100017D5C(v460, *(&v460 + 1));
              sub_100016590(v170, v167);
              v270 = v167 >> 62;
              if ((v167 >> 62) > 1)
              {
                if (v270 != 2)
                {
                  v413 = 0;
                  goto LABEL_356;
                }

                v273 = *(v170 + 16);
                v272 = *(v170 + 24);
                v175 = __OFSUB__(v272, v273);
                v271 = v272 - v273;
                if (v175)
                {
                  goto LABEL_218;
                }
              }

              else if (v270)
              {
                LODWORD(v271) = HIDWORD(v170) - v170;
                if (__OFSUB__(HIDWORD(v170), v170))
                {
                  goto LABEL_222;
                }

                v271 = v271;
              }

              else
              {
                v271 = BYTE6(v167);
              }

              if (v271 != 32)
              {
                goto LABEL_243;
              }

              sub_100016590(v162, v146);
              v274 = *v446;
              v275 = v440;
              *(v440 + 7) = &type metadata for PrimaryIndex;
              *(v275 + 8) = sub_10002A2B8();
              *(v275 + 4) = v274;
              v61 = sub_100A7A194(v260[2], v260[3], 0, 0);
              v276 = sub_100A7829C(v61, 0, 2);
              v457 = 0;
              v146 = v276;
              v162 = v277;
              CCECCryptorRelease();
              v278 = v162 >> 62;
              v450 = v128;
              if ((v162 >> 62) > 1)
              {
                if (v278 != 2)
                {
                  v417 = 0;
                  goto LABEL_364;
                }

                v281 = *(v146 + 16);
                v280 = *(v146 + 24);
                v175 = __OFSUB__(v280, v281);
                v279 = v280 - v281;
                if (v175)
                {
                  goto LABEL_228;
                }
              }

              else if (v278)
              {
                LODWORD(v279) = HIDWORD(v146) - v146;
                if (__OFSUB__(HIDWORD(v146), v146))
                {
                  goto LABEL_231;
                }

                v279 = v279;
              }

              else
              {
                v279 = BYTE6(v162);
              }

              v441 = v157;
              if (v279 != 28)
              {
                goto LABEL_259;
              }

              v282 = v170;
              sub_10002EA98(6, v146, v162, &v460);
              v283 = v436;
              sub_100022C40(v436, type metadata accessor for TimeBasedKey);
              v285 = *(&v460 + 1);
              v284 = v460;
              v263 = v454;
              v286 = v440;
              v287 = v446;
              v443(&v440[*(v454 + 28)], &v446[*(v458 + 20)], v452);
              *v286 = __PAIR128__(v285, v284);
              *(v286 + 2) = v282;
              *(v286 + 3) = v167;
              sub_100022C40(v287, type metadata accessor for TimeBasedKey);
              v255 = v435;
              v264 = v451;
              v288 = v286;
              v53 = v287;
              v116 = v283;
              sub_10002911C(v288, &v435[v451], _s18ConnectionKeyGroupVMa);
              v262 = 0;
              v61 = v447;
              v128 = v450;
              v157 = v441;
            }

            (*v442)(v255 + v264, v262, 1, v263);
            v464 = v128;
            v290 = v128[2];
            v289 = v128[3];
            if (v290 >= v289 >> 1)
            {
              sub_101124AA8((v289 > 1), v290 + 1, 1);
              v128 = v464;
            }

            ++v157;
            v128[2] = v290 + 1;
            sub_1000D2AD8(v255, v128 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v290, &qword_1016A5A80, &qword_1013B35A8);
            if (v444 == v157)
            {
              v249 = v61;
              v250 = v437;
              v251 = 0;
              goto LABEL_160;
            }
          }
        }

        v325 = v61;
        v326 = v53;
        v327 = 0;
        goto LABEL_201;
      }

LABEL_238:
      swift_once();
      goto LABEL_36;
    }

    v145 = *(v460 + 16);
    v146 = v454;
    if (v145)
    {
      v437 = *(&v460 + 1);
      v464 = _swiftEmptyArrayStorage;
      sub_101124AA8(0, v145, 0);
      v53 = 0;
      v128 = v464;
      v448 = v61 + ((*(v453 + 80) + 32) & ~*(v453 + 80));
      v446 = (v453 + 56);
      v441 = (v431 + 56);
      v147 = v444;
      v442 = v145;
      while (v53 < *(v61 + 16))
      {
        v148 = v146;
        v149 = v61;
        v150 = v453;
        v151 = v449;
        sub_100022A54(v448 + *(v453 + 72) * v53, v449, type metadata accessor for TimeBasedKey);
        v450 = *(v456 + 48);
        v152 = v451;
        sub_100022A54(v151, v451, type metadata accessor for TimeBasedKey);
        v153 = *(v150 + 56);
        v154 = v458;
        v153(v152, 0, 1, v458);
        sub_100022A54(v151, v147, type metadata accessor for TimeBasedKey);
        v155 = *(v154 + 24);
        v156 = v147;
        v157 = v147 + v155;
        v158 = *(v157 + 8);
        if (v158 >> 60 == 15)
        {
          sub_100022C40(v151, type metadata accessor for TimeBasedKey);
          sub_100022C40(v156, type metadata accessor for TimeBasedKey);
          v159 = 1;
          v147 = v156;
          v160 = v450;
          v161 = v451;
          v61 = v149;
          v146 = v148;
        }

        else
        {
          v61 = *v157;
          v162 = String.utf8Data.getter();
          v146 = v163;
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v164 = __DataStorage.init(length:)();
          *&v460 = 0x2000000000;
          *(&v460 + 1) = v164 | 0x4000000000000000;
          sub_100017D5C(v162, v146);
          sub_10002E98C(v61, v158);
          v165 = v457;
          v166 = sub_100A7F110(v162, v146, v162, v146, v61, v158, &v460, 32);
          v167 = v165;
          if (v165)
          {
            v351 = v165;
            sub_100006654(v61, v158);
            sub_100016590(v162, v146);
LABEL_332:
            v389 = *(&v460 + 1);
            v388 = v460;
LABEL_333:
            sub_100016590(v388, v389);
            sub_100016590(v162, v146);
            *&v460 = 0;
            *(&v460 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(35);
            v390._object = 0x8000000101354990;
            v390._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v390);
            v459 = v351;
            goto LABEL_347;
          }

          v168 = v166;
          sub_100006654(v61, v158);
          sub_100016590(v162, v146);
          if (v168)
          {
            v352 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v353 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v354 = swift_allocObject();
            *(v354 + 16) = xmmword_101385D80;
            *(v354 + 56) = &type metadata for Int32;
            *(v354 + 64) = &protocol witness table for Int32;
            *(v354 + 32) = v168;
            os_log(_:dso:log:_:_:)(v352, &_mh_execute_header, v353, "Error running CCDeriveKey. Code: %d.", v422);

            v355 = v423;
            CryptoError.init(rawValue:)();
            v356 = type metadata accessor for CryptoError();
            sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
            v351 = swift_allocError();
            v358 = v357;
            v359 = *(v356 - 8);
            v360 = *(v359 + 48);
            if (v360(v355, 1, v356) == 1)
            {
              (*(v359 + 104))(v358, enum case for CryptoError.unspecifiedError(_:), v356);
              if (v360(v423, 1, v356) != 1)
              {
                sub_10000B3A8(v423, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v359 + 32))(v358, v423, v356);
            }

            swift_willThrow();
            goto LABEL_332;
          }

          v169 = *(&v460 + 1);
          v170 = v460;
          sub_100017D5C(v460, *(&v460 + 1));
          sub_100016590(v170, v169);
          v171 = v169 >> 62;
          v440 = v169;
          if ((v169 >> 62) > 1)
          {
            if (v171 != 2)
            {
              v167 = 0;
              goto LABEL_352;
            }

            v174 = *(v170 + 16);
            v173 = *(v170 + 24);
            v175 = __OFSUB__(v173, v174);
            v172 = v173 - v174;
            if (v175)
            {
              goto LABEL_217;
            }
          }

          else if (v171)
          {
            LODWORD(v172) = HIDWORD(v170) - v170;
            if (__OFSUB__(HIDWORD(v170), v170))
            {
              goto LABEL_221;
            }

            v172 = v172;
          }

          else
          {
            v172 = BYTE6(v169);
          }

          if (v172 != 32)
          {
            if (v171 != 1)
            {
              goto LABEL_271;
            }

            LODWORD(v270) = HIDWORD(v170) - v170;
            if (!__OFSUB__(HIDWORD(v170), v170))
            {
              v167 = v270;
              goto LABEL_352;
            }

            __break(1u);
LABEL_243:
            if (v270 != 1)
            {
              goto LABEL_275;
            }

            LODWORD(v218) = HIDWORD(v170) - v170;
            if (!__OFSUB__(HIDWORD(v170), v170))
            {
              v413 = v218;
              goto LABEL_356;
            }

            __break(1u);
LABEL_247:
            if (v218 != 1)
            {
              goto LABEL_279;
            }

            LODWORD(v306) = HIDWORD(v170) - v170;
            if (!__OFSUB__(HIDWORD(v170), v170))
            {
              v414 = v306;
              goto LABEL_354;
            }

            __break(1u);
LABEL_251:
            if (v306 != 1)
            {
              goto LABEL_283;
            }

            LODWORD(v180) = HIDWORD(v170) - v170;
            if (!__OFSUB__(HIDWORD(v170), v170))
            {
              v415 = v180;
              goto LABEL_358;
            }

            __break(1u);
LABEL_255:
            if (v180 != 1)
            {
              goto LABEL_287;
            }

            LODWORD(v278) = HIDWORD(v157) - v157;
            if (!__OFSUB__(HIDWORD(v157), v157))
            {
              v416 = v278;
              goto LABEL_360;
            }

            __break(1u);
LABEL_259:
            if (v278 != 1)
            {
              goto LABEL_291;
            }

            LODWORD(v225) = HIDWORD(v146) - v146;
            if (!__OFSUB__(HIDWORD(v146), v146))
            {
              v417 = v225;
              goto LABEL_364;
            }

            __break(1u);
LABEL_263:
            if (v225 != 1)
            {
              goto LABEL_295;
            }

            LODWORD(v315) = HIDWORD(v167) - v167;
            if (!__OFSUB__(HIDWORD(v167), v167))
            {
              v418 = v315;
              goto LABEL_362;
            }

            __break(1u);
LABEL_267:
            if (v315 != 1)
            {
              goto LABEL_299;
            }

            LODWORD(v171) = HIDWORD(v146) - v146;
            if (!__OFSUB__(HIDWORD(v146), v146))
            {
              v419 = v171;
              goto LABEL_367;
            }

            __break(1u);
LABEL_271:
            if (v171 != 2)
            {
              v167 = BYTE6(v440);
              goto LABEL_352;
            }

            v332 = *(v170 + 16);
            v270 = *(v170 + 24);
            v167 = v270 - v332;
            if (!__OFSUB__(v270, v332))
            {
LABEL_352:
              sub_100018350();
              v402 = swift_allocError();
              *v403 = 32;
              *(v403 + 8) = v167;
              *(v403 + 16) = 0;
              v351 = v402;
              swift_willThrow();
              v388 = v170;
              v389 = v440;
              goto LABEL_333;
            }

            __break(1u);
LABEL_275:
            if (v270 != 2)
            {
              v413 = BYTE6(v167);
LABEL_356:
              sub_100018350();
              v53 = swift_allocError();
              *v405 = 32;
              *(v405 + 8) = v413;
              *(v405 + 16) = 0;
              swift_willThrow();
              v394 = v170;
              v395 = v167;
              goto LABEL_341;
            }

            v333 = *(v170 + 16);
            v218 = *(v170 + 24);
            v413 = v218 - v333;
            if (!__OFSUB__(v218, v333))
            {
              goto LABEL_356;
            }

            __break(1u);
LABEL_279:
            if (v218 != 2)
            {
              v414 = BYTE6(v440);
              goto LABEL_354;
            }

            v334 = *(v170 + 16);
            v306 = *(v170 + 24);
            v414 = v306 - v334;
            if (!__OFSUB__(v306, v334))
            {
LABEL_354:
              sub_100018350();
              v162 = swift_allocError();
              *v404 = 32;
              *(v404 + 8) = v414;
              *(v404 + 16) = 0;
              swift_willThrow();
              v391 = v170;
              v392 = v440;
              goto LABEL_337;
            }

            __break(1u);
LABEL_283:
            if (v306 != 2)
            {
              v415 = BYTE6(v162);
              goto LABEL_358;
            }

            v335 = *(v170 + 16);
            v180 = *(v170 + 24);
            v415 = v180 - v335;
            if (!__OFSUB__(v180, v335))
            {
LABEL_358:
              sub_100018350();
              v53 = swift_allocError();
              *v406 = 32;
              *(v406 + 8) = v415;
              *(v406 + 16) = 0;
              swift_willThrow();
              v398 = v170;
              v399 = v162;
              goto LABEL_345;
            }

            __break(1u);
LABEL_287:
            if (v180 != 2)
            {
              v416 = BYTE6(v162);
              goto LABEL_360;
            }

            v336 = *(v157 + 16);
            v278 = *(v157 + 24);
            v416 = v278 - v336;
            if (!__OFSUB__(v278, v336))
            {
LABEL_360:
              sub_100018350();
              v347 = swift_allocError();
              *v407 = 28;
              *(v407 + 8) = v416;
              *(v407 + 16) = 0;
              swift_willThrow();
              v408 = v157;
              goto LABEL_365;
            }

            __break(1u);
LABEL_291:
            if (v278 != 2)
            {
              v417 = BYTE6(v162);
              goto LABEL_364;
            }

            v337 = *(v146 + 16);
            v225 = *(v146 + 24);
            v417 = v225 - v337;
            if (!__OFSUB__(v225, v337))
            {
LABEL_364:
              sub_100018350();
              v347 = swift_allocError();
              *v410 = 28;
              *(v410 + 8) = v417;
              *(v410 + 16) = 0;
              swift_willThrow();
              v408 = v146;
LABEL_365:
              v411 = v162;
LABEL_368:
              sub_100016590(v408, v411);
LABEL_305:
              *&v460 = 0;
              *(&v460 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v349._object = 0x800000010134CB30;
              v349._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v349);
              v459 = v347;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              _print_unlocked<A, B>(_:_:)();
              LODWORD(v421) = 0;
              v350 = 256;
              goto LABEL_348;
            }

            __break(1u);
LABEL_295:
            if (v225 == 2)
            {
              v338 = *(v167 + 16);
              v315 = *(v167 + 24);
              v418 = v315 - v338;
              if (!__OFSUB__(v315, v338))
              {
                goto LABEL_362;
              }

              __break(1u);
LABEL_299:
              if (v315 == 2)
              {
                v340 = *(v146 + 16);
                v339 = *(v146 + 24);
                v419 = v339 - v340;
                if (__OFSUB__(v339, v340))
                {
                  __break(1u);
                  v457 = 0;
                  v341 = static os_log_type_t.error.getter();
                  if (qword_101694BE0 != -1)
                  {
                    swift_once();
                  }

                  v342 = qword_10177BA00;
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v343 = swift_allocObject();
                  *(v343 + 16) = xmmword_101385D80;
                  *&v460 = v457;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v344 = String.init<A>(describing:)();
                  v346 = v345;
                  *(v343 + 56) = &type metadata for String;
                  *(v343 + 64) = sub_100008C00();
                  *(v343 + 32) = v344;
                  *(v343 + 40) = v346;
                  os_log(_:dso:log:_:_:)(v341, &_mh_execute_header, v342, "Error deriving advertisementKey: %@", 35, 2, v343);

                  sub_1001BAF88();
                  v347 = swift_allocError();
                  *v348 = 0;
                  swift_willThrow();

                  goto LABEL_305;
                }
              }

              else
              {
                v419 = BYTE6(v157);
              }

LABEL_367:
              sub_100018350();
              v347 = swift_allocError();
              *v412 = 28;
              *(v412 + 8) = v419;
              *(v412 + 16) = 0;
              swift_willThrow();
              v408 = v146;
              v411 = v157;
              goto LABEL_368;
            }

            v418 = BYTE6(v162);
LABEL_362:
            sub_100018350();
            v347 = swift_allocError();
            *v409 = 28;
            *(v409 + 8) = v418;
            *(v409 + 16) = 0;
            swift_willThrow();
            v408 = v167;
            goto LABEL_365;
          }

          sub_100016590(v162, v146);
          v176 = *v444;
          v177 = v439;
          *(v439 + 7) = &type metadata for PrimaryIndex;
          *(v177 + 8) = sub_10002A2B8();
          *(v177 + 4) = v176;
          v61 = sub_100A7A194(*(v157 + 16), *(v157 + 24), 0, 0);
          v178 = sub_100A7829C(v61, 0, 2);
          v457 = 0;
          v146 = v454;
          v157 = v178;
          v162 = v179;
          CCECCryptorRelease();
          v180 = v162 >> 62;
          if ((v162 >> 62) > 1)
          {
            if (v180 != 2)
            {
              v416 = 0;
              goto LABEL_360;
            }

            v183 = *(v157 + 16);
            v182 = *(v157 + 24);
            v175 = __OFSUB__(v182, v183);
            v181 = v182 - v183;
            if (v175)
            {
              goto LABEL_227;
            }
          }

          else if (v180)
          {
            LODWORD(v181) = HIDWORD(v157) - v157;
            if (__OFSUB__(HIDWORD(v157), v157))
            {
              goto LABEL_230;
            }

            v181 = v181;
          }

          else
          {
            v181 = BYTE6(v162);
          }

          if (v181 != 28)
          {
            goto LABEL_255;
          }

          sub_10002EA98(6, v157, v162, &v460);
          sub_100022C40(v449, type metadata accessor for TimeBasedKey);
          v184 = *(&v460 + 1);
          v185 = v460;
          v186 = v439;
          v147 = v444;
          v443(&v439[*(v146 + 28)], &v444[*(v458 + 20)], v452);
          *v186 = __PAIR128__(v184, v185);
          v187 = v440;
          *(v186 + 16) = v170;
          *(v186 + 24) = v187;
          sub_100022C40(v147, type metadata accessor for TimeBasedKey);
          v160 = v450;
          v161 = v451;
          sub_10002911C(v186, v451 + v450, _s18ConnectionKeyGroupVMa);
          v159 = 0;
          v61 = v447;
        }

        (*v441)(&v161[v160], v159, 1, v146);
        v464 = v128;
        v189 = v128[2];
        v188 = v128[3];
        if (v189 >= v188 >> 1)
        {
          sub_101124AA8((v188 > 1), v189 + 1, 1);
          v161 = v451;
          v128 = v464;
        }

        ++v53;
        v128[2] = v189 + 1;
        sub_1000D2AD8(v161, v128 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v189, &qword_1016A5A80, &qword_1013B35A8);
        if (v442 == v53)
        {
          v249 = v61;
          v250 = v437;
          v251 = 1;
          goto LABEL_160;
        }
      }

      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v326 = *(&v460 + 1);
    v325 = v460;
    v327 = 1;
LABEL_201:
    sub_100359088(v325, v326, v327);
LABEL_202:
    (*(v438 + 8))(v432, v452);
    return _swiftEmptyArrayStorage;
  }

  if (v461 != 2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v190 = type metadata accessor for Logger();
    sub_1000076D4(v190, qword_10177BA08);
    sub_10001F280(v448, &v460);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v464 = v194;
      *v193 = 141558275;
      *(v193 + 4) = 1752392040;
      *(v193 + 12) = 2081;
      v196 = v462;
      v195 = v463;
      sub_1000035D0(&v460, v462);
      v197 = v428;
      (*(*(*(v195 + 8) + 8) + 32))(v196);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v198 = v430;
      v199 = dispatch thunk of CustomStringConvertible.description.getter();
      v201 = v200;
      (*(v429 + 8))(v197, v198);
      sub_100007BAC(&v460);
      v202 = sub_1000136BC(v199, v201, &v464);

      *(v193 + 14) = v202;
      sub_100007BAC(v194);
    }

    else
    {

      sub_100007BAC(&v460);
    }

    goto LABEL_202;
  }

  v129 = *(v460 + 16);
  if (!v129)
  {
    v326 = *(&v460 + 1);
    v325 = v460;
    v327 = 2;
    goto LABEL_201;
  }

  v437 = *(&v460 + 1);
  *&v460 = _swiftEmptyArrayStorage;
  sub_101124AA8(0, v129, 0);
  v128 = v460;
  v130 = v61 + ((*(v431 + 80) + 32) & ~*(v431 + 80));
  v451 = *(v431 + 72);
  v131 = (v453 + 56);
  v132 = (v431 + 56);
  v133 = v427;
  do
  {
    sub_100022A54(v130, v133, _s18ConnectionKeyGroupVMa);
    v134 = *(v456 + 48);
    (*v131)(v47, 1, 1, v458);
    sub_10002911C(v133, &v47[v134], _s18ConnectionKeyGroupVMa);
    (*v132)(&v47[v134], 0, 1, v454);
    *&v460 = v128;
    v136 = v128[2];
    v135 = v128[3];
    if (v136 >= v135 >> 1)
    {
      sub_101124AA8((v135 > 1), v136 + 1, 1);
      v133 = v427;
      v128 = v460;
    }

    v128[2] = v136 + 1;
    sub_1000D2AD8(v47, v128 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v136, &qword_1016A5A80, &qword_1013B35A8);
    v130 += v451;
    --v129;
  }

  while (v129);
  v249 = v447;
  v250 = v437;
  v251 = 2;
LABEL_160:
  sub_100359088(v249, v250, v251);
  (*(v438 + 8))(v432, v452);
  return v128;
}

uint64_t sub_100ADE2C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v160 = a4;
  v8 = _s18ConnectionKeyGroupVMa(0);
  v158 = *(v8 - 8);
  __chkstk_darwin(v8);
  v163 = (&v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v156 - v14;
  v174 = type metadata accessor for TimeBasedKey(0);
  v170 = *(v174 - 8);
  v16 = __chkstk_darwin(v174);
  v18 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v161 = (&v156 - v20);
  v21 = __chkstk_darwin(v19);
  v164 = (&v156 - v22);
  __chkstk_darwin(v21);
  v165 = &v156 - v23;
  v24 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v25 = *(v24 - 8);
  v172 = v24;
  v173 = v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v167 = &v156 - v30;
  __chkstk_darwin(v29);
  v166 = &v156 - v31;
  v32 = *a1;
  sub_10001F280(a3, &v177);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  sub_10000A748(&v177, v33 + 24);
  *(v33 + 64) = v32;

  unsafeFromAsyncTask<A>(_:)();

  v34 = v177;
  v168 = v8;
  v169 = v177;
  if (v178 <= 1u)
  {
    v157 = v178;
    v159 = *(&v177 + 1);
    if (v178)
    {
      v35 = *(v177 + 16);
      v36 = _swiftEmptyArrayStorage;
      if (!v35)
      {
        goto LABEL_80;
      }

      v156 = v15;
      v181 = _swiftEmptyArrayStorage;
      v37 = &v181;
      sub_101124AA8(0, v35, 0);
      v18 = 0;
      v36 = v181;
      v167 = v34 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v163 = (v170 + 56);
      v161 = (v158 + 56);
      v39 = v164;
      v34 = v165;
      v162 = v35;
      while (1)
      {
        v40 = *(v169 + 16);
        if (v18 >= v40)
        {
          goto LABEL_86;
        }

        v79 = v170;
        sub_100022A54(v167 + *(v170 + 72) * v18, v34, type metadata accessor for TimeBasedKey);
        v80 = v166;
        v81 = v166 + *(v172 + 48);
        sub_100022A54(v34, v166, type metadata accessor for TimeBasedKey);
        v82 = *(v79 + 56);
        v83 = v174;
        v82(v80, 0, 1, v174);
        sub_100022A54(v34, v39, type metadata accessor for TimeBasedKey);
        v84 = v39;
        v39 += *(v83 + 24);
        v85 = *(v39 + 8);
        if (v85 >> 60 == 15)
        {
          v37 = type metadata accessor for TimeBasedKey;
          sub_100022C40(v34, type metadata accessor for TimeBasedKey);
          sub_100022C40(v84, type metadata accessor for TimeBasedKey);
          v86 = 1;
          v39 = v84;
        }

        else
        {
          v32 = *v39;
          v8 = String.utf8Data.getter();
          v34 = v87;
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v88 = __DataStorage.init(length:)();
          *&v177 = 0x2000000000;
          *(&v177 + 1) = v88 | 0x4000000000000000;
          sub_100017D5C(v8, v34);
          sub_10002E98C(v32, v85);
          v4 = v171;
          v89 = sub_100A7F110(v8, v34, v8, v34, v32, v85, &v177, 32);
          v171 = v4;
          if (v4)
          {
            sub_100006654(v32, v85);
            sub_100016590(v8, v34);
            goto LABEL_148;
          }

          v90 = v89;
          sub_100006654(v32, v85);
          sub_100016590(v8, v34);
          if (v90)
          {
            v130 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v131 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v132 = swift_allocObject();
            *(v132 + 16) = xmmword_101385D80;
            *(v132 + 56) = &type metadata for Int32;
            *(v132 + 64) = &protocol witness table for Int32;
            *(v132 + 32) = v90;
            os_log(_:dso:log:_:_:)(v130, &_mh_execute_header, v131, "Error running CCDeriveKey. Code: %d.", v156);

            v133 = v156;
            CryptoError.init(rawValue:)();
            v134 = type metadata accessor for CryptoError();
            sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
            v171 = swift_allocError();
            v136 = v135;
            v137 = *(v134 - 8);
            v32 = v137 + 48;
            v138 = *(v137 + 48);
            if (v138(v133, 1, v134) == 1)
            {
              (*(v137 + 104))(v136, enum case for CryptoError.unspecifiedError(_:), v134);
              if (v138(v156, 1, v134) != 1)
              {
                sub_10000B3A8(v156, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v137 + 32))(v136, v156, v134);
            }

            swift_willThrow();
LABEL_148:
            v141 = *(&v177 + 1);
            v140 = v177;
LABEL_149:
            sub_100016590(v140, v141);
            v139 = v8;
            goto LABEL_150;
          }

          v35 = *(&v177 + 1);
          v37 = v177;
          sub_100017D5C(v177, *(&v177 + 1));
          sub_100016590(v37, v35);
          v40 = v35 >> 62;
          if ((v35 >> 62) > 1)
          {
            if (v40 != 2)
            {
              v153 = 0;
              goto LABEL_156;
            }

            v93 = *(v37 + 16);
            v92 = *(v37 + 24);
            v56 = __OFSUB__(v92, v93);
            v91 = v92 - v93;
            if (v56)
            {
              goto LABEL_88;
            }
          }

          else if (v40)
          {
            LODWORD(v91) = HIDWORD(v37) - v37;
            if (__OFSUB__(HIDWORD(v37), v37))
            {
              goto LABEL_90;
            }

            v91 = v91;
          }

          else
          {
            v91 = BYTE6(v35);
          }

          if (v91 != 32)
          {
            goto LABEL_99;
          }

          sub_100016590(v8, v34);
          v94 = *v164;
          v179 = &type metadata for PrimaryIndex;
          v180 = sub_10002A2B8();
          *&v177 = v94;
          v4 = v171;
          v95 = sub_100A7A194(*(v39 + 16), *(v39 + 24), 0, 0);
          if (v4)
          {
            goto LABEL_127;
          }

          v32 = v95;
          v96 = sub_100A7829C(v95, 0, 2);
          v171 = 0;
          v8 = v96;
          v39 = v97;
          CCECCryptorRelease();
          v40 = v39 >> 62;
          if ((v39 >> 62) > 1)
          {
            if (v40 != 2)
            {
              v154 = 0;
              goto LABEL_160;
            }

            v100 = *(v8 + 16);
            v99 = *(v8 + 24);
            v56 = __OFSUB__(v99, v100);
            v98 = v99 - v100;
            if (v56)
            {
              goto LABEL_93;
            }
          }

          else if (v40)
          {
            LODWORD(v98) = HIDWORD(v8) - v8;
            if (__OFSUB__(HIDWORD(v8), v8))
            {
              goto LABEL_94;
            }

            v98 = v98;
          }

          else
          {
            v98 = BYTE6(v39);
          }

          if (v98 != 28)
          {
            goto LABEL_103;
          }

          sub_10002EA98(6, v8, v39, &v176);
          sub_100022C40(v165, type metadata accessor for TimeBasedKey);
          v101 = *(v174 + 20);
          *v81 = v176;
          *(v81 + 16) = v37;
          *(v81 + 24) = v35;
          sub_10000A748(&v177, v81 + 32);
          v8 = v168;
          v37 = *(v168 + 28);
          v102 = type metadata accessor for DateInterval();
          v103 = v164 + v101;
          v39 = v164;
          (*(*(v102 - 8) + 16))(v81 + v37, v103, v102);
          sub_100022C40(v39, type metadata accessor for TimeBasedKey);
          v86 = 0;
        }

        (*v161)(v81, v86, 1, v8);
        v181 = v36;
        v32 = v36[2];
        v104 = v36[3];
        if (v32 >= v104 >> 1)
        {
          v37 = &v181;
          sub_101124AA8((v104 > 1), v32 + 1, 1);
          v36 = v181;
        }

        ++v18;
        v36[2] = v32 + 1;
        sub_1000D2AD8(v166, v36 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v32, &qword_1016A5A80, &qword_1013B35A8);
        v35 = v162;
        v34 = v165;
        if (v162 == v18)
        {
          v34 = v169;
LABEL_80:
          if (v36[2])
          {
LABEL_81:
            sub_1000D2A70(v36 + ((*(v173 + 80) + 32) & ~*(v173 + 80)), v160, &qword_1016A5A80, &qword_1013B35A8);
            v105 = 0;
            v106 = v157;
          }

          else
          {
            v106 = 1;
            v105 = 1;
          }

          goto LABEL_82;
        }
      }
    }

    v35 = *(v177 + 16);
    v36 = _swiftEmptyArrayStorage;
    if (!v35)
    {
LABEL_76:
      if (v36[2])
      {
        goto LABEL_81;
      }

      v106 = 0;
      v105 = 1;
      goto LABEL_82;
    }

    v156 = v13;
    v181 = _swiftEmptyArrayStorage;
    v37 = &v181;
    sub_101124AA8(0, v35, 0);
    v38 = 0;
    v36 = v181;
    v166 = v34 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
    v165 = v170 + 56;
    v163 = (v158 + 56);
    v39 = v161;
    v164 = v35;
    v162 = v18;
    while (1)
    {
      v40 = *(v34 + 16);
      if (v38 >= v40)
      {
        break;
      }

      v41 = v170;
      sub_100022A54(v166 + *(v170 + 72) * v38, v39, type metadata accessor for TimeBasedKey);
      v42 = v167;
      v35 = v167 + *(v172 + 48);
      sub_100022A54(v39, v167, type metadata accessor for TimeBasedKey);
      v43 = *(v41 + 56);
      v44 = v174;
      v43(v42, 0, 1, v174);
      sub_100022A54(v39, v18, type metadata accessor for TimeBasedKey);
      v45 = *(v44 + 24);
      v46 = v39;
      v39 = v18 + v45;
      v47 = *(v18 + v45 + 8);
      if (v47 >> 60 == 15)
      {
        v37 = type metadata accessor for TimeBasedKey;
        sub_100022C40(v46, type metadata accessor for TimeBasedKey);
        sub_100022C40(v18, type metadata accessor for TimeBasedKey);
        v48 = 1;
        v39 = v46;
      }

      else
      {
        v8 = *v39;
        v32 = String.utf8Data.getter();
        v18 = v49;
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v50 = __DataStorage.init(length:)();
        *&v177 = 0x2000000000;
        *(&v177 + 1) = v50 | 0x4000000000000000;
        sub_100017D5C(v32, v18);
        sub_10002E98C(v8, v47);
        v4 = v171;
        v51 = sub_100A7F110(v32, v18, v32, v18, v8, v47, &v177, 32);
        v171 = v4;
        if (v4)
        {
          sub_100006654(v8, v47);
          v174 = v32;
          v34 = v18;
          sub_100016590(v32, v18);
          goto LABEL_145;
        }

        v52 = v51;
        sub_100006654(v8, v47);
        sub_100016590(v32, v18);
        if (v52)
        {
          v174 = v32;
          v34 = v18;
          v121 = static os_log_type_t.error.getter();
          if (qword_101694BE0 != -1)
          {
            swift_once();
          }

          v122 = qword_10177BA00;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v123 = swift_allocObject();
          *(v123 + 16) = xmmword_101385D80;
          *(v123 + 56) = &type metadata for Int32;
          *(v123 + 64) = &protocol witness table for Int32;
          *(v123 + 32) = v52;
          os_log(_:dso:log:_:_:)(v121, &_mh_execute_header, v122, "Error running CCDeriveKey. Code: %d.", v156);

          v124 = v156;
          CryptoError.init(rawValue:)();
          v125 = type metadata accessor for CryptoError();
          sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
          v171 = swift_allocError();
          v127 = v126;
          v128 = *(v125 - 8);
          v129 = *(v128 + 48);
          if (v129(v124, 1, v125) == 1)
          {
            (*(v128 + 104))(v127, enum case for CryptoError.unspecifiedError(_:), v125);
            if (v129(v156, 1, v125) != 1)
            {
              sub_10000B3A8(v156, &qword_10169C9A0, &unk_1013D5A40);
            }
          }

          else
          {
            (*(v128 + 32))(v127, v156, v125);
          }

          swift_willThrow();
LABEL_145:
          sub_100016590(v177, *(&v177 + 1));
          v139 = v174;
LABEL_150:
          v142 = v34;
          goto LABEL_151;
        }

        v34 = *(&v177 + 1);
        v37 = v177;
        sub_100017D5C(v177, *(&v177 + 1));
        sub_100016590(v37, v34);
        v40 = v34 >> 62;
        if ((v34 >> 62) > 1)
        {
          if (v40 != 2)
          {
            goto LABEL_153;
          }

          v55 = *(v37 + 16);
          v54 = *(v37 + 24);
          v56 = __OFSUB__(v54, v55);
          v53 = v54 - v55;
          if (v56)
          {
            goto LABEL_87;
          }
        }

        else if (v40)
        {
          LODWORD(v53) = HIDWORD(v37) - v37;
          if (__OFSUB__(HIDWORD(v37), v37))
          {
            goto LABEL_89;
          }

          v53 = v53;
        }

        else
        {
          v53 = BYTE6(v34);
        }

        if (v53 != 32)
        {
          goto LABEL_95;
        }

        sub_100016590(v32, v18);
        v18 = v162;
        v57 = *v162;
        v179 = &type metadata for PrimaryIndex;
        v180 = sub_10002A2B8();
        *&v177 = v57;
        v4 = v171;
        v58 = sub_100A7A194(*(v39 + 16), *(v39 + 24), 0, 0);
        if (v4)
        {
          goto LABEL_127;
        }

        v8 = v58;
        v59 = sub_100A7829C(v58, 0, 2);
        v171 = 0;
        v39 = v59;
        v32 = v60;
        CCECCryptorRelease();
        v40 = v32 >> 62;
        if ((v32 >> 62) > 1)
        {
          v61 = v168;
          if (v40 != 2)
          {
            v155 = 0;
            goto LABEL_158;
          }

          v64 = *(v39 + 16);
          v63 = *(v39 + 24);
          v56 = __OFSUB__(v63, v64);
          v62 = v63 - v64;
          if (v56)
          {
            goto LABEL_91;
          }

          v18 = v37;
        }

        else
        {
          v61 = v168;
          if (v40)
          {
            LODWORD(v62) = HIDWORD(v39) - v39;
            if (__OFSUB__(HIDWORD(v39), v39))
            {
              goto LABEL_92;
            }

            v18 = v37;
            v62 = v62;
          }

          else
          {
            v18 = v37;
            v62 = BYTE6(v32);
          }
        }

        if (v62 != 28)
        {
          goto LABEL_107;
        }

        v65 = v61;
        sub_10002EA98(6, v39, v32, &v176);
        v39 = v161;
        sub_100022C40(v161, type metadata accessor for TimeBasedKey);
        v66 = *(v174 + 20);
        *v35 = v176;
        *(v35 + 16) = v18;
        *(v35 + 24) = v34;
        sub_10000A748(&v177, v35 + 32);
        v67 = v65;
        v37 = *(v65 + 28);
        v68 = type metadata accessor for DateInterval();
        v18 = v162;
        v69 = v162 + v66;
        v8 = v67;
        (*(*(v68 - 8) + 16))(v35 + v37, v69, v68);
        sub_100022C40(v18, type metadata accessor for TimeBasedKey);
        v48 = 0;
      }

      (*v163)(v35, v48, 1, v8);
      v181 = v36;
      v32 = v36[2];
      v70 = v36[3];
      v34 = v169;
      if (v32 >= v70 >> 1)
      {
        v37 = &v181;
        sub_101124AA8((v70 > 1), v32 + 1, 1);
        v36 = v181;
      }

      ++v38;
      v36[2] = v32 + 1;
      sub_1000D2AD8(v167, v36 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v32, &qword_1016A5A80, &qword_1013B35A8);
      v35 = v164;
      if (v164 == v38)
      {
        goto LABEL_76;
      }
    }

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
LABEL_94:
    __break(1u);
LABEL_95:
    if (v40 == 1)
    {
      LODWORD(v40) = HIDWORD(v37) - v37;
      if (!__OFSUB__(HIDWORD(v37), v37))
      {
        v152 = v40;
        goto LABEL_154;
      }

      __break(1u);
LABEL_99:
      if (v40 != 1)
      {
        goto LABEL_115;
      }

      LODWORD(v40) = HIDWORD(v37) - v37;
      if (!__OFSUB__(HIDWORD(v37), v37))
      {
        v153 = v40;
        goto LABEL_156;
      }

      __break(1u);
LABEL_103:
      if (v40 != 1)
      {
LABEL_119:
        if (v40 != 2)
        {
          v154 = BYTE6(v39);
LABEL_160:
          sub_100018350();
          v118 = swift_allocError();
          *v151 = 28;
          *(v151 + 8) = v154;
          *(v151 + 16) = 0;
          swift_willThrow();
          v149 = v8;
          v150 = v39;
          goto LABEL_161;
        }

        v110 = *(v8 + 16);
        v40 = *(v8 + 24);
        v154 = v40 - v110;
        if (!__OFSUB__(v40, v110))
        {
          goto LABEL_160;
        }

        __break(1u);
LABEL_123:
        if (v40 == 2)
        {
          v112 = *(v39 + 16);
          v111 = *(v39 + 24);
          v155 = v111 - v112;
          if (__OFSUB__(v111, v112))
          {
            __break(1u);
LABEL_127:
            v171 = v4;
            v113 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v114 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_101385D80;
            *&v176 = v171;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v115 = String.init<A>(describing:)();
            v117 = v116;
            *(v32 + 56) = &type metadata for String;
            *(v32 + 64) = sub_100008C00();
            *(v32 + 32) = v115;
            *(v32 + 40) = v117;
            os_log(_:dso:log:_:_:)(v113, &_mh_execute_header, v114, "Error deriving advertisementKey: %@", 35, 2, v32);

            sub_1001BAF88();
            v118 = swift_allocError();
            *v119 = 0;
            swift_willThrow();

LABEL_130:
            *&v176 = 0;
            *(&v176 + 1) = 0xE000000000000000;
            v37 = &v176;
            _StringGuts.grow(_:)(35);
            v120._object = 0x800000010134CB30;
            v120._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v120);
            v175 = v118;
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            _print_unlocked<A, B>(_:_:)();
            while (1)
            {
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_153:
              v152 = 0;
LABEL_154:
              sub_100018350();
              v144 = swift_allocError();
              *v145 = 32;
              *(v145 + 8) = v152;
              *(v145 + 16) = 0;
              v171 = v144;
              swift_willThrow();
              sub_100016590(v37, v34);
              v139 = v32;
              v142 = v18;
LABEL_151:
              sub_100016590(v139, v142);
              *&v177 = 0;
              *(&v177 + 1) = 0xE000000000000000;
              v37 = &v177;
              _StringGuts.grow(_:)(35);
              v143._object = 0x8000000101354990;
              v143._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v143);
              *&v176 = v171;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              _print_unlocked<A, B>(_:_:)();
            }
          }
        }

        else
        {
          v155 = BYTE6(v32);
        }

LABEL_158:
        sub_100018350();
        v118 = swift_allocError();
        *v148 = 28;
        *(v148 + 8) = v155;
        *(v148 + 16) = 0;
        swift_willThrow();
        v149 = v39;
        v150 = v32;
LABEL_161:
        sub_100016590(v149, v150);
        goto LABEL_130;
      }

      LODWORD(v40) = HIDWORD(v8) - v8;
      if (!__OFSUB__(HIDWORD(v8), v8))
      {
        v154 = v40;
        goto LABEL_160;
      }

      __break(1u);
LABEL_107:
      if (v40 != 1)
      {
        goto LABEL_123;
      }

      LODWORD(v40) = HIDWORD(v39) - v39;
      if (!__OFSUB__(HIDWORD(v39), v39))
      {
        v155 = v40;
        goto LABEL_158;
      }

      __break(1u);
    }

    if (v40 != 2)
    {
      v152 = BYTE6(v34);
      goto LABEL_154;
    }

    v108 = *(v37 + 16);
    v40 = *(v37 + 24);
    v152 = v40 - v108;
    if (!__OFSUB__(v40, v108))
    {
      goto LABEL_154;
    }

    __break(1u);
LABEL_115:
    if (v40 != 2)
    {
      v153 = BYTE6(v35);
LABEL_156:
      sub_100018350();
      v146 = swift_allocError();
      *v147 = 32;
      *(v147 + 8) = v153;
      *(v147 + 16) = 0;
      v171 = v146;
      swift_willThrow();
      v140 = v37;
      v141 = v35;
      goto LABEL_149;
    }

    v109 = *(v37 + 16);
    v40 = *(v37 + 24);
    v153 = v40 - v109;
    if (!__OFSUB__(v40, v109))
    {
      goto LABEL_156;
    }

    __break(1u);
    goto LABEL_119;
  }

  if (v178 == 2)
  {
    v157 = 2;
    v159 = *(&v177 + 1);
    v71 = *(v177 + 16);
    v36 = _swiftEmptyArrayStorage;
    if (v71)
    {
      *&v177 = _swiftEmptyArrayStorage;
      sub_101124AA8(0, v71, 0);
      v36 = v177;
      v72 = v34 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
      v167 = *(v158 + 72);
      v73 = (v170 + 56);
      v74 = (v158 + 56);
      do
      {
        v75 = v163;
        sub_100022A54(v72, v163, _s18ConnectionKeyGroupVMa);
        v76 = *(v172 + 48);
        (*v73)(v28, 1, 1, v174);
        sub_10002911C(v75, &v28[v76], _s18ConnectionKeyGroupVMa);
        (*v74)(&v28[v76], 0, 1, v8);
        *&v177 = v36;
        v78 = v36[2];
        v77 = v36[3];
        if (v78 >= v77 >> 1)
        {
          sub_101124AA8((v77 > 1), v78 + 1, 1);
          v36 = v177;
        }

        v36[2] = v78 + 1;
        sub_1000D2AD8(v28, v36 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v78, &qword_1016A5A80, &qword_1013B35A8);
        v8 = v168;
        v72 += v167;
        --v71;
      }

      while (v71);
      v34 = v169;
    }

    if (v36[2])
    {
      goto LABEL_81;
    }

    v105 = 1;
    v106 = 2;
LABEL_82:

    sub_100359088(v34, v159, v106);
  }

  else
  {
    v105 = 1;
  }

  return (*(v173 + 56))(v160, v105, 1, v172);
}

uint64_t sub_100ADFAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100ADFB1C, 0, 0);
}

uint64_t sub_100ADFB1C()
{
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1006B9824;
  v3 = v0[5];
  v2 = v0[6];

  return sub_100731BF4(v3, v2, v2, 0, 0, 0);
}

uint64_t sub_100ADFC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v57);
  v13 = sub_100AE0164(0, v4, v57, a3, a4, v7);
  v17 = v16;
  if (v15 == 3 && (v13 | v14) == 0)
  {

    v31 = sub_100AE0164(1, v4, v57, a3, a4, v7);
    v33 = v32;
    v35 = v34;
    v17 = v36;
    sub_100007BAC(v57);
    sub_100359088(v31, v33, v35);
    if (*(v17 + 16))
    {
      return v17;
    }

    goto LABEL_13;
  }

  v52 = v7;
  sub_100359088(v13, v14, v15);
  sub_100007BAC(v57);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177BA08);
  sub_10001F280(a1, v54);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = a4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v53 = v24;
    *v23 = 134218499;
    *(v23 + 4) = *(v17 + 16);

    *(v23 + 12) = 2160;
    *(v23 + 14) = 1752392040;
    *(v23 + 22) = 2081;
    v50 = a3;
    v26 = v55;
    v25 = v56;
    sub_1000035D0(v54, v55);
    (*(*(*(v25 + 8) + 8) + 32))(v26);
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v10 + 8))(v12, v9);
    sub_100007BAC(v54);
    v30 = sub_1000136BC(v27, v29, &v53);
    a3 = v50;

    *(v23 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "Found %ld matching hint advertisements for beacon %{private,mask.hash}s.", v23, 0x20u);
    sub_100007BAC(v24);

    a4 = v51;
  }

  else
  {

    sub_100007BAC(v54);
  }

  LOBYTE(v7) = v52;
  if (!*(v17 + 16))
  {
LABEL_13:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    *(v37 + 56) = &type metadata for UInt8;
    *(v37 + 64) = &protocol witness table for UInt8;
    *(v37 + 32) = v7;
    v38 = String.init(format:_:)();
    v40 = v39;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177BA08);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v7;
      v45 = swift_slowAlloc();
      v46 = a3;
      v47 = swift_slowAlloc();
      v54[0] = v47;
      *v45 = 16778242;
      *(v45 + 4) = v44;
      *(v45 + 5) = 2080;
      v48 = sub_1000136BC(v38, v40, v54);

      *(v45 + 7) = v48;
      *(v45 + 15) = 2048;
      *(v45 + 17) = v46;
      *(v45 + 25) = 2048;
      *(v45 + 27) = a4;
      _os_log_impl(&_mh_execute_header, v42, v43, "No matches for the provided criteria: sequence: .primary, hint: %hhu - hex %s,\nstartBucket: %llu, endBucket: %llu.", v45, 0x23u);
      sub_100007BAC(v47);
    }

    else
    {
    }
  }

  return v17;
}

uint64_t sub_100AE0164(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v247 = a5;
  v230 = a4;
  v229 = a1;
  LODWORD(v243) = a6;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v228 - v12;
  v245 = _s18ConnectionKeyGroupVMa(0);
  v237 = *(v245 - 8);
  v14 = __chkstk_darwin(v245);
  v236 = v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v235 = v228 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v228 - v19;
  v21 = __chkstk_darwin(v18);
  v232 = v228 - v22;
  __chkstk_darwin(v21);
  v231 = v228 - v23;
  v246 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v244 = *(v246 - 8);
  v24 = __chkstk_darwin(v246);
  v26 = v228 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = v228 - v28;
  __chkstk_darwin(v27);
  i = v228 - v30;
  v32 = type metadata accessor for TimeBasedKey(0);
  v248 = *(v32 - 8);
  v249 = v32;
  v33 = __chkstk_darwin(v32);
  v242 = v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v239 = v228 - v36;
  v37 = __chkstk_darwin(v35);
  v234 = v228 - v38;
  v39 = __chkstk_darwin(v37);
  v240 = v228 - v40;
  v41 = __chkstk_darwin(v39);
  v241 = v228 - v42;
  v43 = __chkstk_darwin(v41);
  v238 = v228 - v44;
  v45 = __chkstk_darwin(v43);
  v233 = (v228 - v46);
  __chkstk_darwin(v45);
  v48 = v228 - v47;
  sub_10001F280(a3, &v252);
  v49 = swift_allocObject();
  *(v49 + 16) = a2;
  sub_10000A748(&v252, v49 + 24);
  v50 = v247;
  *(v49 + 64) = v230;
  *(v49 + 72) = v50;
  *(v49 + 80) = v229;

  unsafeFromAsyncTask<A>(_:)();

  v230 = *(&v252 + 1);
  v51 = v252;
  v247 = v252;
  v229 = v253;
  if (v253 <= 1u)
  {
    if (!v253)
    {
      v231 = v11;
      v52 = *(v252 + 16);
      i = _swiftEmptyArrayStorage;
      v241 = v29;
      v236 = v52;
      if (v52)
      {
        v53 = 0;
        while (1)
        {
          v54 = *(v51 + 16);
          if (v53 >= v54)
          {
            goto LABEL_178;
          }

          v49 = (*(v248 + 80) + 32) & ~*(v248 + 80);
          v55 = *(v248 + 72);
          v56 = v51 + v49 + v55 * v53;
          v57 = v240;
          sub_100022A54(v56, v240, type metadata accessor for TimeBasedKey);
          v58 = sub_100A7A194(*(v57 + *(v249 + 24) + 16), *(v57 + *(v249 + 24) + 24), 0, 0);
          a3 = sub_100A7829C(v58, 0, 2);
          v20 = v59;
          CCECCryptorRelease();
          v54 = v20 >> 62;
          v238 = v49;
          if ((v20 >> 62) > 1)
          {
            if (v54 != 2)
            {
              goto LABEL_270;
            }

            v62 = *(a3 + 16);
            v61 = *(a3 + 24);
            v63 = __OFSUB__(v61, v62);
            v60 = v61 - v62;
            if (v63)
            {
              goto LABEL_190;
            }
          }

          else if (v54)
          {
            LODWORD(v60) = HIDWORD(a3) - a3;
            if (__OFSUB__(HIDWORD(a3), a3))
            {
              goto LABEL_188;
            }

            v60 = v60;
          }

          else
          {
            v60 = BYTE6(v20);
          }

          if (v60 != 28)
          {
            goto LABEL_212;
          }

          v64 = i;
          sub_100017D5C(a3, v20);
          v65 = static MACAddress.length.getter();
          sub_10002EA98(v65, a3, v20, &v252);
          v29 = *(&v252 + 1);
          i = v252;
          v54 = *(&v252 + 1) >> 62;
          if ((*(&v252 + 1) >> 62) > 1)
          {
            if (v54 != 2)
            {
              goto LABEL_247;
            }

            v54 = *(v252 + 16);
            if (v54 > 5)
            {
              goto LABEL_192;
            }

            v54 = *(v252 + 24);
            if (v54 < 6)
            {
              goto LABEL_198;
            }

            v67 = __DataStorage._bytes.getter();
            if (!v67)
            {
              goto LABEL_251;
            }

            v49 = v67;
            v68 = __DataStorage._offset.getter();
            v54 = 5 - v68;
            if (__OFSUB__(5, v68))
            {
              goto LABEL_202;
            }
          }

          else
          {
            if (!v54)
            {
              LODWORD(v54) = 0;
              if ((*(&v252 + 1) & 0xFE000000000000uLL) < 0x5000000000001)
              {
                goto LABEL_193;
              }

              v66 = BYTE5(v252);
              goto LABEL_34;
            }

            LODWORD(v54) = 0;
            if (v252 < 0x600000000 || v252 > 5)
            {
              goto LABEL_196;
            }

            v69 = __DataStorage._bytes.getter();
            if (!v69)
            {
              goto LABEL_249;
            }

            v49 = v69;
            v70 = __DataStorage._offset.getter();
            v54 = 5 - v70;
            if (__OFSUB__(5, v70))
            {
              goto LABEL_200;
            }
          }

          v66 = *(v49 + v54);
LABEL_34:
          sub_100016590(i, v29);
          sub_100016590(a3, v20);
          if (v66 == v243)
          {
            sub_10002911C(v240, v234, type metadata accessor for TimeBasedKey);
            i = v64;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v251 = v64;
            v29 = v241;
            a3 = v242;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124028(0, v64[2] + 1, 1);
              i = v251;
            }

            v51 = v247;
            v72 = v238;
            v20 = *(i + 16);
            v73 = *(i + 24);
            v49 = v20 + 1;
            if (v20 >= v73 >> 1)
            {
              sub_101124028((v73 > 1), v20 + 1, 1);
              v51 = v247;
              i = v251;
            }

            *(i + 16) = v49;
            sub_10002911C(v234, i + v72 + v20 * v55, type metadata accessor for TimeBasedKey);
          }

          else
          {
            sub_100022C40(v240, type metadata accessor for TimeBasedKey);
            v51 = v247;
            v29 = v241;
            a3 = v242;
            i = v64;
          }

          if (v236 == ++v53)
          {
            goto LABEL_112;
          }
        }
      }

      a3 = v242;
LABEL_112:
      v49 = *(i + 16);
      if (v49)
      {
        v251 = _swiftEmptyArrayStorage;
        sub_101124AA8(0, v49, 0);
        v115 = 0;
        v116 = v251;
        v238 = i + ((*(v248 + 80) + 32) & ~*(v248 + 80));
        v236 = v248 + 56;
        v237 += 56;
        v235 = i;
        v234 = v49;
        while (1)
        {
          v54 = *(i + 16);
          if (v115 >= v54)
          {
            goto LABEL_180;
          }

          v117 = v248;
          v20 = v239;
          sub_100022A54(v238 + *(v248 + 72) * v115, v239, type metadata accessor for TimeBasedKey);
          v243 = *(v246 + 48);
          sub_100022A54(v20, v29, type metadata accessor for TimeBasedKey);
          v118 = *(v117 + 56);
          v119 = v249;
          v118(v29, 0, 1, v249);
          sub_100022A54(v20, a3, type metadata accessor for TimeBasedKey);
          v120 = (a3 + *(v119 + 24));
          v121 = v120[1];
          if (v121 >> 60 == 15)
          {
            sub_100022C40(v20, type metadata accessor for TimeBasedKey);
            sub_100022C40(a3, type metadata accessor for TimeBasedKey);
            v122 = 1;
            v123 = v245;
            v124 = v243;
          }

          else
          {
            v49 = *v120;
            v29 = String.utf8Data.getter();
            v20 = v125;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v126 = __DataStorage.init(length:)();
            *&v252 = 0x2000000000;
            *(&v252 + 1) = v126 | 0x4000000000000000;
            sub_100017D5C(v29, v20);
            sub_10002E98C(v49, v121);
            v127 = sub_100A7F110(v29, v20, v29, v20, v49, v121, &v252, 32);
            a3 = 0;
            sub_100006654(v49, v121);
            sub_100016590(v29, v20);
            if (v127)
            {
              v198 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v199 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v200 = swift_allocObject();
              *(v200 + 16) = xmmword_101385D80;
              *(v200 + 56) = &type metadata for Int32;
              *(v200 + 64) = &protocol witness table for Int32;
              *(v200 + 32) = v127;
              os_log(_:dso:log:_:_:)(v198, &_mh_execute_header, v199, "Error running CCDeriveKey. Code: %d.", v228[0]);

              i = v231;
              CryptoError.init(rawValue:)();
              v201 = type metadata accessor for CryptoError();
              sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v202 = swift_allocError();
              v204 = v203;
              v205 = *(v201 - 8);
              v206 = *(v205 + 48);
              if (v206(i, 1, v201) == 1)
              {
                (*(v205 + 104))(v204, enum case for CryptoError.unspecifiedError(_:), v201);
                if (v206(v231, 1, v201) != 1)
                {
                  sub_10000B3A8(v231, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v205 + 32))(v204, v231, v201);
              }

              swift_willThrow();
              v217 = *(&v252 + 1);
              v216 = v252;
              goto LABEL_286;
            }

            v128 = *(&v252 + 1);
            i = v252;
            sub_100017D5C(v252, *(&v252 + 1));
            sub_100016590(i, v128);
            v54 = v128 >> 62;
            v233 = v128;
            if ((v128 >> 62) > 1)
            {
              if (v54 != 2)
              {
                goto LABEL_292;
              }

              v131 = *(i + 16);
              v130 = *(i + 24);
              v63 = __OFSUB__(v130, v131);
              v129 = v130 - v131;
              if (v63)
              {
                goto LABEL_204;
              }
            }

            else if (v54)
            {
              LODWORD(v129) = HIDWORD(i) - i;
              if (__OFSUB__(HIDWORD(i), i))
              {
                goto LABEL_206;
              }

              v129 = v129;
            }

            else
            {
              v129 = BYTE6(v128);
            }

            if (v129 != 32)
            {
              goto LABEL_228;
            }

            sub_100016590(v29, v20);
            v132 = *v242;
            v133 = v232;
            *(v232 + 7) = &type metadata for PrimaryIndex;
            *(v133 + 64) = sub_10002A2B8();
            *(v133 + 32) = v132;
            v49 = sub_100A7A194(v120[2], v120[3], 0, 0);
            v134 = sub_100A7829C(v49, 0, 2);
            v135 = v239;
            a3 = v134;
            v20 = v136;
            CCECCryptorRelease();
            v54 = v20 >> 62;
            v240 = v116;
            if ((v20 >> 62) > 1)
            {
              if (v54 != 2)
              {
                goto LABEL_270;
              }

              v139 = *(a3 + 16);
              v138 = *(a3 + 24);
              v63 = __OFSUB__(v138, v139);
              v137 = v138 - v139;
              if (v63)
              {
                goto LABEL_208;
              }
            }

            else if (v54)
            {
              LODWORD(v137) = HIDWORD(a3) - a3;
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_209;
              }

              v137 = v137;
            }

            else
            {
              v137 = BYTE6(v20);
            }

            if (v137 != 28)
            {
              goto LABEL_240;
            }

            v140 = i;
            sub_10002EA98(6, a3, v20, &v252);
            sub_100022C40(v135, type metadata accessor for TimeBasedKey);
            v20 = *(&v252 + 1);
            v141 = v252;
            v142 = *(v249 + 20);
            v123 = v245;
            v143 = *(v245 + 28);
            v144 = type metadata accessor for DateInterval();
            v145 = v232;
            v146 = &v242[v142];
            a3 = v242;
            (*(*(v144 - 8) + 16))(&v232[v143], v146, v144);
            *v145 = __PAIR128__(v20, v141);
            v147 = v233;
            *(v145 + 16) = v140;
            *(v145 + 24) = v147;
            sub_100022C40(a3, type metadata accessor for TimeBasedKey);
            v29 = v241;
            v124 = v243;
            sub_10002911C(v145, &v241[v243], _s18ConnectionKeyGroupVMa);
            v122 = 0;
            v116 = v240;
          }

          (*v237)(v29 + v124, v122, 1, v123);
          v251 = v116;
          v149 = *(v116 + 16);
          v148 = *(v116 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_101124AA8((v148 > 1), v149 + 1, 1);
            v116 = v251;
          }

          ++v115;
          *(v116 + 16) = v149 + 1;
          sub_1000D2AD8(v29, v116 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v149, &qword_1016A5A80, &qword_1013B35A8);
          v49 = v234;
          i = v235;
          if (v234 == v115)
          {
            goto LABEL_174;
          }
        }
      }

      goto LABEL_175;
    }

    v232 = v13;
    v86 = *(v252 + 16);
    a3 = _swiftEmptyArrayStorage;
    v239 = i;
    v236 = v86;
    if (v86)
    {
      v87 = 0;
      while (1)
      {
        v54 = *(v51 + 16);
        if (v87 >= v54)
        {
          goto LABEL_179;
        }

        v88 = (*(v248 + 80) + 32) & ~*(v248 + 80);
        v29 = *(v248 + 72);
        sub_100022A54(v51 + v88 + v29 * v87, v48, type metadata accessor for TimeBasedKey);
        v89 = sub_100A7A194(*&v48[*(v249 + 24) + 16], *&v48[*(v249 + 24) + 24], 0, 0);
        v20 = sub_100A7829C(v89, 0, 2);
        v49 = v90;
        CCECCryptorRelease();
        v54 = v49 >> 62;
        v242 = v88;
        v240 = v29;
        if ((v49 >> 62) > 1)
        {
          if (v54 != 2)
          {
            v225 = 0;
            goto LABEL_283;
          }

          v93 = *(v20 + 16);
          v92 = *(v20 + 24);
          v63 = __OFSUB__(v92, v93);
          v91 = v92 - v93;
          if (v63)
          {
            goto LABEL_191;
          }
        }

        else if (v54)
        {
          LODWORD(v91) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_189;
          }

          v91 = v91;
        }

        else
        {
          v91 = BYTE6(v49);
        }

        if (v91 != 28)
        {
          goto LABEL_216;
        }

        v29 = v48;
        v94 = a3;
        sub_100017D5C(v20, v49);
        v95 = static MACAddress.length.getter();
        sub_10002EA98(v95, v20, v49, &v252);
        v96 = *(&v252 + 1);
        a3 = v252;
        v54 = *(&v252 + 1) >> 62;
        if ((*(&v252 + 1) >> 62) > 1)
        {
          if (v54 != 2)
          {
            goto LABEL_248;
          }

          v54 = *(v252 + 16);
          if (v54 > 5)
          {
            goto LABEL_194;
          }

          v54 = *(v252 + 24);
          if (v54 < 6)
          {
            goto LABEL_199;
          }

          v98 = __DataStorage._bytes.getter();
          if (!v98)
          {
            goto LABEL_252;
          }

          i = v98;
          v99 = __DataStorage._offset.getter();
          v54 = 5 - v99;
          if (__OFSUB__(5, v99))
          {
            goto LABEL_203;
          }
        }

        else
        {
          if (!v54)
          {
            LODWORD(v54) = 0;
            if ((*(&v252 + 1) & 0xFE000000000000uLL) < 0x5000000000001)
            {
              goto LABEL_195;
            }

            v97 = BYTE5(v252);
            goto LABEL_99;
          }

          LODWORD(v54) = 0;
          if (v252 < 0x600000000 || v252 > 5)
          {
            goto LABEL_197;
          }

          v100 = __DataStorage._bytes.getter();
          if (!v100)
          {
            goto LABEL_250;
          }

          i = v100;
          v101 = __DataStorage._offset.getter();
          v54 = 5 - v101;
          if (__OFSUB__(5, v101))
          {
            goto LABEL_201;
          }
        }

        v97 = *(i + v54);
        i = v239;
LABEL_99:
        sub_100016590(a3, v96);
        sub_100016590(v20, v49);
        if (v97 == v243)
        {
          v48 = v29;
          sub_10002911C(v29, v233, type metadata accessor for TimeBasedKey);
          a3 = v94;
          v102 = swift_isUniquelyReferenced_nonNull_native();
          v251 = v94;
          if ((v102 & 1) == 0)
          {
            sub_101124028(0, v94[2] + 1, 1);
            a3 = v251;
          }

          v51 = v247;
          v103 = v242;
          v104 = v240;
          v20 = *(a3 + 16);
          v105 = *(a3 + 24);
          v49 = v20 + 1;
          if (v20 >= v105 >> 1)
          {
            sub_101124028((v105 > 1), v20 + 1, 1);
            v51 = v247;
            a3 = v251;
          }

          *(a3 + 16) = v49;
          sub_10002911C(v233, &v103[a3 + v20 * v104], type metadata accessor for TimeBasedKey);
        }

        else
        {
          v48 = v29;
          sub_100022C40(v29, type metadata accessor for TimeBasedKey);
          v51 = v247;
          a3 = v94;
        }

        ++v87;
        v29 = v241;
        if (v236 == v87)
        {
          goto LABEL_144;
        }
      }
    }

    v29 = v241;
LABEL_144:
    v150 = *(a3 + 16);
    if (v150)
    {
      v251 = _swiftEmptyArrayStorage;
      sub_101124AA8(0, v150, 0);
      v151 = 0;
      v152 = v251;
      v242 = (a3 + ((*(v248 + 80) + 32) & ~*(v248 + 80)));
      v236 = v248 + 56;
      v237 += 56;
      v233 = a3;
      v235 = v150;
      while (1)
      {
        v54 = *(a3 + 16);
        if (v151 >= v54)
        {
          goto LABEL_181;
        }

        v153 = v248;
        v20 = v238;
        sub_100022A54(&v242[*(v248 + 72) * v151], v238, type metadata accessor for TimeBasedKey);
        v243 = *(v246 + 48);
        sub_100022A54(v20, i, type metadata accessor for TimeBasedKey);
        v154 = *(v153 + 56);
        v155 = v249;
        v154(i, 0, 1, v249);
        sub_100022A54(v20, v29, type metadata accessor for TimeBasedKey);
        v156 = (v29 + *(v155 + 24));
        v157 = v156[1];
        if (v157 >> 60 == 15)
        {
          sub_100022C40(v20, type metadata accessor for TimeBasedKey);
          sub_100022C40(v29, type metadata accessor for TimeBasedKey);
          v158 = 1;
          v159 = v245;
          v160 = v243;
        }

        else
        {
          i = *v156;
          v20 = String.utf8Data.getter();
          v29 = v161;
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v162 = __DataStorage.init(length:)();
          *&v252 = 0x2000000000;
          *(&v252 + 1) = v162 | 0x4000000000000000;
          sub_100017D5C(v20, v29);
          sub_10002E98C(i, v157);
          v163 = sub_100A7F110(v20, v29, v20, v29, i, v157, &v252, 32);
          a3 = 0;
          sub_100006654(i, v157);
          sub_100016590(v20, v29);
          if (v163)
          {
            v207 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v208 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v209 = swift_allocObject();
            *(v209 + 16) = xmmword_101385D80;
            *(v209 + 56) = &type metadata for Int32;
            *(v209 + 64) = &protocol witness table for Int32;
            *(v209 + 32) = v163;
            os_log(_:dso:log:_:_:)(v207, &_mh_execute_header, v208, "Error running CCDeriveKey. Code: %d.", v228[0]);

            i = v232;
            CryptoError.init(rawValue:)();
            v210 = type metadata accessor for CryptoError();
            sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
            v202 = swift_allocError();
            v212 = v211;
            v213 = *(v210 - 8);
            v214 = *(v213 + 48);
            if (v214(i, 1, v210) == 1)
            {
              (*(v213 + 104))(v212, enum case for CryptoError.unspecifiedError(_:), v210);
              if (v214(v232, 1, v210) != 1)
              {
                sub_10000B3A8(v232, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v213 + 32))(v212, v232, v210);
            }

            swift_willThrow();
            v221 = *(&v252 + 1);
            v220 = v252;
            goto LABEL_289;
          }

          v164 = *(&v252 + 1);
          v49 = v252;
          sub_100017D5C(v252, *(&v252 + 1));
          sub_100016590(v49, v164);
          v54 = v164 >> 62;
          v234 = v164;
          if ((v164 >> 62) > 1)
          {
            if (v54 != 2)
            {
              v227 = 0;
              goto LABEL_295;
            }

            v167 = *(v49 + 16);
            v166 = *(v49 + 24);
            v63 = __OFSUB__(v166, v167);
            v165 = v166 - v167;
            if (v63)
            {
              goto LABEL_205;
            }
          }

          else if (v54)
          {
            LODWORD(v165) = HIDWORD(v49) - v49;
            if (__OFSUB__(HIDWORD(v49), v49))
            {
              goto LABEL_207;
            }

            v165 = v165;
          }

          else
          {
            v165 = BYTE6(v164);
          }

          if (v165 != 32)
          {
            goto LABEL_232;
          }

          sub_100016590(v20, v29);
          v168 = *v241;
          v169 = v231;
          *(v231 + 7) = &type metadata for PrimaryIndex;
          *(v169 + 64) = sub_10002A2B8();
          *(v169 + 32) = v168;
          i = sub_100A7A194(v156[2], v156[3], 0, 0);
          a3 = sub_100A7829C(i, 0, 2);
          v20 = v170;
          CCECCryptorRelease();
          v54 = v20 >> 62;
          v240 = v152;
          if ((v20 >> 62) > 1)
          {
            v171 = v238;
            if (v54 != 2)
            {
LABEL_270:
              v188 = 0;
              goto LABEL_271;
            }

            v174 = *(a3 + 16);
            v173 = *(a3 + 24);
            v63 = __OFSUB__(v173, v174);
            v172 = v173 - v174;
            if (v63)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v171 = v238;
            if (v54)
            {
              LODWORD(v172) = HIDWORD(a3) - a3;
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_211;
              }

              v172 = v172;
            }

            else
            {
              v172 = BYTE6(v20);
            }
          }

          if (v172 != 28)
          {
            goto LABEL_236;
          }

          v175 = v49;
          sub_10002EA98(6, a3, v20, &v252);
          v20 = type metadata accessor for TimeBasedKey;
          sub_100022C40(v171, type metadata accessor for TimeBasedKey);
          v177 = *(&v252 + 1);
          v176 = v252;
          v178 = *(v249 + 20);
          v159 = v245;
          v179 = *(v245 + 28);
          v180 = type metadata accessor for DateInterval();
          v181 = v231;
          v182 = &v231[v179];
          v29 = v241;
          (*(*(v180 - 8) + 16))(v182, &v241[v178], v180);
          *v181 = __PAIR128__(v177, v176);
          v183 = v234;
          *(v181 + 16) = v175;
          *(v181 + 24) = v183;
          sub_100022C40(v29, type metadata accessor for TimeBasedKey);
          i = v239;
          v160 = v243;
          sub_10002911C(v181, v239 + v243, _s18ConnectionKeyGroupVMa);
          v158 = 0;
          a3 = v233;
          v152 = v240;
        }

        (*v237)(i + v160, v158, 1, v159);
        v251 = v152;
        v185 = *(v152 + 16);
        v184 = *(v152 + 24);
        v49 = v185 + 1;
        if (v185 >= v184 >> 1)
        {
          sub_101124AA8((v184 > 1), v185 + 1, 1);
          v152 = v251;
        }

        ++v151;
        *(v152 + 16) = v49;
        sub_1000D2AD8(i, v152 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v185, &qword_1016A5A80, &qword_1013B35A8);
        if (v235 == v151)
        {
          goto LABEL_174;
        }
      }
    }

LABEL_175:

    return v51;
  }

  if (v253 == 2)
  {
    a3 = *(v252 + 16);
    v74 = _swiftEmptyArrayStorage;
    if (a3)
    {
      for (i = 0; a3 != i; ++i)
      {
        v54 = *(v51 + 16);
        if (i >= v54)
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
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
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          if (v54 != 1)
          {
LABEL_220:
            if (v54 == 2)
            {
              v187 = *(a3 + 16);
              v54 = *(a3 + 24);
              v188 = v54 - v187;
              if (__OFSUB__(v54, v187))
              {
                __break(1u);
                goto LABEL_224;
              }

              goto LABEL_271;
            }

            goto LABEL_297;
          }

          LODWORD(v54) = HIDWORD(a3) - a3;
          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            goto LABEL_296;
          }

          __break(1u);
LABEL_216:
          if (v54 == 1)
          {
            LODWORD(v54) = HIDWORD(v20) - v20;
            if (!__OFSUB__(HIDWORD(v20), v20))
            {
              v225 = v54;
              goto LABEL_283;
            }

            __break(1u);
            goto LABEL_220;
          }

LABEL_224:
          if (v54 != 2)
          {
            v225 = BYTE6(v49);
            goto LABEL_283;
          }

          v189 = *(v20 + 16);
          v54 = *(v20 + 24);
          v225 = v54 - v189;
          if (!__OFSUB__(v54, v189))
          {
LABEL_283:
            sub_100018350();
            v196 = swift_allocError();
            *v215 = 28;
            *(v215 + 8) = v225;
            *(v215 + 16) = 0;
            swift_willThrow();
            sub_100016590(v20, v49);
            goto LABEL_269;
          }

          __break(1u);
LABEL_228:
          if (v54 != 1)
          {
            goto LABEL_253;
          }

          LODWORD(v54) = HIDWORD(i) - i;
          if (!__OFSUB__(HIDWORD(i), i))
          {
            v226 = v54;
            goto LABEL_293;
          }

          __break(1u);
LABEL_232:
          if (v54 == 1)
          {
            LODWORD(v54) = HIDWORD(v49) - v49;
            if (!__OFSUB__(HIDWORD(v49), v49))
            {
              v227 = v54;
              goto LABEL_295;
            }

            __break(1u);
LABEL_236:
            if (v54 == 1)
            {
              LODWORD(v54) = HIDWORD(a3) - a3;
              if (!__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_296;
              }

              __break(1u);
LABEL_240:
              if (v54 == 1)
              {
                LODWORD(v54) = HIDWORD(a3) - a3;
                if (!__OFSUB__(HIDWORD(a3), a3))
                {
LABEL_296:
                  v188 = v54;
LABEL_271:
                  sub_100018350();
                  v196 = swift_allocError();
                  *v197 = 28;
                  *(v197 + 8) = v188;
                  *(v197 + 16) = 0;
                  swift_willThrow();
                  sub_100016590(a3, v20);
LABEL_269:
                  *&v252 = 0;
                  *(&v252 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v195._object = 0x800000010134CB30;
                  v195._countAndFlagsBits = 0xD000000000000021;
                  String.append(_:)(v195);
                  v250 = v196;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  while (1)
                  {
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
LABEL_292:
                    v226 = 0;
LABEL_293:
                    sub_100018350();
                    v202 = swift_allocError();
                    *v223 = 32;
                    *(v223 + 8) = v226;
                    *(v223 + 16) = 0;
                    swift_willThrow();
                    v216 = i;
                    v217 = v233;
LABEL_286:
                    sub_100016590(v216, v217);
                    v218 = v29;
                    v219 = v20;
LABEL_290:
                    sub_100016590(v218, v219);
                    *&v252 = 0;
                    *(&v252 + 1) = 0xE000000000000000;
                    _StringGuts.grow(_:)(35);
                    v222._object = 0x8000000101354990;
                    v222._countAndFlagsBits = 0xD000000000000021;
                    String.append(_:)(v222);
                    v250 = v202;
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    _print_unlocked<A, B>(_:_:)();
                  }
                }

                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
LABEL_248:
                __break(1u);
LABEL_249:
                __break(1u);
LABEL_250:
                __break(1u);
LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
LABEL_253:
                if (v54 != 2)
                {
                  v226 = BYTE6(v233);
                  goto LABEL_293;
                }

                v190 = *(i + 16);
                v54 = *(i + 24);
                v226 = v54 - v190;
                if (!__OFSUB__(v54, v190))
                {
                  goto LABEL_293;
                }

                __break(1u);
                goto LABEL_257;
              }

LABEL_265:
              if (v54 == 2)
              {
                v194 = *(a3 + 16);
                v193 = *(a3 + 24);
                v188 = v193 - v194;
                if (__OFSUB__(v193, v194))
                {
                  __break(1u);
                }

                goto LABEL_271;
              }

              goto LABEL_297;
            }

LABEL_261:
            if (v54 == 2)
            {
              v192 = *(a3 + 16);
              v54 = *(a3 + 24);
              v188 = v54 - v192;
              if (!__OFSUB__(v54, v192))
              {
                goto LABEL_271;
              }

              __break(1u);
              goto LABEL_265;
            }

LABEL_297:
            v188 = BYTE6(v20);
            goto LABEL_271;
          }

LABEL_257:
          if (v54 == 2)
          {
            v191 = *(v49 + 16);
            v54 = *(v49 + 24);
            v227 = v54 - v191;
            if (__OFSUB__(v54, v191))
            {
              __break(1u);
              goto LABEL_261;
            }
          }

          else
          {
            v227 = BYTE6(v234);
          }

LABEL_295:
          sub_100018350();
          v202 = swift_allocError();
          *v224 = 32;
          *(v224 + 8) = v227;
          *(v224 + 16) = 0;
          swift_willThrow();
          v220 = v49;
          v221 = v234;
LABEL_289:
          sub_100016590(v220, v221);
          v218 = v20;
          v219 = v29;
          goto LABEL_290;
        }

        v75 = (*(v237 + 80) + 32) & ~*(v237 + 80);
        v29 = *(v237 + 72);
        sub_100022A54(v51 + v75 + v29 * i, v20, _s18ConnectionKeyGroupVMa);
        v54 = *v20;
        v76 = *(v20 + 8);
        v77 = v76 >> 62;
        if ((v76 >> 62) > 1)
        {
          if (v77 != 2)
          {
            goto LABEL_244;
          }

          if (*(v54 + 16) > 5)
          {
            goto LABEL_182;
          }

          v54 = *(v54 + 24);
          if (v54 < 6)
          {
            goto LABEL_185;
          }

          v79 = __DataStorage._bytes.getter();
          if (!v79)
          {
            goto LABEL_246;
          }

          v49 = v79;
          v80 = __DataStorage._offset.getter();
          v54 = 5 - v80;
          if (__OFSUB__(5, v80))
          {
            goto LABEL_187;
          }
        }

        else
        {
          if (!v77)
          {
            if ((v76 & 0xFE000000000000) < 0x5000000000001)
            {
              goto LABEL_183;
            }

            v78 = BYTE5(v54);
            goto LABEL_62;
          }

          if (v54 < 0x600000000 || v54 > 5)
          {
            goto LABEL_184;
          }

          v81 = __DataStorage._bytes.getter();
          if (!v81)
          {
            goto LABEL_245;
          }

          v49 = v81;
          v82 = __DataStorage._offset.getter();
          v54 = 5 - v82;
          if (__OFSUB__(5, v82))
          {
            goto LABEL_186;
          }
        }

        v78 = *(v49 + v54);
        v51 = v247;
LABEL_62:
        if (v78 == v243)
        {
          sub_10002911C(v20, v235, _s18ConnectionKeyGroupVMa);
          v83 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = v74;
          if ((v83 & 1) == 0)
          {
            sub_101124AE8(0, v74[2] + 1, 1);
            v51 = v247;
            v74 = v252;
          }

          v85 = v74[2];
          v84 = v74[3];
          v49 = v85 + 1;
          if (v85 >= v84 >> 1)
          {
            sub_101124AE8((v84 > 1), v85 + 1, 1);
            v51 = v247;
            v74 = v252;
          }

          v74[2] = v49;
          sub_10002911C(v235, v74 + v75 + v85 * v29, _s18ConnectionKeyGroupVMa);
        }

        else
        {
          sub_100022C40(v20, _s18ConnectionKeyGroupVMa);
        }
      }
    }

    v106 = v74[2];
    if (!v106)
    {
      goto LABEL_175;
    }

    *&v252 = _swiftEmptyArrayStorage;
    sub_101124AA8(0, v106, 0);
    v107 = v252;
    v108 = v74 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
    v243 = *(v237 + 72);
    v109 = (v248 + 56);
    v110 = (v237 + 56);
    do
    {
      v111 = v236;
      sub_100022A54(v108, v236, _s18ConnectionKeyGroupVMa);
      v112 = *(v246 + 48);
      (*v109)(v26, 1, 1, v249);
      sub_10002911C(v111, &v26[v112], _s18ConnectionKeyGroupVMa);
      (*v110)(&v26[v112], 0, 1, v245);
      *&v252 = v107;
      v114 = *(v107 + 16);
      v113 = *(v107 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_101124AA8((v113 > 1), v114 + 1, 1);
        v107 = v252;
      }

      *(v107 + 16) = v114 + 1;
      sub_1000D2AD8(v26, v107 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v114, &qword_1016A5A80, &qword_1013B35A8);
      v108 += v243;
      --v106;
    }

    while (v106);
LABEL_174:

    return v247;
  }

  return v51;
}

uint64_t sub_100AE23E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return _swift_task_switch(sub_100AE2410, 0, 0);
}

uint64_t sub_100AE2410()
{
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *(v0 + 64) = *(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100AE2514;
  v2 = *(v0 + 104);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  return sub_100731BF4(v5, v3, v4, 0, v2, 0);
}

uint64_t sub_100AE2514(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 80) = v3;

  if (v3)
  {
    v9 = sub_100AE2684;
  }

  else
  {

    *(v8 + 105) = a3;
    *(v8 + 88) = a2;
    *(v8 + 96) = a1;
    v9 = sub_100AE2658;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100AE2658()
{
  v1 = *(v0 + 105);
  v2 = *(v0 + 24);
  *v2 = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);
  v2[1].i8[0] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100AE2684()
{

  v1 = *(v0 + 24);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100AE2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 72);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_100B26C68;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648068;
  v15 = _Block_copy(aBlock);

  sub_100012908(a3, a4);
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v10, v8);
  (*(v11 + 8))(v13, v18);
}

uint64_t sub_100AE2A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Transaction.capture()();
  v4 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = qword_10177C380;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10177C380, "Started repairing cryptor.", 26, 2, _swiftEmptyArrayStorage);
  sub_100A85AEC();
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FCF3A4();

  v6 = static os_log_type_t.default.getter();
  result = os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v5, "Completed repairing cryptor.", 28, 2, _swiftEmptyArrayStorage);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_100AE2B78(uint64_t a1, void (*a2)(void, void, void, void), uint64_t a3, void *a4, int a5, int a6)
{
  v316 = a6;
  v343 = a5;
  v351 = a4;
  v393 = a3;
  v357 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v359 = *(v357 - 8);
  v8 = __chkstk_darwin(v357);
  v352 = &v312 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v355 = &v312 - v10;
  v11 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  __chkstk_darwin(v11 - 8);
  v356 = &v312 - v12;
  v13 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v13 - 8);
  v328 = &v312 - v14;
  v336 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v329 = *(v336 - 8);
  __chkstk_darwin(v336);
  v327 = &v312 - v15;
  v16 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  __chkstk_darwin(v16 - 8);
  v330 = &v312 - v17;
  v18 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v18 - 8);
  v318 = (&v312 - v19);
  v320 = type metadata accessor for OwnedBeaconGroup(0);
  v317 = *(v320 - 8);
  v20 = __chkstk_darwin(v320);
  v315 = &v312 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v314 = &v312 - v23;
  v313 = v24;
  __chkstk_darwin(v22);
  v319 = &v312 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v26 - 8);
  v324 = &v312 - v27;
  v28 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v29 = __chkstk_darwin(v28 - 8);
  v335 = &v312 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v333 = &v312 - v31;
  v345 = type metadata accessor for OwnedBeaconRecord(0);
  v344 = *(v345 - 8);
  v32 = __chkstk_darwin(v345);
  v337 = &v312 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v332 = &v312 - v34;
  v382 = type metadata accessor for DispatchQoS();
  v340 = *(v382 - 8);
  __chkstk_darwin(v382);
  v381 = &v312 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = type metadata accessor for SafeLocation(0);
  v339 = *(v338 - 8);
  __chkstk_darwin(v338);
  v385 = (&v312 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v37 - 8);
  v371 = &v312 - v38;
  v348 = type metadata accessor for DirectorySequence();
  v347 = *(v348 - 8);
  __chkstk_darwin(v348);
  v373 = &v312 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for URL();
  v349 = *(v350 - 8);
  v40 = __chkstk_darwin(v350);
  v326 = &v312 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v325 = &v312 - v43;
  v44 = __chkstk_darwin(v42);
  v334 = &v312 - v45;
  v46 = __chkstk_darwin(v44);
  v353 = &v312 - v47;
  __chkstk_darwin(v46);
  v372 = &v312 - v48;
  v49 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v49 - 8);
  v369 = &v312 - v50;
  v370 = type metadata accessor for KeyAlignmentRecord(0);
  v368 = *(v370 - 8);
  v51 = __chkstk_darwin(v370);
  v342 = &v312 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v346 = &v312 - v53;
  v365 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v365);
  v366 = (&v312 - v54);
  v374 = type metadata accessor for BeaconNamingRecord(0);
  v360 = *(v374 - 8);
  v55 = __chkstk_darwin(v374);
  v341 = &v312 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v58 = (&v312 - v57);
  v363 = type metadata accessor for UUID();
  v361 = *(v363 - 8);
  v59 = __chkstk_darwin(v363);
  v358 = &v312 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v331 = &v312 - v62;
  v63 = __chkstk_darwin(v61);
  v65 = &v312 - v64;
  v66 = __chkstk_darwin(v63);
  v375 = &v312 - v67;
  v362 = v68;
  __chkstk_darwin(v66);
  v395 = &v312 - v69;
  v394 = type metadata accessor for BeaconEstimatedLocation(0);
  *&v386 = *(v394 - 8);
  v70 = __chkstk_darwin(v394);
  *&v389 = &v312 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v73 = &v312 - v72;
  v74 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v312 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v367 = v58;
  v392 = a1;
  v78 = qword_10177B2E8;
  v79 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v79);
  *(&v312 - 4) = v78;
  *(&v312 - 3) = a2;
  v391 = a2;
  *(&v312 - 2) = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
  *(&v312 - 1) = 0;
  v80 = v390;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  v354 = v80;
  v83 = *(v75 + 8);
  v82 = (v75 + 8);
  v81 = v83;
  v378 = v77;
  v83(v77, v74);
  v84 = *(v393 + 168);
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v85 = sub_1000076D4(v350, qword_10177BF38);
  v86 = sub_100AF4FC0(v85, sub_1006011CC, sub_100FFDCB0);
  v87 = v86[2];
  v390 = v65;
  v364 = v84;
  v380 = v74;
  v379 = v82;
  v377 = v81;
  if (v87)
  {
    v88 = v391;
    v89 = sub_1000210EC(v391);
    if (v90)
    {
      v91 = *(v86[7] + 8 * v89);

      v388 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_10138BBE0;
      v93 = *(v91 + 16);
      *(v92 + 56) = &type metadata for Int;
      *(v92 + 64) = &protocol witness table for Int;
      *(v92 + 32) = v93;
      v94 = UUID.uuidString.getter();
      v95 = v88;
      v97 = v96;
      *(v92 + 96) = &type metadata for String;
      v387 = sub_100008C00();
      *(v92 + 104) = v387;
      *(v92 + 72) = v94;
      *(v92 + 80) = v97;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v98 = static OS_os_log.default.getter();
      v99 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("BeaconStore removing %i locations for beacon %@", 47, 2, &_mh_execute_header, v98, v99, v92);

      v100 = *(v91 + 16);
      if (v100)
      {
        v101 = (*(v386 + 80) + 32) & ~*(v386 + 80);
        v323 = v91;
        v102 = v91 + v101;
        *&v386 = *(v386 + 72);
        v384 = v361 + 16;
        v383 = (v361 + 32);
        v376 = xmmword_101385D80;
        v103 = v392;
        do
        {
          sub_100022A54(v102, v73, type metadata accessor for BeaconEstimatedLocation);
          v104 = v361;
          v105 = v395;
          v106 = v363;
          (*(v361 + 16))(v395, v391, v363);
          v107 = (*(v104 + 80) + 24) & ~*(v104 + 80);
          v108 = swift_allocObject();
          *(v108 + 16) = v103;
          (*(v104 + 32))(v108 + v107, v105, v106);

          v109 = static os_log_type_t.default.getter();
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v110 = qword_10177C380;
          v111 = swift_allocObject();
          *(v111 + 16) = v376;
          sub_100022A54(v73, v389, type metadata accessor for BeaconEstimatedLocation);
          v112 = String.init<A>(describing:)();
          v113 = v387;
          *(v111 + 56) = &type metadata for String;
          *(v111 + 64) = v113;
          *(v111 + 32) = v112;
          *(v111 + 40) = v114;
          os_log(_:dso:log:_:_:)(v109, &_mh_execute_header, v110, "Attempting to remove: %@", 24, 2, v111);

          sub_100B1F028(v73, v393, sub_100B23104, v108);

          sub_100022C40(v73, type metadata accessor for BeaconEstimatedLocation);
          v102 += v386;
          --v100;
          v103 = v392;
        }

        while (v100);

        v115 = v393;
        v88 = v391;
      }

      else
      {

        v115 = v393;
        v88 = v95;
      }
    }

    else
    {

      v115 = v393;
    }
  }

  else
  {

    v88 = v391;
    v115 = v393;
  }

  v116 = v351[3];
  v117 = v351[4];
  sub_1000035D0(v351, v116);
  v118 = v375;
  v119 = (*(*(*(v117 + 8) + 8) + 32))(v116);
  __chkstk_darwin(v119);
  *(&v312 - 2) = v115;
  *(&v312 - 1) = v118;
  v120 = v392;

  v121 = v366;
  v122 = v354;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v123 = (*(v360 + 48))(v121, 1, v374);
  v124 = v395;
  v394 = v122;
  if (v123 == 1)
  {
    sub_10000B3A8(v121, &unk_1016B29E0, &unk_1013B70E0);
    Transaction.capture()();
    v125 = static os_log_type_t.error.getter();
    v126 = v370;
    if (qword_101695038 != -1)
    {
      v311 = v125;
      swift_once();
      v125 = v311;
    }

    v360 = qword_10177C380;
    os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, qword_10177C380, "Could not remove beaconNamingRecord", 35, 2, _swiftEmptyArrayStorage);

    v127 = v361;
    v128 = v375;
    v129 = v363;
  }

  else
  {
    sub_10002911C(v121, v367, type metadata accessor for BeaconNamingRecord);
    v130 = v361;
    v131 = v363;
    (*(v361 + 16))(v124, v118, v363);
    v132 = (*(v130 + 80) + 24) & ~*(v130 + 80);
    v133 = (v362 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
    v134 = swift_allocObject();
    *(v134 + 16) = v115;
    (*(v130 + 32))(v134 + v132, v124, v131);
    v135 = (v134 + v133);
    *v135 = sub_100B22B80;
    v135[1] = v120;

    v136 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v137 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_101385D80;
    v139 = v367;
    sub_100022A54(v367, v341, type metadata accessor for BeaconNamingRecord);
    v140 = String.init<A>(describing:)();
    v142 = v141;
    *(v138 + 56) = &type metadata for String;
    *(v138 + 64) = sub_100008C00();
    *(v138 + 32) = v140;
    *(v138 + 40) = v142;
    v360 = v137;
    os_log(_:dso:log:_:_:)(v136, &_mh_execute_header, v137, "Attempting to remove: %@", 24, 2, v138);

    sub_100B1145C(v139, v115, sub_100B23010, v134);

    sub_100022C40(v139, type metadata accessor for BeaconNamingRecord);
    v129 = v363;
    v127 = v361;
    v88 = v391;
    v126 = v370;
    v128 = v375;
  }

  v143 = v127 + 8;
  v144 = v129;
  v383 = *(v127 + 8);
  v383(v128);
  v145 = v369;
  v146 = v88;
  sub_100B2DA4C(v369);
  if ((*(v368 + 48))(v145, 1, v126) == 1)
  {
    sub_10000B3A8(v145, &qword_10169F328, &unk_1013CB040);
  }

  else
  {
    v147 = v346;
    sub_10002911C(v145, v346, type metadata accessor for KeyAlignmentRecord);

    v148 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_101385D80;
    sub_100022A54(v147, v342, type metadata accessor for KeyAlignmentRecord);
    v150 = v147;
    v151 = String.init<A>(describing:)();
    v153 = v152;
    *(v149 + 56) = &type metadata for String;
    *(v149 + 64) = sub_100008C00();
    *(v149 + 32) = v151;
    *(v149 + 40) = v153;
    os_log(_:dso:log:_:_:)(v148, &_mh_execute_header, v360, "Attempting to remove: %@", 24, 2, v149);

    sub_100B1DF3C(v150, v393, sub_100B22FE4, v120);

    sub_100022C40(v150, type metadata accessor for KeyAlignmentRecord);
    v127 = v361;
  }

  v154 = v351[3];
  v155 = v351[4];
  sub_1000035D0(v351, v154);
  v156 = (*(v155 + 104))(v154, v155);
  v384 = v143;
  if (v156)
  {
    if (qword_101694970 != -1)
    {
      swift_once();
    }

    v157 = sub_1000076D4(v350, qword_10177B398);
    v158 = __chkstk_darwin(v157);
    *(&v312 - 4) = v159;
    *(&v312 - 3) = v146;
    *(&v312 - 2) = v158;
    v160 = v394;
    OS_dispatch_queue.sync<A>(execute:)();
    v161 = aBlock;
    v162 = static os_log_type_t.info.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v163 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v164 = swift_allocObject();
    v389 = xmmword_101385D80;
    *(v164 + 16) = xmmword_101385D80;
    *(v164 + 56) = &type metadata for Bool;
    *(v164 + 64) = &protocol witness table for Bool;
    *(v164 + 32) = v161;
    os_log(_:dso:log:_:_:)(v162, &_mh_execute_header, v163, "Remove BeaconProductInfoRecord? [%d]", v312);

    if (qword_1016951F0 != -1)
    {
      swift_once();
    }

    v165 = sub_1000076D4(v350, qword_10177C590);
    v166 = __chkstk_darwin(v165);
    v146 = v391;
    *(&v312 - 4) = v167;
    *(&v312 - 3) = v146;
    *(&v312 - 2) = v166;
    OS_dispatch_queue.sync<A>(execute:)();
    v394 = v160;
    v168 = aBlock;
    v169 = static os_log_type_t.info.getter();
    v170 = swift_allocObject();
    *(v170 + 16) = v389;
    *(v170 + 56) = &type metadata for Bool;
    *(v170 + 64) = &protocol witness table for Bool;
    *(v170 + 32) = v168;
    os_log(_:dso:log:_:_:)(v169, &_mh_execute_header, v163, "Remove AccessoryMetadataRecord? [%d]", v312);

    v120 = v392;
    v144 = v363;
    v127 = v361;
  }

  v171 = sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v172 = *(v127 + 80);
  v173 = (v172 + 32) & ~v172;
  v174 = v173 + *(v127 + 72);
  v346 = v172;
  v175 = v172 | 7;
  *&v376 = v171;
  v374 = v174;
  v176 = swift_allocObject();
  v386 = xmmword_101385D80;
  *(v176 + 16) = xmmword_101385D80;
  v179 = *(v127 + 16);
  v177 = v127 + 16;
  v178 = v179;
  v375 = v173;
  v179(v176 + v173, v146, v144);

  sub_1009C99C0(v176, sub_100B22BAC, v120);

  if (qword_101694F88 != -1)
  {
    swift_once();
  }

  v388 = v178;
  *&v389 = v177;
  v387 = v175;
  v180 = v350;
  v181 = sub_1000076D4(v350, qword_10177C268);
  v182 = v349;
  v183 = *(v349 + 16);
  v323 = v349 + 16;
  v322 = v183;
  v183(v372, v181, v180);
  *&aBlock = _swiftEmptyArrayStorage;
  v401 = _swiftEmptyArrayStorage;
  v184 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v185 = v371;
  DirectorySequence.next()();
  v186 = *(v182 + 48);
  if (v186(v185, 1, v180) == 1)
  {
LABEL_42:
    v192 = v346;
    v341 = ~v346;
    (*(v347 + 8))(v373, v348);
    v193 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v194 = static OS_os_log.default.getter();
    v354 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_10138BBE0;
    v196 = v180;
    v197 = aBlock;
    v198 = *(aBlock + 16);
    *(v195 + 56) = &type metadata for Int;
    *(v195 + 64) = &protocol witness table for Int;
    *(v195 + 32) = v198;
    sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v199 = v372;
    v200 = dispatch thunk of CustomStringConvertible.description.getter();
    v202 = v201;
    *(v195 + 96) = &type metadata for String;
    v353 = sub_100008C00();
    *(v195 + 104) = v353;
    *(v195 + 72) = v200;
    *(v195 + 80) = v202;
    os_log(_:dso:log:_:_:)(v193, &_mh_execute_header, v194, "Found %i records at %@", 22, 2, v195);

    v203 = *(v349 + 8);
    v349 += 8;
    v321 = v203;
    v203(v199, v196);

    __chkstk_darwin(v204);
    *(&v312 - 2) = v391;
    v205 = v394;
    v206 = sub_10013D504(sub_100B22BD8, (&v312 - 8), v197);
    v207 = v205;
    v208 = v206[2];
    if (v208)
    {
      v342 = v205;
      v209 = v385;
      v373 = v385 + *(v338 + 20);
      v210 = (*(v339 + 80) + 32) & ~*(v339 + 80);
      v338 = v206;
      v211 = v206 + v210;
      v371 = *(v393 + 96);
      v372 = ((v192 + 24) & v341);
      v370 = *(v339 + 72);
      v369 = &v372[v362 + 7] & 0xFFFFFFFFFFFFFFF8;
      v368 = (v369 + 15) & 0xFFFFFFFFFFFFFFF8;
      v367 = (v361 + 32);
      v366 = &v397;
      v365 = (v340 + 8);
      v212 = v363;
      do
      {
        v394 = v208;
        sub_100022A54(v211, v209, type metadata accessor for SafeLocation);
        v213 = v395;
        v214 = v388;
        v388(v395, v373, v212);
        sub_100022C40(v209, type metadata accessor for SafeLocation);
        v215 = swift_allocObject();
        *(v215 + 16) = v386;
        v214(&v375[v215], v391, v212);
        v216 = v390;
        v214(v390, v213, v212);
        v217 = v368;
        v218 = swift_allocObject();
        *(v218 + 16) = v215;
        (*v367)(&v372[v218], v216, v212);
        v219 = v392;
        *(v218 + v369) = v393;
        v220 = (v218 + v217);
        *v220 = sub_100B22C28;
        v220[1] = v219;
        v399 = sub_100B22C54;
        v400 = v218;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v397 = sub_100006684;
        v398 = &unk_1016466F0;
        v221 = _Block_copy(&aBlock);
        swift_retain_n();

        v222 = v381;
        static DispatchQoS.unspecified.getter();
        v401 = _swiftEmptyArrayStorage;
        sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v223 = v378;
        v224 = v380;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v209 = v385;
        _Block_release(v221);

        v377(v223, v224);
        (*v365)(v222, v382);
        (v383)(v395, v212);

        v211 += v370;
        v208 = v394 - 1;
      }

      while (v394 != 1);

      v225 = v351;
      v226 = v393;
      v227 = v212;
      v228 = v390;
      v229 = v345;
      v230 = v344;
      v207 = v342;
      if ((v343 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {

      v226 = v393;
      v227 = v363;
      v228 = v390;
      v229 = v345;
      v230 = v344;
      v225 = v351;
      if ((v343 & 1) == 0)
      {
LABEL_58:
        My = type metadata accessor for Feature.FindMy();
        v398 = My;
        v399 = sub_10000768C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
        v260 = sub_1000280DC(&aBlock);
        (*(*(My - 8) + 104))(v260, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
        LOBYTE(My) = isFeatureEnabled(_:)();
        sub_100007BAC(&aBlock);
        if (My)
        {
          sub_10001F280(v225, &aBlock);
          sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
          v261 = v335;
          v262 = swift_dynamicCast();
          v263 = *(v230 + 56);
          if (v262)
          {
            v342 = v207;
            v263(v261, 0, 1, v229);
            v264 = v261;
            v265 = v337;
            sub_10002911C(v264, v337, type metadata accessor for OwnedBeaconRecord);
            v388(v358, v265 + *(v229 + 20), v227);
            if (qword_101695268 != -1)
            {
              swift_once();
            }

            v266 = v350;
            sub_1000076D4(v350, qword_10177C680);
            UUID.uuidString.getter();
            v267 = v334;
            URL.appendingPathComponent(_:isDirectory:)();

            v268 = v325;
            v269 = v267;
            v270 = v322;
            v322(v325, v269, v266);
            v394 = *(v336 + 40);
            v271 = v336;
            v391 = *(v347 + 56);
            v272 = v327;
            v391(&v327[v394], 1, 1, v348);
            v270(v272, v268, v266);
            *(v272 + *(v271 + 36)) = v364;
            v270(v326, v268, v266);

            v273 = v328;
            DirectorySequence.init(at:includingPropertiesForKeys:options:)();
            v274 = v268;
            v275 = v321;
            v321(v274, v266);
            v275(v334, v266);
            v391(v273, 0, 1, v348);
            sub_10002311C(v273, v272 + v394, &qword_1016A5970, &unk_1013B3470);
            v276 = *(v329 + 56);
            v277 = v330;
            v278 = v336;
            v276(v330, 1, 1, v336);
            sub_10000B3A8(v277, &qword_1016A78B8, &unk_1013D6710);
            sub_1000D2AD8(v272, v277, &qword_1016A78A8, &unk_1013D66E0);
            v276(v277, 0, 1, v278);
            sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
            v279 = swift_allocObject();
            sub_1000D2AD8(v277, v279 + *(*v279 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
            v280 = *(*v279 + class metadata base offset for _SequenceBox + 16);
            sub_1000BC4D4(&qword_1016A78D8, &unk_1013D6720);
            v281 = swift_allocObject();
            v282 = *(*v281 + class metadata base offset for _IteratorBox + 16);
            v379 = v279;
            sub_1000D2A70(v279 + v280, v281 + v282, &qword_1016A78B0, &unk_1013EB2A0);
            v283 = *(*v281 + class metadata base offset for _IteratorBox + 16);
            v394 = v281;
            v391 = v283;
            v284 = v356;
            sub_100AF5B10(v356);
            v285 = *(v359 + 48);
            v286 = v284;
            v287 = v357;
            v359 += 48;
            v385 = v285;
            if ((v285)(v284, 1, v357) != 1)
            {
              v382 = (v346 + 24) & v341;
              v381 = ((v362 + v346 + v382) & v341);
              v380 = (v361 + 32);
              v296 = v355;
              do
              {
                sub_10002911C(v286, v296, type metadata accessor for OwnedDeviceKeyRecord);
                v297 = *(v287 + 20);
                v298 = v395;
                v299 = v363;
                v300 = v388;
                v388(v395, v358, v363);
                v300(v228, v296 + v297, v299);
                v301 = v381;
                v302 = swift_allocObject();
                *(v302 + 16) = v392;
                v303 = v228;
                v304 = *v380;
                (*v380)(v302 + v382, v298, v299);
                v304(&v301[v302], v303, v299);

                v305 = static os_log_type_t.default.getter();
                if (qword_101695038 != -1)
                {
                  swift_once();
                }

                v306 = swift_allocObject();
                *(v306 + 16) = v386;
                sub_100022A54(v296, v352, type metadata accessor for OwnedDeviceKeyRecord);
                v296 = v355;
                v287 = v357;
                v307 = String.init<A>(describing:)();
                v308 = v353;
                *(v306 + 56) = &type metadata for String;
                *(v306 + 64) = v308;
                *(v306 + 32) = v307;
                *(v306 + 40) = v309;
                os_log(_:dso:log:_:_:)(v305, &_mh_execute_header, v360, "Attempting to remove: %@", 24, 2, v306);

                sub_100B0C534(v296, v393, sub_100B22E3C, v302);

                sub_100022C40(v296, type metadata accessor for OwnedDeviceKeyRecord);
                v286 = v356;
                sub_100AF5B10(v356);
                v310 = (v385)(v286, 1, v287);
                v228 = v390;
              }

              while (v310 != 1);
            }

            v288 = v394;
            swift_setDeallocating();
            sub_10000B3A8(v288 + *(*v288 + class metadata base offset for _IteratorBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
            swift_deallocClassInstance();
            v289 = v379;
            swift_setDeallocating();
            sub_10000B3A8(v289 + *(*v289 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
            swift_deallocClassInstance();
            (v383)(v358, v363);
            sub_100022C40(v337, type metadata accessor for OwnedBeaconRecord);
            v225 = v351;
            v226 = v393;
          }

          else
          {
            v263(v261, 1, 1, v229);
            sub_10000B3A8(v261, &unk_1016A9A20, &qword_10138B280);
          }
        }

        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v290 = aBlock;
        v291 = v225[3];
        v292 = v225[4];
        v293 = sub_1000035D0(v225, v291);
        sub_101309728(v293, 0, 0, v290, v291, v292);

        sub_10001F280(v225, &aBlock);
        v294 = swift_allocObject();
        *(v294 + 16) = v226;
        sub_10000A748(&aBlock, v294 + 24);

        sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
        unsafeFromAsyncTask<A>(_:)();

        sub_10001F280(v225, &aBlock);
        v295 = swift_allocObject();
        sub_10000A748(&aBlock, v295 + 16);
        unsafeFromAsyncTask<A>(_:)();

        return;
      }
    }

    sub_10001F280(v225, &aBlock);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v231 = v333;
    v232 = swift_dynamicCast();
    v233 = *(v230 + 56);
    if (v232)
    {
      v233(v231, 0, 1, v229);
      v234 = v231;
      v235 = v332;
      sub_10002911C(v234, v332, type metadata accessor for OwnedBeaconRecord);
      v236 = v324;
      sub_1000D2A70(v235 + *(v229 + 28), v324, &qword_1016980D0, &unk_10138F3B0);
      v237 = v227;
      v238 = v361;
      if ((*(v361 + 48))(v236, 1, v237) == 1)
      {
        sub_100022C40(v235, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v236, &qword_1016980D0, &unk_10138F3B0);
        v227 = v363;
      }

      else
      {
        v342 = v207;
        v239 = v238 + 32;
        v240 = *(v238 + 32);
        v241 = v331;
        v394 = v239;
        v391 = v240;
        v240(v331, v236, v363);
        v242 = v318;
        sub_100AC53EC(v241, v318);
        v243 = v242;
        v244 = v317;
        if ((*(v317 + 48))(v243, 1, v320) == 1)
        {
          v227 = v363;
          (v383)(v331, v363);
          sub_100022C40(v235, type metadata accessor for OwnedBeaconRecord);
          sub_10000B3A8(v243, &unk_1016AF8B0, &unk_1013A0700);
        }

        else
        {
          v385 = type metadata accessor for OwnedBeaconGroup;
          v245 = v319;
          sub_10002911C(v243, v319, type metadata accessor for OwnedBeaconGroup);
          v246 = v363;
          v388(v395, v331, v363);
          v247 = v314;
          sub_100022A54(v245, v314, type metadata accessor for OwnedBeaconGroup);
          v248 = (v346 + 24) & v341;
          v249 = (v248 + v362 + *(v244 + 80)) & ~*(v244 + 80);
          v250 = v249 + v313;
          v251 = swift_allocObject();
          v252 = v391;
          *(v251 + 16) = v392;
          v252(v251 + v248, v395, v246);
          v226 = v393;
          sub_10002911C(v247, v251 + v249, v385);
          *(v251 + v250) = v316 & 1;
          *(v251 + (v250 & 0xFFFFFFFFFFFFFFF8) + 8) = v226;

          v253 = static os_log_type_t.default.getter();
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v254 = swift_allocObject();
          *(v254 + 16) = v386;
          v255 = v319;
          sub_100022A54(v319, v315, type metadata accessor for OwnedBeaconGroup);
          v256 = String.init<A>(describing:)();
          v257 = v353;
          *(v254 + 56) = &type metadata for String;
          *(v254 + 64) = v257;
          *(v254 + 32) = v256;
          *(v254 + 40) = v258;
          os_log(_:dso:log:_:_:)(v253, &_mh_execute_header, v360, "Attempting to remove: %@", 24, 2, v254);

          sub_100B1CE90(v255, v226, sub_100B22EDC, v251);

          sub_100022C40(v255, type metadata accessor for OwnedBeaconGroup);
          v227 = v363;
          (v383)(v331, v363);
          sub_100022C40(v332, type metadata accessor for OwnedBeaconRecord);
          v228 = v390;
          v229 = v345;
          v230 = v344;
        }

        v207 = v342;
      }
    }

    else
    {
      v233(v231, 1, 1, v229);
      sub_10000B3A8(v231, &unk_1016A9A20, &qword_10138B280);
    }

    goto LABEL_58;
  }

  v187 = *(v182 + 32);
  v188 = v371;
  v189 = v353;
  while (1)
  {
    v187(v189, v188, v180);
    v190 = objc_autoreleasePoolPush();
    v191 = v394;
    sub_1006005CC(v189, v364, &aBlock, &v401);
    v394 = v191;
    if (v191)
    {
      break;
    }

    objc_autoreleasePoolPop(v190);
    (*(v182 + 8))(v189, v180);
    DirectorySequence.next()();
    if (v186(v188, 1, v180) == 1)
    {
      goto LABEL_42;
    }
  }

  objc_autoreleasePoolPop(v190);
  __break(1u);
}