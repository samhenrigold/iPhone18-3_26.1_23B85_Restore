void sub_10057F8D4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v5 + 8))(v9, v4);
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 accountStore];

  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 accountWithIdentifier:v16];

  if (!v17)
  {
    v50 = [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
    swift_willThrow();

    v51 = _convertErrorToNSError(_:)();
    v52 = [v51 domain];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v56;
    if (v53 == v57 && v55 == v56)
    {
      v55, v56, v57, v58, v59, v60, v61, v62;
      v63, v64, v65, v66, v67, v68, v69, v70;
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v55, v73, v74, v75, v76, v77, v78, v79;
      v63, v80, v81, v82, v83, v84, v85, v86;
      if ((v72 & 1) == 0)
      {
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v131 = type metadata accessor for Logger();
        sub_100006654(v131, qword_10094C8A8);

        v132 = v50;
        v89 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();

        v13, v134, v135, v136, v137, v138, v139, v140;
        if (os_log_type_enabled(v89, v133))
        {
          v141 = swift_slowAlloc();
          v163[0] = swift_slowAlloc();
          *v141 = 136446466;
          v142 = sub_10000668C(v11, v13, v163);
          v13, v143, v144, v145, v146, v147, v148, v149;
          *(v141 + 4) = v142;
          *(v141 + 12) = 2082;
          v162[1] = v132;
          v150 = v132;
          sub_1000F5104(&unk_1009399E0, &qword_100795D00);
          v151 = String.init<A>(describing:)();
          v153 = v152;
          v154 = sub_10000668C(v151, v152, v163);
          v153, v155, v156, v157, v158, v159, v160, v161;
          *(v141 + 14) = v154;
          _os_log_impl(&_mh_execute_header, v89, v133, "xpcPerformer.isManagedAccount: Error when looking up the ACAccount {acAccountID: %{public}s, error: %{public}s}", v141, 0x16u);
          swift_arrayDestroy();
          goto LABEL_20;
        }

LABEL_21:
        v13, v98, v99, v100, v101, v102, v103, v104;
        goto LABEL_22;
      }
    }

    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100006654(v87, qword_10094C8A8);

    v88 = v51;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    v13, v91, v92, v93, v94, v95, v96, v97;
    if (os_log_type_enabled(v89, v90))
    {
      v105 = swift_slowAlloc();
      v162[0] = swift_slowAlloc();
      v163[0] = v162[0];
      *v105 = 136446466;
      v106 = sub_10000668C(v11, v13, v163);
      v13, v107, v108, v109, v110, v111, v112, v113;
      *(v105 + 4) = v106;
      *(v105 + 12) = 2082;
      v114 = v88;
      v115 = [v114 description];
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v50;
      v118 = v51;
      v119 = a2;
      v121 = v120;

      v122 = sub_10000668C(v116, v121, v163);
      v123 = v121;
      a2 = v119;
      v51 = v118;
      v50 = v117;
      v123, v124, v125, v126, v127, v128, v129, v130;
      *(v105 + 14) = v122;
      _os_log_impl(&_mh_execute_header, v89, v90, "xpcPerformer.isManagedAccount: REMError when looking up the ACAccount {acAccountID: %{public}s, error: %{public}s}", v105, 0x16u);
      swift_arrayDestroy();
LABEL_20:

LABEL_22:

      v15 = v50;
      v71 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v71);

      v20 = v15;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v18 = [v17 MCIsManaged];
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10094C8A8);

  v20 = v17;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v13, v23, v24, v25, v26, v27, v28, v29;
  if (os_log_type_enabled(v21, v22))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v162[0] = a2;
    v40 = v39;
    v163[0] = v39;
    *v37 = 136446722;
    v41 = sub_10000668C(v11, v13, v163);
    v13, v42, v43, v44, v45, v46, v47, v48;
    *(v37 + 4) = v41;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v18;
    *(v37 + 18) = 2114;
    v49 = [v20 displayAccount];
    *(v37 + 20) = v49;
    *v38 = v49;
    _os_log_impl(&_mh_execute_header, v21, v22, "xpcPerformer.isManagedAccount: ACAccount.rem_isManagedAppleID result {acAccountID: %{public}s, isManaged: %{BOOL}d, displayAccount: %{public}@}", v37, 0x1Cu);
    sub_1000050A4(v38, &unk_100938E70, &unk_100797230);

    sub_10000607C(v40);
    a2 = v162[0];
  }

  else
  {
    v13, v30, v31, v32, v33, v34, v35, v36;
  }

  v71 = [objc_allocWithZone(NSNumber) initWithBool:v18];
  (*(a2 + 16))(a2, v71, 0);
LABEL_23:
}

uint64_t sub_100580078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v8[0] = v4;
  *(v8 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v6[2] = a1;
  sub_100014A64(&v7, sub_1005805A0, v6);
  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_100580290(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v12 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v13[0] = v9;
  *(v13 + 14) = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v11[2] = a2;
  v11[3] = sub_10003FE58;
  v11[4] = v8;
  v11[5] = a1;
  _Block_copy(a4);
  sub_100014A64(&v12, sub_1005804E4, v11);
}

unint64_t sub_100580504()
{
  result = qword_10094C978;
  if (!qword_10094C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C978);
  }

  return result;
}

uint64_t sub_100580558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005806B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000FCBFC;

  return sub_10057155C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100580778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000FDA74;

  return sub_100571370(v2, v3, v4);
}

uint64_t sub_10058083C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000FDA74;

  return sub_100577284(v2, v3, v4);
}

uint64_t sub_1005808FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000FDA74;

  return sub_10057736C(a1, v4, v5, v6);
}

uint64_t sub_1005809C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FDA74;

  return sub_10019A470(a1, v4);
}

uint64_t sub_100580A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000FDA74;

  return sub_100570D34(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100580BD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_10056F9AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100580CC8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FDA74;

  return sub_10056D530(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100580DD4(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1000FDA74;

  return sub_10056E488(a1, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t sub_100580ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FDA74;

  return sub_10056D394(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100581084(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 72, 7);
}

uint64_t sub_1005811E4(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100581378()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000FDA74;

  return sub_100568398(v2, v3);
}

uint64_t sub_100581424()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1005814C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100566D3C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_1005815C8(void *a1)
{
  v3 = a1;
  if (!a1)
  {
    v3 = sub_1005816D0();
    if (!v3)
    {
      LOBYTE(v7) = 0;
      return v7 & 1;
    }
  }

  v4 = a1;
  v5 = [v1 assignmentContext];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 currentAssignment];

  if (v7)
  {
    v8 = [v7 assigneeID];

    if (v8)
    {
      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v9 = [v3 objectID];
      LOBYTE(v7) = static NSObject.== infix(_:_:)();

      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v7) = 0;
  }

LABEL_8:

  return v7 & 1;
}

unint64_t sub_1005816D0()
{
  v1 = v0;
  v67 = type metadata accessor for UUID();
  v2 = *(v67 - 8);
  *&v4 = __chkstk_darwin(v67, v3).n128_u64[0];
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 list];
  v8 = [v7 shareeContext];

  if (v8)
  {
    v9 = [v8 sharees];

    sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = [v1 list];
    v12 = [v11 currentUserShareParticipantID];

    if (v12)
    {
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v20;

      if (v10 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v29 = 0;
        v63 = v10 & 0xFFFFFFFFFFFFFF8;
        v64 = v10 & 0xC000000000000001;
        v30 = (v2 + 1);
        while (1)
        {
          if (v64)
          {
            v31 = v10;
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v29 >= *(v63 + 16))
            {
              goto LABEL_16;
            }

            v31 = v10;
            v32 = *(v10 + 8 * v29 + 32);
          }

          v10 = v32;
          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          v34 = [(RDXPCStorePerformer *)v32 objectID];
          v35 = [v34 uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = UUID.uuidString.getter();
          v38 = v37;
          (*v30)(v6, v67);
          v70[0] = v36;
          v70[1] = v38;
          v68 = v65;
          v69 = v66;
          sub_10013BCF4();
          v2 = v70;
          v39 = StringProtocol.caseInsensitiveCompare<A>(_:)();
          v38, v40, v41, v42, v43, v44, v45, v46;
          if (!v39)
          {
            v66, v47, v48, v49, v50, v51, v52, v53;
            v31, v54, v55, v56, v57, v58, v59, v60;
            return v10;
          }

          ++v29;
          v10 = v31;
          if (v33 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
      v66, v21, v22, v23, v24, v25, v26, v27;
    }

    v10, v13, v14, v15, v16, v17, v18, v19;
  }

  return 0;
}

uint64_t sub_1005819E4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = *(v10 + 16);

    v13(sub_100582928, v12, ObjectType, v10);

    return sub_100581F04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100581B7C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CA18);
  v1 = sub_100006654(v0, qword_10094CA18);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100581C44(void *a1)
{
  v2 = REMStoreSyncReasonSignificantTimeChanged;
  v4[4] = sub_100581D08;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100042968;
  v4[3] = &unk_1008F7C20;
  v3 = _Block_copy(v4);
  [a1 triggerThrottledSyncWithReason:v2 discretionary:1 completion:v3];
  _Block_release(v3);
}

void sub_100581D08(uint64_t a1)
{
  if (qword_100936570 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094CA18);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136446210;
    swift_errorRetain();
    sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    v8 = sub_10000668C(v5, v6, &v17);
    v7, v9, v10, v11, v12, v13, v14, v15;
    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Polling sync did finish {error: %{public}s}", v3, 0xCu);
    sub_10000607C(v4);
  }

  else
  {
  }
}

uint64_t sub_100581EAC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100581F04();
  }

  return result;
}

uint64_t sub_100581F04()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v89 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v6);
  v8 = &v83[-v7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v87 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v14);
  v16 = &v83[-v15];
  __chkstk_darwin(v17, v18);
  v20 = &v83[-v19];
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v24 = __chkstk_darwin(v21, v23);
  v26 = &v83[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v1 + 16);
  *v26 = v27;
  (*(v22 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v21, v24);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v26, v21);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v26 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v30 = *(v26 + 1);
  v88 = ObjectType;
  v30(ObjectType, v26);
  v31 = v9;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1001AAD5C(v8);
    if (qword_100936570 == -1)
    {
LABEL_4:
      v32 = type metadata accessor for Logger();
      sub_100006654(v32, qword_10094CA18);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "nil lastSyncPoll. Polling", v35, 2u);
      }

      goto LABEL_7;
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v39 = v20;
  (*(v10 + 32))(v20, v8, v31);
  v40 = *(v1 + 80);
  v41 = swift_getObjectType();
  v42 = (*(v40 + 8))(v41, v40);
  Date.timeIntervalSinceNow.getter();
  if (v43 < -v42)
  {
    if (qword_100936570 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_10094CA18);
    (*(v10 + 16))(v16, v20, v31);
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v90 = v87;
      *v47 = 136446722;
      sub_100455E78();
      v85 = v45;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v46;
      v50 = v49;
      v51 = v16;
      v52 = *(v10 + 8);
      v86 = v10 + 8;
      v52(v51, v31);
      v53 = sub_10000668C(v48, v50, &v90);
      v50, v54, v55, v56, v57, v58, v59, v60;
      *(v47 + 4) = v53;
      *(v47 + 12) = 1040;
      *(v47 + 14) = 3;
      *(v47 + 18) = 2048;
      *(v47 + 20) = v42;
      v61 = v85;
      _os_log_impl(&_mh_execute_header, v85, v84, "lastSyncPoll > configurationInterval. Polling {lastSyncPoll: %{public}s, throttingInterval: %.*f}", v47, 0x1Cu);
      sub_10000607C(v87);

      v52(v39, v31);
      goto LABEL_8;
    }

    v9 = v31;
    v81 = *(v10 + 8);
    v81(v16, v9);
    v81(v20, v9);
LABEL_7:
    v31 = v9;
LABEL_8:
    v36 = v89;
    Date.init()();
    (*(v10 + 56))(v36, 0, 1, v31);
    v37 = (*(v26 + 2))(v36, v88, v26);
    return (*(v1 + 40))(v37);
  }

  if (qword_100936570 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100006654(v62, qword_10094CA18);
  v63 = v87;
  (*(v10 + 16))(v87, v39, v31);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v89 = v39;
    v67 = v66;
    v68 = swift_slowAlloc();
    v90 = v68;
    *v67 = 136446722;
    sub_100455E78();
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v72 = *(v10 + 8);
    v72(v63, v31);
    v73 = sub_10000668C(v69, v71, &v90);
    v71, v74, v75, v76, v77, v78, v79, v80;
    *(v67 + 4) = v73;
    *(v67 + 12) = 1040;
    *(v67 + 14) = 3;
    *(v67 + 18) = 2048;
    *(v67 + 20) = v42;
    _os_log_impl(&_mh_execute_header, v64, v65, "lastSyncPoll < throttingInterval. Not Polling {lastSyncPoll: %{public}s, throttingInterval: %.*f}", v67, 0x1Cu);
    sub_10000607C(v68);

    return v72(v89, v31);
  }

  else
  {

    v82 = *(v10 + 8);
    v82(v63, v31);
    return v82(v39, v31);
  }
}

uint64_t sub_100582700()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100582758@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 lastSyncPoll];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1005827FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v2 setLastSyncPoll:?];
}

uint64_t sub_100582930()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CAF0);
  v1 = sub_100006654(v0, qword_10094CAF0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005829F8(uint64_t *a3@<X8>)
{
  sub_100585144();
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_100582A2C(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CB28, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation, &protocol conformance descriptor for REMHashtagLabelDataView.AllHashtagLabelsInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_100582A84(id *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v65 = &v61 - v7;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v16 = &v61 - v15;
  v17 = *a1;
  v18 = [*a1 name];
  if (v18)
  {
    v62 = v18;
    v64 = v2;
    v19 = [v17 canonicalName];
    if (v19)
    {
      v20 = v19;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v61 = 0;
      v22 = 0;
    }

    v31 = [v17 firstOccurrenceCreationDate];
    if (v31)
    {
      v32 = v31;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = type metadata accessor for Date();
      (*(*(v33 - 8) + 56))(v16, 0, 1, v33);
    }

    else
    {
      v34 = type metadata accessor for Date();
      (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    }

    v35 = [v17 recencyDate];
    v63 = a2;
    if (v35)
    {
      v36 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = type metadata accessor for Date();
    v39 = *(v38 - 8);
    v40 = 1;
    (*(v39 + 56))(v11, v37, 1, v38);
    v41 = [v17 uuidForChangeTracking];
    v42 = v65;
    if (v41)
    {
      v43 = v41;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = 0;
    }

    v44 = type metadata accessor for UUID();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v42, v40, 1, v44);
    if (v22)
    {
      v61 = String._bridgeToObjectiveC()();
      v22, v46, v47, v48, v49, v50, v51, v52;
    }

    else
    {
      v61 = 0;
    }

    v53 = *(v39 + 48);
    if (v53(v16, 1, v38) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v39 + 8))(v16, v38);
    }

    if (v53(v11, 1, v38) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = Date._bridgeToObjectiveC()().super.isa;
      (*(v39 + 8))(v11, v38);
    }

    v56 = v65;
    if ((*(v45 + 48))(v65, 1, v44) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v45 + 8))(v56, v44);
    }

    v58 = objc_allocWithZone(type metadata accessor for REMHashtagLabelDetailed_Codable());
    v60 = v61;
    v59 = v62;
    v30 = [v58 initWithName:v62 canonicalName:v61 firstOccurrenceCreationDate:isa recencyDate:v55 uuidForChangeTracking:v57];

    a2 = v63;
  }

  else
  {
    if (qword_100936578 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094CAF0);
    v24 = v17;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [v24 objectID];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unexpected nil name REMCDHashtagLabel from AllHashtagLabelsInvocation {mid: %@}", v27, 0xCu);
      sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
    }

    v30 = 0;
  }

  *a2 = v30;
}

