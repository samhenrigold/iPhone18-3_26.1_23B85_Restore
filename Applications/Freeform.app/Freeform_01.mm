uint64_t sub_10001C448(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 32);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) != 1)
  {
    v35 = a4;
    *(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 1;
    v33 = *(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_runningboardAssertionExplanation + 8);
    v34 = a2;
    v17 = [objc_opt_self() currentProcess];
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10146CE00;
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() attributeWithDomain:v19 name:v20];

    *(v18 + 32) = v21;
    *(v18 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
    v22 = objc_allocWithZone(RBSAssertion);
    v23 = String._bridgeToObjectiveC()();
    sub_100006370(0, &unk_101A135C0, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v22 initWithExplanation:v23 target:v17 attributes:isa];

    v39[0] = 0;
    if ([v8 acquireWithError:v39])
    {
      v25 = v39[0];
LABEL_8:
      swift_beginAccess();
      v16 = sqlite3_open_v2(v34, (a3 + 16), v35, 0);
      swift_endAccess();
      [v8 invalidate];

      *(a1 + v15) = 0;
      return v16;
    }

    v26 = v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2098 == -1)
    {
LABEL_7:
      v36 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v28 = Error.publicDescription.getter(v37, v38);
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v36, &_mh_execute_header, v31, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      sub_100005070((inited + 32));
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v16 = sqlite3_open_v2(a2, (a3 + 16), a4, 0);
  swift_endAccess();
  return v16;
}

uint64_t sub_10001C924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v10 = sub_10001CC04(v9, a2, a3);

  v11 = *(*(v10 + 16) + 32);
  *v8 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v6 + 104);
  v13(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v16 = *(v10 + 16);

  v17 = sub_10001CEC4(v16, v10);

  v18 = *(*(v10 + 16) + 32);
  *v8 = v18;
  v13(v8, v12, v5);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  v15(v8, v5);
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v21 = *(v10 + 24);
  if (v21)
  {
    sqlite3_finalize(v21);
    *(v10 + 24) = 0;
  }

  return v17;
}

uint64_t sub_10001CC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v24 = a2;
  v25 = type metadata accessor for String.Encoding();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v3;
  *(v3 + 24) = 0;
  v14 = (v3 + 24);
  v15 = *(a1 + 32);
  *v12 = v15;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v15)
  {
    *(v13 + 16) = a1;
    v27 = v24;
    v28 = v26;

    static String.Encoding.utf8.getter();
    sub_100017CD8();
    v18 = StringProtocol.cString(using:)();
    (*(v5 + 8))(v7, v25);

    swift_beginAccess();
    v19 = *(a1 + 16);
    if (v18)
    {
      v20 = (v18 + 32);
    }

    else
    {
      v20 = 0;
    }

    swift_beginAccess();
    v21 = sqlite3_prepare_v2(v19, v20, -1, v14, 0);
    swift_endAccess();

    if (v21)
    {
      sub_10089C7D0();
      swift_allocError();
      *v22 = v21;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      swift_willThrow();
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001CEC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 32);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    swift_beginAccess();
    return sqlite3_step(*(a2 + 24));
  }

  v32[1] = v2;
  v33 = a2;
  *(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 1;
  v14 = [objc_opt_self() currentProcess];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146CE00;
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() attributeWithDomain:v16 name:v17];

  *(v15 + 32) = v18;
  *(v15 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v19 = objc_allocWithZone(RBSAssertion);
  v20 = String._bridgeToObjectiveC()();
  sub_100006370(0, &unk_101A135C0, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v19 initWithExplanation:v20 target:v14 attributes:isa];

  v36[0] = 0;
  if (([v5 acquireWithError:v36] & 1) == 0)
  {
    v23 = v36[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2098 == -1)
    {
LABEL_7:
      v24 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v26 = Error.publicDescription.getter(v34, v35);
      v28 = v27;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v26;
      *(inited + 40) = v28;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v29, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      sub_100005070((inited + 32));
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v22 = v36[0];
LABEL_8:
  v30 = v33;
  swift_beginAccess();
  v31 = sqlite3_step(*(v30 + 24));
  [v5 invalidate];

  result = v31;
  *(v10 + a1) = 0;
  return result;
}

uint64_t sub_10001D364()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 24);
  if (v10)
  {
    v11 = *(*(v1 + 16) + 32);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    aBlock[4] = sub_10089CCC4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10188AAE8;
    v13 = _Block_copy(aBlock);
    v18 = v6;
    v14 = v13;
    v15 = v11;
    static DispatchQoS.unspecified.getter();
    v19 = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v18);
  }

  return swift_deallocClassInstance();
}

