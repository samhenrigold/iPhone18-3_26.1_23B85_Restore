uint64_t sub_100E2D6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  sub_10002FA9C(sub_100EA27D4, v7);
  return a5(0, 0);
}

uint64_t sub_100E2D894@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100E2D8C8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100E2D8C8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v3 + 104);
  v55 = v3 + 104;
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v12 = *(v3 + 8);
  v11 = v3 + 8;
  v53 = v12;
  v12(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v56 = v8;
  v52 = v9;
  v54 = v11;
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v57 = 0x205443454C4553;
  v58 = 0xE700000000000000;
  v13._countAndFlagsBits = sub_100E9D0C0(0, 0xE000000000000000);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x204D4F524620;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x737465737361;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x2820455245485720;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x75755F7465737361;
  v17._object = 0xEA00000000006469;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x293F203D20;
  v18._object = 0xE500000000000000;
  String.append(_:)(v18);
  v19 = v57;
  v20 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);
  if (!v1)
  {
    v29 = v22;

    v31 = UUID.crl_data()(v30);
    v51 = v32;
    v33 = *(*(v29 + 16) + 32);
    *v6 = v33;
    v34 = v52;
    v52(v6, v56, v2);
    v35 = v33;
    LOBYTE(v33) = _dispatchPreconditionTest(_:)();
    v36 = v53;
    v53(v6, v2);
    if (v33)
    {

      v37 = v51;
      sub_100DCCAB4(v31, v51, v29, 1);
      v50[1] = 0;
      sub_10002640C(v31, v37);
      v38 = *(*(v29 + 16) + 32);
      *v6 = v38;
      v34(v6, v56, v2);
      v39 = v38;
      LOBYTE(v38) = _dispatchPreconditionTest(_:)();
      v36(v6, v2);
      if (v38)
      {
        type metadata accessor for SQLiteRowIterator();
        inited = swift_initStackObject();
        inited[4] = 0;
        inited[5] = 1;
        inited[2] = v29;
        inited[3] = 0;

        v41 = sub_10001E1D0();
        if (!v41)
        {

          swift_setDeallocating();
          sub_10001E364(inited[3], inited[4], inited[5]);
          v48 = *(*(v29 + 16) + 32);
          *v6 = v48;
          v34(v6, v56, v2);
          v49 = v48;
          LOBYTE(v48) = _dispatchPreconditionTest(_:)();
          v36(v6, v2);
          if (v48)
          {
            v45 = (v29 + 24);
            swift_beginAccess();
            v25 = 0;
            v46 = *(v29 + 24);
            if (!v46)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }

LABEL_21:
          __break(1u);
        }

        v25 = sub_100E9D20C(v41, 0);

        swift_setDeallocating();
        sub_10001E364(inited[3], inited[4], inited[5]);
        v42 = *(*(v29 + 16) + 32);
        *v6 = v42;
        v34(v6, v56, v2);
        v43 = v42;
        v44 = _dispatchPreconditionTest(_:)();
        v36(v6, v2);
        if (v44)
        {
          v45 = (v29 + 24);
          swift_beginAccess();
          v46 = *(v29 + 24);
          if (!v46)
          {
LABEL_11:

            return v25;
          }

LABEL_10:
          sqlite3_finalize(v46);
          *v45 = 0;
          goto LABEL_11;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_1019F2258 != -1)
  {
LABEL_17:
    swift_once();
  }

  v23 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v25 = Error.localizedDescription.getter();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1000053B0();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v28, "Failed to fetch an asset with error %@", 38, 2, v24);
  swift_setDeallocating();
  sub_100005070((v24 + 32));
  swift_willThrow();
  return v25;
}

double sub_100E2DF64(uint64_t a1, char *a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A21E58, &unk_1014B6810);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v11 + 16))(v14, v24, v10, v13);
  (*(v7 + 16))(v9, v25, v6);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v7 + 32))(v17 + v16, v9, v6);
  aBlock[4] = sub_100EA2804;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5500;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = v26;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v21 = v28;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v32 + 8))(v21, v22);
  (*(v29 + 8))(v20, v31);

  return result;
}

uint64_t sub_100E2E3F0()
{
  sub_100E2D8C8();
  sub_1005B981C(&qword_101A21E58, &unk_1014B6810);
  return CheckedContinuation.resume(returning:)();
}

double sub_100E2E488(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v30 = a1;
  v31 = a3;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A21E58, &unk_1014B6810);
  v29 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v13 + 16))(v16, v31, v12, v15);
  (*(v9 + 16))(v11, v30, v8);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v9 + 80) + v18 + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v13 + 32))(v20 + v17, v16, v12);
  v21 = (v20 + v18);
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  (*(v9 + 32))(v20 + v19, v11, v29);
  aBlock[4] = sub_100EA55F0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A69C8;
  v23 = _Block_copy(aBlock);

  v24 = a2;
  v25 = v32;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v26 = v36;
  v27 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v40 + 8))(v26, v27);
  (*(v37 + 8))(v25, v39);

  return result;
}

uint64_t sub_100E2E93C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  sub_100E2E9DC(a2, a3, a4);
  sub_1005B981C(&qword_101A21E58, &unk_1014B6810);
  return CheckedContinuation.resume(returning:)();
}

void sub_100E2E9DC(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v7 = sub_100E2D8C8();
  if (v3)
  {
    return;
  }

  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
    if (!v8)
    {
      if (!a3)
      {
        return;
      }

      goto LABEL_22;
    }

    if (!a3 || (*(v7 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension) == a2 ? (v9 = v8 == a3) : (v9 = 0), !v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
LABEL_22:
      v60 = objc_opt_self();
      v13 = [v60 _atomicIncrementAssertCount];
      v62 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v62, "Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists!", 77, 2u);
      StaticString.description.getter("_ensureAssetDatabaseRowExists(assetUUID:fileExtension:)", 55, 2);
      v14 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v15 = String._bridgeToObjectiveC()();

      v16 = [v15 lastPathComponent];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v13;
      v22 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v22;
      v23 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v23;
      *(inited + 72) = v14;
      *(inited + 136) = &type metadata for String;
      v24 = sub_1000053B0();
      *(inited + 112) = v17;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v24;
      *(inited + 152) = 7459;
      v25 = v62;
      *(inited + 216) = v22;
      *(inited + 224) = v23;
      *(inited + 192) = v25;
      v26 = v14;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v29, "Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists!", 77, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v30 = swift_allocObject();
      v30[2] = 8;
      v30[3] = 0;
      v30[4] = 0;
      v30[5] = 0;
      v31 = __VaListBuilder.va_list()();
      StaticString.description.getter("_ensureAssetDatabaseRowExists(assetUUID:fileExtension:)", 55, 2);
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists!", 77, 2);
      v34 = String._bridgeToObjectiveC()();

      [v60 handleFailureInFunction:v32 file:v33 lineNumber:7459 isFatal:0 format:v34 args:v31];
LABEL_25:
    }
  }

  else
  {
    sub_100E2CA3C(a1, a2, a3);
    v10 = sub_100E2D8C8();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
      if (v11)
      {
        if (a3)
        {
          v12 = *(v10 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension) == a2 && v11 == a3;
          if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return;
          }
        }
      }

      else if (!a3)
      {
        return;
      }

      v61 = objc_opt_self();
      v41 = [v61 _atomicIncrementAssertCount];
      v62 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v62, "Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists (even after just creating it)!", 107, 2u);
      StaticString.description.getter("_ensureAssetDatabaseRowExists(assetUUID:fileExtension:)", 55, 2);
      v42 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v43 = String._bridgeToObjectiveC()();

      v44 = [v43 lastPathComponent];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v48 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_10146CA70;
      *(v49 + 56) = &type metadata for Int32;
      *(v49 + 64) = &protocol witness table for Int32;
      *(v49 + 32) = v41;
      v50 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v49 + 96) = v50;
      v51 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v49 + 104) = v51;
      *(v49 + 72) = v42;
      *(v49 + 136) = &type metadata for String;
      v52 = sub_1000053B0();
      *(v49 + 112) = v45;
      *(v49 + 120) = v47;
      *(v49 + 176) = &type metadata for UInt;
      *(v49 + 184) = &protocol witness table for UInt;
      *(v49 + 144) = v52;
      *(v49 + 152) = 7466;
      v53 = v62;
      *(v49 + 216) = v50;
      *(v49 + 224) = v51;
      *(v49 + 192) = v53;
      v54 = v42;
      v55 = v53;
      v56 = static os_log_type_t.error.getter();
      sub_100005404(v48, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v49);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v57 = static os_log_type_t.error.getter();
      sub_100005404(v48, &_mh_execute_header, v57, "Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists (even after just creating it)!", 107, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v58 = swift_allocObject();
      v58[2] = 8;
      v58[3] = 0;
      v58[4] = 0;
      v58[5] = 0;
      v59 = __VaListBuilder.va_list()();
      StaticString.description.getter("_ensureAssetDatabaseRowExists(assetUUID:fileExtension:)", 55, 2);
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists (even after just creating it)!", 107, 2);
      v34 = String._bridgeToObjectiveC()();

      [v61 handleFailureInFunction:v32 file:v33 lineNumber:7466 isFatal:0 format:v34 args:v59];
      goto LABEL_25;
    }

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_10146C6B0;
    v37 = UUID.uuidString.getter();
    v39 = v38;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_1000053B0();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v40, "Failed to _ensureAssetDatabaseRowExists for asset: %{public}@", 61, 2, v36);
    swift_setDeallocating();
    sub_100005070((v36 + 32));
  }
}