unint64_t sub_100583084@<X0>(unint64_t *a3@<X8>)
{
  result = sub_10058542C();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1005830B8(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CB50, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation, &protocol conformance descriptor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_100583110(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.include.getter();
  v12 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.exclude.getter();
  REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.operation.getter();
  v14 = sub_100584A24(v11, v12, v10, a1, v13);
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
    v11, v15, v16, v17, v18, v19, v20, v21;
    v12, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v29 = v14;
    (*(v7 + 8))(v10, v6);
    v11, v30, v31, v32, v33, v34, v35, v36;
    v12, v37, v38, v39, v40, v41, v42, v43;
    *a2 = v29;
  }
}

uint64_t sub_100583270(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CB78, &type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation, &protocol conformance descriptor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1005832C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 filterData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100583330(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = isa;
  [v2 setFilterData:?];
}

uint64_t sub_1005833A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000F5104(&qword_10094CC10, &qword_1007B22C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v13 - v10;
  sub_10000F61C(a1, a1[3]);
  sub_10003693C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_100036990(&qword_100938928, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v15 = a3;
    v14 = 1;
    type metadata accessor for REMFetchResultToken_Codable();
    sub_1000369FC(&qword_10094CC18, &type metadata accessor for REMFetchResultToken_Codable, &protocol conformance descriptor for REMFetchResultToken_Codable);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_1005835B0(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_100583684(uint64_t a1)
{
  v2 = sub_10003693C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005836C0(uint64_t a1)
{
  v2 = sub_10003693C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100583718(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = [objc_opt_self() daemonUserDefaults];
  sub_100035608(a1, v8, &off_1008F7C98, a2, a3, a4);
}

uint64_t sub_1005837AC(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CBA0, &type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation, &protocol conformance descriptor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100583804@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v14 - v6;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  static Locale.current.getter();
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_10013BCF4();
  v10 = StringProtocol.foldedStringForWriting(locale:)();
  v12 = v11;
  result = sub_1000050A4(v7, &unk_10093F420, &unk_100797AE0);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

id sub_10058392C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

void sub_10058395C(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v38 = REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters.hashtagLabelNamesToSearch.getter();
  sub_1000F5104(&unk_100945240, &qword_1007A0A70);
  sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70, &protocol conformance descriptor for Set<A>);
  v5 = Sequence.compactMapToSet<A>(_:)();
  v38, v6, v7, v8, v9, v10, v11, v12;
  v13 = sub_10042EC14(v5, 0, a1);
  v5, v14, v15, v16, v17, v18, v19, v20;
  if (!v2)
  {
    sub_1007094F0(v13);
    v22 = v21;
    v13, v23, v24, v25, v26, v27, v28, v29;
    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    type metadata accessor for REMObjectID_Codable();
    sub_10000CB48(&qword_10094CBE0, &qword_10093F598, &qword_1007A2640, &protocol conformance descriptor for [A]);
    sub_1000369FC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    v30 = Sequence.mapToSet<A>(_:)();
    v22, v31, v32, v33, v34, v35, v36, v37;
    *a2 = v30;
  }
}

uint64_t sub_100583B60(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CBC8, &type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation, &protocol conformance descriptor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_100583BB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    [v2 setHashtagLabelsInCustomSmartListFilterCache:0];
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(a1, a2);
    [v2 setHashtagLabelsInCustomSmartListFilterCache:isa];
  }
}

void *sub_100583C48(uint64_t a1, Swift::Int a2, __n128 a3)
{
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v6 = __CocoaSet.count.getter();
      a2 = sub_10037F9A0(v5, v6);
      goto LABEL_8;
    }

    type metadata accessor for REMObjectID_Codable();
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = static NSObject.== infix(_:_:)();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = _swiftEmptySetSingleton[2];
          if (_swiftEmptySetSingleton[3] <= v15)
          {
            sub_1003800CC(v15 + 1);
          }

          sub_100393C78();
        }

        else
        {
LABEL_13:
        }
      }

      while (__CocoaSet.Iterator.next()());
    }

    return _swiftEmptySetSingleton;
  }

  else
  {
    if (v4)
    {
LABEL_8:

      return sub_1004A49C0(a1, a2);
    }

    return sub_1001A20B0(a1, a2, a3);
  }
}

void sub_100583E6C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70, &protocol conformance descriptor for Set<A>);
    v4 = Sequence.compactMapToSet<A>(_:)();
    v5 = sub_10042E5A0(v4, 0, a2);
    v6 = v2;
    v4, v7, v8, v9, v10, v11, v12, v13;
    if (!v2)
    {
      sub_1000F5104(&qword_100943E88, &qword_1007A4618);
      v14 = static _DictionaryStorage.copy(original:)();
      v22 = 0;
      v23 = 1 << v5->clientIdentity[16];
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *&v5->storeProvider[2];
      v26 = (v23 + 63) >> 6;
      v45 = v14 + 64;
      v46 = v14;
      if (v25)
      {
        while (1)
        {
          v50 = v6;
          v27 = __clz(__rbit64(v25));
          v47 = (v25 - 1) & v25;
LABEL_14:
          v30 = v27 | (v22 << 6);
          v31 = (*&v5->clientIdentity[32] + 16 * v30);
          v49 = *v31;
          v48 = v31[1];
          v32 = *(*&v5->clientIdentity[40] + 8 * v30);

          sub_1000F5104(&qword_10094CBE8, &qword_1007B2250);
          type metadata accessor for REMObjectID_Codable();
          sub_10000CB48(&qword_10094CBF0, &qword_10094CBE8, &qword_1007B2250, &protocol conformance descriptor for Set<A>);
          sub_1000369FC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
          v33 = Sequence.mapToSet<A>(_:)();
          v6 = v50;
          v32, v34, v35, v36, v37, v38, v39, v40;
          *(v45 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          v41 = (v46[6] + 16 * v30);
          *v41 = v49;
          v41[1] = v48;
          *(v46[7] + 8 * v30) = v33;
          v42 = v46[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            break;
          }

          v46[2] = v44;
          v25 = v47;
          if (!v47)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v28 = v22;
        while (1)
        {
          v22 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v22 >= v26)
          {
            v5, v15, v16, v17, v18, v19, v20, v21;
            return;
          }

          v29 = *&v5->storeProvider[8 * v22 + 2];
          ++v28;
          if (v29)
          {
            v50 = v6;
            v27 = __clz(__rbit64(v29));
            v47 = (v29 - 1) & v29;
            goto LABEL_14;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    sub_10038E618(&_swiftEmptyArrayStorage);
  }
}

void sub_1005841B8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = *(*(a1 + 56) + 8 * v7);

LABEL_10:
    v13 = v6;
    if (!v8)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v6 = v13;
LABEL_15:
      v14 = *(*(a1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v8)))));
      if ((v12 & 0xC000000000000001) != 0)
      {

        v22 = __CocoaSet.count.getter();
        if ((v14 & 0xC000000000000001) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v22 = *(v12 + 16);

        if ((v14 & 0xC000000000000001) == 0)
        {
LABEL_19:
          v23 = *(v14 + 16);
          goto LABEL_20;
        }
      }

      v23 = __CocoaSet.count.getter();
LABEL_20:
      v8 &= v8 - 1;
      if (v22 < v23)
      {
        v12, v15, v16, v17, v18, v19, v20, v21;
        v12 = v14;
        goto LABEL_10;
      }

      v14, v15, v16, v17, v18, v19, v20, v21;
      v13 = v6;
      if (!v8)
      {
        while (1)
        {
LABEL_12:
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v6 >= v9)
          {
            break;
          }

          v8 = *(v2 + 8 * v6);
          ++v13;
          if (v8)
          {
            goto LABEL_15;
          }
        }

        v24 = 1 << *(a1 + 32);
        v25 = -1;
        if (v24 < 64)
        {
          v25 = ~(-1 << v24);
        }

        v26 = v25 & *(a1 + 64);
        v27 = (v24 + 63) >> 6;

        v28 = 0;
        if (v26)
        {
          goto LABEL_32;
        }

        while (1)
        {
          v29 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_38;
          }

          if (v29 >= v27)
          {
            break;
          }

          v26 = *(v2 + 8 * v29);
          ++v28;
          if (v26)
          {
            v28 = v29;
            do
            {
LABEL_32:
              v26 &= v26 - 1;

              sub_100355C44(v30);
            }

            while (v26);
            continue;
          }
        }

        return;
      }
    }
  }

  v10 = 0;
  v9 = (v3 + 63) >> 6;
  while (v9 - 1 != v5)
  {
    v6 = v5 + 1;
    v11 = *(a1 + 72 + 8 * v5);
    v10 -= 64;
    ++v5;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      v7 = __clz(__rbit64(v11)) - v10;
      goto LABEL_9;
    }
  }

  if (&_swiftEmptyArrayStorage >> 62)
  {
LABEL_39:
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_1003915C4(&_swiftEmptyArrayStorage);
    }
  }
}

void sub_100584498(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    do
    {
      if (v9 - 1 == v5)
      {
        if (&_swiftEmptyArrayStorage >> 62)
        {
          goto LABEL_39;
        }

        return;
      }

      v6 = v5 + 1;
      v11 = *(a1 + 72 + 8 * v5);
      v10 -= 64;
      ++v5;
    }

    while (!v11);
    v8 = (v11 - 1) & v11;
    v7 = __clz(__rbit64(v11)) - v10;
  }

  v12 = *(*(a1 + 56) + 8 * v7);

LABEL_10:
  v13 = v12 & 0xC000000000000001;
  v14 = v6;
  if (!v8)
  {
    goto LABEL_12;
  }

  do
  {
    v6 = v14;
LABEL_15:
    v15 = *(*(a1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v8)))));
    if ((v15 & 0xC000000000000001) != 0)
    {

      v23 = __CocoaSet.count.getter();
      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = *(v15 + 16);

      if (v13)
      {
LABEL_17:
        v24 = __CocoaSet.count.getter();
        goto LABEL_20;
      }
    }

    v24 = *(v12 + 16);
LABEL_20:
    v8 &= v8 - 1;
    if (v23 < v24)
    {
      v12, v16, v17, v18, v19, v20, v21, v22;
      v12 = v15;
      goto LABEL_10;
    }

    v15, v16, v17, v18, v19, v20, v21, v22;
    v14 = v6;
  }

  while (v8);
  while (1)
  {
LABEL_12:
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v6 >= v9)
    {
      break;
    }

    v8 = *(v2 + 8 * v6);
    ++v14;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  while (v27)
  {
    v30 = v29;
LABEL_32:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v30 << 6);
    v33 = *(*(a1 + 48) + 16 * v32 + 8);
    v34 = *(*(a1 + 56) + 8 * v32);

    v12 = sub_100583C48(v35, v12, v36);
    v34, v37, v38, v39, v40, v41, v42, v43;
    v33, v44, v45, v46, v47, v48, v49, v50;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      return;
    }

    v27 = *(v2 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_32;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  if (_CocoaArrayWrapper.endIndex.getter())
  {

    sub_1003915C4(&_swiftEmptyArrayStorage);
  }
}

void sub_10058478C(uint64_t a1)
{
  v2 = sub_10042E5A0(2, 2, a1);
  v3 = v1;
  if (!v1)
  {
    v4 = v2;
    sub_1000F5104(&qword_100943E88, &qword_1007A4618);
    v5 = static _DictionaryStorage.copy(original:)();
    v13 = 0;
    v14 = 1 << v4->clientIdentity[16];
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *&v4->storeProvider[2];
    v17 = (v14 + 63) >> 6;
    v36 = v5 + 64;
    v37 = v5;
    if (v16)
    {
      while (1)
      {
        v41 = v3;
        v18 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
LABEL_11:
        v21 = v18 | (v13 << 6);
        v22 = (*&v4->clientIdentity[32] + 16 * v21);
        v40 = *v22;
        v39 = v22[1];
        v23 = *(*&v4->clientIdentity[40] + 8 * v21);

        sub_1000F5104(&qword_10094CBE8, &qword_1007B2250);
        type metadata accessor for REMObjectID_Codable();
        sub_10000CB48(&qword_10094CBF0, &qword_10094CBE8, &qword_1007B2250, &protocol conformance descriptor for Set<A>);
        sub_1000369FC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
        v24 = Sequence.mapToSet<A>(_:)();
        v3 = v41;
        v23, v25, v26, v27, v28, v29, v30, v31;
        *(v36 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v32 = (v37[6] + 16 * v21);
        *v32 = v40;
        v32[1] = v39;
        *(v37[7] + 8 * v21) = v24;
        v33 = v37[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          break;
        }

        v37[2] = v35;
        v16 = v38;
        if (!v38)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v19 = v13;
      while (1)
      {
        v13 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v13 >= v17)
        {
          v4, v6, v7, v8, v9, v10, v11, v12;
          return;
        }

        v20 = *&v4->storeProvider[8 * v13 + 2];
        ++v19;
        if (v20)
        {
          v41 = v3;
          v18 = __clz(__rbit64(v20));
          v38 = (v20 - 1) & v20;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100584A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v10 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v11 = *&v10[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v10, v12);
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100583E6C(a1, a4);
  if (v5)
  {
    return v10;
  }

  v16 = v15;
  sub_100583E6C(a2, a4);
  v131 = 0;
  v19 = v17;
  sub_1005841B8(v17);
  v130 = v20;
  (*(v11 + 16))(v14, a3, v10);
  v21 = (*(v11 + 88))(v14, v10);
  if (v21 == enum case for REMHashtagLabelDataView.Operation.all(_:))
  {
    v19, v22, v23, v24, v25, v26, v27, v28;
    v36 = v16;
    if (*(v16 + 16) == *(a1 + 16))
    {
      sub_100584498(v16);
      v10 = v37;
      v36 = v16;
    }

    else
    {
      v10 = _swiftEmptySetSingleton;
    }

    v36, v29, v30, v31, v32, v33, v34, v35;
    v76 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (v76)
      {
        v77 = v130;
        v10 = sub_100051088(v130, v10);
        v78 = v77;
      }

      else
      {
        v78 = v130;
      }

      v78, v69, v70, v71, v72, v73, v74, v75;
      return v10;
    }

    v10, v69, v70, v71, v72, v73, v74, v75;
    if (v76)
    {
      v86 = v131;
      sub_10058478C(a4);
      if (!v86)
      {
        v110 = v87;
        sub_1005841B8(v87);
        v112 = v111;
        v110, v113, v114, v115, v116, v117, v118, v119;
        v120 = v130;
        v10 = sub_100051088(v130, v112);
        v120, v121, v122, v123, v124, v125, v126, v127;
        return v10;
      }

      goto LABEL_17;
    }

    v109 = v130;
    goto LABEL_25;
  }

  if (v21 == enum case for REMHashtagLabelDataView.Operation.some(_:))
  {
    v19, v22, v23, v24, v25, v26, v27, v28;
    sub_1005841B8(v16);
    v10 = v38;
    v16, v39, v40, v41, v42, v43, v44, v45;
    if (*(a2 + 16))
    {
      v53 = v131;
      sub_10058478C(a4);
      if (!v53)
      {
        v89 = v54;
        sub_1005841B8(v54);
        v91 = v90;
        v89, v92, v93, v94, v95, v96, v97, v98;
        v99 = v130;
        v100 = sub_100051088(v130, v91);
        v99, v101, v102, v103, v104, v105, v106, v107;
        sub_1000434E8(v100, v10);
        return v108;
      }

      v10, v55, v56, v57, v58, v59, v60, v61;
LABEL_17:
      v130, v62, v63, v64, v65, v66, v67, v68;
      return v10;
    }

    v88 = *(a1 + 16);
    v130, v46, v47, v48, v49, v50, v51, v52;
    if (v88)
    {
      return v10;
    }

    v109 = v10;
LABEL_25:
    v109, v79, v80, v81, v82, v83, v84, v85;
    if (!(&_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
    {
      return _swiftEmptySetSingleton;
    }

    sub_1003915C4(&_swiftEmptyArrayStorage);
    return v128;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100584D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1005850F0();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  if (qword_100936578 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094CAF0);
  sub_100029344(v5, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v9, v10))
  {
    sub_10001BBA0(v5, v7);
LABEL_16:

    ObjectType = swift_getObjectType();
    return (*(a4 + 16))(v5, v7, ObjectType, a4);
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v12 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v7);
LABEL_15:
    *(result + 4) = v13;
    v17 = result;
    sub_10001BBA0(v5, v7);
    _os_log_impl(&_mh_execute_header, v9, v10, "HashtagLabelsReferencedByCustomSmartListFiltersInvocation: saving cache {dataSize: %ld}", v17, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v13) = HIDWORD(v5) - v5;
  if (!__OFSUB__(HIDWORD(v5), v5))
  {
    v13 = v13;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_1005850F0()
{
  result = qword_10094CBD8;
  if (!qword_10094CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CBD8);
  }

  return result;
}

void sub_100585144()
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v43 - v8;
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1000050A4(v9, &qword_100941B98, qword_1007ACBD0);
    v10 = 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    v11 = (*(v2 + 88))(v5, v1);
    v10 = v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v2 + 8))(v9, v1);
  }

  sub_1000131E0(0, 2, v10);
  if (!v0)
  {
    v21 = *(v13 + 16);
    if (v21)
    {
      v43[1] = &_swiftEmptyArrayStorage;
      v22 = v13;
      specialized ContiguousArray.reserveCapacity(_:)();
      v23 = type metadata accessor for REMHashtagLabel_Codable();
      v24 = v22;
      v25 = (v22 + 40);
      do
      {
        v26 = *v25;
        v27 = objc_allocWithZone(v23);

        v28 = String._bridgeToObjectiveC()();
        v26, v29, v30, v31, v32, v33, v34, v35;
        [v27 initWithName:v28];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v25 += 2;
        --v21;
      }

      while (v21);
      v24, v36, v37, v38, v39, v40, v41, v42;
    }

    else
    {
      v13, v14, v15, v16, v17, v18, v19, v20;
    }
  }
}

unint64_t sub_10058542C()
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v28 - v8;
  REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters.sortingStyle.getter();
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1000050A4(v9, &qword_100941B98, qword_1007ACBD0);
    v10 = 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    v11 = (*(v2 + 88))(v5, v1);
    v10 = v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v2 + 8))(v9, v1);
  }

  v13 = sub_10042F0DC(v10);
  if (!v0)
  {
    v21 = v13;
    v31 = &_swiftEmptyArrayStorage;
    if (v13 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v23 = 0;
      v10 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v30 = v24;
        sub_100582A84(&v30, &v29);

        if (v29)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28[1] = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v10 = v31;
        }

        ++v23;
        if (v26 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v10 = &_swiftEmptyArrayStorage;
LABEL_27:
    v21, v14, v15, v16, v17, v18, v19, v20;
  }

  return v10;
}

void _s5CacheVwxx(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v9 = *(a1 + 8);
}

uint64_t _s5CacheVwca(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a2[1];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;
  v14 = v12;

  return a1;
}

uint64_t _s5CacheVwta(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

unint64_t sub_10058585C()
{
  result = qword_10094CC20;
  if (!qword_10094CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC20);
  }

  return result;
}

unint64_t sub_1005858B4()
{
  result = qword_10094CC28;
  if (!qword_10094CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC28);
  }

  return result;
}

unint64_t sub_10058590C()
{
  result = qword_10094CC30;
  if (!qword_10094CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC30);
  }

  return result;
}