BOOL sub_10001D624()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  LODWORD(v1) = sub_10001C924(v0, 0xD000000000000017, 0x8000000101572B20);
  if (v1 != 101)
  {
    if (qword_1019F2098 == -1)
    {
LABEL_4:
      v8 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v1;
      v10 = static os_log_type_t.default.getter();
      sub_100005404(v8, &_mh_execute_header, v10, "Failed to enable incremental auto-vacuum on the database with error %d", 70, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return v1 == 101;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v1 == 101;
}

char *sub_10001D824()
{
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v0[3];
  *v8 = v9;
  v10 = *(v5 + 104);
  v79 = enum case for DispatchPredicate.onQueue(_:);
  v80 = v10;
  v81 = v5 + 104;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v78 = v12;
  v82 = v13;
  v13(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v2 = v3[2];
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v12 = sub_10001CC04(v15, 0xD000000000000013, 0x8000000101585AD0);

  if (!v1)
  {
    v16 = *(*(v12 + 16) + 32);
    *v8 = v16;
    v80(v8, v79, v4);
    v17 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    v82(v8, v4);
    if (v16)
    {
      type metadata accessor for SQLiteRowIterator();
      v2 = swift_initStackObject();
      *(v2 + 32) = 0;
      *(v2 + 40) = 1;
      *(v2 + 16) = v12;
      *(v2 + 24) = 0;
      inited = sub_10001E1D0();
      swift_setDeallocating();
      sub_10001E364(*(v2 + 24), *(v2 + 32), *(v2 + 40));
      if (inited)
      {
        v18 = sub_10001E378(0, inited);
        v2 = v19;

        if ((v2 & 1) != 0 || !v18)
        {
          inited = 0;
        }

        else
        {
          if (v18 != 1)
          {
            v72 = v12;
            v73 = v4;
            v77 = v3[4];
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v26 = swift_initStackObject();
            *(v26 + 16) = xmmword_10146C6B0;
            *(v26 + 56) = &type metadata for Int;
            *(v26 + 64) = &protocol witness table for Int;
            *(v26 + 32) = v18;
            v27 = static os_log_type_t.error.getter();
            sub_100005404(v77, &_mh_execute_header, v27, "Invalid schema version detected: %{public}d", 43, 2, v26);
            swift_setDeallocating();
            sub_100005070((v26 + 32));
            v28 = swift_initStackObject();
            *(v28 + 16) = xmmword_10146BDE0;
            v71 = v18;
            *(v28 + 32) = v18;
            v77 = v28 + 32;
            v4 = v28;
            *(v28 + 56) = &type metadata for Int;
            *(v28 + 64) = &protocol witness table for Int;
            v29 = v3[5];
            v30 = v3[6];
            *(v28 + 96) = &type metadata for String;
            v76 = sub_1000053B0();
            *(v4 + 104) = v76;
            *(v4 + 72) = v29;
            *(v4 + 80) = v30;
            v31 = objc_opt_self();

            v70 = v31;
            LODWORD(v75) = [v31 _atomicIncrementAssertCount];
            v83 = [objc_allocWithZone(NSString) init];
            sub_100604538(v4, &v83, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2u);
            StaticString.description.getter("_schemaVersion()", 16, 2);
            v74 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
            v32 = String._bridgeToObjectiveC()();

            v33 = [v32 lastPathComponent];

            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v2 = v34;

            if (qword_1019F20A0 == -1)
            {
LABEL_16:
              v35 = static OS_os_log.crlAssert;
              v36 = swift_initStackObject();
              *(v36 + 16) = xmmword_10146CA70;
              *(v36 + 56) = &type metadata for Int32;
              *(v36 + 64) = &protocol witness table for Int32;
              *(v36 + 32) = v75;
              v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
              *(v36 + 96) = v37;
              v38 = sub_1005CF04C();
              v39 = v74;
              *(v36 + 72) = v74;
              v40 = v76;
              *(v36 + 136) = &type metadata for String;
              *(v36 + 144) = v40;
              *(v36 + 104) = v38;
              *(v36 + 112) = v12;
              *(v36 + 120) = v2;
              *(v36 + 176) = &type metadata for UInt;
              *(v36 + 184) = &protocol witness table for UInt;
              *(v36 + 152) = 130;
              v41 = v83;
              *(v36 + 216) = v37;
              *(v36 + 224) = v38;
              *(v36 + 192) = v41;
              v76 = v39;
              v42 = v41;
              v43 = static os_log_type_t.error.getter();
              sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
              swift_setDeallocating();
              v74 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
              swift_arrayDestroy();
              v44 = static os_log_type_t.error.getter();
              sub_100005404(v35, &_mh_execute_header, v44, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2, v4);

              type metadata accessor for __VaListBuilder();
              v45 = swift_allocObject();
              v45[2] = 8;
              v45[3] = 0;
              v46 = v45 + 3;
              v45[4] = 0;
              v45[5] = 0;
              v47 = *(v4 + 16);
              v75 = v4;
              v76 = v47;
              if (!v47)
              {
LABEL_40:
                v60 = __VaListBuilder.va_list()();
                StaticString.description.getter("_schemaVersion()", 16, 2);
                v61 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
                v62 = String._bridgeToObjectiveC()();

                StaticString.description.getter("Invalid schema version detected: %{public}d for database %{public}@", 67, 2);
                v63 = String._bridgeToObjectiveC()();

                [v70 handleFailureInFunction:v61 file:v62 lineNumber:130 isFatal:0 format:v63 args:v60];

                swift_setDeallocating();
                swift_arrayDestroy();
                sub_100A7B404();
                swift_allocError();
                *v64 = v71;
                swift_willThrow();
                v66 = v72;
                v65 = v73;
                v67 = *(*(v72 + 16) + 32);
                *v8 = v67;
                v80(v8, v79, v65);
                v68 = v67;
                LOBYTE(v67) = _dispatchPreconditionTest(_:)();
                v82(v8, v65);
                if ((v67 & 1) == 0)
                {
                  __break(1u);
                }

                swift_beginAccess();
                v69 = *(v66 + 24);
                inited = v66;
                if (v69)
                {
                  sqlite3_finalize(v69);
                  *(v66 + 24) = 0;
                }

                goto LABEL_13;
              }

              v4 = 0;
              while (1)
              {
                v48 = (v77 + 40 * v4);
                v2 = v48[4];
                sub_100020E58(v48, v48[3]);
                v49 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
                v12 = *v46;
                v50 = *(v49 + 16);
                v51 = __OFADD__(*v46, v50);
                v52 = *v46 + v50;
                if (v51)
                {
                  goto LABEL_46;
                }

                v2 = v49;
                v53 = v45[4];
                if (v53 >= v52)
                {
                  goto LABEL_33;
                }

                if (v53 + 0x4000000000000000 < 0)
                {
                  goto LABEL_49;
                }

                v54 = v45[5];
                if (2 * v53 > v52)
                {
                  v52 = 2 * v53;
                }

                v45[4] = v52;
                if ((v52 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_50;
                }

                result = swift_slowAlloc();
                v45[5] = result;
                if (v54)
                {
                  break;
                }

LABEL_34:
                if (!result)
                {
                  __break(1u);
                  return result;
                }

                v56 = *(v2 + 16);
                if (v56)
                {
                  v57 = (v2 + 32);
                  v58 = *v46;
                  while (1)
                  {
                    v59 = *v57++;
                    *&result[8 * v58] = v59;
                    v58 = *v46 + 1;
                    if (__OFADD__(*v46, 1))
                    {
                      break;
                    }

                    *v46 = v58;
                    if (!--v56)
                    {
                      goto LABEL_18;
                    }
                  }

                  __break(1u);
                  goto LABEL_45;
                }

LABEL_18:

                if (++v4 == v76)
                {
                  goto LABEL_40;
                }
              }

              if (result != v54 || result >= &v54[8 * v12])
              {
                memmove(result, v54, 8 * v12);
              }

              __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_33:
              result = v45[5];
              goto LABEL_34;
            }

LABEL_51:
            swift_once();
            goto LABEL_16;
          }

          inited = 1;
        }
      }

      v20 = v12;
      v12 = *(*(v12 + 16) + 32);
      *v8 = v12;
      v80(v8, v79, v4);
      v21 = v12;
      v22 = _dispatchPreconditionTest(_:)();
      v23 = v4;
      v4 = v22;
      v82(v8, v23);
      if (v4)
      {
        swift_beginAccess();
        v24 = *(v20 + 24);
        if (v24)
        {
          sqlite3_finalize(v24);
          *(v20 + 24) = 0;
        }

LABEL_13:

        return inited;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return inited;
}

uint64_t sub_10001E1D0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  v7 = *(*(v6 + 16) + 32);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v10 = v0[4];
    v11 = v0[3];
    v12 = v0[5];
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 1;
    sub_10001E364(v11, v10, v12);
    swift_beginAccess();
    v13 = sqlite3_step(*(v6 + 24));
    result = 0;
    if (v13 && v13 != 101)
    {
      if (v13 == 100)
      {
      }

      else
      {
        v14 = v0[3];
        v15 = v0[4];
        v16 = v0[5];
        v0[3] = v13;
        v0[4] = 0;
        v0[5] = 0;
        sub_10001E364(v14, v15, v16);
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10001E378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(a2 + 16) + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int(*(a2 + 24), a1);
  }
}

uint64_t sub_10001E534(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v6[*a3];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);
  v19 = v6;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v25 + 8))(v13, v11);
  (*(v14 + 8))(v16, v24);
}

uint64_t type metadata accessor for CRLAssetFileManager(uint64_t a1)
{
  result = qword_101A29578;
  if (!qword_101A29578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E868(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v65 = *(v5 + 104);
  (v65)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v9)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = static OS_os_log.boardStore;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v14, "Opening the board database", 26, 2, _swiftEmptyArrayStorage);
  v63 = v13;
  v61[1] = v5 + 104;
  if (a1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue);
    *v8 = v15;
    v16 = v65;
    v65(v8, v10, v4);
    v17 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    result = (v12)(v8, v4);
    if (v15)
    {
      v19 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
      v20 = *(v19 + 32);
      *v8 = v20;
      v62 = v10;
      v16(v8, v10, v4);
      v21 = v20;
      LOBYTE(v20) = _dispatchPreconditionTest(_:)();
      result = (v12)(v8, v4);
      if (v20)
      {
        URL.absoluteString.getter();
        v22 = String._bridgeToObjectiveC()();

        v23 = [v22 fileSystemRepresentation];
        v24 = v22;

        v26 = sub_10001C448(v25, v23, v19, 3178497);

        if (v26)
        {

          sub_10089CCDC(v27, v19);

          swift_beginAccess();
          *(v19 + 16) = 0;
LABEL_11:
          sub_10089C7D0();
          swift_allocError();
          *v39 = v26;
          *(v39 + 8) = 0;
          *(v39 + 16) = 0;
          swift_willThrow();
          v40 = v63;
LABEL_12:
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
          sub_100005404(v40, &_mh_execute_header, v45, "Opening the board database failed with error: %@", 48, 2, inited);
          swift_setDeallocating();
          sub_100005070((inited + 32));
          return swift_willThrow();
        }

        v56 = *(v19 + 32);
        *v8 = v56;
        v57 = v65;
        v65(v8, v62, v4);
        v58 = v56;
        LOBYTE(v56) = _dispatchPreconditionTest(_:)();
        result = (v12)(v8, v4);
        if (v56)
        {
          sub_10001C924(v19, 0xD00000000000001ALL, 0x80000001015854A0);
          v59 = *(v19 + 32);
          *v8 = v59;
          v57(v8, v62, v4);
          v60 = v59;
          LOBYTE(v59) = _dispatchPreconditionTest(_:)();
          result = (v12)(v8, v4);
          if (v59)
          {
            return sub_10001C924(v19, 0xD000000000000019, 0x80000001015854C0);
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  v29 = *(v28 + 32);
  *v8 = v29;
  v65(v8, v10, v4);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  result = (v12)(v8, v4);
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

  v31 = v12;
  URL.absoluteString.getter();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 fileSystemRepresentation];
  v34 = v32;

  v36 = v33;
  v37 = v64;
  v26 = sub_10001C448(v35, v36, v28, 3178502);

  if (v26)
  {

    sub_10089CCDC(v38, v28);

    swift_beginAccess();
    *(v28 + 16) = 0;
    goto LABEL_11;
  }

  v64 = v37;
  v46 = *(v28 + 32);
  *v8 = v46;
  v47 = v10;
  v62 = v10;
  v48 = v65;
  v65(v8, v47, v4);
  v49 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  result = v31(v8, v4);
  if ((v46 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_10001C924(v28, 0xD00000000000001CLL, 0x8000000101585480);
  sub_10001D624();
  v50 = *(v28 + 32);
  *v8 = v50;
  v48(v8, v62, v4);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  result = v31(v8, v4);
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_10001C924(v28, 0xD00000000000001ALL, 0x80000001015854A0);
  v52 = *(v28 + 32);
  *v8 = v52;
  v48(v8, v62, v4);
  v53 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  result = v31(v8, v4);
  if ((v52 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  sub_10001C924(v28, 0xD000000000000019, 0x80000001015854C0);
  v54 = static os_log_type_t.info.getter();
  v40 = v63;
  sub_100005404(v63, &_mh_execute_header, v54, "Checking for schema version", 27, 2, _swiftEmptyArrayStorage);
  v55 = v64;
  sub_10002121C();
  if (v55)
  {
    goto LABEL_12;
  }

  return sub_100022FA0();
}

uint64_t sub_10001F0B4(uint64_t a1)
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

id sub_10001F1A0(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for URL();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v27 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_store;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock;
  type metadata accessor for CRLUnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  atomic_thread_fence(memory_order_acq_rel);
  *&v2[v11] = v12;
  v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_didEnsureAssetDirectory] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache] = _swiftEmptyDictionarySingleton;
  v26 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_writeAssetFileQueue;
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v25 = "purgeDeletedAssetsWorkItem";
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  v24 = sub_10001F75C(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v23 = sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v15 = *(v33 + 104);
  v33 += 104;
  v22 = v8;
  v15(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&v2[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager__deletedAssetsTTL] = 0x40CC200000000000;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager__deletedAssetsTTLTolerance] = 0x4014000000000000;
  v26 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsQueue;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15(v22, v14, v32);
  *&v2[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsWorkItem] = 0;
  swift_unknownObjectWeakAssign();
  v16 = v28;
  URL.appendingPathComponent(_:isDirectory:)();
  v17 = v31;
  v18 = *(v30 + 32);
  v18(&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetsDirectoryURL], v16, v31);
  URL.appendingPathComponent(_:isDirectory:)();
  v18(&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_deletedAssetsDirectoryURL], v16, v17);
  v19 = type metadata accessor for CRLAssetFileManager(0);
  v34.receiver = v2;
  v34.super_class = v19;
  return objc_msgSendSuper2(&v34, "init");
}

uint64_t sub_10001F6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F714(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F75C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F7A4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100020C24;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018AFEE0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10001F75C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10001FA60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FA98(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchTime();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v27 = v25 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v26 = v5;
  v18 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsWorkItem;
  if (!*(v2 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsWorkItem) || (, v19 = dispatch thunk of DispatchWorkItem.isCancelled.getter(), result = , (v19 & 1) != 0))
  {
    v25[0] = v15;
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_101093C14;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018AFF30;
    v25[1] = _Block_copy(aBlock);
    v29 = _swiftEmptyArrayStorage;
    sub_10001F75C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v21 = DispatchWorkItem.init(flags:block:)();

    *(v2 + v18) = v21;

    v22 = v26;
    static DispatchTime.now()();
    v23 = v27;
    + infix(_:_:)();
    v24 = *(v28 + 8);
    result = v24(v22, v3);
    if (*(v2 + v18))
    {

      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      return v24(v23, v3);
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001FEE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001FF28(unint64_t a1)
{
  v2 = v1;
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = sub_100020E14(a1);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  sub_10000630C(v2, v125);
  sub_1005B981C(&qword_101A1D5D0, "^,$");
  v11 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  v121 = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.default.getter();
  v119 = v4;
  sub_100005404(v4, &_mh_execute_header, v13, "Registering version: %{public}@, for upgrader: %{public}@", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v14 = v2[3];
  v15 = v2[4];
  sub_100020E58(v2, v14);
  result = (*(v15 + 16))(v14, v15);
  if (result > a1)
  {
    v30 = result;
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_10146BDE0;
    v32 = sub_100020E14(a1);
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *(v31 + 32) = v33;
    v36 = (v31 + 32);
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v10;
    *(v31 + 40) = v35;
    v37 = sub_100020E14(v30);
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v10;
    *(v31 + 72) = v38;
    *(v31 + 80) = v40;
    v120 = objc_opt_self();
    LODWORD(v40) = [v120 _atomicIncrementAssertCount];
    v125[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v31, v125, "Trying to register a new version (%{public}@) that's less than the current version (%{public}@)", 95, 2u);
    StaticString.description.getter("registerVersion(_:)", 19, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersionUpgradeController.swift", 98, 2);
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v47 = static OS_os_log.crlAssert;
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_10146CA70;
      *(v48 + 56) = &type metadata for Int32;
      *(v48 + 64) = &protocol witness table for Int32;
      *(v48 + 32) = v40;
      v49 = sub_1005CF000();
      *(v48 + 96) = v49;
      v50 = sub_1005CF04C();
      *(v48 + 72) = v41;
      *(v48 + 136) = &type metadata for String;
      *(v48 + 144) = v121;
      *(v48 + 104) = v50;
      *(v48 + 112) = v44;
      *(v48 + 120) = v46;
      *(v48 + 176) = &type metadata for UInt;
      *(v48 + 184) = &protocol witness table for UInt;
      *(v48 + 152) = 49;
      v51 = v125[0];
      *(v48 + 216) = v49;
      *(v48 + 224) = v50;
      *(v48 + 192) = v51;
      v52 = v41;
      v53 = v51;
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v48);

      v55 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v55, "Trying to register a new version (%{public}@) that's less than the current version (%{public}@)", 95, 2, v31);

      sub_10063DF98(v31, "Trying to register a new version (%{public}@) that's less than the current version (%{public}@)");
      type metadata accessor for __VaListBuilder();
      v56 = swift_allocObject();
      v56[2] = 8;
      v56[3] = 0;
      v41 = v56 + 3;
      v56[4] = 0;
      v56[5] = 0;
      v57 = *(v31 + 16);
      if (!v57)
      {
        goto LABEL_68;
      }

      v44 = 0;
      v46 = 40;
      while (1)
      {
        v58 = &v36[5 * v44];
        v40 = v58[4];
        v31 = sub_100020E58(v58, v58[3]);
        v59 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v60 = *v41;
        v61 = *(v59 + 16);
        v62 = __OFADD__(*v41, v61);
        v63 = *v41 + v61;
        if (v62)
        {
          break;
        }

        v64 = v59;
        v31 = v56[4];
        if (v31 >= v63)
        {
          goto LABEL_25;
        }

        if (v31 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v40 = v56[5];
        if (2 * v31 > v63)
        {
          v63 = 2 * v31;
        }

        v56[4] = v63;
        if ((v63 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_62;
        }

        v65 = swift_slowAlloc();
        v56[5] = v65;
        if (v40)
        {
          if (v65 != v40 || v65 >= &v40[8 * v60])
          {
            memmove(v65, v40, 8 * v60);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_25:
          v65 = v56[5];
        }

        if (!v65)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v112 = __VaListBuilder.va_list()();
          StaticString.description.getter("registerVersion(_:)", 19, 2);
          v113 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersionUpgradeController.swift", 98, 2);
          v114 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Trying to register a new version (%{public}@) that's less than the current version (%{public}@)", 95, 2);
          v115 = String._bridgeToObjectiveC()();

          [v120 handleFailureInFunction:v113 file:v114 lineNumber:49 isFatal:1 format:v115 args:v112];
          goto LABEL_70;
        }

        v67 = *(v64 + 16);
        if (v67)
        {
          v68 = (v64 + 32);
          v69 = *v41;
          while (1)
          {
            v70 = *v68++;
            *&v65[8 * v69] = v70;
            v69 = *v41 + 1;
            if (__OFADD__(*v41, 1))
            {
              break;
            }

            *v41 = v69;
            if (!--v67)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          v71 = swift_initStackObject();
          v72 = v40;
          v73 = v71;
          *(v71 + 16) = xmmword_10146C4D0;
          v74 = sub_100020E14(v72);
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v73[4] = v75;
          v36 = v73 + 4;
          v73[7] = &type metadata for String;
          v73[8] = v121;
          v73[5] = v77;
          swift_getErrorValue();
          v78 = Error.publicDescription.getter(v123, v124);
          v73[12] = &type metadata for String;
          v73[13] = v121;
          v73[9] = v78;
          v73[10] = v79;
          swift_getErrorValue();
          v80 = Error.fullDescription.getter(v122);
          v73[17] = &type metadata for String;
          v73[18] = v121;
          v73[14] = v80;
          v73[15] = v81;
          v120 = objc_opt_self();
          v82 = [v120 _atomicIncrementAssertCount];
          v125[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(v73, v125, "Unable to register version (%{public}@). Error: %{public}@ <%@>", 64, 2u);
          StaticString.description.getter("registerVersion(_:)", 19, 2);
          v83 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersionUpgradeController.swift", 98, 2);
          v84 = String._bridgeToObjectiveC()();

          v85 = [v84 lastPathComponent];

          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v89 = static OS_os_log.crlAssert;
          v90 = swift_initStackObject();
          *(v90 + 16) = xmmword_10146CA70;
          *(v90 + 56) = &type metadata for Int32;
          *(v90 + 64) = &protocol witness table for Int32;
          *(v90 + 32) = v82;
          v91 = sub_1005CF000();
          *(v90 + 96) = v91;
          v92 = sub_1005CF04C();
          *(v90 + 72) = v83;
          *(v90 + 136) = &type metadata for String;
          *(v90 + 144) = v121;
          *(v90 + 104) = v92;
          *(v90 + 112) = v86;
          *(v90 + 120) = v88;
          *(v90 + 176) = &type metadata for UInt;
          *(v90 + 184) = &protocol witness table for UInt;
          *(v90 + 152) = 63;
          v93 = v125[0];
          *(v90 + 216) = v91;
          *(v90 + 224) = v92;
          *(v90 + 192) = v93;
          v94 = v83;
          v95 = v93;
          v96 = static os_log_type_t.error.getter();
          sub_100005404(v89, &_mh_execute_header, v96, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v90);

          v97 = static os_log_type_t.error.getter();
          sub_100005404(v89, &_mh_execute_header, v97, "Unable to register version (%{public}@). Error: %{public}@ <%@>", 64, 2, v73);

          sub_10063DF98(v73, "Unable to register version (%{public}@). Error: %{public}@ <%@>");
          type metadata accessor for __VaListBuilder();
          v98 = swift_allocObject();
          v98[2] = 8;
          v98[3] = 0;
          v41 = v98 + 3;
          v98[4] = 0;
          v98[5] = 0;
          v99 = v73[2];
          if (v99)
          {
            v44 = 0;
            v46 = 40;
            while (1)
            {
              v100 = &v36[5 * v44];
              v40 = v100[4];
              v31 = sub_100020E58(v100, v100[3]);
              v101 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
              v102 = *v41;
              v103 = *(v101 + 16);
              v62 = __OFADD__(*v41, v103);
              v104 = *v41 + v103;
              if (v62)
              {
                goto LABEL_60;
              }

              v105 = v101;
              v31 = v98[4];
              if (v31 >= v104)
              {
                goto LABEL_51;
              }

              if (v31 + 0x4000000000000000 < 0)
              {
                goto LABEL_63;
              }

              v40 = v98[5];
              if (2 * v31 > v104)
              {
                v104 = 2 * v31;
              }

              v98[4] = v104;
              if ((v104 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_64;
              }

              v106 = swift_slowAlloc();
              v98[5] = v106;
              if (v40)
              {
                break;
              }

LABEL_52:
              if (!v106)
              {
                goto LABEL_67;
              }

              v108 = *(v105 + 16);
              if (v108)
              {
                v109 = (v105 + 32);
                v110 = *v41;
                while (1)
                {
                  v111 = *v109++;
                  *&v106[8 * v110] = v111;
                  v110 = *v41 + 1;
                  if (__OFADD__(*v41, 1))
                  {
                    break;
                  }

                  *v41 = v110;
                  if (!--v108)
                  {
                    goto LABEL_36;
                  }
                }

                __break(1u);
                goto LABEL_59;
              }

LABEL_36:

              if (++v44 == v99)
              {
                goto LABEL_69;
              }
            }

            if (v106 != v40 || v106 >= &v40[8 * v102])
            {
              memmove(v106, v40, 8 * v102);
            }

            v31 = v98;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_51:
            v106 = v98[5];
            goto LABEL_52;
          }

LABEL_69:
          v116 = __VaListBuilder.va_list()();
          StaticString.description.getter("registerVersion(_:)", 19, 2);
          v113 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersionUpgradeController.swift", 98, 2);
          v114 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Unable to register version (%{public}@). Error: %{public}@ <%@>", 64, 2);
          v115 = String._bridgeToObjectiveC()();

          [v120 handleFailureInFunction:v113 file:v114 lineNumber:63 isFatal:1 format:v115 args:v116];
LABEL_70:

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v117, v118);
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

LABEL_10:

        if (++v44 == v57)
        {
          goto LABEL_68;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
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
      swift_once();
    }
  }

  if (result < a1)
  {
    v17 = v2[3];
    v18 = v2[4];
    v19 = result;
    sub_100020E58(v2, v17);
    (*(v18 + 8))(v19, a1, v17, v18);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10146BDE0;
    v21 = sub_100020E14(a1);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v10;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    sub_10000630C(v2, v125);
    v25 = String.init<A>(describing:)();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v10;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v119, &_mh_execute_header, v27, "Persisting new last seen version: %{public}@, for upgrader: %{public}@", 70, 2, v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = v2[3];
    v29 = v2[4];
    sub_100020E58(v2, v28);
    return (*(v29 + 24))(a1, v28, v29);
  }

  return result;
}

void sub_100020C4C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB38, &qword_101AD5AE0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.upgrade = v1;
}

uint64_t sub_100020D1C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1010920D4(a1, v6, v7, v8, v1 + v5);
}

void *sub_100020E58(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100020EA4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  v10 = v4;
  sub_1005B981C(&qword_1019FB5C8, &unk_1014B6510);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v11[8])
  {
    v5 = &qword_101464850;
  }

  else
  {
    v5 = v11;
  }

  v6 = *v5;
  sub_100028A14(v4);
  return v6;
}

uint64_t sub_100020FE0(uint64_t a1)
{
  result = sub_100006370(319, &qword_1019F69D0, CKRecordZoneID_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CRLBoardIdentifier(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000210AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002111C(uint64_t a1)
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100021188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10002121C()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v10 = sub_100022484();
  if (v1)
  {
    v126 = v1;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if (!swift_dynamicCast())
    {

      return;
    }

    v53 = v125;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 32) = v53;
    v123 = (inited + 32);
    v2 = &type metadata for Int;
    v7 = &protocol witness table for Int;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v14 = sub_100022E58(&off_101873530, COERCE_DOUBLE(2), v54);
    if (v14 != 10)
    {
      goto LABEL_42;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    *(inited + 96) = v2;
    *(inited + 104) = v7;
    *(inited + 72) = v14;
    v121 = objc_opt_self();
    LODWORD(v55) = [v121 _atomicIncrementAssertCount];
    v124 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v124, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2u);
    StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v57 = String._bridgeToObjectiveC()();

    v58 = [v57 lastPathComponent];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v60;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v61 = static OS_os_log.crlAssert;
      v62 = swift_initStackObject();
      *(v62 + 16) = xmmword_10146CA70;
      *(v62 + 56) = &type metadata for Int32;
      *(v62 + 64) = &protocol witness table for Int32;
      *(v62 + 32) = v55;
      v63 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v62 + 96) = v63;
      v64 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v62 + 104) = v64;
      *(v62 + 72) = v56;
      *(v62 + 136) = &type metadata for String;
      v65 = sub_1000053B0();
      v66 = v122;
      *(v62 + 112) = v59;
      *(v62 + 120) = v66;
      *(v62 + 176) = &type metadata for UInt;
      *(v62 + 184) = &protocol witness table for UInt;
      *(v62 + 144) = v65;
      *(v62 + 152) = 403;
      v67 = v124;
      *(v62 + 216) = v63;
      *(v62 + 224) = v64;
      *(v62 + 192) = v67;
      v68 = v56;
      v69 = v67;
      v70 = static os_log_type_t.error.getter();
      v55 = &_mh_execute_header;
      sub_100005404(v61, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v62);

      v71 = static os_log_type_t.error.getter();
      sub_100005404(v61, &_mh_execute_header, v71, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2, inited);

      sub_10063DF98(inited, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.");
      type metadata accessor for __VaListBuilder();
      v72 = swift_allocObject();
      v72[2] = 8;
      v72[3] = 0;
      v73 = v72 + 3;
      v72[4] = 0;
      v72[5] = 0;
      v59 = *(inited + 16);
      if (!v59)
      {
LABEL_108:
        v113 = __VaListBuilder.va_list()();
        StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
        v114 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v115 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2);
        v116 = String._bridgeToObjectiveC()();

        [v121 handleFailureInFunction:v114 file:v115 lineNumber:403 isFatal:1 format:v116 args:v113];
        while (1)
        {

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v117, v118);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_110:
          v119 = __VaListBuilder.va_list()();
          StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
          v114 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
          v115 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2);
          v116 = String._bridgeToObjectiveC()();

          [v121 handleFailureInFunction:v114 file:v115 lineNumber:445 isFatal:1 format:v116 args:v119];
        }
      }

      v56 = 0;
      while (1)
      {
        v74 = &v123[5 * v56];
        v7 = v74[4];
        inited = sub_100020E58(v74, v74[3]);
        v75 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v76 = *v73;
        v77 = *(v75 + 16);
        v78 = __OFADD__(*v73, v77);
        v79 = *v73 + v77;
        if (v78)
        {
          goto LABEL_70;
        }

        v7 = v75;
        inited = v72[4];
        if (inited >= v79)
        {
          goto LABEL_60;
        }

        if (inited + 0x4000000000000000 < 0)
        {
          goto LABEL_99;
        }

        v55 = v72[5];
        if (2 * inited > v79)
        {
          v79 = 2 * inited;
        }

        v72[4] = v79;
        if ((v79 - 0x1000000000000000) >> 61 != 7)
        {
          break;
        }

        v80 = swift_slowAlloc();
        v72[5] = v80;
        if (!v55)
        {
          goto LABEL_61;
        }

        if (v80 != v55 || v80 >= (v55 + 8 * v76))
        {
          memmove(v80, v55, 8 * v76);
        }

        inited = v72;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_60:
        v80 = v72[5];
LABEL_61:
        if (!v80)
        {
          __break(1u);
LABEL_106:
          swift_once();
LABEL_74:
          v89 = static OS_os_log.crlAssert;
          v90 = swift_initStackObject();
          *(v90 + 16) = xmmword_10146CA70;
          *(v90 + 56) = &type metadata for Int32;
          *(v90 + 64) = &protocol witness table for Int32;
          *(v90 + 32) = v55;
          v91 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v90 + 96) = v91;
          v92 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(v90 + 104) = v92;
          *(v90 + 72) = v56;
          *(v90 + 136) = &type metadata for String;
          v93 = sub_1000053B0();
          v94 = v122;
          *(v90 + 112) = v59;
          *(v90 + 120) = v94;
          *(v90 + 176) = &type metadata for UInt;
          *(v90 + 184) = &protocol witness table for UInt;
          *(v90 + 144) = v93;
          *(v90 + 152) = 445;
          v95 = v126;
          *(v90 + 216) = v91;
          *(v90 + 224) = v92;
          *(v90 + 192) = v95;
          v96 = v56;
          v97 = v95;
          v98 = static os_log_type_t.error.getter();
          v55 = &_mh_execute_header;
          sub_100005404(v89, &_mh_execute_header, v98, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v90);

          v99 = static os_log_type_t.error.getter();
          sub_100005404(v89, &_mh_execute_header, v99, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2, inited);

          sub_10063DF98(inited, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d");
          type metadata accessor for __VaListBuilder();
          v100 = swift_allocObject();
          v100[2] = 8;
          v100[3] = 0;
          v101 = v100 + 3;
          v100[4] = 0;
          v100[5] = 0;
          v59 = *(inited + 16);
          if (!v59)
          {
            goto LABEL_110;
          }

          v56 = 0;
LABEL_77:
          inited = sub_100020E58(&v123[5 * v56], v123[5 * v56 + 3]);
          v102 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v103 = *v101;
          v104 = *(v102 + 16);
          v78 = __OFADD__(*v101, v104);
          v105 = *v101 + v104;
          if (v78)
          {
            goto LABEL_101;
          }

          v106 = v102;
          inited = v100[4];
          if (inited >= v105)
          {
LABEL_91:
            v107 = v100[5];
          }

          else
          {
            if (inited + 0x4000000000000000 < 0)
            {
              goto LABEL_102;
            }

            v55 = v100[5];
            if (2 * inited > v105)
            {
              v105 = 2 * inited;
            }

            v100[4] = v105;
            if ((v105 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_103;
            }

            v107 = swift_slowAlloc();
            v100[5] = v107;
            if (v55)
            {
              if (v107 != v55 || v107 >= (v55 + 8 * v103))
              {
                memmove(v107, v55, 8 * v103);
              }

              inited = v100;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              goto LABEL_91;
            }
          }

          if (!v107)
          {
            __break(1u);
            goto LABEL_108;
          }

          v109 = *(v106 + 16);
          if (v109)
          {
            v110 = (v106 + 32);
            v111 = *v101;
            while (1)
            {
              v112 = *v110++;
              *(&v107->magic + v111) = v112;
              v111 = *v101 + 1;
              if (__OFADD__(*v101, 1))
              {
                break;
              }

              *v101 = v111;
              if (!--v109)
              {
                goto LABEL_76;
              }
            }

            __break(1u);
LABEL_99:
            __break(1u);
            break;
          }

LABEL_76:

          v56 = v56 + 1;
          if (v56 == v59)
          {
            goto LABEL_110;
          }

          goto LABEL_77;
        }

        v82 = v7[2];
        if (v82)
        {
          v83 = v7 + 4;
          v84 = *v73;
          while (1)
          {
            v85 = *v83++;
            *(&v80->magic + v84) = v85;
            v84 = *v73 + 1;
            if (__OFADD__(*v73, 1))
            {
              break;
            }

            *v73 = v84;
            if (!--v82)
            {
              goto LABEL_45;
            }
          }

          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

LABEL_45:

        v56 = v56 + 1;
        if (v56 == v59)
        {
          goto LABEL_108;
        }
      }

      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      swift_once();
    }
  }

  v13 = v10;
  v14 = sub_100022E58(&off_101873530, v11, v12);
  if (v14 == 10)
  {
    goto LABEL_41;
  }

  if (v13 != v14)
  {
    if (v13 > 4u)
    {
      if (v13 > 6u)
      {
        if (v13 != 7)
        {
          if (v13 != 8)
          {
LABEL_30:
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v7 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v43 = swift_initStackObject();
            *(v43 + 16) = xmmword_10146C6B0;
            v45 = sub_100022E58(&off_101873530, COERCE_DOUBLE(1), v44);
            if (v45 == 10)
            {
              goto LABEL_69;
            }

            *(v43 + 56) = &type metadata for Int;
            *(v43 + 64) = &protocol witness table for Int;
            *(v43 + 32) = v45;
            v46 = static os_log_type_t.default.getter();
            sub_100005404(v7, &_mh_execute_header, v46, "Done migrating database schema, on latest version %{public}d", 60, 2, v43);
            swift_setDeallocating();
            sub_100005070((v43 + 32));
            v47 = sub_100022484();
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146BDE0;
            *(inited + 32) = v47;
            v7 = (inited + 32);
            *(inited + 56) = &type metadata for Int;
            *(inited + 64) = &protocol witness table for Int;
            v49 = sub_100022E58(&off_101873530, COERCE_DOUBLE(2), v48);
            if (v49 == 10)
            {
LABEL_71:
              __break(1u);
            }

            else
            {
              *(inited + 96) = &type metadata for Int;
              *(inited + 104) = &protocol witness table for Int;
              *(inited + 72) = v49;
              v52 = sub_100022E58(&off_101873530, v50, v51);
              if (v52 != 10)
              {
                if (v47 == v52)
                {
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
                  swift_arrayDestroy();
                  return;
                }

LABEL_73:
                v123 = v7;
                v121 = objc_opt_self();
                LODWORD(v55) = [v121 _atomicIncrementAssertCount];
                v126 = [objc_allocWithZone(NSString) init];
                sub_100604538(inited, &v126, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2u);
                StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
                v56 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
                v86 = String._bridgeToObjectiveC()();

                v87 = [v86 lastPathComponent];

                v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v122 = v88;

                if (qword_1019F20A0 != -1)
                {
                  goto LABEL_106;
                }

                goto LABEL_74;
              }
            }

            __break(1u);
            goto LABEL_73;
          }

LABEL_29:
          sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
          v39 = swift_initStackObject();
          *(v39 + 16) = xmmword_10146C4D0;
          v40 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery + 8);
          *(v39 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery);
          *(v39 + 40) = v40;
          v41 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery + 8);
          *(v39 + 48) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery);
          *(v39 + 56) = v41;
          v42 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery + 8);
          *(v39 + 64) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery);
          *(v39 + 72) = v42;

          sub_100A759A0(9, 8, v39);
          swift_setDeallocating();
          swift_arrayDestroy();
          goto LABEL_30;
        }

LABEL_28:
        sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_10146C4D0;
        v36 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery + 8);
        *(v35 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery);
        *(v35 + 40) = v36;
        v37 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery + 8);
        *(v35 + 48) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery);
        *(v35 + 56) = v37;
        v38 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery + 8);
        *(v35 + 64) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery);
        *(v35 + 72) = v38;

        sub_100A759A0(8, 7, v35);
        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_29;
      }

      if (v13 != 5)
      {
LABEL_27:
        sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_10146C6B0;
        v34 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery + 8);
        *(v33 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery);
        *(v33 + 40) = v34;

        sub_100A759A0(7, 6, v33);
        swift_setDeallocating();
        sub_100874FB4(v33 + 32);
        goto LABEL_28;
      }

LABEL_26:
      sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10146BDE0;
      v30 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersTableCreationSQLQuery + 8);
      *(v29 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersTableCreationSQLQuery);
      v31 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery);
      v32 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery + 8);
      *(v29 + 40) = v30;
      *(v29 + 48) = v31;
      *(v29 + 56) = v32;

      sub_100A759A0(6, 5, v29);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_27;
    }

    if (v13 <= 1u)
    {
      if (!v13)
      {
        sub_100DD596C();
      }

      sub_100DD61EC();
    }

    else if (v13 != 2)
    {
      if (v13 != 3)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    sub_100DD6A3C();
LABEL_23:
    sub_100DD7F0C();
LABEL_24:
    sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
    v19 = swift_allocObject();
    v20 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery + 8);
    *(v19 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery);
    *(v19 + 16) = xmmword_10146CA70;
    v21 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery);
    v22 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery + 8);
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    v23 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery);
    v24 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery + 8);
    *(v19 + 56) = v22;
    *(v19 + 64) = v23;
    v25 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery);
    v26 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery + 8);
    *(v19 + 72) = v24;
    *(v19 + 80) = v25;
    v27 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery);
    v28 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery + 8);
    *(v19 + 88) = v26;
    *(v19 + 96) = v27;
    *(v19 + 104) = v28;

    sub_100A759A0(5, 4, v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_26;
  }

  if (qword_1019F2258 != -1)
  {
LABEL_38:
    swift_once();
  }

  v15 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_allocObject();
  *(inited + 16) = xmmword_10146C6B0;
  v17 = sub_100022E58(&off_101873530, COERCE_DOUBLE(1), v16);
  if (v17 == 10)
  {
    goto LABEL_68;
  }

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v17;
  v18 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v18, "No need to migrate database schema, already on latest version %{public}d", 72, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  swift_deallocClassInstance();
}