BOOL sub_100E2F2E8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v135 = &v116 - v6;
  v136 = type metadata accessor for UUID();
  v131 = *(v136 - 8);
  __chkstk_darwin(v136);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v116 - v10;
  __chkstk_darwin(v12);
  v121 = &v116 - v13;
  __chkstk_darwin(v14);
  v134 = &v116 - v15;
  __chkstk_darwin(v16);
  v126 = (&v116 - v17);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v22 = v23;
  v24 = *(v19 + 104);
  v128 = enum case for DispatchPredicate.onQueue(_:);
  v129 = v19 + 104;
  v133 = v24;
  v24(v22, v20);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v26 = *(v19 + 8);
  v130 = v19 + 8;
  v137 = v26;
  v26(v22, v18);
  if ((v23 & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = *(a1 + 16);
  if (!v27)
  {
    return 1;
  }

  v117 = v11;
  v118 = v8;
  v127 = a1;
  v148 = sub_1000341B8(0x3F, 0xE100000000000000, v27);
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  v148 = 0;
  v149 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v148 = 0xD000000000000034;
  v149 = 0x80000001015AB5B0;
  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 10537;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33 = v148;
  v34 = v149;
  v138 = _swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v36 = sub_10001CC04(v35, v33, v34);
  if (v2)
  {

    if (qword_1019F2258 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_5;
  }

  v44 = v36;
  v125 = 0;

  v45 = v127;
  v46 = v127 + 56;
  v47 = 1 << *(v127 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v127 + 56);

  swift_beginAccess();
  v132 = 0;
  v50 = 0;
  v51 = (v47 + 63) >> 6;
  v124 = (v131 + 16);
  v123 = (v131 + 32);
  v122 = (v131 + 8);
  v120 = v46;
  v119 = v51;
LABEL_10:
  v52 = v137;
  if (v49)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v53 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v53 >= v51)
    {
      break;
    }

    v49 = *(v46 + 8 * v53);
    ++v50;
    if (v49)
    {
      v50 = v53;
LABEL_15:
      v54 = *(v45 + 48);
      v55 = v131;
      v56 = v126;
      v57 = v136;
      (*(v131 + 16))(v126, v54 + *(v131 + 72) * (__clz(__rbit64(v49)) | (v50 << 6)), v136);
      (*(v55 + 32))(v134, v56, v57);
      v139 = UUID.uuid.getter();
      v140 = v58;
      v141 = v59;
      v142 = v60;
      v143 = v61;
      v144 = v62;
      v145 = v63;
      v146 = v64;
      v147 = v65;
      UUID.uuid.getter();
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      v66 = *(*(v44 + 16) + 32);
      *v22 = v66;
      v133(v22, v128, v18);
      v67 = v66;
      LOBYTE(v66) = _dispatchPreconditionTest(_:)();
      v52(v22, v18);
      if (v66)
      {
        v68 = __DataStorage._bytes.getter();
        if (v68)
        {
          v69 = v68;
          v70 = __DataStorage._offset.getter();
          if (!__OFSUB__(0, v70))
          {
            v71 = (v69 - v70);
            goto LABEL_20;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          swift_once();
LABEL_5:
          v37 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          swift_getErrorValue();
          v39 = Error.localizedDescription.getter();
          v41 = v40;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v39;
          *(inited + 40) = v41;
          v42 = static os_log_type_t.error.getter();
          sub_100005404(v37, &_mh_execute_header, v42, "Failed to check asset UUIDs exist with error %@", 47, 2, inited);
          swift_setDeallocating();
          sub_100005070((inited + 32));
          swift_willThrow();
          return v43;
        }

        v71 = 0;
LABEL_20:
        v72 = __DataStorage._length.getter();
        v73 = v132;
        if (v132 != 0x7FFFFFFF)
        {
          v74 = 16;
          if (v72 < 16)
          {
            v74 = v72;
          }

          if (v71)
          {
            v75 = v74;
          }

          else
          {
            v75 = 0;
          }

          if (v75 >= 0xFFFFFFFF80000000)
          {
            v76 = *(v44 + 24);
            if (qword_1019F17C8 != -1)
            {
              swift_once();
              v73 = v132;
            }

            v49 &= v49 - 1;
            v132 = (v73 + 1);
            sqlite3_bind_blob(v76, v73 + 1, v71, v75, qword_101AD69D0);

            (*v122)(v134, v136);
            v45 = v127;
            v46 = v120;
            v51 = v119;
            goto LABEL_10;
          }

LABEL_61:
          __break(1u);
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v77 = *(*(v44 + 16) + 32);
  *v22 = v77;
  v78 = v128;
  v133(v22, v128, v18);
  v79 = v77;
  LOBYTE(v77) = _dispatchPreconditionTest(_:)();
  v52(v22, v18);
  if ((v77 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for SQLiteRowIterator();
  v80 = swift_initStackObject();
  v80[3] = 0;
  v132 = v80 + 3;
  v80[4] = 0;
  v126 = v80 + 4;
  v80[5] = 1;
  v134 = v80;
  v80[2] = v44;

  swift_beginAccess();
  v81 = *(*(v44 + 16) + 32);
  *v22 = v81;
  v82 = v133;
  v133(v22, v78, v18);
  v83 = v81;
  LOBYTE(v81) = _dispatchPreconditionTest(_:)();
  v52(v22, v18);
  if ((v81 & 1) == 0)
  {
    goto LABEL_54;
  }

  v131 += 56;
  while (1)
  {
    v87 = v132;
    *v132 = 0;
    v87[1] = 0;
    *(v134 + 5) = 1;
    v88 = sqlite3_step(*(v44 + 24));
    if (v88 != 100)
    {
      break;
    }

    v89 = *(*(v44 + 16) + 32);
    *v22 = v89;
    v82(v22, v78, v18);

    v90 = v89;
    LOBYTE(v89) = _dispatchPreconditionTest(_:)();
    v91 = v137;
    v137(v22, v18);
    if ((v89 & 1) == 0)
    {
      goto LABEL_55;
    }

    v92 = *(*(v44 + 16) + 32);
    *v22 = v92;
    v82(v22, v78, v18);
    v93 = v92;
    LOBYTE(v92) = _dispatchPreconditionTest(_:)();
    v91(v22, v18);
    if ((v92 & 1) == 0)
    {
      goto LABEL_56;
    }

    v94 = *(*(v44 + 16) + 32);
    *v22 = v94;
    v82(v22, v78, v18);
    v95 = v94;
    LOBYTE(v94) = _dispatchPreconditionTest(_:)();
    v91(v22, v18);
    if ((v94 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (sqlite3_column_type(*(v44 + 24), 0) == 5 || (v96 = sqlite3_column_blob(*(v44 + 24), 0)) == 0)
    {
      v84 = v135;
      (*v131)(v135, 1, 1, v136);
    }

    else
    {
      v97 = v96;
      v98 = sqlite3_column_bytes(*(v44 + 24), 0);
      v99 = sub_100024DD4(v97, v98);
      v84 = v135;
      v100 = v125;
      UUID.init(crl_data:)(v99, v101);
      if (!v100)
      {
        v125 = 0;
        v102 = v136;
        (*v131)(v84, 0, 1, v136);
        v103 = v121;
        (*v123)(v121, v84, v102);
        v104 = v118;
        (*v124)(v118, v103, v102);
        v105 = v117;
        sub_100E6AF38(v117, v104);

        v106 = *v122;
        v107 = v105;
        v82 = v133;
        (*v122)(v107, v102);
        v108 = v103;
        v78 = v128;
        v106(v108, v102);
        goto LABEL_35;
      }

      (*v131)(v84, 1, 1, v136);
      v125 = 0;
    }

    sub_10000CAAC(v84, &qword_1019F6990, &qword_10146D2F0);
LABEL_35:
    v85 = *(*(v44 + 16) + 32);
    *v22 = v85;
    v82(v22, v78, v18);
    v86 = v85;
    LOBYTE(v85) = _dispatchPreconditionTest(_:)();
    v137(v22, v18);
    if ((v85 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (v88 && v88 != 101)
  {
    *v132 = v88;
    v109 = v126;
    *v126 = 0;
    v109[1] = 0;
  }

  v110 = *(*(v44 + 16) + 32);
  *v22 = v110;
  v133(v22, v78, v18);
  v111 = v110;
  LOBYTE(v110) = _dispatchPreconditionTest(_:)();
  v137(v22, v18);
  if ((v110 & 1) == 0)
  {
LABEL_65:
    __break(1u);
  }

  v112 = *(v44 + 24);
  v113 = v127;
  if (v112)
  {
    sqlite3_finalize(v112);
    *(v44 + 24) = 0;
  }

  v114 = v138[2];

  return v114 == *(v113 + 16);
}

void *sub_100E301C0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v131 = &v127 - v4;
  v143 = type metadata accessor for UUID();
  v129 = *(v143 - 8);
  __chkstk_darwin(v143);
  v130 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v137 = (&v127 - v7);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = v9 + 104;
  v139 = *(v9 + 104);
  v139(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v16 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v18 = *(v9 + 8);
  v17 = v9 + 8;
  v140 = v12;
  v144 = v18;
  v18(v12, v8);
  if ((v13 & 1) == 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v145 = v17;
  v19 = *(a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (!v19)
  {
    return v20;
  }

  v142 = v14;
  v138 = v8;
  v21 = 0;
  v148._countAndFlagsBits = 0;
  v148._object = 0xE000000000000000;
  v146 = v19;
  v22 = v19 - 1;
  do
  {
    v23._countAndFlagsBits = 63;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    if (v21 < v22)
    {
      v24._countAndFlagsBits = 8236;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
    }

    v21 = (v21 + 1);
  }

  while (v146 != v21);
  v141 = v15;
  v158 = 0;
  v159 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v158 = 0x205443454C4553;
  v159 = 0xE700000000000000;
  v25._countAndFlagsBits = sub_100E9D0C0(0, 0xE000000000000000);
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x204D4F524620;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x737465737361;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x2820455245485720;
  v28._object = 0xE800000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x75755F7465737361;
  v29._object = 0xEA00000000006469;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x28204E4920;
  v30._object = 0xE500000000000000;
  String.append(_:)(v30);
  String.append(_:)(v148);

  v31._countAndFlagsBits = 10537;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = v158;
  v33 = v159;
  v147 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v35 = v132;
  v36 = sub_10001CC04(v34, v32, v33);
  if (v35)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v20 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v38 = Error.localizedDescription.getter();
      v40 = v39;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v38;
      *(inited + 40) = v40;
      v41 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v41, "Failed to fetch assets with error %@", 36, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v20;
    }

LABEL_71:
    swift_once();
    goto LABEL_9;
  }

  v42 = v36;
  v132 = 0;

  v43 = v129;
  v44 = a1 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
  swift_beginAccess();
  v134 = *(v43 + 16);
  v135 = (v43 + 16);
  v136 = (v43 + 8);
  v45 = 1;
  v133 = *(v43 + 72);
  v46 = 0x7FFFFFFFLL;
  v47 = v143;
  v48 = v137;
  do
  {
    (v134)(v48, v44, v47);
    v149 = UUID.uuid.getter();
    v150 = v49;
    v151 = v50;
    v152 = v51;
    v153 = v52;
    v154 = v53;
    v155 = v54;
    v156 = v55;
    v157 = v56;
    UUID.uuid.getter();
    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(bytes:length:)();
    v57 = v42;
    v58 = *(*(v42 + 16) + 32);
    v59 = v140;
    *v140 = v58;
    v60 = v138;
    (v139)(v59, v142, v138);
    v61 = v58;
    LOBYTE(v58) = _dispatchPreconditionTest(_:)();
    v144(v59, v60);
    if ((v58 & 1) == 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      __break(1u);
      goto LABEL_65;
    }

    v62 = __DataStorage._bytes.getter();
    if (v62)
    {
      v63 = v62;
      v64 = __DataStorage._offset.getter();
      if (__OFSUB__(0, v64))
      {
        goto LABEL_66;
      }

      v65 = v57;
      v66 = (v63 - v64);
      v67 = __DataStorage._length.getter();
      if (!v46)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v66 = 0;
      v65 = v57;
      v67 = __DataStorage._length.getter();
      if (!v46)
      {
        goto LABEL_63;
      }
    }

    v68 = 16;
    if (v67 < 16)
    {
      v68 = v67;
    }

    if (v66)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    if (v69 < 0xFFFFFFFF80000000)
    {
      goto LABEL_64;
    }

    v70 = *(v65 + 24);
    if (qword_1019F17C8 != -1)
    {
      swift_once();
    }

    sqlite3_bind_blob(v70, v45, v66, v69, qword_101AD69D0);

    v48 = v137;
    v71 = *v136;
    v47 = v143;
    (*v136)(v137, v143);
    --v46;
    ++v45;
    v44 += v133;
    v146 = (v146 - 1);
    v42 = v57;
  }

  while (v146);
  v133 = v71;
  v72 = *(*(v57 + 16) + 32);
  v73 = v140;
  *v140 = v72;
  v74 = v142;
  v76 = v138;
  v75 = v139;
  (v139)(v73);
  v77 = v72;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  v144(v73, v76);
  if ((v72 & 1) == 0)
  {
    goto LABEL_74;
  }

  type metadata accessor for SQLiteRowIterator();
  v78 = swift_initStackObject();
  v78[3] = 0;
  v137 = v78 + 3;
  v78[4] = 0;
  v127 = v78 + 4;
  v78[5] = 1;
  v146 = v78;
  v78[2] = v42;

  swift_beginAccess();
  v79 = *(*(v42 + 16) + 32);
  *v73 = v79;
  v75(v73, v74, v76);
  v80 = v79;
  LOBYTE(v79) = _dispatchPreconditionTest(_:)();
  v144(v73, v76);
  if ((v79 & 1) == 0)
  {
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
    goto LABEL_70;
  }

  v81 = v73;
  v82 = v74;
  v135 = (v129 + 56);
  v128 = _swiftEmptyArrayStorage;
  v134 = (v129 + 32);
  while (1)
  {
    v83 = v137;
    *v137 = 0;
    v83[1] = 0;
    v146[5] = 1;
    v84 = sqlite3_step(*(v42 + 24));
    if (v84 != 100)
    {
      break;
    }

    v85 = *(*(v42 + 16) + 32);
    *v81 = v85;
    v75(v81, v82, v76);
    swift_retain_n();
    v86 = v85;
    LOBYTE(v85) = _dispatchPreconditionTest(_:)();
    v87 = v144;
    v144(v81, v76);
    if ((v85 & 1) == 0)
    {
      goto LABEL_67;
    }

    v88 = *(*(v42 + 16) + 32);
    *v81 = v88;
    v75(v81, v82, v76);
    v89 = v88;
    LOBYTE(v88) = _dispatchPreconditionTest(_:)();
    v87(v81, v76);
    if ((v88 & 1) == 0)
    {
      goto LABEL_68;
    }

    v90 = *(*(v42 + 16) + 32);
    *v81 = v90;
    v75(v81, v82, v76);
    v91 = v90;
    LOBYTE(v90) = _dispatchPreconditionTest(_:)();
    v87(v81, v76);
    if ((v90 & 1) == 0)
    {
      goto LABEL_69;
    }

    if (sqlite3_column_type(*(v42 + 24), 0) == 5 || (v92 = sqlite3_column_blob(*(v42 + 24), 0)) == 0)
    {
      v97 = v131;
      (*v135)(v131, 1, 1, v143);

      v81 = v140;
      v99 = v142;
      v100 = v139;
      goto LABEL_38;
    }

    v93 = v92;
    v94 = sqlite3_column_bytes(*(v42 + 24), 0);
    v95 = sub_100024DD4(v93, v94);
    v97 = v131;
    v96 = v132;
    UUID.init(crl_data:)(v95, v98);
    v81 = v140;
    v99 = v142;
    v100 = v139;
    if (v96)
    {

      (*v135)(v97, 1, 1, v143);
      v132 = 0;
LABEL_38:
      sub_10000CAAC(v97, &qword_1019F6990, &qword_10146D2F0);
      v75 = v100;
      v82 = v99;
      goto LABEL_39;
    }

    v132 = 0;
    v107 = v143;
    (*v135)(v97, 0, 1, v143);
    v108 = *v134;
    (*v134)(v130, v97, v107);
    v109 = *(*(v42 + 16) + 32);
    *v81 = v109;
    v100(v81, v142, v76);
    v110 = v109;
    v111 = _dispatchPreconditionTest(_:)();
    v144(v81, v76);
    if ((v111 & 1) == 0)
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    v75 = v100;
    if (sqlite3_column_type(*(v42 + 24), 1) == 5)
    {
      v112 = v108;
      v129 = 0;
      v113 = 0;
      v82 = v142;
    }

    else
    {
      v114 = sqlite3_column_text(*(v42 + 24), 1);
      v82 = v142;
      v112 = v108;
      if (v114)
      {
        v129 = String.init(cString:)();
        v113 = v115;
      }

      else
      {
        v129 = 0;
        v113 = 0;
      }
    }

    v116 = *(*(v42 + 16) + 32);
    *v81 = v116;
    v117 = v138;
    v75(v81, v82, v138);
    v118 = v116;
    LOBYTE(v116) = _dispatchPreconditionTest(_:)();
    v144(v81, v117);
    if ((v116 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (sqlite3_column_type(*(v42 + 24), 2) != 5)
    {
      v119 = sqlite3_column_double(*(v42 + 24), 2);

      type metadata accessor for CRLAssetDatabaseRow(0);
      v120 = swift_allocObject();
      v112((v120 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID), v130, v143);
      v121 = (v120 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
      *v121 = v129;
      v121[1] = v113;
      *(v120 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) = v119;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v128 = v147;
      v101 = *(*(v42 + 16) + 32);
      *v81 = v101;
      v102 = v81;
      v103 = v82;
      v76 = v138;
      v104 = v138;
      goto LABEL_40;
    }

    v133(v130, v143);

    v76 = v138;
LABEL_39:
    v101 = *(*(v42 + 16) + 32);
    *v81 = v101;
    v102 = v81;
    v103 = v82;
    v104 = v76;
LABEL_40:
    v75(v102, v103, v104);
    v105 = v101;
    v106 = _dispatchPreconditionTest(_:)();
    v144(v81, v76);
    if ((v106 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  if (v84 && v84 != 101)
  {
    *v137 = v84;
    v122 = v127;
    *v127 = 0;
    v122[1] = 0;
  }

  v123 = *(*(v42 + 16) + 32);
  *v81 = v123;
  v75(v81, v82, v76);
  v124 = v123;
  LOBYTE(v123) = _dispatchPreconditionTest(_:)();
  v144(v81, v76);
  if ((v123 & 1) == 0)
  {
    goto LABEL_75;
  }

  v125 = *(v42 + 24);
  v20 = v128;
  if (v125)
  {
    sqlite3_finalize(v125);
    *(v42 + 24) = 0;
  }

  return v20;
}

void *sub_100E31084(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v137 = &v122 - v4;
  v140 = type metadata accessor for UUID();
  v132 = *(v140 - 8);
  __chkstk_darwin(v140);
  v6 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v122 - v8;
  __chkstk_darwin(v10);
  v135 = (&v122 - v11);
  __chkstk_darwin(v12);
  v131 = &v122 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v18 = v19;
  v20 = *(v15 + 104);
  v142 = enum case for DispatchPredicate.onQueue(_:);
  v138 = v15 + 104;
  v139 = v20;
  (v20)(v18, v16);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v24 = *(v15 + 8);
  v22 = v15 + 8;
  v23 = v24;
  v24(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    __break(1u);
    goto LABEL_70;
  }

  if (!*(a1 + 16))
  {
    return _swiftEmptySetSingleton;
  }

  v123 = v9;
  v124 = v6;
  v130 = v23;
  v141 = v22;
  v152 = 0;
  v153 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v152 = 0xD00000000000003DLL;
  v153 = 0x80000001015A45C0;
  v25 = sub_1000341B8(0x3F, 0xE100000000000000, *(a1 + 16));
  v133 = a1;
  v143 = v25;
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v152;
  v32 = v153;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v34 = v134;
  v35 = sub_10001CC04(v33, v31, v32);
  if (v34)
  {
LABEL_4:

    if (qword_1019F2258 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_5;
  }

  v43 = v35;
  v134 = 0;

  v45 = (v133 + 56);
  v44 = *(v133 + 56);
  v46 = *(v133 + 32);
  v136 = 1;
  v47 = 1 << v46;
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v44;

  swift_beginAccess();
  v50 = 0;
  v51 = (v47 + 63) >> 6;
  v128 = (v132 + 16);
  v129 = (v132 + 32);
  v127 = (v132 + 8);
  v126 = v45;
  for (i = v51; ; v51 = i)
  {
    v52 = v130;
    v53 = v142;
    if (v49)
    {
      v54 = v133;
      goto LABEL_17;
    }

    v54 = v133;
    do
    {
      v55 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v55 >= v51)
      {

        v79 = *(*(v43 + 16) + 32);
        *v18 = v79;
        v50 = v139;
        (v139)(v18, v53, v14);
        v80 = v79;
        LOBYTE(v79) = _dispatchPreconditionTest(_:)();
        v52(v18, v14);
        if ((v79 & 1) == 0)
        {
          __break(1u);
          goto LABEL_73;
        }

        type metadata accessor for SQLiteRowIterator();
        inited = swift_initStackObject();
        inited[3] = 0;
        v135 = inited + 3;
        inited[4] = 0;
        v126 = inited + 4;
        inited[5] = 1;
        v136 = inited;
        inited[2] = v43;

        swift_beginAccess();
        v82 = *(*(v43 + 16) + 32);
        *v18 = v82;
        (v50)(v18, v142, v14);
        v83 = v82;
        v53 = _dispatchPreconditionTest(_:)();
        v52(v18, v14);
        if (v53)
        {
          v131 = _swiftEmptyArrayStorage;
          v133 = v132 + 56;
          while (1)
          {
            v84 = v135;
            *v135 = 0;
            v84[1] = 0;
            *(v136 + 40) = 1;
            v85 = sqlite3_step(*(v43 + 24));
            if (v85 != 100)
            {
              break;
            }

            v86 = *(*(v43 + 16) + 32);
            *v18 = v86;
            v87 = v142;
            (v50)(v18, v142, v14);

            v88 = v86;
            LOBYTE(v86) = _dispatchPreconditionTest(_:)();
            v53 = v141;
            v52(v18, v14);
            if ((v86 & 1) == 0)
            {
              goto LABEL_59;
            }

            v89 = *(*(v43 + 16) + 32);
            *v18 = v89;
            (v50)(v18, v87, v14);
            v90 = v89;
            LOBYTE(v89) = _dispatchPreconditionTest(_:)();
            v52(v18, v14);
            if ((v89 & 1) == 0)
            {
              goto LABEL_60;
            }

            v91 = *(*(v43 + 16) + 32);
            *v18 = v91;
            (v50)(v18, v87, v14);
            v92 = v91;
            LOBYTE(v91) = _dispatchPreconditionTest(_:)();
            v52(v18, v14);
            if ((v91 & 1) == 0)
            {
              goto LABEL_61;
            }

            if (sqlite3_column_type(*(v43 + 24), 0) != 5 && (v93 = sqlite3_column_blob(*(v43 + 24), 0)) != 0)
            {
              v97 = v93;
              v98 = sqlite3_column_bytes(*(v43 + 24), 0);
              v99 = sub_100024DD4(v97, v98);
              v100 = v137;
              v101 = v134;
              UUID.init(crl_data:)(v99, v102);
              v50 = v139;
              v53 = v142;
              if (v101)
              {
                goto LABEL_62;
              }

              v103 = v140;
              (*v133)(v100, 0, 1, v140);
              v104 = v123;
              i = *v129;
              i(v123, v100, v103);
              (*v128)(v124, v104, v103);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v134 = 0;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v131 = sub_100B356D0(0, *(v131 + 2) + 1, 1, v131);
              }

              v107 = *(v131 + 2);
              v106 = *(v131 + 3);
              if (v107 >= v106 >> 1)
              {
                v131 = sub_100B356D0((v106 > 1), v107 + 1, 1, v131);
              }

              v108 = v132;
              v109 = v140;
              (*(v132 + 8))(v123, v140);
              v110 = v131;
              *(v131 + 2) = v107 + 1;
              i(&v110[((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v107], v124, v109);
              v111 = *(*(v43 + 16) + 32);
              *v18 = v111;
              (v50)(v18, v53, v14);
              v112 = v111;
              LOBYTE(v111) = _dispatchPreconditionTest(_:)();
              v52 = v130;
              v130(v18, v14);
              if ((v111 & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v94 = v137;
              (*v133)(v137, 1, 1, v140);

              sub_10000CAAC(v94, &qword_1019F6990, &qword_10146D2F0);
              v95 = *(*(v43 + 16) + 32);
              *v18 = v95;
              v50 = v139;
              (v139)(v18, v142, v14);
              v96 = v95;
              LOBYTE(v95) = _dispatchPreconditionTest(_:)();
              v52(v18, v14);
              if ((v95 & 1) == 0)
              {
                goto LABEL_58;
              }
            }
          }

          v113 = v142;
          if (v85 && v85 != 101)
          {
            *v135 = v85;
            v114 = v126;
            *v126 = 0;
            v114[1] = 0;
          }

          v115 = *(*(v43 + 16) + 32);
          *v18 = v115;
          (v50)(v18, v113, v14);
          v116 = v115;
          LOBYTE(v115) = _dispatchPreconditionTest(_:)();
          v52(v18, v14);
          if (v115)
          {
            v117 = *(v43 + 24);
            if (v117)
            {
              sqlite3_finalize(v117);
              *(v43 + 24) = 0;
            }

            v118 = sub_100E93A84(v131);

            return v118;
          }

LABEL_73:
          __break(1u);
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:

        v119 = *(*(v43 + 16) + 32);
        *v18 = v119;
        (v50)(v18, v53, v14);
        v120 = v119;
        LOBYTE(v119) = _dispatchPreconditionTest(_:)();
        result = (v52)(v18, v14);
        if ((v119 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        v121 = *(v43 + 24);
        if (v121)
        {
          sqlite3_finalize(v121);
          *(v43 + 24) = 0;
        }

        goto LABEL_4;
      }

      v49 = v45[v55];
      ++v50;
    }

    while (!v49);
    v50 = v55;
LABEL_17:
    v56 = v132;
    v57 = v131;
    v58 = v140;
    (*(v132 + 16))(v131, *(v54 + 48) + *(v132 + 72) * (__clz(__rbit64(v49)) | (v50 << 6)), v140);
    (*(v56 + 32))(v135, v57, v58);
    v143 = UUID.uuid.getter();
    v144 = v59;
    v145 = v60;
    v146 = v61;
    v147 = v62;
    v148 = v63;
    v149 = v64;
    v150 = v65;
    v151 = v66;
    UUID.uuid.getter();
    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(bytes:length:)();
    v67 = *(*(v43 + 16) + 32);
    *v18 = v67;
    (v139)(v18, v142, v14);
    v68 = v67;
    LOBYTE(v67) = _dispatchPreconditionTest(_:)();
    v52(v18, v14);
    if ((v67 & 1) == 0)
    {
      goto LABEL_67;
    }

    v69 = __DataStorage._bytes.getter();
    if (v69)
    {
      break;
    }

    v72 = 0;
LABEL_22:
    v73 = __DataStorage._length.getter();
    if (v136 == 0x80000000)
    {
      goto LABEL_68;
    }

    v74 = 16;
    if (v73 < 16)
    {
      v74 = v73;
    }

    if (v72)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    if (v75 < 0xFFFFFFFF80000000)
    {
      goto LABEL_69;
    }

    v76 = *(v43 + 24);
    if (qword_1019F17C8 != -1)
    {
      swift_once();
    }

    v49 &= v49 - 1;
    v77 = v76;
    v78 = v136;
    sqlite3_bind_blob(v77, v136, v72, v75, qword_101AD69D0);

    (*v127)(v135, v140);
    v136 = v78 + 1;
    v45 = v126;
  }

  v70 = v69;
  v71 = __DataStorage._offset.getter();
  if (!__OFSUB__(0, v71))
  {
    v72 = (v70 - v71);
    goto LABEL_22;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_5:
  v36 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v38 = Error.localizedDescription.getter();
  v40 = v39;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_1000053B0();
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v41 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v41, "Failed to fetch an asset reference with error %@", 48, 2, v37);
  swift_setDeallocating();
  sub_100005070((v37 + 32));
  return swift_willThrow();
}

void *sub_100E320D4(void *a1)
{
  v57 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v60 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_27;
  }

  v59 = v9;
  v58 = v11;
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v62 = 0x205443454C4553;
  v63 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E931D8(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._object = 0x80000001015A3180;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x80000001015A3FA0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x444E41203F203D20;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._object = 0x80000001015A33D0;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x2930203E20;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20 = v62;
  v21 = v63;
  v61 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v26 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v31, "Failed to fetch an asset reference with error %@", 48, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v28;
    }

LABEL_28:
    swift_once();
    goto LABEL_5;
  }

  v24 = v23;

  v25 = sub_1005C6934();
  v57 = v33;
  v34 = v25;
  v35 = *(*(v24 + 16) + 32);
  *v7 = v35;
  v59(v7, v60, v3);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v37 = v58;
  v58(v7, v3);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v38 = v34;
  v39 = v34;
  v40 = v57;
  sub_100DCCAB4(v39, v57, v24, 1);
  sub_10002640C(v38, v40);
  v41 = *(*(v24 + 16) + 32);
  *v7 = v41;
  v59(v7, v60, v3);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v37(v7, v3);
  if ((v41 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v43[3] = 0;
  v44 = v43 + 3;
  v43[4] = 0;
  v56 = v43 + 4;
  v43[5] = 1;
  v57 = v43;
  v43[2] = v24;

  swift_beginAccess();
  v45 = *(*(v24 + 16) + 32);
  *v7 = v45;
  v59(v7, v60, v3);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v37(v7, v3);
  if ((v45 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v44 = 0;
    v44[1] = 0;
    v57[5] = 1;
    v47 = sqlite3_step(*(v24 + 24));
    if (v47 != 100)
    {
      break;
    }

    v48 = swift_retain_n();
    if (sub_100E933E4(v48, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55[1] = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v28 = v61;
    }

    else
    {
    }

    v49 = *(*(v24 + 16) + 32);
    *v7 = v49;
    v59(v7, v60, v3);
    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v58(v7, v3);
    if ((v49 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v47 && v47 != 101)
  {
    *v44 = v47;
    v51 = v56;
    *v56 = 0;
    v51[1] = 0;
  }

  v52 = *(*(v24 + 16) + 32);
  *v7 = v52;
  v59(v7, v60, v3);
  v53 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  v58(v7, v3);
  if ((v52 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v54 = *(v24 + 24);
  if (v54)
  {
    sqlite3_finalize(v54);
    *(v24 + 24) = 0;
  }

  return v28;
}

void *sub_100E328FC(void (**a1)(char *, void *), void *a2)
{
  v144 = a1;
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v7 = v132 - v6;
  v142 = type metadata accessor for UUID();
  v8 = *(v142 - 8);
  __chkstk_darwin(v142);
  v138 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = v132 - v11;
  v147 = type metadata accessor for String.Encoding();
  v140 = *(v147 - 1);
  __chkstk_darwin(v147);
  v146 = v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = (v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = v2;
  v18 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v17 = v18;
  v19 = *(v14 + 104);
  v153 = enum case for DispatchPredicate.onQueue(_:);
  v151 = v14 + 104;
  v152 = v19;
  v19(v17, v15);
  v20 = v18;
  v21 = _dispatchPreconditionTest(_:)();
  v24 = *(v14 + 8);
  v23 = (v14 + 8);
  v22 = v24;
  v24(v17, v13);
  if ((v21 & 1) == 0)
  {
    goto LABEL_47;
  }

  v148 = v22;
  v139 = a2;
  v25 = a2[2];
  if (!v25)
  {
    return _swiftEmptySetSingleton;
  }

  v136 = v8;
  v141 = v7;
  v149 = v13;
  v155 = 0;
  v156 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v155 = 0xD000000000000063;
  v156 = 0x80000001015A4860;
  v154[0] = sub_1000341B8(0x3F, 0xE100000000000000, v25);
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 10537;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31 = v155;
  v32 = v156;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v34 = sub_10001CC04(v33, v31, v32);
  if (v3)
  {
LABEL_7:

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v39 = Error.localizedDescription.getter();
    v41 = v40;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v39;
    *(inited + 40) = v41;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v42, "Failed to fetch an asset reference with error %@", 48, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    return swift_willThrow();
  }

  v145 = v34;

  v36 = sub_1005C6934();
  v44 = v43;
  v45 = v36;
  v46 = v145;
  v47 = *(*(v145 + 16) + 32);
  *v17 = v47;
  v48 = v23;
  v49 = v149;
  v152(v17, v153, v149);
  v50 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v150 = v48;
  v148(v17, v49);
  if ((v47 & 1) == 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  sub_100DCCAB4(v45, v44, v46, 1);
  v143 = 0;
  sub_10002640C(v45, v44);
  swift_beginAccess();
  v144 = (v140 + 1);
  v51 = v46;
  v52 = v139 + 5;
  v53 = 2;
  v54 = 2147483646;
  do
  {
    v23 = *(v52 - 1);
    v55 = *v52;
    v56 = *(*(v51 + 16) + 32);
    *v17 = v56;
    v57 = v149;
    v152(v17, v153, v149);

    v58 = v56;
    LOBYTE(v56) = _dispatchPreconditionTest(_:)();
    v148(v17, v57);
    if ((v56 & 1) == 0)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v154[0] = v23;
    v154[1] = v55;
    v23 = v146;
    static String.Encoding.utf8.getter();
    sub_100017CD8();
    v59 = StringProtocol.cString(using:)();
    (*v144)(v23, v147);

    if (!v54)
    {
      goto LABEL_45;
    }

    v51 = v145;
    v60 = *(v145 + 24);
    if (qword_1019F17C8 != -1)
    {
      v62 = *(v145 + 24);
      swift_once();
      v60 = v62;
    }

    if (v59)
    {
      v61 = (v59 + 32);
    }

    else
    {
      v61 = 0;
    }

    sqlite3_bind_text(v60, v53, v61, -1, qword_101AD69D0);

    ++v53;
    --v54;
    v52 += 2;
    --v25;
  }

  while (v25);
  v63 = *(*(v51 + 16) + 32);
  *v17 = v63;
  v23 = v153;
  v64 = v149;
  v65 = v152;
  v152(v17, v153, v149);
  v66 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  v67 = v148;
  v148(v17, v64);
  if ((v63 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  type metadata accessor for SQLiteRowIterator();
  v68 = swift_initStackObject();
  v68[3] = 0;
  v144 = (v68 + 3);
  v68[4] = 0;
  v135 = v68 + 4;
  v68[5] = 1;
  v146 = v68;
  v68[2] = v51;

  swift_beginAccess();
  v69 = *(*(v51 + 16) + 32);
  *v17 = v69;
  v65(v17, v23, v64);
  v70 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  v147 = v17;
  v67(v17, v64);
  v71 = v51;
  v72 = v143;
  if ((v69 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:

    v126 = v145;

    v127 = *(*(v126 + 16) + 32);
    v128 = v147;
    *v147 = v127;
    v129 = v149;
    v152(v128, v23, v149);
    v130 = v127;
    LOBYTE(v127) = _dispatchPreconditionTest(_:)();
    result = (v148)(v128, v129);
    if ((v127 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v131 = *(v126 + 24);
    if (v131)
    {
      sqlite3_finalize(v131);
      *(v126 + 24) = 0;
    }

    goto LABEL_7;
  }

  v140 = (v136 + 56);
  v134 = (v136 + 32);
  v133 = (v136 + 16);
  v139 = _swiftEmptyArrayStorage;
  v132[1] = v136 + 8;
  while (1)
  {
    v78 = v144;
    *v144 = 0;
    v78[1] = 0;
    *(v146 + 5) = 1;
    v79 = sqlite3_step(*(v71 + 24));
    if (v79 != 100)
    {
      break;
    }

    v143 = v72;
    v80 = *(*(v71 + 16) + 32);
    v81 = v71;
    v82 = v147;
    *v147 = v80;
    v83 = v23;
    v84 = v149;
    v23 = v152;
    v152(v82, v83, v149);

    v85 = v80;
    v86 = _dispatchPreconditionTest(_:)();
    v67(v82, v84);
    if ((v86 & 1) == 0)
    {
      goto LABEL_48;
    }

    v87 = *(*(v81 + 16) + 32);
    *v82 = v87;
    (v23)(v82, v153, v84);
    v88 = v87;
    v89 = _dispatchPreconditionTest(_:)();
    v67(v82, v84);
    if ((v89 & 1) == 0)
    {
      goto LABEL_49;
    }

    v90 = *(*(v81 + 16) + 32);
    *v82 = v90;
    (v23)(v82, v153, v84);
    v91 = v90;
    v92 = _dispatchPreconditionTest(_:)();
    v67(v82, v84);
    if ((v92 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (sqlite3_column_type(*(v81 + 24), 0) == 5 || (v93 = sqlite3_column_blob(*(v81 + 24), 0)) == 0)
    {
      v73 = v141;
      (*v140)(v141, 1, 1, v142);

      sub_10000CAAC(v73, &qword_1019F6990, &qword_10146D2F0);
      v74 = *(*(v81 + 16) + 32);
      v75 = v147;
      *v147 = v74;
      v23 = v153;
      v152(v75, v153, v84);
      v76 = v74;
      v77 = _dispatchPreconditionTest(_:)();
      v67(v75, v84);
      v71 = v81;
      v72 = v143;
      if ((v77 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v94 = v93;
      v95 = sqlite3_column_bytes(*(v81 + 24), 0);
      v96 = sub_100024DD4(v94, v95);
      v97 = v141;
      v98 = v143;
      UUID.init(crl_data:)(v96, v99);
      v72 = v98;
      v23 = v153;
      if (v98)
      {
        goto LABEL_51;
      }

      v100 = v142;
      (*v140)(v97, 0, 1, v142);
      v101 = *v134;
      v102 = v137;
      (*v134)(v137, v97, v100);
      (*v133)(v138, v102, v100);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v147;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v139 = sub_100B356D0(0, v139[2] + 1, 1, v139);
      }

      v106 = v139[2];
      v105 = v139[3];
      if (v106 >= v105 >> 1)
      {
        v139 = sub_100B356D0((v105 > 1), v106 + 1, 1, v139);
      }

      v71 = v145;

      v107 = v136;
      v108 = v142;
      (*(v136 + 8))(v137, v142);
      v109 = v139;
      v139[2] = v106 + 1;
      v101(&v109[((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v106], v138, v108);
      v110 = *(*(v71 + 16) + 32);
      *v104 = v110;
      v111 = v149;
      v152(v104, v23, v149);
      v112 = v110;
      v113 = _dispatchPreconditionTest(_:)();
      v67 = v148;
      v148(v104, v111);
      if ((v113 & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  v114 = v152;
  v115 = v147;
  if (v79 && v79 != 101)
  {
    *v144 = v79;
    v116 = v135;
    *v135 = 0;
    v116[1] = 0;
  }

  v117 = v145;
  v118 = *(*(v145 + 16) + 32);
  *v115 = v118;
  v119 = v115;
  v120 = v23;
  v121 = v115;
  v122 = v149;
  v114(v119, v120, v149);
  v123 = v118;
  LOBYTE(v118) = _dispatchPreconditionTest(_:)();
  v67(v121, v122);
  if ((v118 & 1) == 0)
  {
LABEL_57:
    __break(1u);
  }

  v124 = *(v117 + 24);
  if (v124)
  {
    sqlite3_finalize(v124);
    *(v117 + 24) = 0;
  }

  v125 = sub_100E93A84(v139);

  return v125;
}

void sub_100E339A0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1005B981C(&qword_101A0B040, &unk_101478840);
  __chkstk_darwin(v6 - 8);
  v8 = &v98 - v7;
  v9 = type metadata accessor for URL();
  v121 = *(v9 - 8);
  __chkstk_darwin(v9);
  v118 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = &v98 - v12;
  v115 = type metadata accessor for UUID();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v98 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16, v18);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v23 = sub_100E31084(a1);
  if (!v2)
  {
    v24 = v23;
    if (v23[2] <= a1[2] >> 3)
    {
      v120 = a1;

      sub_1012D4DC4(v27, v24);

      v26 = v120;
    }

    else
    {

      v25 = sub_1012D5CC4(v24, a1);

      v26 = v25;
    }

    v28 = v115;
    v29 = v116;
    if (!v26[2])
    {

      return;
    }

    v102 = v8;
    v30 = 0;
    v31 = v26 + 7;
    v32 = 1 << *(v26 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v26[7];
    v105 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v113 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v35 = (v32 + 63) >> 6;
    v109 = v119 + 16;
    v108 = v119 + 32;
    v101 = (v121 + 8);
    v110 = (v119 + 8);
    v100 = xmmword_10146C6B0;
    v107 = v26 + 7;
    v106 = v35;
    v104 = v4;
    v103 = v9;
    v111 = v26;
    if (v34)
    {
      goto LABEL_16;
    }

LABEL_12:
    while (1)
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v36 >= v35)
      {

        v71 = *&v4[v105];
        os_unfair_lock_lock(*(v71 + 16));
        v72 = v113;
        v73 = *&v4[v113];
        if (v73)
        {
          v74 = *&v4[v113];
        }

        else
        {
          v75 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
          v76 = v4;
          v77 = sub_10001F1A0(v76);

          v78 = *&v4[v72];
          *&v4[v72] = v77;
          v74 = v77;

          v73 = 0;
        }

        v79 = *(v71 + 16);
LABEL_33:
        v80 = v73;
        os_unfair_lock_unlock(v79);
        sub_10001F7A4();

        return;
      }

      v34 = v31[v36];
      ++v30;
      if (v34)
      {
        while (1)
        {
          v37 = v119;
          v38 = v114;
          (*(v119 + 16))(v114, v26[6] + *(v119 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v28);
          (*(v37 + 32))(v29, v38, v28);
          v39 = sub_100E39678(v29);
          if (v3)
          {
            break;
          }

          v34 &= v34 - 1;
          if (v39)
          {
            v121 = 0;
            v112 = v39;
            v40 = *&v4[v105];
            v42 = *(v40 + 16);
            v41 = (v40 + 16);
            os_unfair_lock_lock(v42);
            v43 = v113;
            v44 = *&v4[v113];
            if (v44)
            {
              v45 = *&v4[v113];
            }

            else
            {
              v46 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
              v47 = v4;
              v48 = sub_10001F1A0(v47);

              v49 = *&v4[v113];
              *&v4[v113] = v48;
              v45 = v48;

              v43 = v113;
              v44 = 0;
            }

            v50 = *v41;
            v51 = v44;
            os_unfair_lock_unlock(v50);
            v53 = *(v112 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
            v52 = *(v112 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
            v54 = v121;
            sub_1010898C8();
            v121 = v54;
            if (v54)
            {
              v85 = v115;
LABEL_40:
              (*v110)(v116, v85);

              os_unfair_lock_lock(*v41);
              v73 = *&v4[v43];
              if (v73)
              {
                v74 = *&v4[v43];
              }

              else
              {
                v88 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
                v89 = v43;
                v90 = v4;
                v91 = sub_10001F1A0(v90);

                v92 = *&v4[v89];
                *&v4[v89] = v91;
                v74 = v91;

                v73 = 0;
              }

              v79 = *v41;
              goto LABEL_33;
            }

            v99 = v41;
            v55 = v116;
            sub_1010934D4(v116, v53, v52);
            v56 = v117;
            URL.appendingPathComponent(_:)();

            sub_10108B1E0(v55, v56, 1);
            UUID.uuidString.getter();
            URL.appendingPathComponent(_:)();

            if (qword_1019F22C0 != -1)
            {
              swift_once();
            }

            v57 = static OS_os_log.assetManagement;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = v100;
            v59 = UUID.uuidString.getter();
            v61 = v60;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v59;
            *(inited + 40) = v61;
            v62 = static os_log_type_t.default.getter();
            sub_100005404(v57, &_mh_execute_header, v62, "CRLAssetFileManager moveAssetFileToDeletedDirectory() assetUUID: %@", 67, 2, inited);
            swift_setDeallocating();
            sub_100005070((inited + 32));
            v63 = *&v45[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock];
            os_unfair_lock_lock(*(v63 + 16));
            swift_beginAccess();
            v64 = v102;
            sub_1006F7074(v55, v102);
            sub_10000CAAC(v64, &qword_101A0B040, &unk_101478840);
            swift_endAccess();
            os_unfair_lock_unlock(*(v63 + 16));
            v65 = [objc_opt_self() defaultManager];
            v67 = v117;
            v66 = v118;
            v68 = v121;
            sub_101091278(v117, v118, 1, 1);
            v121 = v68;
            if (v68)
            {

              v86 = *v101;
              v87 = v103;
              (*v101)(v66, v103);
              v86(v67, v87);
              v4 = v104;
              v85 = v115;
              v43 = v113;
              v41 = v99;
              goto LABEL_40;
            }

            v69 = *v101;
            v70 = v103;
            (*v101)(v66, v103);
            v69(v67, v70);
            v28 = v115;
            (*v110)(v55, v115);

            v30 = v36;
            v4 = v104;
            v29 = v55;
            v26 = v111;
            v31 = v107;
            v35 = v106;
            v3 = v121;
            if (!v34)
            {
              goto LABEL_12;
            }
          }

          else
          {
            (*v110)(v29, v28);
            v30 = v36;
            v26 = v111;
            v31 = v107;
            v35 = v106;
            if (!v34)
            {
              goto LABEL_12;
            }
          }

LABEL_16:
          v36 = v30;
        }

        (*v110)(v29, v28);

        v81 = *&v4[v105];
        v83 = *(v81 + 16);
        v82 = (v81 + 16);
        os_unfair_lock_lock(v83);
        v84 = v113;
        v73 = *&v4[v113];
        if (v73)
        {
          v74 = *&v4[v113];
        }

        else
        {
          v93 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
          v94 = v84;
          v95 = v4;
          v96 = sub_10001F1A0(v95);

          v97 = *&v4[v94];
          *&v4[v94] = v96;
          v74 = v96;

          v73 = 0;
        }

        v79 = *v82;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_46;
  }
}

void *sub_100E34410(void *a1)
{
  v55 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v58 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_27;
  }

  v57 = v9;
  v56 = v11;
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v60 = 0x205443454C4553;
  v61 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E931D8(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._object = 0x80000001015A3180;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x80000001015A3FA0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x293F203D20;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v60;
  v19 = v61;
  v59 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v24 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = v27;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v26;
      *(inited + 40) = v28;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v29, "Failed to fetch an asset reference with error %@", 48, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v26;
    }

LABEL_28:
    swift_once();
    goto LABEL_5;
  }

  v22 = v21;

  v23 = sub_1005C6934();
  v55 = v31;
  v32 = v23;
  v33 = *(*(v22 + 16) + 32);
  *v7 = v33;
  v57(v7, v58, v3);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v35 = v56;
  v56(v7, v3);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v36 = v32;
  v37 = v32;
  v38 = v55;
  sub_100DCCAB4(v37, v55, v22, 1);
  sub_10002640C(v36, v38);
  v39 = *(*(v22 + 16) + 32);
  *v7 = v39;
  v57(v7, v58, v3);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v35(v7, v3);
  if ((v39 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v41 = swift_initStackObject();
  v41[3] = 0;
  v42 = v41 + 3;
  v41[4] = 0;
  v54 = v41 + 4;
  v41[5] = 1;
  v55 = v41;
  v41[2] = v22;

  swift_beginAccess();
  v43 = *(*(v22 + 16) + 32);
  *v7 = v43;
  v57(v7, v58, v3);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v35(v7, v3);
  if ((v43 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v26 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v42 = 0;
    v42[1] = 0;
    v55[5] = 1;
    v45 = sqlite3_step(*(v22 + 24));
    if (v45 != 100)
    {
      break;
    }

    v46 = swift_retain_n();
    if (sub_100E933E4(v46, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53[1] = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v26 = v59;
    }

    else
    {
    }

    v47 = *(*(v22 + 16) + 32);
    *v7 = v47;
    v57(v7, v58, v3);
    v48 = v47;
    LOBYTE(v47) = _dispatchPreconditionTest(_:)();
    v56(v7, v3);
    if ((v47 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v45 && v45 != 101)
  {
    *v42 = v45;
    v49 = v54;
    *v54 = 0;
    v49[1] = 0;
  }

  v50 = *(*(v22 + 16) + 32);
  *v7 = v50;
  v57(v7, v58, v3);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  v56(v7, v3);
  if ((v50 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v52 = *(v22 + 24);
  if (v52)
  {
    sqlite3_finalize(v52);
    *(v22 + 24) = 0;
  }

  return v26;
}

char *sub_100E34C00(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v118 = a2;
  v117 = a1;
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v120 = &v98 - v4;
  v5 = type metadata accessor for UUID();
  v115 = *(v5 - 8);
  __chkstk_darwin(v5);
  v113 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v98 - v8;
  v114 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v114);
  v116 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v14 = v15;
  v16 = enum case for DispatchPredicate.onQueue(_:);
  v122 = *(v11 + 104);
  v122(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v17 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v121 = v5;
  v123 = v18;
  v124 = 0;
  v125 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v124 = 0xD00000000000005ALL;
  v125 = 0x80000001015A6100;
  v19._countAndFlagsBits = sub_100E9D4E0(&off_101874A70, 0);
  String.append(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = v124;
  v22 = v125;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = v119;
  v25 = sub_10001CC04(v23, v21, v22);
  if (v24)
  {
    goto LABEL_8;
  }

  v26 = v25;
  v110 = v11 + 104;
  v111 = v16;

  v27 = *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
  v28 = v115 + 16;
  v29 = *(v115 + 16);
  v30 = v116;
  v29(v116, v117, v121);
  sub_10000C83C(v118, v30 + v27, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v31 = sub_1005C6934();
  v107 = v29;
  v108 = v28;
  v109 = 0;
  v33 = v32;
  v34 = v31;
  v35 = *(*(v26 + 16) + 32);
  *v14 = v35;
  v36 = v111;
  (v122)(v14, v111, v10);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v123(v14, v10);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v38 = v109;
  sub_100DCCAB4(v34, v33, v26, 1);
  sub_10002640C(v34, v33);
  v39 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v40 = sub_10084DAE4(v118, *(v118 + *(v39 + 20)), *(v118 + *(v39 + 20) + 8));
  if (v38)
  {
    sub_100026028(v116, type metadata accessor for CRLAssetReferrerIdentifier);
    v42 = *(*(v26 + 16) + 32);
    *v14 = v42;
    (v122)(v14, v36, v10);
    v43 = v42;
    LOBYTE(v42) = _dispatchPreconditionTest(_:)();
    v123(v14, v10);
    if (v42)
    {
      swift_beginAccess();
      v44 = *(v26 + 24);
      if (!v44)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_47;
  }

  v105 = v40;
  v106 = v41;
  v52 = *(*(v26 + 16) + 32);
  *v14 = v52;
  v53 = v122;
  (v122)(v14, v36, v10);
  v54 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  v123(v14, v10);
  if ((v52 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_100DCCAB4(v105, v106, v26, 2);
  v109 = 0;
  v55 = *(*(v26 + 16) + 32);
  *v14 = v55;
  v53(v14, v36, v10);
  v56 = v55;
  LOBYTE(v55) = _dispatchPreconditionTest(_:)();
  v123(v14, v10);
  if ((v55 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v118 = inited + 3;
  inited[4] = 0;
  v102 = inited + 4;
  inited[5] = 1;
  v119 = inited;
  inited[2] = v26;

  swift_beginAccess();
  v58 = *(*(v26 + 16) + 32);
  *v14 = v58;
  v53(v14, v36, v10);
  v59 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v123(v14, v10);
  if (v58)
  {
    v60 = v53;
    v117 = (v115 + 56);
    v104 = (v115 + 32);
    v114 = _swiftEmptyArrayStorage;
    v103 = v115 + 8;
    while (1)
    {
      v61 = v118;
      *v118 = 0;
      v61[1] = 0;
      v119[5] = 1;
      v62 = sqlite3_step(*(v26 + 24));
      if (v62 != 100)
      {
        break;
      }

      v63 = *(*(v26 + 16) + 32);
      *v14 = v63;
      v60(v14, v36, v10);

      v64 = v63;
      LOBYTE(v63) = _dispatchPreconditionTest(_:)();
      v65 = v123;
      v123(v14, v10);
      if ((v63 & 1) == 0)
      {
        goto LABEL_38;
      }

      v66 = *(*(v26 + 16) + 32);
      *v14 = v66;
      v60(v14, v36, v10);
      v67 = v66;
      LOBYTE(v66) = _dispatchPreconditionTest(_:)();
      v65(v14, v10);
      if ((v66 & 1) == 0)
      {
        goto LABEL_39;
      }

      v68 = *(*(v26 + 16) + 32);
      *v14 = v68;
      v60(v14, v36, v10);
      v69 = v68;
      LOBYTE(v68) = _dispatchPreconditionTest(_:)();
      v65(v14, v10);
      if ((v68 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (sqlite3_column_type(*(v26 + 24), 0) != 5 && (v70 = sqlite3_column_blob(*(v26 + 24), 0)) != 0)
      {
        v78 = v70;
        v79 = sqlite3_column_bytes(*(v26 + 24), 0);
        v80 = sub_100024DD4(v78, v79);
        v81 = v120;
        v82 = v109;
        UUID.init(crl_data:)(v80, v83);
        if (v82)
        {
          goto LABEL_41;
        }

        (*v117)(v81, 0, 1, v121);
        v84 = v112;
        v101 = *v104;
        v101(v112, v81, v121);
        v85 = v84;
        v86 = v121;
        v107(v113, v85);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v114 = sub_100B356D0(0, *(v114 + 2) + 1, 1, v114);
        }

        v60 = v122;
        v88 = *(v114 + 3);
        v100 = *(v114 + 2);
        v99 = v100 + 1;
        if (v100 >= v88 >> 1)
        {
          v114 = sub_100B356D0((v88 > 1), v100 + 1, 1, v114);
        }

        v89 = v115;
        (*(v115 + 8))(v112, v86);
        v90 = v114;
        *(v114 + 2) = v99;
        v101(&v90[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v100], v113, v86);
        v72 = *(*(v26 + 16) + 32);
        *v14 = v72;
        v73 = v14;
        v74 = v36;
        v75 = v10;
      }

      else
      {
        v71 = v120;
        (*v117)(v120, 1, 1, v121);

        sub_10000CAAC(v71, &qword_1019F6990, &qword_10146D2F0);
        v72 = *(*(v26 + 16) + 32);
        *v14 = v72;
        v73 = v14;
        v74 = v36;
        v75 = v10;
        v60 = v122;
      }

      v60(v73, v74, v75);
      v76 = v72;
      v77 = _dispatchPreconditionTest(_:)();
      v123(v14, v10);
      if ((v77 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v91 = v62;
    sub_100026028(v116, type metadata accessor for CRLAssetReferrerIdentifier);
    sub_10002640C(v105, v106);
    if (v91 && v91 != 101)
    {
      *v118 = v91;
      v92 = v102;
      *v102 = 0;
      v92[1] = 0;
    }

    v93 = *(*(v26 + 16) + 32);
    *v14 = v93;
    (v122)(v14, v36, v10);
    v94 = v93;
    LOBYTE(v93) = _dispatchPreconditionTest(_:)();
    v123(v14, v10);
    if (v93)
    {
      v95 = *(v26 + 24);
      if (v95)
      {
        sqlite3_finalize(v95);
        *(v26 + 24) = 0;
      }

      return v114;
    }

LABEL_50:
    __break(1u);
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_100026028(v116, type metadata accessor for CRLAssetReferrerIdentifier);

  sub_10002640C(v105, v106);

  v96 = *(*(v26 + 16) + 32);
  *v14 = v96;
  (v122)(v14, v36, v10);
  v97 = v96;
  LOBYTE(v96) = _dispatchPreconditionTest(_:)();
  result = (v123)(v14, v10);
  if (v96)
  {
    v44 = *(v26 + 24);
    if (v44)
    {
LABEL_7:
      sqlite3_finalize(v44);
      *(v26 + 24) = 0;
    }

LABEL_8:

    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v45 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = v48;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = sub_1000053B0();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v50, "Failed to fetch an asset reference with error %@", 48, 2, v46);
      swift_setDeallocating();
      sub_100005070((v46 + 32));
      swift_willThrow();
      return v114;
    }

LABEL_45:
    swift_once();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_100E35B30(sqlite3_int64 a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v27 = *(v5 + 104);
  v27(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v28 = *(v5 + 8);
  v28(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000026, 0x80000001015A8AA0);

  if (v2)
  {
    return;
  }

  sub_100034254(a1, 1);
  v14 = *(*(v13 + 16) + 32);
  *v8 = v14;
  v15 = v26;
  (v27)(v8, v26, v4);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v28(v8, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(v13 + 16);

  LODWORD(v18) = sub_10001CEC4(v17, v13);

  if (v18 != 101)
  {
    goto LABEL_7;
  }

  v18 = *(*(v13 + 16) + 32);
  *v8 = v18;
  (v27)(v8, v15, v4);
  v19 = v18;
  v15 = _dispatchPreconditionTest(_:)();
  v28(v8, v4);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v20 = v18;
    *(v20 + 8) = 0xD000000000000027;
    *(v20 + 16) = 0x80000001015A8570;
    swift_willThrow();
    v21 = *(*(v13 + 16) + 32);
    *v8 = v21;
    (v27)(v8, v15, v4);
    v22 = v21;
    v23 = _dispatchPreconditionTest(_:)();
    v28(v8, v4);
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v24 = *(v13 + 24);
  if (v24)
  {
    sqlite3_finalize(v24);
    *(v13 + 24) = 0;
  }
}

void sub_100E35EC0()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v47 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v48 = v11;
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45[1] = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000027, 0x80000001015A8A10);
  if (v1)
  {
    goto LABEL_9;
  }

  v14 = v13;

  v15 = *(*(v14 + 16) + 32);
  *v6 = v15;
  v47(v6, v46, v2);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v48(v6, v2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v45[0] = v2;
  v17 = *(v14 + 16);

  v18 = sub_10001CEC4(v17, v14);

  if (v18 == 101)
  {
    swift_initStackObject();

    v26 = sub_10001CC04(v19, 0xD000000000000022, 0x80000001015A8A40);

    v27 = *(*(v26 + 16) + 32);
    *v6 = v27;
    v28 = v45[0];
    v47(v6, v46, v45[0]);
    v29 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v48(v6, v28);
    if (v27)
    {
      v30 = *(v26 + 16);

      v31 = sub_10001CEC4(v30, v26);

      if (v31 == 101)
      {
        v32 = *(*(v26 + 16) + 32);
        *v6 = v32;
        v47(v6, v46, v28);
        v33 = v32;
        LOBYTE(v32) = _dispatchPreconditionTest(_:)();
        v48(v6, v28);
        if (v32)
        {
          swift_beginAccess();
          v34 = *(v26 + 24);
          if (v34)
          {
            sqlite3_finalize(v34);
            *(v26 + 24) = 0;
          }

          v35 = *(*(v14 + 16) + 32);
          *v6 = v35;
          v47(v6, v46, v28);
          v36 = v35;
          v37 = _dispatchPreconditionTest(_:)();
          v48(v6, v28);
          if (v37)
          {
            swift_beginAccess();
            v25 = *(v14 + 24);
            if (!v25)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10089C7D0();
      swift_allocError();
      *v38 = v31;
      *(v38 + 8) = 0xD000000000000020;
      *(v38 + 16) = 0x80000001015A8A70;
      swift_willThrow();
      v39 = *(*(v26 + 16) + 32);
      *v6 = v39;
      v47(v6, v46, v28);
      v40 = v39;
      LOBYTE(v39) = _dispatchPreconditionTest(_:)();
      v48(v6, v28);
      if ((v39 & 1) == 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      swift_beginAccess();
      v41 = *(v26 + 24);
      if (v41)
      {
        sqlite3_finalize(v41);
        *(v26 + 24) = 0;
      }

      v42 = *(*(v14 + 16) + 32);
      *v6 = v42;
      v47(v6, v46, v28);
      v43 = v42;
      v44 = _dispatchPreconditionTest(_:)();
      v48(v6, v28);
      if ((v44 & 1) == 0)
      {
LABEL_30:
        __break(1u);
      }

      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_10089C7D0();
  swift_allocError();
  *v20 = v18;
  *(v20 + 8) = 0xD000000000000025;
  *(v20 + 16) = 0x80000001015A80E0;
  swift_willThrow();
  v21 = *(*(v14 + 16) + 32);
  *v6 = v21;
  v22 = v45[0];
  v47(v6, v46, v45[0]);
  v23 = v21;
  v24 = _dispatchPreconditionTest(_:)();
  v48(v6, v22);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:
  swift_beginAccess();
  v25 = *(v14 + 24);
  if (v25)
  {
LABEL_8:
    sqlite3_finalize(v25);
    *(v14 + 24) = 0;
  }

LABEL_9:
}

void sub_100E3657C(sqlite3_int64 a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v27 = *(v5 + 104);
  v27(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v28 = *(v5 + 8);
  v28(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD00000000000002BLL, 0x80000001015A8AD0);

  if (v2)
  {
    return;
  }

  sub_100034254(a1, 1);
  v14 = *(*(v13 + 16) + 32);
  *v8 = v14;
  v15 = v26;
  (v27)(v8, v26, v4);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v28(v8, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(v13 + 16);

  LODWORD(v18) = sub_10001CEC4(v17, v13);

  if (v18 != 101)
  {
    goto LABEL_7;
  }

  v18 = *(*(v13 + 16) + 32);
  *v8 = v18;
  (v27)(v8, v15, v4);
  v19 = v18;
  v15 = _dispatchPreconditionTest(_:)();
  v28(v8, v4);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v20 = v18;
    *(v20 + 8) = 0xD00000000000002DLL;
    *(v20 + 16) = 0x80000001015A8600;
    swift_willThrow();
    v21 = *(*(v13 + 16) + 32);
    *v8 = v21;
    (v27)(v8, v15, v4);
    v22 = v21;
    v23 = _dispatchPreconditionTest(_:)();
    v28(v8, v4);
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v24 = *(v13 + 24);
  if (v24)
  {
    sqlite3_finalize(v24);
    *(v13 + 24) = 0;
  }
}

void sub_100E3690C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v47 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v48 = v11;
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45[1] = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD00000000000002CLL, 0x80000001015A8950);
  if (v1)
  {
    goto LABEL_9;
  }

  v14 = v13;

  v15 = *(*(v14 + 16) + 32);
  *v6 = v15;
  v47(v6, v46, v2);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v48(v6, v2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v45[0] = v2;
  v17 = *(v14 + 16);

  v18 = sub_10001CEC4(v17, v14);

  if (v18 == 101)
  {
    swift_initStackObject();

    v26 = sub_10001CC04(v19, 0xD000000000000027, 0x80000001015A89B0);

    v27 = *(*(v26 + 16) + 32);
    *v6 = v27;
    v28 = v45[0];
    v47(v6, v46, v45[0]);
    v29 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v48(v6, v28);
    if (v27)
    {
      v30 = *(v26 + 16);

      v31 = sub_10001CEC4(v30, v26);

      if (v31 == 101)
      {
        v32 = *(*(v26 + 16) + 32);
        *v6 = v32;
        v47(v6, v46, v28);
        v33 = v32;
        LOBYTE(v32) = _dispatchPreconditionTest(_:)();
        v48(v6, v28);
        if (v32)
        {
          swift_beginAccess();
          v34 = *(v26 + 24);
          if (v34)
          {
            sqlite3_finalize(v34);
            *(v26 + 24) = 0;
          }

          v35 = *(*(v14 + 16) + 32);
          *v6 = v35;
          v47(v6, v46, v28);
          v36 = v35;
          v37 = _dispatchPreconditionTest(_:)();
          v48(v6, v28);
          if (v37)
          {
            swift_beginAccess();
            v25 = *(v14 + 24);
            if (!v25)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10089C7D0();
      swift_allocError();
      *v38 = v31;
      *(v38 + 8) = 0xD000000000000025;
      *(v38 + 16) = 0x80000001015A89E0;
      swift_willThrow();
      v39 = *(*(v26 + 16) + 32);
      *v6 = v39;
      v47(v6, v46, v28);
      v40 = v39;
      LOBYTE(v39) = _dispatchPreconditionTest(_:)();
      v48(v6, v28);
      if ((v39 & 1) == 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      swift_beginAccess();
      v41 = *(v26 + 24);
      if (v41)
      {
        sqlite3_finalize(v41);
        *(v26 + 24) = 0;
      }

      v42 = *(*(v14 + 16) + 32);
      *v6 = v42;
      v47(v6, v46, v28);
      v43 = v42;
      v44 = _dispatchPreconditionTest(_:)();
      v48(v6, v28);
      if ((v44 & 1) == 0)
      {
LABEL_30:
        __break(1u);
      }

      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_10089C7D0();
  swift_allocError();
  *v20 = v18;
  *(v20 + 8) = 0xD00000000000002ALL;
  *(v20 + 16) = 0x80000001015A8980;
  swift_willThrow();
  v21 = *(*(v14 + 16) + 32);
  *v6 = v21;
  v22 = v45[0];
  v47(v6, v46, v45[0]);
  v23 = v21;
  v24 = _dispatchPreconditionTest(_:)();
  v48(v6, v22);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:
  swift_beginAccess();
  v25 = *(v14 + 24);
  if (v25)
  {
LABEL_8:
    sqlite3_finalize(v25);
    *(v14 + 24) = 0;
  }

LABEL_9:
}

void sub_100E36FC8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v47 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v48 = v11;
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45[1] = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000045, 0x80000001015A8630);
  if (v1)
  {
    goto LABEL_9;
  }

  v14 = v13;

  v15 = *(*(v14 + 16) + 32);
  *v6 = v15;
  v47(v6, v46, v2);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v48(v6, v2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v45[0] = v2;
  v17 = *(v14 + 16);

  v18 = sub_10001CEC4(v17, v14);

  if (v18 == 101)
  {
    swift_initStackObject();

    v26 = sub_10001CC04(v19, 0xD000000000000040, 0x80000001015A86C0);

    v27 = *(*(v26 + 16) + 32);
    *v6 = v27;
    v28 = v45[0];
    v47(v6, v46, v45[0]);
    v29 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v48(v6, v28);
    if (v27)
    {
      v30 = *(v26 + 16);

      v31 = sub_10001CEC4(v30, v26);

      if (v31 == 101)
      {
        v32 = *(*(v26 + 16) + 32);
        *v6 = v32;
        v47(v6, v46, v28);
        v33 = v32;
        LOBYTE(v32) = _dispatchPreconditionTest(_:)();
        v48(v6, v28);
        if (v32)
        {
          swift_beginAccess();
          v34 = *(v26 + 24);
          if (v34)
          {
            sqlite3_finalize(v34);
            *(v26 + 24) = 0;
          }

          v35 = *(*(v14 + 16) + 32);
          *v6 = v35;
          v47(v6, v46, v28);
          v36 = v35;
          v37 = _dispatchPreconditionTest(_:)();
          v48(v6, v28);
          if (v37)
          {
            swift_beginAccess();
            v25 = *(v14 + 24);
            if (!v25)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10089C7D0();
      swift_allocError();
      *v38 = v31;
      *(v38 + 8) = 0xD00000000000002CLL;
      *(v38 + 16) = 0x80000001015A8710;
      swift_willThrow();
      v39 = *(*(v26 + 16) + 32);
      *v6 = v39;
      v47(v6, v46, v28);
      v40 = v39;
      LOBYTE(v39) = _dispatchPreconditionTest(_:)();
      v48(v6, v28);
      if ((v39 & 1) == 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      swift_beginAccess();
      v41 = *(v26 + 24);
      if (v41)
      {
        sqlite3_finalize(v41);
        *(v26 + 24) = 0;
      }

      v42 = *(*(v14 + 16) + 32);
      *v6 = v42;
      v47(v6, v46, v28);
      v43 = v42;
      v44 = _dispatchPreconditionTest(_:)();
      v48(v6, v28);
      if ((v44 & 1) == 0)
      {
LABEL_30:
        __break(1u);
      }

      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_10089C7D0();
  swift_allocError();
  *v20 = v18;
  *(v20 + 8) = 0xD000000000000031;
  *(v20 + 16) = 0x80000001015A8680;
  swift_willThrow();
  v21 = *(*(v14 + 16) + 32);
  *v6 = v21;
  v22 = v45[0];
  v47(v6, v46, v45[0]);
  v23 = v21;
  v24 = _dispatchPreconditionTest(_:)();
  v48(v6, v22);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:
  swift_beginAccess();
  v25 = *(v14 + 24);
  if (v25)
  {
LABEL_8:
    sqlite3_finalize(v25);
    *(v14 + 24) = 0;
  }

LABEL_9:
}

void sub_100E3769C()
{
  v1 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v82 - v2;
  v93 = type metadata accessor for UUID();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v6 + 104;
  v13 = *(v6 + 104);
  (v13)(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v14 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v16 = *(v6 + 8);
  v15 = v6 + 8;
  v94 = v16;
  v16(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_41;
  }

  v86 = v13;
  v95 = v11;
  v91 = v3;
  v97 = 0;
  v98 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v97 = 0x205443454C4553;
  v98 = 0xE700000000000000;
  v17._countAndFlagsBits = sub_100E9D0C0(0, 0xE000000000000000);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x204D4F524620;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x737465737361;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x20455245485720;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6E6F7473626D6F74;
  v21._object = 0xEE00657461645F65;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x44524F2030203E20;
  v22._object = 0xEE00205942205245;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x6E6F7473626D6F74;
  v23._object = 0xEE00657461645F65;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x4353454420;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v25 = v97;
  v26 = v98;
  v96 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v28 = v92;
  v29 = sub_10001CC04(v27, v25, v26);

  if (v28)
  {
    return;
  }

  v88 = 0;
  v30 = *(*(v29 + 16) + 32);
  *v9 = v30;
  v31 = v95;
  v32 = v86;
  v86(v9, v95, v5);
  v33 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v34 = v94;
  v94(v9, v5);
  if ((v30 & 1) == 0)
  {
    goto LABEL_44;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v90 = inited + 3;
  inited[4] = 0;
  v82 = inited + 4;
  inited[5] = 1;
  v92 = inited;
  inited[2] = v29;

  swift_beginAccess();
  v36 = *(*(v29 + 16) + 32);
  *v9 = v36;
  v32(v9, v31, v5);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v34(v9, v5);
  if ((v36 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
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

  v38 = v34;
  v89 = (v85 + 7);
  v84 = (v85 + 4);
  v83 = _swiftEmptyArrayStorage;
  ++v85;
  while (1)
  {
    v42 = v90;
    *v90 = 0;
    v42[1] = 0;
    v92[5] = 1;
    v43 = sqlite3_step(*(v29 + 24));
    if (v43 != 100)
    {
      break;
    }

    v44 = *(*(v29 + 16) + 32);
    *v9 = v44;
    v45 = v12;
    v46 = v29;
    v47 = v95;
    v32(v9, v95, v5);
    swift_retain_n();
    v48 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v38(v9, v5);
    if ((v44 & 1) == 0)
    {
      goto LABEL_38;
    }

    v49 = *(*(v46 + 16) + 32);
    *v9 = v49;
    v32(v9, v47, v5);
    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v38(v9, v5);
    if ((v49 & 1) == 0)
    {
      goto LABEL_39;
    }

    v51 = *(*(v46 + 16) + 32);
    *v9 = v51;
    v52 = v47;
    v53 = v15;
    v54 = v45;
    v32(v9, v52, v5);
    v55 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v56 = v5;
    v57 = v5;
    v58 = v53;
    v38(v9, v57);
    if ((v51 & 1) == 0)
    {
      goto LABEL_40;
    }

    v29 = v46;
    if (sqlite3_column_type(*(v46 + 24), 0) == 5 || (v59 = sqlite3_column_blob(*(v46 + 24), 0)) == 0)
    {
      v39 = v91;
      (*v89)(v91, 1, 1, v93);

      v38 = v94;
      v12 = v54;
LABEL_7:
      v15 = v58;
      sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
      v5 = v56;
      goto LABEL_8;
    }

    v60 = v59;
    v61 = sqlite3_column_bytes(*(v46 + 24), 0);
    v62 = sub_100024DD4(v60, v61);
    v39 = v91;
    v63 = v88;
    UUID.init(crl_data:)(v62, v64);
    v38 = v94;
    v12 = v54;
    if (v63)
    {

      (*v89)(v39, 1, 1, v93);
      v88 = 0;
      goto LABEL_7;
    }

    v88 = 0;
    v65 = v39;
    v66 = v39;
    v67 = v93;
    (*v89)(v65, 0, 1, v93);
    v86 = *v84;
    v86(v87, v66, v67);
    v68 = *(*(v29 + 16) + 32);
    *v9 = v68;
    v32(v9, v95, v56);
    v69 = v68;
    LOBYTE(v68) = _dispatchPreconditionTest(_:)();
    v15 = v58;
    v38(v9, v56);
    if ((v68 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (sqlite3_column_type(*(v29 + 24), 1) == 5)
    {
      v70 = 0;
      v5 = v56;
      v71 = 0;
    }

    else
    {
      v5 = v56;
      if (sqlite3_column_text(*(v29 + 24), 1))
      {
        v71 = String.init(cString:)();
        v70 = v72;
      }

      else
      {
        v71 = 0;
        v70 = 0;
      }
    }

    v73 = *(*(v29 + 16) + 32);
    *v9 = v73;
    v32(v9, v95, v5);
    v74 = v73;
    LOBYTE(v73) = _dispatchPreconditionTest(_:)();
    v94(v9, v5);
    if ((v73 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (sqlite3_column_type(*(v29 + 24), 2) == 5)
    {

      (*v85)(v87, v93);

      v38 = v94;
    }

    else
    {
      v75 = sqlite3_column_double(*(v29 + 24), 2);

      type metadata accessor for CRLAssetDatabaseRow(0);
      v76 = swift_allocObject();
      v86((v76 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID), v87, v93);
      v77 = (v76 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
      *v77 = v71;
      v77[1] = v70;
      *(v76 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) = v75;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v38 = v94;
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v86 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v83 = v96;
    }

LABEL_8:
    v40 = *(*(v29 + 16) + 32);
    *v9 = v40;
    v32(v9, v95, v5);
    v41 = v40;
    LOBYTE(v40) = _dispatchPreconditionTest(_:)();
    v38(v9, v5);
    if ((v40 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (v43 && v43 != 101)
  {
    *v90 = v43;
    v78 = v82;
    *v82 = 0;
    v78[1] = 0;
  }

  v79 = *(*(v29 + 16) + 32);
  *v9 = v79;
  v32(v9, v95, v5);
  v80 = v79;
  LOBYTE(v79) = _dispatchPreconditionTest(_:)();
  v38(v9, v5);
  if ((v79 & 1) == 0)
  {
LABEL_45:
    __break(1u);
  }

  v81 = *(v29 + 24);
  if (v81)
  {
    sqlite3_finalize(v81);
    *(v29 + 24) = 0;
  }
}

void *sub_100E3819C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v55 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v57 = v11;
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

  v58 = v8;
  v56 = v10;
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v60 = 0x205443454C4553;
  v61 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E931D8(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._object = 0x80000001015A3180;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x75755F7465737361;
  v16._object = 0xEA00000000006469;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x293F203D20;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v60;
  v19 = v61;
  v59 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v22 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = v25;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v24;
      *(inited + 40) = v26;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v27, "Failed to fetch an asset reference with error %@", 48, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v24;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v28 = v21;

  v30 = UUID.crl_data()(v29);
  v54 = v31;
  v32 = *(*(v28 + 16) + 32);
  *v6 = v32;
  v33 = v55;
  v58(v6, v55, v2);
  v34 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v35 = v57;
  v57(v6, v2);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v36 = v54;
  sub_100DCCAB4(v30, v54, v28, 1);
  v53[1] = 0;
  sub_10002640C(v30, v36);
  v37 = *(*(v28 + 16) + 32);
  *v6 = v37;
  v58(v6, v33, v2);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v35(v6, v2);
  if ((v37 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  type metadata accessor for SQLiteRowIterator();
  v39 = swift_initStackObject();
  v39[3] = 0;
  v40 = v39 + 3;
  v39[4] = 0;
  v54 = v39 + 4;
  v39[5] = 1;
  v39[2] = v28;

  swift_beginAccess();
  v41 = *(*(v28 + 16) + 32);
  *v6 = v41;
  v58(v6, v33, v2);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v57(v6, v2);
  if ((v41 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v40 = 0;
    v39[4] = 0;
    v39[5] = 1;
    v43 = sqlite3_step(*(v28 + 24));
    if (v43 != 100)
    {
      break;
    }

    v44 = swift_retain_n();
    if (sub_100E933E4(v44, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53[0] = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v24 = v59;
    }

    else
    {
    }

    v45 = *(*(v28 + 16) + 32);
    *v6 = v45;
    v58(v6, v55, v2);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v57(v6, v2);
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (v43 && v43 != 101)
  {
    *v40 = v43;
    v47 = v54;
    *v54 = 0;
    v47[1] = 0;
  }

  v48 = *(*(v28 + 16) + 32);
  *v6 = v48;
  v58(v6, v55, v2);
  v49 = v48;
  v50 = _dispatchPreconditionTest(_:)();
  v57(v6, v2);
  if ((v50 & 1) == 0)
  {
LABEL_30:
    __break(1u);
  }

  v51 = *(v28 + 24);
  if (v51)
  {
    sqlite3_finalize(v51);
    *(v28 + 24) = 0;
  }

  return v24;
}

double sub_100E3892C@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v54 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v54);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v18 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v18 - 8);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = *a1;
  v55 = v10;
  v56 = v9;
  v58 = *(v10 + 56);
  v58(&v49 - v25, 1, 1, v9, v24);
  v28 = OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerIdentifier;
  v53 = a2;
  v29 = *a2;
  if (*(v29 + 16) && (v30 = sub_1007C9460(v27 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerIdentifier), (v31 & 1) != 0))
  {
    v32 = v55;
    sub_10000C83C(*(v29 + 56) + *(v55 + 72) * v30, v14, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v26, &unk_1019F52D0, &unk_10147C1C0);
    sub_100025668(v14, v17, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v17, v26, type metadata accessor for CRLBoardIdentifier);
    v33 = v56;
    (v58)(v26, 0, 1, v56);
  }

  else
  {
    sub_10000CAAC(v26, &unk_1019F52D0, &unk_10147C1C0);
    sub_10000C83C(v27 + v28, v8, type metadata accessor for CRLAssetReferrerIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = sub_1005B981C(&qword_1019F4720, &qword_101478A30);
      sub_100025668(&v8[*(v34 + 48)], v26, type metadata accessor for CRLBoardIdentifier);
      v33 = v56;
      (v58)(v26, 0, 1, v56);
      v35 = type metadata accessor for UUID();
      (*(*(v35 - 8) + 8))(v8, v35);
    }

    else
    {
      sub_100025668(v8, v26, type metadata accessor for CRLBoardIdentifier);
      v33 = v56;
      (v58)(v26, 0, 1, v56);
    }

    v32 = v55;
  }

  sub_10000BE14(v26, v22, &unk_1019F52D0, &unk_10147C1C0);
  if ((*(v32 + 48))(v22, 1, v33) == 1)
  {
    sub_10000CAAC(v26, &unk_1019F52D0, &unk_10147C1C0);
    sub_10000CAAC(v22, &unk_1019F52D0, &unk_10147C1C0);
    v36 = type metadata accessor for CRLAssetAddress(0);
    (*(*(v36 - 8) + 56))(v57, 1, 1, v36);
  }

  else
  {
    v38 = v28;
    v39 = v51;
    sub_100025668(v22, v51, type metadata accessor for CRLBoardIdentifier);
    v40 = v52;
    sub_10000C83C(v27 + v38, v52, type metadata accessor for CRLAssetReferrerIdentifier);
    v41 = v50;
    sub_10000C83C(v39, v50, type metadata accessor for CRLBoardIdentifier);
    (v58)(v41, 0, 1, v33);
    sub_100BC471C(v41, v40);
    sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v26, &unk_1019F52D0, &unk_10147C1C0);
    v42 = OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID;
    v43 = type metadata accessor for UUID();
    v44 = v57;
    (*(*(v43 - 8) + 16))(v57, v27 + v42, v43);
    v46 = *(v27 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerAssetName);
    v45 = *(v27 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerAssetName + 8);
    v47 = type metadata accessor for CRLAssetAddress(0);
    sub_10000C83C(v27 + v38, v44 + *(v47 + 24), type metadata accessor for CRLAssetReferrerIdentifier);
    v48 = (v44 + *(v47 + 20));
    *v48 = v46;
    v48[1] = v45;
    (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
  }

  return result;
}

double sub_100E38FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = (v18 + v17);
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  aBlock[4] = sub_100026460;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A50F0;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v7, v5);
  (*(v28 + 8))(v10, v29);

  return result;
}

uint64_t sub_100E39374(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = sub_100E3819C();
    v15[0] = _swiftEmptyDictionarySingleton;
    v14 = sub_100DC9C50(v13, v15);

    a3(v14, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100E39528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_101A21CF8, &qword_1014B6608);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E38FB8(a3, sub_100EA2330, v11);

  return result;
}

uint64_t sub_100E39678(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v45 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  result = sub_100E2D8C8();
  if (!v2 && result)
  {
    v41[0] = a1;
    v42 = result;
    v43 = v12;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v15 = sub_10001CC04(v14, 0xD000000000000039, 0x80000001015A4520);

    v41[1] = 0;
    static Date.timeIntervalSinceReferenceDate.getter();
    v17 = v16;
    v18 = *(*(v15 + 16) + 32);
    *v8 = v18;
    v19 = v44;
    v45(v8, v44, v4);
    v20 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v43(v8, v4);
    if (v18)
    {
      swift_beginAccess();
      v21 = sqlite3_bind_double(*(v15 + 24), 1, v17);
      v22 = UUID.crl_data()(v21);
      v24 = v23;
      v25 = *(*(v15 + 16) + 32);
      *v8 = v25;
      v45(v8, v19, v4);
      v26 = v25;
      LOBYTE(v25) = _dispatchPreconditionTest(_:)();
      v43(v8, v4);
      if (v25)
      {

        sub_100DCCAB4(v22, v24, v15, 2);
        sub_10002640C(v22, v24);
        v27 = *(*(v15 + 16) + 32);
        *v8 = v27;
        v45(v8, v19, v4);
        v28 = v27;
        LOBYTE(v27) = _dispatchPreconditionTest(_:)();
        v43(v8, v4);
        if (v27)
        {
          v29 = *(v15 + 16);

          v30 = sub_10001CEC4(v29, v15);

          if (v30 != 101)
          {
            v46 = 0;
            v47 = 0xE000000000000000;
            _StringGuts.grow(_:)(40);

            v46 = 0xD000000000000026;
            v47 = 0x80000001015A4560;
            type metadata accessor for UUID();
            sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v34);

            v35 = v46;
            v36 = v47;
            sub_10089C7D0();
            swift_allocError();
            *v37 = v30;
            *(v37 + 8) = v35;
            *(v37 + 16) = v36;
            swift_willThrow();
            v38 = *(*(v15 + 16) + 32);
            *v8 = v38;
            v45(v8, v44, v4);
            v39 = v38;
            LOBYTE(v38) = _dispatchPreconditionTest(_:)();
            v43(v8, v4);
            if (v38)
            {
              v40 = *(v15 + 24);
              if (v40)
              {
                sqlite3_finalize(v40);

                *(v15 + 24) = 0;
              }

              else
              {
              }

              goto LABEL_12;
            }

LABEL_22:
            __break(1u);
          }

          v31 = *(*(v15 + 16) + 32);
          *v8 = v31;
          v45(v8, v44, v4);
          v32 = v31;
          LOBYTE(v31) = _dispatchPreconditionTest(_:)();
          v43(v8, v4);
          if (v31)
          {
            v33 = *(v15 + 24);
            if (v33)
            {
              sqlite3_finalize(v33);
              *(v15 + 24) = 0;
            }

LABEL_12:

            return v42;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100E39C08()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v38 = enum case for DispatchPredicate.onQueue(_:);
  v39 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_100E2D8C8();
  if (!v1 && result)
  {
    v36 = v10;
    v37 = result;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v13 = sub_10001CC04(v12, 0xD000000000000039, 0x80000001015A4760);

    v15 = UUID.crl_data()(v14);
    v35 = v16;
    v17 = *(*(v13 + 16) + 32);
    *v6 = v17;
    v39(v6, v38, v2);
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    v36(v6, v2);
    if (v17)
    {

      v19 = v35;
      sub_100DCCAB4(v15, v35, v13, 1);
      sub_10002640C(v15, v19);
      v20 = *(*(v13 + 16) + 32);
      *v6 = v20;
      v39(v6, v38, v2);
      v21 = v20;
      LOBYTE(v20) = _dispatchPreconditionTest(_:)();
      v36(v6, v2);
      if (v20)
      {
        v22 = *(v13 + 16);

        v23 = sub_10001CEC4(v22, v13);

        if (v23 != 101)
        {
          v40 = 0;
          v41 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v40 = 0xD000000000000026;
          v41 = 0x80000001015A47A0;
          type metadata accessor for UUID();
          sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v27);

          v28 = v40;
          v29 = v41;
          sub_10089C7D0();
          swift_allocError();
          *v30 = v23;
          *(v30 + 8) = v28;
          *(v30 + 16) = v29;
          swift_willThrow();
          v31 = *(*(v13 + 16) + 32);
          *v6 = v31;
          v39(v6, v38, v2);
          v32 = v31;
          LOBYTE(v31) = _dispatchPreconditionTest(_:)();
          v36(v6, v2);
          if (v31)
          {
            swift_beginAccess();
            v33 = *(v13 + 24);
            if (v33)
            {
              sqlite3_finalize(v33);

              *(v13 + 24) = 0;
            }

            else
            {
            }

            goto LABEL_15;
          }

LABEL_20:
          __break(1u);
        }

        v24 = *(*(v13 + 16) + 32);
        *v6 = v24;
        v39(v6, v38, v2);
        v25 = v24;
        LOBYTE(v24) = _dispatchPreconditionTest(_:)();
        v36(v6, v2);
        if (v24)
        {
          swift_beginAccess();
          v26 = *(v13 + 24);
          if (v26)
          {
            sqlite3_finalize(v26);
            *(v13 + 24) = 0;
          }

LABEL_15:

          return v37;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void sub_100E3A120(void (*a1)(void *, uint64_t))
{
  v38 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v40 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v4 + 104;
  v39 = v9;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000027, 0x80000001015A55E0);

  if (v2)
  {
    return;
  }

  v15 = UUID.crl_data()(v14);
  v36 = v16;
  v17 = v11;
  v18 = *(*(v13 + 16) + 32);
  *v7 = v18;
  v39(v7, v40, v3);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v17(v7, v3);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = v36;
  sub_100DCCAB4(v15, v36, v13, 1);
  sub_10002640C(v15, v20);
  v21 = *(*(v13 + 16) + 32);
  *v7 = v21;
  v39(v7, v40, v3);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v17(v7, v3);
  if ((v21 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v17;
  v24 = *(v13 + 16);

  v25 = sub_10001CEC4(v24, v13);

  if (v25 != 101)
  {
    goto LABEL_8;
  }

  v26 = *(*(v13 + 16) + 32);
  *v7 = v26;
  v39(v7, v40, v3);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v23(v7, v3);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v41 = 0xD000000000000018;
    v42 = 0x80000001015A5610;
    type metadata accessor for UUID();
    sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v38 = v23;
    v29 = v41;
    v30 = v42;
    sub_10089C7D0();
    swift_allocError();
    *v31 = v25;
    *(v31 + 8) = v29;
    *(v31 + 16) = v30;
    swift_willThrow();
    v32 = *(*(v13 + 16) + 32);
    *v7 = v32;
    v39(v7, v40, v3);
    v33 = v32;
    LOBYTE(v32) = _dispatchPreconditionTest(_:)();
    v38(v7, v3);
    if (v32)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v13 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v13 + 24) = 0;
  }
}

uint64_t sub_100E3A5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v60 = a2;
  v6 = type metadata accessor for UUID();
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v55 - v10;
  __chkstk_darwin(v12);
  v14 = v55 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v68 = v55 - v20;
  Date.init()();
  v71 = _swiftEmptySetSingleton;
  static Date.distantFuture.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v22 = v21;
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v58 = v18;
  v59 = v24;
  v24(v18, v15);
  sub_100E3769C();
  if (v3)
  {
    v69 = 0;
    v26 = v60;
LABEL_3:
    if (qword_1019F2258 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  v66 = v14;
  v61 = v6;
  v26 = v25;
  if (v25 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v61;
  v40 = v70;
  v69 = 0;
  v55[1] = v23;
  v56 = v15;
  if (!v38)
  {
LABEL_30:

    result = v59(v68, v56);
    v26 = v60;
    goto LABEL_31;
  }

  v41 = v38;
  v42 = 0;
  v70 = v26 & 0xC000000000000001;
  v62 = v26 & 0xFFFFFFFFFFFFFF8;
  v67 = (v40 + 16);
  v64 = (v40 + 8);
  v57 = v11;
  v65 = v26;
  v63 = v38;
  while (v70)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_33;
    }

LABEL_19:
    v44 = *(v43 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate);
    if (v44 <= 0.0)
    {
    }

    else
    {
      v45 = v8;
      v46 = a1;
      v47 = v66;
      v48 = *v67;
      (*v67)(v66, v43 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID, v39);
      Date.timeIntervalSinceReferenceDate.getter();
      v50 = v49 - v44;
      if (v50 <= a3)
      {
        (*v64)(v47, v39);

        if (v50 >= 0.0)
        {
          if (v22 >= a3 - v50)
          {
            v22 = a3 - v50;
          }
        }

        else if (v22 >= a3)
        {
          v22 = a3;
        }
      }

      else
      {
        v51 = v69;
        sub_100E3A120(v47);
        v69 = v51;
        if (v51)
        {
          (*v64)(v47, v61);

          v69 = 0;
          v26 = v60;
          v15 = v56;
          goto LABEL_3;
        }

        v52 = v61;
        v48(v45, v47, v61);
        v53 = v57;
        sub_100E6AF38(v57, v45);

        v54 = *v64;
        (*v64)(v53, v52);
        v54(v47, v52);
        v39 = v52;
      }

      a1 = v46;
      v8 = v45;
      v26 = v65;
      v41 = v63;
    }

    ++v42;
    if (v15 == v41)
    {
      goto LABEL_30;
    }
  }

  if (v42 >= *(v62 + 16))
  {
    goto LABEL_34;
  }

  v43 = *(v26 + 8 * v42 + 32);

  v15 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_19;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_4:
  v27 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v29 = Error.localizedDescription.getter();
  v31 = v30;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v29;
  *(inited + 40) = v31;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v32, "Failed to purge expired deleted asset files, error %@", 53, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v33 = v58;
  static Date.distantFuture.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v35 = v34;

  v36 = v59;
  v59(v33, v15);
  result = v36(v68, v15);
  if (v22 == v35)
  {
    v22 = a3;
  }

LABEL_31:
  *v26 = v71;
  *(v26 + 8) = v22;
  return result;
}

uint64_t sub_100E3AC40@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_100DEE194(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void sub_100E3AC78(void *a1@<X8>)
{
  sub_100DEDF04();
  if (!v1)
  {
    *a1 = v3;
  }
}

char *sub_100E3ACA8@<X0>(char a1@<W1>, char **a2@<X8>)
{
  result = sub_100E3ACDC(a1 & 1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_100E3ACDC(char a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v8 = v9;
  v10 = *(v5 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v39 = *(v5 + 8);
  result = v39(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  result = sub_100E3CB78(a1 & 1);
  if (v2)
  {
    return result;
  }

  v13 = result;
  v38 = sub_100E3CE24(a1 & 1);
  v37 = sub_100E3D4CC(a1 & 1);
  *v8 = v11;
  v40(v8, v41, v4);
  v36 = v11;
  v14 = _dispatchPreconditionTest(_:)();
  result = v39(v8, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = sub_100E3DB78(a1 & 1);
  v43 = _swiftEmptyDictionarySingleton;
  v16 = v1;
  v34 = sub_100E938DC(v15, v16, &v43, sub_100E40B04);

  v35 = 0;
  v33 = v16;

  v17 = v36;
  *v8 = v36;
  v40(v8, v41, v4);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  result = v39(v8, v4);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = v33;
  v21 = v35;
  v22 = sub_100E23AE4(a1 & 1);
  if (v21)
  {
  }

  else
  {
    v23 = v22;
    v43 = _swiftEmptyDictionarySingleton;
    v24 = v20;
    v25 = sub_100E938DC(v23, v24, &v43, sub_100E404F0);
    v26 = v34;
    v27 = v25;

    v28 = sub_100641300(v13);

    v29 = sub_10064130C(v38);

    v42 = v28;
    sub_10079BE60(v29);
    v30 = sub_100641318(v37);

    sub_10079BE60(v30);
    v31 = sub_100641324(v26);

    sub_10079BE60(v31);
    v32 = sub_100641330(v27);

    sub_10079BE60(v32);
    return v42;
  }
}

sqlite3_int64 sub_100E3B158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100DEB448(a2);
  if (!v3)
  {
    if (result)
    {
      result = sub_100E917C4(a1, result);
    }

    *a3 = result;
  }

  return result;
}

uint64_t sub_100E3B1B0()
{
  sub_1005B981C(&qword_101A21EB0, &qword_1014BCE70);
  OS_dispatch_queue.sync<A>(execute:)();
  v69 = v0;
  v10 = v74;
  if (v74 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_137:

    v8 = 0;
    v7 = 0;
    return v8 | v7 & 1u;
  }

  v11 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_137;
  }

LABEL_6:
  v12 = 0;
  v13 = 0;
  v7 = 0;
  v14 = 0;
  v68 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
  v15 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v16 = v74 & 0xC000000000000001;
  v70 = v11;
  v71 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  do
  {
    if (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v12 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_135;
      }

      v17 = *(v10 + 8 * v12 + 32);

      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        swift_once();
        v1 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        swift_getErrorValue();
        v3 = Error.publicDescription.getter(v72, v73);
        v5 = v4;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v3;
        *(inited + 40) = v5;
        v6 = static os_log_type_t.default.getter();
        sub_100005404(v1, &_mh_execute_header, v6, "Caught error in checkIfBoardHasUnmaterializedAssetsAndUnsupportedBoardItems() %{public}@", 88, 2, inited);

        swift_setDeallocating();
        sub_100005070((inited + 32));
LABEL_2:
        v7 = 1;
        v8 = 256;
        return v8 | v7 & 1u;
      }
    }

    if (v7)
    {
      if (v14)
      {

        goto LABEL_2;
      }

      v7 = 1;
    }

    else
    {
      v19 = *&v69[v68];
      os_unfair_lock_lock(*(v19 + 16));
      v20 = *&v69[v15];
      if (v20)
      {
        v21 = *&v69[v15];
      }

      else
      {
        v22 = v15;
        v23 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
        v24 = v69;
        v25 = sub_10001F1A0(v24);

        v26 = *&v69[v22];
        *&v69[v22] = v25;
        v21 = v25;

        v20 = 0;
      }

      v27 = *(v19 + 16);
      v28 = v20;
      os_unfair_lock_unlock(v27);
      v7 = sub_101089A84(v17);

      v10 = v74;
      if (v13)
      {

        v13 = 1;
        v11 = v70;
        v15 = v71;
        v16 = v74 & 0xC000000000000001;
        goto LABEL_9;
      }

      v11 = v70;
      v16 = v74 & 0xC000000000000001;
    }

    v29 = *(v17 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData);
    if (!v29)
    {

      v13 = 0;
      goto LABEL_8;
    }

    v30 = (*v29 + 464);
    v31 = *v30;
    v32 = (*v30)();
    if ((v34 & 0x100) == 0 || (!(v32 | v33) ? (v35 = v34 == 0) : (v35 = 0), v35 || (v32 == 1 ? (v36 = v33 == 0) : (v36 = 0), v36 ? (v37 = v34 == 0) : (v37 = 0), v37 || (v32 == 2 ? (v38 = v33 == 0) : (v38 = 0), v38 ? (v39 = v34 == 0) : (v39 = 0), v39 || (v32 == 3 ? (v40 = v33 == 0) : (v40 = 0), v40 ? (v41 = v34 == 0) : (v41 = 0), !v41)))))
    {
    }

    else
    {
      v65 = objc_opt_self();

      v66 = [v65 standardUserDefaults];
      v67 = [v66 BOOLForKey:@"CRLImageItemsAreUnsupportedWhenDownloadingSendACopyUserDefault"];

      if (v67)
      {
LABEL_54:

        v13 = 1;
        v14 = 1;
        goto LABEL_59;
      }
    }

    v42 = *(v29 + 24);
    if (sub_10001FF1C() < v42)
    {
      goto LABEL_54;
    }

    if ((*(v29 + 16) & 8) == 0)
    {

      v13 = 0;
      v14 = 0;
      goto LABEL_59;
    }

    v43 = v31();
    v45 = v44;
    v47 = v46;

    if ((v47 & 0x100) == 0)
    {
      v13 = v47 | (v45 == 0);
      v14 = v13;
LABEL_59:
      v11 = v70;
LABEL_8:
      v15 = v71;
      goto LABEL_9;
    }

    if (v43 | v45)
    {
      v48 = 0;
    }

    else
    {
      v48 = v47 == 0;
    }

    v15 = v71;
    if (v48 || (v43 == 1 ? (v49 = v45 == 0) : (v49 = 0), v49 ? (v50 = v47 == 0) : (v50 = 0), v50 || (v43 == 2 ? (v51 = v45 == 0) : (v51 = 0), v51 ? (v52 = v47 == 0) : (v52 = 0), v52 || (v43 == 3 ? (v53 = v45 == 0) : (v53 = 0), v53 ? (v54 = v47 == 0) : (v54 = 0), v54 || (v43 == 4 ? (v55 = v45 == 0) : (v55 = 0), v55 ? (v56 = v47 == 0) : (v56 = 0), v56 || (v43 == 5 ? (v57 = v45 == 0) : (v57 = 0), v57 ? (v58 = v47 == 0) : (v58 = 0), v58 || (v43 == 6 ? (v59 = v45 == 0) : (v59 = 0), v59 ? (v60 = v47 == 0) : (v60 = 0), v60 || (v43 == 7 ? (v61 = v45 == 0) : (v61 = 0), v61 ? (v62 = v47 == 0) : (v62 = 0), v62 || (v43 == 8 ? (v63 = v45 == 0) : (v63 = 0), v63 ? (v64 = v47 == 0) : (v64 = 0), v64 || v43 == 9 && !v45 && !v47 || v43 == 10 && !v45 && !v47)))))))))
    {
      v13 = 1;
      v14 = 1;
      v11 = v70;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v11 = v70;
    }

LABEL_9:
    ++v12;
  }

  while (v18 != v11);

  if (v13)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return v8 | v7 & 1u;
}

unint64_t sub_100E3B828@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100E3BA4C(a2);
  if (!v3)
  {
    v7 = result;
    if (result >> 62)
    {
LABEL_22:
      v14 = v7 & 0xFFFFFFFFFFFFFF8;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v13 = a3;
      if (v8)
      {
LABEL_4:
        v12 = a1;
        v9 = 0;
        a3 = _swiftEmptyArrayStorage;
        do
        {
          a1 = v9;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v9 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (a1 >= *(v14 + 16))
              {
                goto LABEL_21;
              }

              v10 = *(v7 + 8 * a1 + 32);

              v9 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
LABEL_20:
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            v11 = [objc_opt_self() standardUserDefaults];
            a3 = [v11 BOOLForKey:@"CRLImageItemsUseUnsupportedMinVersionUserDefault"];

            if (!a3 || *(v10 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues) != 5)
            {
              break;
            }

            ++a1;
            if (v9 == v8)
            {
              goto LABEL_23;
            }
          }

          sub_100E91F48(v12, v10);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a3 = _swiftEmptyArrayStorage;
        }

        while (v9 != v8);
      }
    }

    else
    {
      v14 = result & 0xFFFFFFFFFFFFFF8;
      v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = a3;
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_23:

    *v13 = _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100E3BA4C(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v63 = *(v5 + 104);
  v63(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v62 = *(v5 + 8);
  v62(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_28;
  }

  v60 = v10;
  v61 = v5 + 104;
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v12._countAndFlagsBits = 0x2A205443454C4553;
  v12._object = 0xEE00204D4F524620;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x20455245485720;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x74695F6472616F62;
  v15._object = 0xEB00000000736D65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._object = 0x8000000101585360;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x444E410A3F203D20;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6E6F7473626D6F74;
  v19._object = 0xEA00000000006465;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x444E410A30203D20;
  v20._object = 0xE900000000000020;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000014;
  v21._object = 0x80000001015A3590;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x3F203D3C20;
  v22._object = 0xE500000000000000;
  String.append(_:)(v22);
  v23 = v65;
  v24 = v66;
  v64 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v26 = sub_10001CC04(v25, v23, v24);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v29 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = v32;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v31;
      *(inited + 40) = v33;
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v34, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v31;
    }

LABEL_29:
    swift_once();
    goto LABEL_5;
  }

  v27 = v26;

  v28 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v58 = sub_10084DAE4(a1, *(a1 + *(v28 + 20)), *(a1 + *(v28 + 20) + 8));
  v59 = v36;
  v37 = sub_10001FF1C();
  v38 = *(*(v27 + 16) + 32);
  *v8 = v38;
  v39 = v60;
  (v63)(v8, v60, v4);
  v40 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v62(v8, v4);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_100DCCAB4(v58, v59, v27, 1);
  sub_100034254(v37, 2);
  v41 = *(*(v27 + 16) + 32);
  *v8 = v41;
  (v63)(v8, v39, v4);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v62(v8, v4);
  if ((v41 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = v39;
  type metadata accessor for SQLiteRowIterator();
  v44 = swift_initStackObject();
  v44[3] = 0;
  v45 = v44 + 3;
  v44[4] = 0;
  v57 = v44 + 4;
  v44[5] = 1;
  v44[2] = v27;

  swift_beginAccess();
  v46 = *(*(v27 + 16) + 32);
  *v8 = v46;
  (v63)(v8, v43, v4);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v62(v8, v4);
  if ((v46 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v45 = 0;
    v44[4] = 0;
    v44[5] = 1;
    v48 = sqlite3_step(*(v27 + 24));
    if (v48 != 100)
    {
      break;
    }

    v49 = swift_retain_n();
    if (sub_100E9B7E0(v49, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56[1] = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v31 = v64;
    }

    else
    {
    }

    v50 = *(*(v27 + 16) + 32);
    *v8 = v50;
    (v63)(v8, v60, v4);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v62(v8, v4);
    if ((v50 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v48 && v48 != 101)
  {
    *v45 = v48;
    v52 = v57;
    *v57 = 0;
    v52[1] = 0;
  }

  v53 = *(*(v27 + 16) + 32);
  *v8 = v53;
  (v63)(v8, v60, v4);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v62(v8, v4);
  if ((v53 & 1) == 0)
  {
LABEL_32:
    __break(1u);
  }

  v55 = *(v27 + 24);
  if (v55)
  {
    sqlite3_finalize(v55);
    sub_10002640C(v58, v59);
    *(v27 + 24) = 0;
  }

  else
  {
    sub_10002640C(v58, v59);
  }

  return v31;
}

void *sub_100E3C2C0(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v47 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v49 = *(v5 + 8);
  v49(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_28;
  }

  v48 = v10;
  v50 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000053, 0x80000001015A6580);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v16 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = v19;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v18;
      *(inited + 40) = v20;
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v16, &_mh_execute_header, v21, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v18;
    }

LABEL_29:
    swift_once();
    goto LABEL_5;
  }

  v14 = v13;

  v15 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v44 = sub_10084DAE4(a1, *(a1 + *(v15 + 20)), *(a1 + *(v15 + 20) + 8));
  v45 = v23;
  v24 = *(*(v14 + 16) + 32);
  *v8 = v24;
  v25 = v47;
  v26 = v48;
  v48(v8, v47, v4);
  v27 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v49(v8, v4);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_100DCCAB4(v44, v45, v14, 1);
  v28 = *(*(v14 + 16) + 32);
  *v8 = v28;
  v26(v8, v25, v4);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v49(v8, v4);
  if ((v28 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for SQLiteRowIterator();
  v30 = swift_initStackObject();
  v30[3] = 0;
  v31 = v30 + 3;
  v30[4] = 0;
  v43 = v30 + 4;
  v30[5] = 1;
  v46 = v30;
  v30[2] = v14;

  swift_beginAccess();
  v32 = *(*(v14 + 16) + 32);
  *v8 = v32;
  v48(v8, v25, v4);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v49(v8, v4);
  if ((v32 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v31 = 0;
    v31[1] = 0;
    v46[5] = 1;
    v34 = sqlite3_step(*(v14 + 24));
    if (v34 != 100)
    {
      break;
    }

    v35 = swift_retain_n();
    if (sub_100E9B7E0(v35, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42[1] = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v18 = v50;
    }

    else
    {
    }

    v36 = *(*(v14 + 16) + 32);
    *v8 = v36;
    v48(v8, v47, v4);
    v37 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    v49(v8, v4);
    if ((v36 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v34 && v34 != 101)
  {
    *v31 = v34;
    v38 = v43;
    *v43 = 0;
    v38[1] = 0;
  }

  v39 = *(*(v14 + 16) + 32);
  *v8 = v39;
  v48(v8, v47, v4);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v49(v8, v4);
  if ((v39 & 1) == 0)
  {
LABEL_32:
    __break(1u);
  }

  v41 = *(v14 + 24);
  if (v41)
  {
    sqlite3_finalize(v41);
    sub_10002640C(v44, v45);
    *(v14 + 24) = 0;
  }

  else
  {
    sub_10002640C(v44, v45);
  }

  return v18;
}

unint64_t sub_100E3C9CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(unint64_t *, uint64_t)@<X3>, void *a5@<X8>)
{
  result = a3(a2);
  if (!v5)
  {
    v10 = result;
    v18 = _swiftEmptyArrayStorage;
    if (result >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = a5;
      v17 = a1;
      v12 = 0;
      a5 = i;
      while ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_14;
        }

LABEL_8:
        a4(v17, v13);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        a1 = &v18;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v12;
        if (v14 == a5)
        {
          v15 = v18;
          a5 = v16;
          goto LABEL_18;
        }
      }

      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v12 + 32);

      v14 = (v12 + 1);
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_18:

    *a5 = v15;
  }

  return result;
}

char *sub_100E3CB78(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = a1 & 1;
    v13 = v3;
    v14 = sub_100E3E3EC(v12);
    if (v2)
    {
      return v13;
    }

    v5 = v14;
    v24 = _swiftEmptyArrayStorage;
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_5:
        v16 = 0;
        v21 = v5 & 0xC000000000000001;
        v13 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v21)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_17:
              __break(1u);
LABEL_18:

              return v13;
            }
          }

          else
          {
            if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_20;
            }

            v17 = *(v5 + 8 * v16 + 32);

            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_17;
            }
          }

          v23 = v17;
          sub_100E3FA50(&v23, v3, &v22);
          if (v2)
          {
            goto LABEL_18;
          }

          if (v22)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v13 = v24;
          }

          ++v16;
          if (v18 == v15)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_20:
    __break(1u);
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_22:
  v13 = _swiftEmptyArrayStorage;
LABEL_23:

  return v13;
}

unint64_t sub_100E3CE24(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v56 = v15 & 0xFFFFFFFFFFFFFF8;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  result = sub_100E3EB28(a1 & 1);
  if (v2)
  {
    return result;
  }

  v15 = result;
  v59 = _swiftEmptyArrayStorage;
  if (result >> 62)
  {
    goto LABEL_45;
  }

  v56 = result & 0xFFFFFFFFFFFFFF8;
  v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v53 = v2;
  v55 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  if (!v17)
  {
    v47 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v18 = 0;
  v54 = v15 & 0xC000000000000001;
  v48 = 0x800000010155E590;
  v47 = _swiftEmptyArrayStorage;
  v49 = xmmword_10146C6B0;
  v51 = v3;
  v52 = v15;
  v46 = v7;
  do
  {
    v7 = v18;
    while (1)
    {
      if (v54)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v7 >= *(v56 + 16))
        {
          goto LABEL_43;
        }

        v19 = *(v15 + 8 * v7 + 32);

        v18 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      v20 = *(v3 + v55);
      v21 = v19 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
      if (*(v20 + 16))
      {

        v22 = sub_1000486F0(v21);
        if (v23)
        {
          v24 = *(*(v20 + 56) + 8 * v22);

          v25 = *(v24 + 17);

          if (v25)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v26 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = v49;
            v28 = (v21 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
            v29 = *v28;
            v30 = v28[1];
            if (*v28)
            {
              v31 = 0;
            }

            else
            {
              v31 = v30 == 0xE000000000000000;
            }

            v50 = v26;
            if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v29 = 0xD000000000000012;
              v30 = v48;
            }

            else
            {
            }

            v57 = UUID.uuidString.getter();
            v58 = v35;
            v36._countAndFlagsBits = 15418;
            v36._object = 0xE200000000000000;
            String.append(_:)(v36);
            v37._countAndFlagsBits = v29;
            v37._object = v30;
            String.append(_:)(v37);

            v38._countAndFlagsBits = 62;
            v38._object = 0xE100000000000000;
            String.append(_:)(v38);
            v39 = v57;
            v40 = v58;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v39;
            *(inited + 40) = v40;
            v41 = static os_log_type_t.default.getter();
            sub_100005404(v50, &_mh_execute_header, v41, "Excluding CKShare from unsynced changes. Board identifier: %{public}@", 69, 2, inited);

            swift_setDeallocating();
            sub_100005070((inited + 32));
            v3 = v51;
            v15 = v52;
            goto LABEL_9;
          }
        }

        else
        {
        }
      }

      v32 = *(v19 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
      if (v32 >> 60 != 15)
      {
        break;
      }

LABEL_9:
      ++v7;
      if (v18 == v17)
      {
        goto LABEL_39;
      }
    }

    v33 = *(v19 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
    sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
    sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
    sub_100024E84(v33, v32);
    sub_100024E98(v33, v32);
    v2 = v53;
    v34 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_100025870(v33, v32);
    sub_100025870(v33, v32);
    v53 = v2;
    if (v2)
    {
    }

    v15 = v52;
    if (!v34)
    {

      v3 = v51;
      goto LABEL_9;
    }

    v42 = v46;
    sub_10000C83C(v21, v46, type metadata accessor for CRLBoardIdentifier);
    v43 = *(v19 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges);

    type metadata accessor for CRLBoardShareSyncLocalChangeRecord(0);
    v44 = swift_allocObject();
    *(v44 + OBJC_IVAR____TtC8Freeform34CRLBoardShareSyncLocalChangeRecord_unsyncedChanges) = v43;
    sub_100025668(v42, v44 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    *(v44 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare) = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v3 = v51;
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v47 = v59;
  }

  while (v18 != v17);
LABEL_39:

  return v47;
}

void *sub_100E3D4CC(char a1)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A22E60, &qword_101489688);
  __chkstk_darwin(v8 - 8);
  v49 = &v39 - v9;
  v47 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v51 = *(v47 - 8);
  __chkstk_darwin(v47);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }

  v19 = sub_100E3F264(a1 & 1);
  v16 = v2;
  if (!v2)
  {
    v11 = v19;
    v55 = _swiftEmptyArrayStorage;
    if (v19 >> 62)
    {
      goto LABEL_21;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v49; v20; i = v49)
    {
      v44 = v1;
      v22 = 0;
      v46 = v11 & 0xC000000000000001;
      v45 = v11 & 0xFFFFFFFFFFFFFF8;
      v41 = v51 + 7;
      v42 = v20;
      v43 = v11;
      while (v46)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_18;
        }

LABEL_9:
        v50 = v24;
        sub_100024E98(*(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCCE0);
        v25 = v47;
        CRDT.init(serializedData:)();
        if (v16)
        {

          (*v41)(i, 1, 1, v25);
          sub_10000CAAC(i, &unk_101A22E60, &qword_101489688);
          v26 = 0;
          v51 = 0;
        }

        else
        {
          v51 = 0;
          (*v41)(i, 0, 1, v25);
          v27 = v40;
          sub_100025668(i, v40, type metadata accessor for CRLUserBoardMetadataCRDTData);
          sub_10000C83C(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v7, type metadata accessor for CRLBoardIdentifier);
          v28 = *(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity);
          type metadata accessor for CRLUserBoardMetadataData(0);
          v26 = swift_allocObject();
          sub_100025668(v7, v26 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
          sub_100025668(v27, v26 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData, type metadata accessor for CRLUserBoardMetadataCRDTData);
          *(v26 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) = v28;
        }

        sub_10000C83C(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v7, type metadata accessor for CRLBoardIdentifier);
        v29 = v7;
        v30 = *(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges);
        v31 = *(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
        v32 = *(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8);
        v33 = *(v23 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity);
        v53 = ObjectType;
        v54 = &off_1018A4BB8;
        sub_100024E84(v31, v32);
        v34 = v44;

        *&v52 = v34;
        type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
        v35 = swift_allocObject();
        v36 = OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData;
        *(v35 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData) = 0;
        sub_100050F74(&v52, v35 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_persistenceContext);
        *(v35 + v36) = v26;
        *(v35 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_unsyncedChanges) = v30;
        v7 = v29;
        sub_100025668(v29, v35 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        v37 = (v35 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData);
        *v37 = v31;
        v37[1] = v32;
        *(v35 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity) = v33;
        v1 = &v55;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v22;
        v11 = v43;
        i = v49;
        v16 = v51;
        if (v50 == v42)
        {
          v3 = v55;
          goto LABEL_23;
        }
      }

      if (v22 >= *(v45 + 16))
      {
        goto LABEL_19;
      }

      v23 = *(v11 + 8 * v22 + 32);

      v24 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_23:
  }

  return v3;
}

void *sub_100E3DB78(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v5 + 104);
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v78 = v14;
  v14(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_27;
  }

  v75 = v11;
  v76 = v10;
  v77 = v13;
  v15 = 15677;
  if (a1)
  {
    v15 = 15649;
  }

  v73 = v15;
  v80 = 0;
  v81 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v16._countAndFlagsBits = 0x205443454C4553;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xEB00000000736D65);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x204D4F524620;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x74695F6472616F62;
  v19._object = 0xEB00000000736D65;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x4A2052454E4E490ALL;
  v20._object = 0xEC000000204E494FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 542002976;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x74695F6472616F62;
  v23._object = 0xEB00000000736D65;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._object = 0x8000000101585360;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 2112800;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x736472616F62;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._object = 0x8000000101585360;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x20455245485720;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x74695F6472616F62;
  v31._object = 0xEB00000000736D65;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._object = 0x80000001015A33D0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x444E412030203E20;
  v34._object = 0xE900000000000020;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x736472616F62;
  v35._object = 0xE600000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x616E5F72656E776FLL;
  v37._object = 0xEA0000000000656DLL;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v73;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 16160;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41 = v80;
  v42 = v81;
  v79 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v44 = v74;
  v45 = sub_10001CC04(v43, v41, v42);
  v74 = v44;
  if (v44)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_6:
      v46 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v48 = Error.localizedDescription.getter();
      v50 = v49;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v48;
      *(inited + 40) = v50;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v51, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v48;
    }

LABEL_28:
    swift_once();
    goto LABEL_6;
  }

  v52 = v45;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v53 = *(*(v52 + 16) + 32);
  *v8 = v53;
  v54 = v76;
  v55 = v75;
  v75(v8, v76, v4);
  v56 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v78(v8, v4);
  if ((v53 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  type metadata accessor for SQLiteRowIterator();
  v57 = v55;
  v58 = swift_initStackObject();
  v58[3] = 0;
  v59 = v58 + 3;
  v58[4] = 0;
  v73 = v58 + 4;
  v58[5] = 1;
  v58[2] = v52;

  swift_beginAccess();
  v60 = *(*(v52 + 16) + 32);
  *v8 = v60;
  v57(v8, v54, v4);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v78(v8, v4);
  if ((v60 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v59 = 0;
    v58[4] = 0;
    v58[5] = 1;
    v62 = sqlite3_step(*(v52 + 24));
    if (v62 != 100)
    {
      break;
    }

    v63 = swift_retain_n();
    if (sub_100E9B7E0(v63, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v72 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v48 = v79;
    }

    else
    {
    }

    v64 = *(*(v52 + 16) + 32);
    *v8 = v64;
    v75(v8, v76, v4);
    v65 = v64;
    LOBYTE(v64) = _dispatchPreconditionTest(_:)();
    v78(v8, v4);
    if ((v64 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v62 && v62 != 101)
  {
    *v59 = v62;
    v66 = v73;
    *v73 = 0;
    v66[1] = 0;
  }

  v67 = *(*(v52 + 16) + 32);
  *v8 = v67;
  v75(v8, v76, v4);
  v68 = v67;
  v69 = _dispatchPreconditionTest(_:)();
  v78(v8, v4);
  if ((v69 & 1) == 0)
  {
LABEL_30:
    __break(1u);
  }

  v70 = *(v52 + 24);
  if (v70)
  {
    sqlite3_finalize(v70);
    *(v52 + 24) = 0;
  }

  return v48;
}

void *sub_100E3E3EC(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v58 = *(v6 + 8);
  v58(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_28;
  }

  v57 = v11;
  if (a1)
  {
    v13 = 15649;
  }

  else
  {
    v13 = 15677;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v60 = 0x205443454C4553;
  v61 = 0xE700000000000000;
  v14._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x204D4F524620;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x736472616F62;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x20455245485720;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._object = 0x80000001015A33D0;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x444E412030203E20;
  v19._object = 0xE900000000000020;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x616E5F72656E776FLL;
  v20._object = 0xEA0000000000656DLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v13;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 16160;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24 = v60;
  v25 = v61;
  v59 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = sub_10001CC04(v26, v24, v25);
  v55 = v2;
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_7:
      v28 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = v31;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v28, &_mh_execute_header, v33, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v30;
    }

LABEL_29:
    swift_once();
    goto LABEL_7;
  }

  v34 = v27;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v35 = *(*(v34 + 16) + 32);
  *v9 = v35;
  v36 = v56;
  v57(v9, v56, v5);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v58(v9, v5);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v38 = v36;
  v39 = swift_initStackObject();
  v39[3] = 0;
  v40 = v39 + 3;
  v39[4] = 0;
  v54 = v39 + 4;
  v39[5] = 1;
  v39[2] = v34;

  swift_beginAccess();
  v41 = *(*(v34 + 16) + 32);
  *v9 = v41;
  v57(v9, v38, v5);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v58(v9, v5);
  if ((v41 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v40 = 0;
    v39[4] = 0;
    v39[5] = 1;
    v43 = sqlite3_step(*(v34 + 24));
    if (v43 != 100)
    {
      break;
    }

    v44 = swift_retain_n();
    if (sub_1000826B0(v44, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53[1] = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v30 = v59;
    }

    else
    {
    }

    v45 = *(*(v34 + 16) + 32);
    *v9 = v45;
    v57(v9, v56, v5);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v58(v9, v5);
    if ((v45 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v43 && v43 != 101)
  {
    *v40 = v43;
    v47 = v54;
    *v54 = 0;
    v47[1] = 0;
  }

  v48 = *(*(v34 + 16) + 32);
  *v9 = v48;
  v57(v9, v56, v5);
  v49 = v48;
  v50 = _dispatchPreconditionTest(_:)();
  v58(v9, v5);
  if ((v50 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v51 = *(v34 + 24);
  if (v51)
  {
    sqlite3_finalize(v51);
    *(v34 + 24) = 0;
  }

  return v30;
}

void *sub_100E3EB28(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v58 = *(v6 + 8);
  v58(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_28;
  }

  v57 = v11;
  if (a1)
  {
    v13 = 15649;
  }

  else
  {
    v13 = 15677;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v60 = 0x205443454C4553;
  v61 = 0xE700000000000000;
  v14._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x204D4F524620;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x736472616F62;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x20455245485720;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._object = 0x80000001015A37D0;
  v18._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x444E412031203D20;
  v19._object = 0xE900000000000020;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x616E5F72656E776FLL;
  v20._object = 0xEA0000000000656DLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v13;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 16160;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24 = v60;
  v25 = v61;
  v59 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = sub_10001CC04(v26, v24, v25);
  v55 = v2;
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_7:
      v28 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = v31;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v28, &_mh_execute_header, v33, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v30;
    }

LABEL_29:
    swift_once();
    goto LABEL_7;
  }

  v34 = v27;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v35 = *(*(v34 + 16) + 32);
  *v9 = v35;
  v36 = v56;
  v57(v9, v56, v5);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v58(v9, v5);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v38 = v36;
  v39 = swift_initStackObject();
  v39[3] = 0;
  v40 = v39 + 3;
  v39[4] = 0;
  v54 = v39 + 4;
  v39[5] = 1;
  v39[2] = v34;

  swift_beginAccess();
  v41 = *(*(v34 + 16) + 32);
  *v9 = v41;
  v57(v9, v38, v5);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v58(v9, v5);
  if ((v41 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v40 = 0;
    v39[4] = 0;
    v39[5] = 1;
    v43 = sqlite3_step(*(v34 + 24));
    if (v43 != 100)
    {
      break;
    }

    v44 = swift_retain_n();
    if (sub_1000826B0(v44, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53[1] = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v30 = v59;
    }

    else
    {
    }

    v45 = *(*(v34 + 16) + 32);
    *v9 = v45;
    v57(v9, v56, v5);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v58(v9, v5);
    if ((v45 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v43 && v43 != 101)
  {
    *v40 = v43;
    v47 = v54;
    *v54 = 0;
    v47[1] = 0;
  }

  v48 = *(*(v34 + 16) + 32);
  *v9 = v48;
  v57(v9, v56, v5);
  v49 = v48;
  v50 = _dispatchPreconditionTest(_:)();
  v58(v9, v5);
  if ((v50 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v51 = *(v34 + 24);
  if (v51)
  {
    sqlite3_finalize(v51);
    *(v34 + 24) = 0;
  }

  return v30;
}

void *sub_100E3F264(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v67 = enum case for DispatchPredicate.onQueue(_:);
  v70 = v11;
  v11(v9, v7);
  v12 = v10;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    return result;
  }

  v69 = v14;
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v16._countAndFlagsBits = 0x205443454C4553;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v68 = v2;
  v17._countAndFlagsBits = sub_100EA017C(0x6D5F736472616F62, 0xEF61746164617465);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x204D4F524620;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6D5F736472616F62;
  v19._object = 0xEF61746164617465;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x4A2052454E4E4920;
  v20._object = 0xEC000000204E494FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 542002976;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x736472616F62;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._object = 0x8000000101585360;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 2112800;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6D5F736472616F62;
  v27._object = 0xEF61746164617465;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._object = 0x8000000101585360;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x20455245485720;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x6D5F736472616F62;
  v31._object = 0xEF61746164617465;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._object = 0x80000001015A33D0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 807419424;
  v34._object = 0xE400000000000000;
  String.append(_:)(v34);
  v35 = v72;
  v36 = v73;
  v71 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v38 = v68;
  v39 = sub_10001CC04(v37, v35, v36);
  if (v38)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v40 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = v43;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v42;
      *(inited + 40) = v44;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v45, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return swift_willThrow();
    }

LABEL_27:
    swift_once();
    goto LABEL_5;
  }

  v46 = v39;
  v68 = 0;

  v47 = *(*(v46 + 16) + 32);
  *v9 = v47;
  v48 = v67;
  v70(v9, v67, v5);
  v49 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v69(v9, v5);
  if ((v47 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  type metadata accessor for SQLiteRowIterator();
  v50 = swift_initStackObject();
  v50[3] = 0;
  v51 = v50 + 3;
  v50[4] = 0;
  v65 = v50 + 4;
  v50[5] = 1;
  v50[2] = v46;

  swift_beginAccess();
  v52 = *(*(v46 + 16) + 32);
  *v9 = v52;
  v70(v9, v48, v5);
  v53 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  v69(v9, v5);
  if ((v52 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v66 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v51 = 0;
    v50[4] = 0;
    v50[5] = 1;
    v54 = sqlite3_step(*(v46 + 24));
    if (v54 != 100)
    {
      break;
    }

    v55 = swift_retain_n();
    if (sub_100EA0450(v55, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v66 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v66 = v71;
      v56 = *(*(v46 + 16) + 32);
      *v9 = v56;
      v57 = v9;
      v48 = v67;
    }

    else
    {

      v56 = *(*(v46 + 16) + 32);
      *v9 = v56;
      v57 = v9;
    }

    v70(v57, v48, v5);
    v58 = v56;
    v59 = _dispatchPreconditionTest(_:)();
    v69(v9, v5);
    if ((v59 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (v54 && v54 != 101)
  {
    *v51 = v54;
    v60 = v65;
    *v65 = 0;
    v60[1] = 0;
  }

  v61 = *(*(v46 + 16) + 32);
  *v9 = v61;
  v70(v9, v48, v5);
  v62 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  v69(v9, v5);
  if ((v61 & 1) == 0)
  {
LABEL_29:
    __break(1u);
  }

  v63 = *(v46 + 24);
  if (v63)
  {
    sqlite3_finalize(v63);
    *(v46 + 24) = 0;
  }

  return v66;
}

void sub_100E3FA50(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v82 = a3;
  ObjectType = swift_getObjectType();
  v81 = type metadata accessor for UUID();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v86 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v71 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v84 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v87);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v14 - 8);
  v16 = &v71 - v15;
  v17 = type metadata accessor for CRLBoardCRDTData(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  *&v78 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  *&v77 = &v71 - v21;
  v22 = *a1;
  v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  v24 = *&a2[v23];
  v25 = v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v26 = *(v24 + 16);
  v88 = v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  if (v26)
  {

    v27 = sub_1000486F0(v25);
    if (v28)
    {
      v29 = *(*(v24 + 56) + 8 * v27);

      v30 = *(v29 + 16);

      if (v30)
      {
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v31 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v33 = sub_10084B8C8();
        v35 = v34;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v33;
        *(inited + 40) = v35;
        v36 = static os_log_type_t.default.getter();
        sub_100005404(v31, &_mh_execute_header, v36, "Excluding board from unsynced changes. Board identifier: %{public}@", 67, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        *v82 = 0;
        return;
      }
    }

    else
    {
    }
  }

  v37 = (v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v38 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  if (v38 >> 60 == 15)
  {
    v39 = 0;
  }

  else
  {
    v83 = a2;
    v40 = v4;
    v41 = *v37;
    sub_100024E84(*v37, v38);
    sub_100024E84(v41, v38);
    sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

    CRDT.init(serializedData:)();
    if (v40)
    {

      sub_100025870(v41, v38);

      (*(v18 + 56))(v16, 1, 1, v17);
      sub_10000CAAC(v16, &qword_101A21C68, &qword_1014B6530);
      v39 = 0;
    }

    else
    {
      (*(v18 + 56))(v16, 0, 1, v17);
      v76 = type metadata accessor for CRLBoardCRDTData;
      v42 = v77;
      sub_100025668(v16, v77, type metadata accessor for CRLBoardCRDTData);
      v75 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
      v43 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
      v74 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
      v73 = v43;
      v44 = v78;
      sub_10000C83C(v42, v78, type metadata accessor for CRLBoardCRDTData);
      v45 = (v88 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v46 = v45[1];
      v72 = *v45;
      type metadata accessor for CRLBoardData(0);
      v39 = swift_allocObject();

      sub_100025870(v41, v38);

      sub_100026028(v42, type metadata accessor for CRLBoardCRDTData);
      *(v39 + 16) = 7;
      *(v39 + 40) = v73;
      *(v39 + 24) = v74;
      *(v39 + 56) = v75;
      sub_100025668(v44, v39 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v76);
      v47 = (v39 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v47 = v72;
      v47[1] = v46;
    }

    v4 = 0;
    a2 = v83;
  }

  v48 = v88;
  sub_10000C83C(v88, v13, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v49 = sub_100E320D4(v13);
  sub_100026028(v13, type metadata accessor for CRLAssetReferrerIdentifier);
  if (v4)
  {
  }

  else
  {
    v92 = _swiftEmptySetSingleton;
    sub_100DCB554(v49);
    v87 = 0;

    sub_10000C83C(v48, v84, type metadata accessor for CRLBoardIdentifier);
    LODWORD(v88) = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
    v50 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
    v51 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
    v78 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
    v77 = v51;
    swift_beginAccess();
    v52 = v80;
    v53 = *(v80 + 16);
    v54 = v81;
    v53(v85, v22 + v50, v81);
    v55 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
    swift_beginAccess();
    v53(v86, v22 + v55, v54);
    v56 = a2;
    v83 = a2;
    LODWORD(v76) = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone);
    v75 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted);
    v57 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges);
    v58 = v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData;
    v59 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
    v60 = *(v58 + 8);
    v61 = v92;
    v90 = ObjectType;
    v91 = &off_1018A4BB8;
    *&v89 = v56;
    type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
    v62 = swift_allocObject();
    v63 = OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData;
    *(v62 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData) = 0;
    sub_100050F74(&v89, v62 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_persistenceContext);
    *(v62 + v63) = v39;
    *(v62 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges) = v57;
    *(v62 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedAssetUUIDs) = v61;
    *(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData) = xmmword_101486780;
    sub_100025668(v84, v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v64 = v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions;
    v65 = v77;
    *v64 = v78;
    *(v64 + 16) = v65;
    *(v64 + 32) = v88;
    v66 = *(v52 + 32);
    v66(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID, v85, v54);
    v66(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v86, v54);
    *(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned) = v76;
    *(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted) = v75;
    v67 = (v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
    v68 = *(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
    v69 = *(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
    *v67 = v59;
    v67[1] = v60;
    sub_100024E84(v59, v60);
    sub_100024E84(v59, v60);

    v70 = v83;
    sub_100025870(v68, v69);
    sub_100025870(v59, v60);

    *v82 = v62;
  }
}

void sub_100E404F0(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a4;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  v13 = *&a2[v12];
  v14 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  v15 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
  if (*(v13 + 16))
  {

    v16 = sub_1000486F0(v11 + v15);
    if (v17)
    {
      v18 = *(*(v13 + 56) + 8 * v16);
      swift_beginAccess();
      LOBYTE(v18) = sub_1007A03F0(v14, *(v18 + 32));

      if (v18)
      {
        v19 = v72;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v20 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        *(inited + 56) = &type metadata for Int;
        *(inited + 64) = &protocol witness table for Int;
        *(inited + 32) = v14;
        v22 = sub_10084B8C8();
        v24 = v23;
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = sub_1000053B0();
        *(inited + 72) = v22;
        *(inited + 80) = v24;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v20, &_mh_execute_header, v25, "Excluding freehand drawing bucket from unsynced changes. Bucket Index: %d, board identifier: %{public}@", 103, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        *v19 = 0;
        return;
      }
    }

    else
    {
    }
  }

  v68 = v14;
  if (*(*a3 + 16))
  {
    sub_1000486F0(v11 + v15);
    if (v26)
    {
      v67 = v4;

LABEL_14:
      v66 = v10;
      sub_10000C83C(v11 + v15, v10, type metadata accessor for CRLBoardIdentifier);
      v29 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
      v30 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
      v31 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v62 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v32 = v62;
      v57 = v31;
      v33 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v34 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
      v35 = (v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions);
      v36 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 40);
      v65 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 32);
      v64 = v36;
      v63 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 48);
      v61 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges);
      v37 = type metadata accessor for CRLBoardDataStore(0);
      v38 = v35[1];
      v60 = *v35;
      v59 = v38;
      v70 = v37;
      v71 = &off_1018A4BB8;
      sub_100024E98(v29, v30);
      v39 = v32;
      v40 = v57;
      sub_100024E84(v39, v57);
      sub_100024E84(v33, v34);
      v41 = a2;

      *&v69 = v41;
      type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
      v42 = swift_allocObject();
      v43 = (v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData);
      v58 = xmmword_101486780;
      *(v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
      sub_100050F74(&v69, v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_persistenceContext);
      v44 = (v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
      *v44 = v29;
      v44[1] = v30;
      v45 = *v43;
      v46 = v43[1];
      *v43 = v33;
      v43[1] = v34;
      sub_100025870(v45, v46);
      *(v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_unsyncedChanges) = v61;
      v47 = v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions;
      v48 = v59;
      *v47 = v60;
      *(v47 + 16) = v48;
      v49 = v64;
      *(v47 + 32) = v65;
      *(v47 + 40) = v49;
      *(v47 + 48) = v63;
      *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData) = v58;
      sub_100025668(v66, v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex) = v68;
      v50 = (v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
      v51 = *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
      v52 = *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8);
      v53 = v62;
      *v50 = v62;
      v50[1] = v40;
      sub_100024E84(v53, v40);
      sub_100025870(v51, v52);
      sub_100025870(v53, v40);
      *v72 = v42;
      return;
    }
  }

  v27 = sub_100DEB448(v11 + v15);
  if (v4)
  {
    return;
  }

  if (v27)
  {
    v67 = 0;
    sub_10000C83C(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, v10, type metadata accessor for CRLBoardIdentifier);

    sub_100BC4904(v28, v10);
    goto LABEL_14;
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v54 = static OS_os_log.dataSync;
  v55 = static os_log_type_t.error.getter();
  sub_100005404(v54, &_mh_execute_header, v55, "Found a freehandDrawingBucket database row that has no corresponding board database row", 87, 2, _swiftEmptyArrayStorage);
  *v72 = 0;
}

void sub_100E40B04(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *&v135 = a3;
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v129 = &v119 - v8;
  v9 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v9 - 8);
  v137 = &v119 - v10;
  v134 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v134);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v13 - 8);
  v130 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  *&v136 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v119 - v19;
  v21 = *a1;
  v22 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  v140 = a2;
  v23 = *&a2[v22];
  v24 = *(v16 + 16);
  v132 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID;
  v143 = v24;
  v144 = v16 + 16;
  v24(v20, v21 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v15);
  v25 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier;

  v138 = v25;
  v139 = v21;
  LOBYTE(a2) = sub_101270BB4(v20, v21 + v25, v23);

  v128 = v16;
  v141 = *(v16 + 8);
  v142 = v16 + 8;
  v141(v20, v15);
  v131 = a4;
  if ((a2 & 1) == 0)
  {
    v35 = *v135;
    v37 = v138;
    v36 = v139;
    if (*(*v135 + 16) && (v38 = sub_1000486F0(v139 + v138), (v39 & 1) != 0))
    {
      v40 = *(*(v35 + 56) + 8 * v38);
      swift_retain_n();
      v41 = v140;
    }

    else
    {
      v42 = v36 + v37;
      v41 = v140;
      v43 = v145;
      v44 = sub_100DEB448(v42);
      if (v43)
      {
        return;
      }

      if (!v44)
      {
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v81 = static OS_os_log.dataSync;
        v82 = static os_log_type_t.error.getter();
        sub_100005404(v81, &_mh_execute_header, v82, "Found a boardItem database row that has no corresponding board database row", 75, 2, _swiftEmptyArrayStorage);
LABEL_41:
        *v131 = 0;
        return;
      }

      v145 = 0;
      v40 = v44;
      v45 = v130;
      sub_10000C83C(v44 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, v130, type metadata accessor for CRLBoardIdentifier);
      v46 = swift_retain_n();
      sub_100BC4904(v46, v45);
    }

    v47 = v139;
    v48 = sub_100E929EC(v139);
    v49 = *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
    v143(v12, v47 + v132, v15);
    sub_10000C83C(v40 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, &v12[v49], type metadata accessor for CRLBoardIdentifier);

    swift_storeEnumTagMultiPayload();
    v50 = v145;
    v51 = sub_100E320D4(v12);
    v52 = v50;
    sub_100026028(v12, type metadata accessor for CRLAssetReferrerIdentifier);
    if (v50)
    {

      return;
    }

    v120 = v48;
    v121 = v40;
    v149 = _swiftEmptySetSingleton;
    if (v51 >> 62)
    {
LABEL_45:
      v53 = _CocoaArrayWrapper.endIndex.getter();
      v54 = v131;
      if (v53)
      {
LABEL_14:
        v55 = 0;
        v56 = *&v41[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
        v134 = v15;
        *&v135 = v56;
        v122 = v51 & 0xFFFFFFFFFFFFFF8;
        v123 = v53;
        v126 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
        v127 = v51 & 0xC000000000000001;
        v145 = v52;
        v124 = v51;
        v125 = v20;
        while (1)
        {
          if (v127)
          {
            v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v55 >= *(v122 + 16))
            {
              __break(1u);
              goto LABEL_45;
            }
          }

          v15 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          v58 = OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID;
          *&v133 = v57;
          v59 = v41;
          v60 = v136;
          v61 = v134;
          v143(v136, v57 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v134);
          v62 = v60;
          v63 = v59;
          sub_100E6AF38(v20, v62);
          v141(v20, v61);
          os_unfair_lock_lock(*(v135 + 16));
          v64 = v126;
          v65 = *&v63[v126];
          if (v65)
          {
            v66 = *&v63[v126];
          }

          else
          {
            v67 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
            v68 = v63;
            v69 = v63;
            v70 = sub_10001F1A0(v69);

            v71 = *&v68[v64];
            *&v68[v64] = v70;
            v66 = v70;

            v65 = 0;
          }

          v72 = *(v135 + 16);
          v73 = v65;
          os_unfair_lock_unlock(v72);
          v74 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v75 = swift_allocObject();
          v76 = v133;
          *(v75 + 16) = v74;
          *(v75 + 24) = v76;

          v77 = v137;
          sub_10108CAF4(v76 + v58, 0, 3, sub_100EA53E8, v75, v137);

          v78 = type metadata accessor for URL();
          if ((*(*(v78 - 8) + 48))(v77, 1, v78) == 1)
          {
            break;
          }

          sub_10000CAAC(v77, &unk_1019F33C0, &unk_101468A60);
          ++v55;
          v51 = v124;
          v79 = v15 == v123;
          v52 = v145;
          v15 = v134;
          v41 = v140;
          v20 = v125;
          if (v79)
          {

            v80 = v149;
            v54 = v131;
            goto LABEL_47;
          }
        }

        sub_10000CAAC(v77, &unk_1019F33C0, &unk_101468A60);
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v83 = static OS_os_log.dataSync;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v85 = v125;
        if (v120)
        {
          (*(*v120 + 264))();
          v86 = UUID.uuidString.getter();
          v88 = v87;
          v141(v85, v134);
        }

        else
        {
          v86 = 0;
          v88 = 0;
        }

        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        if (v88)
        {
          v89 = v86;
        }

        else
        {
          v89 = 0;
        }

        v90 = 0xE000000000000000;
        if (v88)
        {
          v90 = v88;
        }

        *(inited + 32) = v89;
        *(inited + 40) = v90;

        v91 = static os_log_type_t.default.getter();
        sub_100005404(v83, &_mh_execute_header, v91, "Skipping item with id %{public}@ when fetching unsynced changes because file for the item's asset doesn't exists", 112, 2, inited);

        swift_setDeallocating();
        sub_100005070((inited + 32));
        goto LABEL_41;
      }
    }

    else
    {
      v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v54 = v131;
      if (v53)
      {
        goto LABEL_14;
      }
    }

    v80 = _swiftEmptySetSingleton;
LABEL_47:
    v92 = sub_100E2F2E8(v80);
    if (v52)
    {
    }

    else if (v92)
    {
      v93 = v139;
      v143(v20, v139 + v132, v15);
      LODWORD(v137) = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
      v143 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
      v94 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
      v141 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8);
      v142 = v94;
      LODWORD(v140) = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16);
      v95 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
      v96 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
      v135 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
      v136 = v96;
      swift_beginAccess();
      sub_10000BE14(v93 + v95, v129, &qword_1019F6990, &qword_10146D2F0);
      sub_10000C83C(v93 + v138, v130, type metadata accessor for CRLBoardIdentifier);
      LODWORD(v144) = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
      v97 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
      v145 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v134 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
      v98 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
      v99 = *(v93 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
      v138 = v99;
      v139 = v98;
      v147 = type metadata accessor for CRLBoardDataStore(0);
      v148 = &off_1018A4BB8;
      v100 = v41;
      sub_100024E84(v145, v97);
      sub_100024E84(v98, v99);

      *&v146 = v100;
      type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
      v101 = swift_allocObject();
      v102 = v15;
      v103 = OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData;
      *(v101 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData) = 0;
      v104 = (v101 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
      v133 = xmmword_101486780;
      *(v101 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
      sub_100050F74(&v146, v101 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_persistenceContext);
      *(v101 + v103) = v120;
      v105 = *v104;
      v106 = v104[1];
      *v104 = v145;
      v104[1] = v97;
      sub_100025870(v105, v106);
      *(v101 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) = v134;
      *(v101 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedAssetUUIDs) = v80;
      v107 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
      v108 = v128;
      (*(v128 + 56))(v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID, 1, 1, v102);
      *(v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData) = v133;
      (*(v108 + 32))(v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v20, v102);
      v109 = v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions;
      *(v109 + 32) = v137;
      v110 = v135;
      *v109 = v136;
      *(v109 + 16) = v110;
      v111 = v142;
      *(v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions) = v143;
      v112 = v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues;
      v113 = v141;
      *v112 = v111;
      *(v112 + 8) = v113;
      *(v112 + 16) = v140;
      swift_beginAccess();
      sub_10002C638(v129, v101 + v107, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();
      sub_100025668(v130, v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned) = v144;
      v114 = (v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
      v115 = *(v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
      v116 = *(v101 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
      v118 = v138;
      v117 = v139;
      *v114 = v139;
      v114[1] = v118;
      sub_100024E84(v117, v118);
      sub_100025870(v115, v116);
      sub_100025870(v117, v118);
      *v131 = v101;
    }

    else
    {

      *v54 = 0;
    }

    return;
  }

  if (qword_1019F2258 != -1)
  {
LABEL_43:
    swift_once();
  }

  v26 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_10146BDE0;
  v143(v20, v139 + v132, v15);
  v28 = UUID.uuidString.getter();
  v30 = v29;
  v141(v20, v15);
  *(v27 + 56) = &type metadata for String;
  v31 = sub_1000053B0();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v32 = sub_10084B8C8();
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v31;
  *(v27 + 72) = v32;
  *(v27 + 80) = v33;
  v34 = static os_log_type_t.default.getter();
  sub_100005404(v26, &_mh_execute_header, v34, "Excluding board item from unsynced changes item UUID: %{public}@, board identifier: %{public}@", 94, 2, v27);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  *v131 = 0;
}

void *sub_100E4197C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_100E2D8C8();
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v7 = UUID.uuidString.getter();
    v9 = v8;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v10 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v10, "Failed to fetch asset row for assetUUID id %{public}@ when fetching unsynced changes", 84, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    return v4;
  }

  return result;
}

uint64_t sub_100E41AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *&v50 = a3;
  v47 = a4;
  v48 = a5;
  v45 = a1;
  v46 = a2;
  v6 = type metadata accessor for UUID();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v5;
  v20 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    static Date.timeIntervalSinceReferenceDate.getter();
    v24 = v23;
    sub_10000C83C(v45, v14, type metadata accessor for CRLBoardIdentifier);
    v45 = 0x2000400000000;
    v25 = v51;
    v26 = *(v51 + 16);
    v26(v11, v46, v6);
    v26(v8, v50, v6);
    v46 = sub_10001FF1C();
    type metadata accessor for CRLBoardDatabaseRow(0);
    v27 = swift_allocObject();
    v50 = xmmword_101486780;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data) = xmmword_101486780;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData) = xmmword_101486780;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData) = xmmword_101486780;
    sub_10000C83C(v14, v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v28 = &v14[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
    v29 = *v28;
    v30 = *(v28 + 1);

    sub_100026028(v14, type metadata accessor for CRLBoardIdentifier);
    v31 = (v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName);
    *v31 = v29;
    v31[1] = v30;
    v32 = v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
    v33 = v45;
    *v32 = 0x1000000000000;
    *(v32 + 8) = v33;
    *(v32 + 16) = 0x1000000000000;
    *(v32 + 24) = 0;
    *(v32 + 32) = 1;
    v34 = *(v25 + 32);
    v34(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID, v11, v6);
    v34(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v8, v6);
    v35 = *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v36 = *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data) = v50;
    sub_100025870(v35, v36);
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone) = 1;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) = 0;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges) = 0;
    v37 = (v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
    v38 = *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
    v39 = *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
    v41 = v47;
    v40 = v48;
    sub_100024E84(v47, v48);
    *v37 = v41;
    v37[1] = v40;
    sub_100025870(v38, v39);
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate) = v24;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted) = 0;
    v42 = *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
    v43 = *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData) = v50;
    sub_100025870(v42, v43);
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime) = v24;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable) = 0;
    *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion) = v46;
    sub_100E03D90(v27);
    swift_setDeallocating();
    sub_100026028(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);

    v44 = *(v51 + 8);
    v44(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID, v6);
    v44(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v6);
    sub_100025870(*(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data), *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8));
    sub_100025870(*(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData), *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8));
    sub_100025870(*(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData), *(v27 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8));
    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100E420CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v151 = a8;
  v147 = a7;
  v148 = a5;
  LODWORD(v144) = a4;
  v143 = a3;
  v142 = a2;
  *&v158 = a1;
  v145 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v145);
  v146 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v14 - 8);
  v141 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v16 - 8);
  v140 = &v138 - v17;
  v18 = type metadata accessor for UUID();
  v155 = *(v18 - 1);
  v156 = v18;
  __chkstk_darwin(v18);
  v139 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&qword_101A21E08, &unk_1014B6790);
  __chkstk_darwin(v20);
  v138 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v138 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = (&v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *&v10[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v29 = v30;
  v31 = *(v26 + 104);
  v150 = enum case for DispatchPredicate.onQueue(_:);
  v152 = v31;
  v153 = v26 + 104;
  v31(v29, v27);
  v32 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v34 = *(v26 + 8);
  v33 = v26 + 8;
  v154 = v29;
  v35 = v29;
  v36 = v34;
  v149 = v25;
  v34(v35, v25);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v37 = v157;
  v38 = sub_100DEF7D4(v24, v158, a6);
  if (!v37)
  {
    v41 = a6;
    v157 = 0;
    v42 = *(v20 + 64);
    *&v24[*(v20 + 48)] = v38;
    v24[v42] = v39 & 1;
    if (v39)
    {
      v144 = v38;
      v43 = *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
      v44 = v146;
      (*(v155 + 16))(v146, v158, v156);
      sub_10000C83C(v41, &v44[v43], type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v45 = v157;
      sub_100DF8718(v44);
      sub_100026028(v44, type metadata accessor for CRLAssetReferrerIdentifier);
      if (v45)
      {
        sub_10000CAAC(v24, &qword_101A21E08, &unk_1014B6790);
        return result;
      }

      v155 = v41;
      v146 = v11;
      v156 = v36;
      v157 = v33;
      v78 = v24;
      v79 = v151;
      if (v151 >> 60 == 15)
      {
        v80 = 0;
      }

      else
      {
        v80 = 0x645F636E79732C20;
      }

      if (v151 >> 60 == 15)
      {
        v81 = 0xE000000000000000;
      }

      else
      {
        v81 = 0xEF3F203D20617461;
      }

      v145 = v78;
      v82 = v138;
      sub_10000BE14(v78, v138, &qword_101A21E08, &unk_1014B6790);
      if (*(v82 + *(v20 + 48)))
      {
        sub_10000CAAC(v82, &qword_1019F6990, &qword_10146D2F0);
        v83 = v154;
        if (v144 != 16)
        {
          v84 = 0;
          v85 = 0xE000000000000000;
          goto LABEL_19;
        }
      }

      else
      {
        sub_10000CAAC(v82, &qword_1019F6990, &qword_10146D2F0);
        v83 = v154;
      }

      v85 = 0x80000001015A7390;
      v84 = 0xD000000000000029;
LABEL_19:
      v159 = 0;
      v160 = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v86._countAndFlagsBits = 0x20455441445055;
      v86._object = 0xE700000000000000;
      String.append(_:)(v86);
      v87._countAndFlagsBits = 0x74695F6472616F62;
      v87._object = 0xEB00000000736D65;
      String.append(_:)(v87);
      v88._countAndFlagsBits = 0x2054455320;
      v88._object = 0xE500000000000000;
      String.append(_:)(v88);
      v89._countAndFlagsBits = 0x755F746E65726170;
      v89._object = 0xEB00000000646975;
      String.append(_:)(v89);
      v90._countAndFlagsBits = 0x202C3F203D20;
      v90._object = 0xE600000000000000;
      String.append(_:)(v90);
      v91._countAndFlagsBits = 0x6E6F7473626D6F74;
      v91._object = 0xEA00000000006465;
      String.append(_:)(v91);
      v92._countAndFlagsBits = 0x202C31203D20;
      v92._object = 0xE600000000000000;
      String.append(_:)(v92);
      v93._countAndFlagsBits = v84;
      v93._object = v85;
      String.append(_:)(v93);

      v94._countAndFlagsBits = 32;
      v94._object = 0xE100000000000000;
      String.append(_:)(v94);
      v95._object = 0x80000001015A33D0;
      v95._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v95);
      v96._countAndFlagsBits = 1059077408;
      v96._object = 0xE400000000000000;
      String.append(_:)(v96);
      v97._countAndFlagsBits = v80;
      v97._object = v81;
      String.append(_:)(v97);

      v98._countAndFlagsBits = 0x2820455245485720;
      v98._object = 0xE800000000000000;
      String.append(_:)(v98);
      v99._countAndFlagsBits = 0x6975755F6D657469;
      v99._object = 0xE900000000000064;
      String.append(_:)(v99);
      v100._countAndFlagsBits = 0x444E41203F203D20;
      v100._object = 0xE900000000000020;
      String.append(_:)(v100);
      v101._object = 0x8000000101585360;
      v101._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v101);
      v102._countAndFlagsBits = 0x293F203D20;
      v102._object = 0xE500000000000000;
      String.append(_:)(v102);
      v103 = v159;
      v104 = v160;
      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v106 = sub_10001CC04(v105, v103, v104);

      sub_10089BD40(v148, 1);
      v107 = sub_100034254(v144 & 0xFFFFFFFFFFFFFFEFLL, 2);
      if (v79 >> 60 == 15)
      {
        v151 = 3;
        v108 = v156;
      }

      else
      {
        v109 = *(*(v106 + 16) + 32);
        *v83 = v109;
        v110 = v149;
        (v152)(v83, v150, v149);
        v111 = v147;
        sub_100024E84(v147, v79);
        v112 = v109;
        LOBYTE(v109) = _dispatchPreconditionTest(_:)();
        v108 = v156;
        v156(v83, v110);
        if ((v109 & 1) == 0)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        sub_100DCCAB4(v111, v79, v106, 3);
        v107 = sub_100025870(v111, v79);
        v151 = 4;
      }

      v113 = v150;
      v114 = UUID.crl_data()(v107);
      v116 = v115;
      v117 = *(*(v106 + 16) + 32);
      *v83 = v117;
      v118 = v149;
      (v152)(v83, v113, v149);
      v119 = v117;
      LOBYTE(v117) = _dispatchPreconditionTest(_:)();
      v108(v83, v118);
      if (v117)
      {

        sub_100DCCAB4(v114, v116, v106, v151);
        sub_10002640C(v114, v116);
        v120 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v156 = sub_10084DAE4(v155, *(v155 + *(v120 + 20)), *(v155 + *(v120 + 20) + 8));
        *&v158 = v121;
        v122 = *(*(v106 + 16) + 32);
        *v83 = v122;
        v123 = v113;
        v124 = v152;
        (v152)(v83, v123, v118);
        v125 = v122;
        LOBYTE(v122) = _dispatchPreconditionTest(_:)();
        v108(v83, v118);
        if (v122)
        {

          sub_100DCCAB4(v156, v158, v106, v151 + 1);
          v126 = *(*(v106 + 16) + 32);
          *v83 = v126;
          v124(v83, v150, v118);
          v127 = v126;
          LOBYTE(v126) = _dispatchPreconditionTest(_:)();
          v108(v83, v118);
          if (v126)
          {
            v128 = *(v106 + 16);

            v129 = sub_10001CEC4(v128, v106);

            if (v129 == 101)
            {
              sub_10002640C(v156, v158);
              v130 = *(*(v106 + 16) + 32);
              v131 = v154;
              *v154 = v130;
              (v152)(v131, v150, v118);
              v132 = v130;
              LOBYTE(v130) = _dispatchPreconditionTest(_:)();
              v108(v131, v118);
              if ((v130 & 1) == 0)
              {
                __break(1u);
                sub_10000CAAC(v145, &qword_101A21E08, &unk_1014B6790);
LABEL_33:

                return result;
              }

LABEL_35:
              swift_beginAccess();
              v137 = *(v106 + 24);
              if (v137)
              {
                sqlite3_finalize(v137);
                sub_10000CAAC(v145, &qword_101A21E08, &unk_1014B6790);
                *(v106 + 24) = 0;
              }

              else
              {
                sub_10000CAAC(v145, &qword_101A21E08, &unk_1014B6790);
              }

              goto LABEL_33;
            }

            sub_10089C7D0();
            swift_allocError();
            *v133 = v129;
            *(v133 + 8) = 0xD000000000000024;
            *(v133 + 16) = 0x80000001015A5280;
            swift_willThrow();
            sub_10002640C(v156, v158);
            v134 = *(*(v106 + 16) + 32);
            v135 = v154;
            *v154 = v134;
            (v152)(v135, v150, v118);
            v136 = v134;
            LOBYTE(v134) = _dispatchPreconditionTest(_:)();
            v108(v135, v118);
            if (v134)
            {
              goto LABEL_35;
            }

LABEL_43:
            __break(1u);
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      __break(1u);
      goto LABEL_40;
    }

    v46 = a6;
    v146 = v11;
    v145 = v24;
    v47 = v154;
    *v154 = v32;
    v48 = v149;
    (v152)(v47, v150, v149);
    v49 = v32;
    v50 = _dispatchPreconditionTest(_:)();
    v36(v47, v48);
    if (v50)
    {
      v153 = a9;
      v154 = a10;
      v52 = v155;
      v51 = v156;
      v53 = v139;
      (*(v155 + 16))(v139, v158, v156);
      v152 = 0x2000400000000;
      v54 = v140;
      sub_10000BE14(v148, v140, &qword_1019F6990, &qword_10146D2F0);
      v55 = v141;
      sub_10000C83C(v46, v141, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for CRLBoardItemDatabaseRow(0);
      v56 = swift_allocObject();
      v57 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
      (*(v52 + 56))(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v51);
      v158 = xmmword_101486780;
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
      (*(v52 + 32))(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v53, v51);
      v58 = v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
      v59 = v152;
      *v58 = 0x1000000000000;
      *(v58 + 8) = v59;
      *(v58 + 16) = 0x1000000000000;
      *(v58 + 24) = 0;
      *(v58 + 32) = 1;
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
      swift_beginAccess();
      sub_10002C638(v54, v56 + v57, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();
      sub_100025668(v55, v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      v60 = v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
      v61 = v143;
      *v60 = v142;
      *(v60 + 8) = v61;
      *(v60 + 16) = v144 & 1;
      v62 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
      v63 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v158;
      sub_100025870(v62, v63);
      v64 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
      v65 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v158;
      sub_100025870(v64, v65);
      v66 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
      v67 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v158;
      sub_100025870(v66, v67);
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 1;
      *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
      v68 = (v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
      v69 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
      v70 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
      v71 = v147;
      v72 = v151;
      sub_100024E84(v147, v151);
      *v68 = v71;
      v68[1] = v72;
      sub_100025870(v69, v70);
      v73 = (v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v74 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v75 = *(v56 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
      v77 = v153;
      v76 = v154;
      sub_100024E84(v153, v154);
      *v73 = v77;
      v73[1] = v76;
      sub_100025870(v74, v75);
      sub_100DF5A90(v56);
      sub_10000CAAC(v145, &qword_101A21E08, &unk_1014B6790);
      swift_setDeallocating();
      sub_100FE3A40();
      swift_deallocClassInstance();
      return result;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

void sub_100E43198(char *a1, uint64_t a2, sqlite3_int64 a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  v107 = a4;
  v105 = a3;
  v103 = type metadata accessor for DispatchWorkItemFlags();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v17 = v18;
  v19 = *(v14 + 104);
  v108 = enum case for DispatchPredicate.onQueue(_:);
  v109 = v14 + 104;
  v110 = v19;
  v19(v17, v15);
  v20 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v21 = *(v14 + 8);
  v106 = v13;
  v104 = v21;
  v21(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v22 = sub_100DEB448(a1);
  if (v6)
  {
    return;
  }

  v97 = v7;
  v96 = a1;
  if (!v22)
  {
    sub_100E41AFC(v96, a2, v105, v107, a5);
    return;
  }

  v105 = v22;
  if (a5 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0x7461645F636E7973;
  }

  if (a5 >> 60 == 15)
  {
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = 0xEE002C3F203D2061;
  }

  aBlock = 0;
  v112 = 0xE000000000000000;
  v95 = 0;
  _StringGuts.grow(_:)(52);
  v25._countAndFlagsBits = 0x20455441445055;
  v25._object = 0xE700000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x736472616F62;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x2054455320;
  v27._object = 0xE500000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6E6F7473626D6F74;
  v28._object = 0xEA00000000006465;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C31203D20;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._object = 0x80000001015A33D0;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C3F203D20;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = v23;
  v32._object = v24;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 10;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._object = 0xEE00657461645F65;
  v34._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x4548570A3F203D20;
  v35._object = 0xEB00000000204552;
  String.append(_:)(v35);
  v36._object = 0x8000000101585360;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 1059077408;
  v37._object = 0xE400000000000000;
  String.append(_:)(v37);
  v38 = aBlock;
  v39 = v112;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v41 = v95;
  v42 = sub_10001CC04(v40, v38, v39);

  if (!v41)
  {
    sub_100034254(*(v105 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) & 0xFFFFFFFFFFFFFFFBLL, 1);
    if (a5 >> 60 == 15)
    {
      v107 = 2;
      v43 = v104;
      v44 = v106;
    }

    else
    {
      v45 = *(*(v42 + 16) + 32);
      *v17 = v45;
      v46 = v106;
      v110(v17, v108, v106);
      v47 = v107;
      sub_100024E84(v107, a5);
      v48 = v45;
      LOBYTE(v45) = _dispatchPreconditionTest(_:)();
      v49 = v46;
      v50 = v46;
      v43 = v104;
      v104(v17, v50);
      if ((v45 & 1) == 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_100DCCAB4(v47, a5, v42, 2);
      sub_100025870(v47, a5);
      v107 = 3;
      v44 = v49;
    }

    v51 = *(v105 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate);
    v52 = v42;
    v53 = *(*(v42 + 16) + 32);
    *v17 = v53;
    v54 = v108;
    v110(v17, v108, v44);
    v55 = v53;
    LOBYTE(v53) = _dispatchPreconditionTest(_:)();
    v56 = v44;
    v57 = v43;
    v43(v17, v56);
    if (v53)
    {
      swift_beginAccess();
      sqlite3_bind_double(*(v52 + 24), v107, v51);
      v58 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v59 = sub_10084DAE4(v96, *&v96[*(v58 + 20)], *&v96[*(v58 + 20) + 8]);
      v95 = v60;
      v94 = v59;
      v61 = *(*(v52 + 16) + 32);
      *v17 = v61;
      v62 = v106;
      v110(v17, v54, v106);
      v63 = v61;
      v64 = _dispatchPreconditionTest(_:)();
      v57(v17, v62);
      if (v64)
      {

        v65 = v94;
        v66 = v95;
        sub_100DCCAB4(v94, v95, v52, v107 + 1);
        v107 = 0;
        sub_10002640C(v65, v66);
        v67 = *(*(v52 + 16) + 32);
        *v17 = v67;
        v110(v17, v108, v62);
        v68 = v67;
        LOBYTE(v67) = _dispatchPreconditionTest(_:)();
        v69 = v104;
        v104(v17, v62);
        if (v67)
        {
          v70 = *(v52 + 16);

          v71 = v70;
          v72 = v107;
          v73 = sub_10001CEC4(v71, v52);
          v95 = v72;

          v74 = v52;
          if (v73 != 101)
          {
            sub_10089C7D0();
            swift_allocError();
            *v91 = v73;
            *(v91 + 8) = 0xD000000000000024;
            *(v91 + 16) = 0x80000001015A5280;
            swift_willThrow();
            v92 = *(*(v52 + 16) + 32);
            *v17 = v92;
            v110(v17, v108, v62);
            v93 = v92;
            LOBYTE(v92) = _dispatchPreconditionTest(_:)();
            v69(v17, v62);
            if (v92)
            {
              v90 = *(v52 + 24);
              if (v90)
              {
LABEL_26:
                sqlite3_finalize(v90);

                *(v52 + 24) = 0;
                goto LABEL_28;
              }

LABEL_27:

              goto LABEL_28;
            }

LABEL_35:
            __break(1u);
          }

          sub_1005B981C(&unk_101A19BD0, &qword_10146FA00);
          v75 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
          v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_10146C6B0;
          sub_10000C83C(v96, v77 + v76, type metadata accessor for CRLBoardIdentifier);
          v78 = sub_1005BF2F8(v77);
          v107 = v74;
          v79 = v78;
          swift_setDeallocating();
          sub_100026028(v77 + v76, type metadata accessor for CRLBoardIdentifier);
          swift_deallocClassInstance();
          sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
          v96 = static OS_dispatch_queue.main.getter();
          v80 = swift_allocObject();
          *(v80 + 16) = v79;
          *(v80 + 24) = _swiftEmptySetSingleton;
          *(v80 + 32) = _swiftEmptySetSingleton;
          *(v80 + 40) = 0;
          v81 = v97;
          *(v80 + 48) = v97;
          v115 = sub_1000260F4;
          v116 = v80;
          aBlock = _NSConcreteStackBlock;
          v112 = *"";
          v113 = sub_100007638;
          v114 = &unk_1018A5CD0;
          v82 = _Block_copy(&aBlock);
          v83 = v81;

          v84 = v98;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          v97 = sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
          sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
          v85 = v100;
          v86 = v103;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v87 = v96;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v82);

          v52 = v107;
          (*(v102 + 8))(v85, v86);
          (*(v99 + 8))(v84, v101);
          v88 = *(*(v52 + 16) + 32);
          *v17 = v88;
          v110(v17, v108, v62);
          v89 = v88;
          LOBYTE(v88) = _dispatchPreconditionTest(_:)();
          v104(v17, v62);
          if (v88)
          {
            v90 = *(v52 + 24);
            if (v90)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_30:
    __break(1u);
    __break(1u);
    goto LABEL_31;
  }

LABEL_28:
}