uint64_t sub_100585994()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CC38);
  v1 = sub_100006654(v0, qword_10094CC38);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100585A5C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v314 = a1;
  v304 = a3;
  v303 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  __chkstk_darwin(v303, v4);
  v310 = &v281 - v5;
  v302 = type metadata accessor for KMeans.TrainingMetrics();
  v300 = *(v302 - 8);
  __chkstk_darwin(v302, v6);
  v298 = &v281 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v297 = &v281 - v10;
  __chkstk_darwin(v11, v12);
  v294 = &v281 - v13;
  v301 = type metadata accessor for RDIntentClusterModel.ModelSnapshot();
  v299 = *(v301 - 8);
  __chkstk_darwin(v301, v14);
  v305 = &v281 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v311 = v16;
  v312 = v17;
  __chkstk_darwin(v16, v18);
  v309 = &v281 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v308 = &v281 - v22;
  v296 = type metadata accessor for REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed();
  v295 = *(v296 - 8);
  __chkstk_darwin(v296, v23);
  v25 = &v281 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for URL();
  v306 = *(v26 - 8);
  __chkstk_darwin(v26, v27);
  v29 = &v281 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v313 = *(v30 - 8);
  __chkstk_darwin(v30, v31);
  v33 = &v281 - v32;
  v34 = type metadata accessor for REMSuggestedAttributeInputDataFrame();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34, v36);
  v38 = &v281 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = REMSuggestedAttributesFeatureExtractor.Parameters.maxSampleCount.getter();
  v40 = v315;
  result = sub_1002F048C(v39, v314);
  if (!v40)
  {
    v286 = v25;
    v307 = a2;
    v291 = v29;
    v314 = v35;
    v293 = v34;
    v290 = v26;
    REMSuggestedAttributeInputDataFrame.init(reminderDataSourceArray:)();
    v42 = REMSuggestedAttributeInputDataFrame.index.getter();
    __chkstk_darwin(v42, v43);
    v315 = v38;
    v279 = v38;
    v44 = sub_1003DF568(sub_1002F0758, &v277);
    v45 = *(v313 + 8);
    v292 = v30;
    v288 = v313 + 8;
    v287 = v45;
    v45(v33, v30);
    v46 = sub_1002F0774(v44);
    v44, v47, v48, v49, v50, v51, v52, v53;
    sub_1002E1048(v46);
    v55 = v54;
    v46, v56, v57, v58, v59, v60, v61, v62;
    if (qword_100936580 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_10094CC38);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    v55, v66, v67, v68, v69, v70, v71, v72;
    v73 = os_log_type_enabled(v64, v65);
    v289 = v33;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v323._countAndFlagsBits = v75;
      *v74 = 136315138;
      v76 = Array.description.getter();
      v78 = v77;
      v79 = sub_10000668C(v76, v77, &v323._countAndFlagsBits);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v64, v65, "Training REMFilteredTitleEmbedding with %s", v74, 0xCu);
      sub_10000607C(v75);
    }

    v87 = type metadata accessor for REMFilteredTitleEmbedding();
    swift_allocObject();
    v88 = REMFilteredTitleEmbedding.init(from:stopWordThresholdByPercent:)();
    v89 = v315;
    v90 = REMSuggestedAttributeInputDataFrame.title.getter();

    sub_1002F09B4(v90);

    v323._countAndFlagsBits = REMFilteredTitleEmbedding.vector(for:)();
    sub_1000F5104(&qword_100941340, &qword_1007A1068);
    swift_allocObject();
    v91 = Series.init(_:defaultValue:)();
    sub_100586D5C();
    static REMPaths.writableURLForMLModel()();
    v284 = 0;
    v92 = dispatch thunk of Series.values.getter();
    v282 = REMSuggestedAttributesFeatureExtractor.Parameters.numOfIntentWords.getter();
    REMSuggestedAttributesFeatureExtractor.Parameters.randomSeed.getter();
    v285 = v91;
    v93 = type metadata accessor for MersenneTwister();
    swift_allocObject();
    v94 = MersenneTwister.init(seed:)();
    v324 = v87;
    v325 = &protocol witness table for REMFilteredTitleEmbedding;
    v323._countAndFlagsBits = v88;

    REMSuggestedAttributesFeatureExtractor.Parameters.outputFileName.getter();
    v96 = v95;
    Date.init()();
    type metadata accessor for RDIntentClusterModel();
    v321 = v93;
    v97 = v291;
    v322 = sub_100586DA8(&qword_100941348, &type metadata accessor for MersenneTwister, &protocol conformance descriptor for MersenneTwister);
    v320._countAndFlagsBits = v94;
    v283 = v94;

    v98 = v305;
    v99 = v284;
    v107 = static RDIntentClusterModel.modelByTraining(_:writeTo:k:embedding:randomGenerator:filename:)();
    if (v99)
    {

      v92, v108, v109, v110, v111, v112, v113, v114;
      v96, v115, v116, v117, v118, v119, v120, v121;
      (*(v312 + 8))(v308, v311);
      (*(v306 + 8))(v97, v290);
      sub_10000607C(&v320);
      sub_10000607C(&v323);
      return (*(v314 + 8))(v89, v293);
    }

    else
    {
      v282 = v88;
      v122 = v107;
      v92, v100, v101, v102, v103, v104, v105, v106;
      v96, v123, v124, v125, v126, v127, v128, v129;
      sub_10000607C(&v320);
      v284 = RDIntentClusterModel.ModelSnapshot.intentionalWords.getter();
      v130 = v294;
      RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
      v281 = KMeans.TrainingMetrics.clusterVariances.getter();
      v131 = *(v300 + 8);
      v132 = v302;
      v131(v130, v302);
      v133 = v297;
      RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
      v300 = KMeans.TrainingMetrics.clusterSizes.getter();
      v131(v133, v132);
      v134 = v298;
      RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
      KMeans.TrainingMetrics.mse.getter();
      v131(v134, v132);
      v135 = v309;
      Date.init()();
      v136 = v308;
      Date.timeIntervalSince(_:)();
      v138 = v312 + 8;
      v137 = *(v312 + 8);
      v139 = v135;
      v140 = v311;
      v137(v139, v311);
      v141 = v286;
      REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed.init(clusterLabels:clusterVariances:clusterSizes:mse:trainingDuration:)();

      (*(v299 + 8))(v98, v301);
      v305 = v137;
      v312 = v138;
      v137(v136, v140);
      (*(v295 + 8))(v141, v296);
      sub_10000607C(&v323);

      sub_1002F0DE4(v285, v122);
      v284 = 0;
      v302 = v122;

      v142 = v289;
      Series.index.getter();
      strcpy(&v323, "missing intent");
      HIBYTE(v323._object) = -18;
      sub_1000F5104(&qword_100941358, &qword_1007A1078);
      swift_allocObject();
      v308 = Series.init(_:index:defaultValue:)();
      v143 = REMSuggestedAttributesFeatureExtractor.Parameters.includeTitleVector.getter();
      v144 = (v143 & 1) == 0;
      if (v143)
      {
        v145 = 0xA726F746365762CLL;
      }

      else
      {
        v145 = 10;
      }

      if (v144)
      {
        v146 = 0xE100000000000000;
      }

      else
      {
        v146 = 0xE800000000000000;
      }

      v323._countAndFlagsBits = 0xD000000000000036;
      v323._object = 0x80000001007FCD30;
      v147 = v146;
      String.append(_:)(*&v145);
      v146, v148, v149, v150, v151, v152, v153, v154;
      v320 = v323;
      REMSuggestedAttributeInputDataFrame.index.getter();
      v155 = v310;
      v156 = v292;
      (*(v313 + 16))(v310, v142, v292);
      v157 = *(v303 + 36);
      v158 = sub_10000CB48(&qword_10093EE00, &qword_10093EDF8, &qword_10079D5B0, &protocol conformance descriptor for OrderedSet<A>);
      dispatch thunk of Collection.startIndex.getter();
      v287(v142, v156);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v155 + v157) == v323._countAndFlagsBits)
      {
        v159 = v293;
      }

      else
      {
        v313 = v158;
        do
        {
          v162 = dispatch thunk of Collection.subscript.read();
          v162(&v323, 0);
          dispatch thunk of Collection.formIndex(after:)();
          REMSuggestedAttributeInputDataFrame.iloc(_:)();
          v163._countAndFlagsBits = REMSuggestedAttributeInput.title.getter();
          object = v163._object;
          String.append(_:)(v163);
          object, v165, v166, v167, v168, v169, v170, v171;
          v172._countAndFlagsBits = 44;
          v172._object = 0xE100000000000000;
          String.append(_:)(v172);
          v173 = v309;
          REMSuggestedAttributeInput.creationDate.getter();
          v174 = Date.description.getter();
          v176 = v175;
          (v305)(v173, v311);
          v177._countAndFlagsBits = v174;
          v177._object = v176;
          String.append(_:)(v177);
          v176, v178, v179, v180, v181, v182, v183, v184;
          v185._countAndFlagsBits = 44;
          v185._object = 0xE100000000000000;
          String.append(_:)(v185);
          REMSuggestedAttributeInput.list.getter();
          v186 = REMSuggestedList.description.getter();
          v188 = v187;

          v189._countAndFlagsBits = v186;
          v189._object = v188;
          String.append(_:)(v189);
          v188, v190, v191, v192, v193, v194, v195, v196;
          v197._countAndFlagsBits = 44;
          v197._object = 0xE100000000000000;
          String.append(_:)(v197);
          REMSuggestedAttributeInput.dueDayOfWeek.getter();
          v198 = REMSuggestedWeekDay.description.getter();
          v200 = v199;

          v201._countAndFlagsBits = v198;
          v201._object = v200;
          String.append(_:)(v201);
          v200, v202, v203, v204, v205, v206, v207, v208;
          v209._countAndFlagsBits = 44;
          v209._object = 0xE100000000000000;
          String.append(_:)(v209);
          REMSuggestedAttributeInput.location.getter();
          v210 = dispatch thunk of ClassificationLabel.description.getter();
          v212 = v211;

          v213._countAndFlagsBits = v210;
          v213._object = v212;
          String.append(_:)(v213);
          v212, v214, v215, v216, v217, v218, v219, v220;
          v221._countAndFlagsBits = 44;
          v221._object = 0xE100000000000000;
          String.append(_:)(v221);
          dispatch thunk of Series.iloc(_:)();
          v222 = v323._object;
          String.append(_:)(v323);
          v222, v223, v224, v225, v226, v227, v228, v229;
          if (REMSuggestedAttributesFeatureExtractor.Parameters.includeTitleVector.getter())
          {
            v230._countAndFlagsBits = 44;
            v230._object = 0xE100000000000000;
            String.append(_:)(v230);
            dispatch thunk of Series.iloc(_:)();
            v231 = dispatch thunk of RDVector.data.getter();

            v232 = Array.description.getter();
            v234 = v233;
            v231, v233, v235, v236, v237, v238, v239, v240;
            v323._countAndFlagsBits = v232;
            v323._object = v234;
            v318 = 91;
            v319 = 0xE100000000000000;
            v316 = 0;
            v317 = 0xE000000000000000;
            v241 = sub_10013BCF4();
            v279 = v241;
            v280 = v241;
            v278 = v241;
            v277 = &type metadata for String;
            v242 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v244 = v243;
            v234, v243, v245, v246, v247, v248, v249, v250;
            v323._countAndFlagsBits = v242;
            v323._object = v244;
            v318 = 93;
            v319 = 0xE100000000000000;
            v316 = 0;
            v317 = 0xE000000000000000;
            v279 = v241;
            v280 = v241;
            v277 = &type metadata for String;
            v278 = v241;
            v251 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v253 = v252;
            v244, v252, v254, v255, v256, v257, v258, v259;
            v323._countAndFlagsBits = v251;
            v323._object = v253;
            v318 = 32;
            v319 = 0xE100000000000000;
            v316 = 0;
            v317 = 0xE000000000000000;
            v279 = v241;
            v280 = v241;
            v277 = &type metadata for String;
            v278 = v241;
            v260 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v262 = v261;
            v253, v261, v263, v264, v265, v266, v267, v268;
            v269._countAndFlagsBits = v260;
            v269._object = v262;
            String.append(_:)(v269);
            v262, v270, v271, v272, v273, v274, v275, v276;
          }

          v160._countAndFlagsBits = 10;
          v160._object = 0xE100000000000000;
          String.append(_:)(v160);

          v161 = v310;
          dispatch thunk of Collection.endIndex.getter();
        }

        while (*(v161 + v157) != v323._countAndFlagsBits);
        v159 = v293;
        v89 = v315;
      }

      sub_1004D4478(v310);
      REMSuggestedAttributesFeatureExtractor.Result.init(success:featureString:)();

      (*(v306 + 8))(v291, v290);
      return (*(v314 + 8))(v89, v159);
    }
  }

  return result;
}

uint64_t sub_100586D04(uint64_t a1)
{
  result = sub_100586DA8(&unk_10094CC70, &type metadata accessor for REMSuggestedAttributesFeatureExtractor, &protocol conformance descriptor for REMSuggestedAttributesFeatureExtractor);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100586D5C()
{
  result = qword_10093E9B0;
  if (!qword_10093E9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093E9B0);
  }

  return result;
}

uint64_t sub_100586DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100586DF0(void *a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for RDPublicCloudDatabaseControllerMock();
  inited = swift_initStackObject();
  *(inited + 16) = [objc_opt_self() cancelledError];
  *(inited + 56) = 1;
  v34[3] = v8;
  v34[4] = &off_1008E9260;
  v34[0] = inited;
  type metadata accessor for REMCDTemplateOperationQueueItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  while (1)
  {
    v11 = sub_100426AE4(0, 0, 128);
    v12 = [objc_allocWithZone(NSFetchRequest) init];
    v13 = [ObjCClassFromMetadata entity];
    [v12 setEntity:v13];

    [v12 setAffectedStores:0];
    [v12 setPredicate:v11];

    [v12 setFetchLimit:1];
    if (qword_1009360F0 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 setSortDescriptors:isa];

    [v12 setReturnsObjectsAsFaults:0];
    v15 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {
      goto LABEL_15;
    }

    v23 = v15;
    if (v15 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_14:
        v23, v16, v17, v18, v19, v20, v21, v22;
LABEL_15:

        sub_10000607C(v34);
        return;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    if ((v23 & 0xC000000000000001) == 0)
    {
      break;
    }

    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
    v32 = v24;
    v23, v25, v26, v27, v28, v29, v30, v31;

    v33 = objc_autoreleasePoolPush();
    sub_10058AEF4(v32, v5, a2, v34, 1, a1, &v35);
    v4 = 0;
    objc_autoreleasePoolPop(v33);
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v23 + 32);
    goto LABEL_10;
  }

  __break(1u);
  objc_autoreleasePoolPop(v23);
  __break(1u);
}

uint64_t sub_1005870CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CC80);
  v1 = sub_100006654(v0, qword_10094CC80);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100587194()
{
  result = [objc_opt_self() templates];
  qword_10094CC98 = result;
  return result;
}

uint64_t sub_1005871D0(double a1)
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v23 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v21 - v15;
  v21 = *(v1 + 88);
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v9 + 8);
  v22(v12, v8);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10058D250;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F7E00;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);
  (*(v27 + 8))(v4, v19);
  (*(v24 + 8))(v7, v26);
  v22(v16, v23);
}

uint64_t sub_1005875B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 104);
    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = __CocoaSet.count.getter();
      v3, v5, v6, v7, v8, v9, v10, v11;
      if (!v4)
      {
LABEL_6:
        sub_1005876C0();
        sub_10058848C(1);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v2 + 64);
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(v2, ObjectType, v12);

          return swift_unknownObjectRelease();
        }
      }
    }

    else if (!*(v3 + 16))
    {
      goto LABEL_6;
    }
  }

  return result;
}

void sub_1005876C0()
{
  v1 = v0;
  v111 = *v0;
  v2 = sub_1000F5104(&qword_10094CDF8, &qword_1007B2518);
  v107 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v106 = &v85 - v4;
  v5 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5, v6);
  v97 = &v85 - v7;
  v8 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v102 = *(v8 - 8);
  v103 = v8;
  __chkstk_darwin(v8, v9);
  v100 = &v85 - v10;
  v11 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v104 = *(v11 - 8);
  v105 = v11;
  __chkstk_darwin(v11, v12);
  v101 = &v85 - v13;
  v14 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v14 - 8, v15);
  v91 = &v85 - v16;
  v17 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v108 = *(v17 - 8);
  v109 = v17;
  __chkstk_darwin(v17, v18);
  v20 = &v85 - v19;
  v94 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v93 = *(v94 - 1);
  __chkstk_darwin(v94, v21);
  v23 = &v85 - v22;
  v24 = sub_1000F5104(&unk_10094CE00, &unk_100791BB0);
  v95 = *(v24 - 8);
  v96 = v24;
  __chkstk_darwin(v24, v25);
  v92 = &v85 - v26;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v30 = __chkstk_darwin(v27, v29);
  v32 = (&v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v1;
  v34 = v1[11];
  *v32 = v34;
  (*(v28 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v27, v30);
  v35 = v34;
  v36 = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v32, v27);
  if (v36)
  {
    v37 = v1[9];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v2;
    v40 = v39;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v41 = v35;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100791300;
    *(v42 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v42 + 40) = v43;
    v44 = sub_100441DF8(v37, v38, v40, v42);
    v40, v45, v46, v47, v48, v49, v50, v51;
    v42, v52, v53, v54, v55, v56, v57, v58;
    v59 = sub_10038D894(&off_1008E3D38);
    sub_100034610(&unk_1008E3D58);
    v113 = v44;
    *(swift_allocObject() + 16) = v59;
    sub_1000F5104(&unk_10093D170, &unk_100791BC0);
    sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
    v110 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    v89 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v60 = v109;
    Publisher.filter(_:)();

    (*(v108 + 8))(v20, v60);
    v61 = v41;
    v113 = v41;
    v62 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v63 = *(v62 - 8);
    v87 = *(v63 + 56);
    v88 = v63 + 56;
    v64 = v91;
    v87(v91, 1, 1, v62);
    v109 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v86 = &protocol conformance descriptor for Publishers.Filter<A>;
    sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0, &protocol conformance descriptor for Publishers.Filter<A>);
    v108 = sub_100006CA4();
    v85 = v61;
    v65 = v92;
    v66 = v94;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v64, &qword_100939980, &unk_10079ADA0);
    (*(v93 + 8))(v23, v66);
    v94 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000CB48(&unk_100937000, &unk_10094CE00, &unk_100791BB0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v67 = v96;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v95 + 8))(v65, v67);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v113 = sub_100441A9C(0xD000000000000016, 0x80000001007EB210, 0);
    sub_1000F5104(&unk_10093D140, qword_1007969F0);
    sub_1000F5104(&unk_100936F70, &unk_100791B60);
    sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, v110);
    v68 = v97;
    Publisher.map<A>(_:)();
    sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, v89);
    v70 = v99;
    v69 = v100;
    Publisher.filter(_:)();

    (*(v98 + 8))(v68, v70);
    v71 = v33;
    v72 = v85;
    v113 = v85;
    v73 = v87;
    v87(v64, 1, 1, v62);
    sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, v86);
    v74 = v101;
    v75 = v103;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v64, &qword_100939980, &unk_10079ADA0);

    (*(v102 + 8))(v69, v75);
    v76 = v94;
    sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, v94);
    v77 = v105;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v104 + 8))(v74, v77);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v78 = v71[12];
    v112 = v72;
    v113 = v78;
    v73(v64, 1, 1, v62);

    sub_1000F5104(&qword_10094CE10, qword_1007B2520);
    sub_10000CB48(&qword_10094CE18, &qword_10094CE10, qword_1007B2520, v110);
    v79 = v106;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v64, &qword_100939980, &unk_10079ADA0);

    sub_10000CB48(qword_10094CE20, &qword_10094CDF8, &qword_1007B2518, v76);
    v80 = v90;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v107 + 8))(v79, v80);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if (qword_100936588 == -1)
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
  v81 = type metadata accessor for Logger();
  sub_100006654(v81, qword_10094CC80);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "RDTemplateOperationQueue: Did set up subscriptions", v84, 2u);
  }
}

uint64_t sub_10058848C(int a1)
{
  v2 = v1;
  v89 = a1;
  v88 = *v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v87 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = v81 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = (v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[11];
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11, v14);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v16, v11);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (v2[15])
  {
    return result;
  }

  *(v2 + 120) = 1;
  sub_100588B48(0);
  if (qword_100936588 != -1)
  {
    goto LABEL_17;
  }

LABEL_4:
  v86 = v3;
  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_10094CC80);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "RDTemplateOperationQueue: Began handling template operation queue items", v24, 2u);
  }

  Date.init()();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = [objc_opt_self() sharedBabysitter];
  v85 = v25;
  if (v26)
  {
    v27 = v26;
    v28 = 17;
    if (v89)
    {
      v28 = 19;
    }

    v29 = v2[v28];

    v30 = v2[22];
    v31 = String._bridgeToObjectiveC()();
    v32 = [v27 tokenByRegisteringAccount:v30 forOperationWithName:v31];

    *(v25 + 16) = v32;
    v33 = v32;
    v84 = v32 == 0;
    if (v32)
    {

      v29, v34, v35, v36, v37, v38, v39, v40;
    }

    else
    {
      v41 = objc_opt_self();
      v42 = String._bridgeToObjectiveC()();
      v82 = [v41 babySatErrorWithOperationName:v42];

      sub_1000F5104(&unk_10093D030, &unk_10079C950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      v44 = String._bridgeToObjectiveC()();
      v29, v45, v46, v47, v48, v49, v50, v51;
      *(inited + 48) = v44;
      v52 = sub_10038D9FC(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
      v81[1] = type metadata accessor for Analytics();
      v81[0] = v2[20];
      v53 = sub_1004646CC();
      v52, v54, v55, v56, v57, v58, v59, v60;
      v61 = v82;
      static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
      v53, v62, v63, v64, v65, v66, v67, v68;
    }
  }

  else
  {
    v84 = 0;
  }

  v69 = [v2[9] newBackgroundContextWithAuthor:RDTemplateOperationAuthor];
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = *(v4 + 16);
  v72 = v87;
  v83 = v10;
  v73 = v10;
  v74 = v86;
  v71(v87, v73, v86);
  v75 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = v70;
  (*(v4 + 32))(v76 + v75, v72, v74);
  v77 = v76 + ((v75 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v77 = v85;
  *(v77 + 8) = v84;
  v78 = v76 + ((v75 + v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v78 = v69;
  *(v78 + 8) = v89 & 1;
  *(v76 + ((v75 + v5 + 39) & 0xFFFFFFFFFFFFFFF8)) = v88;
  aBlock[4] = sub_10058D2A0;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F7E78;
  v79 = _Block_copy(aBlock);

  v80 = v69;

  [v80 performBlock:v79];
  _Block_release(v79);

  (*(v4 + 8))(v83, v74);
}

void sub_100588B48(char a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936588 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094CC80);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.RDTemplateOperationQueue.handleIncompleteOperationQueueItems}", v11, 2u);
  }

  if (*(v1 + 120) != (a1 & 1))
  {
    if (*(v1 + 120))
    {
      *(v1 + 112) = os_transaction_create();
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_100936590 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      static os_signpost_type_t.end.getter();
      if (qword_100936590 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
      *(v1 + 112) = 0;
      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction RELEASE {name: com.apple.remindd.RDTemplateOperationQueue.handleIncompleteOperationQueueItems}", v14, 2u);
    }
  }
}

void sub_100588EA0(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  sub_100588EF8();

  objc_autoreleasePoolPop(v1);
}

void sub_100588EF8()
{
  v0 = [objc_opt_self() sharedBabysitter];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    [v1 giveAccountWithIDAnotherChance:v2];

    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094CC80);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000668C(0xD000000000000035, 0x80000001007FCEA0, &v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "RDTemplateOperationQueue: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }
  }
}

void sub_100589098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40) | (*(a2 + 44) << 32);
  if ((v2 & 0xC00000000000) == 0x800000000000)
  {
    v4 = *(a2 + 8);
    v3 = *(a2 + 16);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v3)
    {
      if (v4 == v5 && v3 == v6)
      {
        v6, v6, v5, v8, v9, v10, v11, v12;
        if ((v2 & 0x10000000000) == 0)
        {
          return;
        }
      }

      else
      {
        v14 = v6;
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v14, v16, v17, v18, v19, v20, v21, v22;
        if ((v2 & 0x10000000000) == 0 || (v15 & 1) == 0)
        {
          return;
        }
      }

      sub_100589174();
      return;
    }

    v6, v6, v7, v8, v9, v10, v11, v12;
  }
}