uint64_t sub_100022484()
{
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v89 = enum case for DispatchPredicate.onQueue(_:);
  v90 = v10;
  v91 = v5 + 104;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v92 = v13;
  v93 = v8;
  v13(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_48;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v16 = sub_10001CC04(v15, 0xD000000000000013, 0x8000000101585AD0);
  v2 = v1;

  if (!v1)
  {
    v17 = *(*(v16 + 16) + 32);
    v18 = v16;
    v8 = v93;
    *v93 = v17;
    v90(v8, v89, v4);
    v19 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    v92(v8, v4);
    if ((v17 & 1) == 0)
    {
      goto LABEL_49;
    }

    type metadata accessor for SQLiteRowIterator();
    v20 = swift_initStackObject();
    v20[4] = 0;
    v20[5] = 1;
    v20[2] = v18;
    v20[3] = 0;
    v21 = sub_10001E1D0();
    swift_setDeallocating();
    sub_10001E364(v20[3], v20[4], v20[5]);
    v22 = v18;
    if (v21)
    {
      v23 = sub_10001E378(0, v21);
      v25 = v24;

      if (v25)
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v26 = sub_100022E48(v23);
    if (v26 == 10)
    {
      v85 = v22;
      v86 = v12;
      v87 = v4;
      v27 = v23;
      v28 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_10146C6B0;
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      *(v29 + 32) = v27;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v28, &_mh_execute_header, v30, "Invalid schema version detected: %{public}d", 43, 2, v29);
      swift_setDeallocating();
      sub_100005070((v29 + 32));
      v31 = swift_initStackObject();
      v84 = v27;
      *(v31 + 32) = v27;
      v94 = v31 + 32;
      v12 = v31;
      *(v31 + 16) = xmmword_10146BDE0;
      *(v31 + 56) = &type metadata for Int;
      *(v31 + 64) = &protocol witness table for Int;
      v32 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName);
      v33 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName + 8);
      *(v31 + 96) = &type metadata for String;
      v88 = sub_1000053B0();
      v12[13] = v88;
      v12[9] = v32;
      v12[10] = v33;
      v34 = objc_opt_self();

      v83 = v34;
      LODWORD(v3) = [v34 _atomicIncrementAssertCount];
      v95 = [objc_allocWithZone(NSString) init];
      sub_100604538(v12, &v95, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2u);
      StaticString.description.getter("_schemaVersion()", 16, 2);
      v4 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
      v35 = String._bridgeToObjectiveC()();

      v36 = [v35 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v37;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v38 = static OS_os_log.crlAssert;
        v39 = swift_initStackObject();
        *(v39 + 16) = xmmword_10146CA70;
        *(v39 + 56) = &type metadata for Int32;
        *(v39 + 64) = &protocol witness table for Int32;
        *(v39 + 32) = v3;
        v40 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v39 + 96) = v40;
        v41 = sub_1005CF04C();
        *(v39 + 72) = v4;
        v42 = v88;
        *(v39 + 136) = &type metadata for String;
        *(v39 + 144) = v42;
        *(v39 + 104) = v41;
        *(v39 + 112) = v8;
        *(v39 + 120) = v2;
        *(v39 + 176) = &type metadata for UInt;
        *(v39 + 184) = &protocol witness table for UInt;
        *(v39 + 152) = 130;
        v43 = v95;
        *(v39 + 216) = v40;
        *(v39 + 224) = v41;
        *(v39 + 192) = v43;
        v44 = v4;
        v45 = v43;
        v46 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
        swift_setDeallocating();
        v82 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v47 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v47, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2, v12);

        type metadata accessor for __VaListBuilder();
        v48 = swift_allocObject();
        v49 = v12;
        v12 = v48;
        v48[2] = 8;
        v48[3] = 0;
        v50 = v48 + 3;
        v48[4] = 0;
        v48[5] = 0;
        v88 = v49;
        v3 = v49[2];
        if (!v3)
        {
LABEL_39:
          v70 = __VaListBuilder.va_list()();
          StaticString.description.getter("_schemaVersion()", 16, 2);
          v71 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v72 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Invalid schema version detected: %{public}d for database %{public}@", 67, 2);
          v73 = String._bridgeToObjectiveC()();

          [v83 handleFailureInFunction:v71 file:v72 lineNumber:130 isFatal:0 format:v73 args:v70];

          swift_setDeallocating();
          swift_arrayDestroy();
          sub_100A7B404();
          swift_allocError();
          *v74 = v84;
          swift_willThrow();
          v75 = v85;
          v76 = *(*(v85 + 16) + 32);
          v77 = v93;
          *v93 = v76;
          v78 = v87;
          v90(v77, v89, v87);
          v79 = v76;
          LOBYTE(v76) = _dispatchPreconditionTest(_:)();
          v92(v77, v78);
          if (v76)
          {
            swift_beginAccess();
            v80 = *(v75 + 24);
            inited = v75;
            if (v80)
            {
              sqlite3_finalize(v80);
              *(v75 + 24) = 0;
            }

            goto LABEL_42;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
        }

        v8 = 0;
        while (1)
        {
          v51 = (v94 + 40 * v8);
          v2 = v51[4];
          sub_100020E58(v51, v51[3]);
          v52 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v4 = *v50;
          v53 = *(v52 + 16);
          v54 = __OFADD__(*v50, v53);
          v55 = *v50 + v53;
          if (v54)
          {
            break;
          }

          v56 = v52;
          v57 = v12[4];
          if (v57 >= v55)
          {
            goto LABEL_28;
          }

          if (v57 + 0x4000000000000000 < 0)
          {
            goto LABEL_46;
          }

          v2 = v12[5];
          if (2 * v57 > v55)
          {
            v55 = 2 * v57;
          }

          v12[4] = v55;
          if ((v55 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_47;
          }

          v58 = swift_slowAlloc();
          v12[5] = v58;
          if (v2)
          {
            if (v58 != v2 || v58 >= &v2[8 * v4])
            {
              memmove(v58, v2, 8 * v4);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_28:
            v58 = v12[5];
          }

          if (!v58)
          {
            goto LABEL_53;
          }

          v60 = *(v56 + 16);
          if (v60)
          {
            v61 = (v56 + 32);
            v62 = *v50;
            while (1)
            {
              v63 = *v61++;
              *&v58[8 * v62] = v63;
              v62 = *v50 + 1;
              if (__OFADD__(*v50, 1))
              {
                break;
              }

              *v50 = v62;
              if (!--v60)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
            break;
          }

LABEL_13:

          if (++v8 == v3)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
      }
    }

    inited = v26;
    v64 = v22;
    v65 = *(*(v22 + 16) + 32);
    v66 = v93;
    *v93 = v65;
    v90(v66, v89, v4);
    v67 = v65;
    v68 = _dispatchPreconditionTest(_:)();
    v92(v66, v4);
    if ((v68 & 1) == 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    swift_beginAccess();
    v69 = *(v64 + 24);
    if (v69)
    {
      sqlite3_finalize(v69);
      *(v64 + 24) = 0;
    }

LABEL_42:
  }

  return inited;
}

unint64_t sub_100022E48(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t sub_100022E58(uint64_t a1, double a2, uint8x16_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 10;
  }

  v4 = *(a1 + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v8 = v5 & 0xFFFFFFFFFFFFFFE0;
      v9 = vdupq_n_s8(v4);
      v10 = (a1 + 49);
      v11 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v9;
      do
      {
        v9 = vmaxq_u8(v9, v10[-1]);
        a3 = vmaxq_u8(a3, *v10);
        v10 += 2;
        v11 -= 32;
      }

      while (v11);
      v12 = vmaxq_u8(v9, a3);
      v12.i8[0] = vmaxvq_u8(v12);
      v4 = v12.u32[0];
      if (v5 == v8)
      {
        return v4;
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v8 | 1;
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v13 = vdup_n_s16(v4);
    v14 = (v8 + a1 + 33);
    v15 = v8 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v16 = *v14++;
      a3.i32[0] = v16;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v13 = vmax_u16((*&v13 & 0xFF00FF00FF00FFLL), *a3.i8);
      v15 += 4;
    }

    while (v15);
    v13.i16[0] = vmaxv_u16(v13);
    v4 = v13.u32[0];
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4;
    }

LABEL_17:
    v17 = v3 - v6;
    v18 = (v6 + a1 + 32);
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v4 <= v20)
      {
        v4 = v19;
      }

      else
      {
        v4 = v4;
      }

      --v17;
    }

    while (v17);
  }

  return v4;
}

