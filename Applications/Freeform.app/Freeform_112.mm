double sub_100E12934(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v5[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  aBlock[4] = sub_100EA1E4C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4D08;
  v18 = _Block_copy(aBlock);

  v19 = v5;
  sub_100EA1E60(a2);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v13, v11);
  (*(v14 + 8))(v16, v22);

  return result;
}

uint64_t sub_100E12C40(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, void (*a5)(__n128))
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100E110D8(a2, a3, a4);

  (a5)(v14, 0);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v16 = v15;

  result = (*(v11 + 8))(v13, v10);
  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastFetchResultsTime) = v16;
  return result;
}

double sub_100E12DF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_1005B981C(&qword_101A21C58, &qword_1014B6520);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_100E12934(a3, a4, a5, sub_100EA1DC0, v15);

  return result;
}

uint64_t sub_100E12F5C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A21C58, &qword_1014B6520);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1005B981C(&qword_101A21C58, &qword_1014B6520);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E12FDC(unint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v12 = sub_100E232E0(a1);
    if (v2)
    {
      return v11;
    }

    if (!(v12 >> 62))
    {
      v13 = v12;
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v13 = v12;
  v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v24 = sub_100BD9538(_swiftEmptyArrayStorage);
  type metadata accessor for CRLUnfairLock();
  inited = swift_initStackObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(inited + 16) = v16;
  atomic_thread_fence(memory_order_acq_rel);
  v17 = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  __chkstk_darwin(v17);
  *(&v22 - 4) = v13;
  *(&v22 - 3) = inited;
  *(&v22 - 2) = &v24;
  static OS_dispatch_queue.concurrentPerform(iterations:execute:)();

  v23 = _swiftEmptyArrayStorage;
  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14)
    {
      v19 = 0;
      v11 = _swiftEmptyArrayStorage;
      v20 = v24;
      do
      {
        if (v20[2])
        {
          sub_1007C7EC0(v19);
          if (v21)
          {
            swift_retain_n();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v11 = v23;
          }
        }

        ++v19;
      }

      while (v14 != v19);
    }

    else
    {

      v11 = _swiftEmptyArrayStorage;
    }

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E1330C(uint64_t a1, void (*a2)(void *, void))
{
  v3 = sub_100DE62C0();
  a2(v3, 0);
}

double sub_100E133C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27[0] = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v27[0], v15, type metadata accessor for CRLBoardIdentifier);
  (*(v10 + 16))(v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v10 + 80) + v16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v10 + 32))(v18 + v17, v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  aBlock[4] = sub_100EA2420;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5208;
  v22 = _Block_copy(aBlock);
  v23 = v4;
  sub_10002E7A8(v21, v20);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v24 = v30;
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v8, v33);

  return result;
}

uint64_t sub_100E13864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  result = sub_10002FA9C(sub_100EA2520, v6);
  if (a4)
  {
    return a4(0);
  }

  return result;
}