void sub_100589174()
{
  v1 = *v0;
  v2 = [v0[9] newBackgroundContextWithAuthor:RDTemplateOperationAuthor];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v7[4] = sub_10058D3FC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100019200;
  v7[3] = &unk_1008F7FE0;
  v5 = _Block_copy(v7);
  v6 = v2;

  [v6 performBlock:v5];
  _Block_release(v5);
}

uint64_t sub_1005892C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _TtC7remindd19RDXPCStorePerformer *a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v130 = result;
  if (!result)
  {
    return result;
  }

  if (a4)
  {
    type metadata accessor for REMCDTemplateOperationQueueItem();
    v103 = sub_100427050(a5);
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_100006654(v104, qword_10094CC80);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v138[0] = v108;
      *v107 = 134218242;
      *(v107 + 4) = v103;
      *(v107 + 12) = 2080;
      if (a6)
      {
        v109 = 1702195828;
      }

      else
      {
        v109 = 0x65736C6166;
      }

      if (a6)
      {
        v110 = 0xE400000000000000;
      }

      else
      {
        v110 = 0xE500000000000000;
      }

      v111 = sub_10000668C(v109, v110, v138);
      v110, v112, v113, v114, v115, v116, v117, v118;
      *(v107 + 14) = v111;
      _os_log_impl(&_mh_execute_header, v105, v106, "RDTemplateOperationQueue: Blocked by babysitter. Batch completed all incomplete template operation queue items. {affectedCount: %ld, isOnLaunch: %s}", v107, 0x16u);
      sub_10000607C(v108);
    }

    goto LABEL_64;
  }

  v128 = [objc_allocWithZone(REMStore) initWithDaemonController:*(result + 80)];
  swift_weakInit();
  type metadata accessor for REMCDTemplateOperationQueueItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v124 = 0;
  v127 = a5;
  while (1)
  {
    v26 = sub_100426AE4(0, 0, 128);
    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [ObjCClassFromMetadata entity];
    [v27 setEntity:v28];

    [v27 setAffectedStores:0];
    [v27 setPredicate:v26];

    [v27 setFetchLimit:1];
    if (qword_1009360F0 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v27 setSortDescriptors:isa];

    [v27 setReturnsObjectsAsFaults:0];
    v30 = NSManagedObjectContext.fetch<A>(_:)();
    v38 = v30;
    if (v30 >> 62)
    {
      break;
    }

    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

LABEL_13:
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v10 = type metadata accessor for Logger();
        sub_100006654(v10, qword_10094CC80);
        swift_errorRetain();
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v138[0] = v14;
          *v13 = 136446210;
          swift_getErrorValue();
          v15 = Error.rem_errorDescription.getter();
          v17 = v16;
          v18 = sub_10000668C(v15, v16, v138);
          v17, v19, v20, v21, v22, v23, v24, v25;
          *(v13 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v11, v12, "RDTemplateOperationQueue: Failed to batch complete all incomplete template operation queue items. {error: %{public}s}", v13, 0xCu);
          sub_10000607C(v14);
        }

        else
        {
        }

        goto LABEL_64;
      }

      v39 = *(v38 + 32);
    }

    v47 = v39;
    v38, v40, v41, v42, v43, v44, v45, v46;

    v131 = objc_autoreleasePoolPush();
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_10094CC80);
    v49 = v47;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&_mh_execute_header, v50, v51, "RDTemplateOperationQueue: Handling incomplete template operation queue item with top priority. {templateOperationQueueItem: %{public}@}", v52, 0xCu);
      sub_1000050A4(v53, &unk_100938E70, &unk_100797230);
    }

    sub_10058B804(v49, v128, v138);
    sub_10058CF80(v138, &v133);
    if (v134)
    {
      sub_100054B6C(&v133, v135);
      v55 = v136;
      v56 = v137;
      sub_10000F61C(v135, v136);
      (*(v56 + 16))(a5, v55, v56);
      sub_10000607C(v135);
    }

    else
    {
      sub_1000050A4(&v133, &unk_10094CDD0, &unk_1007B24F8);
      v57 = v49;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138543362;
        v62 = [v57 objectID];
        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&_mh_execute_header, v58, v59, "RDTemplateOperationQueue: Failed to create template operation for template operation queue item. {templateOperationQueueItem.objectID: %{public}@}", v60, 0xCu);
        sub_1000050A4(v61, &unk_100938E70, &unk_100797230);
        a5 = v127;
      }
    }

    v63 = [v49 objectID];
    v135[0] = 0;
    v64 = [(RDXPCStorePerformer *)a5 existingObjectWithID:v63 error:v135];

    v65 = v135[0];
    if (!v64)
    {
      v77 = v135[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_36;
    }

    v66 = swift_dynamicCastClass();
    v67 = v65;
    if (v66)
    {
      [v66 setIsCompleted:1];
      v135[0] = 0;
      v68 = [(RDXPCStorePerformer *)a5 save:v135];
      v69 = v135[0];
      if ((v68 & 1) == 0)
      {
        v84 = v135[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
LABEL_36:
        v85 = v49;
        swift_errorRetain();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v135[0] = v90;
          *v88 = 138543618;
          v91 = [v85 objectID];
          *(v88 + 4) = v91;
          *v89 = v91;
          *(v88 + 12) = 2082;
          swift_getErrorValue();
          v92 = Error.rem_errorDescription.getter();
          v94 = v93;
          v95 = sub_10000668C(v92, v93, v135);
          v94, v96, v97, v98, v99, v100, v101, v102;
          *(v88 + 14) = v95;
          _os_log_impl(&_mh_execute_header, v86, v87, "RDTemplateOperationQueue: Failed to save managed object context after completing template operation queue item. {templateOperationQueueItem.objectID: %{public}@, error: %{public}s}", v88, 0x16u);
          sub_1000050A4(v89, &unk_100938E70, &unk_100797230);
          a5 = v127;

          sub_10000607C(v90);
        }

        else
        {
        }

        goto LABEL_39;
      }

      v70 = v49;
      v71 = v69;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138543362;
        v76 = [v70 objectID];
        *(v74 + 4) = v76;
        *v75 = v76;
        _os_log_impl(&_mh_execute_header, v72, v73, "RDTemplateOperationQueue: Completed template operation queue item with top priority. {templateOperationQueueItem.objectID: %{public}@}", v74, 0xCu);
        sub_1000050A4(v75, &unk_100938E70, &unk_100797230);
        a5 = v127;
      }

      v124 = 1;
    }

    else
    {

      v78 = v49;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v81 = 138543362;
        v83 = [v78 objectID];
        *(v81 + 4) = v83;
        *v82 = v83;
        _os_log_impl(&_mh_execute_header, v79, v80, "RDTemplateOperationQueue: Failed to retrieve template operation queue item by objectID. {templateOperationQueueItem.objectID: %{public}@}", v81, 0xCu);
        sub_1000050A4(v82, &unk_100938E70, &unk_100797230);
        a5 = v127;
      }
    }

LABEL_39:
    sub_10058CF80(v138, &v133);
    if (v134)
    {
      sub_100054B6C(&v133, v135);
      sub_10058A864(v135, v132);
      sub_10000607C(v135);
    }

    else
    {
      sub_1000050A4(&v133, &unk_10094CDD0, &unk_1007B24F8);
    }

    [(RDXPCStorePerformer *)a5 reset];
    sub_1000050A4(v138, &unk_10094CDD0, &unk_1007B24F8);
    objc_autoreleasePoolPop(v131);
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_44:
  v38, v31, v32, v33, v34, v35, v36, v37;

  swift_weakDestroy();
  if (v124)
  {
    v119 = sub_100427964(a5);
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v120 = type metadata accessor for Logger();
    sub_100006654(v120, qword_10094CC80);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 134217984;
      *(v123 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v121, v122, "RDTemplateOperationQueue: Batch deleted completed template operation queue items. {deletionCount: %ld}", v123, 0xCu);
    }

    sub_10058ABD8(v119);
  }

LABEL_64:
  sub_10058A47C(v130, a2, a3);
}

uint64_t sub_10058A47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v17 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(a1 + 88);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v17, a2, v13);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v14 + 32))(v21 + v19, v17, v13);
  *(v21 + v20) = v24[0];
  aBlock[4] = sub_10058D36C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F7F68;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_10058A864(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v21 = *(v14 + 88);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_10000A87C(a1, v24);
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      v20 = v15;
      sub_100054B6C(v24, v16 + 24);
      aBlock[4] = sub_10058D360;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008F7F18;
      v19 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v22 = &_swiftEmptyArrayStorage;
      sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      v18 = v8;
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v19;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);
      (*(v4 + 8))(v7, v3);
      (*(v9 + 8))(v12, v18);
    }
  }

  return result;
}

uint64_t sub_10058ABD8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    v18[1] = *(v1 + 88);
    v14 = swift_allocObject();
    v18[0] = v4;
    v19 = v8;
    v15 = v14;
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a1;
    aBlock[4] = sub_10058D358;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F7EC8;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = &_swiftEmptyArrayStorage;
    sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v18[0] + 8))(v7, v3);
    (*(v9 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_10058AEF4(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, void *a6, _BYTE *a7)
{
  if (qword_100936588 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094CC80);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDTemplateOperationQueue: Handling incomplete template operation queue item with top priority. {templateOperationQueueItem: %{public}@}", v13, 0xCu);
    sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
  }

  sub_10058B804(v10, a3, v93);
  sub_10058CF80(v93, &v88);
  v16 = &selRef_hack_willSaveHandled;
  if (v89)
  {
    sub_100054B6C(&v88, v90);
    v17 = v91;
    v18 = v92;
    sub_10000F61C(v90, v91);
    v19 = a6;
    (*(v18 + 16))(a6, v17, v18);
    if (v87)
    {
      v20 = v10;
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v88 = v25;
        *v23 = 138543618;
        v26 = [v20 objectID];
        *(v23 + 4) = v26;
        *v24 = v26;
        *(v23 + 12) = 2082;
        swift_getErrorValue();
        v27 = Error.rem_errorDescription.getter();
        v29 = v28;
        v30 = sub_10000668C(v27, v28, &v88);
        v29, v31, v32, v33, v34, v35, v36, v37;
        *(v23 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v21, v22, "RDTemplateOperationQueue: Failed to complete template operation queue item. {templateOperationQueueItem.objectID: %{public}@, error: %{public}s}", v23, 0x16u);
        sub_1000050A4(v24, &unk_100938E70, &unk_100797230);

        sub_10000607C(v25);

        v16 = &selRef_hack_willSaveHandled;
        v19 = a6;
      }

      else
      {

        v19 = a6;
        v16 = &selRef_hack_willSaveHandled;
      }
    }

    sub_10000607C(v90);
  }

  else
  {
    sub_1000050A4(&v88, &unk_10094CDD0, &unk_1007B24F8);
    v38 = v10;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    v19 = a6;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138543362;
      v43 = [v38 objectID];
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "RDTemplateOperationQueue: Failed to create template operation for template operation queue item. {templateOperationQueueItem.objectID: %{public}@}", v41, 0xCu);
      sub_1000050A4(v42, &unk_100938E70, &unk_100797230);
    }
  }

  v44 = [v10 v16[433]];
  v90[0] = 0;
  v45 = [v19 existingObjectWithID:v44 error:v90];

  v46 = v90[0];
  if (!v45)
  {
    v58 = v90[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_26;
  }

  type metadata accessor for REMCDTemplateOperationQueueItem();
  v47 = swift_dynamicCastClass();
  v48 = v46;
  if (v47)
  {
    [v47 setIsCompleted:1];
    v90[0] = 0;
    v49 = [v19 save:v90];
    v50 = v90[0];
    if (v49)
    {
      *a7 = 1;
      v51 = v10;
      v52 = v50;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138543362;
        v57 = [v51 v16[433]];
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "RDTemplateOperationQueue: Completed template operation queue item with top priority. {templateOperationQueueItem.objectID: %{public}@}", v55, 0xCu);
        sub_1000050A4(v56, &unk_100938E70, &unk_100797230);
      }

      goto LABEL_29;
    }

    v65 = v90[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_26:
    v66 = v10;
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90[0] = v71;
      *v69 = 138543618;
      v72 = [v66 objectID];
      *(v69 + 4) = v72;
      *v70 = v72;
      *(v69 + 12) = 2082;
      swift_getErrorValue();
      v73 = Error.rem_errorDescription.getter();
      v75 = v74;
      v76 = sub_10000668C(v73, v74, v90);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v69 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v67, v68, "RDTemplateOperationQueue: Failed to save managed object context after completing template operation queue item. {templateOperationQueueItem.objectID: %{public}@, error: %{public}s}", v69, 0x16u);
      sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

      sub_10000607C(v71);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v59 = v10;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138543362;
    v64 = [v59 v16[433]];
    *(v62 + 4) = v64;
    *v63 = v64;
    _os_log_impl(&_mh_execute_header, v60, v61, "RDTemplateOperationQueue: Failed to retrieve template operation queue item by objectID. {templateOperationQueueItem.objectID: %{public}@}", v62, 0xCu);
    sub_1000050A4(v63, &unk_100938E70, &unk_100797230);
  }

LABEL_29:
  [v19 reset];
  return sub_1000050A4(v93, &unk_10094CDD0, &unk_1007B24F8);
}

void sub_10058B804(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v102 - v12;
  __chkstk_darwin(v14, v15);
  v17 = &v102 - v16;
  __chkstk_darwin(v18, v19);
  v21 = &v102 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v102 - v24;
  *&v28 = __chkstk_darwin(v26, v27).n128_u64[0];
  v30 = &v102 - v29;
  v31 = [a1 operationTypeRawValue];
  if (v31 > 2)
  {
    if (v31 - 3 >= 2)
    {
      if (v31 == 5)
      {
        v59 = type metadata accessor for RDTemplateOperationBatchDeleteCachedPublicTemplates();
        v60 = swift_allocObject();
        *(v60 + 16) = 4;
        *(v60 + 24) = 0;
        *(a3 + 24) = v59;
        *(a3 + 32) = &off_1008EC9D8;
        *a3 = v60;
        return;
      }

      goto LABEL_35;
    }

    v32 = [a1 templateIdentifier];
    if (v32)
    {
      v33 = v32;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v6 + 32))(v13, v9, v5);
      v34 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v36 = [v34 objectIDWithUUID:isa];

      (*(v6 + 8))(v13, v5);
      if (v36)
      {
        v37 = sub_100237C88();
        if (v37)
        {
          v38 = v37;
          v39 = [a1 configurationData];
          if (v39)
          {
            v40 = v39;
            v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            v107 = 0;
            v44 = [v105 fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:&v107];
            v45 = v107;
            if (v44)
            {
              v46 = v44;
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              v47 = v45;
              JSONDecoder.init()();
              type metadata accessor for REMTemplateConfiguration_Codable();
              sub_10058D258(&unk_10094CDE8, &type metadata accessor for REMTemplateConfiguration_Codable, &protocol conformance descriptor for REMTemplateConfiguration_Codable);
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();

              v95 = v107;
              v96 = sub_100237C40();
              if (v96 == 2)
              {
                v97 = type metadata accessor for RDTemplateOperationCopyRemindersFromREMListToTemplate();
                v98 = swift_allocObject();
                *(v98 + 64) = 2;
                *(v98 + 16) = v36;
                *(v98 + 24) = v38;
                *(v98 + 32) = v46;
                *(v98 + 40) = v95;
                v99 = v105;
                *(v98 + 48) = v105;
                *(v98 + 56) = 50;
                v100 = &off_1008EEC30;
              }

              else
              {
                v97 = type metadata accessor for RDTemplateOperationCopyRemindersFromCustomSmartListToTemplate();
                v98 = swift_allocObject();
                *(v98 + 64) = 3;
                *(v98 + 16) = v36;
                *(v98 + 24) = v38;
                *(v98 + 32) = v46;
                *(v98 + 40) = v95;
                v99 = v105;
                *(v98 + 48) = v105;
                *(v98 + 56) = 50;
                v100 = &off_1008E7F38;
              }

              *(a3 + 24) = v97;
              *(a3 + 32) = v100;
              v101 = v99;
              sub_10001BBA0(v41, v43);
              *a3 = v98;
              return;
            }

            v69 = v107;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            if (qword_100936588 != -1)
            {
              swift_once();
            }

            v70 = type metadata accessor for Logger();
            sub_100006654(v70, qword_10094CC80);
            v71 = a1;
            v72 = v36;
            v73 = v38;
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v104 = v43;
              v77 = v76;
              v78 = swift_slowAlloc();
              v105 = v41;
              v79 = v78;
              v103 = swift_slowAlloc();
              v107 = v103;
              *v77 = 136315650;
              v102 = v74;
              v106 = sub_100237C40();
              sub_1000F5104(&qword_10094CDE0, &unk_1007B2508);
              v80 = Optional.descriptionOrNil.getter();
              v82 = v81;
              v83 = sub_10000668C(v80, v81, &v107);
              v82, v84, v85, v86, v87, v88, v89, v90;
              *(v77 + 4) = v83;
              *(v77 + 12) = 2114;
              *(v77 + 14) = v72;
              *(v77 + 22) = 2114;
              *(v77 + 24) = v73;
              *v79 = v36;
              v79[1] = v38;
              v91 = v72;
              v92 = v73;
              v93 = v75;
              v94 = v102;
              _os_log_impl(&_mh_execute_header, v102, v93, "RDTemplateOperationQueue: Cannot create template operation without primary active CloudKit account {operationType: %s, templateObjectID: %{public}@, listObjectID: %{public}@}", v77, 0x20u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              sub_10000607C(v103);

              sub_10001BBA0(v105, v104);
            }

            else
            {
              sub_10001BBA0(v41, v43);
            }

            goto LABEL_35;
          }

          v36 = v38;
        }
      }
    }