uint64_t type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row(uint64_t a1)
{
  result = qword_101A0EBD0;
  if (!qword_101A0EBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022FA0()
{
  Marks = type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row(0);
  v2 = *(Marks - 8);
  __chkstk_darwin(Marks);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v44 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_sideStore);
  sub_1005B981C(&qword_101A21FB0, &unk_1014B6A98);
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = v52;
  if (v53)
  {
    v40 = v53;
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v15 = Error.publicDescription.getter(v50, v51);
    v17 = v16;
    *(inited + 56) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 64) = v18;
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    swift_getErrorValue();
    v19 = Error.fullDescription.getter(v49);
    v0 = v13;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v18;
    *(inited + 72) = v19;
    *(inited + 80) = v20;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "Failed to updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore with error: %{public}@ %@", 96, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    goto LABEL_13;
  }

  v22 = *(v52 + 16);
  if (v22)
  {
    v38[1] = v12;
    v39 = v52;
    v40 = v53;
    v23 = v52 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v43 = *(v2 + 72);
    v42 = xmmword_10146C4D0;
    v41 = xmmword_10146BDE0;
    do
    {
      v48 = v22;
      sub_10000C83C(v23, v4, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v24 = static OS_os_log.boardStore;
      v46 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v25 = swift_initStackObject();
      *(v25 + 16) = v42;
      v26 = UUID.uuidString.getter();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000053B0();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      v29 = Marks;
      v30 = *&v4[*(Marks + 20)];
      *(v25 + 96) = &type metadata for UInt64;
      *(v25 + 104) = &protocol witness table for UInt64;
      *(v25 + 72) = v30;
      v31 = *&v4[*(v29 + 24)];
      *(v25 + 136) = &type metadata for Int32;
      *(v25 + 144) = &protocol witness table for Int32;
      *(v25 + 112) = v31;
      v32 = static os_log_type_t.default.getter();
      v47 = v24;
      sub_100005404(v24, &_mh_execute_header, v32, "Setting lastOpenCrashVersion for board %{public}@ to %{public}d because it has %{public}d board load marks during updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore", 174, 2, v25);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      sub_100E16D2C(v4, v30, 0);
      v0 = v47;
      sub_100026028(v4, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      v23 += v43;
      v22 = v48 - 1;
    }

    while (v48 != 1);
    sub_100A79510();
    v1 = v39;
LABEL_13:
    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v33 = static os_log_type_t.default.getter();
      sub_100005404(v0, &_mh_execute_header, v33, "Finished updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore", 69, 2, _swiftEmptyArrayStorage);
      v34 = v40;
      return sub_1000260E8(v1, v34);
    }

LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.boardStore;
  v37 = static os_log_type_t.default.getter();
  sub_100005404(v36, &_mh_execute_header, v37, "updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore resulted in no new crashed boards", 94, 2, _swiftEmptyArrayStorage);
  v34 = 0;
  return sub_1000260E8(v1, v34);
}

uint64_t sub_100023694(uint64_t a1)
{
  result = type metadata accessor for CRLBoardIdentifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100023718@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  Marks = type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row(0);
  v3 = *(Marks - 8);
  __chkstk_darwin(Marks);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  if (qword_1019F22D8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v9 = static OS_os_log.sideStore;
    v10 = static os_log_type_t.default.getter();
    sub_100005404(v9, &_mh_execute_header, v10, "fetchBoardLoadMarksThatCrashed", 30, 2, _swiftEmptyArrayStorage);
    v11 = sub_100023B4C();
    if (v2)
    {
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      swift_getErrorValue();
      v13 = Error.publicDescription.getter(v37, v38);
      v15 = v14;
      *(inited + 56) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 64) = v16;
      *(inited + 32) = v13;
      *(inited + 40) = v15;
      swift_getErrorValue();
      v17 = Error.fullDescription.getter(v36);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v16;
      *(inited + 72) = v17;
      *(inited + 80) = v18;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v19, "fetchBoardLoadMarksThatCrashed failed with error %{public} %@", 61, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      result = swift_arrayDestroy();
      v21 = v2;
      goto LABEL_17;
    }

    v22 = v11;
    v30 = 0;
    v33 = v11[2];
    if (!v33)
    {
      break;
    }

    v2 = 0;
    v21 = _swiftEmptyArrayStorage;
    v32 = v5;
    while (v2 < v22[2])
    {
      v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v24 = *(v3 + 72);
      sub_10000C69C(v22 + v23 + v24 * v2, v8, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      if (*&v8[*(Marks + 24)] < 1)
      {
        sub_100025E48(v8, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      }

      else
      {
        sub_1000253F8(v8, v5, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776C84(0, v21[2] + 1, 1);
          v21 = v35;
        }

        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          sub_100776C84((v26 > 1), v27 + 1, 1);
          v21 = v35;
        }

        v21[2] = v27 + 1;
        v28 = v21 + v23 + v27 * v24;
        v5 = v32;
        sub_1000253F8(v32, v28, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      }

      if (v33 == ++v2)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_16:

  v2 = v30;
LABEL_17:
  v29 = v31;
  *v31 = v21;
  *(v29 + 8) = v2 != 0;
  return result;
}

void *sub_100023B4C()
{
  Marks = type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row(0);
  v106 = *(Marks - 8);
  __chkstk_darwin(Marks);
  v110 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v109 = &v95 - v4;
  v105 = type metadata accessor for UUID();
  v5 = *(v105 - 8);
  __chkstk_darwin(v105);
  v111 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v104);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v95 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = &v95 - v13;
  __chkstk_darwin(v14);
  v108 = &v95 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (&v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + 24);
  *v20 = v21;
  v22 = *(v17 + 104);
  v115 = enum case for DispatchPredicate.onQueue(_:);
  v116 = v22;
  v22(v20, v18);
  v23 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v117 = *(v17 + 8);
  v117(v20, v16);
  if ((v21 & 1) == 0)
  {
    goto LABEL_46;
  }

  v118 = 0;
  v119 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v118 = 0x205443454C4553;
  v119 = 0xE700000000000000;
  v24._countAndFlagsBits = sub_100024928(0, 0xE000000000000000);
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x204D4F524620;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._object = 0x8000000101585340;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27 = v118;
  v28 = v119;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v30 = sub_10001CC04(v29, v27, v28);
  v112 = v1;
  if (v1)
  {

    if (qword_1019F22D8 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_4;
  }

  v38 = v30;

  v39 = *(*(v38 + 16) + 32);
  *v20 = v39;
  v40 = v115;
  v41 = v116;
  v116(v20, v115, v16);
  v42 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v117(v20, v16);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[4] = 0;
  inited[5] = 1;
  inited[2] = v38;
  inited[3] = 0;
  v98 = v38;

  v114 = inited;
  v44 = sub_10001E1D0();
  if (!v44)
  {
    v99 = _swiftEmptyArrayStorage;
    v46 = v117;
LABEL_38:
    v90 = v98;

    v91 = v114;
    swift_setDeallocating();
    sub_10001E364(v91[3], v91[4], v91[5]);
    v92 = *(*(v90 + 16) + 32);
    *v20 = v92;
    v41(v20, v40, v16);
    v93 = v92;
    LOBYTE(v92) = _dispatchPreconditionTest(_:)();
    v46(v20, v16);
    if (v92)
    {
      swift_beginAccess();
      v94 = *(v90 + 24);
      if (v94)
      {
        sqlite3_finalize(v94);
        *(v90 + 24) = 0;
      }

      return v99;
    }

LABEL_49:
    __break(1u);
  }

  v45 = v44;
  v97 = (v5 + 32);
  v99 = _swiftEmptyArrayStorage;
  v46 = v117;
  while (1)
  {
    v47 = *(*(v45 + 16) + 32);
    *v20 = v47;
    v41(v20, v40, v16);
    v48 = v47;
    LOBYTE(v47) = _dispatchPreconditionTest(_:)();
    v46(v20, v16);
    if ((v47 & 1) == 0)
    {
      break;
    }

    v49 = *(*(v45 + 16) + 32);
    *v20 = v49;
    v41(v20, v40, v16);
    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v46(v20, v16);
    if ((v49 & 1) == 0)
    {
      goto LABEL_43;
    }

    swift_beginAccess();
    if (sqlite3_column_type(*(v45 + 24), 0) == 5 || (v51 = sqlite3_column_blob(*(v45 + 24), 0)) == 0)
    {
      v54 = 0;
      v56 = 0xF000000000000000;
    }

    else
    {
      v52 = v51;
      v53 = sqlite3_column_bytes(*(v45 + 24), 0);
      v54 = sub_100024DD4(v52, v53);
      v56 = v55;
    }

    v57 = *(*(v45 + 16) + 32);
    *v20 = v57;
    v116(v20, v40, v16);
    v58 = v57;
    LOBYTE(v57) = _dispatchPreconditionTest(_:)();
    v117(v20, v16);
    if ((v57 & 1) == 0)
    {
      goto LABEL_44;
    }

    v59 = sqlite3_column_type(*(v45 + 24), 1);
    if (v59 == 5)
    {
      v113 = 0;
    }

    else
    {
      v113 = sqlite3_column_int64(*(v45 + 24), 1);
    }

    v60 = *(*(v45 + 16) + 32);
    *v20 = v60;
    v116(v20, v115, v16);
    v61 = v60;
    LOBYTE(v60) = _dispatchPreconditionTest(_:)();
    v117(v20, v16);
    if ((v60 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (sqlite3_column_type(*(v45 + 24), 2) == 5 || (v64 = sqlite3_column_int(*(v45 + 24), 2), v56 >> 60 == 15) || v59 == 5)
    {
      if (qword_1019F22D8 != -1)
      {
        swift_once();
      }

      v62 = static OS_os_log.sideStore;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v62, &_mh_execute_header, v63, "Failed to fetch some mark data for a particular row while fetching AllBoardLoadMarks", 84, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v65 = v64;
      sub_100024E84(v54, v56);
      sub_100024E98(v54, v56);
      v66 = v112;
      sub_100024EEC(v111, v54, v56);
      if (!v66)
      {
        v112 = 0;
        v96 = v67;
        v95 = v68;
        sub_100025870(v54, v56);
        v72 = v103;
        (*v97)(v103, v111, v105);
        v73 = &v72[*(v104 + 20)];
        v74 = v95;
        *v73 = v96;
        v73[1] = v74;
        v96 = type metadata accessor for CRLBoardIdentifierStorage;
        v75 = v72;
        v76 = v102;
        sub_1000253F8(v75, v102, type metadata accessor for CRLBoardIdentifierStorage);
        v77 = v76;
        v78 = v101;
        sub_1000253F8(v77, v101, v96);
        v96 = type metadata accessor for CRLBoardIdentifier;
        v79 = v78;
        v80 = v100;
        sub_1000253F8(v79, v100, type metadata accessor for CRLBoardIdentifier);
        v81 = v80;
        v82 = v108;
        sub_1000253F8(v81, v108, v96);
        v83 = v82;
        v84 = v109;
        sub_10000C69C(v83, v109, type metadata accessor for CRLBoardIdentifier);
        v85 = Marks;
        *(v84 + *(Marks + 20)) = v113;
        *(v84 + *(v85 + 24)) = v65;
        sub_10000C69C(v84, v110, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        v86 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100025884(0, v86[2] + 1, 1, v86);
        }

        v99 = v86;
        v88 = v86[2];
        v87 = v86[3];
        if (v88 >= v87 >> 1)
        {
          v99 = sub_100025884((v87 > 1), v88 + 1, 1, v99);
        }

        sub_100025870(v54, v56);
        sub_100025870(v54, v56);
        sub_100025E48(v109, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        sub_100025E48(v108, type metadata accessor for CRLBoardIdentifier);
        v89 = v99;
        v99[2] = v88 + 1;
        sub_1000253F8(v110, v89 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v88, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        v71 = sub_10001E1D0();
        v45 = v71;
        v40 = v115;
        goto LABEL_30;
      }

      sub_100025870(v54, v56);
      sub_100025870(v54, v56);
      if (qword_1019F22D8 != -1)
      {
        swift_once();
      }

      v69 = static OS_os_log.sideStore;
      v70 = static os_log_type_t.error.getter();
      sub_100005404(v69, &_mh_execute_header, v70, "Failed to convert a board identifier data into a board identifier while fetching AllBoardLoadMarks", 98, 2, _swiftEmptyArrayStorage);
      v112 = 0;
    }

    v40 = v115;
    sub_100025870(v54, v56);

    v71 = sub_10001E1D0();
    v45 = v71;
LABEL_30:
    v41 = v116;
    v46 = v117;
    if (!v71)
    {
      goto LABEL_38;
    }
  }

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
  swift_once();
LABEL_4:
  v31 = static OS_os_log.sideStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v33 = Error.localizedDescription.getter();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1000053B0();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v31, &_mh_execute_header, v36, "Failed to fetch _fetchAllBoardLoadMarks with error %@", 53, 2, v32);
  swift_setDeallocating();
  sub_100005070((v32 + 32));
  return swift_willThrow();
}

uint64_t sub_100024928(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x8000000101585360;
  String.append(_:)(v6);

  v7 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100024CBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100024CBC((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;

  v11._countAndFlagsBits = 0x6E6F6973726576;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100024CBC(0, *(v7 + 2) + 1, 1, v7);
  }

  v13 = *(v7 + 2);
  v12 = *(v7 + 3);
  if (v13 >= v12 >> 1)
  {
    v7 = sub_100024CBC((v12 > 1), v13 + 1, 1, v7);
  }

  *(v7 + 2) = v13 + 1;
  v14 = &v7[16 * v13];
  *(v14 + 4) = v5;
  *(v14 + 5) = v4;

  v15._countAndFlagsBits = 0x7265746E756F63;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100024CBC(0, *(v7 + 2) + 1, 1, v7);
  }

  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v7 = sub_100024CBC((v16 > 1), v17 + 1, 1, v7);
  }

  *(v7 + 2) = v17 + 1;
  v18 = &v7[16 * v17];
  *(v18 + 4) = v5;
  *(v18 + 5) = v4;

  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v19 = BidirectionalCollection<>.joined(separator:)();

  return v19;
}

char *sub_100024CBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100024DD4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100AE6760(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100024E84(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100024E98(result, a2);
  }

  return result;
}

uint64_t sub_100024E98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100024EEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = BYTE6(a3);
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10084DC7C();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
      return;
    }

    goto LABEL_39;
  }

  if (BYTE6(a3) < 0x10uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v12 = Data.subdata(in:)();
  UUID.init(crl_data:)(v12, v13);
  if (v3)
  {
    return;
  }

  if (v6 == 2)
  {
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v9 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (v9)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v16 < 17)
    {
      return;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        if (HIDWORD(a2) - a2 < 17)
        {
          return;
        }

        goto LABEL_19;
      }

      goto LABEL_40;
    }

    if (v4 < 0x11uLL)
    {
      return;
    }
  }

LABEL_19:
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v17 = HIDWORD(a2) - a2;
        goto LABEL_29;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_28:
    v17 = v4;
  }

LABEL_29:
  if (v17 < 16)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v20 = Data.subdata(in:)();
  v22 = v21;
  sub_10084D938(v20, v21);
  if (!v23)
  {
    v26 = v20;
    v27 = v22;
    sub_100024E98(v20, v22);
    sub_1005B981C(&qword_101A04590, &qword_101481358);
    if (swift_dynamicCast())
    {
      sub_100050F74(v24, v28);
      sub_100020E58(v28, v29);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_10002640C(v20, v22);
        sub_100020E58(v28, v29);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        sub_100005070(v28);
        return;
      }

      sub_100005070(v28);
    }

    else
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_10000CAAC(v24, &qword_101A04598, &qword_101481360);
    }

    sub_10084D714(v20, v22);
  }

  sub_10002640C(v20, v22);
}

uint64_t sub_1000251F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000252C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000253F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000254C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000256D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000257A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025870(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002640C(result, a2);
  }

  return result;
}

void *sub_1000258AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1005B981C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100025A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025D28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025EA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025FC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100026028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100026088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000260E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t UUID.init(crl_data:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      sub_10070A7DC();
      swift_allocError();
      swift_willThrow();
      return sub_10002640C(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_24;
      }

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_29;
      }

      v10 = v9;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_26;
      }

      v12 = a1 - v11 + v10;
      __DataStorage._length.getter();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_23;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      __DataStorage._length.getter();
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_21:
      UUID.init(uuid:)();
      return sub_10002640C(a1, a2);
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __DataStorage._length.getter();
LABEL_28:
  __break(1u);
LABEL_29:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_10002640C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10002648C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000264D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000265A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000265E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026620()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026660(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  swift_unknownObjectRelease();
  a1(*(v3 + 32));
  a2(*(v3 + 40));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000266CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002670C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100026808(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100026860()
{
  v1 = sub_1005B981C(&qword_1019FBEE0, &qword_10149BD50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000268F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000269C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100026A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100026A40()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100026B40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026B80(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1005B981C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100026C04()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100026C54()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100026CA4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026CEC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100026D38()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100026D80()
{
  v1 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100026E14()
{
  v1 = _s11SwiftUIViewVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v4 = v0 + v21;

  swift_unknownObjectWeakDestroy();

  v5 = v1[8];
  sub_1005B981C(&qword_101A0A8A0, &qword_101495510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v4 + v1[10];
  v8 = _s13ItemViewModelVMa(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v7, v9);
    v10 = v8[5];
    v20 = v2;
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 8);
    v12(v7 + v10, v11);
    v13 = v11;
    v2 = v20;
    v12(v7 + v8[6], v13);
  }

  sub_1005B981C(&qword_101A0A6C8, &qword_10148A128);

  v14 = v4 + v1[11];
  v15 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v15 - 8) + 8))(v14, v15);
  sub_1005B981C(&qword_101A0A6D0, &qword_10148A130);

  v16 = v4 + v1[14];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_1005B981C(&qword_101A0A6D8, &qword_10148A138);

  return _swift_deallocObject(v0, v21 + v3, v2 | 7);
}

uint64_t sub_1000271E4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10002722C(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 41, 7);
}

uint64_t sub_100027284()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000272C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027304()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002738C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000274AC()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100027504(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1005B981C(a1, a2);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;

  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v2 + v7, v15);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  (*(v10 + 8))(v2 + v12, v9);

  return _swift_deallocObject(v2, v12 + v13, v14 | 7);
}