void sub_100E13A64(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = v2;
  v55 = a2;
  v4 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v58 = type metadata accessor for CRLBoardCRDTData(0);
  *&v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v50 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  v15 = enum case for DispatchPredicate.onQueue(_:);
  v16 = *(v10 + 104);
  (v16)(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v17 = v14;
  v18 = _dispatchPreconditionTest(_:)();
  v19 = *(v10 + 8);
  v19(v13, v9);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v20;
  v16(v13, v15, v9);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  v19(v13, v9);
  if ((v22 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v59;
  v24 = sub_100DEB448(v60);
  if (v23)
  {
    return;
  }

  if (!v24)
  {
LABEL_8:
    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v30 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v32 = sub_10084B8C8();
      v34 = v33;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v35 = static os_log_type_t.default.getter();
      sub_100005404(v30, &_mh_execute_header, v35, "Attempted to update the last activity time but the board does not exist. Board identifier %@", 92, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  v25 = (v24 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v26 = *(v24 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  if (v26 >> 60 == 15)
  {

    goto LABEL_8;
  }

  v59 = v24;
  v27 = *v25;
  sub_100024E98(*v25, v26);
  sub_100024E98(v27, v26);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);
  v29 = v57;
  v28 = v58;
  CRDT.init(serializedData:)();
  v36 = *(v56 + 56);
  v60 = 0;
  v36(v29, 0, 1, v28);
  v51 = v27;
  v37 = v53;
  sub_100025668(v29, v53, type metadata accessor for CRLBoardCRDTData);
  v38 = v59;
  LODWORD(v57) = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
  v39 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
  v56 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v52 = v39;
  v40 = v54;
  sub_10000C83C(v37, v54, type metadata accessor for CRLBoardCRDTData);
  v41 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v42 = (v38 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20) + v41);
  v43 = *v42;
  v44 = v42[1];
  type metadata accessor for CRLBoardData(0);
  v45 = swift_allocObject();

  sub_100025870(v51, v26);

  sub_100026028(v37, type metadata accessor for CRLBoardCRDTData);
  *(v45 + 16) = 7;
  *(v45 + 40) = v52;
  *(v45 + 24) = v56;
  *(v45 + 56) = v57;
  sub_100025668(v40, v45 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
  v46 = (v45 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v46 = v43;
  v46[1] = v44;
  Date.timeIntervalSinceReferenceDate.getter();
  v48 = v47;
  swift_beginAccess();
  v61 = v48;
  sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
  CRMaxRegister.wrappedValue.setter();
  swift_endAccess();
  v49 = v60;
  sub_100DFE838(v45, 0, 0, 0xF000000000000000, 0, 0);

  if (!v49)
  {
  }
}

double sub_100E14110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_10096B0D4, v11, &unk_1018A5B00, sub_100EA328C, &unk_1018A5B18);

  return result;
}

double sub_100E14284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v23 = *(v15 - 8);
  v24 = v15;
  __chkstk_darwin(v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a6;
  v19 = _Block_copy(aBlock);
  v20 = v6;

  sub_10002E7A8(a2, a3);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v14, v12);
  (*(v23 + 8))(v17, v24);

  return result;
}

uint64_t sub_100E14568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a2;
  v5[3] = a1;
  result = sub_10002FA9C(sub_100EA3298, v5);
  if (a3)
  {
    return a3(0);
  }

  return result;
}

void sub_100E14818(int a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v43 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v5 + 104);
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v15;
  v11(v8, v10, v4);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v14(v8, v4);
  if ((v17 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v41;
  v19 = sub_100E07F54(v42);
  if (v18)
  {
    return;
  }

  v41 = 0;
  if (!v19 || (v20 = sub_100EA2998(v19)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_15:
      v34 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v36 = UUID.uuidString.getter();
      v38 = v37;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v36;
      *(inited + 40) = v38;
      v39 = static os_log_type_t.default.getter();
      sub_100005404(v34, &_mh_execute_header, v39, "Attempted to set the favorite state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 133, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_15;
  }

  v21 = v20;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146BDE0;
  v24 = sub_1000053B0();
  v25 = v24;
  v26 = v43 & 1;
  v27 = 1702195828;
  if ((v43 & 1) == 0)
  {
    v27 = 0x65736C6166;
  }

  v28 = 0xE500000000000000;
  if (v43)
  {
    v28 = 0xE400000000000000;
  }

  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v24;
  *(v23 + 32) = v27;
  *(v23 + 40) = v28;
  v29 = UUID.uuidString.getter();
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v25;
  *(v23 + 72) = v29;
  *(v23 + 80) = v30;
  v31 = static os_log_type_t.default.getter();
  sub_100005404(v22, &_mh_execute_header, v31, "Set favorite status to [%{public}@] for board identifier: %{public}@", 68, 2, v23);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_beginAccess();
  v44 = v26;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v32 = v41;
  sub_100E06DBC(v21, 0, 0, 0xF000000000000000, 0, v33);

  if (!v32)
  {
  }
}

double sub_100E14C84(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A22030, &unk_1014B6B40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(v23, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v24, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_10007C380;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6888;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v5, v21);
  (*(v26 + 8))(v7, v28);

  return result;
}

uint64_t sub_100E150FC(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_100E07F54(a3))
  {
    sub_100969BD4(v6);
    sub_1005B981C(&qword_101A2C810, &unk_101480B50);
    CRRegister.wrappedValue.getter();
    sub_1005B981C(&qword_101A22030, &unk_1014B6B40);
    CheckedContinuation.resume(returning:)();

    return sub_100026028(v6, type metadata accessor for CRLUserBoardMetadataCRDTData);
  }

  else
  {
    v8[0] = 2;
    sub_1005B981C(&qword_101A22030, &unk_1014B6B40);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E152B8(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = a1;
  sub_10002FA9C(sub_100EA3258, v3);
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

void sub_100E1556C(char a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = sub_100E07F54(a2);
  if (v3)
  {
    return;
  }

  v34 = 0;
  if (!v14 || (v15 = sub_100EA2998(v14)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v28 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v30 = UUID.uuidString.getter();
      v32 = v31;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      v33 = static os_log_type_t.default.getter();
      sub_100005404(v28, &_mh_execute_header, v33, "Attempted to enable collaborator cursors on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 138, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_14;
  }

  v16 = v15;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10146BDE0;
  v19 = sub_1000053B0();
  v20 = v19;
  v35 = a1 & 1;
  v21 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v21 = 0x65736C6166;
  }

  v22 = 0xE500000000000000;
  if (a1)
  {
    v22 = 0xE400000000000000;
  }

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v19;
  *(v18 + 32) = v21;
  *(v18 + 40) = v22;
  v23 = UUID.uuidString.getter();
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v20;
  *(v18 + 72) = v23;
  *(v18 + 80) = v24;
  v25 = static os_log_type_t.default.getter();
  sub_100005404(v17, &_mh_execute_header, v25, "Set enable collaborator cursors to [%{public}@] for board identifier: %{public}@", 80, 2, v18);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_beginAccess();
  v36 = v35;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v26 = v34;
  sub_100E06DBC(v16, 0, 0, 0xF000000000000000, 0, v27);

  if (!v26)
  {
  }
}

double sub_100E15978(uint64_t a1, char *a2, uint64_t a3, _OWORD *a4)
{
  v29 = a3;
  v30 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v29, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v30, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v9 + 80) + v17 + 73) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_100025668(v15, v19 + v16, type metadata accessor for CRLBoardIdentifier);
  v20 = (v19 + v17);
  v21 = a4[3];
  v20[2] = a4[2];
  v20[3] = v21;
  *(v20 + 57) = *(a4 + 57);
  v22 = a4[1];
  *v20 = *a4;
  v20[1] = v22;
  (*(v9 + 32))(v19 + v18, v11, v8);
  aBlock[4] = sub_100EA2D30;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A55F0;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  sub_1006D62AC(a4, &v38);
  v25 = v31;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v26 = v33;
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v37 + 8))(v26, v27);
  (*(v34 + 8))(v25, v36);

  return result;
}

uint64_t sub_100E15E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_10002FA9C(sub_100EA2E1C, v4);
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

void sub_100E16060(uint64_t a1, __int128 *a2)
{
  v47 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  v51 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v48 = v5;
  v49 = v13;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v15 = sub_10001CC04(v14, 0xD000000000000049, 0x80000001015A59F0);
  if (v3)
  {
    goto LABEL_13;
  }

  v16 = v15;

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v17 = a2[3];
  v54 = a2[2];
  v55[0] = v17;
  *(v55 + 9) = *(a2 + 57);
  v18 = a2[1];
  v52 = *a2;
  v53 = v18;
  sub_100EA2550();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v20;
  v22 = v19;

  v23 = *(*(v16 + 16) + 32);
  *v9 = v23;
  v24 = v48;
  v51(v9, v50, v48);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v49(v9, v24);
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_100DCCAB4(v22, v21, v16, 1);
  sub_10002640C(v22, v21);
  v26 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v27 = sub_10084DAE4(v47, *(v47 + *(v26 + 20)), *(v47 + *(v26 + 20) + 8));
  v29 = v28;
  v30 = v27;
  v31 = *(*(v16 + 16) + 32);
  *v9 = v31;
  v51(v9, v50, v24);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v49(v9, v24);
  if ((v31 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100DCCAB4(v30, v29, v16, 2);
  sub_10002640C(v30, v29);
  v33 = *(*(v16 + 16) + 32);
  *v9 = v33;
  v51(v9, v50, v24);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v35 = v49;
  v49(v9, v24);
  if ((v33 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v36 = *(v16 + 16);

  v37 = sub_10001CEC4(v36, v16);

  if (v37 == 101)
  {
    v38 = *(*(v16 + 16) + 32);
    *v9 = v38;
    v51(v9, v50, v24);
    v39 = v38;
    LOBYTE(v38) = _dispatchPreconditionTest(_:)();
    v35(v9, v24);
    if (v38)
    {
      swift_beginAccess();
      v40 = *(v16 + 24);
      if (v40)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    goto LABEL_18;
  }

  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  *&v52 = 0xD000000000000026;
  *(&v52 + 1) = 0x80000001015A5A40;
  v41._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v41);

  v42 = v52;
  sub_10089C7D0();
  swift_allocError();
  *v43 = v37;
  *(v43 + 8) = v42;
  swift_willThrow();
  v44 = *(*(v16 + 16) + 32);
  *v9 = v44;
  v51(v9, v50, v24);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v49(v9, v24);
  if ((v44 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v40 = *(v16 + 24);
  if (v40)
  {
LABEL_12:
    sqlite3_finalize(v40);
    *(v16 + 24) = 0;
  }

LABEL_13:
}

double sub_100E166B4(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v23, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v24, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_100E58E18;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4C40;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v5, v21);
  (*(v26 + 8))(v7, v28);

  return result;
}

uint64_t sub_100E16B2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100E07F54(a2);
  if (v3)
  {
    if ((*(v3 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8) & 1) == 0)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v4 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v6 = UUID.uuidString.getter();
      v8 = v7;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v6;
      *(inited + 40) = v8;
      v9 = static os_log_type_t.default.getter();
      sub_100005404(v4, &_mh_execute_header, v9, "Actually setting BoardDidNotCrash for board %{public}@", 54, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      sub_100E16D2C(a2, 0, 1);
      sub_100DE02C4(a2, &unk_1018A4C78, sub_100E58E54, &unk_1018A4C90);
    }
  }

  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

void sub_100E16D2C(uint64_t a1, sqlite3_int64 a2, int a3)
{
  v56 = a3;
  v54 = a2;
  v55 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v58 = enum case for DispatchPredicate.onQueue(_:);
  v59 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v14 = v5;
  v57 = v6 + 8;
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = v6 + 104;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v17 = sub_10001CC04(v16, 0xD000000000000053, 0x80000001015A3060);

  if (v4)
  {
    return;
  }

  if (v56)
  {
    v18 = *(*(v17 + 16) + 32);
    *v9 = v18;
    v19 = v58;
    v20 = v14;
    v59(v9, v58, v14);
    v21 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v13(v9, v14);
    if (v18)
    {
      swift_beginAccess();
      sqlite3_bind_null(*(v17 + 24), 1);
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_100034254(v54, 1);
  v20 = v14;
  v19 = v58;
LABEL_7:
  v22 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v23 = sub_10084DAE4(v55, *(v55 + *(v22 + 20)), *(v55 + *(v22 + 20) + 8));
  v24 = v15;
  v25 = v20;
  v27 = v26;
  v28 = v19;
  v29 = v23;
  v30 = *(*(v17 + 16) + 32);
  *v9 = v30;
  v53 = v24;
  v59(v9, v28, v25);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v52 = v13;
  v13(v9, v25);
  if ((v30 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_100DCCAB4(v29, v27, v17, 2);
  sub_10002640C(v29, v27);
  v32 = *(*(v17 + 16) + 32);
  *v9 = v32;
  v33 = v59;
  v59(v9, v58, v25);
  v34 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v35 = v52;
  v52(v9, v25);
  if ((v32 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v36 = *(v17 + 16);

  v37 = sub_10001CEC4(v36, v17);

  if (v37 == 101)
  {
    v38 = *(*(v17 + 16) + 32);
    *v9 = v38;
    v33(v9, v58, v25);
    v39 = v38;
    LOBYTE(v38) = _dispatchPreconditionTest(_:)();
    v35(v9, v25);
    if (v38)
    {
      swift_beginAccess();
      v40 = *(v17 + 24);
      if (v40)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  v51 = v37;
  _StringGuts.grow(_:)(52);
  v41._object = 0x80000001015A30C0;
  v41._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v41);
  v60 = v54;
  v61 = v56 & 1;
  sub_1005B981C(&qword_1019FB5C8, &unk_1014B6510);
  v42._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0x616F6220726F6620;
  v43._object = 0xEB00000000206472;
  String.append(_:)(v43);
  v44._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v44);

  v45 = v62;
  v46 = v63;
  sub_10089C7D0();
  swift_allocError();
  *v47 = v51;
  *(v47 + 8) = v45;
  *(v47 + 16) = v46;
  swift_willThrow();
  v48 = *(*(v17 + 16) + 32);
  *v9 = v48;
  v33(v9, v58, v25);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v35(v9, v25);
  if ((v48 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v40 = *(v17 + 24);
  if (v40)
  {
LABEL_15:
    sqlite3_finalize(v40);
    *(v17 + 24) = 0;
  }

LABEL_16:
}

void sub_100E17384(char a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = sub_100E07F54(a2);
  if (v3)
  {
    return;
  }

  v34 = 0;
  if (!v14 || (v15 = sub_100EA2998(v14)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v28 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v30 = UUID.uuidString.getter();
      v32 = v31;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      v33 = static os_log_type_t.default.getter();
      sub_100005404(v28, &_mh_execute_header, v33, "Attempted to set the canvas dot grid enabled state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 148, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_14;
  }

  v16 = v15;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10146BDE0;
  v19 = sub_1000053B0();
  v20 = v19;
  v35 = a1 & 1;
  v21 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v21 = 0x65736C6166;
  }

  v22 = 0xE500000000000000;
  if (a1)
  {
    v22 = 0xE400000000000000;
  }

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v19;
  *(v18 + 32) = v21;
  *(v18 + 40) = v22;
  v23 = UUID.uuidString.getter();
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v20;
  *(v18 + 72) = v23;
  *(v18 + 80) = v24;
  v25 = static os_log_type_t.default.getter();
  sub_100005404(v17, &_mh_execute_header, v25, "Set canvas dot grid visible to [%{public}@] for board identifier: %{public}@", 76, 2, v18);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_beginAccess();
  v36 = v35;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v26 = v34;
  sub_100E06DBC(v16, 0, 0, 0xF000000000000000, 0, v27);

  if (!v26)
  {
  }
}

uint64_t sub_100E177B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  sub_10002FA9C(a4, v5);
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

void sub_100E17A64(char a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = sub_100E07F54(a2);
  if (v3)
  {
    return;
  }

  v35 = 0;
  if (!v14 || (v15 = sub_100EA2998(v14)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_16:
      v27 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v29 = UUID.uuidString.getter();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.default.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Attempted to set the connector mode enabled state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 147, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_16;
  }

  v16 = v15;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v34 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v17 = swift_initStackObject();
  v18 = v17;
  *(v17 + 16) = xmmword_10146BDE0;
  v36 = a1 & 1;
  if (a1)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a1)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  *(v17 + 56) = &type metadata for String;
  v21 = sub_1000053B0();
  v18[8] = v21;
  v18[4] = v19;
  v18[5] = v20;
  v22 = UUID.uuidString.getter();
  v18[12] = &type metadata for String;
  v18[13] = v21;
  v18[9] = v22;
  v18[10] = v23;
  v24 = static os_log_type_t.default.getter();
  sub_100005404(v34, &_mh_execute_header, v24, "Set connector mode enabled to [%{public}@] for board identifier: %{public}@", 75, 2, v18);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_beginAccess();
  v37 = v36;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v25 = v35;
  sub_100E06DBC(v16, 0, 0, 0xF000000000000000, 0, v26);

  if (!v25)
  {
  }
}

void sub_100E17EA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v23 = a3;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v24 = a1;

  v16 = 0;
  while (v14)
  {
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_10000C83C(*(v24 + 48) + *(v21 + 72) * (v18 | (v17 << 6)), v10, type metadata accessor for CRLBoardIdentifierAndValue);
    v19 = v10[*(v22 + 20)];
    sub_10000C83C(v10, v7, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v10, type metadata accessor for CRLBoardIdentifierAndValue);
    v23(v19, v7);
    sub_100026028(v7, type metadata accessor for CRLBoardIdentifier);
    if (v3)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      goto LABEL_11;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100E180FC(char a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = sub_100E07F54(a2);
  if (v3)
  {
    return;
  }

  v35 = 0;
  if (!v14 || (v15 = sub_100EA2998(v14)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_16:
      v27 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v29 = UUID.uuidString.getter();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.default.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Attempted to set the scenes navigator open state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 146, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_16;
  }

  v16 = v15;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v34 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v17 = swift_initStackObject();
  v18 = v17;
  *(v17 + 16) = xmmword_10146BDE0;
  v36 = a1 & 1;
  if (a1)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a1)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  *(v17 + 56) = &type metadata for String;
  v21 = sub_1000053B0();
  v18[8] = v21;
  v18[4] = v19;
  v18[5] = v20;
  v22 = UUID.uuidString.getter();
  v18[12] = &type metadata for String;
  v18[13] = v21;
  v18[9] = v22;
  v18[10] = v23;
  v24 = static os_log_type_t.default.getter();
  sub_100005404(v34, &_mh_execute_header, v24, "Set scenes navigator open to [%{public}@] for board identifier: %{public}@", 74, 2, v18);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_beginAccess();
  v37 = v36;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v25 = v35;
  sub_100E06DBC(v16, 0, 0, 0xF000000000000000, 0, v26);

  if (!v25)
  {
  }
}

double sub_100E18518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLBoardIdentifier);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLBoardIdentifier);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA21D0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5028;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);

  return result;
}

void sub_100E188D0(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  v4 = sub_100E18A88(a2);
  v5 = v4;
  a3(v4, 0);
}

void (*sub_100E18A88(uint64_t a1))(void *, uint64_t)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v59 = enum case for DispatchPredicate.onQueue(_:);
  v60 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v58 = v12;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD00000000000003CLL, 0x80000001015A3E30);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v18 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = v21;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v23, "Failed to fetch a ckShareData from board record with error %@", 61, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v12;
    }

LABEL_25:
    swift_once();
    goto LABEL_5;
  }

  v15 = v14;

  v16 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v17 = sub_10084DAE4(a1, *(a1 + *(v16 + 20)), *(a1 + *(v16 + 20) + 8));
  v57 = v25;
  v26 = v17;
  v27 = *(*(v15 + 16) + 32);
  *v8 = v27;
  v60(v8, v59, v4);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v29 = v58;
  v58(v8, v4);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v30 = v26;
  v31 = v26;
  v32 = v57;
  sub_100DCCAB4(v31, v57, v15, 1);
  sub_10002640C(v30, v32);
  v33 = *(*(v15 + 16) + 32);
  *v8 = v33;
  v60(v8, v59, v4);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v33 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for SQLiteRowIterator();
  v35 = swift_initStackObject();
  v35[4] = 0;
  v35[5] = 1;
  v35[2] = v15;
  v35[3] = 0;

  v36 = sub_10001E1D0();
  if (v36)
  {
    v37 = v36;
    v38 = *(*(v36 + 16) + 32);
    *v8 = v38;
    v60(v8, v59, v4);
    v39 = v38;
    LOBYTE(v38) = _dispatchPreconditionTest(_:)();
    v58(v8, v4);
    if (v38)
    {
      v40 = sub_10002C280(0, v37);
      if (v40)
      {
        v57 = v37;
        v42 = sub_100024DD4(v40, v41);
        v44 = v43;
        v56 = sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
        sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
        v54 = v42;
        v55 = v44;
        v45 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v12 = v45;
        if (v45)
        {
          v49 = v45;
          sub_100CE94A4();
        }

        sub_10002640C(v54, v55);
      }

      else
      {
        v12 = 0;
      }

      swift_setDeallocating();
      sub_10001E364(v35[3], v35[4], v35[5]);
      v50 = *(*(v15 + 16) + 32);
      *v8 = v50;
      v60(v8, v59, v4);
      v51 = v50;
      LOBYTE(v50) = _dispatchPreconditionTest(_:)();
      v58(v8, v4);
      if (v50)
      {
        v48 = (v15 + 24);
        swift_beginAccess();
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  swift_setDeallocating();
  sub_10001E364(v35[3], v35[4], v35[5]);
  v46 = *(*(v15 + 16) + 32);
  *v8 = v46;
  v60(v8, v59, v4);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

  v48 = (v15 + 24);
  swift_beginAccess();
  v12 = 0;
LABEL_21:
  v52 = *(v15 + 24);
  if (v52)
  {
    sqlite3_finalize(v52);
    *v48 = 0;
  }

  return v12;
}

double sub_100E19284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_101A21CE0, &qword_1014B65C8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E18518(a3, sub_100EA21A8, v11);

  return result;
}

uint64_t sub_100E193D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v9[2] = a1;
  v9[3] = a2;
  v10 = a3;
  v11 = a4;
  sub_10002FA9C(sub_100EA20DC, v9);
  sub_100DE02C4(a2, &unk_1018A4F98, sub_100EA2104, &unk_1018A4FB0);
  return a5(a4, 0);
}

uint64_t sub_100E19608(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_100E18A88(a2);
  if (!v4)
  {
    v9 = v8;
    v10 = 0;
    if ((a3 & 1) != 0 && a4)
    {
      if (v8)
      {
        sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
        v11 = v9;
        v12 = a4;
        v13 = static NSObject.== infix(_:_:)();

        v10 = v13 ^ 1;
      }

      else
      {
        v10 = 1;
      }
    }

    sub_100E196EC(a2, a4, v10 & 1);
  }

  return 1;
}

uint64_t sub_100E196EC(uint64_t a1, void *a2, char a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (a2)
    {
      v17 = a2;
      sub_100CE94A4();
      v18 = sub_100EEA848();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xF000000000000000;
    }

    sub_100DFE34C(a1, v18, v20, a3 & 1);
    if (!v4)
    {
      v21 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
      swift_beginAccess();
      v22 = *(v5 + v21);
      if (*(v22 + 16))
      {
        v23 = sub_1000486F0(a1);
        if (v24)
        {
          *(*(*(v22 + 56) + 8 * v23) + 17) = 0;
        }
      }

      swift_endAccess();
    }

    return sub_100025870(v18, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100E198CC(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v37 = a5;
  v38 = a4;
  v34 = a2;
  v35 = a3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_101A21CE0, &qword_1014B65C8);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v33 - v17;
  (*(v15 + 16))(&v33 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  v21 = v34;
  v36 = *&v34[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v35, v13, type metadata accessor for CRLBoardIdentifier);
  v22 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v23 = v22 + v12;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  sub_100025668(v13, v24 + v22, type metadata accessor for CRLBoardIdentifier);
  *(v24 + v23) = v37;
  v25 = v38;
  *(v24 + (v23 & 0xFFFFFFFFFFFFFFF8) + 8) = v38;
  v26 = (v24 + (((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_100EA6328;
  v26[1] = v20;
  aBlock[4] = sub_100EA2038;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4F60;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  v29 = v21;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v31 = v39;
  v30 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v43 + 8))(v31, v30);
  (*(v41 + 8))(v9, v42);

  return result;
}

uint64_t sub_100E19DAC(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A21CE0, &qword_1014B65C8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    sub_1005B981C(&qword_101A21CE0, &qword_1014B65C8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E19E2C@<X0>(sqlite3_int64 a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100E19E60(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100E19E60(sqlite3_int64 a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v52 = enum case for DispatchPredicate.onQueue(_:);
  v53 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v51 = *(v5 + 8);
  v51(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_6:
    v18 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    *(inited + 56) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 64) = v23;
    *(inited + 32) = v20;
    *(inited + 40) = v22;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v23;
    *(inited + 72) = v24;
    *(inited + 80) = v25;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "Failed to fetch lastUpgradedVersion for board [%{public}@] from the database with error %@", 90, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_willThrow();
    return a1;
  }

  v54 = a1;
  a1 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000045, 0x80000001015AC2D0);
  if (v2)
  {
    v55 = v2;

    if (qword_1019F2258 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v14 = v13;

  v15 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4(v54, *(v54 + *(v15 + 20)), *(v54 + *(v15 + 20) + 8));
  v55 = 0;
  v50 = v17;
  v28 = v16;
  v29 = *(*(v14 + 16) + 32);
  *v8 = v29;
  v53(v8, v52, v4);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v31 = v51;
  v51(v8, v4);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v32 = v28;
  v33 = v28;
  v34 = v50;
  v35 = v55;
  sub_100DCCAB4(v33, v50, v14, 1);
  v55 = v35;
  sub_10002640C(v32, v34);
  v36 = *(*(v14 + 16) + 32);
  *v8 = v36;
  v53(v8, v52, v4);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v31(v8, v4);
  if ((v36 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SQLiteRowIterator();
  v38 = swift_initStackObject();
  v38[4] = 0;
  v38[5] = 1;
  v38[2] = v14;
  v38[3] = 0;

  v39 = sub_10001E1D0();
  if (v39)
  {
    a1 = sub_100028894(0, v39);
    LODWORD(v50) = v40;
  }

  else
  {

    a1 = 0;
    LODWORD(v50) = 1;
  }

  v41 = *(*(v14 + 16) + 32);
  *v8 = v41;
  v53(v8, v52, v4);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v51(v8, v4);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v43 = *(v14 + 24);
  if (v43)
  {
    sqlite3_finalize(v43);
    *(v14 + 24) = 0;
  }

  if (v50)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_18:
      v44 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_10146C6B0;
      v46 = UUID.uuidString.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000053B0();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v49, "Failed to fetch lastUpgradedVersion for board [%{public}@] from the database, returning the current version", 107, 2, v45);
      swift_setDeallocating();
      sub_100005070((v45 + 32));
      return sub_10001FF1C();
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  return a1;
}

double sub_100E1A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v27 = *(v11 - 8);
  v28 = v11;
  __chkstk_darwin(v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a2, v17, type metadata accessor for CRLBoardIdentifier);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v26[0];
  *(v20 + 16) = v4;
  *(v20 + 24) = v21;
  sub_100025668(v17, v20 + v18, type metadata accessor for CRLBoardIdentifier);
  v22 = (v20 + v19);
  *v22 = a3;
  v22[1] = a4;
  aBlock[4] = sub_100EA5EF4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6E80;
  v23 = _Block_copy(aBlock);
  v24 = v4;
  sub_10002E7A8(a3, a4);
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v10, v8);
  (*(v27 + 8))(v13, v28);

  return result;
}

uint64_t sub_100E1A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  result = sub_10002FA9C(sub_100EA5F88, v6);
  if (a4)
  {
    return a4(0);
  }

  return result;
}

void sub_100E1AAA8(sqlite3_int64 a1, char *a2)
{
  v43 = a1;
  v44 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  (v12)(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = v4;
  v45 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD000000000000046, 0x80000001015AC250);

  if (v3)
  {
    return;
  }

  sub_100034254(v43, 1);
  v15 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4(v44, *&v44[*(v15 + 20)], *&v44[*(v15 + 20) + 8]);
  v41 = v17;
  v18 = v16;
  v19 = *(*(v14 + 16) + 32);
  *v8 = v19;
  v20 = v42;
  v45(v8, v46, v42);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (v12)(v8, v20);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = v41;
  sub_100DCCAB4(v18, v41, v14, 2);
  sub_10002640C(v18, v22);
  v23 = *(*(v14 + 16) + 32);
  *v8 = v23;
  v24 = v45;
  v45(v8, v46, v20);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (v12)(v8, v20);
  if ((v23 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v26 = *(v14 + 16);

  v27 = sub_10001CEC4(v26, v14);

  if (v27 == 101)
  {
    v28 = *(*(v14 + 16) + 32);
    *v8 = v28;
    v24(v8, v46, v20);
    v29 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    (v12)(v8, v20);
    if (v28)
    {
      swift_beginAccess();
      v30 = *(v14 + 24);
      if (v30)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  LODWORD(v41) = v27;
  _StringGuts.grow(_:)(49);

  v48 = 0xD000000000000022;
  v49 = 0x80000001015AC2A0;
  v47 = v43;
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0x616F6220726F6620;
  v32._object = 0xEB00000000206472;
  String.append(_:)(v32);
  v33._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v33);

  v44 = v12;
  v34 = v24;
  v35 = v48;
  v36 = v49;
  sub_10089C7D0();
  swift_allocError();
  *v37 = v41;
  *(v37 + 8) = v35;
  *(v37 + 16) = v36;
  swift_willThrow();
  v38 = *(*(v14 + 16) + 32);
  *v8 = v38;
  v34(v8, v46, v20);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  (v44)(v8, v20);
  if ((v38 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v30 = *(v14 + 24);
  if (v30)
  {
LABEL_11:
    sqlite3_finalize(v30);
    *(v14 + 24) = 0;
  }

LABEL_12:
}

double sub_100E1B004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLBoardDataStoreChangeSet);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLBoardDataStoreChangeSet);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA25A4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A52F8;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);

  return result;
}

uint64_t sub_100E1B3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a1;
  v5[3] = a2;
  sub_10002FA9C(sub_100034D68, v5);
  sub_100E1D84C();
  return a3(0);
}

uint64_t sub_100E1B5C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v211 = *(v4 - 8);
  v212 = v4;
  __chkstk_darwin(v4);
  v209 = &v203[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v210 = type metadata accessor for DispatchQoS();
  v208 = *(v210 - 8);
  __chkstk_darwin(v210);
  v207 = &v203[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v215 = sub_1005B981C(&qword_101A21E08, &unk_1014B6790);
  __chkstk_darwin(v215);
  v216 = &v203[-v7];
  v8 = type metadata accessor for UUID();
  v232 = *(v8 - 8);
  __chkstk_darwin(v8);
  v224 = &v203[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v226 = &v203[-v11];
  __chkstk_darwin(v12);
  v243 = &v203[-v13];
  __chkstk_darwin(v14);
  v245 = &v203[-v15];
  __chkstk_darwin(v16);
  v239 = &v203[-v17];
  __chkstk_darwin(v18);
  v20 = &v203[-v19];
  v21 = type metadata accessor for CRLBoardIdentifier(0);
  v213 = *(v21 - 8);
  __chkstk_darwin(v21 - 8);
  v23 = &v203[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  i = &v203[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v229 = v2;
  v29 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *i = v29;
  (*(v25 + 104))(i, enum case for DispatchPredicate.onQueue(_:), v24, v26);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(i, v24);
  if ((v31 & 1) == 0)
  {
    goto LABEL_230;
  }

  v34 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  sub_10000C83C(a1 + v34[5], v23, type metadata accessor for CRLBoardIdentifier);
  v35 = *(v232 + 16);
  v36 = a1 + v34[6];
  v225 = v20;
  v240 = v35;
  v241 = (v232 + 16);
  v35(v20, v36, v8);
  v223 = v34;
  i = *(a1 + v34[7]);
  v32 = v23;
  v221 = a1;
  if (i)
  {

    v38 = v234;
    sub_100DFE838(v37, 0, 0, 0xF000000000000000, 1, 0);
    v234 = v38;
    if (v38)
    {

      (*(v232 + 8))(v225, v8);
      return sub_100026028(v32, type metadata accessor for CRLBoardIdentifier);
    }

    v41 = v39;

    LODWORD(i) = (v41 >> 8) & 1;

    a1 = v221;
  }

  v251 = *(a1 + v223[8]);
  if (*(a1 + v223[13]))
  {

    sub_10079BE48(v42);
  }

  else
  {
  }

  v246 = v8;
  v43 = *(v221 + v223[14]);
  v31 = v43;
  if (v43 >> 62)
  {
    goto LABEL_231;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v45 = _swiftEmptyArrayStorage;
  v228 = v32;
  v204 = i;
  if (v44)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    v46 = aBlock;
    sub_100776524(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      goto LABEL_235;
    }

    v47 = 0;
    v45 = aBlock[0];
    v48 = v31;
    *&v244 = v31 & 0xC000000000000001;
    v242 = v232 + 32;
    v49 = v239;
    v50 = v31;
    do
    {
      if (v244)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v51 = *(v48 + 8 * v47 + 32);
      }

      (*(*v51 + 264))();

      aBlock[0] = v45;
      v53 = v45[2];
      v52 = v45[3];
      if (v53 >= v52 >> 1)
      {
        sub_100776524((v52 > 1), v53 + 1, 1);
        v45 = aBlock[0];
      }

      ++v47;
      v45[2] = v53 + 1;
      (*(v232 + 32))(v45 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v53, v49, v246);
      v48 = v50;
    }

    while (v44 != v47);
    v31 = v50;
    v32 = v228;
  }

  v242 = sub_100E93A84(v45);

  sub_10079BE48(v54);
  v250 = _swiftEmptySetSingleton;
  v46 = v251;
  i = sub_100DCEEA8(v251, sub_100EA61F8, 0, sub_100EA6310, 0, sub_100EA6314, 0);

  v55 = i;
  v218 = i;
  if (i >> 62)
  {
    v150 = _CocoaArrayWrapper.endIndex.getter();
    v55 = v218;
    v56 = v150;
  }

  else
  {
    v56 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v56)
  {
    v57 = 0;
    v231 = 0;
    v217 = v55 & 0xC000000000000001;
    v205 = v55 + 32;
    v206 = v55 & 0xFFFFFFFFFFFFFF8;
    v239 = (v242 + 56);
    *&v244 = v232 + 8;
    v219 = xmmword_10146C6B0;
    v214 = v56;
    while (1)
    {
      if (v217)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v57 >= *(v206 + 16))
        {
          goto LABEL_234;
        }
      }

      v59 = __OFADD__(v57, 1);
      v60 = v57 + 1;
      if (v59)
      {
        goto LABEL_229;
      }

      v220 = v60;
      v222 = v58;
      v61 = *(v58 + 16);
      v248 = _swiftEmptyArrayStorage;
      swift_retain_n();
      v46 = &v248;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v248 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v248 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v228;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v62 = v248;
      if (!(v248 >> 62))
      {
        if (*((v248 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        goto LABEL_26;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        break;
      }

LABEL_26:

LABEL_27:

      v57 = v220;
      v55 = v218;
      if (v220 == v214)
      {
        goto LABEL_123;
      }
    }

    v227 = v61;
    while (1)
    {
      i = v62 & 0x8000000000000000;
      v32 = v62 >> 62;
      if (v62 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
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
          v44 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_12;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_206;
        }
      }

      else if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_205;
      }

      if ((v62 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v63 = v62 & 0xFFFFFFFFFFFFFF8;
        if (!v32)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_207;
        }

        v31 = *(v62 + 32);

        v63 = v62 & 0xFFFFFFFFFFFFFF8;
        if (!v32)
        {
LABEL_43:
          v64 = *(v63 + 16);
          if (!v64)
          {
            goto LABEL_213;
          }

          goto LABEL_52;
        }
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_213;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_214;
      }

      v64 = _CocoaArrayWrapper.endIndex.getter();
LABEL_52:
      v65 = v64 - 1;
      if (__OFSUB__(v64, 1))
      {
        goto LABEL_208;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v32)
        {
          v66 = (v62 & 0xFFFFFFFFFFFFFF8);
          v32 = &qword_1019F37C0;
          if (v65 <= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

LABEL_59:
        _CocoaArrayWrapper.endIndex.getter();
        v32 = &qword_1019F37C0;
        goto LABEL_60;
      }

      if (v32)
      {
        goto LABEL_59;
      }

      v32 = &qword_1019F37C0;
LABEL_60:
      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v66 = (v62 & 0xFFFFFFFFFFFFFF8);
      i = v62 & 0x8000000000000000;
LABEL_61:

      v233 = v62 >> 62;
      v230 = i;
      if (v62 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (__OFSUB__(result, 1))
        {
          __break(1u);
LABEL_275:
          __break(1u);
          return result;
        }

        memmove(v66 + 4, v66 + 5, 8 * (result - 1));
        v109 = _CocoaArrayWrapper.endIndex.getter();
        LODWORD(i) = v109;
        v67 = v109 - 1;
        if (__OFSUB__(v109, 1))
        {
          goto LABEL_209;
        }
      }

      else
      {
        i = v66[2];
        memmove(v66 + 4, v66 + 5, 8 * i - 8);
        v67 = i - 1;
        if (__OFSUB__(i, 1))
        {
          goto LABEL_209;
        }
      }

      v66[2] = v67;
      v68 = *v31;
      v69 = *(v31 + *(*v31 + 112));
      v235 = v31;
      if (v69)
      {
        v70 = v245;
        (*(*v69 + 264))();
        v71 = *(v242 + 16);
        v237 = v66;
        if (v71)
        {
          v236 = v62;
          v72 = v242;
          sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          *&v238 = v69;

          v73 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v74 = -1 << *(v72 + 32);
          v75 = v73 & ~v74;
          if ((*&v239[(v75 >> 3) & 0xFFFFFFFFFFFFFF8] >> v75))
          {
            v76 = ~v74;
            v77 = *(v232 + 72);
            while (1)
            {
              v78 = v243;
              v79 = v246;
              v240(v243, *(v242 + 48) + v77 * v75, v246);
              sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v80 = dispatch thunk of static Equatable.== infix(_:_:)();
              v81 = *v244;
              (*v244)(v78, v79);
              if (v80)
              {
                break;
              }

              v75 = (v75 + 1) & v76;
              v70 = v245;
              if (((*&v239[(v75 >> 3) & 0xFFFFFFFFFFFFFF8] >> v75) & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v103 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = v219;
            v105 = UUID.uuidString.getter();
            v107 = v106;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v105;
            *(inited + 40) = v107;
            v108 = static os_log_type_t.default.getter();
            sub_100005404(v103, &_mh_execute_header, v108, "Saving a peer server synced added item %{public}@", 49, 2, inited);
            swift_setDeallocating();
            sub_100005070((inited + 32));
            v88 = 1;
            v31 = v235;
            v62 = v236;
            v66 = v237;
            v82 = v238;
            goto LABEL_76;
          }

LABEL_69:
          if (v231)
          {
            v231 = 1;
            v62 = v236;
            v82 = v238;
LABEL_75:
            v85 = v226;
            v86 = v246;
            v240(v226, v70, v246);
            v87 = v243;
            sub_100E6AF38(v243, v85);
            v81 = *v244;
            (*v244)(v87, v86);
            v88 = 0;
            v31 = v235;
            v66 = v237;
LABEL_76:
            v89 = v234;
            sub_100DF00A0(v82, v228, v88, 0, 0xF000000000000000, 1, 2, 0, 0xF000000000000000, 0, 0);
            v234 = v89;
            if (v89)
            {

              v110 = v246;
              v81(v245, v246);

              v81(v225, v110);
              sub_100026028(v228, type metadata accessor for CRLBoardIdentifier);
            }

            v81(v245, v246);
            v68 = *v31;
            goto LABEL_78;
          }

          v62 = v236;
          v82 = v238;
        }

        else
        {

          v82 = v69;
          if (v231)
          {
            v231 = 1;
            goto LABEL_75;
          }
        }

        sub_100743DF0();
        v84 = *(v83 + 16);

        v231 |= v84 != 0;
        goto LABEL_75;
      }

LABEL_78:
      v90 = *(v68 + 120);
      swift_beginAccess();
      v32 = *(v31 + v90);
      i = v32 >> 62;
      if (v32 >> 62)
      {
        *&v238 = _CocoaArrayWrapper.endIndex.getter();
        v91 = v233;
        if (!v233)
        {
LABEL_80:
          v92 = v66[2];
          goto LABEL_81;
        }
      }

      else
      {
        *&v238 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v91 = v233;
        if (!v233)
        {
          goto LABEL_80;
        }
      }

      v92 = _CocoaArrayWrapper.endIndex.getter();
LABEL_81:
      v31 = v92 + v238;
      if (__OFADD__(v92, v238))
      {
        goto LABEL_210;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v91)
        {
          goto LABEL_89;
        }

LABEL_88:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_89;
      }

      if (v91)
      {
        goto LABEL_88;
      }

      if (v31 <= v66[3] >> 1)
      {
        v236 = v62;
        goto LABEL_90;
      }

LABEL_89:
      v236 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v66 = (v236 & 0xFFFFFFFFFFFFFF8);
LABEL_90:
      v93 = v66;
      v94 = v66[2];
      v237 = v93;
      v95 = v93[3];
      if (i)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
        if (v31)
        {
LABEL_92:
          if (((v95 >> 1) - v94) < v238)
          {
            goto LABEL_212;
          }

          v46 = v237;
          v96 = &v237[v94 + 4];
          if (i)
          {
            if (v31 < 1)
            {
              goto LABEL_223;
            }

            v97 = v32;
            v32 = &unk_1014B67B0;
            sub_10001A2F8(&qword_101A21E20, &qword_101A21E18, &unk_1014B67B0, &protocol conformance descriptor for [A]);
            for (i = 0; i != v31; ++i)
            {
              sub_1005B981C(&qword_101A21E18, &unk_1014B67B0);
              v98 = sub_100777A74(aBlock, i, v97);
              v100 = *v99;

              (v98)(aBlock, 0);
              *(v96 + 8 * i) = v100;
            }

            v46 = v237;
          }

          else
          {
            LODWORD(i) = v32 & 0xFFFFFFF8;
            sub_1005B981C(&qword_1019F6CD8, &qword_10146FA98);
            swift_arrayInitWithCopy();
          }

          v62 = v236;
          if (v238 > 0)
          {
            v101 = *(v46 + 16);
            v59 = __OFADD__(v101, v238);
            v102 = v101 + v238;
            if (v59)
            {
              goto LABEL_222;
            }

            *(v46 + 16) = v102;
          }

          goto LABEL_105;
        }
      }

      else
      {
        v31 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          goto LABEL_92;
        }
      }

      v46 = v237;
      v62 = v236;
      if (v238 > 0)
      {
        goto LABEL_211;
      }

LABEL_105:
      if (v62 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_118:

          v32 = v228;
          goto LABEL_27;
        }
      }

      else if (!*(v46 + 16))
      {
        goto LABEL_118;
      }
    }
  }

  v231 = 0;
LABEL_123:
  v46 = v55;

  v111 = sub_100DCEEA8(*(v221 + v223[9]), sub_100EA61F8, 0, sub_100EA6310, 0, sub_100EA6314, 0);
  v112 = v111;
  v236 = v111;
  if (v111 >> 62)
  {
    goto LABEL_236;
  }

  v113 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v114 = v232;
  if (!v113)
  {
LABEL_237:

    v46 = *(v221 + v223[10]);
    if (v46 >> 62)
    {
      goto LABEL_264;
    }

    v151 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (j = v232; v151; j = v232)
    {
      v153 = 0;
      *&v244 = *(v221 + v223[11]);
      v245 = (v46 & 0xC000000000000001);
      v239 = (v46 & 0xFFFFFFFFFFFFFF8);
      v154 = (j + 8);
      v238 = xmmword_10146BDE0;
      v241 = (j + 8);
      v242 = v151;
      v243 = v46;
      while (1)
      {
        if (v245)
        {
          v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v153 >= *(v239 + 2))
          {
            goto LABEL_262;
          }

          v155 = *(v46 + 8 * v153 + 32);
        }

        v156 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          break;
        }

        v157 = v224;
        (*(*v155 + 264))();
        if (sub_1012CD63C(v157, v244))
        {
          v158 = v216;
          v159 = v234;
          v160 = sub_100DEF7D4(v216, v157, v32);
          v234 = v159;
          if (v159)
          {

            goto LABEL_259;
          }

          v162 = *(v215 + 64);
          *&v158[*(v215 + 48)] = v160;
          v158[v162] = v161 & 1;
          if ((v161 & 1) == 0)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v240 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v163 = swift_initStackObject();
            *(v163 + 16) = v238;
            v164 = UUID.uuidString.getter();
            v166 = v165;
            *(v163 + 56) = &type metadata for String;
            v167 = sub_1000053B0();
            *(v163 + 64) = v167;
            *(v163 + 32) = v164;
            *(v163 + 40) = v166;
            v168 = v228;
            v169 = UUID.uuidString.getter();
            *(v163 + 96) = &type metadata for String;
            *(v163 + 104) = v167;
            *(v163 + 72) = v169;
            *(v163 + 80) = v170;
            v171 = static os_log_type_t.default.getter();
            sub_100005404(v240, &_mh_execute_header, v171, "Create record for item %{public}@ we want to force writing a delete for. For Board: %{public}@", 94, 2, v163);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            v32 = v168;
            swift_arrayDestroy();
            v172 = v234;
            sub_100DF00A0(v155, v168, 0, 0, 0xF000000000000000, 1, 2, 0, 0xF000000000000000, 0, 0);
            v234 = v172;
            if (v172)
            {

              sub_10000CAAC(v216, &qword_101A21E08, &unk_1014B6790);
LABEL_259:
              v179 = *v241;
              v177 = v32;
              v180 = v246;
              (*v241)(v224, v246);

              v179(v225, v180);
              return sub_100026028(v177, type metadata accessor for CRLBoardIdentifier);
            }

            v158 = v216;
          }

          sub_10000CAAC(v158, &qword_101A21E08, &unk_1014B6790);
          v154 = v241;
        }

        v173 = v224;
        v174 = v234;
        v175 = sub_100DFC224(v224, v32);
        v234 = v174;
        if (v174)
        {

          v176 = *v154;
          v177 = v32;
          v178 = v246;
          (*v154)(v173, v246);

          v176(v225, v178);
          return sub_100026028(v177, type metadata accessor for CRLBoardIdentifier);
        }

        (*v154)(v173, v246, v175);

        ++v153;
        v46 = v243;
        if (v156 == v242)
        {
          goto LABEL_265;
        }
      }

      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      v151 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_265:
    v181 = *(v221 + v223[12]);
    if (*(v181 + 16))
    {
      v182 = v234;
      sub_100E1DF3C(v181, v32, 0);
      v234 = v182;
      if (v182)
      {

        (*(v232 + 8))(v225, v246);
        return sub_100026028(v32, type metadata accessor for CRLBoardIdentifier);
      }

      v183 = v250;
    }

    else
    {
      v183 = v250;
    }

    sub_1005B981C(&unk_101A19BD0, &qword_10146FA00);
    v184 = (*(v213 + 80) + 32) & ~*(v213 + 80);
    v185 = swift_allocObject();
    v244 = xmmword_10146C6B0;
    *(v185 + 16) = xmmword_10146C6B0;
    v186 = v228;
    sub_10000C83C(v228, v185 + v184, type metadata accessor for CRLBoardIdentifier);
    v245 = sub_1005BF2F8(v185);
    swift_setDeallocating();
    sub_100026028(v185 + v184, type metadata accessor for CRLBoardIdentifier);
    swift_deallocClassInstance();
    sub_1005B981C(&qword_101A21E10, &unk_1014B67A0);
    v187 = (sub_1005B981C(&qword_101A14610, &qword_10149EA38) - 8);
    v188 = (*(*v187 + 80) + 32) & ~*(*v187 + 80);
    v189 = swift_allocObject();
    *(v189 + 16) = v244;
    v190 = v189 + v188;
    v191 = v187[14];
    sub_10000C83C(v186, v190, type metadata accessor for CRLBoardIdentifier);
    *(v190 + v191) = v183;

    v192 = sub_100BD9514(v189);
    swift_setDeallocating();
    sub_10000CAAC(v190, &qword_101A14610, &qword_10149EA38);
    v193 = v245;
    swift_deallocClassInstance();
    if (*(v193 + 2))
    {
      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      *&v244 = v183;
      v243 = static OS_dispatch_queue.main.getter();
      v194 = swift_allocObject();
      v195 = v229;
      *(v194 + 16) = v229;
      *(v194 + 24) = v193;
      *(v194 + 32) = v204;
      *(v194 + 33) = v231 & 1;
      *(v194 + 40) = v192;
      aBlock[4] = sub_10007A268;
      aBlock[5] = v194;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018A5348;
      v196 = _Block_copy(aBlock);
      v197 = v195;

      v198 = v207;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
      v199 = v209;
      v200 = v212;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v201 = v243;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v196);

      (*(v211 + 8))(v199, v200);
      (*(v208 + 8))(v198, v210);
    }

    else
    {
    }

    v202 = v225;

    (*(v232 + 8))(v202, v246);
    return sub_100026028(v228, type metadata accessor for CRLBoardIdentifier);
  }

LABEL_125:
  v115 = 0;
  v235 = v112 & 0xC000000000000001;
  v230 = v112 & 0xFFFFFFFFFFFFFF8;
  v227 = v112 + 32;
  v242 = v114 + 8;
  v233 = v113;
  while (1)
  {
    if (v235)
    {
      v46 = v115;
      v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v115 >= *(v230 + 16))
      {
        goto LABEL_263;
      }
    }

    v59 = __OFADD__(v115, 1);
    v117 = (v115 + 1);
    if (v59)
    {
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      v113 = _CocoaArrayWrapper.endIndex.getter();
      v112 = v236;
      v114 = v232;
      if (!v113)
      {
        goto LABEL_237;
      }

      goto LABEL_125;
    }

    v237 = v117;
    *&v238 = v116;
    v118 = *(v116 + 16);
    v249 = _swiftEmptyArrayStorage;
    swift_retain_n();
    v46 = &v249;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v119 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v120 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v239 = v118;
    if (v119 >= v120 >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v121 = v249;
    if (!(v249 >> 62))
    {
      if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_136;
      }

      goto LABEL_126;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      break;
    }

LABEL_126:

    v115 = v237;
    v32 = v228;
    if (v237 == v233)
    {
      goto LABEL_237;
    }
  }

  while (1)
  {
LABEL_136:
    v32 = v121 & 0x8000000000000000;
    i = v121 >> 62;
    if (v121 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_215;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_216;
      }
    }

    else if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_215;
    }

    if ((v121 & 0xC000000000000001) != 0)
    {
      v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v123 = v121 & 0xFFFFFFFFFFFFFF8;
      if (!i)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_217;
      }

      v122 = *(v121 + 32);

      v123 = v121 & 0xFFFFFFFFFFFFFF8;
      if (!i)
      {
LABEL_141:
        v124 = *(v123 + 16);
        if (!v124)
        {
          goto LABEL_225;
        }

        goto LABEL_150;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_225;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_226;
    }

    v124 = _CocoaArrayWrapper.endIndex.getter();
LABEL_150:
    v125 = v124 - 1;
    if (__OFSUB__(v124, 1))
    {
      goto LABEL_218;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!i)
      {
        v31 = v121 & 0xFFFFFFFFFFFFFF8;
        if (v125 <= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_158;
        }

        goto LABEL_157;
      }

LABEL_156:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_157;
    }

    if (i)
    {
      goto LABEL_156;
    }

LABEL_157:
    v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v31 = v121 & 0xFFFFFFFFFFFFFF8;
    v32 = v121 & 0x8000000000000000;
LABEL_158:

    v126 = v121 >> 62;
    if (v121 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_275;
      }

      memmove((v31 + 32), (v31 + 40), 8 * (result - 1));
      v148 = _CocoaArrayWrapper.endIndex.getter();
      LODWORD(i) = v148;
      v127 = v148 - 1;
      if (__OFSUB__(v148, 1))
      {
        goto LABEL_219;
      }
    }

    else
    {
      i = *(v31 + 16);
      memmove((v31 + 32), (v31 + 40), 8 * i - 8);
      v127 = i - 1;
      if (__OFSUB__(i, 1))
      {
        goto LABEL_219;
      }
    }

    *&v244 = v32;
    v245 = v121;
    v32 = v31;
    *(v31 + 16) = v127;
    v128 = *v122;
    v129 = *(v122 + *(*v122 + 112));
    if (!v129)
    {
      goto LABEL_163;
    }

    v130 = v243;
    (*(*v129 + 264))();

    v131 = static UUID.== infix(_:_:)();
    v132 = *v242;
    (*v242)(v130, v246);
    v133 = v234;
    sub_100DF00A0(v129, v228, 0, 0, 0xF000000000000000, v131 & 1, 2, 0, 0xF000000000000000, 0, 0);
    v234 = v133;
    if (v133)
    {
      break;
    }

    v128 = *v122;
LABEL_163:
    v134 = *(v128 + 120);
    swift_beginAccess();
    v135 = *(v122 + v134);
    v46 = v135 >> 62;
    v121 = v245;
    v136 = v135;
    if (v135 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (!v126)
      {
LABEL_165:
        v137 = *(v32 + 16);
        i = v137 + v31;
        if (__OFADD__(v137, v31))
        {
          goto LABEL_220;
        }

        goto LABEL_166;
      }
    }

    else
    {
      v31 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v126)
      {
        goto LABEL_165;
      }
    }

    v149 = _CocoaArrayWrapper.endIndex.getter();
    i = v149 + v31;
    if (__OFADD__(v149, v31))
    {
      goto LABEL_220;
    }

LABEL_166:

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v126)
      {
        if (i <= *(v32 + 24) >> 1)
        {
          goto LABEL_173;
        }

        goto LABEL_172;
      }

LABEL_171:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_172;
    }

    if (v126)
    {
      goto LABEL_171;
    }

LABEL_172:
    v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v32 = v121 & 0xFFFFFFFFFFFFFF8;
LABEL_173:
    *&v244 = v122;
    i = *(v32 + 16);
    v138 = *(v32 + 24);
    v139 = v136;
    if (v46)
    {
      v142 = _CocoaArrayWrapper.endIndex.getter();
      v139 = v136;
      v140 = v142;
      if (!v142)
      {
LABEL_180:

        if (v31 > 0)
        {
          goto LABEL_221;
        }

        goto LABEL_188;
      }
    }

    else
    {
      v140 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v140)
      {
        goto LABEL_180;
      }
    }

    if (((v138 >> 1) - i) < v31)
    {
      goto LABEL_224;
    }

    v141 = v32 + 8 * i + 32;
    if (v46)
    {
      if (v140 < 1)
      {
        goto LABEL_228;
      }

      v240 = v31;
      v241 = v32;
      v245 = v121;
      v143 = v139;
      sub_10001A2F8(&qword_101A21E20, &qword_101A21E18, &unk_1014B67B0, &protocol conformance descriptor for [A]);
      for (i = 0; i != v140; ++i)
      {
        sub_1005B981C(&qword_101A21E18, &unk_1014B67B0);
        v144 = sub_100777A74(aBlock, i, v143);
        v46 = *v145;

        (v144)(aBlock, 0);
        *(v141 + 8 * i) = v46;
      }

      v121 = v245;
      v31 = v240;
      v32 = v241;
      if (v240 > 0)
      {
LABEL_186:
        v146 = *(v32 + 16);
        v59 = __OFADD__(v146, v31);
        v147 = v146 + v31;
        if (v59)
        {
          goto LABEL_227;
        }

        *(v32 + 16) = v147;
      }
    }

    else
    {
      v46 = v139 & 0xFFFFFFFFFFFFFF8;
      LODWORD(i) = v139;
      sub_1005B981C(&qword_1019F6CD8, &qword_10146FA98);
      swift_arrayInitWithCopy();

      if (v31 > 0)
      {
        goto LABEL_186;
      }
    }

LABEL_188:
    if (v121 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_126;
      }
    }

    else if (!*(v32 + 16))
    {
      goto LABEL_126;
    }
  }

  v132(v225, v246);
  sub_100026028(v228, type metadata accessor for CRLBoardIdentifier);
}

void sub_100E1D84C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (*(*&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database] + 24) != 1)
  {
    goto LABEL_5;
  }

  v33 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database];
  v34 = v0;
  v32 = objc_opt_self();
  LODWORD(v2) = [v32 _atomicIncrementAssertCount];
  v35 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v35, "Vacuum cannot be performed when there is an open transaction on the database", 76, 2u);
  StaticString.description.getter("_performIncrementalVacuumIfNeeded()", 35, 2);
  v0 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v12;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v2;
  v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v15;
  v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v16;
  *(inited + 72) = v0;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v1;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 6092;
  v18 = v35;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v0;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Vacuum cannot be performed when there is an open transaction on the database", 76, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter("_performIncrementalVacuumIfNeeded()", 35, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Vacuum cannot be performed when there is an open transaction on the database", 76, 2);
  v27 = String._bridgeToObjectiveC()();

  [v32 handleFailureInFunction:v25 file:v26 lineNumber:6092 isFatal:0 format:v27 args:v24];

  v0 = v34;
LABEL_5:
  v28 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_hasAttemptedVacuum;
  if ((v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_hasAttemptedVacuum] & 1) == 0)
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.boardStore;
    v30 = static os_log_type_t.default.getter();
    sub_100005404(v29, &_mh_execute_header, v30, "Attempting to perform an incremental vacuum if needed", 53, 2, _swiftEmptyArrayStorage);
    v0[v28] = 1;
    sub_10089ACF0(0x200000, 0x100000);
  }
}

void sub_100E1DF3C(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (!v16)
  {
LABEL_6:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        goto LABEL_13;
      }

      v16 = *(a1 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  while (1)
  {
    v19 = v18;
LABEL_9:

    sub_100E1E144(v20, a2, v22, 0, 0xF000000000000000, 0);
    if (v4)
    {
      break;
    }

    v16 &= v16 - 1;

    v18 = v19;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

LABEL_13:
}

uint64_t sub_100E1E144(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, char *a6)
{
  v8 = v7;
  v9 = v6;
  v153 = a6;
  v151 = a5;
  v148 = a4;
  LODWORD(v150) = a3;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  *&v147 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v142 - v15;
  v16 = sub_1005B981C(&unk_101A341C0, &unk_1014B1D00);
  v17 = *(v16 - 8);
  v154 = v16;
  v155 = v17;
  __chkstk_darwin(v16);
  v19 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v152 = &v142 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = (&v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22, v24);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  v31 = *(v23 + 8);
  v30 = (v23 + 8);
  v31(v26, v22);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v156 = a2;
  v157 = a1;
  v32 = *(a1 + 16);
  v33 = sub_100E213C8(a2, v32);
  v30 = v9;
  if (!v7)
  {
    v29 = v33;
    if (!v33)
    {
      v152 = v150 == 0;
      v42 = v154;
      if (v153)
      {
        v43 = v153;
        v44 = sub_100F00014(v43);
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0xF000000000000000;
      }

      v153 = v30;
      v53 = v157;
      v54 = *(*v157 + 120);
      swift_beginAccess();
      v155[2](v19, v53 + v54, v42);
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v55, qword_101AD6348);
      v56 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
      v58 = v57;
      v59 = v155[1];
      v155 = v56;
      (v59)(v19, v42);
      v60 = v147;
      sub_10000C83C(v156, v147, type metadata accessor for CRLBoardIdentifier);
      v61 = (v157 + *(*v157 + 128));
      v62 = *(v61 + 5);
      v150 = *(v61 + 4);
      v149 = v62;
      LODWORD(v146) = *(v61 + 48);
      type metadata accessor for CRLFreehandDrawingBucketDatabaseRow(0);
      v63 = swift_allocObject();
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
      v64 = v61[1];
      v145 = *v61;
      v144 = v64;
      sub_100025668(v60, v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v32;
      v65 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
      v66 = v155;
      *v65 = v155;
      v65[1] = v58;
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v152;
      v67 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v68 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v152 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      *&v147 = v68;
      v69 = v44;
      v70 = v46;
      v71 = v148;
      v72 = v151;
      sub_100024E84(v148, v151);
      v154 = v58;
      sub_100024E98(v66, v58);
      sub_100024E84(v69, v70);
      *v67 = v71;
      v67[1] = v72;
      v73 = v69;
      sub_100025870(v152, v147);
      v74 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v75 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v76 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
      sub_100024E84(v73, v70);
      *v74 = v73;
      v74[1] = v70;
      sub_100025870(v75, v76);
      sub_100025870(v73, v70);
      v77 = v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
      v78 = v144;
      *v77 = v145;
      *(v77 + 16) = v78;
      v79 = v149;
      *(v77 + 32) = v150;
      *(v77 + 40) = v79;
      *(v77 + 48) = v146;
      sub_100E227D0(v63);
      sub_10002640C(v155, v154);
      sub_100025870(v73, v70);
      goto LABEL_41;
    }

    *&v147 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges;
    v34 = *(v33 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges);

    sub_100E9FABC(v35);
    v37 = v36;
    v38 = v157;
    v39 = v153;
    a2 = v154;
    if (v36)
    {
      if (v150)
      {
        a1 = v152;
        if (v150 == 1)
        {
          v40 = sub_100E21B80(v157);
          v38 = v157;
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v80 = sub_100E21B80(v36);
        v38 = v157;
        v41 = v80 | v34;
        a1 = v152;
      }

      sub_100E69D38(v38);
      v52 = v37;
    }

    else
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v150 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v48 = UUID.uuidString.getter();
      v50 = v49;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v48;
      *(inited + 40) = v50;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v150, &_mh_execute_header, v51, "An existing drawing bucket in the database could not be deserialized for merging. Replacing the bucket with the incoming bucket. Board identifier %{public}@", 156, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      v41 = 0;
      v52 = swift_retain_n();
      a2 = v154;
      a1 = v152;
    }

    *(v29 + v147) = v41;
    v81 = v151;
    v150 = v52;
    if (v151 >> 60 == 15)
    {
    }

    else
    {
      v82 = (v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v83 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v84 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v85 = v148;
      *v82 = v148;
      v82[1] = v81;
      v86 = v81;

      v87 = v85;
      v39 = v153;
      sub_100024E84(v87, v86);
      sub_100025870(v83, v84);
      v52 = v150;
    }

    v19 = v155;
    if (!v39)
    {
LABEL_31:
      v97 = *(*v52 + 120);
      swift_beginAccess();
      (*(v19 + 2))(a1, v52 + v97, a2);
      if (qword_1019F1520 == -1)
      {
LABEL_32:
        v98 = type metadata accessor for CRCodableVersion();
        sub_1005EB3DC(v98, qword_101AD6348);
        v99 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
        v101 = (v19 + 8);
        v102 = v147;
        if (v8)
        {

          (*v101)(a1, a2);
          goto LABEL_35;
        }

        v103 = v150;
        v148 = v99;
        v151 = v100;

        (*v101)(a1, a2);
        sub_10000C83C(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, v149, type metadata accessor for CRLBoardIdentifier);
        v142 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
        v143 = *(v29 + v102);
        v104 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData;
        v106 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        v105 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
        v107 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData;
        v108 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
        *&v145 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
        *&v144 = v108;
        v109 = v103 + *(*v103 + 128);
        v110 = *(v109 + 32);
        v154 = *(v109 + 40);
        v155 = v110;
        LODWORD(v152) = *(v109 + 48);
        type metadata accessor for CRLFreehandDrawingBucketDatabaseRow(0);
        v111 = swift_allocObject();
        v153 = v30;
        v63 = v111;
        v112 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
        v113 = *(v109 + 16);
        v147 = *v109;
        v146 = v113;
        *(v111 + v104) = xmmword_101486780;
        *(v111 + v107) = xmmword_101486780;
        sub_100025668(v149, v111 + v112, type metadata accessor for CRLBoardIdentifier);
        *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v142;
        v114 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
        v115 = v151;
        *v114 = v148;
        v114[1] = v115;
        *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v143;
        v116 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        v117 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
        v151 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        sub_100024E84(v106, v105);
        v118 = v105;
        sub_100024E84(v106, v105);
        v119 = v145;
        v120 = v144;
        sub_100024E84(v145, v144);
        *v116 = v106;
        v116[1] = v118;
        sub_100025870(v151, v117);
        sub_100025870(v106, v118);
        v121 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
        v122 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
        v123 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
        sub_100024E84(v119, v120);
        *v121 = v119;
        v121[1] = v120;
        sub_100025870(v122, v123);
        sub_100025870(v119, v120);
        v124 = v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
        v125 = v146;
        *v124 = v147;
        *(v124 + 16) = v125;
        v126 = v154;
        *(v124 + 32) = v155;
        *(v124 + 40) = v126;
        *(v124 + 48) = v152;
        sub_100E21DC4(v63);

LABEL_41:
        v136 = v156;
        v137 = v157;
        swift_setDeallocating();
        sub_100026028(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
        sub_100025870(*(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
        sub_100025870(*(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
        swift_deallocClassInstance();
        v129 = v153;
        v127 = v137;
        v128 = v136;
        return sub_100E2322C(v129, v127, v128);
      }

LABEL_50:
      swift_once();
      goto LABEL_32;
    }

    v88 = (v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
    v89 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
    if (v89 >> 60 == 15)
    {
      v90 = v39;
LABEL_28:
      v92 = sub_100F00014(v39);
      v94 = v93;

LABEL_29:
      v95 = *v88;
      v96 = v88[1];
      *v88 = v92;
      v88[1] = v94;
      sub_100025870(v95, v96);
LABEL_30:
      v19 = v155;
      a1 = v152;
      v52 = v150;
      goto LABEL_31;
    }

    v91 = *v88;
    sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
    sub_100006370(0, &unk_101A22DA0, CKMergeableRecordValue_ptr);
    sub_100024E84(v91, v89);
    sub_100024E84(v91, v89);
    v151 = v39;
    v131 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v132 = v151;
    sub_100025870(v91, v89);
    sub_100025870(v91, v89);
    if (!v131)
    {
      a2 = v154;
      goto LABEL_28;
    }

    v153 = v30;
    v158[0] = 0;
    if ([v131 mergeRecordValue:v132 error:v158])
    {
      v133 = v158[0];

      v134 = v131;
      v92 = sub_100F00014(v134);
      v94 = v135;

      if (v94 >> 60 != 15)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v138 = v158[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v139 = static OS_os_log.dataSync;
      v140 = static os_log_type_t.error.getter();
      sub_100005404(v139, &_mh_execute_header, v140, "Failed to merge serialized ckMergeableRecordValueDatas, keep existing data", 74, 2, _swiftEmptyArrayStorage);
      v92 = sub_100F00014(v131);
      v94 = v141;

      if (v94 >> 60 != 15)
      {
        v8 = 0;
LABEL_48:
        v30 = v153;
        a2 = v154;
        goto LABEL_29;
      }

      v8 = 0;
    }

    v30 = v153;
    a2 = v154;
    goto LABEL_30;
  }

LABEL_35:
  v128 = v156;
  v127 = v157;
  v129 = v30;
  return sub_100E2322C(v129, v127, v128);
}

void sub_100E1F188(uint64_t a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  *&v243 = a5;
  v240 = a4;
  v253 = a2;
  *&v256 = a1;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v238 = &v231 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v231 - v10;
  *&v242 = sub_1005B981C(&unk_101A22860, &unk_1014B6550);
  __chkstk_darwin(v242);
  v241 = &v231 - v12;
  *&v252 = sub_1005B981C(&unk_101A341C0, &unk_1014B1D00);
  v255 = *(v252 - 8);
  __chkstk_darwin(v252);
  *&v244 = &v231 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  *&v239 = &v231 - v15;
  __chkstk_darwin(v16);
  v236 = &v231 - v17;
  __chkstk_darwin(v18);
  *&v247 = &v231 - v19;
  __chkstk_darwin(v20);
  v234 = &v231 - v21;
  v22 = sub_1005B981C(&qword_101A21F48, &unk_1014B82C0);
  __chkstk_darwin(v22 - 8);
  v245 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v235 = &v231 - v25;
  __chkstk_darwin(v26);
  v248 = &v231 - v27;
  v28 = sub_1005B981C(&unk_101A22E30, &unk_1014B6910);
  v249 = *(v28 - 8);
  __chkstk_darwin(v28);
  v250 = &v231 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v246 = &v231 - v31;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = (&v231 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v36 = v37;
  (*(v33 + 104))(v36, enum case for DispatchPredicate.onQueue(_:), v32, v34);
  v38 = v37;
  v39 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v36, v32);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v254 = v5;
  LODWORD(v237) = a3;
  if (a3 == 2)
  {
    v40 = v257;
    v60 = v256;
    goto LABEL_11;
  }

  v233 = v11;
  v40 = v257;
  if (!a3)
  {
    v251 = v28;
    v232 = objc_opt_self();
    LODWORD(v32) = [v232 _atomicIncrementAssertCount];
    v258._countAndFlagsBits = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v258, "CKMergeable path for mergeFreehandDrawing should never be called with .trackAsUnsyncedChanges", 93, 2u);
    StaticString.description.getter("_mergeFreehandDrawingRemoteRecord(_:boardIdentifier:syncChangeTrackingType:syncDataToOverwrite:)", 96, 2);
    v231 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v41 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v43;

    if (qword_1019F20A0 == -1)
    {
LABEL_5:
      v44 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v32;
      v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v46;
      v47 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v47;
      v48 = v231;
      *(inited + 72) = v231;
      *(inited + 136) = &type metadata for String;
      v49 = sub_1000053B0();
      *(inited + 112) = v28;
      *(inited + 120) = v39;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v49;
      *(inited + 152) = 6239;
      countAndFlagsBits = v258._countAndFlagsBits;
      *(inited + 216) = v46;
      *(inited + 224) = v47;
      *(inited + 192) = countAndFlagsBits;
      v51 = v48;
      v52 = countAndFlagsBits;
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v54, "CKMergeable path for mergeFreehandDrawing should never be called with .trackAsUnsyncedChanges", 93, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v55 = swift_allocObject();
      v55[2] = 8;
      v55[3] = 0;
      v55[4] = 0;
      v55[5] = 0;
      v56 = __VaListBuilder.va_list()();
      StaticString.description.getter("_mergeFreehandDrawingRemoteRecord(_:boardIdentifier:syncChangeTrackingType:syncDataToOverwrite:)", 96, 2);
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v58 = String._bridgeToObjectiveC()();

      StaticString.description.getter("CKMergeable path for mergeFreehandDrawing should never be called with .trackAsUnsyncedChanges", 93, 2);
      v59 = String._bridgeToObjectiveC()();

      [v232 handleFailureInFunction:v57 file:v58 lineNumber:6239 isFatal:0 format:v59 args:v56];

      v40 = v257;
      v28 = v251;
      goto LABEL_6;
    }

LABEL_67:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:
  v60 = v256;
  v61 = *(v256 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
  v62 = sub_100E213C8(v253, v61);
  if (v40)
  {
    return;
  }

  if (v62)
  {
    v63 = (v60 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions);
    v64 = v28;
    if (*(v60 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions + 49))
    {
      v63 = &v62[OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions];
    }

    LODWORD(v245) = v63[48];
    v250 = v61;
    v257 = 0;
    v113 = *(v63 + 1);
    v244 = *(v63 + 2);
    v114 = *(v60 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_ckMergeableRecordValue);
    v256 = v113;
    v239 = *v63;
    v232 = v62;
    v115 = *&v62[OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8];
    if (v115 >> 60 == 15)
    {
      v116 = v114;
      v117 = v64;
      v118 = v254;
    }

    else
    {
      v119 = *&v62[OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData];
      sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
      sub_100006370(0, &unk_101A22DA0, CKMergeableRecordValue_ptr);
      sub_100024E84(v119, v115);
      sub_100024E84(v119, v115);
      v120 = v114;
      v121 = v257;
      v122 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v121)
      {

        sub_100025870(v119, v115);
        sub_100025870(v119, v115);
        v257 = 0;
        v117 = v64;
      }

      else
      {
        v116 = v122;
        v257 = 0;
        sub_100025870(v119, v115);
        sub_100025870(v119, v115);
        v117 = v64;
        if (v116)
        {
          v258._countAndFlagsBits = 0;
          v160 = [v116 mergeRecordValue:v120 error:&v258];
          v118 = v254;
          if (v160)
          {
            v161 = v258._countAndFlagsBits;
          }

          else
          {
            v251 = v64;
            v224 = v258._countAndFlagsBits;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_1019F2270 != -1)
            {
              swift_once();
            }

            v225 = static OS_os_log.dataSync;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v226 = swift_initStackObject();
            *(v226 + 16) = xmmword_10146C6B0;
            swift_getErrorValue();
            v227 = Error.localizedDescription.getter();
            v229 = v228;
            *(v226 + 56) = &type metadata for String;
            *(v226 + 64) = sub_1000053B0();
            *(v226 + 32) = v227;
            *(v226 + 40) = v229;
            v230 = static os_log_type_t.default.getter();
            sub_100005404(v225, &_mh_execute_header, v230, "Merge failed, this can happen if a record was deleted and replaced with something else and we're merging two distinctly different records. Super edge casey. %@", 159, 2, v226);

            swift_setDeallocating();
            sub_100005070((v226 + 32));
            v257 = 0;
            v117 = v251;
            v118 = v254;
          }

          goto LABEL_29;
        }
      }

      v118 = v254;
      v116 = v120;
    }

LABEL_29:
    v123 = v255;
    v124 = v252;
    (v255[7])(v248, 1, 1, v252);
    v125 = *(v118 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    sub_10001A2F8(&unk_101A22E40, &unk_101A341C0, &unk_1014B1D00, &protocol conformance descriptor for Capsule<A>);
    v126 = v125;
    v127 = v246;
    CRCKMergeable.init(crdt:context:)();
    sub_10001A2F8(&qword_101A21F50, &unk_101A22E30, &unk_1014B6910, &protocol conformance descriptor for CRCKMergeable<A>);
    v128 = v257;
    CKMergeable.merge(_:)();
    v129 = v116;
    if (v128)
    {
      (*(v249 + 8))(v127, v117);

      return;
    }

    v248 = v126;
    v153 = v235;
    v251 = v117;
    CRCKMergeable.crdt.getter();
    v154 = (v123[6])(v153, 1, v124);
    v257 = 0;
    if (v154 == 1)
    {
      sub_10000CAAC(v153, &qword_101A21F48, &unk_1014B82C0);
      v258._countAndFlagsBits = v250;
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v237 = v156;
      v238 = v155;
      type metadata accessor for UUID();
      sub_1005B981C(&qword_101A228A0, &unk_1014B1D10);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_10001A2F8(&qword_101A1F620, &qword_101A228A0, &unk_1014B1D10, &protocol conformance descriptor for Ref<A>);
      sub_10001A2F8(&unk_101A22E50, &qword_101A228A0, &unk_1014B1D10, &protocol conformance descriptor for Ref<A>);
      CRDictionary.init()();
      sub_10001A2F8(&qword_101A228C0, &unk_101A22860, &unk_1014B6550, &protocol conformance descriptor for CRDictionary<A, B>);
      v157 = v247;
      Capsule.init(_:id:)();
      sub_1005B981C(&unk_101A228D0, "ԥ'");
      v158 = swift_allocObject();
      *(v158 + *(*v158 + 136)) = 0;
      v158[2] = v250;
      (v255[4])(v158 + *(*v158 + 120), v157, v124);
      v159 = 0;
    }

    else
    {
      v162 = v123[4];
      v163 = v234;
      v162(v234, v153, v124);
      v164 = v247;
      v162(v247, v163, v124);
      sub_1005B981C(&unk_101A228D0, "ԥ'");
      v158 = swift_allocObject();
      *(v158 + *(*v158 + 136)) = 0;
      v158[2] = v250;
      v162(v158 + *(*v158 + 120), v164, v124);
      v159 = 1;
    }

    *(v158 + *(*v158 + 136)) = v159;
    v165 = v158 + *(*v158 + 128);
    v166 = v256;
    *v165 = v239;
    *(v165 + 1) = v166;
    *(v165 + 2) = v244;
    v165[48] = v245 & 1;
    v167 = v232;

    sub_100E9FABC(v168);
    v170 = v169;
    *&v256 = v129;
    if (v169)
    {
      v171 = sub_100E21B80(v158);
      sub_100E69D38(v158);
      v172 = v170;
    }

    else
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v173 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v174 = swift_initStackObject();
      *(v174 + 16) = xmmword_10146C6B0;
      v175 = UUID.uuidString.getter();
      v177 = v176;
      *(v174 + 56) = &type metadata for String;
      *(v174 + 64) = sub_1000053B0();
      *(v174 + 32) = v175;
      *(v174 + 40) = v177;
      v178 = static os_log_type_t.error.getter();
      sub_100005404(v173, &_mh_execute_header, v178, "An existing drawing bucket in the database failed to deserialize for merging. Replacing the bucket with the incoming bucket. Board identifier %{public}@", 152, 2, v174);
      swift_setDeallocating();
      sub_100005070((v174 + 32));
      swift_retain_n();
      v171 = 0;
      v172 = v158;
    }

    v179 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges;
    *(v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v171;
    v180 = v243;
    if (v243 >> 60 == 15)
    {
    }

    else
    {
      v181 = (v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v182 = *(v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v183 = *(v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v184 = v240;
      *v181 = v240;
      v181[1] = v180;

      sub_100024E84(v184, v180);
      sub_100025870(v182, v183);
    }

    v185 = v252;
    v186 = v233;
    v187 = *(*v172 + 120);
    swift_beginAccess();
    v188 = v172 + v187;
    v189 = v236;
    (v255[2])(v236, v188, v185);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v190 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v190, qword_101AD6348);
    v191 = v257;
    v192 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
    if (v191)
    {

      (v255[1])(v189, v185);
      (*(v249 + 8))(v246, v251);
      return;
    }

    *&v252 = v192;
    v253 = v193;

    (v255[1])(v189, v185);
    *&v244 = sub_100F00014(v256);
    v245 = v194;
    sub_10000C83C(v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, v186, type metadata accessor for CRLBoardIdentifier);
    v241 = *(v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
    v255 = *(v167 + v179);
    v195 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData;
    v196 = *(v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
    v197 = *(v167 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
    v198 = *(*v172 + 128);
    v257 = 0;
    v199 = v172 + v198;
    v201 = *(v172 + v198 + 32);
    v200 = *(v172 + v198 + 40);
    v250 = v201;
    v248 = v200;
    LODWORD(v247) = v199[48];
    type metadata accessor for CRLFreehandDrawingBucketDatabaseRow(0);
    v202 = swift_allocObject();
    v203 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData;
    v204 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
    v205 = *v199;
    v242 = *(v199 + 1);
    v243 = v205;
    *(v202 + v195) = xmmword_101486780;
    *(v202 + v203) = xmmword_101486780;
    sub_100025668(v186, v202 + v204, type metadata accessor for CRLBoardIdentifier);
    *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v241;
    v206 = (v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
    v207 = v252;
    v208 = v253;
    *v206 = v252;
    v206[1] = v208;
    *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v255;
    v209 = (v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
    v210 = *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
    v240 = *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
    v241 = v210;
    sub_100024E84(v196, v197);
    sub_100024E84(v196, v197);
    sub_100024E98(v207, v208);
    v255 = v172;
    v211 = v244;
    v212 = v245;
    sub_100024E84(v244, v245);
    *v209 = v196;
    v209[1] = v197;
    sub_100025870(v241, v240);
    sub_100025870(v196, v197);
    v213 = (v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
    v214 = *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
    v215 = *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
    sub_100024E84(v211, v212);
    *v213 = v211;
    v213[1] = v212;
    sub_100025870(v214, v215);
    sub_100025870(v211, v212);
    v216 = v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
    v217 = v242;
    *v216 = v243;
    *(v216 + 16) = v217;
    v218 = v248;
    *(v216 + 32) = v250;
    *(v216 + 40) = v218;
    *(v216 + 48) = v247;
    v219 = v257;
    sub_100E21DC4(v202);
    if (v219)
    {

      sub_10002640C(v252, v253);
      sub_100025870(v211, v212);

      swift_setDeallocating();
      sub_100026028(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      sub_10002640C(*(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
      sub_100025870(*(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
      sub_100025870(*(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
      swift_deallocClassInstance();

      (*(v249 + 8))(v246, v251);
      return;
    }

    sub_10002640C(v252, v253);
    sub_100025870(v211, v212);

    swift_setDeallocating();
    sub_100026028(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
    sub_100025870(*(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
    sub_100025870(*(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v202 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
    swift_deallocClassInstance();

    v222 = v246;
    v223 = v249;
    goto LABEL_60;
  }

LABEL_11:
  v65 = v60 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions;
  v66 = *(v60 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions + 49);
  v257 = v40;
  if (v66 == 1)
  {
    v251 = v28;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v246 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_10146C6B0;
    v68 = *(v60 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v69 = sub_100EFF9E4(v60 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier);
    v70 = sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
    v71 = qword_101A22C20;
    v72 = off_101A22C28;
    v258._countAndFlagsBits = v68;

    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    v258._countAndFlagsBits = v71;
    v258._object = v72;

    v76._countAndFlagsBits = v73;
    v76._object = v75;
    String.append(_:)(v76);

    isa = CKRecordID.init(recordName:zoneID:)(v258, v69).super.isa;
    *(v67 + 56) = v70;
    *(v67 + 64) = sub_10000FDE0(&qword_101A22E90, &qword_1019F6E98, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
    *(v67 + 32) = isa;
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v246, &_mh_execute_header, v78, "Incorrectly received missing values (partial record?) when saving a new freehandDrawingRemoteRecord, using default value to proceed. Incoming recordIDforCKRecord: %{public}@", 173, 2, v67);
    swift_setDeallocating();
    v60 = v256;
    sub_100005070((v67 + 32));
    v246 = 0;
    LODWORD(v234) = 1;
    v231 = 0x1000000000000;
    v232 = 0x2000400000000;
    v235 = 0x1000000000000;
    v236 = 0x2000400000000;
    v233 = 0x1000000000000;
    v28 = v251;
  }

  else
  {
    v79 = *(v65 + 32);
    v246 = *(v65 + 40);
    v80 = *(v65 + 16);
    v81 = *(v65 + 24);
    v235 = v79;
    v236 = v80;
    v82 = *v65;
    v231 = *(v65 + 8);
    v232 = v81;
    v233 = v82;
    LODWORD(v234) = *(v65 + 48);
  }

  v83 = *(v60 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_ckMergeableRecordValue);
  v84 = v255;
  v85 = v252;
  (v255[7])(v248, 1, 1, v252);
  v86 = *(v254 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  sub_10001A2F8(&unk_101A22E40, &unk_101A341C0, &unk_1014B1D00, &protocol conformance descriptor for Capsule<A>);
  v87 = v83;
  v88 = v85;
  v89 = v87;
  v90 = v86;
  v91 = v250;
  CRCKMergeable.init(crdt:context:)();
  sub_10001A2F8(&qword_101A21F50, &unk_101A22E30, &unk_1014B6910, &protocol conformance descriptor for CRCKMergeable<A>);
  v92 = v257;
  CKMergeable.merge(_:)();
  if (v92)
  {
    (*(v249 + 8))(v91, v28);

    return;
  }

  v257 = v90;
  v248 = v89;
  v93 = v245;
  v251 = v28;
  CRCKMergeable.crdt.getter();
  v94 = v88;
  if ((v84[6])(v93, 1, v88) == 1)
  {
    sub_10000CAAC(v93, &qword_101A21F48, &unk_1014B82C0);
    v258._countAndFlagsBits = *(v256 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v95 = v258._countAndFlagsBits;
    *&v256 = dispatch thunk of CustomStringConvertible.description.getter();
    v245 = v96;
    *&v239 = type metadata accessor for UUID();
    sub_1005B981C(&qword_101A228A0, &unk_1014B1D10);
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10001A2F8(&qword_101A1F620, &qword_101A228A0, &unk_1014B1D10, &protocol conformance descriptor for Ref<A>);
    v97 = v255;
    sub_10001A2F8(&unk_101A22E50, &qword_101A228A0, &unk_1014B1D10, &protocol conformance descriptor for Ref<A>);
    CRDictionary.init()();
    sub_10001A2F8(&qword_101A228C0, &unk_101A22860, &unk_1014B6550, &protocol conformance descriptor for CRDictionary<A, B>);
    v98 = v247;
    Capsule.init(_:id:)();
    sub_1005B981C(&unk_101A228D0, "ԥ'");
    v99 = swift_allocObject();
    *(v99 + *(*v99 + 136)) = 0;
    v99[2] = v95;
    (v97[4])(v99 + *(*v99 + 120), v98, v88);
    v100 = 0;
  }

  else
  {
    v101 = v84[4];
    v102 = v239;
    v101(v239, v93, v94);
    v103 = *(v256 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v104 = v247;
    v101(v247, v102, v94);
    sub_1005B981C(&unk_101A228D0, "ԥ'");
    v99 = swift_allocObject();
    *(v99 + *(*v99 + 136)) = 0;
    v99[2] = v103;
    v97 = v255;
    v101(v99 + *(*v99 + 120), v104, v94);
    v100 = 1;
  }

  v105 = v94;
  v106 = v244;
  *(v99 + *(*v99 + 136)) = v100;
  v107 = v99 + *(*v99 + 128);
  v108 = v231;
  *v107 = v233;
  *(v107 + 1) = v108;
  v109 = v232;
  *(v107 + 2) = v236;
  *(v107 + 3) = v109;
  v110 = v246;
  *(v107 + 4) = v235;
  *(v107 + 5) = v110;
  v107[48] = v234 & 1;
  v111 = *(*v99 + 120);
  swift_beginAccess();
  (v97[2])(v106, v99 + v111, v105);
  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v112 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v112, qword_101AD6348);
  v130 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
  v132 = v131;
  v257 = 0;
  (v255[1])(v106, v105);
  v133 = sub_100F00014(v248);
  v135 = v134;
  v136 = v238;
  sub_10000C83C(v253, v238, type metadata accessor for CRLBoardIdentifier);
  v246 = v99[2];
  v137 = v99 + *(*v99 + 128);
  v138 = *(v137 + 4);
  v255 = *(v137 + 5);
  *&v256 = v138;
  LODWORD(v253) = v137[48];
  type metadata accessor for CRLFreehandDrawingBucketDatabaseRow(0);
  v139 = swift_allocObject();
  *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
  *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
  v140 = *(v137 + 1);
  v252 = *v137;
  v247 = v140;
  sub_100025668(v136, v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v246;
  v141 = (v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  *v141 = v130;
  v141[1] = v132;
  *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = 0;
  v142 = (v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v143 = *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v144 = *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  v145 = v240;
  v146 = v243;
  *v142 = v240;
  v142[1] = v146;
  sub_100024E84(v145, v146);
  sub_100024E84(v133, v135);
  sub_100025870(v143, v144);
  v147 = (v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v148 = *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v149 = *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  *v147 = v133;
  v147[1] = v135;
  sub_100024E84(v133, v135);
  sub_100025870(v148, v149);
  sub_100025870(v133, v135);
  v150 = v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
  v151 = v247;
  *v150 = v252;
  *(v150 + 16) = v151;
  v152 = v255;
  *(v150 + 32) = v256;
  *(v150 + 40) = v152;
  *(v150 + 48) = v253;
  if (v237)
  {
    if (v237 == 1)
    {
      sub_100E227D0(v139);
    }

    else
    {
      sub_100E21DC4(v139);
    }

    sub_100025870(v133, v135);

    swift_setDeallocating();
    sub_100026028(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
    sub_100025870(*(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
    sub_100025870(*(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
    swift_deallocClassInstance();
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v220 = static OS_os_log.dataSync;
    v221 = static os_log_type_t.error.getter();
    sub_100005404(v220, &_mh_execute_header, v221, "CKMergeable path for mergeFreehandDrawing should never be called with .trackAsUnsyncedChanges", 93, 2, _swiftEmptyArrayStorage);
    sub_100025870(v133, v135);

    swift_setDeallocating();
    sub_100026028(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
    sub_100025870(*(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
    sub_100025870(*(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v139 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
    swift_deallocClassInstance();
  }

  v223 = v249;
  v222 = v250;
LABEL_60:
  (*(v223 + 8))(v222, v251);
}

uint64_t sub_100E213C8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v57 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v60 = *(v5 + 104);
  v60(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_5;
  }

  v59 = v10;
  v58 = v12;
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v61 = 0x205443454C4553;
  v62 = 0xE700000000000000;
  v13._countAndFlagsBits = sub_100E9E2A4(0, 0xE000000000000000);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x204D4F524620;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000018;
  v15._object = 0x80000001015A31A0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x2820455245485720;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  v17._object = 0x80000001015A38C0;
  v17._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x444E41203F203D20;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x695F74656B637562;
  v19._object = 0xEC0000007865646ELL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x29203F203D20;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21 = v61;
  v22 = v62;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = sub_10001CC04(v23, v21, v22);
  if (!v3)
  {
    v25 = v24;

    v26 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v27 = sub_10084DAE4(v57, *(v57 + *(v26 + 20)), *(v57 + *(v26 + 20) + 8));
    v36 = v35;
    v37 = v27;
    v38 = *(*(v25 + 16) + 32);
    *v8 = v38;
    (v60)(v8, v59, v4);
    v39 = v38;
    LOBYTE(v38) = _dispatchPreconditionTest(_:)();
    v58(v8, v4);
    if (v38)
    {

      sub_100DCCAB4(v37, v36, v25, 1);
      sub_10002640C(v37, v36);
      if (v56 >= 0xFFFFFFFF80000000)
      {
        v40 = v58;
        v41 = v60;
        if (v56 <= 0x7FFFFFFF)
        {
          v42 = *(*(v25 + 16) + 32);
          *v8 = v42;
          v43 = v59;
          v41(v8, v59, v4);
          v44 = v42;
          LOBYTE(v42) = _dispatchPreconditionTest(_:)();
          v40(v8, v4);
          if (v42)
          {
            swift_beginAccess();
            sqlite3_bind_int(*(v25 + 24), 2, v56);
            v45 = *(*(v25 + 16) + 32);
            *v8 = v45;
            (v60)(v8, v43, v4);
            v46 = v45;
            LOBYTE(v45) = _dispatchPreconditionTest(_:)();
            v40(v8, v4);
            if (v45)
            {
              v47 = v40;
              type metadata accessor for SQLiteRowIterator();
              inited = swift_initStackObject();
              inited[4] = 0;
              inited[5] = 1;
              inited[2] = v25;
              inited[3] = 0;

              v49 = sub_10001E1D0();
              if (!v49)
              {

                swift_setDeallocating();
                sub_10001E364(inited[3], inited[4], inited[5]);
                v53 = *(*(v25 + 16) + 32);
                *v8 = v53;
                (v60)(v8, v59, v4);
                v54 = v53;
                LOBYTE(v53) = _dispatchPreconditionTest(_:)();
                v47(v8, v4);
                if (v53)
                {
                  v30 = 0;
                  v52 = *(v25 + 24);
                  if (!v52)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_15;
                }

LABEL_28:
                __break(1u);
              }

              v30 = sub_100E9E61C(v49, 0);

              swift_setDeallocating();
              sub_10001E364(inited[3], inited[4], inited[5]);
              v50 = *(*(v25 + 16) + 32);
              *v8 = v50;
              (v60)(v8, v59, v4);
              v51 = v50;
              LOBYTE(v50) = _dispatchPreconditionTest(_:)();
              v47(v8, v4);
              if (v50)
              {
                v52 = *(v25 + 24);
                if (!v52)
                {
LABEL_16:

                  return v30;
                }

LABEL_15:
                sqlite3_finalize(v52);
                *(v25 + 24) = 0;
                goto LABEL_16;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v28 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v30 = Error.localizedDescription.getter();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000053B0();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v33, "Failed to fetch a board drawing row with error %@", 49, 2, v29);
  swift_setDeallocating();
  sub_100005070((v29 + 32));
  swift_willThrow();
  return v30;
}

uint64_t sub_100E21B80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A341C0, &unk_1014B1D00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  v11 = *(*v2 + 120);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  v13 = *(*a1 + 120);
  swift_beginAccess();
  v12(v7, a1 + v13, v4);
  LOBYTE(v13) = Capsule.hasDelta(from:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = 2;
  if ((v13 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = (v2 + *(*v2 + 128));
  v17 = (a1 + *(*a1 + 128));
  if (*v16 != *v17)
  {
    v15 |= 4uLL;
  }

  if (v16[1] != v17[1])
  {
    v15 |= 8uLL;
  }

  if (v16[2] != v17[2])
  {
    v15 |= 0x10uLL;
  }

  v19 = v16[3];
  v18 = v16[4];
  if (v19 != v17[3])
  {
    v15 |= 0x20uLL;
  }

  if (v18 == v17[4])
  {
    return v15;
  }

  else
  {
    return v15 | 0x40;
  }
}

void sub_100E21DC4(uint64_t a1)
{
  v92 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = v4 + 104;
  v10 = *(v4 + 104);
  v95 = enum case for DispatchPredicate.onQueue(_:);
  v10(v7, v5);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v14 = *(v4 + 8);
  v13 = v4 + 8;
  v12 = v14;
  v14(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    __break(1u);
    goto LABEL_25;
  }

  v93 = v2;
  v94 = v10;
  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(116);
  v15._countAndFlagsBits = 0x20455441445055;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001015A31A0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x2054455320;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x645F74656B637562;
  v18._object = 0xEB00000000617461;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C3F203D20;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000010;
  v20._object = 0x80000001015A33D0;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x202C3F203D20;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x7461645F636E7973;
  v22._object = 0xE900000000000061;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x202C3F203D20;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._object = 0x80000001015A3920;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x202C3F203D20;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD00000000000001FLL;
  v26._object = 0x80000001015A3940;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x202C3F203D20;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._object = 0x80000001015A3960;
  v28._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C3F203D20;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000038;
  v30._object = 0x80000001015A3980;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C3F203D20;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000037;
  v32._object = 0x80000001015A39C0;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x202C3F203D20;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000026;
  v34._object = 0x80000001015A33F0;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x202C3F203D20;
  v35._object = 0xE600000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD00000000000001BLL;
  v36._object = 0x80000001015A3790;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x454857203F203D20;
  v37._object = 0xEB00000000204552;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000011;
  v38._object = 0x80000001015A38C0;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x444E41203F203D20;
  v39._object = 0xE900000000000020;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x695F74656B637562;
  v40._object = 0xEC0000007865646ELL;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 1059077408;
  v41._object = 0xE400000000000000;
  String.append(_:)(v41);
  v42 = v96;
  v43 = v97;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v45 = v93;
  v46 = sub_10001CC04(v44, v42, v43);

  if (v45)
  {
    return;
  }

  v47 = v9;
  v48 = v92;
  v49 = *(v92 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v50 = *(v92 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v51 = *(v46 + 16);
  v93 = v12;
  v52 = v13;
  v53 = *(v51 + 32);
  *v7 = v53;
  v91[1] = v47;
  v94(v7, v95, v3);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v91[2] = v52;
  v93(v7, v3);
  v55 = v93;
  if ((v53 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v49, v50, v46, 1);
  sub_100034254(*(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges), 2);
  v56 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v57 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  sub_100024E84(v56, v57);
  sub_10089BB64(v56, v57, 3);
  sub_100025870(v56, v57);
  v58 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v59 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  sub_100024E84(v58, v59);
  sub_10089BB64(v58, v59, 4);
  sub_100025870(v58, v59);
  v60 = v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
  sub_100034254(*(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions), 5);
  sub_100034254(*(v60 + 8), 6);
  sub_100034254(*(v60 + 16), 7);
  sub_100034254(*(v60 + 24), 8);
  sub_100034254(*(v60 + 32), 9);
  if ((*(v60 + 48) & 1) == 0)
  {
    sub_100034254(*(v60 + 40), 10);
    v64 = v92;
    v62 = v94;
    goto LABEL_8;
  }

  v61 = *(*(v46 + 16) + 32);
  *v7 = v61;
  v62 = v94;
  v94(v7, v95, v3);
  v63 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  v55(v7, v3);
  if ((v61 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  sqlite3_bind_null(*(v46 + 24), 10);
  v64 = v92;
LABEL_8:
  v65 = v64 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
  v66 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v67 = sub_10084DAE4(v65, *(v65 + *(v66 + 20)), *(v65 + *(v66 + 20) + 8));
  v69 = v62;
  v70 = v68;
  v71 = v67;
  v72 = *(*(v46 + 16) + 32);
  *v7 = v72;
  v69(v7, v95, v3);
  v73 = v72;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  v93(v7, v3);
  if ((v72 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100DCCAB4(v71, v70, v46, 11);
  sub_10002640C(v71, v70);
  v74 = *(v92 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  if (v74 < 0xFFFFFFFF80000000)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v92 = 0;
  v75 = v94;
  v76 = v95;
  if (v74 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v77 = *(*(v46 + 16) + 32);
  *v7 = v77;
  v75(v7, v76, v3);
  v78 = v77;
  LOBYTE(v77) = _dispatchPreconditionTest(_:)();
  v79 = v93;
  v93(v7, v3);
  if ((v77 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v80 = (v46 + 24);
  swift_beginAccess();
  sqlite3_bind_int(*(v46 + 24), 12, v74);
  v81 = *(*(v46 + 16) + 32);
  *v7 = v81;
  v75(v7, v76, v3);
  v82 = v81;
  LOBYTE(v81) = _dispatchPreconditionTest(_:)();
  v79(v7, v3);
  if ((v81 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v83 = *(v46 + 16);

  LODWORD(v84) = sub_10001CEC4(v83, v46);

  if (v84 != 101)
  {
    goto LABEL_20;
  }

  v84 = *(*(v46 + 16) + 32);
  *v7 = v84;
  v94(v7, v95, v3);
  v85 = v84;
  v86 = _dispatchPreconditionTest(_:)();
  v93(v7, v3);
  if ((v86 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    sub_10089C7D0();
    swift_allocError();
    *v87 = v84;
    *(v87 + 8) = 0xD000000000000029;
    *(v87 + 16) = 0x80000001015A51A0;
    swift_willThrow();
    v88 = *(*(v46 + 16) + 32);
    *v7 = v88;
    v94(v7, v95, v3);
    v89 = v88;
    v90 = _dispatchPreconditionTest(_:)();
    v93(v7, v3);
    if (v90)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
  }

LABEL_21:
  if (*v80)
  {
    sqlite3_finalize(*v80);
    *v80 = 0;
  }
}

double sub_100E227D0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = v4 + 104;
  v10 = *(v4 + 104);
  v104 = enum case for DispatchPredicate.onQueue(_:);
  v10(v7, v5);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v14 = *(v4 + 8);
  v13 = v4 + 8;
  v107 = v14;
  v14(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v102 = a1;
  v103 = v13;
  v105 = v10;
  v106 = v3;
  v109 = v9;
  v110 = 0;
  v15 = 0xD000000000000010;
  v111 = 0xE000000000000000;
  _StringGuts.grow(_:)(160);
  v16._countAndFlagsBits = 0x4920545245534E49;
  v16._object = 0xEC000000204F544ELL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000018;
  v17._object = 0x80000001015A31A0;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 10272;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000011;
  v19._object = 0x80000001015A38C0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x695F74656B637562;
  v21._object = 0xEC0000007865646ELL;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x645F74656B637562;
  v23._object = 0xEB00000000617461;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x7461645F636E7973;
  v27._object = 0xE900000000000061;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD00000000000001ELL;
  v29._object = 0x80000001015A3920;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 8236;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD00000000000001FLL;
  v31._object = 0x80000001015A3940;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD00000000000001ELL;
  v33._object = 0x80000001015A3960;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD000000000000038;
  v35._object = 0x80000001015A3980;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000037;
  v37._object = 0x80000001015A39C0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD000000000000026;
  v39._object = 0x80000001015A33F0;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 8236;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  v41._object = 0x80000001015A3790;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD00000000000003CLL;
  v42._object = 0x80000001015A51D0;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000011;
  v43._object = 0x80000001015A38C0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x695F74656B637562;
  v45._object = 0xEC0000007865646ELL;
  String.append(_:)(v45);
  v46._object = 0x80000001015A4700;
  v46._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x645F74656B637562;
  v47._object = 0xEB00000000617461;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x756C637865203D20;
  v48._object = 0xEC0000002E646564;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x645F74656B637562;
  v49._object = 0xEB00000000617461;
  String.append(_:)(v49);
  v50 = v110;
  v51 = v111;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v53 = v108;
  v54 = sub_10001CC04(v52, v50, v51);

  if (v53)
  {
    return result;
  }

  v56 = v102;
  v57 = v102 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
  v58 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v59 = sub_10084DAE4(v57, *(v57 + *(v58 + 20)), *(v57 + *(v58 + 20) + 8));
  v61 = v60;
  v62 = v59;
  v63 = *(*(v54 + 16) + 32);
  *v7 = v63;
  v64 = v106;
  v105(v7, v104, v106);
  v65 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  v107(v7, v64);
  if ((v63 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v62, v61, v54, 1);
  sub_10002640C(v62, v61);
  v66 = *(v56 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  if (v66 < 0xFFFFFFFF80000000)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v101[1] = 0;
  v68 = v106;
  v67 = v107;
  if (v66 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v69 = *(*(v54 + 16) + 32);
  *v7 = v69;
  v70 = v105;
  v105(v7, v104, v68);
  v71 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  v67(v7, v68);
  if ((v69 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v108 = (v54 + 24);
  swift_beginAccess();
  sqlite3_bind_int(*(v54 + 24), 2, v66);
  v72 = v102;
  v74 = *(v102 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v73 = *(v102 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v75 = *(*(v54 + 16) + 32);
  *v7 = v75;
  v70(v7, v104, v68);
  v76 = v75;
  LOBYTE(v75) = _dispatchPreconditionTest(_:)();
  v107(v7, v68);
  if ((v75 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_100DCCAB4(v74, v73, v54, 3);
  sub_100034254(*(v72 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges), 4);
  v77 = *(v72 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v78 = *(v72 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  sub_100024E84(v77, v78);
  sub_10089BB64(v77, v78, 5);
  sub_100025870(v77, v78);
  v79 = *(v72 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v80 = *(v72 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  sub_100024E84(v79, v80);
  sub_10089BB64(v79, v80, 6);
  sub_100025870(v79, v80);
  v81 = v72 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
  sub_100034254(*(v72 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions), 7);
  sub_100034254(*(v81 + 8), 8);
  sub_100034254(*(v81 + 16), 9);
  sub_100034254(*(v81 + 24), 10);
  sub_100034254(*(v81 + 32), 11);
  if (*(v81 + 48))
  {
    v82 = *(*(v54 + 16) + 32);
    *v7 = v82;
    v83 = v104;
    v84 = v106;
    v105(v7, v104, v106);
    v85 = v82;
    LOBYTE(v82) = _dispatchPreconditionTest(_:)();
    v86 = v84;
    v87 = v107;
    v107(v7, v86);
    if ((v82 & 1) == 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sqlite3_bind_null(*v108, 12);
  }

  else
  {
    sub_100034254(*(v81 + 40), 12);
    v87 = v107;
    v83 = v104;
  }

  v88 = *(*(v54 + 16) + 32);
  *v7 = v88;
  v89 = v106;
  v105(v7, v83, v106);
  v90 = v88;
  LOBYTE(v88) = _dispatchPreconditionTest(_:)();
  v87(v7, v89);
  if ((v88 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v91 = *(v54 + 16);

  v92 = sub_10001CEC4(v91, v54);

  if (v92 != 101)
  {
    goto LABEL_20;
  }

  v15 = *(*(v54 + 16) + 32);
  *v7 = v15;
  v93 = v106;
  v105(v7, v83, v106);
  v94 = v15;
  v92 = _dispatchPreconditionTest(_:)();
  v107(v7, v93);
  if ((v92 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    sub_10089C7D0();
    swift_allocError();
    *v95 = v92;
    *(v95 + 8) = v15 + 30;
    *(v95 + 16) = 0x80000001015A5210;
    swift_willThrow();
    v96 = *(*(v54 + 16) + 32);
    *v7 = v96;
    v97 = v106;
    v105(v7, v83, v106);
    v98 = v96;
    v99 = _dispatchPreconditionTest(_:)();
    v107(v7, v97);
    if (v99)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
  }

LABEL_21:
  v100 = v108;
  if (*v108)
  {
    sqlite3_finalize(*v108);
    *v100 = 0;
  }

  return result;
}

uint64_t sub_100E2322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16))
  {
    sub_1000486F0(a3);
    if (v7)
    {
      swift_beginAccess();

      sub_100ED8FF8(v5);
      swift_endAccess();
    }
  }

  return swift_endAccess();
}

void *sub_100E232E0(unint64_t a1)
{
  v56 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v59 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_27;
  }

  v58 = v9;
  v57 = v11;
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v61 = 0x205443454C4553;
  v62 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E9E2A4(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x80000001015A31A0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._object = 0x80000001015A38C0;
  v16._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x293F203D20;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v61;
  v19 = v62;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v25 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Failed to fetch board drawing rows with error %@", 48, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v27;
    }

LABEL_28:
    swift_once();
    goto LABEL_5;
  }

  v22 = v21;

  v23 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v24 = sub_10084DAE4(v56, *(v56 + *(v23 + 20)), *(v56 + *(v23 + 20) + 8));
  v56 = v32;
  v33 = v24;
  v34 = *(*(v22 + 16) + 32);
  *v7 = v34;
  v58(v7, v59, v3);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v36 = v57;
  v57(v7, v3);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v37 = v33;
  v38 = v33;
  v39 = v56;
  sub_100DCCAB4(v38, v56, v22, 1);
  sub_10002640C(v37, v39);
  v60 = _swiftEmptyArrayStorage;
  v40 = *(*(v22 + 16) + 32);
  *v7 = v40;
  v58(v7, v59, v3);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v36(v7, v3);
  if ((v40 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v42 = swift_initStackObject();
  v42[3] = 0;
  v43 = v42 + 3;
  v42[4] = 0;
  v55 = v42 + 4;
  v42[5] = 1;
  v56 = v42;
  v42[2] = v22;

  swift_beginAccess();
  v44 = *(*(v22 + 16) + 32);
  *v7 = v44;
  v58(v7, v59, v3);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v36(v7, v3);
  if ((v44 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v43 = 0;
    v43[1] = 0;
    *(v56 + 40) = 1;
    v46 = sqlite3_step(*(v22 + 24));
    if (v46 != 100)
    {
      break;
    }

    v47 = swift_retain_n();
    if (sub_100E9E61C(v47, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54[1] = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v27 = v60;
    }

    else
    {
    }

    v48 = *(*(v22 + 16) + 32);
    *v7 = v48;
    v58(v7, v59, v3);
    v49 = v48;
    LOBYTE(v48) = _dispatchPreconditionTest(_:)();
    v57(v7, v3);
    if ((v48 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v46 && v46 != 101)
  {
    *v43 = v46;
    v50 = v55;
    *v55 = 0;
    v50[1] = 0;
  }

  v51 = *(*(v22 + 16) + 32);
  *v7 = v51;
  v58(v7, v59, v3);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v57(v7, v3);
  if ((v51 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v53 = *(v22 + 24);
  if (v53)
  {
    sqlite3_finalize(v53);
    *(v22 + 24) = 0;
  }

  return v27;
}

void *sub_100E23AE4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v78 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  v12 = _dispatchPreconditionTest(_:)();
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v13 = v15;
  v15(v8, v4);
  if ((v12 & 1) == 0)
  {
    goto LABEL_28;
  }

  v79 = v13;
  v77 = v10;
  v80 = v14;
  if (a1)
  {
    v16 = 15649;
  }

  else
  {
    v16 = 15677;
  }

  v82 = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v17._countAndFlagsBits = 0x205443454C4553;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = sub_100E9E2A4(0xD000000000000018, 0x80000001015A31A0);
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x204D4F524620;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._object = 0x80000001015A31A0;
  v20._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x4A2052454E4E4920;
  v21._object = 0xEC000000204E494FLL;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 542002976;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24._object = 0x80000001015A31A0;
  v24._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000011;
  v26._object = 0x80000001015A38C0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 2112800;
  v27._object = 0xE300000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x736472616F62;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._object = 0x8000000101585360;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x20455245485720;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._object = 0x80000001015A31A0;
  v32._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._object = 0x80000001015A33D0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x444E412030203E20;
  v35._object = 0xE900000000000020;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x736472616F62;
  v36._object = 0xE600000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x616E5F72656E776FLL;
  v38._object = 0xEA0000000000656DLL;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 32;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = v16;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 16160;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42 = v82;
  v43 = v83;
  v81 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v45 = v76;
  v46 = sub_10001CC04(v44, v42, v43);
  v76 = v45;
  if (v45)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_7:
      v47 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v49 = Error.localizedDescription.getter();
      v51 = v50;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v49;
      *(inited + 40) = v51;
      v52 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v52, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v49;
    }

LABEL_29:
    swift_once();
    goto LABEL_7;
  }

  v53 = v46;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v54 = *(*(v53 + 16) + 32);
  *v8 = v54;
  v55 = v78;
  v56 = v77;
  v77(v8, v78, v4);
  v57 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v79(v8, v4);
  if ((v54 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v58 = v56;
  v59 = v55;
  v60 = swift_initStackObject();
  v60[3] = 0;
  v61 = v60 + 3;
  v60[4] = 0;
  v75 = v60 + 4;
  v60[5] = 1;
  v60[2] = v53;

  swift_beginAccess();
  v62 = *(*(v53 + 16) + 32);
  *v8 = v62;
  v58(v8, v59, v4);
  v63 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v79(v8, v4);
  if ((v62 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v49 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v61 = 0;
    v60[4] = 0;
    v60[5] = 1;
    v64 = sqlite3_step(*(v53 + 24));
    if (v64 != 100)
    {
      break;
    }

    v65 = swift_retain_n();
    if (sub_100E9E61C(v65, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v74 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v49 = v81;
    }

    else
    {
    }

    v66 = *(*(v53 + 16) + 32);
    *v8 = v66;
    v77(v8, v78, v4);
    v67 = v66;
    LOBYTE(v66) = _dispatchPreconditionTest(_:)();
    v79(v8, v4);
    if ((v66 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v64 && v64 != 101)
  {
    *v61 = v64;
    v68 = v75;
    *v75 = 0;
    v68[1] = 0;
  }

  v69 = *(*(v53 + 16) + 32);
  *v8 = v69;
  v77(v8, v78, v4);
  v70 = v69;
  v71 = _dispatchPreconditionTest(_:)();
  v79(v8, v4);
  if ((v71 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v72 = *(v53 + 24);
  if (v72)
  {
    sqlite3_finalize(v72);
    *(v53 + 24) = 0;
  }

  return v49;
}

void sub_100E24358(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    sub_100E9FABC(v9);
    if (!v10)
    {
      return;
    }

    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_100E9FABC(v5);
  if (!v6)
  {
    return;
  }

LABEL_5:
  v7 = *(a3 + 16);
  os_unfair_lock_lock(v7);

  sub_100BC225C(v8, a1);
  os_unfair_lock_unlock(v7);
}

void sub_100E2441C()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v25 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v25, "Unexpected call to KeyValueTableKey initializer.", 48, 2u);
  StaticString.description.getter("init(rawValue:)", 15, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v10;
  v11 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 6691;
  v13 = v25;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Unexpected call to KeyValueTableKey initializer.", 48, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unexpected call to KeyValueTableKey initializer.");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(rawValue:)", 15, 2);
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unexpected call to KeyValueTableKey initializer.", 48, 2);
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:6691 isFatal:1 format:v22 args:v19];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100E247F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000280F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100E24818(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v41 = a5;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v15 = v9 + 104;
  v14 = *(v9 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v14;
  v14(v12, v10);
  v16 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v45 = *(v9 + 8);
  v45(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = v8;
  v39 = a3;
  v40 = a2;
  a2 = sub_1000280F0();
  v18 = v17;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v20 = v46;
  v21 = sub_10001CC04(v19, 0xD00000000000003ALL, 0x80000001015A68E0);
  v46 = v20;
  if (v20)
  {
    v15 = v18;

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v22 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = a2;
      *(inited + 40) = v15;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v24, "Failed to fetch value for key %@", 32, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v25 = v21;

  sub_1000285F8(a2, v18, 1);

  v26 = *(*(v25 + 16) + 32);
  *v12 = v26;
  v27 = v44;
  v28 = v42;
  v29 = v43;
  v43(v12, v44, v42);
  v30 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v45(v12, v28);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  type metadata accessor for SQLiteRowIterator();
  v31 = swift_initStackObject();
  v31[4] = 0;
  v31[5] = 1;
  v31[2] = v25;
  v31[3] = 0;
  v32 = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v31[3], v31[4], v31[5]);
  if (v32)
  {

    sub_10089C2BC(0, v32);
    v33 = v41;
    *v41 = v34;
    v33[1] = v35;

    if (v40)
    {
      v40(v32, 1);
    }
  }

  v36 = *(*(v25 + 16) + 32);
  *v12 = v36;
  v29(v12, v27, v28);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v45(v12, v28);
  if ((v36 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v38 = *(v25 + 24);
  if (v38)
  {
    sqlite3_finalize(v38);
    *(v25 + 24) = 0;
  }
}

void sub_100E24C64(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a3;
  v56 = a5;
  v57 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  v15 = *(v10 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v62 = v15;
  v15(v13, v11);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v60 = *(v10 + 8);
  v60(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v59 = v10 + 104;
  v67 = a6;
  v58 = sub_1000280F0();
  v18 = v17;
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001015A40C0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x756C61765F79656BLL;
  v20._object = 0xEE00617461645F65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 7955819;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x65756C6176;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6E695F6172747865;
  v26._object = 0xEA00000000006F66;
  String.append(_:)(v26);
  v27._object = 0x80000001015A40E0;
  v27._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v27);
  v28 = v65;
  v29 = v66;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v31 = sub_10001CC04(v30, v28, v29);
  if (v6)
  {

LABEL_18:

    return;
  }

  v32 = v31;

  v54 = v18;
  sub_1000285F8(v58, v18, 1);
  sub_1000285F8(v56, v67, 2);
  v33 = v57;
  if (v57)
  {
    v34 = v55;

    (v33)(v32, 3);
    v35.n128_f64[0] = sub_1000C1014(v33, v34);
    v36 = v60;
    goto LABEL_8;
  }

  v37 = *(*(v32 + 16) + 32);
  *v13 = v37;
  v62(v13, v61, v9);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v36 = v60;
  v60(v13, v9);
  if (v37)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v32 + 24), 3);
LABEL_8:
    v39 = *(*(v32 + 16) + 32);
    *v13 = v39;
    (v62)(v13, v61, v9, v35);
    v40 = v39;
    LOBYTE(v39) = _dispatchPreconditionTest(_:)();
    v36(v13, v9);
    if (v39)
    {
      v41 = *(v32 + 16);

      v42 = sub_10001CEC4(v41, v32);

      if (v42 != 101)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v63 = 0xD00000000000002CLL;
        v64 = 0x80000001015A4100;
        v46._countAndFlagsBits = v58;
        v46._object = v54;
        String.append(_:)(v46);

        v47 = v63;
        v48 = v64;
        sub_10089C7D0();
        swift_allocError();
        *v49 = v42;
        *(v49 + 8) = v47;
        *(v49 + 16) = v48;
        swift_willThrow();
        v50 = *(*(v32 + 16) + 32);
        *v13 = v50;
        v62(v13, v61, v9);
        v51 = v50;
        LOBYTE(v50) = _dispatchPreconditionTest(_:)();
        v60(v13, v9);
        if (v50)
        {
          swift_beginAccess();
          v52 = *(v32 + 24);
          if (v52)
          {
            sqlite3_finalize(v52);
            *(v32 + 24) = 0;
          }

          goto LABEL_17;
        }

        goto LABEL_22;
      }

      v43 = *(*(v32 + 16) + 32);
      *v13 = v43;
      v62(v13, v61, v9);
      v44 = v43;
      LOBYTE(v43) = _dispatchPreconditionTest(_:)();
      v36(v13, v9);
      if (v43)
      {
        swift_beginAccess();
        v45 = *(v32 + 24);
        if (v45)
        {
          sqlite3_finalize(v45);
          *(v32 + 24) = 0;
        }

LABEL_17:

        goto LABEL_18;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
}

void sub_100E25224(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128), uint64_t a3, uint64_t a4, sqlite3_int64 a5)
{
  v58 = a5;
  v59 = a2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v9 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v67 = v9 + 104;
  v62 = v14;
  v14(v12, v10);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v56 = a3;
  v60 = v16;
  v57 = sub_1000280F0();
  v18 = v17;
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001015A40C0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x756C61765F79656BLL;
  v20._object = 0xEE00617461645F65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 7955819;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x65756C6176;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6E695F6172747865;
  v26._object = 0xEA00000000006F66;
  String.append(_:)(v26);
  v27._object = 0x80000001015A40E0;
  v27._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v27);
  v28 = v65;
  v29 = v66;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v31 = sub_10001CC04(v30, v28, v29);
  if (v5)
  {

LABEL_16:

    return;
  }

  v32 = v31;

  v33 = v57;
  sub_1000285F8(v57, v18, 1);
  sub_100034254(v58, 2);
  v34 = v59;
  if (v59)
  {
    v35 = v56;

    (v34)(v32, 3);
    v36.n128_f64[0] = sub_1000C1014(v34, v35);
    v37 = v60;
    goto LABEL_8;
  }

  v38 = *(*(v32 + 16) + 32);
  *v12 = v38;
  v62(v12, v61, v8);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v37 = v60;
  v60(v12, v8);
  if (v38)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v32 + 24), 3);
LABEL_8:
    v40 = *(*(v32 + 16) + 32);
    *v12 = v40;
    (v62)(v12, v61, v8, v36);
    v41 = v40;
    LOBYTE(v40) = _dispatchPreconditionTest(_:)();
    v37(v12, v8);
    if (v40)
    {
      v42 = v18;
      v43 = v33;
      v44 = *(v32 + 16);

      v45 = sub_10001CEC4(v44, v32);

      if (v45 != 101)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v63 = 0xD00000000000002CLL;
        v64 = 0x80000001015A4100;
        v49._countAndFlagsBits = v43;
        v49._object = v42;
        String.append(_:)(v49);

        v50 = v63;
        v51 = v64;
        sub_10089C7D0();
        swift_allocError();
        *v52 = v45;
        *(v52 + 8) = v50;
        *(v52 + 16) = v51;
        swift_willThrow();
        v53 = *(*(v32 + 16) + 32);
        *v12 = v53;
        v62(v12, v61, v8);
        v54 = v53;
        LOBYTE(v53) = _dispatchPreconditionTest(_:)();
        v60(v12, v8);
        if (v53)
        {
          swift_beginAccess();
          v48 = *(v32 + 24);
          if (!v48)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        goto LABEL_20;
      }

      v46 = *(*(v32 + 16) + 32);
      *v12 = v46;
      v62(v12, v61, v8);
      v47 = v46;
      LOBYTE(v46) = _dispatchPreconditionTest(_:)();
      v60(v12, v8);
      if (v46)
      {
        swift_beginAccess();
        v48 = *(v32 + 24);
        if (!v48)
        {
          goto LABEL_16;
        }

LABEL_15:
        sqlite3_finalize(v48);
        *(v32 + 24) = 0;
        goto LABEL_16;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100E257D0(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v74 = a5;
  v62 = a3;
  v64 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  v15 = *(v10 + 104);
  v67 = enum case for DispatchPredicate.onQueue(_:);
  v68 = v15;
  v15(v13, v11);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v66 = *(v10 + 8);
  result = v66(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v63 = v10 + 104;
  v69 = a6;
  v65 = sub_1000280F0();
  v19 = v18;
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x80000001015A40C0;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x756C61765F79656BLL;
  v21._object = 0xEE00617461645F65;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 10272;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 7955819;
  v23._object = 0xE300000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x65756C6176;
  v25._object = 0xE500000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6E695F6172747865;
  v27._object = 0xEA00000000006F66;
  String.append(_:)(v27);
  v28._object = 0x80000001015A40E0;
  v28._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v28);
  v29 = v72;
  v30 = v73;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v32 = sub_10001CC04(v31, v29, v30);
  if (v6)
  {

    v33 = v69;
LABEL_19:
    v51 = v74;
    return sub_10002640C(v51, v33);
  }

  v34 = v32;

  v61 = v19;
  sub_1000285F8(v65, v19, 1);
  v35 = *(*(v34 + 16) + 32);
  *v13 = v35;
  v68(v13, v67, v9);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v37 = v66;
  result = v66(v13, v9);
  v38 = v69;
  if ((v35 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_100DCCAB4(v74, v38, v34, 2);
  v39 = v64;
  if (v64)
  {
    v40 = v62;

    (v39)(v34, 3);
    v37 = v66;
    v41.n128_f64[0] = sub_1000C1014(v39, v40);
    goto LABEL_9;
  }

  v42 = *(*(v34 + 16) + 32);
  *v13 = v42;
  v68(v13, v67, v9);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  result = v37(v13, v9);
  if (v42)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v34 + 24), 3);
LABEL_9:
    v44 = *(*(v34 + 16) + 32);
    *v13 = v44;
    (v68)(v13, v67, v9, v41);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    result = v37(v13, v9);
    if (v44)
    {
      v46 = *(v34 + 16);

      v47 = sub_10001CEC4(v46, v34);

      if (v47 != 101)
      {
        v70 = 0;
        v71 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v70 = 0xD00000000000002CLL;
        v71 = 0x80000001015A4100;
        v52._countAndFlagsBits = v65;
        v52._object = v61;
        String.append(_:)(v52);

        v53 = v70;
        v54 = v71;
        sub_10089C7D0();
        swift_allocError();
        *v55 = v47;
        *(v55 + 8) = v53;
        *(v55 + 16) = v54;
        swift_willThrow();
        v56 = *(*(v34 + 16) + 32);
        *v13 = v56;
        v68(v13, v67, v9);
        v57 = v56;
        LOBYTE(v56) = _dispatchPreconditionTest(_:)();
        result = v66(v13, v9);
        if (v56)
        {
          swift_beginAccess();
          v58 = *(v34 + 24);
          v59 = v69;
          if (v58)
          {
            sqlite3_finalize(v58);
            *(v34 + 24) = 0;
          }

          v33 = v59;
          goto LABEL_19;
        }

        goto LABEL_25;
      }

      v48 = *(*(v34 + 16) + 32);
      *v13 = v48;
      v68(v13, v67, v9);
      v49 = v48;
      LOBYTE(v48) = _dispatchPreconditionTest(_:)();
      result = v37(v13, v9);
      if (v48)
      {
        swift_beginAccess();
        v50 = *(v34 + 24);
        if (v50)
        {
          sqlite3_finalize(v50);
          *(v34 + 24) = 0;
        }

        v51 = v74;
        v33 = v69;
        return sub_10002640C(v51, v33);
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100E25E0C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v9 + 104);
  v38 = enum case for DispatchPredicate.onQueue(_:);
  v39 = v14;
  v37[2] = v9 + 104;
  v14(v12, v10);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v37[0] = v8;
  v37[1] = v9 + 8;
  v40 = v16;
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_10000C83C(a1, v7, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v17 = sub_1000280F0();
  v19 = v18;
  sub_100026028(v7, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, 0xD00000000000003ELL, 0x80000001015A5C10);
  if (v2)
  {

    return;
  }

  v22 = v21;

  sub_1000285F8(v17, v19, 1);
  v23 = *(*(v22 + 16) + 32);
  *v12 = v23;
  v24 = v37[0];
  v39(v12, v38, v37[0]);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v40(v12, v24);
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = *(v22 + 16);

  v27 = sub_10001CEC4(v26, v22);

  if (v27 != 101)
  {
    goto LABEL_8;
  }

  v28 = *(*(v22 + 16) + 32);
  *v12 = v28;
  v39(v12, v38, v24);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v40(v12, v24);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v41 = 0xD000000000000021;
    v42 = 0x80000001015A5C50;
    v30._countAndFlagsBits = v17;
    v30._object = v19;
    String.append(_:)(v30);

    v31 = v41;
    v32 = v42;
    sub_10089C7D0();
    swift_allocError();
    *v33 = v27;
    *(v33 + 8) = v31;
    *(v33 + 16) = v32;
    swift_willThrow();
    v34 = *(*(v22 + 16) + 32);
    *v12 = v34;
    v39(v12, v38, v24);
    v35 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v40(v12, v24);
    if (v34)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
  }

LABEL_9:
  swift_beginAccess();
  v36 = *(v22 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v22 + 24) = 0;
  }
}

void sub_100E262B8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v36 = enum case for DispatchPredicate.onQueue(_:);
  v37 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v35 = v2;
  v38 = v10;
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v34 = sub_1000280F0();
  v12 = v11;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD00000000000002ALL, 0x80000001015A61B0);
  if (v1)
  {

    return;
  }

  v15 = v14;

  v16 = v34;
  sub_1000285F8(v34, v12, 1);
  v17 = *(*(v15 + 16) + 32);
  *v6 = v17;
  v18 = v35;
  v37(v6, v36, v35);
  v19 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v38(v6, v18);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = v16;
  v21 = *(v15 + 16);

  v22 = sub_10001CEC4(v21, v15);

  if (v22 != 101)
  {
    goto LABEL_8;
  }

  v23 = *(*(v15 + 16) + 32);
  *v6 = v23;
  v12 = v35;
  v37(v6, v36, v35);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v38(v6, v12);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v39 = 0xD000000000000021;
    v40 = 0x80000001015A5C50;
    v25._countAndFlagsBits = v20;
    v25._object = v12;
    String.append(_:)(v25);

    v26 = v39;
    v27 = v40;
    sub_10089C7D0();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v26;
    *(v28 + 16) = v27;
    swift_willThrow();
    v29 = *(*(v15 + 16) + 32);
    *v6 = v29;
    v30 = v35;
    v37(v6, v36, v35);
    v31 = v29;
    LOBYTE(v29) = _dispatchPreconditionTest(_:)();
    v38(v6, v30);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
  }

LABEL_9:
  swift_beginAccess();
  v32 = *(v15 + 24);
  if (v32)
  {
    sqlite3_finalize(v32);
    *(v15 + 24) = 0;
  }
}

uint64_t sub_100E266C0(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12[0] = 0;
    v12[1] = 0;
    sub_100E24818(a1, 0, 0, v1, v12);
    if (v2)
    {
    }

    else
    {
      return v12[0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E26818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8[2] = a2;
  v9 = a3 & 1;
  v10 = a1;
  v11 = a4;
  result = sub_10002FA9C(sub_100EA5FB8, v8);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_100E2687C(sqlite3_int64 a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_100E262B8();
    return 1;
  }

  v13 = *(a3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_100E25224(a4, 0, 0, a3, a1);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E269DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 >> 60 == 15)
  {
    sub_100E262B8();
    return 1;
  }

  v13 = *(a3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  sub_100024E84(a1, a2);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_100024E84(a1, a2);
    sub_100E257D0(a4, 0, 0, a3, a1, a2);
    sub_100025870(a1, a2);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E26BA8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_10002FA9C(sub_100EA3110, v3);
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

void sub_100E26D48(uint64_t a1)
{
  v3 = v1;
  v67 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v67);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for String.Encoding();
  v71 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v74 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v66 = v13;
  __chkstk_darwin(v14);
  v73 = &v61 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = v3;
  v21 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16, v18);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
LABEL_23:
    __break(1u);
  }

  v75 = v2;
  v64 = v6;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 56);
  v28 = (v25 + 63) >> 6;
  v61 = (v71 + 8);

  v29 = 0;
  v69 = xmmword_10146C6B0;
  v71 = v12;
  v30 = a1;
  v70 = v28;
  v72 = a1;
LABEL_7:
  if (v27)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
LABEL_12:
      v32 = v73;
      sub_10000C83C(*(v30 + 48) + *(v74 + 72) * (__clz(__rbit64(v27)) | (v29 << 6)), v73, type metadata accessor for CRLBoardIdentifier);
      sub_100025668(v32, v12, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for CRLBoardIdentifierStorage(0);
      v76 = UUID.uuid.getter();
      v77 = v33;
      v78 = v34;
      v79 = v35;
      v80 = v36;
      v81 = v37;
      v82 = v38;
      v83 = v39;
      v84 = v40;
      UUID.uuid.getter();
      v41 = sub_100024DD4(&v76, 0x10uLL);
      v43 = v42;
      v85 = v41;
      v86 = v42;
      if (String.count.getter() >= 1)
      {
        v44 = v62;
        static String.Encoding.utf8.getter();
        v45 = String.data(using:allowLossyConversion:)();
        v47 = v46;
        (*v61)(v44, v63);
        if (v47 >> 60 == 15)
        {
          sub_10084DC7C();
          swift_allocError();
          *v48 = 2;
          swift_willThrow();
          sub_10002640C(v85, v86);
          goto LABEL_18;
        }

        Data.append(_:)();
        sub_100025870(v45, v47);
        v41 = v85;
        v43 = v86;
      }

      v49 = v64;
      sub_10000C83C(v12, v64, type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v50 = v12;
      v51 = v65;
      sub_10000C83C(v50, v65, type metadata accessor for CRLBoardIdentifier);
      v52 = (*(v74 + 80) + 16) & ~*(v74 + 80);
      v53 = swift_allocObject();
      sub_100025668(v51, v53 + v52, type metadata accessor for CRLBoardIdentifier);
      sub_100024E98(v41, v43);
      v54 = v75;
      sub_100E257D0(v49, sub_100EA313C, v53, v68, v41, v43);
      if (v54)
      {
        sub_100026028(v49, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

        sub_10002640C(v41, v43);
LABEL_18:
        v75 = 0;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v55 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = v69;
        swift_getErrorValue();
        v57 = Error.localizedDescription.getter();
        v59 = v58;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v57;
        *(inited + 40) = v59;
        v60 = static os_log_type_t.error.getter();
        sub_100005404(v55, &_mh_execute_header, v60, "Failed to add shared boards deleted offline to the database with error %@", 73, 2, inited);

        swift_setDeallocating();
        sub_100005070((inited + 32));
      }

      else
      {
        v75 = 0;
        sub_100026028(v49, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

        sub_10002640C(v41, v43);
      }

      v30 = v72;
      v27 &= v27 - 1;
      v12 = v71;
      sub_100026028(v71, type metadata accessor for CRLBoardIdentifier);
      v28 = v70;
      goto LABEL_7;
    }
  }
}

uint64_t sub_100E27568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[1] == 0xE000000000000000;
  }

  if (v5)
  {
    v6 = 49;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v6 = 49;
  }

  else
  {
    v6 = 48;
  }

  sub_1000285F8(v6, 0xE100000000000000, a2);
}

uint64_t sub_100E27628(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C83C(a2, v5, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  sub_100E262B8();
  sub_100026028(v5, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  return 1;
}

void sub_100E27740(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v62 = a6;
  v59 = a3;
  v60 = a4;
  v65 = a1;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v9 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v11 = *(v63 - 8);
  v53 = *(v11 + 64);
  __chkstk_darwin(v63);
  v52 = &v40 - v12;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v51 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v14;
  __chkstk_darwin(v15);
  v48 = &v40 - v16;
  v17 = *(a2 + 56);
  v41 = a2 + 56;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v47 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue;
  v40 = (v18 + 63) >> 6;
  v46 = v11 + 16;
  v54 = v11;
  v45 = v11 + 32;
  v44 = v70;
  v43 = (v7 + 8);
  v42 = (v9 + 8);
  v64 = a2;

  v21 = 0;
  while (v20)
  {
    v22 = v21;
LABEL_9:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v24 = v51;
    v25 = v48;
    sub_10000C83C(*(v64 + 48) + *(v51 + 72) * (v23 | (v22 << 6)), v48, type metadata accessor for CRLBoardIdentifier);
    v26 = v59;
    v27 = *&v59[v47];
    v66 = type metadata accessor for CRLBoardIdentifier;
    v67 = v27;
    v28 = v49;
    sub_100025668(v25, v49, type metadata accessor for CRLBoardIdentifier);
    v29 = v54;
    v30 = v52;
    v31 = v63;
    (*(v54 + 16))(v52, v65, v63);
    v32 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v33 = (v50 + *(v29 + 80) + v32) & ~*(v29 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v26;
    sub_100025668(v28, v34 + v32, v66);
    (*(v29 + 32))(v34 + v33, v30, v31);
    v70[2] = v61;
    v70[3] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    v70[0] = sub_100007638;
    v70[1] = v62;
    v35 = _Block_copy(aBlock);
    v36 = v26;
    v37 = v55;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v39 = v57;
    v38 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*v43)(v39, v38);
    (*v42)(v37, v56);
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v40)
    {

      CheckedContinuation.resume(returning:)();
      return;
    }

    v20 = *(v41 + 8 * v22);
    ++v21;
    if (v20)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100E27D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  return sub_10002FA9C(a4, v5);
}

double sub_100E27F08(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v23 - v16;
  v23[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v14 + 16))(v23 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a2;
  *(v19 + 4) = v23[0];
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_100EA2350;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5190;
  v20 = _Block_copy(aBlock);

  v21 = a2;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);

  return result;
}

uint64_t sub_100E282C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1009DF770(a1);
  v14[51] = v6;
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  sub_10002FA9C(sub_100EA23C4, v14);
  if (qword_1019F2160 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlZoneRefetch;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  *(inited + 32) = a3;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v7;
  *(inited + 80) = v9;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v12, "Succeeded addZonesToRefetch to the database with version: %d, zones: %@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2863C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v44 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v44);
  v45 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v48[1];
    v13 = v48[2];
    v14 = v48[3];
    v15 = v48[4];
    v16 = v48[5];
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = (a1 + 56);
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = (v19 & *(a1 + 56));

    v15 = 0;
  }

  v20 = v45;
  v40[1] = v14;
  v21 = (v14 + 64) >> 6;
  v41 = v13;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
    return sub_100035F90(a1);
  }

  v47 = v22;
  sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
  swift_dynamicCast();
  v23 = v48[0];
  v24 = v15;
  v25 = v16;
  if (!v48[0])
  {
    return sub_100035F90(a1);
  }

  while (1)
  {
    v40[3] = v15;
    *v20 = v23;
    swift_storeEnumTagMultiPayload();
    v28 = objc_opt_self();
    v48[0] = 0;
    v29 = v23;
    v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:v48];
    v31 = v48[0];
    if (!v30)
    {
      v39 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100035F90(a1);
      return sub_100026028(v20, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }

    v40[2] = v16;
    v32 = a1;
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = swift_allocObject();
    *(v36 + 16) = v42;
    sub_100024E98(v33, v35);
    v37 = v46;
    sub_100E257D0(v20, sub_100EA23F4, v36, v43, v33, v35);
    sub_100026028(v20, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    v46 = v37;
    if (v37)
    {
      break;
    }

    sub_10002640C(v33, v35);
    v15 = v24;
    v16 = v25;
    v20 = v45;
    a1 = v32;
    v13 = v41;
    if (a1 < 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v26 = v15;
    v27 = v16;
    v24 = v15;
    if (!v16)
    {
      while (1)
      {
        v24 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          return sub_100035F90(a1);
        }

        v27 = v13[v24];
        ++v26;
        if (v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

LABEL_16:
    v25 = (v27 - 1) & v27;
    v23 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v23)
    {
      return sub_100035F90(a1);
    }
  }

  sub_100035F90(v32);
  return sub_10002640C(v33, v35);
}

uint64_t sub_100E28CF4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
  v4[5] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;

  return _swift_task_switch(sub_100E28DE4, 0, 0);
}

uint64_t sub_100E28DE4()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100E28EE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001DLL, 0x80000001015A8E80, sub_100EA4C28, v4, &type metadata for () + 8);
}

uint64_t sub_100E28EE8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100E29088;
  }

  else
  {

    v2 = sub_100E2900C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E2900C()
{
  v1 = *(v0 + 32);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E29088()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

double sub_100E29244(uint64_t a1, void *a2, char *a3)
{
  v31 = a2;
  v32 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  *(&v30 - v16) = a2;
  v17 = &v30 - v16;
  v34 = &v30 - v16;
  swift_storeEnumTagMultiPayload();
  v33 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v17, v14, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v8 + 16))(v10, v32, v7);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v8 + 80) + v19 + 8) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  sub_100025668(v14, v21 + v18, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  v22 = v31;
  *(v21 + v19) = v31;
  (*(v8 + 32))(v21 + v20, v10, v7);
  aBlock[4] = sub_100EA4A50;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A61D0;
  v23 = _Block_copy(aBlock);
  v24 = v22;
  v25 = a3;
  v26 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v27 = v36;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v39);
  sub_100026028(v34, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

  return result;
}

uint64_t sub_100E29744(uint64_t a1, uint64_t a2, void *a3)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_10002FA9C(sub_100EA4B3C, v12);
  if (qword_1019F2160 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlZoneRefetch;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v6 = [a3 zoneName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v10, "Succeeded removeZoneToRefetch to the database with zone: %@", 59, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E29BCC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100E29C58, 0, 0);
}

uint64_t sub_100E29C58()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100E29D44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000017, 0x80000001015A8DC0, sub_100EA4A48, v1, &type metadata for () + 8);
}

uint64_t sub_100E29D44()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100EA61F4;
  }

  else
  {

    v2 = sub_100EA61BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

double sub_100E29E60(uint64_t a1, uint64_t a2, char *a3)
{
  v42 = a1;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v7 = *(v40 - 8);
  v41 = *(v7 + 64);
  __chkstk_darwin(v40);
  v9 = &v36 - v8;
  v37 = &v36 - v8;
  v10 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = (&v36 - v16);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v38 = a2;
  *(&v36 - v19) = a2;
  v45 = &v36 - v19;
  swift_storeEnumTagMultiPayload();
  *v17 = a2;
  v44 = v17;
  swift_storeEnumTagMultiPayload();
  v43 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v20, v14, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  sub_10000C83C(v17, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  v21 = v9;
  v22 = v40;
  (*(v7 + 16))(v21, v42, v40);
  v23 = *(v39 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = (v11 + v23 + v24) & ~v23;
  v26 = (v11 + *(v7 + 80) + v25) & ~*(v7 + 80);
  v27 = swift_allocObject();
  v28 = v38;
  *(v27 + 16) = a3;
  *(v27 + 24) = v28;
  sub_100025668(v14, v27 + v24, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  sub_100025668(v36, v27 + v25, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v7 + 32))(v27 + v26, v37, v22);
  aBlock[4] = sub_100EA483C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6108;
  v29 = _Block_copy(aBlock);
  v30 = v28;
  v31 = a3;
  v32 = v46;
  static DispatchQoS.unspecified.getter();
  v52 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v33 = v47;
  v34 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v51 + 8))(v33, v34);
  (*(v48 + 8))(v32, v50);
  sub_100026028(v44, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  sub_100026028(v45, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

  return result;
}

uint64_t sub_100E2A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_10002FA9C(sub_100EA4928, v5);
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2A5C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10001FF1C();
  v7 = sub_100034E18(v6);
  if (!v4)
  {
    v8 = sub_10079DB58(a2, v7);

    if (v8)
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.crlZoneRefetch;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v11 = [a2 zoneName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v12;
      v15 = v9;
      *(inited + 40) = v14;
      v16 = static os_log_type_t.default.getter();
      sub_100005404(v9, &_mh_execute_header, v16, "Removing zone to refetch after successful refetch: %@", 53, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      sub_100E262B8();
      v17 = sub_100DE4F8C();
    }

    else
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.crlZoneRefetch;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_10146C6B0;
      v19 = [a2 zoneName];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_1000053B0();
      *(v18 + 32) = v20;
      *(v18 + 40) = v22;
      v23 = static os_log_type_t.default.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "Not removing zone to refetch, since it still needs to be refetched: %@", 70, 2, v18);
      swift_setDeallocating();
      sub_100005070((v18 + 32));
      v17 = sub_100DE4F8C();
    }

    v24 = sub_10079DB58(a2, v17);

    if (v24)
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_10146C6B0;
      v26 = [a2 zoneName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000053B0();
      *(v25 + 32) = v27;
      *(v25 + 40) = v29;
      v30 = static os_log_type_t.default.getter();
      sub_100005404(v15, &_mh_execute_header, v30, "Removing unsupported zone to refetch after successful refetch: %@", 65, 2, v25);
      swift_setDeallocating();
      sub_100005070((v25 + 32));
      sub_100E262B8();
    }

    else
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_10146C6B0;
      v32 = [a2 zoneName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_1000053B0();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      v36 = static os_log_type_t.default.getter();
      sub_100005404(v15, &_mh_execute_header, v36, "Not removing unsupported zone to refetch (it may not exist, or maybe it still needs to be refetched): %@", 104, 2, v31);
      swift_setDeallocating();
      sub_100005070((v31 + 32));
    }
  }

  return 1;
}

uint64_t sub_100E2ABD8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100E2AC64, 0, 0);
}

uint64_t sub_100E2AC64()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100E2AD50;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD00000000000002FLL, 0x8000000101590760, sub_100BF5AEC, v1, &type metadata for () + 8);
}

uint64_t sub_100E2AD50()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100E2AEF0;
  }

  else
  {

    v2 = sub_100E2AE6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E2AE6C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E2AEF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

double sub_100E2AFA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v25 = a4;
  v26 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v25 - v18;
  v27 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v16 + 16))(&v25 - v18, a1, v15, v17);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v16 + 32))(v21 + v20, v19, v15);
  aBlock[4] = v26;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v28;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v31 + 8))(v11, v9);
  (*(v29 + 8))(v14, v30);

  return result;
}

uint64_t sub_100E2B348(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_10002FA9C(sub_100EA475C, v3);
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2B4E8(uint64_t a1)
{
  v43 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v43);
  v4 = (v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v1;
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v47[1];
    v13 = v47[2];
    v14 = v47[3];
    v15 = v47[4];
    v16 = v47[5];
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = (a1 + 56);
    v18 = ~v17;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = (v20 & *(a1 + 56));

    v14 = v18;
    v15 = 0;
  }

  v40[0] = v14;
  v21 = (v14 + 64) >> 6;
  v41 = v13;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
    return sub_100035F90(a1);
  }

  v46 = v22;
  sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
  swift_dynamicCast();
  v23 = v47[0];
  v24 = v15;
  v25 = v16;
  if (!v47[0])
  {
    return sub_100035F90(a1);
  }

  while (1)
  {
    v40[2] = v15;
    *v4 = v23;
    swift_storeEnumTagMultiPayload();
    v28 = objc_opt_self();
    v47[0] = 0;
    v29 = v23;
    v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:{v47, v40[0]}];
    v31 = v47[0];
    if (!v30)
    {
      v39 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100035F90(a1);
      return sub_100026028(v4, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }

    v40[1] = v16;
    v44 = v29;
    v32 = a1;
    v33 = v4;
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_100024E98(v34, v36);
    v37 = v45;
    sub_100E257D0(v33, sub_100E2BF30, 0, v42, v34, v36);
    sub_100026028(v33, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

    v45 = v37;
    if (v37)
    {
      break;
    }

    sub_10002640C(v34, v36);
    v15 = v24;
    v16 = v25;
    v4 = v33;
    a1 = v32;
    v13 = v41;
    if (v32 < 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v26 = v15;
    v27 = v16;
    v24 = v15;
    if (!v16)
    {
      while (1)
      {
        v24 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          return sub_100035F90(a1);
        }

        v27 = v13[v24];
        ++v26;
        if (v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

LABEL_16:
    v25 = (v27 - 1) & v27;
    v23 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v23)
    {
      return sub_100035F90(a1);
    }
  }

  sub_100035F90(v32);
  return sub_10002640C(v34, v36);
}

uint64_t sub_100E2BB74(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
  v3[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a3;

  return _swift_task_switch(sub_100E2BC64, 0, 0);
}

uint64_t sub_100E2BC64()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100E2BD5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000020, 0x80000001015A8B80, sub_100EA462C, v3, &type metadata for () + 8);
}

uint64_t sub_100E2BD5C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100E2BE80;
  }

  else
  {

    v2 = sub_100EA630C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E2BE80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

double sub_100E2C058(uint64_t a1, void *a2, char *a3)
{
  v28 = a2;
  v29 = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  *(&v28 - v16) = a2;
  swift_storeEnumTagMultiPayload();
  v30 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v17, v14, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v8 + 16))(v10, v29, v7);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v13 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  sub_100025668(v14, v20 + v18, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v8 + 32))(v20 + v19, v10, v7);
  aBlock[4] = sub_100EA453C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5F78;
  v21 = _Block_copy(aBlock);
  v22 = v28;
  v23 = a3;
  v24 = v31;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v25 = v32;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v36 + 8))(v25, v26);
  (*(v33 + 8))(v24, v35);
  sub_100026028(v17, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

  return result;
}

uint64_t sub_100E2C540(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_10002FA9C(sub_100EA6364, v3);
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2C868(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100E2C8F4, 0, 0);
}

uint64_t sub_100E2C8F4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100E29D44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000022, 0x80000001015A8B00, sub_100EA4534, v1, &type metadata for () + 8);
}

uint64_t sub_100E2C9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  result = sub_10002FA9C(sub_100EA61C0, v8);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

void sub_100E2CA3C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v5 = v3;
  v60 = a2;
  v61 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v11 = v12;
  v13 = *(v8 + 104);
  v62 = enum case for DispatchPredicate.onQueue(_:);
  v63 = v13;
  v13(v11, v9);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v64 = *(v8 + 8);
  v64(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v59 = a3;
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x80000001015A5660;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x737465737361;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x75755F7465737361;
  v18._object = 0xEA00000000006469;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x6F69736E65747865;
  v20._object = 0xE90000000000006ELL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6E6F7473626D6F74;
  v22._object = 0xEE00657461645F65;
  String.append(_:)(v22);
  v23._object = 0x80000001015A5680;
  v23._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v23);
  v24 = v67;
  v25 = v68;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = sub_10001CC04(v26, v24, v25);

  if (v4)
  {
    return;
  }

  v58 = v5;
  v29 = UUID.crl_data()(v28);
  v31 = v30;
  v32 = *(*(v27 + 16) + 32);
  *v11 = v32;
  v63(v11, v62, v7);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v64(v11, v7);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v29, v31, v27, 1);
  sub_10002640C(v29, v31);
  if (!v59)
  {
    goto LABEL_9;
  }

  v34 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v34 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    sub_1000285F8(v60, v59, 2);
  }

  else
  {
LABEL_9:
    v35 = *(*(v27 + 16) + 32);
    *v11 = v35;
    v63(v11, v62, v7);
    v36 = v35;
    LOBYTE(v35) = _dispatchPreconditionTest(_:)();
    v64(v11, v7);
    if ((v35 & 1) == 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    swift_beginAccess();
    sqlite3_bind_null(*(v27 + 24), 2);
  }

  v37 = *(*(v27 + 16) + 32);
  *v11 = v37;
  v63(v11, v62, v7);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v64(v11, v7);
  if ((v37 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = *(v27 + 16);

  v40 = sub_10001CEC4(v39, v27);

  if (v40 == 101)
  {
    v41 = v58;
    v57 = *&v58[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v57 + 16));
    v40 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v42 = *&v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v42)
    {
      v43 = *&v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      goto LABEL_18;
    }

LABEL_17:
    v49 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v56 = v41;
    v50 = sub_10001F1A0(v56);

    v56 = *&v41[v40];
    *&v41[v40] = v50;
    v43 = v50;

    v42 = 0;
LABEL_18:
    v51 = *(v57 + 16);
    v52 = v42;
    os_unfair_lock_unlock(v51);
    sub_10108BDC8(v61, v60, v59);

    v53 = *(*(v27 + 16) + 32);
    *v11 = v53;
    v63(v11, v62, v7);
    v54 = v53;
    LOBYTE(v53) = _dispatchPreconditionTest(_:)();
    v64(v11, v7);
    if (v53)
    {
      goto LABEL_19;
    }

LABEL_27:
    __break(1u);
  }

  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v65 = 0xD00000000000002ALL;
  v66 = 0x80000001015A56A0;
  type metadata accessor for UUID();
  sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v44);

  v45 = v65;
  v41 = v66;
  sub_10089C7D0();
  swift_allocError();
  *v46 = v40;
  *(v46 + 8) = v45;
  *(v46 + 16) = v41;
  swift_willThrow();
  v47 = *(*(v27 + 16) + 32);
  *v11 = v47;
  v63(v11, v62, v7);
  v48 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v64(v11, v7);
  if ((v47 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  swift_beginAccess();
  v55 = *(v27 + 24);
  if (v55)
  {
    sqlite3_finalize(v55);
    *(v27 + 24) = 0;
  }
}

double sub_100E2D30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *&v5[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = (v18 + v17);
  v20 = v28;
  *v19 = v27;
  v19[1] = v20;
  v21 = (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8));
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  aBlock[4] = sub_100EA2730;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A54B0;
  v23 = _Block_copy(aBlock);

  v24 = v5;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v35 + 8))(v8, v25);
  (*(v32 + 8))(v10, v34);

  return result;
}