LABEL_35:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (v31 == 1)
  {
    v61 = [a1 templateIdentifier];
    if (!v61)
    {
      goto LABEL_35;
    }

    v62 = v61;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v30, v25, v5);
    v63 = objc_opt_self();
    v64 = UUID._bridgeToObjectiveC()().super.isa;
    v65 = [v63 objectIDWithUUID:v64];

    (*(v6 + 8))(v30, v5);
    if (!v65)
    {
      goto LABEL_35;
    }

    v66 = sub_100237C88();
    if (!v66)
    {

      goto LABEL_35;
    }

    v67 = v66;
    v55 = type metadata accessor for RDTemplateOperationCopyRemindersFromTemplateToREMList();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = v65;
    *(v56 + 32) = v67;
    v57 = v105;
    *(v56 + 40) = v105;
    *(v56 + 48) = 50;
    v58 = &off_1008F3760;
  }

  else
  {
    if (v31 != 2)
    {
      goto LABEL_35;
    }

    v48 = [a1 templateIdentifier];
    if (!v48)
    {
      goto LABEL_35;
    }

    v49 = v48;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v21, v17, v5);
    v50 = objc_opt_self();
    v51 = UUID._bridgeToObjectiveC()().super.isa;
    v52 = [v50 objectIDWithUUID:v51];

    (*(v6 + 8))(v21, v5);
    if (!v52)
    {
      goto LABEL_35;
    }

    v53 = sub_100237C88();
    if (!v53)
    {

      goto LABEL_35;
    }

    v54 = v53;
    v55 = type metadata accessor for RDTemplateOperationCopyRemindersFromPublicTemplateToREMList();
    v56 = swift_allocObject();
    *(v56 + 16) = 1;
    *(v56 + 24) = v52;
    *(v56 + 32) = v54;
    v57 = v105;
    *(v56 + 40) = v105;
    *(v56 + 48) = 50;
    v58 = &off_1008EF7C8;
  }

  *(a3 + 24) = v55;
  *(a3 + 32) = v58;
  *a3 = v56;

  v68 = v57;
}

uint64_t sub_10058C2E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 64);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v4, a2, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10058C398(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 64);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(v4, a2, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_10058C448(uint64_t a1, void *a2, void *a3)
{
  v88 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v85 = v10;
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v20 = sub_100013674(qword_1009752E8);
    if (!v20)
    {
      goto LABEL_21;
    }

    v81 = v8;
    v82 = v9;
    v83 = v5;
    v84 = v4;
    v86 = v20;
    v21 = sub_100426AE4(&off_1008E3D68, 0, 1);
    type metadata accessor for REMCDTemplateOperationQueueItem();
    v22 = [objc_allocWithZone(NSFetchRequest) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [ObjCClassFromMetadata entity];
    [v22 setEntity:v24];

    [v22 setAffectedStores:0];
    [v22 setPredicate:v21];

    v51 = NSManagedObjectContext.count<A>(for:)();
    if (v51 > 0)
    {

      return;
    }

    v52 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:a2];
    [v52 setAccount:v86];
    [v52 setOperationTypeRawValue:5];
    [v52 setPriorityRawValue:10];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v17, v13);
    [v52 setCreationDate:isa];

    aBlock[0] = 0;
    if ([a2 save:aBlock])
    {
      v54 = qword_100936588;
      v55 = aBlock[0];
      if (v54 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100006654(v56, qword_10094CC80);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock[0] = v60;
        *v59 = 136315138;
        v61 = sub_1001424F8(v88);
        v63 = v62;
        v64 = sub_10000668C(v61, v62, aBlock);
        v63, v65, v66, v67, v68, v69, v70, v71;
        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v57, v58, "%s: Inserted template operation queue item for batch deleting cached public templates", v59, 0xCu);
        sub_10000607C(v60);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v72 = *(v19 + 64);
        ObjectType = swift_getObjectType();
        (*(v72 + 32))(v19, v52, ObjectType, v72);
        swift_unknownObjectRelease();
      }

      v88 = *(v19 + 88);
      v74 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_10058D408;
      aBlock[5] = v74;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008F8008;
      v75 = _Block_copy(aBlock);

      v76 = v87;
      static DispatchQoS.unspecified.getter();
      v90 = &_swiftEmptyArrayStorage;
      sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
      v77 = v81;
      v78 = v84;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v75);

      (*(v83 + 8))(v77, v78);
      (*(v85 + 8))(v76, v82);

LABEL_21:

      return;
    }

    v79 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094CC80);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v28 = 136315394;
      aBlock[0] = v88;
      swift_getMetatypeMetadata();
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = sub_10000668C(v29, v30, &v90);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      swift_getErrorValue();
      v40 = Error.rem_errorDescription.getter();
      v42 = v41;
      v43 = sub_10000668C(v40, v41, &v90);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v28 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s: Failed to insert template operation queue item for batch deleting cached public templates {error: %{public}s}", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10058CD74(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10058848C(0);
  }

  return result;
}

id sub_10058CE54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDTemplateOperationQueue.BabysitTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10058CE8C()
{
  sub_10000607C((v0 + 16));
  sub_1000536E0(v0 + 56);

  *(v0 + 104), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();
  *(v0 + 136), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 152), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 168), v22, v23, v24, v25, v26, v27, v28;

  return v0;
}

uint64_t sub_10058CF04()
{
  sub_10058CE8C();

  return swift_deallocClassInstance();
}

uint64_t sub_10058CF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10094CDD0, &unk_1007B24F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10058CFF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v22 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + 120);
    *(v13 + 120) = 0;
    sub_100588B48(v14);
  }

  if (qword_100936588 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094CC80);
  (*(v4 + 16))(v11, a2, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v4 + 8);
    v21(v7, v3);
    v21(v11, v3);
    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "RDTemplateOperationQueue: Finished handling template operation queue items {elapsedSeconds: %f}", v18, 0xCu);
  }

  else
  {

    (*(v4 + 8))(v11, v3);
  }
}

uint64_t sub_10058D258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10058D2A0()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1005892C0(v4, v0 + v2, v6, v7, v9, v10);
}

void sub_10058D36C()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10058CFF0(v2, v3);
}

uint64_t sub_10058D440(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (static Array<A>.== infix(_:_:)() & 1) != 0 && (type metadata accessor for Array(), swift_getWitnessTable(), (static Dictionary<>.== infix(_:_:)()) && (static Dictionary<>.== infix(_:_:)() & 1) != 0 && (static Dictionary<>.== infix(_:_:)())
  {
    v6 = static Set.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10058D590(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_10058D65C(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  v7 = (*(v5 + 80) | *(v4 + 80));
  if (v7 > 7 || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 + 16) & ~v7));

    return v3;
  }

  v11 = *(a2 + v6);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v6 <= 3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_24:
      v15 = (v14 | (v12 << (8 * v6))) + 2;
      v11 = v14 + 2;
      if (v6 < 4)
      {
        v11 = v15;
      }

      goto LABEL_26;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v11 == 1)
  {
    (*(v5 + 16))(a1);
    *(v3 + v6) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v6) = 0;
  }

  return v3;
}

uint64_t sub_10058D818(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 24) - 8;
  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v4 = *(*(*(a2 + 16) - 8) + 64);
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_17:
  if (v5 == 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = *(*(a2 + 16) - 8);
  }

  return (*(v10 + 8))();
}

uint64_t sub_10058D93C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 16))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *sub_10058DA98(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = a2[v9];
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (a2[2] << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 16))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_10058DCA8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 32))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *sub_10058DE04(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = a2[v9];
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (a2[2] << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 32))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_10058E014(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10058E13C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_10058E304(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_10058E3B4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v5 = *(*(a3 + 24) - 8);
    if (*(v5 + 64) <= *(*(*(a3 + 16) - 8) + 64))
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = *(v5 + 64);
    }

    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    v3 = *(*(a3 + 24) - 8);
    v4 = *(*(*(a3 + 16) - 8) + 64);
    if (*(v3 + 64) > v4)
    {
      v4 = *(v3 + 64);
    }

    a1[v4] = a2;
  }
}

uint64_t sub_10058E510()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CF30);
  v1 = sub_100006654(v0, qword_10094CF30);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10058E5D8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_100590608;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F8228;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13[1] = &_swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_10058E85C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100936598 == -1)
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
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094CF30);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "ICCCU: Starting ICCloudConfigurationUpdater", v13, 2u);
  }

  sub_10058EA24(v14, v15);
}

void sub_10058EA24(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1, a2);
  v45 = &v38 - v5;
  v7 = *(v6 + 88);
  v43 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = type metadata accessor for Optional();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46, v9);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v38 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + 3);
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
  v42 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v22 = v7;
  v23 = *(*v2 + 120);
  swift_beginAccess();
  v24 = v46;
  (*(v8 + 16))(v14, &v2[v23], v46);
  v25 = *(AssociatedTypeWitness - 8);
  v26 = (*(v25 + 48))(v14, 1);
  (*(v8 + 8))(v14, v24);
  if (v26 == 1)
  {
    (*(v4 + 16))(v45, &v2[*(*v2 + 128)], v3);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v3;
    v28[3] = v22;
    v28[4] = v27;
    v41 = v8;
    v29 = v43;
    v39 = *(v43 + 24);

    v40 = v23;
    v30 = v44;
    v31 = v2;
    v32 = v45;
    v39(v42, sub_10059060C, v28, v3, v29);

    (*(v4 + 8))(v32, v3);

    (*(v25 + 56))(v30, 0, 1, AssociatedTypeWitness);
    v33 = v40;
    swift_beginAccess();
    (*(v41 + 40))(&v31[v33], v30, v46);
    swift_endAccess();
    sub_10058F910();
    return;
  }

  if (qword_100936598 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_10094CF30);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "ICCCU: Unexpectedly having an existing non-nil scheduler (xpcActivity) when trying to create and schedule a new one", v37, 2u);
  }
}

id sub_10058EF8C()
{
  if (qword_100936598 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094CF30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ICCCU: Running scheduled background activity, let's check if we should download remote cloud configuration file", v3, 2u);
  }

  return sub_10058F078();
}

id sub_10058F078()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v1 - 8, v2);
  v82 = &v76[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4, v5);
  v7 = &v76[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v80 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12, v13);
  v15 = &v76[-v14];
  __chkstk_darwin(v16, v17);
  v19 = &v76[-v18];
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v76[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = v0[3];
  *v25 = v26;
  (*(v21 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v20, v23);
  v27 = v26;
  ObjectType = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v25, v20);
  if ((ObjectType & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v81 = v0[2];
  [v81 cloudConfigurationDownloadThrottleInterval];
  v30 = v29;
  v20 = v0[5];
  ObjectType = swift_getObjectType();
  (*(v20 + 8))(ObjectType, v20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1001AAD5C(v7);
    if (qword_100936598 == -1)
    {
LABEL_4:
      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_10094CF30);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "ICCCU: lastCloudConfigurationDownload == nil, downloading remote config", v34, 2u);
      }

LABEL_7:
      v35 = v82;
      Date.init()();
      (*(v9 + 56))(v35, 0, 1, v8);
      (*(v20 + 16))(v35, ObjectType, v20);
      return [v81 downloadRemoteConfiguration];
    }

LABEL_20:
    swift_once();
    goto LABEL_4;
  }

  v37 = v19;
  (*(v9 + 32))(v19, v7, v8);
  Date.timeIntervalSinceNow.getter();
  if (v38 < -v30)
  {
    if (qword_100936598 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_10094CF30);
    (*(v9 + 16))(v15, v19, v8);
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83 = v80;
      *v42 = 136446722;
      sub_100054724(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v78 = v40;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v41;
      v45 = v44;
      v46 = v15;
      v47 = *(v9 + 8);
      v79 = v37;
      v47(v46, v8);
      v48 = sub_10000668C(v43, v45, &v83);
      v45, v49, v50, v51, v52, v53, v54, v55;
      *(v42 + 4) = v48;
      *(v42 + 12) = 1040;
      *(v42 + 14) = 3;
      *(v42 + 18) = 2048;
      *(v42 + 20) = v30;
      v56 = v78;
      _os_log_impl(&_mh_execute_header, v78, v77, "ICCCU: lastCloudConfigurationDownload > configurationInterval, should download remote config {lastCloudConfigurationDownload: %{public}s, throttingInterval: %.*f}", v42, 0x1Cu);
      sub_10000607C(v80);

      v47(v79, v8);
    }

    else
    {

      v74 = *(v9 + 8);
      v74(v15, v8);
      v74(v19, v8);
    }

    goto LABEL_7;
  }

  if (qword_100936598 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100006654(v57, qword_10094CF30);
  v58 = v80;
  (*(v9 + 16))(v80, v19, v8);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = v82;
    *v61 = 136446722;
    sub_100054724(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = *(v9 + 8);
    v65(v58, v8);
    v66 = sub_10000668C(v62, v64, &v83);
    v64, v67, v68, v69, v70, v71, v72, v73;
    *(v61 + 4) = v66;
    *(v61 + 12) = 1040;
    *(v61 + 14) = 3;
    *(v61 + 18) = 2048;
    *(v61 + 20) = v30;
    _os_log_impl(&_mh_execute_header, v59, v60, "ICCCU: lastCloudConfigurationDownload < throttingInterval, not downloading remote config {lastCloudConfigurationDownload: %{public}s, throttingInterval: %.*f}", v61, 0x1Cu);
    sub_10000607C(v82);

    return v65(v19, v8);
  }

  else
  {

    v75 = *(v9 + 8);
    v75(v58, v8);
    return v75(v19, v8);
  }
}

uint64_t sub_10058F8B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10058EF8C();
  }

  return result;
}

void sub_10058F910()
{
  v1 = *v0;
  v36 = *(*v0 + 88);
  v2 = *(v1 + 80);
  v37 = *(v36 + 8);
  v38 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v35 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v10, v11);
  v39 = &v35 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v0[3];
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13, v16);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = *(*v0 + 120);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v21, v4);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v8, v4);
    if (qword_100936598 == -1)
    {
LABEL_4:
      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094CF30);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "ICCCU: Unexpectedly could not create an background scheduler (xpcActivity) when trying to schedule a new one", v25, 2u);
      }

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v26 = v39;
  (*(v9 + 32))(v39, v8, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness))
  {
    if (qword_100936598 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094CF30);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "ICCCU: Unexpectedly having pending activity on the background scheduler (xpcActivity) when trying to create and schedule a new one", v31, 2u);
    }
  }

  else
  {
    [v0[2] cloudConfigurationDownloadThrottleInterval];
    v33 = v32;
    v34 = swift_getAssociatedConformanceWitness();
    (*(v34 + 24))(AssociatedTypeWitness, v34, v33);
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  (*(v9 + 8))(v26, AssociatedTypeWitness);
}

id *sub_10058FE60()
{
  v1 = *v0;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2 = *(*v0 + 15);
  v3 = v1[10];
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  (*(*(v3 - 8) + 8))(v0 + *(*v0 + 16), v3);
  return v0;
}

uint64_t sub_10058FF80()
{
  sub_10058FE60();

  return swift_deallocClassInstance();
}

uint64_t sub_10058FFFC@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 lastCloudConfigurationDownload];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1005900A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v2 setLastCloudConfigurationDownload:?];
}

uint64_t sub_100590198(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1005902C8()
{
  v1 = v0;
  sub_100462F2C(0.0, 1.0);
  v2 = *(v0 + 16);
  v4 = v3 + 1.0;
  if (qword_100936598 != -1)
  {
    swift_once();
  }

  v5 = v2 * v4;
  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094CF30);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(v1 + 16);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "ICCCU-XPCActivity: Updating scheduler (xpcActivity) criteria {inputDelay: %f, randomizedDelay: %f}", v9, 0x16u);
  }

  v10 = sub_10039363C(&off_1008E36A0);
  v18 = xmmword_1007AA870;
  v19 = v5;
  v20 = 0;
  v21 = 0;
  v22 = 65537;
  v23 = 0;
  v24 = 0x4024000000000000;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 33619969;
  v29 = 7;
  v30 = v10;
  sub_1005A46AC(&v18);

  v10, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_10059047C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10059052C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for RDICCloudConfigurationUpdaterXPCActivity();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v10 = a1;

  v11 = sub_1005A9A28(1u, sub_1000FCE88, v9);

  *(v8 + 24) = v11;
  *a4 = v8;
  return result;
}