uint64_t sub_10002768C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000276D4()
{

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002773C()
{
  v1 = (type metadata accessor for CRLCompactScenesListUI_i(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectWeakDestroy();

  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1005B981C(&qword_101A30C98, &unk_1014D9280);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100027880()
{
  v1 = type metadata accessor for CRLActiveParticipantDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 24);
  v7 = type metadata accessor for Tips.Status();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  sub_1005B981C(&qword_101A32018, &qword_1014DA9E8);

  v9 = *(v1 + 28);
  sub_1005B981C(&qword_101A25218, &qword_1014BD120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100027ABC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100027B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v16 = 0;
    v17 = 1;
    result = sub_100027CA8(a2, 0, 0, a1, &v16);
    if (!v3)
    {
      v15 = v17;
      *a3 = v16;
      *(a3 + 8) = v15;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100027CA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v42 = a5;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v15 = v9 + 104;
  v14 = *(v9 + 104);
  v45 = enum case for DispatchPredicate.onQueue(_:);
  v44 = v14;
  v14(v12, v10);
  v16 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v46 = *(v9 + 8);
  v46(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v43 = v8;
  v40 = a3;
  v41 = a2;
  a2 = sub_1000280F0();
  v18 = v17;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v20 = v47;
  v21 = sub_10001CC04(v19, 0xD00000000000003ALL, 0x80000001015A68E0);
  v47 = v20;
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
      return swift_willThrow();
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v26 = v21;

  sub_1000285F8(a2, v18, 1);

  v27 = *(*(v26 + 16) + 32);
  *v12 = v27;
  v28 = v45;
  v29 = v43;
  v30 = v44;
  v44(v12, v45, v43);
  v31 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (v46)(v12, v29);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteRowIterator();
  v32 = swift_initStackObject();
  v32[4] = 0;
  v32[5] = 1;
  v32[2] = v26;
  v32[3] = 0;
  v33 = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v32[3], v32[4], v32[5]);
  if (v33)
  {

    v34 = sub_100028894(0, v33);
    v35 = v42;
    *v42 = v34;
    *(v35 + 8) = v36 & 1;
    if (v41)
    {
      v41(v33, 1);
    }
  }

  v37 = *(*(v26 + 16) + 32);
  *v12 = v37;
  v30(v12, v28, v29);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  result = (v46)(v12, v29);
  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v39 = *(v26 + 24);
  if (v39)
  {
    sqlite3_finalize(v39);
    *(v26 + 24) = 0;
  }
}

unint64_t sub_1000280F0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v5);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C83C(v1, v7, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000024;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD00000000000002DLL;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v9 = *v7;
        v53 = 0xD000000000000017;
        v54 = 0x80000001015A4150;
        v33 = [v9 zoneName];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37._countAndFlagsBits = v34;
        v37._object = v36;
        String.append(_:)(v37);

        v38._countAndFlagsBits = 95;
        v38._object = 0xE100000000000000;
        String.append(_:)(v38);
        v39 = [v9 ownerName];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (v40 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v42 != v43)
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v45 & 1) == 0)
          {
LABEL_22:
            v46 = [v9 ownerName];
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            v50 = v47;
LABEL_28:
            v51 = v49;
            String.append(_:)(*&v50);

            return v53;
          }

LABEL_27:
          v50 = 0;
          v49 = 0xE000000000000000;
          goto LABEL_28;
        }
      }

      else
      {
        v9 = *v7;
        v53 = 0x6F7A5F6863746566;
        v54 = 0xEB000000005F656ELL;
        v10 = [v9 zoneName];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14._countAndFlagsBits = v11;
        v14._object = v13;
        String.append(_:)(v14);

        v15._countAndFlagsBits = 95;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        v16 = [v9 ownerName];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (v17 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v19 != v20)
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_100025668(v7, v4, type metadata accessor for CRLBoardIdentifier);
      v53 = 0xD00000000000001ELL;
      v54 = 0x80000001015A4130;
      v52._countAndFlagsBits = UUID.uuidString.getter();
      v52._object = v24;

      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);

      countAndFlagsBits = v52._countAndFlagsBits;
      object = v52._object;
      v28 = &v4[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v29 = *v28;
      v30 = v28[1];
      v52._countAndFlagsBits = countAndFlagsBits;
      v52._object = object;

      v31._countAndFlagsBits = v29;
      v31._object = v30;
      String.append(_:)(v31);

      String.append(_:)(v52);

      v32 = v53;
      sub_100026028(v4, type metadata accessor for CRLBoardIdentifier);
      return v32;
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

uint64_t sub_1000285F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24[0] = a2;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v4 + 16) + 32);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v20 = v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v24[1] = a1;
  v24[2] = v24[0];
  static String.Encoding.utf8.getter();
  sub_100017CD8();
  v18 = StringProtocol.cString(using:)();
  (*(v8 + 8))(v10, v7);
  v20 = swift_beginAccess();
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    v20 = *(v4 + 24);
    if (qword_1019F17C8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v23 = v20;
  swift_once();
  v20 = v23;
LABEL_5:
  if (v18)
  {
    v21 = (v18 + 32);
  }

  else
  {
    v21 = 0;
  }

  sqlite3_bind_text(v20, a3, v21, -1, qword_101AD69D0);
}

sqlite3_int64 sub_100028894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(a2 + 16) + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(*(a2 + 24), a1);
  }
}

uint64_t sub_100028A14(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028A70(uint64_t a1)
{
  v2 = v1;
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlDefault;
  v4 = static os_log_type_t.default.getter();
  result = sub_100005404(v3, &_mh_execute_header, v4, "CloudKit syncing is enabled", 27, 2, _swiftEmptyArrayStorage);
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardDataStore);
  if (v6)
  {
    type metadata accessor for CRLSyncPriorityProvider(0);
    swift_allocObject();
    v7 = v6;
    v8 = sub_100028CF8();
    type metadata accessor for CRLSyncDriver();
    swift_allocObject();
    v9 = sub_100029214(v7, v8);

    *(v2 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver) = v9;

    sub_10002E0B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CRLSyncPriorityProvider(uint64_t a1)
{
  result = qword_1019FA540;
  if (!qword_1019FA540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100028BF4(uint64_t a1)
{
  if (!qword_101A14A70)
  {
    type metadata accessor for CRLBoardIdentifier(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A14A70);
    }
  }
}

void sub_100028C4C(uint64_t a1)
{
  sub_100028BF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100028CF8()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_currentFocusedBoard;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_statusByIdentifier;
  *(v0 + v8) = sub_1000290D8(_swiftEmptyArrayStorage);
  v9 = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v11[0] = " because boardWasFocused";
  v11[1] = v9;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100006448(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_10002901C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100029100(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1005B981C(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      result = a4();
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

id sub_100029214(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v6 - 8);
  v145 = &v132 - v7;
  v147 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v147);
  v144 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v142 - 1);
  __chkstk_darwin(v142);
  v11 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  type metadata accessor for CRLAccountUtilities();
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 120) = swift_allocObject();
  type metadata accessor for CRLUnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  atomic_thread_fence(memory_order_acq_rel);
  *(v3 + 128) = v13;
  *(v3 + 136) = 0;
  *(v3 + 16) = a1;
  *(v3 + 72) = a2;
  type metadata accessor for CRLDatabaseSyncDataSource();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = 0;
  *(v3 + 56) = v15;
  v146 = type metadata accessor for CRLBoardSyncLogicProvider();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v3 + 48) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = 1;
  *(v3 + 64) = v17;
  v18 = qword_1019F1588;
  v19 = a1;
  v148 = a2;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_101AD6518;
  type metadata accessor for CRLBoardShareController();
  v21 = swift_allocObject();
  v22 = v20;
  v143 = v22;
  swift_defaultActor_initialize();
  type metadata accessor for CRLZoneShareController();
  v21[16] = 0;
  v21[17] = 0;
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 112) = v22;
  *(v23 + 120) = 0;
  v21[14] = v23;
  v21[15] = v19;
  v137 = v19;
  *(v3 + 40) = v21;
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v142);
  v150 = _swiftEmptyArrayStorage;
  sub_10002A8DC(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800, &unk_10146F020);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = *(v3 + 48);
  v141 = *(v3 + 56);
  v142 = v24;
  v26 = v146;
  v167 = v146;
  v168 = &off_1018A8500;
  v166[0] = v25;
  v144 = v25;
  v27 = type metadata accessor for CRLSyncPriorityProvider(0);
  v164 = v27;
  v165 = &off_101881800;
  v163[0] = v148;
  v147 = type metadata accessor for CRLSyncController();
  v28 = objc_allocWithZone(v147);
  v29 = sub_10002A948(v166, v167);
  v139 = &v132;
  v30 = __chkstk_darwin(v29);
  v32 = (&v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = sub_10002A948(v163, v164);
  v138 = &v132;
  v35 = __chkstk_darwin(v34);
  v37 = (&v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37, v35);
  v39 = *v32;
  v40 = *v37;
  v161 = v26;
  v162 = &off_1018A8500;
  v160[0] = v39;
  v158 = v27;
  v159 = &off_101881800;
  v140 = v27;
  v157[0] = v40;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8] = 0;
  swift_unknownObjectWeakInit();
  v41 = &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine];
  *(v41 + 4) = 0;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask] = 0;
  v42 = OBJC_IVAR____TtC8Freeform17CRLSyncController_targetedFetchTasks;
  swift_retain_n();
  swift_retain_n();
  v43 = v141;

  v44 = v142;
  *&v28[v42] = sub_10002A998(_swiftEmptyArrayStorage);
  v45 = &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata];
  *v45 = 0u;
  *(v45 + 1) = 0u;
  *(v45 + 4) = 0;
  v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_shouldFetchAssets] = 0;
  v46 = OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager;
  v142 = type metadata accessor for CRLAccountChangeObserverManager();
  v47 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v47 + 112) = _swiftEmptySetSingleton;
  *&v28[v46] = v47;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter] = 0;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter] = 0;
  v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope] = 0;
  v48 = &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource];
  *v48 = v43;
  v48[1] = &off_101899E78;
  sub_10000630C(v160, &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider]);
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue] = v44;
  sub_10000630C(v157, &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider]);
  v49 = v143;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_container] = v143;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords] = _swiftEmptyDictionarySingleton;
  v156.receiver = v28;
  v156.super_class = v147;
  v143 = v49;
  v50 = v44;
  v51 = objc_msgSendSuper2(&v156, "init");
  v52 = *&v51[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_10002B574;
  *(v54 + 24) = v53;
  v154 = sub_10002AAE0;
  v155 = v54;
  v150 = _NSConcreteStackBlock;
  v151 = *"";
  v141 = &v152;
  v152 = sub_10002AAB8;
  v153 = &unk_1018A72B8;
  v55 = _Block_copy(&v150);
  v56 = v51;
  v57 = v52;

  dispatch_sync(v57, v55);

  _Block_release(v55);
  v144 = v50;

  sub_100005070(v157);
  sub_100005070(v160);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_100005070(v163);
  sub_100005070(v166);
  *(v3 + 24) = v56;
  v58 = *(v3 + 40);
  v59 = type metadata accessor for TaskPriority();
  v60 = *(v59 - 8);
  v61 = v145;
  v133 = *(v60 + 56);
  v134 = v59;
  v132 = v60 + 56;
  v133(v145, 1, 1);
  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = 0;
  v62[4] = v56;
  v62[5] = v58;
  v62[6] = &off_1018B8A98;
  v63 = v56;
  swift_retain_n();
  v64 = v63;
  sub_10064191C(0, 0, v61, &unk_1014B7330, v62);

  v138 = *(v3 + 64);
  v65 = *(v3 + 48);
  v66 = v146;
  v167 = v146;
  v168 = &off_1018A8500;
  v166[0] = v65;
  v139 = v65;
  v67 = v140;
  v164 = v140;
  v165 = &off_101881800;
  v163[0] = v148;
  v68 = objc_allocWithZone(v147);
  v69 = sub_10002A948(v166, v167);
  v136 = &v132;
  v70 = __chkstk_darwin(v69);
  v72 = (&v132 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72, v70);
  v74 = sub_10002A948(v163, v164);
  v135 = &v132;
  v75 = __chkstk_darwin(v74);
  v77 = (&v132 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77, v75);
  v79 = *v72;
  v80 = *v77;
  v161 = v66;
  v162 = &off_1018A8500;
  v160[0] = v79;
  v158 = v67;
  v159 = &off_101881800;
  v157[0] = v80;
  *&v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8] = 0;
  swift_unknownObjectWeakInit();
  v81 = &v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine];
  *(v81 + 4) = 0;
  *v81 = 0u;
  *(v81 + 1) = 0u;
  *&v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask] = 0;
  v82 = OBJC_IVAR____TtC8Freeform17CRLSyncController_targetedFetchTasks;
  swift_retain_n();
  swift_retain_n();
  v83 = v144;
  v84 = v138;

  *&v68[v82] = sub_10002A998(_swiftEmptyArrayStorage);
  v85 = &v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  *(v85 + 4) = 0;
  v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_shouldFetchAssets] = 0;
  v86 = OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager;
  v87 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v87 + 112) = _swiftEmptySetSingleton;
  *&v68[v86] = v87;
  *&v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter] = 0;
  *&v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter] = 0;
  v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope] = 1;
  v88 = &v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource];
  *v88 = v84;
  v88[1] = &off_101899E78;
  sub_10000630C(v160, &v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider]);
  *&v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue] = v83;
  sub_10000630C(v157, &v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider]);
  v89 = v143;
  *&v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_container] = v143;
  *&v68[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords] = _swiftEmptyDictionarySingleton;
  v149.receiver = v68;
  v149.super_class = v147;
  v90 = v89;
  v91 = v83;
  v92 = objc_msgSendSuper2(&v149, "init");
  v93 = *&v92[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  v56 = swift_allocObject();
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  *(v56 + 4) = v92;
  v57 = swift_allocObject();
  v57[2].isa = sub_100EA87F8;
  v57[3].isa = v56;
  v154 = sub_10002AAE0;
  v155 = v57;
  v150 = _NSConcreteStackBlock;
  v151 = *"";
  v152 = sub_10002AAB8;
  v153 = &unk_1018A7358;
  v94 = _Block_copy(&v150);
  v95 = v92;
  v96 = v93;

  dispatch_sync(v96, v94);

  _Block_release(v94);
  v147 = v91;

  sub_100005070(v157);
  sub_100005070(v160);
  LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

  if (v91)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  sub_100005070(v163);
  sub_100005070(v166);
  *(v3 + 32) = v95;
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v98 = result;
  v99 = [result aa_primaryAppleAccount];

  if (v99)
  {
  }

  *(v3 + 112) = v99 != 0;
  v57 = objc_opt_self();
  v56 = [v57 defaultCenter];
  if (qword_1019F2528 != -1)
  {
    goto LABEL_18;
  }

LABEL_9:
  v100 = qword_101AD8570;
  v101 = swift_allocObject();
  swift_weakInit();
  v154 = sub_100EA87F4;
  v155 = v101;
  v150 = _NSConcreteStackBlock;
  v151 = *"";
  v152 = sub_100059694;
  v153 = &unk_1018A73A8;
  v102 = _Block_copy(&v150);
  v103 = v137;

  v104 = [v56 addObserverForName:v100 object:v103 queue:0 usingBlock:v102];
  _Block_release(v102);

  *(v3 + 80) = v104;
  swift_unknownObjectRelease();
  v105 = [v57 defaultCenter];
  if (qword_1019F2530 != -1)
  {
    swift_once();
  }

  v106 = qword_101AD8578;
  v107 = swift_allocObject();
  swift_weakInit();
  v154 = sub_100EA8758;
  v155 = v107;
  v150 = _NSConcreteStackBlock;
  v151 = *"";
  v152 = sub_100059694;
  v153 = &unk_1018A73D0;
  v108 = _Block_copy(&v150);
  v109 = v103;

  v110 = [v105 addObserverForName:v106 object:v109 queue:0 usingBlock:v108];
  _Block_release(v108);

  *(v3 + 96) = v110;
  swift_unknownObjectRelease();
  v111 = [v57 defaultCenter];
  if (qword_1019F2890 != -1)
  {
    swift_once();
  }

  v112 = qword_101AD8F50;
  v113 = swift_allocObject();
  swift_weakInit();
  v154 = sub_100EA8774;
  v155 = v113;
  v150 = _NSConcreteStackBlock;
  v151 = *"";
  v152 = sub_100059694;
  v153 = &unk_1018A73F8;
  v114 = _Block_copy(&v150);

  v115 = [v111 addObserverForName:v112 object:0 queue:0 usingBlock:v114];
  _Block_release(v114);

  *(v3 + 88) = v115;
  swift_unknownObjectRelease();
  v116 = [v57 defaultCenter];
  if (qword_1019F2898 != -1)
  {
    swift_once();
  }

  v117 = qword_101AD8F58;
  v118 = swift_allocObject();
  swift_weakInit();

  v154 = sub_10002D380;
  v155 = v118;
  v150 = _NSConcreteStackBlock;
  v151 = *"";
  v152 = sub_100059694;
  v153 = &unk_1018A7420;
  v119 = _Block_copy(&v150);

  v120 = [v116 addObserverForName:v117 object:0 queue:0 usingBlock:v119];
  _Block_release(v119);

  *(v3 + 104) = v120;
  swift_unknownObjectRelease();
  v121 = *(v3 + 24);
  v122 = v145;
  (v133)(v145, 1, 1, v134);
  v123 = swift_allocObject();
  v123[2] = 0;
  v123[3] = 0;
  v123[4] = v121;
  v123[5] = v3;
  v123[6] = &off_1018A7078;
  swift_retain_n();
  v124 = v121;
  sub_10064191C(0, 0, v122, &unk_1014B7338, v123);

  *(*(v3 + 32) + OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8) = &off_1018A7060;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 24) + OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8) = &off_1018A7060;
  swift_unknownObjectWeakAssign();
  sub_1005B981C(&qword_101A22430, &qword_1014B7340);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_10146BDE0;
  v126 = *(v3 + 24);
  *(inited + 40) = v126;
  *(inited + 48) = 1;
  v127 = *(v3 + 32);
  *(inited + 56) = v127;
  v128 = sub_10002D7B4(inited);
  swift_setDeallocating();
  v129 = v126;
  v130 = v127;
  sub_1005B981C(&qword_101A22438, qword_1014B7348);
  swift_arrayDestroy();
  type metadata accessor for CRLSyncHelper();
  v131 = swift_allocObject();
  *(v131 + 16) = v128;
  sub_10002DCD0();

  *&v109[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper] = v131;

  return v3;
}