uint64_t sub_10059062C@<X0>(void *a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, uint64_t a3@<X8>)
{
  v148 = a1;
  v141 = a3;
  v133 = type metadata accessor for NSFastEnumerationIterator();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133, v4);
  v152 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v140 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v144 = (&v129 - v11);
  __chkstk_darwin(v12, v13);
  v147 = &v129 - v14;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v15 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v16);
  v18 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v19 - 8, v20);
  v139 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v138 = &v129 - v24;
  __chkstk_darwin(v25, v26);
  v137 = &v129 - v27;
  __chkstk_darwin(v28, v29);
  v146 = &v129 - v30;
  __chkstk_darwin(v31, v32);
  v136 = &v129 - v33;
  __chkstk_darwin(v34, v35);
  v37 = &v129 - v36;
  __chkstk_darwin(v38, v39);
  v134 = &v129 - v40;
  __chkstk_darwin(v41, v42);
  v135 = &v129 - v43;
  __chkstk_darwin(v44, v45);
  v47 = &v129 - v46;
  __chkstk_darwin(v48, v49);
  v51 = &v129 - v50;
  __chkstk_darwin(v52, v53);
  v55 = &v129 - v54;
  v56 = type metadata accessor for UUID();
  v57 = *(*(v56 - 8) + 56);
  v143 = v55;
  v57(v55, 1, 1, v56);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v154 = a2;
  LOBYTE(v55) = sub_100240F04(v18, a2);
  v58 = *(v15 + 8);
  v142 = v18;
  v153 = v15 + 8;
  v58(v18, PredicateType);
  v150 = v37;
  v145 = v47;
  v149 = v58;
  if (v55)
  {
    v131 = v57;
    v59 = [v148 identifier];
    if (v59)
    {
      v60 = v59;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    v62 = v143;
    sub_1000050A4(v143, &unk_100939D90, "8\n\r");
    v57 = v131;
    v131(v51, v61, 1, v56);
    sub_100031B58(v51, v62, &unk_100939D90, "8\n\r");
    v47 = v145;
    v58 = v149;
  }

  v57(v47, 1, 1, v56);
  v63 = v142;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
  v64 = sub_100240F04(v63, v154);
  v58(v63, PredicateType);
  v65 = v148;
  v66 = v146;
  v67 = v57;
  v68 = v150;
  if (v64)
  {
    v69 = [v148 list];
    if (v69)
    {
      v70 = v69;
      v71 = [v69 identifier];

      v72 = v135;
      if (v71)
      {
        v73 = v134;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = 0;
      }

      else
      {
        v74 = 1;
        v73 = v134;
      }

      v75 = v145;
      sub_1000050A4(v145, &unk_100939D90, "8\n\r");
      v67(v73, v74, 1, v56);
      sub_100031B58(v73, v72, &unk_100939D90, "8\n\r");
      v65 = v148;
      v68 = v150;
    }

    else
    {
      v75 = v145;
      sub_1000050A4(v145, &unk_100939D90, "8\n\r");
      v72 = v135;
      v67(v135, 1, 1, v56);
    }

    sub_100031B58(v72, v75, &unk_100939D90, "8\n\r");
    v66 = v146;
  }

  v67(v68, 1, 1, v56);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
  v76 = sub_100240F04(v63, v154);
  v58(v63, PredicateType);
  v77 = v144;
  if (v76)
  {
    v78 = [v65 account];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 identifier];

      if (v80)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v81 = 0;
      }

      else
      {
        v81 = 1;
      }

      sub_1000050A4(v68, &unk_100939D90, "8\n\r");
      v67(v66, v81, 1, v56);
      v82 = v136;
      sub_100031B58(v66, v136, &unk_100939D90, "8\n\r");
      v77 = v144;
    }

    else
    {
      sub_1000050A4(v68, &unk_100939D90, "8\n\r");
      v82 = v136;
      v67(v136, 1, 1, v56);
    }

    sub_100031B58(v82, v68, &unk_100939D90, "8\n\r");
  }

  v83 = type metadata accessor for Date();
  v84 = *(*(v83 - 8) + 56);
  v84(v147, 1, 1, v83);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v85 = sub_100240F04(v63, v154);
  v86 = PredicateType;
  v149(v63, PredicateType);
  if (v85 & 1) != 0 || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter(), v87 = sub_100240F04(v63, v154), v149(v63, v86), (v87))
  {
    v88 = [v65 displayDateDate];
    if (v88)
    {
      v89 = v88;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v147;
    sub_1000050A4(v147, &unk_100938850, qword_100795AE0);
    v84(v77, v90, 1, v83);
    sub_100031B58(v77, v91, &unk_100938850, qword_100795AE0);
    LODWORD(v136) = [v65 displayDateIsAllDay];
    v135 = [v65 displayDateUpdatedForSecondsFromGMT];
    LODWORD(v134) = 0;
    v86 = PredicateType;
  }

  else
  {
    v135 = 0;
    LODWORD(v136) = 2;
    LODWORD(v134) = 1;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
  v92 = sub_100240F04(v63, v154);
  v93 = v86;
  v94 = v149;
  v149(v63, v86);
  v95 = v150;
  if ((v92 & 1) != 0 && (v96 = [v65 alarmStorage]) != 0)
  {
    v165 = &_swiftEmptyArrayStorage;
    v131 = v96;
    NSOrderedSet.makeIterator()();
    v97 = sub_1002FF4DC();
    v98 = v133;
    dispatch thunk of IteratorProtocol.next()();
    if (v164)
    {
      v130 = 0;
      v144 = &_swiftEmptyArrayStorage;
      v99 = &unk_100938870;
      v146 = v97;
      while (1)
      {
        sub_100005EE0(&v163, &v162);
        sub_100005EF0(&v162, &v159);
        sub_1000060C8(0, v99, off_1008D4128);
        if (swift_dynamicCast())
        {
          v100 = v99;
          v101 = v156;
          v102 = [v101 remObjectID];
          if (!v102)
          {

            goto LABEL_50;
          }

          v103 = v102;
          v104 = [v101 account];

          if (!v104)
          {

            goto LABEL_50;
          }

          v105 = [v104 remObjectID];

          if (!v105)
          {

            goto LABEL_49;
          }

          v106 = [v101 trigger];
          if (!v106)
          {

            v158 = 0;
            v156 = 0u;
            v157 = 0u;
            goto LABEL_48;
          }

          v155 = v106;
          sub_1000060C8(0, &unk_100940330, off_1008D4148);
          sub_1000F5104(&qword_10093D488, &qword_10079AF40);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v158 = 0;
            v156 = 0u;
            v157 = 0u;
LABEL_47:

LABEL_48:
            sub_1000050A4(&v156, &qword_10093D490, &qword_10079AF48);
LABEL_49:
            v95 = v150;
LABEL_50:
            v99 = v100;
            goto LABEL_51;
          }

          if (!*(&v157 + 1))
          {
            goto LABEL_47;
          }

          sub_100054B6C(&v156, &v159);
          v107 = v160;
          v108 = v161;
          sub_10000F61C(&v159, v160);
          v109 = v130;
          v110 = (*(v108 + 8))(v105, v103, v107, v108);
          if (!v109)
          {
            v144 = v110;
            v130 = 0;

            sub_10000607C(&v159);
            sub_10000607C(&v162);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v93 = PredicateType;
            v98 = v133;
            if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v98 = v133;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v144 = v165;
            v95 = v150;
            v99 = v100;
            goto LABEL_52;
          }

          sub_10000607C(&v159);
          v130 = 0;
          v95 = v150;
          v93 = PredicateType;
          v98 = v133;
          v99 = v100;
        }

LABEL_51:
        sub_10000607C(&v162);
LABEL_52:
        dispatch thunk of IteratorProtocol.next()();
        if (!v164)
        {
          goto LABEL_59;
        }
      }
    }

    v144 = &_swiftEmptyArrayStorage;
LABEL_59:

    (*(v132 + 8))(v152, v98);
    v65 = v148;
    v94 = v149;
    v111 = v144;
  }

  else
  {
    v111 = 0;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  v112 = sub_100240F04(v63, v154);
  v113 = v93;
  v94(v63, v93);
  v144 = v111;
  if (v112)
  {
    result = [v65 priority];
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v146 = REMReminderPriorityLevelForPriority();
  }

  else
  {
    v146 = 0;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
  v115 = sub_100240F04(v63, v154);
  v94(v63, v113);
  if (v115)
  {
    v116 = [v65 flagged] > 0;
  }

  else
  {
    v116 = 2;
  }

  LODWORD(v133) = v116;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter();
  v117 = v154;
  v118 = sub_100240F04(v63, v154);
  v117, v119, v120, v121, v122, v123, v124, v125;
  v94(v63, v113);
  LODWORD(v152) = v112;
  if (v118)
  {
    LODWORD(v154) = [v65 completed];
  }

  else
  {
    LODWORD(v154) = 2;
  }

  v126 = v143;
  sub_100010364(v143, v137, &unk_100939D90, "8\n\r");
  v127 = v145;
  sub_100010364(v145, v138, &unk_100939D90, "8\n\r");
  sub_100010364(v95, v139, &unk_100939D90, "8\n\r");
  v128 = v147;
  sub_100010364(v147, v140, &unk_100938850, qword_100795AE0);
  REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(identifier:listIdentifier:accountIdentifier:displayDateDate:displayDateIsAllDay:displayDateSecondsFromGMT:alarmTriggers:priority:flagged:completed:)();

  sub_1000050A4(v128, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v95, &unk_100939D90, "8\n\r");
  sub_1000050A4(v127, &unk_100939D90, "8\n\r");
  return sub_1000050A4(v126, &unk_100939D90, "8\n\r");
}

uint64_t sub_1005917D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D1A0);
  v1 = sub_100006654(v0, qword_10094D1A0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005918A0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_opt_self() newCloudContainerWithPublicCloudDatabase];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_10059190C(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void, __n128), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v107 = a7;
  v108 = a8;
  v104 = a2;
  v105 = a9;
  v106 = a6;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v103 - v21;
  __chkstk_darwin(v23, v24);
  v26 = &v103 - v25;
  if (a3)
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10094D1A0);
    (*(v15 + 16))(v18, a5, v14);
    v28 = a1;
    v29 = v104;
    sub_100066F20(v104, 1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    sub_100067078(v29, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v109 = v103;
      v110 = a10;
      *v32 = 136446978;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, &v109);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v44 = [v28 recordName];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = sub_10000668C(v45, v47, &v109);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v32 + 14) = v48;
      *(v32 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = *(v15 + 8);
      v58(v22, v14);
      v58(v18, v14);
      *(v32 + 24) = v57;
      *(v32 + 32) = 2082;
      swift_getErrorValue();
      v59 = Error.rem_errorDescription.getter();
      v61 = v60;
      v62 = sub_10000668C(v59, v60, &v109);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v32 + 34) = v62;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: [perRecordSaveBlock] Failed to save CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v32, 0x2Au);
      swift_arrayDestroy();

      v29 = v104;
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v101 = v29;
    v102 = 1;
  }

  else
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100006654(v70, qword_10094D1A0);
    (*(v15 + 16))(v26, a5, v14);
    v71 = a4;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v109 = v104;
      v110 = a10;
      *v74 = 136446722;
      swift_getMetatypeMetadata();
      v75 = String.init<A>(describing:)();
      v77 = v76;
      v78 = sub_10000668C(v75, v76, &v109);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v86 = [v71 recordName];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = sub_10000668C(v87, v89, &v109);
      v89, v91, v92, v93, v94, v95, v96, v97;
      *(v74 + 14) = v90;
      *(v74 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v99 = v98;
      v100 = *(v15 + 8);
      v100(v22, v14);
      v100(v26, v14);
      *(v74 + 24) = v99;
      _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: Did save CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v74, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v15 + 8))(v26, v14);
    }

    v101 = 0;
    v102 = 0;
  }

  sub_100592A54(v101, v102, v106, v107, v108, v105, sub_1002119C4);
}

void sub_100591F1C(objc_class *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6, double a7)
{
  v172 = a5;
  v173 = a6;
  v171 = a2;
  v174 = a1;
  v11 = *v7;
  v176 = type metadata accessor for Date();
  v12 = *(v176 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v176, v14);
  __chkstk_darwin(v15, v16);
  v18 = &v151 - v17;
  v21 = __chkstk_darwin(v19, v20);
  v23 = &v151 - v22;
  v24 = (*(v7 + 16))(v21);
  if (v24)
  {
    v167 = a3;
    v162 = a4;
    v163 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v169 = v12;
    v170 = v11;
    v164 = v18;
    v175 = v23;
    v178 = *(*(v7 + 32) + 48);
    __chkstk_darwin(v24, v25);
    v160 = v26;
    *(&v151 - 2) = v26;
    *(&v151 - 1) = 1;
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    v168 = swift_allocObject();
    *(v168 + 16) = 0;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_100006654(v27, qword_10094D1A0);
    v29 = v174;
    v161 = v28;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *v32 = 136446466;
      v178 = v170;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, &v177);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v44 = [(objc_class *)v29 recordName];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = sub_10000668C(v45, v47, &v177);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v32 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: Will delete CKRecord for publicCloudObject {recordName: %{public}s}", v32, 0x16u);
      swift_arrayDestroy();
    }

    v56 = v175;
    Date.init()();
    v57 = sub_1005918A0();
    sub_1000060C8(0, &qword_10094D268, CKModifyRecordsOperation_ptr);
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v58 = swift_allocObject();
    v59 = v58;
    *(v58 + 16) = xmmword_1007953F0;
    *(v58 + 32) = v29;
    v60 = v29;
    v181.value._rawValue = 0;
    v181.is_nil = v59;
    v61 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v181, v182).super.super.super.super.isa;
    [(objc_class *)v61 setQualityOfService:17];
    [(objc_class *)v61 setQueuePriority:0];

    v62 = v61;
    v63 = [v57 publicCloudDatabase];
    [(objc_class *)v62 setDatabase:v63];

    v64 = v62;
    v65 = [(objc_class *)v64 configuration];
    if (v65)
    {
      v66 = v65;
      [v65 setContainer:v57];

      v67 = [(objc_class *)v64 configuration];
      v68 = v164;
      if (v67)
      {
        v69 = v67;
        v159 = v57;
        [v67 setTimeoutIntervalForRequest:a7];

        v70 = [(objc_class *)v64 configuration];
        v174 = v64;
        if (v70)
        {
          v71 = v70;
          [v70 setTimeoutIntervalForResource:a7];

          v72 = v169;
          v73 = *(v169 + 16);
          v165 = v169 + 16;
          v166 = v73;
          v73(v68, v56, v176);
          v74 = *(v72 + 80);
          v155 = (v74 + 24) & ~v74;
          v75 = (v13 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
          v157 = v75;
          v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
          v158 = v76;
          v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
          v156 = v77;
          v152 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
          v78 = swift_allocObject();
          *(v78 + 16) = v60;
          v154 = *(v72 + 32);
          v154(v78 + ((v74 + 24) & ~v74), v68, v176);
          v79 = v167;
          v80 = v168;
          *(v78 + v75) = v168;
          v81 = (v78 + v76);
          v82 = v162;
          *v81 = v79;
          v81[1] = v82;
          v83 = v160;
          *(v78 + v77) = v160;
          v84 = v60;
          v85 = v170;
          v86 = v152;
          *(v78 + v152) = v170;
          v153 = v84;

          CKModifyRecordsOperation.perRecordDeleteBlock.setter();
          v166(v68, v175, v176);
          v87 = swift_allocObject();
          v88 = v153;
          *(v87 + 16) = v153;
          v89 = v176;
          v154(v87 + v155, v68, v176);
          *(v87 + v157) = v80;
          v90 = (v87 + v158);
          v91 = v175;
          *v90 = v167;
          v90[1] = v82;
          *(v87 + v156) = v83;
          *(v87 + v86) = v85;
          v92 = v88;

          v93 = v91;

          v94 = v174;
          CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
          v178 = 0x6574656C6544;
          v179 = 0xE600000000000000;
          v95._countAndFlagsBits = (*(v173 + 24))(v172);
          object = v95._object;
          String.append(_:)(v95);
          object, v97, v98, v99, v100, v101, v102, v103;
          v104 = v179;
          v105 = [objc_allocWithZone(CKOperationGroup) init];
          v106 = String._bridgeToObjectiveC()();
          v104, v107, v108, v109, v110, v111, v112, v113;
          [v105 setName:v106];

          [v105 setQuantity:1];
          [v105 setExpectedSendSize:1];
          [v105 setExpectedReceiveSize:1];
          [(objc_class *)v94 setGroup:v105];

          v114 = v163;
          v166(v163, v93, v89);
          v115 = v92;
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            *v118 = 136446722;
            v178 = v170;
            swift_getMetatypeMetadata();
            v119 = String.init<A>(describing:)();
            v121 = v120;
            v122 = sub_10000668C(v119, v120, &v177);
            v121, v123, v124, v125, v126, v127, v128, v129;
            *(v118 + 4) = v122;
            *(v118 + 12) = 2082;
            v130 = [v115 recordName];
            v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v133 = v132;

            v134 = sub_10000668C(v131, v133, &v177);
            v133, v135, v136, v137, v138, v139, v140, v141;
            *(v118 + 14) = v134;
            *(v118 + 22) = 2048;
            v142 = v89;
            v143 = v164;
            Date.init()();
            Date.timeIntervalSince(_:)();
            v145 = v144;
            v146 = *(v169 + 8);
            v147 = v143;
            v89 = v142;
            v146(v147, v142);
            v146(v114, v142);
            *(v118 + 24) = v145;
            _os_log_impl(&_mh_execute_header, v116, v117, "%{public}s: Deleting CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v118, 0x20u);
            swift_arrayDestroy();

            v94 = v174;
            v93 = v175;
          }

          else
          {

            v146 = *(v169 + 8);
            v146(v114, v89);
          }

          v149 = v159;
          v150 = [v159 publicCloudDatabase];
          [v150 addOperation:v94];

          v146(v93, v89);

          return;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v176 = [objc_opt_self() internetNotReachableError];
  a3();
  v148 = v176;
}

void sub_100592A54(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    v11 = (a4)(a1, a2 & 1);
    __chkstk_darwin(v11, v12);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
  }
}

void sub_100592B6C(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void, __n128), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v107 = a7;
  v108 = a8;
  v104 = a2;
  v105 = a9;
  v106 = a6;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v103 - v21;
  __chkstk_darwin(v23, v24);
  v26 = &v103 - v25;
  if (a3)
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10094D1A0);
    (*(v15 + 16))(v18, a5, v14);
    v28 = a1;
    v29 = v104;
    sub_100138D40(v104, 1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    sub_100138D4C(v29, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v109 = v103;
      v110 = a10;
      *v32 = 136446978;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, &v109);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v44 = [v28 recordName];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = sub_10000668C(v45, v47, &v109);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v32 + 14) = v48;
      *(v32 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = *(v15 + 8);
      v58(v22, v14);
      v58(v18, v14);
      *(v32 + 24) = v57;
      *(v32 + 32) = 2082;
      swift_getErrorValue();
      v59 = Error.rem_errorDescription.getter();
      v61 = v60;
      v62 = sub_10000668C(v59, v60, &v109);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v32 + 34) = v62;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: [perRecordDeleteBlock] Failed to delete CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v32, 0x2Au);
      swift_arrayDestroy();

      v29 = v104;
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v101 = v29;
    v102 = 1;
  }

  else
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100006654(v70, qword_10094D1A0);
    (*(v15 + 16))(v26, a5, v14);
    v71 = a4;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v109 = v104;
      v110 = a10;
      *v74 = 136446722;
      swift_getMetatypeMetadata();
      v75 = String.init<A>(describing:)();
      v77 = v76;
      v78 = sub_10000668C(v75, v76, &v109);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v86 = [v71 recordName];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = sub_10000668C(v87, v89, &v109);
      v89, v91, v92, v93, v94, v95, v96, v97;
      *(v74 + 14) = v90;
      *(v74 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v99 = v98;
      v100 = *(v15 + 8);
      v100(v22, v14);
      v100(v26, v14);
      *(v74 + 24) = v99;
      _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: Did delete CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v74, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v15 + 8))(v26, v14);
    }

    v101 = 0;
    v102 = 0;
  }

  sub_100592A54(v101, v102, v106, v107, v108, v105, sub_1002119C4);
}

void sub_10059317C(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, __n128), uint64_t a7, uint64_t a8, uint64_t a9, const char *a10, uint64_t a11)
{
  v75 = a5;
  v76 = a6;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = &v69 - v24;
  if (a2)
  {
    v73 = a11;
    v74 = a7;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10094D1A0);
    (*(v18 + 16))(v25, a4, v17);
    v27 = a3;
    sub_100138D40(a1, 1);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v71 = a10;
      v70 = v29;
      v30 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v77[0] = v69;
      v77[1] = a9;
      *v30 = 136446978;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v34 = sub_10000668C(v31, v32, v77);
      v72 = a8;
      v35 = v34;
      v33, v36, v37, v38, v39, v40, v41, v42;
      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v43 = [v27 recordName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, v77);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v30 + 14) = v47;
      *(v30 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v56 = v55;
      v57 = *(v18 + 8);
      v57(v21, v17);
      v57(v25, v17);
      *(v30 + 24) = v56;
      *(v30 + 32) = 2082;
      swift_getErrorValue();
      v58 = Error.rem_errorDescription.getter();
      v60 = v59;
      v61 = sub_10000668C(v58, v59, v77);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v30 + 34) = v61;
      a8 = v72;
      _os_log_impl(&_mh_execute_header, v28, v70, v71, v30, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v18 + 8))(v25, v17);
    }

    sub_100592A54(a1, 1, v75, v76, v74, a8, v73);
  }
}