uint64_t sub_10002A800()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002A948(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_10002A998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0EFC8, &qword_1014925F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1007C8A78(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

uint64_t sub_10002AB3C()
{
  v1 = v0;
  v2 = type metadata accessor for CKSyncEngine.Configuration();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v58 - v5;
  v6 = sub_1005B981C(&qword_101A0BA70, &qword_10148CED0);
  __chkstk_darwin(v6 - 8);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v58 - v9;
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v13 = type metadata accessor for CKSyncEngine.State.Serialization();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17, v19);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v25 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_container);
  v26 = &selRef_sharedCloudDatabase;
  v60 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
  if (!v60)
  {
    v26 = &selRef_privateCloudDatabase;
  }

  v63 = [v25 *v26];
  sub_10002B648(v70);
  v24 = &unk_10146C000;
  v62 = v14 + 56;
  if (!v71)
  {
    sub_10000CAAC(v70, &qword_101A0BA20, &qword_10148CE38);
    v61 = *(v14 + 56);
    v61(v12, 1, 1, v13);
LABEL_16:
    sub_10000CAAC(v12, &qword_101A0BA70, &qword_10148CED0);
    LODWORD(v16) = v60;
    if (qword_1019F2270 == -1)
    {
LABEL_17:
      v37 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      v39 = inited;
      *(inited + 16) = *(v24 + 1712);
      if (v16)
      {
        v40 = 0x5320646572616853;
      }

      else
      {
        v40 = 0x2065746176697250;
      }

      if (v16)
      {
        v41 = 0xEC00000065706F63;
      }

      else
      {
        v41 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(v39 + 32) = v40;
      *(v39 + 40) = v41;
      v42 = static os_log_type_t.error.getter();
      v59 = v37;
      sub_100005404(v37, &_mh_execute_header, v42, "<%{public}@> Failed to decode sync metadata.", 44, 2, v39);
      swift_setDeallocating();
      sub_100005070((v39 + 32));
      goto LABEL_24;
    }

LABEL_39:
    swift_once();
    goto LABEL_17;
  }

  sub_1005B981C(&qword_101A0BA78, &qword_10148CED8);
  v27 = swift_dynamicCast();
  v61 = *(v14 + 56);
  v61(v12, v27 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_16;
  }

  (*(v14 + 32))(v16, v12, v13);
  v71 = v13;
  v72 = sub_10002C5F0(&qword_1019FF6E0, 255, &type metadata accessor for CKSyncEngine.State.Serialization, protocol conformance descriptor for CKSyncEngine.State.Serialization);
  v28 = sub_10002C58C(v70);
  v29 = *(v14 + 16);
  v58 = v16;
  v29(v28, v16, v13);
  v30 = OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata;
  swift_beginAccess();
  sub_10002C638(v70, v1 + v30, &qword_101A0BA20, &qword_10148CE38);
  swift_endAccess();
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v31 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v32 = swift_initStackObject();
  v33 = v32;
  *(v32 + 16) = xmmword_10146C6B0;
  LODWORD(v16) = v60;
  if (v60)
  {
    v34 = 0x5320646572616853;
  }

  else
  {
    v34 = 0x2065746176697250;
  }

  if (v60)
  {
    v35 = 0xEC00000065706F63;
  }

  else
  {
    v35 = 0xED000065706F6353;
  }

  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1000053B0();
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  v36 = static os_log_type_t.default.getter();
  v59 = v31;
  sub_100005404(v31, &_mh_execute_header, v36, "<%{public}@> Successfully loaded sync metadata", 46, 2, v33);
  swift_setDeallocating();
  sub_100005070((v33 + 32));
  (*(v14 + 8))(v58, v13);
LABEL_24:
  v43 = OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata;
  swift_beginAccess();
  sub_10000BE14(v1 + v43, v70, &qword_101A0BA20, &qword_10148CE38);
  v44 = v65;
  if (v71)
  {
    sub_1005B981C(&qword_101A0BA78, &qword_10148CED8);
    v45 = swift_dynamicCast();
    v61(v44, v45 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v44, 1, v13) != 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_10000CAAC(v70, &qword_101A0BA20, &qword_10148CE38);
    v61(v44, 1, 1, v13);
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v46 = swift_initStackObject();
  v47 = v46;
  *(v46 + 16) = xmmword_10146C6B0;
  if (v16)
  {
    v48 = 0x5320646572616853;
  }

  else
  {
    v48 = 0x2065746176697250;
  }

  if (v16)
  {
    v49 = 0xEC00000065706F63;
  }

  else
  {
    v49 = 0xED000065706F6353;
  }

  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_1000053B0();
  *(v47 + 32) = v48;
  *(v47 + 40) = v49;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v59, &_mh_execute_header, v50, "<%{public}@> Sync metadata is of wrong type. Setting up with nil metadata. This will lead to refetching all CloudKit data.", 122, 2, v47);
  swift_setDeallocating();
  sub_100005070((v47 + 32));
LABEL_37:
  sub_10000BE14(v44, v64, &qword_101A0BA70, &qword_10148CED0);
  sub_10002C5F0(&qword_101A0B9F8, v51, type metadata accessor for CRLSyncController, aY_34);
  swift_unknownObjectRetain();
  v52 = v67;
  v53 = v63;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.allowFetchAndModifyConcurrently.setter();
  v55 = v68;
  v54 = v69;
  (*(v68 + 16))(v66, v52, v69);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v56 = CKSyncEngine.init(_:)();

  (*(v55 + 8))(v52, v54);
  sub_10000CAAC(v44, &qword_101A0BA70, &qword_10148CED0);
  return v56;
}

uint64_t sub_10002B580(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    a1(v9, a3);
    sub_1000C1014(a1, a2);
  }

  else
  {
    v6 = sub_10002AB3C();
    v9[3] = type metadata accessor for CKSyncEngine();
    v9[4] = &off_1019FF6E8;
    v9[0] = v6;
  }

  v7 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10002C638(v9, a3 + v7, &qword_101A0BA28, &qword_10148CE40);
  return swift_endAccess();
}

uint64_t sub_10002B648@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v9 = *(v1 + 16);
  swift_storeEnumTagMultiPayload();
  v18 = v9;
  v19 = v8;
  sub_1005B981C(&qword_1019FB5E0, &qword_101474AF0);
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = v20;
  v10 = v21;
  sub_10002C480(v8, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (v10 >> 60 == 15)
  {
    v12 = v17;
    *(v17 + 32) = 0;
    *v12 = 0u;
    v12[1] = 0u;
  }

  else
  {
    sub_100024E98(v11, v10);
    sub_1000065B0(&qword_1019FF720, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100025870(v11, v10);
    v13 = v17;
    *(v17 + 24) = v2;
    v13[4] = sub_1000065B0(&qword_1019FF6E0, &type metadata accessor for CKSyncEngine.State.Serialization, protocol conformance descriptor for CKSyncEngine.State.Serialization);
    v14 = sub_10002C58C(v13);
    (*(v3 + 32))(v14, v5, v2);
    sub_100025870(v11, v10);
  }
}

uint64_t sub_10002BADC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_10002BB60(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10002BB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002BB60(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10002BB60(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v13 = xmmword_101486780;
    sub_10002BCEC(a1, 0, 0, v1, &v13);
    v12 = v13;
    if (v2)
    {
      sub_100025870(v13, *(&v13 + 1));
    }

    else
    {
      sub_100024E84(v13, *(&v13 + 1));
      sub_100025870(v12, *(&v12 + 1));
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BCEC(uint64_t a1, void (*a2)(uint64_t, uint64_t), unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v39 = a5;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v15 = v9 + 104;
  v14 = *(v9 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v14;
  v14(v12, v10);
  v16 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v42 = *(v9 + 8);
  v42(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v8;
  v37 = a3;
  v38 = a2;
  a3 = sub_1000280F0();
  v18 = v17;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v20 = v44;
  v21 = sub_10001CC04(v19, 0xD00000000000003ALL, 0x80000001015A68E0);
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
      *(inited + 32) = a3;
      *(inited + 40) = v15;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v24, "Failed to fetch value for key %@", 32, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return swift_willThrow();
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v26 = v21;

  sub_1000285F8(a3, v18, 1);

  v27 = *(*(v26 + 16) + 32);
  *v12 = v27;
  v28 = v41;
  v29 = v40;
  v43(v12, v41, v40);
  v30 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (v42)(v12, v29);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteRowIterator();
  v31 = swift_initStackObject();
  v31[4] = 0;
  v31[5] = 1;
  v31[2] = v26;
  v31[3] = 0;
  v32 = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v31[3], v31[4], v31[5]);
  if (v32)
  {

    sub_10002C128(v33, 0, v39);
    if (v38)
    {
      v38(v32, 1);
    }
  }

  v34 = *(*(v26 + 16) + 32);
  *v12 = v34;
  v43(v12, v28, v29);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  result = (v42)(v12, v29);
  if ((v34 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v36 = *(v26 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v26 + 24) = 0;
  }
}

uint64_t sub_10002C128(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    v14 = 0;
    goto LABEL_6;
  }

  v11 = *(*(a1 + 16) + 32);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = sub_10002C280(a2, a1);
    if (v14)
    {
      v14 = sub_100024DD4(v14, v15);
LABEL_7:
      v17 = *a3;
      v18 = a3[1];
      *a3 = v14;
      a3[1] = v16;
      return sub_100025870(v17, v18);
    }

LABEL_6:
    v16 = 0xF000000000000000;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

const void *sub_10002C280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(a2 + 16) + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  result = sqlite3_column_blob(*(a2 + 24), a1);
  if (result)
  {
    v12 = *(a2 + 24);
    v13 = result;
    sqlite3_column_bytes(v12, a1);
    return v13;
  }

  return result;
}

uint64_t sub_10002C420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C4E0(uint64_t a1)
{
  *(a1 + 8) = sub_10002C548(&qword_1019FF720, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
  result = sub_10002C548(&qword_1019FF728, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C548(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CKSyncEngine.State.Serialization();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_10002C58C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002C5F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1005B981C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_10002C6A0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAF0, &qword_101AD5A98);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataSync = v1;
}

uint64_t sub_10002C758(uint64_t a1)
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

  return sub_1009E08C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002C82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100EA772C(a1, v4, v5, v6);
}

uint64_t sub_10002C8EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10002C9A4(a1, v4);
}

uint64_t sub_10002C9A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002E33C;

  return v6(a1);
}

uint64_t sub_10002CA9C(uint64_t a1)
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

  return sub_10002CE94(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002CB64()
{
  v6 = v0;
  v1 = *(v0 + 56);
  type metadata accessor for CRLCloudAccountChangeObserverWrapper();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = v1;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_10002CC48(&v5, v2);
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002CC48(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CRLCloudAccountChangeObserverWrapper();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100E7357C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10002DA5C(v21 + 1);
    }

    sub_100E7B364(v22, v20);

    *v3 = v20;
  }

  else
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a2);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      do
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v15 == v17)
            {

              *a1 = *(*(v6 + 48) + 8 * v12);

              return 0;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;

    sub_10002CF38(v19, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
  }

  *a1 = a2;
  return 1;
}

uint64_t sub_10002CE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_10002CEB8, 0, 0);
}

uint64_t sub_10002CEB8()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager);
  *(v0 + 64) = v1;

  return _swift_task_switch(sub_10002CB64, v1, 0);
}

void sub_10002CF38(Swift::UInt result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10002DA5C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100E85FE8(&qword_101A21FA0, &qword_1014B6968);
      goto LABEL_16;
    }

    sub_10002D0E8(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CRLCloudAccountChangeObserverWrapper();
    do
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v13 == v15)
          {
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = result;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
  }
}

Swift::Int sub_10002D0E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21FA0, &qword_1014B6968);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

NSString sub_10002D394()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8570 = result;
  return result;
}

uint64_t sub_10002D3D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

NSString sub_10002D4CC()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8578 = result;
  return result;
}

uint64_t sub_10002D504()
{
  v1 = *(sub_1005B981C(&qword_1019F33E0, &unk_101468A80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_10002D66C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1005B981C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

NSString sub_10002D730()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8F50 = result;
  return result;
}

NSString sub_10002D76C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8F58 = result;
  return result;
}

unint64_t sub_10002D7B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A146C0, &unk_10149EBA0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_10002D978(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_10002D978(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10002D8B8()
{
  result = qword_101A0B9F0;
  if (!qword_101A0B9F0)
  {
    result = swift_getWitnessTable("1i:", &type metadata for CRLSyncScope, v0, v1);
    atomic_store(result, &qword_101A0B9F0);
  }

  return result;
}

unint64_t sub_10002D910(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();
  return sub_10002D9EC(a1 & 1, v2);
}

unint64_t sub_10002D980(int8x16_t *a1)
{
  Hasher.init(_seed:)();
  sub_100068D24(v4);
  v2 = Hasher._finalize()();

  return sub_1007CAAD8(a1, v2);
}

unint64_t sub_10002D9EC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_10002DA5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21FA0, &qword_1014B6968);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_10002DCD0()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper))
  {
    v1 = objc_opt_self();

    v24 = v1;
    v2 = [v1 _atomicIncrementAssertCount];
    v25[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v25, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("syncHelper", 10, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 69;
    v14 = v25[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("syncHelper", 10, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v23 = String._bridgeToObjectiveC()();

    [v24 handleFailureInFunction:v21 file:v22 lineNumber:69 isFatal:0 format:v23 args:v20];
  }
}

uint64_t sub_10002E0B8()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_10000BE14(v7, v4, &qword_1019FB750, &qword_10146F1B0);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = 0x4000000000000000;
  v10[5] = &unk_1014B72E8;
  v10[6] = v1;
  swift_retain_n();
  sub_100796D54(0, 0, v4, &unk_1014B72F8, v10);

  sub_10000CAAC(v7, &qword_1019FB750, &qword_10146F1B0);
  sub_10002E43C(0, 0);
  sub_10002E7B8();
  v9(v7, 1, 1, v8);
  sub_10000BE14(v7, v4, &qword_1019FB750, &qword_10146F1B0);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = 0x4014000000000000;
  v11[5] = &unk_1014B7308;
  v11[6] = v1;
  swift_retain_n();
  sub_100796D54(0, 0, v4, &unk_1014B7310, v11);

  return sub_10000CAAC(v7, &qword_1019FB750, &qword_10146F1B0);
}

uint64_t sub_10002E33C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002E43C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10002FA90;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5DC0;
  v14 = _Block_copy(aBlock);

  sub_10002E7A8(a1, a2);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_10002E760()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E7A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_10002E7B8()
{
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v0 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v2 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v91 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v83 - v7;
  if (qword_1019F2160 != -1)
  {
    goto LABEL_56;
  }

LABEL_2:
  v8 = static OS_os_log.crlZoneRefetch;
  v9 = static os_log_type_t.debug.getter();
  v96 = v8;
  sub_100005404(v8, &_mh_execute_header, v9, "Scheduling refetch for zones that need to be refetched.", 55, 2, _swiftEmptyArrayStorage);
  v10 = 0;
  v11 = 0;
  v89 = (v0 + 1);
  v90 = &v110;
  v88 = (v2 + 8);
  v104 = xmmword_10146BDE0;
  v87 = xmmword_10146C6B0;
  do
  {
    v86 = v10;
    v13 = *(&off_1018748D8 + v11 + 32);
    v14 = 24;
    if (*(&off_1018748D8 + v11 + 32))
    {
      v14 = 32;
    }

    v15 = 56;
    if (v13)
    {
      v15 = 64;
    }

    v16 = *(v83 + v15);
    v17 = *(v83 + v14);

    v107 = v17;
    v85 = v16;
    v0 = v16;
    v18 = sub_10003022C();
    v19 = v18;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v0 = __CocoaSet.makeIterator()();
      sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
      sub_100EA8530();
      Set.Iterator.init(_cocoa:)();
      v19 = v119;
      v20 = v120;
      v21 = v121;
      v2 = v122;
      v12 = v123;
    }

    else
    {
      v2 = 0;
      v22 = -1 << *(v18 + 32);
      v20 = v18 + 56;
      v23 = ~v22;
      v24 = -v22;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v12 = v25 & *(v18 + 56);
      v21 = v23;
    }

    v84 = v21;
    v26 = (v21 + 64) >> 6;
    if (v13)
    {
      v27 = 0x5320646572616853;
    }

    else
    {
      v27 = 0x2065746176697250;
    }

    v28 = 0xED000065706F6353;
    if (v13)
    {
      v28 = 0xEC00000065706F63;
    }

    v97 = v28;
    v98 = v27;
    v100 = v20;
    v101 = v19;
    v99 = v26;
    if (v19 < 0)
    {
LABEL_29:
      v43 = __CocoaSet.Iterator.next()();
      if (!v43)
      {
        goto LABEL_4;
      }

      v118[0] = v43;
      sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
      swift_dynamicCast();
      v42 = v109;
      v40 = v2;
      v41 = v12;
      if (!v109)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v38 = v2;
      v39 = v12;
      v40 = v2;
      if (!v12)
      {
        while (1)
        {
          v40 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v40 >= v26)
          {
            v12 = 0;
            goto LABEL_4;
          }

          v39 = *(v20 + 8 * v40);
          ++v38;
          if (v39)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_2;
      }

LABEL_27:
      v41 = (v39 - 1) & v39;
      v42 = *(*(v19 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
      if (!v42)
      {
        break;
      }

LABEL_31:
      v105 = v41;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v104;
      *(inited + 56) = &type metadata for String;
      v45 = sub_1000053B0();
      *(inited + 64) = v45;
      v46 = v97;
      *(inited + 32) = v98;
      *(inited + 40) = v46;
      v106 = v42;
      v47 = [v42 zoneName];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v45;
      *(inited + 72) = v48;
      *(inited + 80) = v50;
      v51 = static os_log_type_t.default.getter();
      sub_100005404(v96, &_mh_execute_header, v51, "<%{public}@> Refetching records for zone to refetch: %@", 55, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v52 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
      v53 = v107;
      swift_beginAccess();
      sub_10000BE14(&v53[v52], &v109, &qword_101A0BA28, &qword_10148CE40);
      if (v111)
      {
        sub_100050F74(&v109, v118);
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v102 = static OS_os_log.dataSync;
        v54 = swift_initStackObject();
        v55 = v54;
        *(v54 + 16) = v104;
        v56 = 0x5320646572616853;
        if (!v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v56 = 0x2065746176697250;
        }

        v57 = 0xED000065706F6353;
        if (v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v57 = 0xEC00000065706F63;
        }

        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = v45;
        *(v54 + 32) = v56;
        *(v54 + 40) = v57;
        v58 = [v106 zoneName];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v55[12] = &type metadata for String;
        v55[13] = v45;
        v55[9] = v59;
        v55[10] = v61;
        v62 = static os_log_type_t.default.getter();
        sub_100005404(v102, &_mh_execute_header, v62, "<%{public}@> Fetching targeted changes for zoneID: <%{public}@>", 63, 2, v55);
        swift_setDeallocating();
        swift_arrayDestroy();
        v63 = v103;
        static TaskPriority.background.getter();
        v64 = type metadata accessor for TaskPriority();
        v65 = *(v64 - 8);
        (*(v65 + 56))(v63, 0, 1, v64);
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_10000630C(v118, &v109);
        v67 = swift_allocObject();
        *(v67 + 16) = 0;
        *(v67 + 24) = 0;
        v68 = v106;
        *(v67 + 32) = v66;
        *(v67 + 40) = v68;
        sub_100050F74(&v109, v67 + 48);
        *(v67 + 88) = 0;
        *(v67 + 96) = 9;
        *(v67 + 104) = 2;
        v69 = v63;
        v70 = v91;
        sub_10000BE14(v69, v91, &qword_1019FB750, &qword_10146F1B0);
        LODWORD(v66) = (*(v65 + 48))(v70, 1, v64);
        v71 = v68;

        if (v66 == 1)
        {
          sub_10000CAAC(v70, &qword_1019FB750, &qword_10146F1B0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v65 + 8))(v70, v64);
        }

        v78 = *(v67 + 16);
        swift_unknownObjectRetain();

        if (v78)
        {
          swift_getObjectType();
          v79 = dispatch thunk of Actor.unownedExecutor.getter();
          v81 = v80;
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = 0;
          v81 = 0;
        }

        sub_10000CAAC(v103, &qword_1019FB750, &qword_10146F1B0);
        v82 = swift_allocObject();
        *(v82 + 16) = &unk_1014A08A0;
        *(v82 + 24) = v67;
        if (v81 | v79)
        {
          v114 = 0;
          v115 = 0;
          v116 = v79;
          v117 = v81;
        }

        v29 = swift_task_create();
        v30 = v107;
        v106 = *&v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = v71;
        v31[4] = v29;
        v112 = sub_100C08440;
        v113 = v31;
        *&v109 = _NSConcreteStackBlock;
        *(&v109 + 1) = *"";
        v110 = sub_100007638;
        v111 = &unk_1018A7128;
        v32 = _Block_copy(&v109);
        v33 = v30;
        v34 = v71;

        v35 = v92;
        static DispatchQoS.unspecified.getter();
        v108 = _swiftEmptyArrayStorage;
        sub_10002A8DC(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
        sub_1000067A8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00);
        v37 = v94;
        v36 = v95;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v0 = v106;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);

        (*v89)(v37, v36);
        (*v88)(v35, v93);
        sub_100005070(v118);

        v2 = v40;
        v12 = v105;
        v20 = v100;
        v19 = v101;
        v26 = v99;
        if (v101 < 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_10000CAAC(&v109, &qword_101A0BA28, &qword_10148CE40);
        v26 = v99;
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v72 = static OS_os_log.dataSync;
        v73 = swift_initStackObject();
        v74 = v73;
        *(v73 + 16) = v87;
        v75 = 0x5320646572616853;
        if (!v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v75 = 0x2065746176697250;
        }

        v76 = 0xED000065706F6353;
        if (v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v76 = 0xEC00000065706F63;
        }

        *(v73 + 56) = &type metadata for String;
        *(v73 + 64) = v45;
        *(v73 + 32) = v75;
        v0 = (v73 + 32);
        *(v73 + 40) = v76;
        v77 = static os_log_type_t.error.getter();
        sub_100005404(v72, &_mh_execute_header, v77, "<%{public}@> Can't fetch records for zoneID. There is no syncEngine set", 71, 2, v74);

        swift_setDeallocating();
        sub_100005070(v0);
        v2 = v40;
        v12 = v105;
        v20 = v100;
        v19 = v101;
        if (v101 < 0)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_4:
    sub_100035F8C(v19, v20, v84, v2, v12);

    v10 = 1;
    v11 = &_mh_execute_header.magic + 1;
  }

  while ((v86 & 1) == 0);
}

uint64_t sub_10002F450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F488()
{
  swift_unknownObjectRelease();

  sub_100005070((v0 + 48));

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10002F4D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F510()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002F558()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAD8, &qword_101AD5A80);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlZoneRefetch = v1;
}

void sub_10002F610(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v26 = v9;
    v27 = v6;
    v28 = v5;
    __chkstk_darwin(Strong);
    *(&v23 - 2) = v15;
    sub_10002FA9C(sub_100031EE8, (&v23 - 4));
    v25 = v10;
    v16 = v12;
    if (a2)
    {
      a2(0);
    }

    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = _swiftEmptySetSingleton;
    *(v17 + 24) = _swiftEmptySetSingleton;
    *(v17 + 32) = _swiftEmptySetSingleton;
    *(v17 + 40) = 0;
    *(v17 + 48) = v14;
    aBlock[4] = sub_1000260F4;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A5E10;
    v18 = _Block_copy(aBlock);
    v19 = v14;

    v20 = v16;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v21 = v28;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v27 + 8))(v8, v21);
    (*(v25 + 8))(v20, v26);
    sub_100034778(a2, a3, *&v19[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardsCleanupTolerance]);
  }
}

uint64_t sub_10002FA9C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    *(inited + 24) = 0;
    __chkstk_darwin(inited);
    *(&v17 - 4) = v15;
    *(&v17 - 3) = a1;
    *(&v17 - 2) = a2;
    *(&v17 - 1) = &v18;
    swift_retain_n();
    v16 = sub_10002FD6C(sub_1000307C0, (&v17 - 6));

    swift_setDeallocating();

    return v16 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002FCA4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100030450(a1, v6, v4, v5, v8, v7);
}

uint64_t sub_10002FD6C(void (*a1)(void *__return_ptr, id), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + 32);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v16 = (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    a1(v42, v16);
    if (v3)
    {
      return v17 & 1;
    }

    goto LABEL_13;
  }

  v37 = a2;
  v38 = a1;
  v36 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion;
  *(v5 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 1;
  v18 = [objc_opt_self() currentProcess];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10146CE00;
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() attributeWithDomain:v20 name:v21];

  *(v19 + 32) = v22;
  *(v19 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v23 = objc_allocWithZone(RBSAssertion);
  v24 = String._bridgeToObjectiveC()();
  sub_100006370(0, &unk_101A135C0, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v23 initWithExplanation:v24 target:v18 attributes:isa];

  v41 = 0;
  if (([v12 acquireWithError:&v41] & 1) == 0)
  {
    v27 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2098 == -1)
    {
LABEL_8:
      v28 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v30 = Error.publicDescription.getter(v39, v40);
      v32 = v31;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v28, &_mh_execute_header, v33, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      v26 = sub_100005070((inited + 32));
      v4 = 0;
      goto LABEL_9;
    }

LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v26 = v41;
LABEL_9:
  v38(v42, v26);
  if (v4)
  {
    [v12 invalidate];

    v17 = v36;
    *(v5 + v36) = 0;
    return v17 & 1;
  }

  [v12 invalidate];

  *(v5 + v36) = 0;
LABEL_13:
  v17 = v42[0];
  return v17 & 1;
}

Swift::Int sub_10003022C()
{
  sub_10001FF1C();
  sub_1005B981C(&unk_1019F52B0, &qword_10146FC90);
  OS_dispatch_queue.sync<A>(execute:)();

  return sub_100035B2C(v2, v0);
}

uint64_t sub_100030450(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_100030694, 0, 0);
}

uint64_t sub_100030478(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_10003080C();
  if (v4)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if (swift_dynamicCast())
    {
      v9 = sub_10089A9BC(v20, v21, v22);
      v11 = v10;
    }

    else
    {
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v12;
    }

    v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v15, "Failed transactional database operation with error %@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_10089C46C();
    swift_willThrow();
  }

  else
  {
    v8 = a2(v7);
    if (v8)
    {
      sub_100034410();
      v16 = 1;
    }

    else
    {
      v18 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
      v19 = static os_log_type_t.default.getter();
      sub_100005404(v18, &_mh_execute_header, v19, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, _swiftEmptyArrayStorage);
      sub_10089C46C();
      v16 = 0;
    }
  }

  return v16 & 1;
}

uint64_t sub_100030694(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_100EA6718;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10003077C@<X0>(uint64_t (*a1)(void, void, void, void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24), *(v2 + 32), **(v2 + 40));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10003080C()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + 16);
  v10 = *(v9 + 32);
  *v8 = v10;
  v11 = *(v5 + 104);
  v64 = enum case for DispatchPredicate.onQueue(_:);
  v65 = v11;
  v66 = v5 + 104;
  v11(v8, v6);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v13 = v15;
  v15(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  if (*(v9 + 24) != 1)
  {
    goto LABEL_5;
  }

  v59 = v3;
  v60 = v1;
  v61 = v13;
  v62 = v14;
  v63 = v4;
  v58 = objc_opt_self();
  LODWORD(v2) = [v58 _atomicIncrementAssertCount];
  v67 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v67, "There is already an open transaction on the database", 52, 2u);
  StaticString.description.getter("begin()", 7, 2);
  v57 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/SQL.swift", 75, 2);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v18;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_24;
  }