id sub_10059352C(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v183 = a2;
  v184 = a6;
  v182 = a1;
  v185 = *v7;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v187 = a5;
  v12 = type metadata accessor for Result();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = (v169 - v15);
  v189 = type metadata accessor for Date();
  v17 = *(v189 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v189, v19);
  v180 = v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v186 = v169 - v22;
  v25 = __chkstk_darwin(v23, v24);
  v27 = v169 - v26;
  v28 = (*(v7 + 16))(v25);
  if ((v28 & 1) == 0)
  {
    *v16 = [objc_opt_self() internetNotReachableError];
    swift_storeEnumTagMultiPayload();
    a3(v16);
    return (*(v13 + 8))(v16, v12);
  }

  v177 = a3;
  v178 = a4;
  v181 = v17;
  v188 = v27;
  v191 = *(*(v7 + 32) + 48);
  __chkstk_darwin(v28, v29);
  v176 = v30;
  v169[-2] = v30;
  v169[-1] = 1;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  v179 = swift_allocObject();
  *(v179 + 16) = 0;
  if (qword_1009365A0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100006654(v31, qword_10094D1A0);
  v33 = v182;
  v173 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    *v36 = 136446466;
    v191 = v185;
    swift_getMetatypeMetadata();
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = sub_10000668C(v37, v38, &v190);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v48 = [v33 recordName];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = sub_10000668C(v49, v51, &v190);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v36 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: Will fetch publicCloudObject from public cloud database {recordName: %{public}s}", v36, 0x16u);
    swift_arrayDestroy();
  }

  v60 = v188;
  v61 = v181;
  Date.init()();
  v62 = sub_1005918A0();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1007953F0;
  *(v63 + 32) = v33;
  v64 = objc_allocWithZone(CKFetchRecordsOperation);
  sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
  v65 = v33;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v63, v67, v68, v69, v70, v71, v72, v73;
  v74 = [v64 initWithRecordIDs:isa];

  v75 = v74;
  [v75 setQualityOfService:17];
  [v75 setQueuePriority:8];

  v76 = v75;
  v77 = [v62 publicCloudDatabase];
  [v76 setDatabase:v77];

  v78 = v76;
  result = [v78 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v80 = result;
  [result setContainer:v62];

  result = [v78 configuration];
  v81 = v186;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v82 = result;
  v171 = v65;
  v172 = v62;
  [result setTimeoutIntervalForRequest:a7];

  result = [v78 configuration];
  v182 = v78;
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v83 = result;
  [result setTimeoutIntervalForResource:a7];

  v84 = *(v61 + 16);
  v174 = v61 + 16;
  v175 = v84;
  v84(v81, v60, v189);
  v85 = *(v61 + 80);
  v86 = (v85 + 32) & ~v85;
  v170 = v18 + 7;
  v87 = (v18 + 7 + v86) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  v93 = v184;
  *(v92 + 16) = v187;
  *(v92 + 24) = v93;
  v169[0] = *(v61 + 32);
  v169[1] = v61 + 32;
  v94 = v92 + v86;
  v95 = v186;
  (v169[0])(v94, v186, v189);
  *(v92 + v87) = v183;
  v96 = v171;
  *(v92 + v88) = v171;
  v97 = v179;
  *(v92 + v89) = v179;
  v98 = (v92 + v90);
  v99 = v178;
  *v98 = v177;
  v98[1] = v99;
  *(v92 + v91) = v176;
  *(v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8)) = v185;
  v100 = v96;

  CKFetchRecordsOperation.perRecordResultBlock.setter();
  v175(v95, v188, v189);
  v101 = (v85 + 40) & ~v85;
  v102 = (v170 + v101) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  v106 = v184;
  v105[2] = v187;
  v105[3] = v106;
  v105[4] = v100;
  (v169[0])(v105 + v101, v95, v189);
  *(v105 + v102) = v97;
  v107 = (v105 + v103);
  v108 = v178;
  *v107 = v177;
  v107[1] = v108;
  *(v105 + v104) = v176;
  v109 = v189;
  v110 = v185;
  *(v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8)) = v185;
  v111 = v110;
  v112 = v100;

  v113 = v182;
  CKFetchRecordsOperation.fetchRecordsResultBlock.setter();
  v191 = 0x6863746546;
  v192 = 0xE500000000000000;
  v114._countAndFlagsBits = (*(v106 + 24))(v187, v106);
  object = v114._object;
  String.append(_:)(v114);
  object, v116, v117, v118, v119, v120, v121, v122;
  v123 = v192;
  v124 = [objc_allocWithZone(CKOperationGroup) init];
  v125 = String._bridgeToObjectiveC()();
  v123, v126, v127, v128, v129, v130, v131, v132;
  [v124 setName:v125];

  [v124 setQuantity:1];
  [v124 setExpectedSendSize:1];
  [v124 setExpectedReceiveSize:1];
  [v113 setGroup:v124];

  v133 = v113;
  v134 = v180;
  v175(v180, v188, v109);
  v135 = v112;
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = v111;
    v139 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v191 = v138;
    *v139 = 136446722;
    swift_getMetatypeMetadata();
    v140 = String.init<A>(describing:)();
    v142 = v141;
    v143 = sub_10000668C(v140, v141, &v190);
    v142, v144, v145, v146, v147, v148, v149, v150;
    *(v139 + 4) = v143;
    *(v139 + 12) = 2082;
    v151 = [v135 recordName];
    v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v154 = v153;

    v155 = sub_10000668C(v152, v154, &v190);
    v154, v156, v157, v158, v159, v160, v161, v162;
    *(v139 + 14) = v155;
    *(v139 + 22) = 2048;
    v163 = v186;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v165 = v164;
    v166 = *(v181 + 8);
    v166(v163, v109);
    v166(v134, v109);
    *(v139 + 24) = v165;
    _os_log_impl(&_mh_execute_header, v136, v137, "%{public}s: Fetching CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v139, 0x20u);
    swift_arrayDestroy();
    v133 = v182;
  }

  else
  {

    v166 = *(v181 + 8);
    v166(v134, v109);
  }

  v167 = v172;
  v168 = [v172 publicCloudDatabase];
  [v168 addOperation:v133];

  v166(v188, v109);
}

void sub_100594144(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    v8 = a3(a1);
    __chkstk_darwin(v8, v9);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
  }
}

uint64_t sub_100594258(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v197 = a8;
  v195 = a7;
  v187 = a6;
  v186 = a5;
  v199 = a4;
  v16 = a12;
  v189 = a11;
  v193 = a9;
  v194 = a10;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v198 = type metadata accessor for Result();
  v196 = *(v198 - 8);
  __chkstk_darwin(v198, v17);
  v192 = &v175[-v18];
  v19 = *(a12 - 8);
  __chkstk_darwin(v20, v21);
  v188 = &v175[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23, v25);
  __chkstk_darwin(v26, v27);
  v29 = &v175[-v28];
  __chkstk_darwin(v30, v31);
  __chkstk_darwin(v32, v33);
  v191 = &v175[-v34];
  __chkstk_darwin(v35, v36);
  v40 = &v175[-v39];
  if (a3)
  {
    v190 = a2;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10094D1A0);
    (*(v24 + 16))(v29, v199, v23);
    v42 = v23;
    v43 = a1;
    v44 = v190;
    sub_100066F20(v190, 1);
    v45 = v44;
    v46 = v24;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    sub_100067078(v45, 1);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v184 = a12;
      v50 = v49;
      v199 = swift_slowAlloc();
      v200 = v199;
      *v50 = 136446978;
      v201 = v189;
      swift_getMetatypeMetadata();
      v51 = String.init<A>(describing:)();
      v53 = v52;
      v54 = sub_10000668C(v51, v52, &v200);
      v53, v55, v56, v57, v58, v59, v60, v61;
      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      v62 = [v43 recordName];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_10000668C(v63, v65, &v200);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v50 + 14) = v66;
      *(v50 + 22) = 2048;
      v74 = v191;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v76 = v75;
      v77 = *(v46 + 8);
      v78 = v74;
      v45 = v190;
      v77(v78, v42);
      v77(v29, v42);
      *(v50 + 24) = v76;
      *(v50 + 32) = 2082;
      swift_getErrorValue();
      v79 = Error.rem_errorDescription.getter();
      v81 = v80;
      v82 = sub_10000668C(v79, v80, &v200);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v50 + 34) = v82;
      _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: [perRecordResultBlock] Failed to fetch CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v50, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v46 + 8))(v29, v42);
    }

    v129 = v192;
    *v192 = v45;
    v130 = v198;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100594144(v129, v195, v197, v193, v194);
    return (*(v196 + 8))(v129, v130);
  }

  else
  {
    v177 = v38;
    v179 = v37;
    v178 = v19;
    v185 = a13;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    v91 = sub_100006654(v90, qword_10094D1A0);
    v180 = *(v24 + 16);
    v180(v40, v199, v23);
    v92 = a1;
    v181 = v91;
    v93 = v23;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    v96 = os_log_type_enabled(v94, v95);
    v183 = v24;
    if (v96)
    {
      v97 = swift_slowAlloc();
      v176 = v95;
      v98 = v97;
      v99 = swift_slowAlloc();
      v184 = a12;
      v200 = v99;
      *v98 = 136446722;
      v201 = v189;
      swift_getMetatypeMetadata();
      v100 = String.init<A>(describing:)();
      v102 = v101;
      v103 = sub_10000668C(v100, v101, &v200);
      v190 = a2;
      v104 = v103;
      v102, v105, v106, v107, v108, v109, v110, v111;
      *(v98 + 4) = v104;
      *(v98 + 12) = 2082;
      v112 = [v92 recordName];
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = sub_10000668C(v113, v115, &v200);
      v115, v117, v118, v119, v120, v121, v122, v123;
      *(v98 + 14) = v116;
      *(v98 + 22) = 2048;
      v124 = v191;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v126 = v125;
      v127 = *(v24 + 8);
      v128 = v124;
      a2 = v190;
      v127(v128, v93);
      v182 = v127;
      v127(v40, v93);
      *(v98 + 24) = v126;
      _os_log_impl(&_mh_execute_header, v94, v176, "%{public}s: Did fetch CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v98, 0x20u);
      swift_arrayDestroy();
      v16 = v184;
    }

    else
    {

      v182 = *(v24 + 8);
      v182(v40, v93);
    }

    v131 = v93;
    v132 = v185;
    v133 = *(v185 + 8);
    v134 = a2;
    v135 = v188;
    v133(v134, v16, v132);
    v136 = v177;
    v180(v177, v199, v131);
    v137 = v187;
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v200 = v199;
      *v140 = 136446722;
      v201 = v189;
      swift_getMetatypeMetadata();
      v141 = String.init<A>(describing:)();
      v143 = v142;
      v144 = v16;
      v145 = sub_10000668C(v141, v142, &v200);
      v143, v146, v147, v148, v149, v150, v151, v152;
      *(v140 + 4) = v145;
      *(v140 + 12) = 2082;
      v153 = [v137 recordName];
      v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v156 = v155;

      v157 = sub_10000668C(v154, v156, &v200);
      v158 = v156;
      v16 = v144;
      v135 = v188;
      v158, v159, v160, v161, v162, v163, v164, v165;
      *(v140 + 14) = v157;
      *(v140 + 22) = 2048;
      v166 = v191;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v168 = v167;
      v169 = v166;
      v170 = v182;
      v182(v169, v131);
      v170(v136, v131);
      *(v140 + 24) = v168;
      _os_log_impl(&_mh_execute_header, v138, v139, "%{public}s: Did initialize publicCloudObject from CKRecord {recordName: %{public}s, elapsedSeconds: %f}", v140, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v182(v136, v131);
    }

    v172 = v178;
    v173 = v192;
    (*(v178 + 16))(v192, v135, v16);
    v174 = v198;
    swift_storeEnumTagMultiPayload();
    sub_100594144(v173, v195, v197, v193, v194);
    (*(v196 + 8))(v173, v174);
    return (*(v172 + 8))(v135, v16);
  }
}

void sub_100595098(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v83 = a6;
  v84 = a7;
  v82 = a5;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v81 = a10;
  v16 = type metadata accessor for Result();
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16, v17);
  v19 = (&v74 - v18);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v28 = &v74 - v27;
  if (a2)
  {
    v77 = a11;
    v78 = a8;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10094D1A0);
    (*(v21 + 16))(v28, a4, v20);
    v30 = a3;
    sub_100138D40(a1, 1);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v76 = v32;
      v33 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v85[0] = v75;
      v85[1] = a9;
      *v33 = 136446978;
      swift_getMetatypeMetadata();
      v34 = String.init<A>(describing:)();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v85);
      v74 = v31;
      v38 = v37;
      v36, v39, v40, v41, v42, v43, v44, v45;
      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v46 = [v30 recordName];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_10000668C(v47, v49, v85);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v33 + 14) = v50;
      *(v33 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v59 = v58;
      v60 = *(v21 + 8);
      v60(v24, v20);
      v60(v28, v20);
      *(v33 + 24) = v59;
      *(v33 + 32) = 2082;
      swift_getErrorValue();
      v61 = Error.rem_errorDescription.getter();
      v63 = v62;
      v64 = sub_10000668C(v61, v62, v85);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v33 + 34) = v64;
      v72 = v74;
      _os_log_impl(&_mh_execute_header, v74, v76, "%{public}s: [fetchRecordsResultBlock] Failed to fetch CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v33, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v21 + 8))(v28, v20);
    }

    *v19 = a1;
    v73 = v80;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100594144(v19, v82, v83, v84, v78);
    (*(v79 + 8))(v19, v73);
  }
}

uint64_t sub_100595520()
{

  return swift_deallocClassInstance();
}

id sub_10059558C(void *a1, void (*a2)(void), uint64_t a3, double a4)
{
  v8 = *v4;
  v9 = sub_10000F61C(a1, a1[3]);

  return sub_100595860(v9, a2, a3, v8, a4);
}

uint64_t sub_100595638(void *a1, void *a2, char a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100594258(a1, a2, a3 & 1, v3 + v10, *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + v14), *(v3 + v14 + 8), *(v3 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v7, v8);
}

void sub_100595740(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100595098(a1, a2 & 1, *(v2 + 32), v2 + v8, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

id sub_100595860(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, double a5)
{
  v178 = *a4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v176 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v157 - v16;
  __chkstk_darwin(v18, v19);
  v177 = &v157 - v20;
  __chkstk_darwin(v21, v22);
  v24 = &v157 - v23;
  v25 = type metadata accessor for RDPublicTemplate(0);
  v185 = v25;
  v186 = &off_1008E60A0;
  v26 = sub_1000103CC(&v184);
  v27 = sub_10042A1BC(a1, v26);
  v28 = (*(a4 + 16))(v27);
  if ((v28 & 1) == 0)
  {
    v69 = [objc_opt_self() internetNotReachableError];
    a2();

    return sub_10000607C(&v184);
  }

  v174 = a2;
  v172 = a3;
  v173 = v17;
  v180 = v10;
  v181 = *(*(a4 + 32) + 48);
  __chkstk_darwin(v28, v29);
  v171 = v30;
  *(&v157 - 2) = v30;
  *(&v157 - 1) = 1;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  v175 = swift_allocObject();
  *(v175 + 16) = 0;
  v31 = sub_10000F61C(&v184, v185);
  v32 = sub_10013FBFC(v31 + *(v25 + 32));
  if (qword_1009365A0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100006654(v33, qword_10094D1A0);
  v35 = v32;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v179 = v24;
  v170 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v183[0] = v168;
    *v39 = 136446466;
    v181 = v178;
    swift_getMetatypeMetadata();
    v40 = String.init<A>(describing:)();
    v169 = v11;
    v42 = v41;
    v43 = sub_10000668C(v40, v41, v183);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    v51 = [(objc_class *)v35 recordName];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v34;
    v55 = v54;

    v56 = v52;
    v24 = v179;
    v11 = v169;
    v57 = sub_10000668C(v56, v55, v183);
    v58 = v55;
    v34 = v53;
    v58, v59, v60, v61, v62, v63, v64, v65;
    *(v39 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s: Will save CKRecord for publicCloudObject {recordName: %{public}s}", v39, 0x16u);
    swift_arrayDestroy();
  }

  v66 = v180;
  v67 = v173;
  Date.init()();
  v68 = sub_1005918A0();
  sub_10000F61C(&v184, v185);
  v70 = sub_10013ECF4();
  sub_1000060C8(0, &qword_10094D268, CKModifyRecordsOperation_ptr);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1007953F0;
  *(v71 + 32) = v70;
  v167 = v70;
  v187.value._rawValue = v71;
  v187.is_nil = 0;
  v72 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v187, v188).super.super.super.super.isa;
  [(objc_class *)v72 setQualityOfService:17];
  [(objc_class *)v72 setQueuePriority:8];

  v73 = v72;
  v74 = [v68 publicCloudDatabase];
  [(objc_class *)v73 setDatabase:v74];

  [(objc_class *)v73 setSavePolicy:2];
  v75 = v73;
  result = [(objc_class *)v75 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v77 = result;
  [result setContainer:v68];

  result = [(objc_class *)v75 configuration];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v78 = result;
  v164 = v34;
  v168 = v68;
  [result setTimeoutIntervalForRequest:a5];

  result = [(objc_class *)v75 configuration];
  v177 = v75;
  if (result)
  {
    v79 = result;
    [result setTimeoutIntervalForResource:a5];

    v80 = *(v11 + 16);
    v165 = v11 + 16;
    v166 = v80;
    v80(v67, v24, v66);
    v81 = *(v11 + 80);
    v163 = v81;
    v82 = (v81 + 24) & ~v81;
    v160 = v82;
    v83 = (v12 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v161 = v83;
    v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v162 = v84;
    v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
    v158 = v85;
    v86 = swift_allocObject();
    v87 = v170;
    *(v86 + 16) = v170;
    v169 = v11;
    v159 = *(v11 + 32);
    v159(v86 + v82, v67, v180);
    v88 = v67;
    v89 = v175;
    *(v86 + v83) = v175;
    v90 = (v86 + v84);
    v91 = v172;
    *v90 = v174;
    v90[1] = v91;
    v92 = v171;
    *(v86 + v85) = v171;
    v93 = v178;
    *(v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8)) = v178;
    v94 = v87;

    CKModifyRecordsOperation.perRecordSaveBlock.setter();
    v166(v88, v179, v180);
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    v159(v95 + v160, v88, v180);
    *(v95 + v161) = v89;
    v96 = (v95 + v162);
    *v96 = v174;
    v96[1] = v91;
    *(v95 + v158) = v92;
    *(v95 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8)) = v93;
    v97 = v180;
    v98 = v94;

    v99 = v177;
    CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
    v181 = 1702256979;
    v182 = 0xE400000000000000;
    v100._countAndFlagsBits = CKRecord.recordType.getter();
    object = v100._object;
    String.append(_:)(v100);
    object, v102, v103, v104, v105, v106, v107, v108;
    v109 = v182;
    v110 = [objc_allocWithZone(CKOperationGroup) init];
    v111 = String._bridgeToObjectiveC()();
    v109, v112, v113, v114, v115, v116, v117, v118;
    [v110 setName:v111];

    [v110 setQuantity:1];
    [v110 setExpectedSendSize:1];
    [v110 setExpectedReceiveSize:1];
    [v99 setGroup:v110];

    v119 = v176;
    v166(v176, v179, v97);
    v120 = v98;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v183[0] = v174;
      *v123 = 136446722;
      v181 = v93;
      swift_getMetatypeMetadata();
      v124 = String.init<A>(describing:)();
      v125 = v97;
      v126 = v119;
      v128 = v127;
      v129 = sub_10000668C(v124, v127, v183);
      v128, v130, v131, v132, v133, v134, v135, v136;
      *(v123 + 4) = v129;
      *(v123 + 12) = 2082;
      v137 = [(objc_class *)v120 recordName];
      v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140 = v139;

      v141 = sub_10000668C(v138, v140, v183);
      v140, v142, v143, v144, v145, v146, v147, v148;
      *(v123 + 14) = v141;
      *(v123 + 22) = 2048;
      v149 = v173;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v151 = v150;
      v152 = *(v169 + 8);
      v152(v149, v125);
      v153 = v126;
      v97 = v125;
      v152(v153, v125);
      *(v123 + 24) = v151;
      _os_log_impl(&_mh_execute_header, v121, v122, "%{public}s: Saving CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v123, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v152 = *(v169 + 8);
      v152(v119, v97);
    }

    v154 = v168;
    v155 = [v168 publicCloudDatabase];
    v156 = v177;
    [v155 addOperation:v177];

    v152(v179, v97);

    return sub_10000607C(&v184);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1005967A8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, void, unint64_t, void, void, void, void, void))
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a4(a1, a2, a3 & 1, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100596898()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_1005969CC(uint64_t a1, char a2, const char *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10059317C(a1, a2 & 1, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

_TtC7remindd19RDXPCStorePerformer *sub_100596AB8(unint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v38 - v11;
  v41 = &_swiftEmptyArrayStorage;
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      KeyPath = swift_getKeyPath();
      if (a1 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = &_swiftEmptyArrayStorage;
      if (v14)
      {
        v38 = KeyPath;
        v39 = v12;
        v40 = &_swiftEmptyArrayStorage;
        result = sub_100253218(0, v14 & ~(v14 >> 63), 0);
        if (v14 < 0)
        {
          __break(1u);
          return result;
        }

        v17 = 0;
        v15 = v40;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(a1 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = [v18 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v21 = type metadata accessor for UUID();
          (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
          v40 = v15;
          v23 = *v15->clientIdentity;
          v22 = *&v15->clientIdentity[8];
          if (v23 >= v22 >> 1)
          {
            sub_100253218((v22 > 1), v23 + 1, 1);
            v15 = v40;
          }

          ++v17;
          *v15->clientIdentity = v23 + 1;
          sub_100100FB4(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
        }

        while (v14 != v17);
        KeyPath = v38;
        v12 = v39;
      }

      sub_1003EE73C(KeyPath, v15);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v24 = swift_getKeyPath();
    v25 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    sub_100391CA0(v24, v12);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v27 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_100023B44(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_10094D270, &unk_1007B28A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v29 = swift_getKeyPath();
  v30 = sub_1003EE760(v29);

  *(inited + 32) = v30;
  v31 = swift_getKeyPath();
  v32 = sub_1003EE78C(v31);

  *(inited + 40) = v32;
  sub_100025060(inited);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_28:
  v33 = swift_getKeyPath();
  sub_1003EE78C(v33);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v27)
  {
    v34 = swift_getKeyPath();
    v35 = [objc_opt_self() localInternalAccountID];
    v36 = [v35 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
    sub_1003EE7B4(v34, v12);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v41->clientIdentity >= *&v41->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return sub_10000C2B0();
}

void sub_1005970EC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

uint64_t sub_100597228@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1005972E0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

uint64_t sub_10059741C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100975240 = v0;
  return result;
}

uint64_t sub_100597494()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_10012DF40();
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100975248 = v0;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100597524()
{
  sub_100026EF4(0, 5, 0);
  result = &_swiftEmptyArrayStorage;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v3;
  v4 = &_swiftEmptyArrayStorage + 16 * v2;
  *(v4 + 4) = 0xD000000000000023;
  *(v4 + 5) = 0x80000001007F2430;
  v5 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v6;
  v7 = &_swiftEmptyArrayStorage + 16 * v3;
  *(v7 + 4) = 0x696669746E656469;
  *(v7 + 5) = 0xEA00000000007265;
  v9 = *_swiftEmptyArrayStorage.clientIdentity;
  v8 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v10;
  v11 = &_swiftEmptyArrayStorage + 16 * v9;
  *(v11 + 4) = 0xD00000000000001ALL;
  *(v11 + 5) = 0x80000001007EA730;
  v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v13;
  v14 = &_swiftEmptyArrayStorage + 16 * v10;
  *(v14 + 4) = 0xD00000000000001ELL;
  *(v14 + 5) = 0x80000001007EC560;
  v16 = *_swiftEmptyArrayStorage.clientIdentity;
  v15 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v16 + 1;
  v17 = &_swiftEmptyArrayStorage + 16 * v16;
  *(v17 + 4) = 0x4E79616C70736964;
  *(v17 + 5) = 0xEB00000000656D61;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100597980()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  while (1)
  {
    v1 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v2)
    {
      goto LABEL_21;
    }

    v3 = v1;
    v4 = v2;

    v5 = &_swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100365788(0, *_swiftEmptyArrayStorage.clientIdentity + 1, 1, &_swiftEmptyArrayStorage, v6, v7, v8, v9);
    }

    v11 = *v5->clientIdentity;
    v10 = *&v5->clientIdentity[8];
    if (v11 >= v10 >> 1)
    {
      v5 = sub_100365788((v10 > 1), v11 + 1, 1, v5, v6, v7, v8, v9);
    }

    *v5->clientIdentity = v11 + 1;
    v12 = v5 + 16 * v11;
    *(v12 + 4) = v3;
    *(v12 + 5) = v4;
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {

      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v14)
  {
LABEL_21:
    _StringGuts.grow(_:)(46);
    v25._object = 0x80000001007EC120;
    v25._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v25);
    sub_1000F5104(&qword_100942F58, qword_1007A76A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = v13;
  v16 = v14;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100365788(0, *v5->clientIdentity + 1, 1, v5, v17, v18, v19, v20);
  }

  v22 = *v5->clientIdentity;
  v21 = *&v5->clientIdentity[8];
  if (v22 >= v21 >> 1)
  {
    v5 = sub_100365788((v21 > 1), v22 + 1, 1, v5, v17, v18, v19, v20);
  }

  *v5->clientIdentity = v22 + 1;
  v23 = v5 + 16 * v22;
  *(v23 + 4) = v15;
  *(v23 + 5) = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_100597C80(uint64_t a1)
{
  swift_getObjectType();
  sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v41[0] = v2;
  v41[1] = v3;
  sub_10013BCF4();
  v5 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v20 = *(v5 + 16);
  if (v20)
  {
    v21 = *(v5 + 32 * v20 + 24);

    v5, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v5, v13, v14, v15, v16, v17, v18, v19;
    Substring.init(_:)();
    v21 = v29;
  }

  v41[0] = a1;
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100791340;
  v31 = static String._fromSubstring(_:)();
  v33 = v32;
  v21, v32, v34, v35, v36, v37, v38, v39;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100006600();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  *(v30 + 96) = sub_1000F5104(&qword_10094D310, &qword_1007B2B38);
  *(v30 + 104) = sub_100597E50();
  *(v30 + 72) = v41;
  return String.init(format:_:)();
}

unint64_t sub_100597E50()
{
  result = qword_10094D318;
  if (!qword_10094D318)
  {
    sub_1000F514C(&qword_10094D310, &qword_1007B2B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D318);
  }

  return result;
}

uint64_t sub_100597EB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D320);
  v1 = sub_100006654(v0, qword_10094D320);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100597F7C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v2 + 104);
  (v9)(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v2 + 8);
  v12(v6, v1);
  if (v11)
  {
    sub_1005980FC();
    *v6 = v10;
    v9(v6, v8, v1);
    v13 = _dispatchPreconditionTest(_:)();
    v12(v6, v1);
    if (v13)
    {
      sub_10059910C(0, 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1005980FC()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *&v2[-1].shareRecordIDToRootRecordIDLock[2];
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v293 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v3 + 104;
  v11 = *(v3 + 104);
  (v11)(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v12 = v8;
  v13 = _dispatchPreconditionTest(_:)();
  v16 = *(v3 + 8);
  v15 = v3 + 8;
  v14 = v16;
  v16(v7, v2);
  if ((v13 & 1) == 0)
  {
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
    swift_once();
    goto LABEL_38;
  }

  v313 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager);
  v308 = OBJC_IVAR____TtC7remindd17RDLocationManager_queue;
  v17 = v14;
  v18 = *(v1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v7 = v18;
  v11(v7, v9, v2);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  v17(v7, v2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_86;
  }

  v311 = v1;
  v307 = OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager;
  if (!*(v1 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager))
  {
    if (qword_1009365B8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_10094D320);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "locationManager hasn't started. Not reconciling geofences.", v53, 2u);
    }

    return;
  }

  v302 = v17;
  v303 = v11;
  v310 = v10;
  v304 = v9;
  v305 = v7;
  v301 = v15;
  v306 = v2;
  sub_10000F61C((v313 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource), *(v313 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource + 24));

  v22 = sub_10041294C(v21);

  v316 = _swiftEmptySetSingleton;
  v317 = _swiftEmptySetSingleton;
  v30 = *(v22 + 16);
  if (v30)
  {
    v2 = (v22 + 48);
    v31 = _swiftEmptyDictionarySingleton;
    do
    {
      v32 = *&v2[-1].shareRecordIDToRootRecordID[2];
      v33 = *&v2[-1].shareRecordIDToRootRecordIDLock[2];
      isa = v2->super.isa;
      v2 = (v2 + 24);
      v35 = isa;
      v36 = v32;
      v37 = v33;
      v38 = sub_10059B1B0(v35);
      v40 = v39;
      v41 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v318 = v31;
      sub_1002CAE5C(v41, v38, v40, isUniquelyReferenced_nonNull_native);
      v31 = v318;
      sub_100378434(&v318, v38, v40);

      v319, v43, v44, v45, v46, v47, v48, v49;
      --v30;
    }

    while (v30);
  }

  else
  {
    v31 = _swiftEmptyDictionarySingleton;
  }

  v313 = v31;
  v22, v23, v24, v25, v26, v27, v28, v29;
  v54 = sub_1005082D8();
  v1 = v54;
  if ((v54 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_10059B39C();
    sub_10059B3E8(&qword_10094B2E0, 255, sub_10059B39C, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v318;
    v55 = v319;
    v7 = v320;
    v15 = v321;
    v56 = v322;
  }

  else
  {
    v15 = 0;
    v57 = -1 << *(v54 + 32);
    v55 = (v54 + 56);
    v7 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v54 + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v60 = v15;
    v61 = v56;
    v62 = v15;
    if (!v56)
    {
      while (1)
      {
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v62 >= ((v7 + 64) >> 6))
        {
          goto LABEL_31;
        }

        v61 = *(&v55->super.isa + v62);
        ++v60;
        if (v61)
        {
          goto LABEL_25;
        }
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_25:
    v63 = (v61 - 1) & v61;
    v64 = *(*(v1 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
    if (!v64)
    {
      break;
    }

    while (1)
    {
      v66 = sub_10059B1B0(v64);
      v68 = v67;
      v2 = v64;
      v69 = v313;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v315[0] = v69;
      sub_1002CAE5C(v2, v66, v68, v70);
      v313 = v315[0];
      sub_100378434(v315, v66, v68);

      v315[1], v71, v72, v73, v74, v75, v76, v77;
      v15 = v62;
      v56 = v63;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      v65 = __CocoaSet.Iterator.next()();
      if (v65)
      {
        v314 = v65;
        sub_10059B39C();
        swift_dynamicCast();
        v64 = v315[0];
        v62 = v15;
        v63 = v56;
        if (v315[0])
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

LABEL_31:
  sub_10001B860(v1);
  v2 = v316;
  v7 = v317;
  if (v317[2] <= *v316->clientIdentity >> 3)
  {
    v315[0] = v316;

    sub_10019BAF4(v86);
    v7, v87, v88, v89, v90, v91, v92, v93;
    v1 = v315[0];
  }

  else
  {

    v1 = sub_10019C4D4(v78, v2);
    v7, v79, v80, v81, v82, v83, v84, v85;
  }

  if (*v2->clientIdentity <= *(v7 + 16) >> 3)
  {
    v315[0] = v7;

    sub_10019BAF4(v2);
    v2, v101, v102, v103, v104, v105, v106, v107;
    v15 = v315[0];
  }

  else
  {

    v15 = sub_10019C4D4(v2, v7);
    v2, v94, v95, v96, v97, v98, v99, v100;
  }

  if (qword_1009365B8 != -1)
  {
    goto LABEL_91;
  }

LABEL_38:
  v297 = type metadata accessor for Logger();
  sub_100006654(v297, qword_10094D320);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.debug.getter();
  v110 = os_log_type_enabled(v108, v109);
  v309 = v15;
  v312 = v1;
  v294 = v7;
  if (v110)
  {
    v111 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v315[0] = v15;
    *v111 = 136315138;

    v112 = Set.description.getter();
    v114 = v113;
    v7, v113, v115, v116, v117, v118, v119, v120;
    v121 = sub_10000668C(v112, v114, v315);
    v114, v122, v123, v124, v125, v126, v127, v128;
    *(v111 + 4) = v121;
    _os_log_impl(&_mh_execute_header, v108, v109, "reconcileAllGeofences desiredSet = %s", v111, 0xCu);
    sub_10000607C(v15);
  }

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v315[0] = v15;
    *v131 = 136315138;

    v132 = Set.description.getter();
    v134 = v133;
    v2, v133, v135, v136, v137, v138, v139, v140;
    v141 = sub_10000668C(v132, v134, v315);
    v134, v142, v143, v144, v145, v146, v147, v148;
    *(v131 + 4) = v141;
    _os_log_impl(&_mh_execute_header, v129, v130, "reconcileAllGeofences existingSet = %s", v131, 0xCu);
    sub_10000607C(v15);
  }

  v149 = v312;

  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.debug.getter();
  v149, v152, v153, v154, v155, v156, v157, v158;
  if (os_log_type_enabled(v150, v151))
  {
    v159 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v315[0] = v15;
    *v159 = 136315138;
    v160 = Set.description.getter();
    v162 = v161;
    v163 = sub_10000668C(v160, v161, v315);
    v162, v164, v165, v166, v167, v168, v169, v170;
    *(v159 + 4) = v163;
    _os_log_impl(&_mh_execute_header, v150, v151, "reconcileAllGeofences setToRemove = %s", v159, 0xCu);
    sub_10000607C(v15);
  }

  v171 = v309;

  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.debug.getter();
  v171, v174, v175, v176, v177, v178, v179, v180;
  v181 = os_log_type_enabled(v172, v173);
  v295 = v2;
  if (v181)
  {
    v182 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v315[0] = v15;
    *v182 = 136315138;
    v183 = Set.description.getter();
    v185 = v184;
    v186 = sub_10000668C(v183, v184, v315);
    v185, v187, v188, v189, v190, v191, v192, v193;
    *(v182 + 4) = v186;
    _os_log_impl(&_mh_execute_header, v172, v173, "reconcileAllGeofences setToAdd = %s", v182, 0xCu);
    sub_10000607C(v15);
  }

  v1 = v312;
  v195 = v313;
  v196 = v311;
  v197 = 0;
  v2 = (v312 + 56);
  v198 = 1 << *(v312 + 32);
  v199 = -1;
  if (v198 < 64)
  {
    v199 = ~(-1 << v198);
  }

  v200 = (v199 & *(v312 + 56));
  v7 = (v198 + 63) >> 6;
  *&v194 = 136315138;
  v293 = v194;
  v296 = v7;
  while (1)
  {
    while (1)
    {
      if (!v200)
      {
        while (1)
        {
          v202 = v197 + 1;
          if (__OFADD__(v197, 1))
          {
            __break(1u);
            goto LABEL_83;
          }

          if (v202 >= v7)
          {
            break;
          }

          v201 = *(&v2->super.isa + v202);
          ++v197;
          if (v201)
          {
            v197 = v202;
            goto LABEL_55;
          }
        }

        v15 = 0;
        v250 = v309;
        v2 = &v309->clientIdentity[40];
        v251 = 1 << v309->clientIdentity[16];
        v252 = -1;
        if (v251 < 64)
        {
          v252 = ~(-1 << v251);
        }

        v253 = v252 & *&v309->clientIdentity[40];
        v1 = (v251 + 63) >> 6;
        v254 = v301;
        while (v253)
        {
          v255 = v253;
LABEL_75:
          v253 = (v255 - 1) & v255;
          if (*(v195 + 16))
          {
            v257 = *&v250->clientIdentity[32];
            v312 = (v255 - 1) & v255;
            v258 = (v257 + ((v15 << 10) | (16 * __clz(__rbit64(v255)))));
            v260 = *v258;
            v259 = v258[1];

            v7 = sub_100005F4C(v260, v259);
            LOBYTE(v260) = v261;
            v259, v261, v262, v263, v264, v265, v266, v267;
            v253 = v312;
            if (v260)
            {
              v300 = *(*(v195 + 56) + 8 * v7);
              v268 = *&v196[v308];
              v7 = v254;
              v270 = v305;
              v269 = v306;
              *v305 = v268;
              v271 = v304;
              v272 = v303;
              v303(v270, v304, v269);
              v273 = v268;
              v299 = v300;
              LODWORD(v300) = _dispatchPreconditionTest(_:)();
              v274 = v302;
              v302(v270, v269);
              if ((v300 & 1) == 0)
              {
                goto LABEL_89;
              }

              *v270 = v273;
              v272(v270, v271, v269);
              v275 = _dispatchPreconditionTest(_:)();
              v274(v270, v269);
              if ((v275 & 1) == 0)
              {
                goto LABEL_90;
              }

              v196 = v311;
              v276 = *&v311[v307];
              if (!v276)
              {
                goto LABEL_93;
              }

              v254 = v7;
              v277 = v276;
              v278 = v299;
              sub_1005079A0(v277, v196, v299);

              v253 = v312;
              v195 = v313;
              v250 = v309;
            }
          }
        }

        while (1)
        {
          v256 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v256 >= v1)
          {
            v195, v243, v244, v245, v246, v247, v248, v249;
            v294, v279, v280, v281, v282, v283, v284, v285;
            v295, v286, v287, v288, v289, v290, v291, v292;

            return;
          }

          v255 = *(&v2->super.isa + v256);
          ++v15;
          if (v255)
          {
            v15 = v256;
            goto LABEL_75;
          }
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v201 = v200;
LABEL_55:
      v200 = ((v201 - 1) & v201);
      if (*(v195 + 16))
      {
        v203 = (*(v1 + 48) + ((v197 << 10) | (16 * __clz(__rbit64(v201)))));
        v204 = *v203;
        v205 = v203[1];

        v206 = sub_100005F4C(v204, v205);
        v15 = v207;
        v205, v207, v208, v209, v210, v211, v212, v213;
        if (v15)
        {
          break;
        }
      }
    }

    v299 = v200;
    v214 = *(*(v195 + 56) + 8 * v206);
    v215 = *&v196[v308];
    v217 = v305;
    v216 = v306;
    *v305 = v215;
    v15 = v304;
    v7 = v310;
    v1 = v303;
    v303(v217, v304, v216);
    v218 = v215;
    v298 = v214;
    LODWORD(v300) = _dispatchPreconditionTest(_:)();
    v219 = v302;
    v302(v217, v216);
    if ((v300 & 1) == 0)
    {
      goto LABEL_87;
    }

    *v217 = v218;
    (v1)(v217, v15, v216);
    v220 = _dispatchPreconditionTest(_:)();
    v219(v217, v216);
    if ((v220 & 1) == 0)
    {
      goto LABEL_88;
    }

    v196 = v311;
    v221 = *&v311[v307];
    if (!v221)
    {
      break;
    }

    v222 = qword_100936368;
    v300 = v221;
    v1 = v312;
    v200 = v299;
    if (v222 != -1)
    {
      swift_once();
    }

    v15 = sub_100006654(v297, qword_10094B210);
    v223 = v298;
    swift_unknownObjectRetain();
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v224, v225))
    {
      v15 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      LODWORD(v298) = v225;
      v227 = v226;
      v315[0] = v226;
      *v15 = v293;
      v228 = sub_10050992C(v223);
      v229 = v196;
      v231 = v230;
      v232 = v224;
      v233 = sub_10000668C(v228, v230, v315);
      v234 = v231;
      v196 = v229;
      v234, v235, v236, v237, v238, v239, v240, v241;
      *(v15 + 4) = v233;
      _os_log_impl(&_mh_execute_header, v232, v298, "stopMonitoring: %s", v15, 0xCu);
      sub_10000607C(v227);

      v1 = v312;
    }

    else
    {
    }

    v195 = v313;
    v7 = v296;
    v242 = v300;
    [v300 stopMonitoringForRegion:{v223, v293}];
  }

  __break(1u);
LABEL_93:
  __break(1u);
}