LABEL_4:
  v56 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v2;
  v20 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v20;
  v21 = sub_1005CF04C();
  *(inited + 104) = v21;
  v22 = v57;
  *(inited + 72) = v57;
  *(inited + 136) = &type metadata for String;
  v23 = sub_1000053B0();
  v24 = v55;
  *(inited + 112) = v4;
  *(inited + 120) = v24;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v23;
  *(inited + 152) = 697;
  v25 = v67;
  *(inited + 216) = v20;
  *(inited + 224) = v21;
  *(inited + 192) = v25;
  v26 = v22;
  v27 = v25;
  v28 = static os_log_type_t.error.getter();
  v29 = v56;
  sub_100005404(v56, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v30, "There is already an open transaction on the database", 52, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = 0;
  v32 = __VaListBuilder.va_list()();
  StaticString.description.getter("begin()", 7, 2);
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/SQL.swift", 75, 2);
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter("There is already an open transaction on the database", 52, 2);
  v35 = String._bridgeToObjectiveC()();

  [v58 handleFailureInFunction:v33 file:v34 lineNumber:697 isFatal:0 format:v35 args:v32];

  v4 = v63;
  v2 = v60;
  v13 = v61;
  v3 = v59;
LABEL_5:
  v67 = 0;
  v68 = 0xE000000000000000;

  _StringGuts.grow(_:)(20);

  v67 = 0x204E49474542;
  v68 = 0xE600000000000000;
  v36 = 0x54414944454D4D49;
  if (*(v3 + 24) != 1)
  {
    v36 = 0x564953554C435845;
  }

  if (*(v3 + 24))
  {
    v37 = v36;
  }

  else
  {
    v37 = 0x4445525245464544;
  }

  if (*(v3 + 24))
  {
    v38 = 0xE900000000000045;
  }

  else
  {
    v38 = 0xE800000000000000;
  }

  v39 = v38;
  String.append(_:)(*&v37);

  v40._countAndFlagsBits = 0x4341534E41525420;
  v40._object = 0xEC0000004E4F4954;
  String.append(_:)(v40);
  v41 = v67;
  v42 = v68;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v43 = sub_10001CC04(v9, v41, v42);

  if (!v2)
  {
    v45 = *(*(v43 + 16) + 32);
    *v8 = v45;
    v65(v8, v64, v4);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v13(v8, v4);
    if (v45)
    {
      v47 = *(v43 + 16);

      v48 = sub_10001CEC4(v47, v43);

      if (v48 == 101)
      {
        *(v9 + 24) = 1;
        v49 = *(*(v43 + 16) + 32);
        *v8 = v49;
        v65(v8, v64, v4);
        v50 = v49;
        v48 = _dispatchPreconditionTest(_:)();
        v13(v8, v4);
        if (v48)
        {
LABEL_19:
          swift_beginAccess();
          v54 = *(v43 + 24);
          if (v54)
          {
            sqlite3_finalize(v54);
            *(v43 + 24) = 0;
          }
        }

        __break(1u);
      }

      sub_10089C7D0();
      swift_allocError();
      *v51 = v48;
      *(v51 + 8) = 0xD00000000000001DLL;
      *(v51 + 16) = 0x8000000101572980;
      swift_willThrow();
      v52 = *(*(v43 + 16) + 32);
      *v8 = v52;
      v65(v8, v64, v4);
      v53 = v52;
      LOBYTE(v52) = _dispatchPreconditionTest(_:)();
      v13(v8, v4);
      if (v52)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100030FAC()
{
  v1 = v0;
  v135 = type metadata accessor for UUID();
  v125 = *(v135 - 8);
  __chkstk_darwin(v135);
  v3 = v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v134);
  v133 = v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v132 = v123 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v131 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v130 = v123 - v10;
  __chkstk_darwin(v11);
  v129 = v123 - v12;
  __chkstk_darwin(v13);
  v128 = v123 - v14;
  __chkstk_darwin(v15);
  v127 = v123 - v16;
  v17 = type metadata accessor for Date();
  v126 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v24 = v25;
  inited = enum case for DispatchPredicate.onQueue(_:);
  v27 = *(v21 + 104);
  v142 = v21 + 104;
  v138 = v27;
  (v27)(v24, enum case for DispatchPredicate.onQueue(_:), v20, v22);
  v28 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v30 = *(v21 + 8);
  v29 = v21 + 8;
  v141 = v20;
  v139 = v30;
  v30(v24, v20);
  if ((v25 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v143 = inited;
  v137 = v3;
  v136 = v29;
  v145 = 0;
  v146 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v31._countAndFlagsBits = 0x205443454C4553;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x736472616F62;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34 = v1;
  v35._object = 0x8000000101585360;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x204D4F524620;
  v36._object = 0xE600000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x736472616F62;
  v37._object = 0xE600000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x20455245485720;
  v38._object = 0xE700000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x6E6F7473626D6F74;
  v39._object = 0xEE00657461645F65;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD000000000000011;
  v40._object = 0x80000001015A3B00;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x6E6F7473626D6F74;
  v41._object = 0xEA00000000006465;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x444E412031203D20;
  v42._object = 0xE900000000000020;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x6E6F7473626D6F74;
  v43._object = 0xEE00657461645F65;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x3F203D3C20;
  v44._object = 0xE500000000000000;
  String.append(_:)(v44);
  v45 = v145;
  v46 = v146;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v48 = v140;
  v49 = sub_10001CC04(v47, v45, v46);
  inited = &type metadata for String;
  if (v48)
  {
    goto LABEL_30;
  }

  v50 = v49;
  v140 = 0;

  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v52 = v51;
  (*(v126 + 8))(v19, v17);
  v123[1] = v34;
  v53 = *(v34 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardTTL);
  v54 = *(*(v50 + 16) + 32);
  *v24 = v54;
  v55 = v143;
  v56 = v141;
  inited = v138;
  v138(v24, v143, v141);
  v57 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v58 = v139;
  v139(v24, v56);
  if ((v54 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  swift_beginAccess();
  sqlite3_bind_double(*(v50 + 24), 1, v52 - v53);
  v144 = _swiftEmptySetSingleton;
  v59 = *(*(v50 + 16) + 32);
  *v24 = v59;
  (inited)(v24, v55, v56);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  v58(v24, v56);
  if ((v59 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v61 = *(*(v50 + 16) + 32);
  *v24 = v61;

  (inited)(v24, v55, v56);
  v62 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  v58(v24, v56);
  if ((v61 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v63 = inited;
  v125 += 4;
  v124 = xmmword_10146C6B0;
  while (1)
  {
    v68 = sqlite3_step(*(v50 + 24));
    if (v68 != 100)
    {
      break;
    }

    v69 = *(*(v50 + 16) + 32);
    *v24 = v69;
    inited = v63;
    v70 = v143;
    (inited)(v24, v143, v56);

    v71 = v69;
    LOBYTE(v69) = _dispatchPreconditionTest(_:)();
    v58(v24, v56);
    if ((v69 & 1) == 0)
    {
      goto LABEL_37;
    }

    v72 = *(*(v50 + 16) + 32);
    *v24 = v72;
    v73 = v70;
    v63 = inited;
    (inited)(v24, v73, v56);
    v74 = v72;
    LOBYTE(v72) = _dispatchPreconditionTest(_:)();
    inited = v24;
    v58(v24, v56);
    if ((v72 & 1) == 0)
    {
      goto LABEL_38;
    }

    if (sqlite3_column_type(*(v50 + 24), 0) == 5 || (v75 = sqlite3_column_blob(*(v50 + 24), 0), v76 = v137, !v75))
    {
      v56 = v141;
    }

    else
    {
      v77 = v75;
      v78 = sqlite3_column_bytes(*(v50 + 24), 0);
      v79 = sub_100024DD4(v77, v78);
      v81 = v80;
      sub_100024E98(v79, v80);
      v82 = v140;
      sub_100024EEC(v76, v79, v81);
      if (!v82)
      {
        v85 = v83;
        v86 = v84;
        v140 = 0;
        sub_10002640C(v79, v81);
        v87 = v133;
        (*v125)(v133, v76, v135);
        v88 = (v87 + *(v134 + 20));
        *v88 = v85;
        v88[1] = v86;
        v89 = v132;
        sub_100025668(v87, v132, type metadata accessor for CRLBoardIdentifierStorage);
        v90 = v89;
        v91 = v129;
        sub_100025668(v90, v129, type metadata accessor for CRLBoardIdentifierStorage);
        v92 = v91;
        v93 = v128;
        sub_100025668(v92, v128, type metadata accessor for CRLBoardIdentifier);
        v94 = v93;
        v95 = v127;
        sub_100025668(v94, v127, type metadata accessor for CRLBoardIdentifier);
        v96 = v81;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v126 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = v124;
        v97 = v95;
        v98 = UUID.description.getter();
        v100 = v99;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v98;
        *(inited + 40) = v100;
        v101 = static os_log_type_t.default.getter();
        sub_100005404(v126, &_mh_execute_header, v101, "Setting hideFromRecentlyDeleted to true after TTL expiration. Board ID:%{public}@)", 82, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        v102 = v131;
        sub_10000C83C(v97, v131, type metadata accessor for CRLBoardIdentifier);
        v103 = v130;
        sub_100031F10(v130, v102);

        sub_10002640C(v79, v96);
        sub_100026028(v103, type metadata accessor for CRLBoardIdentifier);
        sub_100026028(v97, type metadata accessor for CRLBoardIdentifier);
        v58 = v139;
        v63 = v138;
        v56 = v141;
        goto LABEL_11;
      }

      sub_10002640C(v79, v81);
      sub_10002640C(v79, v81);
      v140 = 0;
      v58 = v139;
      v63 = v138;
      v56 = v141;
    }

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v64 = static OS_os_log.boardStore;
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v64, &_mh_execute_header, v65, "Failure reading board identifier data.", 38, 2, _swiftEmptyArrayStorage);

LABEL_11:
    v66 = *(*(v50 + 16) + 32);
    *v24 = v66;
    v63(v24, v143, v56);
    v67 = v66;
    LOBYTE(v66) = _dispatchPreconditionTest(_:)();
    v58(v24, v56);
    if ((v66 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (v68 && v68 != 101)
  {
    v105 = 0;
    v104 = v68;
  }

  else
  {
    v104 = 0;
    v105 = 1;
  }

  v106 = v143;
  v107 = v140;
  sub_100032648(0, v144);
  if (v107)
  {

    sub_10001E364(v104, 0, v105);
    v108 = *(*(v50 + 16) + 32);
    *v24 = v108;
    v109 = v141;
    v138(v24, v106, v141);
    v110 = v108;
    LOBYTE(v108) = _dispatchPreconditionTest(_:)();
    v139(v24, v109);
    if (v108)
    {
      v111 = *(v50 + 24);
      inited = &type metadata for String;
      if (v111)
      {
        sqlite3_finalize(v111);
        *(v50 + 24) = 0;
      }

LABEL_30:

      if (qword_1019F2258 == -1)
      {
LABEL_31:
        v112 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v113 = swift_initStackObject();
        *(v113 + 16) = xmmword_10146C6B0;
        swift_getErrorValue();
        v114 = Error.localizedDescription.getter();
        v116 = v115;
        *(v113 + 56) = inited;
        *(v113 + 64) = sub_1000053B0();
        *(v113 + 32) = v114;
        *(v113 + 40) = v116;
        v117 = static os_log_type_t.error.getter();
        sub_100005404(v112, &_mh_execute_header, v117, "Failed to hide TTL'd boards from recently deleted, with error %@", 64, 2, v113);
        swift_setDeallocating();
        sub_100005070((v113 + 32));
        return swift_willThrow();
      }

LABEL_40:
      swift_once();
      goto LABEL_31;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  sub_10001E364(v104, 0, v105);
  v119 = *(*(v50 + 16) + 32);
  *v24 = v119;
  v120 = v141;
  v138(v24, v106, v141);
  v121 = v119;
  LOBYTE(v119) = _dispatchPreconditionTest(_:)();
  v139(v24, v120);
  if ((v119 & 1) == 0)
  {
    goto LABEL_44;
  }

  v122 = *(v50 + 24);
  if (v122)
  {
    sqlite3_finalize(v122);
    *(v50 + 24) = 0;
  }
}

uint64_t sub_100031F10(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v27 = &v27 - v9;
  v28 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v30 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v31 = a2;
  v11 = (a2 + *(v30 + 20));
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_12:
    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v31;
    v25 = v27;
    sub_10000C83C(v31, v27, type metadata accessor for CRLBoardIdentifier);
    v32 = *v22;
    sub_100032260(v25, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v32;
    sub_100025668(v24, v29, type metadata accessor for CRLBoardIdentifier);
    return 1;
  }

  v17 = ~v15;
  v18 = *(v5 + 72);
  while (1)
  {
    sub_10000C83C(*(v10 + 48) + v18 * v16, v7, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_100026028(v7, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_4;
    }

    v19 = &v7[*(v30 + 20)];
    if (*v19 == v12 && *(v19 + 1) == v13)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100026028(v7, type metadata accessor for CRLBoardIdentifier);
    if (v21)
    {
      goto LABEL_14;
    }

LABEL_4:
    v16 = (v16 + 1) & v17;
    if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_100026028(v7, type metadata accessor for CRLBoardIdentifier);
LABEL_14:
  sub_100026028(v31, type metadata accessor for CRLBoardIdentifier);
  sub_10000C83C(*(v10 + 48) + v18 * v16, v29, type metadata accessor for CRLBoardIdentifier);
  return 0;
}

uint64_t sub_100032260(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v32 = v8;
  v33 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v31 = v9;
      sub_100E77F98(v12 + 1, type metadata accessor for CRLBoardIdentifier, &unk_1019F3350, &qword_1014C5DC0, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      if (v13 > v12)
      {
        sub_100E84138();
        goto LABEL_19;
      }

      v31 = v9;
      sub_100E88694(v12 + 1);
    }

    v14 = *v3;
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v34 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v15 = (a1 + *(v34 + 20));
    v16 = *v15;
    v17 = v15[1];
    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v14 + 32);
    a2 = v18 & ~v19;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v21 = *(v8 + 72);
      do
      {
        sub_10000C83C(*(v14 + 48) + v21 * a2, v11, type metadata accessor for CRLBoardIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v22 = &v11[*(v34 + 20)];
          if (*v22 == v16 && *(v22 + 1) == v17)
          {
            goto LABEL_22;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
          if (v24)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
        }

        a2 = (a2 + 1) & v20;
      }

      while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v25 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v25 + 48) + *(v32 + 72) * a2, type metadata accessor for CRLBoardIdentifier);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_22:
    sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
LABEL_23:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_1000325B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100032648(int a1, uint64_t a2)
{
  v4 = v3;
  LODWORD(v182) = a1;
  v172 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v170 = *(v8 - 8);
  __chkstk_darwin(v8);
  v169 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for String.Encoding();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v181 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v190 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v180 = &v163 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (&v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = v2;
  v20 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v19 = v20;
  v21 = *(v16 + 104);
  v184 = enum case for DispatchPredicate.onQueue(_:);
  v186 = v16 + 104;
  v185 = v21;
  v21(v19, v17);
  v22 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v23 = *(v16 + 8);
  v188 = v19;
  v189 = v16 + 8;
  v187 = v23;
  result = (v23)(v19, v15);
  if ((v20 & 1) == 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
    goto LABEL_4;
  }

  v168 = v8;
  v179 = v15;
  v8 = *(a2 + 16);
  if (!v8)
  {
    return result;
  }

  v166 = v6;
  v183 = a2;
  v25 = sub_100033DB0(a2, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v177 = v3;
  *&aBlock = v25;
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v4 = BidirectionalCollection<>.joined(separator:)();
  v15 = v26;

  if (qword_1019F2258 != -1)
  {
    goto LABEL_86;
  }

LABEL_4:
  v27 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v15;

  v29 = static os_log_type_t.default.getter();
  sub_100005404(v27, &_mh_execute_header, v29, "Hiding boards from recently deleted: %{public}@", 47, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v165 = v4;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  if (v182)
  {
    _StringGuts.grow(_:)(52);
    v30._countAndFlagsBits = 0x20455441445055;
    v30._object = 0xE700000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0x736472616F62;
    v31._object = 0xE600000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0x2054455320;
    v32._object = 0xE500000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD00000000000001ALL;
    v33._object = 0x80000001015A37F0;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0x202C31203D20;
    v34._object = 0xE600000000000000;
    String.append(_:)(v34);
    v35._object = 0x80000001015A33D0;
    v35._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v35);
    v36._countAndFlagsBits = 2112800;
    v36._object = 0xE300000000000000;
    String.append(_:)(v36);
    v37._object = 0x80000001015A33D0;
    v37._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 0x454857203F202620;
    v38._object = 0xEC00000028204552;
    String.append(_:)(v38);
    v39._object = 0x8000000101585360;
    v39._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x28204E4920;
    v40._object = 0xE500000000000000;
    String.append(_:)(v40);
    v205 = sub_1000341B8(0x3F, 0xE100000000000000, v8);
    v41 = BidirectionalCollection<>.joined(separator:)();
    v43 = v42;

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 10537;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    v47 = *(&aBlock + 1);
    v46 = aBlock;
    v48 = -17;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v49._countAndFlagsBits = 0x20455441445055;
    v49._object = 0xE700000000000000;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 0x736472616F62;
    v50._object = 0xE600000000000000;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 0x2054455320;
    v51._object = 0xE500000000000000;
    String.append(_:)(v51);
    v52._countAndFlagsBits = 0xD00000000000001ALL;
    v52._object = 0x80000001015A37F0;
    String.append(_:)(v52);
    v53._countAndFlagsBits = 0x202C31203D20;
    v53._object = 0xE600000000000000;
    String.append(_:)(v53);
    v54._object = 0x80000001015A33D0;
    v54._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v54);
    v55._countAndFlagsBits = 2112800;
    v55._object = 0xE300000000000000;
    String.append(_:)(v55);
    v56._object = 0x80000001015A33D0;
    v56._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v56);
    v57._countAndFlagsBits = 0x454857203F207C20;
    v57._object = 0xEC00000028204552;
    String.append(_:)(v57);
    v58._object = 0x8000000101585360;
    v58._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v58);
    v59._countAndFlagsBits = 0x28204E4920;
    v59._object = 0xE500000000000000;
    String.append(_:)(v59);
    v205 = sub_1000341B8(0x3F, 0xE100000000000000, v8);
    v60 = BidirectionalCollection<>.joined(separator:)();
    v62 = v61;

    v63._countAndFlagsBits = v60;
    v63._object = v62;
    String.append(_:)(v63);

    v64._countAndFlagsBits = 10537;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v47 = *(&aBlock + 1);
    v46 = aBlock;
    v48 = 16;
  }

  v65 = v177;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v67 = sub_10001CC04(v66, v46, v47);
  v68 = v179;
  v4 = v183;
  if (v65)
  {
  }

  else
  {
    v69 = v67;
    v163 = v15;
    v164 = 0;

    sub_100034254(v48, 1);
    v8 = v4 + 56;
    v70 = 1 << *(v4 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v15 = v71 & *(v4 + 56);

    swift_beginAccess();
    v72 = 0;
    v73 = (v70 + 63) >> 6;
    v167 = (v174 + 8);
    v74 = 2;
    v75 = v69;
    v177 = v69;
    v174 = v73;
    v173 = v4 + 56;
LABEL_16:
    if (v15)
    {
      v182 = v74;
      goto LABEL_22;
    }

    while (1)
    {
      v79 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        __break(1u);
        goto LABEL_84;
      }

      if (v79 >= v73)
      {
        break;
      }

      v15 = *(v8 + 8 * v79);
      ++v72;
      if (v15)
      {
        v182 = v74;
        v72 = v79;
LABEL_22:
        v80 = v180;
        sub_10000C83C(*(v4 + 48) + *(v181 + 72) * (__clz(__rbit64(v15)) | (v72 << 6)), v180, type metadata accessor for CRLBoardIdentifier);
        sub_100025668(v80, v190, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for CRLBoardIdentifierStorage(0);
        v191 = UUID.uuid.getter();
        v192 = v81;
        v193 = v82;
        v194 = v83;
        v195 = v84;
        v196 = v85;
        v197 = v86;
        v198 = v87;
        v199 = v88;
        UUID.uuid.getter();
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v4 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
        v89 = 0x1000000000;
        *&aBlock = 0x1000000000;
        *(&aBlock + 1) = v4;
        if (String.count.getter() >= 1)
        {
          v90 = v175;
          static String.Encoding.utf8.getter();
          v91 = String.data(using:allowLossyConversion:)();
          v93 = v92;
          (*v167)(v90, v176);
          if (v93 >> 60 != 15)
          {
            Data.append(_:)();
            sub_100025870(v91, v93);
            v4 = *(&aBlock + 1);
            v89 = aBlock;
            goto LABEL_25;
          }

          sub_10084DC7C();
          swift_allocError();
          *v156 = 2;
          swift_willThrow();

          sub_10002640C(aBlock, *(&aBlock + 1));
          sub_100026028(v190, type metadata accessor for CRLBoardIdentifier);
          v157 = v68;
          v158 = v177;
          v159 = *(*(v177 + 16) + 32);
          v160 = v188;
          *v188 = v159;
          v185(v160, v184, v157);
          v161 = v159;
          LOBYTE(v159) = _dispatchPreconditionTest(_:)();
          v187(v160, v157);
          if (v159)
          {
            swift_beginAccess();
            v162 = *(v158 + 24);
            if (v162)
            {
              sqlite3_finalize(v162);
              *(v158 + 24) = 0;
            }
          }

LABEL_102:
          __break(1u);
        }

LABEL_25:
        v75 = v177;
        v94 = *(*(v177 + 16) + 32);
        v95 = v188;
        *v188 = v94;
        v185(v95, v184, v68);
        v96 = v94;
        LOBYTE(v94) = _dispatchPreconditionTest(_:)();
        v187(v95, v68);
        if ((v94 & 1) == 0)
        {
          goto LABEL_85;
        }

        v97 = v4 >> 62;
        if ((v4 >> 62) <= 1)
        {
          v98 = v182;
          if (!v97)
          {
            *&aBlock = v89;
            WORD4(aBlock) = v4;
            BYTE10(aBlock) = BYTE2(v4);
            BYTE11(aBlock) = BYTE3(v4);
            BYTE12(aBlock) = BYTE4(v4);
            BYTE13(aBlock) = BYTE5(v4);
            if (!(v182 >> 31))
            {
              v99 = *(v75 + 24);
              v8 = v173;
              if (qword_1019F17C8 != -1)
              {
                v123 = v182;
                v124 = *(v75 + 24);
                swift_once();
                v99 = v124;
                v98 = v123;
              }

              v78 = BYTE6(v4);
              v76 = qword_101AD69D0;
              v77 = v98;
              goto LABEL_14;
            }

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
            goto LABEL_95;
          }

          if (v89 >> 32 < v89)
          {
            __break(1u);
            goto LABEL_88;
          }

          v112 = v182;
          v113 = __DataStorage._bytes.getter();
          if (v113)
          {
            v114 = __DataStorage._offset.getter();
            if (!__OFSUB__(v89, v114))
            {
              v113 += v89 - v114;
              goto LABEL_53;
            }

LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

LABEL_53:
          v115 = v179;
          v116 = __DataStorage._length.getter();
          if (v112 >> 31)
          {
            goto LABEL_91;
          }

          if (v116 >= (v89 >> 32) - v89)
          {
            v117 = (v89 >> 32) - v89;
          }

          else
          {
            v117 = v116;
          }

          if (v113)
          {
            v118 = v117;
          }

          else
          {
            v118 = 0;
          }

          if (v118 < 0xFFFFFFFF80000000)
          {
            goto LABEL_93;
          }

          v75 = v177;
          if (v118 <= 0x7FFFFFFF)
          {
            v119 = *(v177 + 24);
            if (qword_1019F17C8 != -1)
            {
              v126 = *(v177 + 24);
              swift_once();
              v119 = v126;
              v75 = v177;
            }

            v120 = v113;
            v98 = v112;
            sqlite3_bind_blob(v119, v112, v120, v118, qword_101AD69D0);
            sub_10002640C(v89, v4);
            v68 = v115;
            goto LABEL_65;
          }

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v97 == 2)
        {
          v100 = v68;
          v102 = *(v89 + 16);
          v101 = *(v89 + 24);
          v103 = __DataStorage._bytes.getter();
          if (v103)
          {
            v104 = __DataStorage._offset.getter();
            if (__OFSUB__(v102, v104))
            {
              goto LABEL_98;
            }

            v103 += v102 - v104;
          }

          v105 = __OFSUB__(v101, v102);
          v106 = v101 - v102;
          if (v105)
          {
            goto LABEL_90;
          }

          v107 = __DataStorage._length.getter();
          if (v182 >> 31)
          {
            goto LABEL_92;
          }

          if (v107 >= v106)
          {
            v108 = v106;
          }

          else
          {
            v108 = v107;
          }

          if (v103)
          {
            v109 = v108;
          }

          else
          {
            v109 = 0;
          }

          if (v109 < 0xFFFFFFFF80000000)
          {
            goto LABEL_94;
          }

          v75 = v177;
          if (v109 > 0x7FFFFFFF)
          {
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          v68 = v100;
          v110 = *(v177 + 24);
          if (qword_1019F17C8 != -1)
          {
            v125 = *(v177 + 24);
            swift_once();
            v110 = v125;
            v75 = v177;
          }

          v111 = v103;
          v98 = v182;
          sqlite3_bind_blob(v110, v182, v111, v109, qword_101AD69D0);
          sub_10002640C(v89, v4);
LABEL_65:
          v8 = v173;
        }

        else
        {
          *(&aBlock + 6) = 0;
          *&aBlock = 0;
          v98 = v182;
          if (v182 >> 31)
          {
            goto LABEL_89;
          }

          v99 = *(v75 + 24);
          v8 = v173;
          if (qword_1019F17C8 != -1)
          {
            v121 = v182;
            v122 = *(v75 + 24);
            swift_once();
            v99 = v122;
            v98 = v121;
          }

          v76 = qword_101AD69D0;
          v77 = v98;
          v78 = 0;
LABEL_14:
          sqlite3_bind_blob(v99, v77, &aBlock, v78, v76);
          sub_10002640C(v89, v4);
        }

        v15 &= v15 - 1;
        sub_100026028(v190, type metadata accessor for CRLBoardIdentifier);
        v74 = v98 + 1;
        v4 = v183;
        v73 = v174;
        goto LABEL_16;
      }
    }

    v127 = *(*(v75 + 16) + 32);
    v128 = v188;
    *v188 = v127;
    v185(v128, v184, v68);
    v129 = v127;
    LOBYTE(v127) = _dispatchPreconditionTest(_:)();
    v130 = v68;
    v187(v128, v68);
    if ((v127 & 1) == 0)
    {
      goto LABEL_97;
    }

    v131 = *(v75 + 16);

    v132 = v131;
    v133 = v164;
    v134 = sub_10001CEC4(v132, v75);

    v135 = v178;
    v136 = v163;
    if (v134 == 101)
    {
      v164 = v133;

      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v137 = static OS_dispatch_queue.main.getter();
      v138 = swift_allocObject();
      *(v138 + 16) = _swiftEmptySetSingleton;
      *(v138 + 24) = v4;
      *(v138 + 32) = _swiftEmptySetSingleton;
      *(v138 + 40) = 0;
      *(v138 + 48) = v135;
      v203 = sub_1000260F4;
      v204 = v138;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = *"";
      v201 = sub_100007638;
      v202 = &unk_1018A5460;
      v139 = _Block_copy(&aBlock);

      v140 = v135;

      v141 = v169;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
      v142 = v171;
      v143 = v172;
      v144 = v177;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v139);

      (*(v166 + 8))(v142, v143);
      (*(v170 + 8))(v141, v168);
      v145 = *(*(v144 + 16) + 32);
      v146 = v188;
      *v188 = v145;
      v185(v146, v184, v130);
      v147 = v145;
      LOBYTE(v145) = _dispatchPreconditionTest(_:)();
      v187(v146, v130);
      if ((v145 & 1) == 0)
      {
        goto LABEL_100;
      }

      swift_beginAccess();
      v148 = *(v144 + 24);
      if (v148)
      {
        sqlite3_finalize(v148);
        *(v144 + 24) = 0;
      }
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      *&aBlock = 0xD00000000000002DLL;
      *(&aBlock + 1) = 0x80000001015A5430;
      v149._countAndFlagsBits = v165;
      v149._object = v136;
      String.append(_:)(v149);

      v150 = aBlock;
      sub_10089C7D0();
      swift_allocError();
      *v151 = v134;
      *(v151 + 8) = v150;
      swift_willThrow();
      v152 = *(*(v75 + 16) + 32);
      v153 = v188;
      *v188 = v152;
      v185(v153, v184, v130);
      v154 = v152;
      LOBYTE(v152) = _dispatchPreconditionTest(_:)();
      v187(v153, v130);
      if ((v152 & 1) == 0)
      {
        goto LABEL_101;
      }

      swift_beginAccess();
      v155 = *(v75 + 24);
      if (v155)
      {
        sqlite3_finalize(v155);
        *(v75 + 24) = 0;
      }
    }
  }
}