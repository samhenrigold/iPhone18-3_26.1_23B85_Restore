void sub_100309E58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v153 = a8;
  v154 = a6;
  v147 = a3;
  v148 = a5;
  v145 = a1;
  v146 = a12;
  v151 = a7;
  v152 = a9;
  v14 = type metadata accessor for RoutingDialog.Action();
  v144 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchWorkItemFlags();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for DispatchQoS();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v132 - v25;
  __chkstk_darwin(v24);
  v28 = &v132 - v27;
  v29 = sub_1001BC5A8(&qword_100525F40, &qword_100458140);
  v30 = __chkstk_darwin(v29 - 8);
  v31 = __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  v35 = &v132 - v32;
  if (a2)
  {
    swift_errorRetain();
    v36 = sub_100028D40();
    (*(v20 + 16))(v28, v36, v19);
    swift_errorRetain();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = v19;
    v40 = a2;
    if (os_log_type_enabled(v37, v38))
    {
      v41 = swift_slowAlloc();
      v149 = v20;
      v42 = a4;
      v43 = v41;
      v44 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v43 = 136315906;
      v45 = _typeName(_:qualified:)();
      v150 = v39;
      v47 = sub_10002C9C8(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      v40 = a2;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_10002C9C8(v147, v42, &aBlock);
      *(v43 + 22) = 2082;
      *(v43 + 24) = sub_10002C9C8(v148, v154, &aBlock);
      *(v43 + 32) = 2114;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 34) = v48;
      *v44 = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%s] interactWithItem<%{public}s> - dialog: %{public}s returned error: %{public}@ -> drop interaction", v43, 0x2Au);
      sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
      v49 = v152;

      (*(v149 + 8))(v28, v150);
    }

    else
    {

      (*(v20 + 8))(v28, v19);
      v49 = v152;
    }

    v50 = v153;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v57 = Strong;
    v154 = v40;
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = v50;
    v58[4] = v49;
    v59 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v60 = *(v57 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    v61 = v60;
    v62 = *sub_100021264();

    if (v61 == v62)
    {
      v104 = *(v57 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      ObjectType = swift_getObjectType();
      v106 = type metadata accessor for InternalRoutingError();
      sub_100004930(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      v107 = swift_allocError();
      (*(*(v106 - 8) + 104))(v108, enum case for InternalRoutingError.cancelled(_:), v106);
      v109 = *(v104 + 56);
      swift_unknownObjectRetain();
      v109(v50, v49, v107, ObjectType, v104);

      swift_unknownObjectRelease();

      return;
    }

    v63 = *(v57 + v59);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1003318A8;
    *(v64 + 24) = v58;
    v160 = sub_1002253D8;
    v161 = v64;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_100003D98;
    v159 = &unk_1004CE400;
    v65 = _Block_copy(&aBlock);
    v66 = v63;

    v67 = v138;
    static DispatchQoS.unspecified.getter();
    v155 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v68 = v139;
    v69 = v143;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v65);

    (*(v142 + 8))(v68, v69);
    (*(v140 + 8))(v67, v141);
    goto LABEL_23;
  }

  v135 = v34;
  v136 = v26;
  v51 = v33;
  v133 = v16;
  v137 = v23;
  v52 = v154;
  v149 = v20;
  v150 = v19;
  v53 = v145;
  sub_10001D9AC(v145, &v132 - v32, &qword_100525F40, &qword_100458140);
  v54 = v144;
  v134 = *(v144 + 48);
  if (v134(v35, 1, v14) == 1)
  {
    sub_1000038A4(v35, &qword_100525F40, &qword_100458140);
    v55 = v137;
  }

  else
  {
    v70 = (*(v54 + 88))(v35, v14);
    v71 = enum case for RoutingDialog.Action.confirm(_:);
    (*(v54 + 8))(v35, v14);
    v72 = v70 == v71;
    v55 = v137;
    if (v72)
    {
      v73 = a10;
      v74 = sub_100028D40();
      v75 = v149;
      v76 = v150;
      v77 = v136;
      (*(v149 + 16))(v136, v74, v150);
      v78 = a4;

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v153 = a10;
        v82 = v81;
        aBlock = swift_slowAlloc();
        *v82 = 136315650;
        v83 = _typeName(_:qualified:)();
        v85 = sub_10002C9C8(v83, v84, &aBlock);

        *(v82 + 4) = v85;
        *(v82 + 12) = 2082;
        *(v82 + 14) = sub_10002C9C8(v147, v78, &aBlock);
        *(v82 + 22) = 2082;
        *(v82 + 24) = sub_10002C9C8(v148, v52, &aBlock);
        _os_log_impl(&_mh_execute_header, v79, v80, "[%s] interactWithItem<%{public}s> - dialog: %{public}s confirmed -> handle interaction", v82, 0x20u);
        swift_arrayDestroy();

        v73 = v153;

        v86 = (*(v75 + 8))(v136, v150);
      }

      else
      {

        v86 = (*(v75 + 8))(v77, v76);
      }

      v73(v86);
      return;
    }
  }

  v136 = v14;
  v87 = sub_100028D40();
  v89 = v149;
  v88 = v150;
  (*(v149 + 16))(v55, v87, v150);
  sub_10001D9AC(v53, v51, &qword_100525F40, &qword_100458140);

  v90 = v52;

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    aBlock = v145;
    *v93 = 136315906;
    v94 = _typeName(_:qualified:)();
    v96 = sub_10002C9C8(v94, v95, &aBlock);

    *(v93 + 4) = v96;
    *(v93 + 12) = 2082;
    *(v93 + 14) = sub_10002C9C8(v147, a4, &aBlock);
    *(v93 + 22) = 2082;
    *(v93 + 24) = sub_10002C9C8(v148, v90, &aBlock);
    *(v93 + 32) = 2082;
    v97 = v135;
    sub_10001D9AC(v51, v135, &qword_100525F40, &qword_100458140);
    v98 = v136;
    if (v134(v97, 1, v136) == 1)
    {
      __break(1u);
      return;
    }

    v99 = v133;
    (*(v54 + 32))(v133, v97, v98);
    sub_100004930(&qword_1005266E8, &type metadata accessor for RoutingDialog.Action, &protocol conformance descriptor for RoutingDialog.Action);
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    (*(v54 + 8))(v99, v98);
    sub_1000038A4(v51, &qword_100525F40, &qword_100458140);
    v103 = sub_10002C9C8(v100, v102, &aBlock);

    *(v93 + 34) = v103;
    _os_log_impl(&_mh_execute_header, v91, v92, "[%s] interactWithItem<%{public}s> - dialog: %{public}s returned action: %{public}s -> drop interaction", v93, 0x2Au);
    swift_arrayDestroy();

    (*(v149 + 8))(v137, v150);
  }

  else
  {

    sub_1000038A4(v51, &qword_100525F40, &qword_100458140);
    (*(v89 + 8))(v55, v88);
  }

  v110 = v152;
  swift_beginAccess();
  v111 = swift_weakLoadStrong();
  v112 = v153;
  if (v111)
  {
    v113 = v111;
    v114 = swift_allocObject();
    v114[2] = v113;
    v114[3] = v112;
    v114[4] = v110;
    v115 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v116 = *(v113 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    v117 = v116;
    v118 = *sub_100021264();

    if (v117 != v118)
    {
      v119 = *(v113 + v115);
      v120 = swift_allocObject();
      *(v120 + 16) = sub_100330D38;
      *(v120 + 24) = v114;
      v160 = sub_1002253D8;
      v161 = v120;
      aBlock = _NSConcreteStackBlock;
      v157 = 1107296256;
      v158 = sub_100003D98;
      v159 = &unk_1004CE388;
      v121 = _Block_copy(&aBlock);
      v122 = v119;

      v123 = v138;
      static DispatchQoS.unspecified.getter();
      v155 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v124 = v139;
      v125 = v143;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v121);

      (*(v142 + 8))(v124, v125);
      (*(v140 + 8))(v123, v141);
LABEL_23:

      return;
    }

    v126 = *(v113 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
    v127 = swift_getObjectType();
    v128 = type metadata accessor for InternalRoutingError();
    sub_100004930(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    v129 = swift_allocError();
    (*(*(v128 - 8) + 104))(v130, enum case for InternalRoutingError.cancelled(_:), v128);
    v131 = *(v126 + 56);
    swift_unknownObjectRetain();
    v131(v112, v110, v129, v127, v126);

    swift_unknownObjectRelease();
  }
}

void sub_10030B04C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v143) = a5;
  v141 = a4;
  v142 = a1;
  v133 = *v5;
  v124 = type metadata accessor for InternalRoutingError();
  v118[2] = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v138 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DispatchQoS();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v13 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = (v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for Logger();
  v135 = *(v140 - 8);
  v15 = __chkstk_darwin(v140);
  v127 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v118[1] = v118 - v18;
  v19 = __chkstk_darwin(v17);
  v139 = v118 - v20;
  v21 = __chkstk_darwin(v19);
  v130 = v118 - v22;
  __chkstk_darwin(v21);
  v119 = v118 - v23;
  v24 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v125 = *(v24 - 8);
  v25 = __chkstk_darwin(v24 - 8);
  v126 = v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v129 = v118 - v27;
  v131 = type metadata accessor for RoutingSessionConfiguration();
  v132 = *(v131 - 8);
  v28 = __chkstk_darwin(v131);
  v128 = v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v134 = v118 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *sub_100021264();
  if ((v143 & 1) == 0)
  {
LABEL_15:
    v39 = swift_allocObject();
    v40 = v142;
    v39[2] = v5;
    v39[3] = v40;
    v39[4] = a2;
    v39[5] = a3;
    v39[6] = v141;
    *&v149 = sub_10032BDB0;
    *(&v149 + 1) = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v148 = sub_100003D98;
    *(&v148 + 1) = &unk_1004CD948;
    v41 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v42 = v35;

    static DispatchQoS.unspecified.getter();
    *&v144[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    (*(v138 + 8))(v11, v9);
    (*(v136 + 8))(v13, v137);

    return;
  }

  v143 = v5;
  *v34 = v35;
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v36 = v35;
  v5 = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v34, v31);
  if (v5)
  {
    v37 = sub_10002107C();
    v5 = v37;
    if (!(v37 >> 62))
    {
      v35 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_29:

      v105 = sub_100028D40();
      v106 = v135;
      v107 = v139;
      v108 = v140;
      (*(v135 + 16))(v139, v105, v140);

      swift_unknownObjectRetain();
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *&v144[0] = swift_slowAlloc();
        *v111 = 136315650;
        v112 = _typeName(_:qualified:)();
        v114 = sub_10002C9C8(v112, v113, v144);

        *(v111 + 4) = v114;
        *(v111 + 12) = 2082;
        *(v111 + 14) = sub_10002C9C8(v142, a2, v144);
        *(v111 + 22) = 2082;
        *&aBlock = a3;
        *(&aBlock + 1) = v141;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v115 = String.init<A>(describing:)();
        v117 = sub_10002C9C8(v115, v116, v144);

        *(v111 + 24) = v117;
        _os_log_impl(&_mh_execute_header, v109, v110, "[%s] interactWithSession - session: %{public}s, No internal client found matching client: %{public}s", v111, 0x20u);
        swift_arrayDestroy();

        (*(v106 + 8))(v139, v108);
      }

      else
      {

        (*(v106 + 8))(v107, v108);
      }

      return;
    }
  }

  else
  {
LABEL_27:
    __break(1u);
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    goto LABEL_29;
  }

LABEL_5:
  v11 = 0;
  v13 = (v5 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v38 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v9 = *(v5 + 8 * v11 + 32);

      v38 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_14;
      }
    }

    if (*(v9 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a3)
    {
      break;
    }

    ++v11;
    if (v38 == v35)
    {
      goto LABEL_29;
    }
  }

  v43 = v132;
  v44 = *(v132 + 16);
  v45 = v134;
  v46 = v131;
  v44(v134, v9 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v131);
  v47 = sub_100030790();
  if (v47[2] && (v48 = sub_100031588(v9), (v49 & 1) != 0))
  {
    v50 = v126;
    sub_10002ADF8(v47[7] + *(v125 + 72) * v48, v126, type metadata accessor for HostedRoutingSessionSnapshot);

    v51 = v50;
    v52 = v129;
    sub_10002AF68(v51, v129, type metadata accessor for HostedRoutingSessionSnapshot);
    type metadata accessor for RoutingDecisionEngine();
    v53 = sub_1002DBC2C(v142, a2, v52);
    v72 = *(*v53 + 120);
    v139 = v53;
    v72(&aBlock);
    v73 = sub_100028D40();
    v74 = v135;
    v75 = v119;
    v76 = v140;
    (*(v135 + 16))(v119, v73, v140);
    v77 = aBlock;
    v151[0] = v148;
    v151[1] = v149;
    v152 = v150;

    sub_10026D080(v151, v144);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    v141 = *(&v77 + 1);

    sub_100238E4C(v151);
    if (os_log_type_enabled(v78, v79))
    {
      v81 = swift_slowAlloc();
      v137 = v77;
      v82 = v81;
      v146 = swift_slowAlloc();
      *v82 = 136315906;
      v83 = _typeName(_:qualified:)();
      LODWORD(v138) = v79;
      v85 = v74;
      v86 = sub_10002C9C8(v83, v84, &v146);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2082;
      v87 = v141;

      v88 = sub_10002C9C8(v137, v87, &v146);

      *(v82 + 14) = v88;
      *(v82 + 22) = 2082;
      *(v82 + 24) = sub_10002C9C8(v142, a2, &v146);
      *(v82 + 32) = 2082;
      v144[0] = aBlock;
      v144[1] = v148;
      v144[2] = v149;
      v145 = v150;
      sub_1002856A4();
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = sub_10002C9C8(v89, v90, &v146);

      *(v82 + 34) = v91;
      _os_log_impl(&_mh_execute_header, v78, v138, "[%s] interactWithSession<%{public}s> - session: %{public}s produced interaction: %{public}s", v82, 0x2Au);
      swift_arrayDestroy();

      v92 = v134;

      (*(v85 + 8))(v75, v140);
    }

    else
    {

      (*(v74 + 8))(v75, v76);
      v92 = v134;
    }

    v93 = v120;
    sub_100266350(v129, v120);
    type metadata accessor for RoutingClientEvent(0);

    v95 = sub_10023AF94(v94);
    v96 = *(**(*(v9 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

    v96(v95);

    sub_10031C6F0(&aBlock, v9);
    v97 = *sub_100028BB8();
    v98 = (*(v97 + 912))(&aBlock, v92, v93);

    v99 = swift_allocObject();
    swift_weakInit();
    v100 = swift_allocObject();
    swift_weakInit();
    v101 = swift_allocObject();
    swift_weakInit();
    v102 = swift_allocObject();
    *(v102 + 16) = v99;
    *(v102 + 24) = v100;
    v103 = v148;
    *(v102 + 32) = aBlock;
    *(v102 + 48) = v103;
    *(v102 + 64) = v149;
    *(v102 + 80) = v150;
    *(v102 + 88) = v101;
    v104 = *(*v98 + 168);

    sub_10026D080(v151, v144);
    v104(sub_10032BE0C, v102);

    sub_100238E4C(v151);
    (*(v121 + 8))(v93, v122);
    sub_10002AC54(v129, type metadata accessor for HostedRoutingSessionSnapshot);
    (*(v132 + 8))(v134, v131);
  }

  else
  {

    v54 = sub_100028D40();
    v55 = v135;
    v56 = v130;
    (*(v135 + 16))(v130, v54, v140);
    v57 = v128;
    v44(v128, v45, v46);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      LODWORD(v141) = v59;
      v61 = v60;
      v143 = swift_slowAlloc();
      *&aBlock = v143;
      *v61 = 136315650;
      v62 = _typeName(_:qualified:)();
      v64 = v43;
      v65 = sub_10002C9C8(v62, v63, &aBlock);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2082;
      *(v61 + 14) = sub_10002C9C8(v142, a2, &aBlock);
      *(v61 + 22) = 2082;
      sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration, &protocol conformance descriptor for RoutingSessionConfiguration);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = *(v64 + 8);
      v69(v57, v46);
      v70 = sub_10002C9C8(v66, v68, &aBlock);

      *(v61 + 24) = v70;
      _os_log_impl(&_mh_execute_header, v58, v141, "[%s] interactWithSession - session: %{public}s, No snapshot for configuration: %{public}s", v61, 0x20u);
      swift_arrayDestroy();

      (*(v55 + 8))(v130, v140);
      v69(v134, v46);
    }

    else
    {

      v71 = *(v43 + 8);
      v71(v57, v46);
      (*(v55 + 8))(v56, v140);
      v71(v45, v46);
    }
  }
}

void sub_10030C8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29[-1] - v12;
  v14 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v14;
  v34 = *(a1 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = v8;
      v18 = sub_100300FBC(v30);
      v19 = sub_10030D88C(v29, v16);
      if (*v20)
      {
        sub_10032970C(v31);
        (v19)(v29, 0);
        (v18)(v30, 0);
        if (v32)
        {
          sub_1000038A4(v31, &qword_1005266C8, &unk_100458470);
          v21 = *(a4 + 48);
          if (v21 <= 6 && ((1 << v21) & 0x47) != 0)
          {
            sub_10031C9DC(v16);
          }

          swift_beginAccess();
          v22 = swift_weakLoadStrong();
          if (v22)
          {
            v23 = v22;
            (*(*v22 + 272))(v33);
            v24 = sub_100030790();
            if (v24[2])
            {
              v25 = sub_100031588(v16);
              if (v26)
              {
                sub_10002ADF8(v24[7] + *(v17 + 72) * v25, v11, type metadata accessor for HostedRoutingSessionSnapshot);

                sub_10002AF68(v11, v13, type metadata accessor for HostedRoutingSessionSnapshot);
                v27 = *(*(v16 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

                sub_10023C08C(v23, v27, v13);

                sub_10002AC54(v13, type metadata accessor for HostedRoutingSessionSnapshot);
                return;
              }
            }
          }

          goto LABEL_14;
        }
      }

      else
      {
        (v19)(v29, 0);
        (v18)(v30, 0);
      }

      __break(1u);
      return;
    }

LABEL_14:
  }
}

void sub_10030CC70(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5, int a6)
{
  LODWORD(v92) = a6;
  v88 = a3;
  v89 = a5;
  v90 = a1;
  v91 = a2;
  v78 = *v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v83 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RoutingDialog.Action();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Logger();
  v79 = *(v80 - 8);
  v15 = __chkstk_darwin(v80);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v77 = &v76 - v17;
  v18 = sub_1001BC5A8(&qword_100525F40, &qword_100458140);
  __chkstk_darwin(v18 - 8);
  v76 = &v76 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *sub_100021264();
  if ((v92 & 1) == 0)
  {
LABEL_15:
    (*(v12 + 16))(v14, v88, v11);
    v29 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    v32 = v91;
    *(v30 + 2) = v6;
    *(v30 + 3) = v31;
    *(v30 + 4) = v32;
    (*(v12 + 32))(&v30[v29], v14, v11);
    v33 = &v30[(v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8];
    v34 = v89;
    *v33 = a4;
    *(v33 + 1) = v34;
    v98 = sub_10032BE1C;
    v99 = v30;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100003D98;
    v97 = &unk_1004CDA10;
    v35 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v36 = v24;

    v37 = v81;
    static DispatchQoS.unspecified.getter();
    v93[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v38 = v83;
    v39 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v85 + 8))(v38, v39);
    (*(v82 + 8))(v37, v84);

    return;
  }

  v86 = v12;
  v92 = v11;
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if (v26)
  {
    v27 = sub_10002107C();
    v24 = v27;
    if (!(v27 >> 62))
    {
      v13 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_5;
      }

LABEL_26:

      v61 = sub_100028D40();
      v62 = v79;
      v63 = v87;
      v64 = v80;
      (*(v79 + 16))(v87, v61, v80);
      v65 = v91;

      swift_unknownObjectRetain();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = v62;
        v69 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v69 = 136315650;
        v70 = _typeName(_:qualified:)();
        v72 = sub_10002C9C8(v70, v71, v93);

        *(v69 + 4) = v72;
        *(v69 + 12) = 2082;
        *(v69 + 14) = sub_10002C9C8(v90, v65, v93);
        *(v69 + 22) = 2082;
        aBlock = a4;
        v95 = v89;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v73 = String.init<A>(describing:)();
        v75 = sub_10002C9C8(v73, v74, v93);

        *(v69 + 24) = v75;
        _os_log_impl(&_mh_execute_header, v66, v67, "[%s] interactWithDialog - dialog: %{public}s, No internal client found matching client: %{public}s", v69, 0x20u);
        swift_arrayDestroy();

        (*(v68 + 8))(v87, v64);
      }

      else
      {

        (*(v62 + 8))(v63, v64);
      }

      return;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_5:
  v28 = 0;
  v14 = &unk_100534000;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v12 = *(v24 + 8 * v28 + 32);

      v11 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_14;
      }
    }

    if (*(v12 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a4)
    {
      break;
    }

    ++v28;
    if (v11 == v13)
    {
      goto LABEL_26;
    }
  }

  v40 = sub_100300E8C(&aBlock);
  v41 = sub_10030D810(v93, v12);
  if (*v42)
  {
    v44 = v90;
    v43 = v91;
    v45 = sub_10032A620(v90, v91);
    v47 = v46;
    (v41)(v93, 0);
    (v40)(&aBlock, 0);
    v48 = v80;
    if (v45)
    {
      v49 = v86;
      v50 = v76;
      v51 = v92;
      (*(v86 + 16))(v76, v88, v92);
      (*(v49 + 56))(v50, 0, 1, v51);
      aBlock = 0;
      v45(v50, &aBlock);
      sub_1001C7C2C(v45, v47);

      sub_1000038A4(v50, &qword_100525F40, &qword_100458140);
      return;
    }
  }

  else
  {
    (v41)(v93, 0);
    (v40)(&aBlock, 0);
    v48 = v80;
    v44 = v90;
    v43 = v91;
  }

  v52 = sub_100028D40();
  v53 = v79;
  v54 = v77;
  (*(v79 + 16))(v77, v52, v48);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v57 = 136315650;
    v58 = _typeName(_:qualified:)();
    v60 = sub_10002C9C8(v58, v59, &aBlock);

    *(v57 + 4) = v60;
    *(v57 + 12) = 2082;
    *(v57 + 14) = sub_10002C9C8(v44, v43, &aBlock);
    *(v57 + 22) = 2082;
    *(v57 + 24) = sub_10002C9C8(v44, v43, &aBlock);
    _os_log_impl(&_mh_execute_header, v55, v56, "[%s] interactWithDialog - dialog: %{public}s, No pending interaction found for identifier: %{public}s", v57, 0x20u);
    swift_arrayDestroy();

    (*(v79 + 8))(v77, v48);
  }

  else
  {

    (*(v53 + 8))(v54, v48);
  }
}

uint64_t (*sub_10030D810(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10032CCD8(v4, a2);
  return sub_10030D888;
}

uint64_t (*sub_10030D88C(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10032CD80(v4, a2);
  return sub_100331920;
}

uint64_t (*sub_10030D904(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10032CE24(v4, a2);
  return sub_100331920;
}

void sub_10030D97C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_10030D9C8(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, int a4)
{
  LODWORD(v281) = a4;
  v275 = a3;
  v277 = a2;
  v279 = a1;
  v263 = *v4;
  v243 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v241 = &v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for DispatchWorkItemFlags();
  v274 = *(v271 - 8);
  __chkstk_darwin(v271);
  v270 = &v232 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for DispatchQoS();
  v272 = *(v273 - 8);
  __chkstk_darwin(v273);
  v269 = &v232 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
  __chkstk_darwin(v237);
  v238 = &v232 - v8;
  v250 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v253 = *(v250 - 8);
  v9 = __chkstk_darwin(v250);
  v247 = &v232 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v239 = &v232 - v12;
  v240 = v13;
  __chkstk_darwin(v11);
  v249 = &v232 - v14;
  v15 = type metadata accessor for RoutingControl();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v18 = __chkstk_darwin(v15);
  v256 = &v232 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v232 - v20;
  v22 = __chkstk_darwin(v19);
  v251 = &v232 - v23;
  v24 = __chkstk_darwin(v22);
  v280 = &v232 - v25;
  v26 = __chkstk_darwin(v24);
  v260 = &v232 - v27;
  v28 = __chkstk_darwin(v26);
  v268 = &v232 - v29;
  v30 = __chkstk_darwin(v28);
  v248 = &v232 - v31;
  v32 = __chkstk_darwin(v30);
  v244 = &v232 - v33;
  v34 = __chkstk_darwin(v32);
  v254 = &v232 - v35;
  __chkstk_darwin(v34);
  v245 = &v232 - v36;
  v276 = type metadata accessor for Logger();
  v267 = *(v276 - 1);
  v37 = __chkstk_darwin(v276);
  v252 = &v232 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v266 = &v232 - v40;
  v41 = __chkstk_darwin(v39);
  v262 = &v232 - v42;
  __chkstk_darwin(v41);
  v246 = &v232 - v43;
  v44 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v45 = *(v44 - 8);
  v46 = __chkstk_darwin(v44 - 8);
  v255 = &v232 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v258 = (&v232 - v48);
  v49 = type metadata accessor for RoutingSessionConfiguration();
  v265 = *(v49 - 8);
  v50 = __chkstk_darwin(v49);
  v259 = &v232 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v264 = &v232 - v52;
  v53 = type metadata accessor for DispatchPredicate();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v56 = (&v232 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_100021264();
  v58 = *v57;
  if ((v281 & 1) == 0)
  {
LABEL_17:
    v67 = v268;
    (*(v16 + 2))(v268, v279, v15);
    v68 = (v16[80] + 24) & ~v16[80];
    v69 = swift_allocObject();
    *(v69 + 16) = v278;
    (*(v16 + 4))(v69 + v68, v67, v15);
    v70 = (v69 + ((v17 + v68 + 7) & 0xFFFFFFFFFFFFFFF8));
    v71 = v275;
    *v70 = v277;
    v70[1] = v71;
    *&v289 = sub_10032BEE0;
    *(&v289 + 1) = v69;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v288 = sub_100003D98;
    *(&v288 + 1) = &unk_1004CDA60;
    v72 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v73 = v58;
    v74 = v269;
    static DispatchQoS.unspecified.getter();
    *&v282 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v75 = v270;
    v76 = v271;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v72);

    (*(v274 + 8))(v75, v76);
    (*(v272 + 8))(v74, v273);
LABEL_18:

    return;
  }

  v233 = v45;
  v59 = v16;
  v232 = v21;
  v16 = v277;
  v234 = v57;
  v235 = v17;
  *v56 = v58;
  (*(v54 + 104))(v56, enum case for DispatchPredicate.onQueue(_:), v53);
  v60 = v58;
  v61 = _dispatchPreconditionTest(_:)();
  (*(v54 + 8))(v56, v53);
  if (v61)
  {
    v261 = v59;
    v257 = v15;
    v62 = sub_10002107C();
    v17 = v62;
    v236 = v49;
    if (!(v62 >> 62))
    {
      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_42:
    __break(1u);
  }

  v63 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v64 = v280;
  if (v63)
  {
    v65 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v281 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v65 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_42;
        }

        v281 = *(v17 + 8 * v65 + 32);

        v15 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_16;
        }
      }

      v58 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient;
      if (*(v281 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == v16)
      {
        break;
      }

      ++v65;
      v66 = v15 == v63;
      v64 = v280;
      if (v66)
      {
        goto LABEL_19;
      }
    }

    v98 = v281;

    v99 = *(v265 + 16);
    v100 = v264;
    v101 = v236;
    v99(v264, v98 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v236);
    v102 = sub_100030790();
    if (v102[2] && (v103 = sub_100031588(v98), (v104 & 1) != 0))
    {
      v105 = v255;
      sub_10002ADF8(v102[7] + *(v233 + 72) * v103, v255, type metadata accessor for HostedRoutingSessionSnapshot);

      v106 = v105;
      v107 = v258;
      sub_10002AF68(v106, v258, type metadata accessor for HostedRoutingSessionSnapshot);
      type metadata accessor for RoutingDecisionEngine();
      v108 = v279;
      v109 = sub_1002DBC44(v279, v107, v100);
      v110 = v261;
      v111 = v267;
      v277 = &v58[v98];
      v136 = v109;
      (*(*v109 + 120))(&aBlock);
      type metadata accessor for RoutingClientEvent(0);

      v275 = v136;
      v138 = sub_10023AF94(v137);
      v139 = *(**(*(v98 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

      v280 = v138;
      v139(v138);

      v140 = sub_100028D40();
      v141 = v246;
      v142 = v276;
      (*(v111 + 16))(v246, v140, v276);
      v143 = *(&aBlock + 1);
      v259 = aBlock;
      v291[0] = v288;
      v291[1] = v289;
      v292 = v290;
      v144 = *(v110 + 2);
      v145 = v245;
      v146 = v108;
      v147 = v110;
      v148 = v257;
      v262 = v110 + 16;
      v260 = v144;
      (v144)(v245, v146, v257);

      sub_10026D080(v291, &v282);
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();

      sub_100238E4C(v291);
      v151 = os_log_type_enabled(v149, v150);
      v266 = v143;
      if (v151)
      {
        v152 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v286 = v256;
        *v152 = 136315906;
        v153 = _typeName(_:qualified:)();
        v155 = v145;
        v156 = sub_10002C9C8(v153, v154, &v286);

        *(v152 + 4) = v156;
        *(v152 + 12) = 2082;

        v157 = sub_10002C9C8(v259, v143, &v286);

        *(v152 + 14) = v157;
        *(v152 + 22) = 2082;
        sub_100004930(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v159;
        v161 = *(v147 + 1);
        v161(v155, v257);
        v162 = sub_10002C9C8(v158, v160, &v286);

        *(v152 + 24) = v162;
        *(v152 + 32) = 2082;
        v282 = aBlock;
        v283 = v288;
        v284 = v289;
        v285 = v290;
        sub_1002856A4();
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = sub_10002C9C8(v163, v164, &v286);

        *(v152 + 34) = v165;
        _os_log_impl(&_mh_execute_header, v149, v150, "[%s] interactWithControl<%{public}s> - control: %{public}s produced interaction: %{public}s", v152, 0x2Au);
        swift_arrayDestroy();
        v148 = v257;

        (*(v111 + 8))(v141, v276);
      }

      else
      {

        v161 = *(v147 + 1);
        v161(v145, v148);
        (*(v111 + 8))(v141, v142);
      }

      v166 = v264;
      v167 = v235;
      v168 = v253;
      v169 = v254;
      v170 = v247;
      v171 = v268;
      if (v292 == 11)
      {
        v279 = v161;
        v172 = swift_projectBox();
        v173 = v238;
        sub_10001D9AC(v172, v238, &qword_100524270, &unk_100458150);
        v174 = *(v237 + 48);
        v175 = *(v261 + 4);
        v278 = (v261 + 32);
        v276 = v175;
        (v175)(v169, v173, v148);
        v176 = *(v168 + 32);
        v177 = v249;
        v178 = v250;
        v176(v249, v173 + v174, v250);
        v179 = *(v168 + 16);
        v180 = v239;
        v179(v239, v177, v178);
        v179(v170, v180, v178);
        v181 = (*(v168 + 80) + 24) & ~*(v168 + 80);
        v182 = swift_allocObject();
        v183 = v281;
        *(v182 + 16) = v281;
        v176((v182 + v181), v180, v178);
        v268 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
        v184 = *(v183 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
        v185 = v170;
        if (v184 == *v234)
        {
          v207 = *(v277 + 1);
          ObjectType = swift_getObjectType();
          v209 = *(v207 + 40);

          swift_unknownObjectRetain();
          v209(v185, ObjectType, v207);

          swift_unknownObjectRelease();
          v210 = v185;
          v194 = *(v168 + 8);
          v194(v210, v178);
          v192 = v271;
          v190 = v270;
          v191 = v269;
        }

        else
        {
          v186 = swift_allocObject();
          *(v186 + 16) = sub_10032C148;
          *(v186 + 24) = v182;
          *&v284 = sub_1002253D8;
          *(&v284 + 1) = v186;
          *&v282 = _NSConcreteStackBlock;
          *(&v282 + 1) = 1107296256;
          *&v283 = sub_100003D98;
          *(&v283 + 1) = &unk_1004CDB78;
          v187 = _Block_copy(&v282);

          v188 = v184;

          v189 = v269;
          static DispatchQoS.unspecified.getter();
          v286 = _swiftEmptyArrayStorage;
          sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
          v190 = v270;
          v191 = v189;
          v192 = v271;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v187);

          (*(v274 + 8))(v190, v192);
          (*(v272 + 8))(v191, v273);
          v193 = v185;
          v194 = *(v253 + 8);
          v194(v193, v250);
        }

        v211 = v260;
        v212 = v244;
        v213 = v257;
        (v260)(v244, v254, v257);
        (v211)(v248, v212, v213);
        v214 = (v261[80] + 24) & ~v261[80];
        v215 = swift_allocObject();
        *(v215 + 16) = v183;
        (v276)(v215 + v214, v212, v213);
        v216 = *&v268[v183];
        if (v216 != *v234)
        {
          v217 = swift_allocObject();
          *(v217 + 16) = sub_10032C214;
          *(v217 + 24) = v215;
          *&v284 = sub_1002253D8;
          *(&v284 + 1) = v217;
          *&v282 = _NSConcreteStackBlock;
          *(&v282 + 1) = 1107296256;
          *&v283 = sub_100003D98;
          *(&v283 + 1) = &unk_1004CDBF0;
          v277 = _Block_copy(&v282);

          v218 = v216;
          v278 = v194;
          v219 = v192;
          v276 = v218;

          static DispatchQoS.unspecified.getter();
          v286 = _swiftEmptyArrayStorage;
          sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          v220 = v274;
          v221 = v272;
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          v281 = v183;
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v222 = v277;
          v223 = v276;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v222);

          sub_100238E4C(v291);

          (*(v220 + 8))(v190, v219);
          (*(v221 + 8))(v191, v273);
          v224 = v257;
          v225 = v279;
          v279(v248, v257);
          v278(v249, v250);
          v225(v254, v224);
          sub_10002AC54(v258, type metadata accessor for HostedRoutingSessionSnapshot);
          (*(v265 + 8))(v264, v236);
          goto LABEL_18;
        }

        v226 = *(v277 + 1);
        v227 = swift_getObjectType();
        v228 = *(v226 + 64);

        swift_unknownObjectRetain();
        v229 = v248;
        v228(v248, 0, v227, v226);

        swift_unknownObjectRelease();
        sub_100238E4C(v291);

        v230 = v257;
        v231 = v279;
        v279(v229, v257);
        v194(v249, v250);
        v231(v254, v230);
      }

      else
      {
        v195 = sub_100028BB8();
        v196 = v241;
        sub_10029BE08(v241);
        v197 = (*(*v195 + 912))(&aBlock, v166, v196);

        (*(v242 + 8))(v196, v243);
        v198 = swift_allocObject();
        swift_weakInit();
        (v260)(v171, v279, v148);
        v199 = v261;
        v200 = (v261[80] + 24) & ~v261[80];
        v201 = v167 + v200 + 7;
        v202 = v171;
        v203 = v201 & 0xFFFFFFFFFFFFFFF8;
        v204 = ((v201 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v205 = swift_allocObject();
        *(v205 + 16) = v198;
        (*(v199 + 4))(v205 + v200, v202, v148);
        *(v205 + v203) = v280;
        *(v205 + v204) = v278;
        v206 = *(*v197 + 168);

        v206(sub_10032C09C, v205);

        sub_100238E4C(v291);
      }

      sub_10002AC54(v258, type metadata accessor for HostedRoutingSessionSnapshot);
      (*(v265 + 8))(v264, v236);
    }

    else
    {

      v112 = sub_100028D40();
      v113 = v267;
      (*(v267 + 16))(v262, v112, v276);
      v114 = v261;
      v115 = v260;
      v116 = v257;
      (*(v261 + 2))(v260, v279, v257);
      v117 = v259;
      v99(v259, v100, v101);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v280 = swift_slowAlloc();
        *&aBlock = v280;
        *v120 = 136315650;
        v121 = _typeName(_:qualified:)();
        v123 = sub_10002C9C8(v121, v122, &aBlock);

        *(v120 + 4) = v123;
        *(v120 + 12) = 2082;
        sub_100004930(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v124 = dispatch thunk of CustomStringConvertible.description.getter();
        v126 = v125;
        (*(v114 + 1))(v115, v116);
        v127 = sub_10002C9C8(v124, v126, &aBlock);

        *(v120 + 14) = v127;
        *(v120 + 22) = 2082;
        sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration, &protocol conformance descriptor for RoutingSessionConfiguration);
        v128 = v236;
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v131 = v130;
        v132 = *(v265 + 8);
        v132(v117, v128);
        v133 = sub_10002C9C8(v129, v131, &aBlock);

        *(v120 + 24) = v133;
        _os_log_impl(&_mh_execute_header, v118, v119, "[%s] interactWithControl - control: %{public}s, No snapshot for configuration: %{public}s", v120, 0x20u);
        swift_arrayDestroy();

        (*(v113 + 8))(v262, v276);
        v132(v264, v128);
      }

      else
      {

        v134 = *(v265 + 8);
        v135 = v236;
        v134(v117, v236);
        (*(v114 + 1))(v115, v116);
        (*(v113 + 8))(v262, v276);
        v134(v100, v135);
      }
    }
  }

  else
  {
LABEL_19:

    v77 = sub_100028D40();
    v78 = v267;
    v79 = v266;
    v80 = v276;
    (*(v267 + 16))(v266, v77, v276);
    v81 = v261;
    v82 = v257;
    (*(v261 + 2))(v64, v279, v257);
    v83 = v16;
    swift_unknownObjectRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v64;
      v87 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *&v282 = v281;
      *v87 = 136315650;
      v88 = _typeName(_:qualified:)();
      v90 = sub_10002C9C8(v88, v89, &v282);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2082;
      sub_100004930(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      (*(v81 + 1))(v86, v82);
      v94 = sub_10002C9C8(v91, v93, &v282);

      *(v87 + 14) = v94;
      *(v87 + 22) = 2082;
      *&aBlock = v83;
      *(&aBlock + 1) = v275;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v95 = String.init<A>(describing:)();
      v97 = sub_10002C9C8(v95, v96, &v282);

      *(v87 + 24) = v97;
      _os_log_impl(&_mh_execute_header, v84, v85, "[%s] interactWithControl - control: %{public}s, No internal client found matching client: %{public}s", v87, 0x20u);
      swift_arrayDestroy();

      (*(v78 + 8))(v266, v276);
    }

    else
    {

      (*(v81 + 1))(v64, v82);
      (*(v78 + 8))(v79, v80);
    }
  }
}

double sub_10031031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v62 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = &v60 - v15;
  v16 = type metadata accessor for RoutingControl();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  v18 = __chkstk_darwin(v16);
  v19 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = *(a1 + 16);
  *v76 = *a1;
  *&v76[16] = v22;
  v77 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v67 = a4;
    v26 = v74;
    v27 = *(v74 + 16);
    v27(v21, a3, v16);
    v27(v19, v21, v16);
    v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    (*(v26 + 32))(v29 + v28, v21, v16);
    v30 = v29 + ((v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
    v31 = *&v76[16];
    *v30 = *v76;
    *(v30 + 16) = v31;
    *(v30 + 32) = v77;
    v32 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v33 = *(v25 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    sub_100330C4C(v76, aBlock);
    v34 = v33;
    v35 = *sub_100021264();

    v66 = a5;
    v65 = v19;
    if (v34 == v35)
    {
      v43 = v74;
      v44 = *v76;
      v45 = *(v25 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      v60 = v16;
      if (*v76)
      {
        v78 = *&v76[8];
        v79 = v76[24];
        sub_1002D3DE8();
        v46 = swift_allocError();
        *v47 = v44;
        v48 = v78;
        *(v47 + 24) = v79;
        *(v47 + 8) = v48;
      }

      else
      {
        v46 = 0;
      }

      ObjectType = swift_getObjectType();
      v50 = v45;
      v51 = *(v45 + 64);
      sub_100330C4C(v76, aBlock);
      swift_unknownObjectRetain();
      v52 = v65;
      v51(v65, v46, ObjectType, v50);

      swift_unknownObjectRelease();
      (*(v43 + 8))(v52, v60);
    }

    else
    {
      v36 = *(v25 + v32);
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100330AE4;
      *(v37 + 24) = v29;
      aBlock[4] = sub_1002253D8;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CE2E8;
      v38 = _Block_copy(aBlock);
      v61 = v36;

      v39 = v68;
      static DispatchQoS.unspecified.getter();
      *&v78 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v40 = v69;
      v41 = v73;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v42 = v61;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v72 + 8))(v40, v41);
      (*(v70 + 8))(v39, v71);
      (*(v74 + 8))(v65, v16);
    }

    v53 = v67;
    (*(*v67 + 272))(v76);
    v54 = sub_100030790();
    if (v54[2] && (v55 = sub_100031588(v25), (v56 & 1) != 0))
    {
      v57 = v63;
      sub_10002ADF8(v54[7] + *(v62 + 72) * v55, v63, type metadata accessor for HostedRoutingSessionSnapshot);

      v58 = v64;
      sub_10002AF68(v57, v64, type metadata accessor for HostedRoutingSessionSnapshot);
      v59 = *(*(v25 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

      sub_10023C08C(v53, v59, v58);

      sub_10002AC54(v58, type metadata accessor for HostedRoutingSessionSnapshot);
    }

    else
    {
    }
  }

  return result;
}

void sub_100310B08(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v150) = a4;
  v148 = a3;
  v151 = a1;
  v134 = *v4;
  v145 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContinuousRoutingControl();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v139 = &v126 - v16;
  v17 = __chkstk_darwin(v15);
  v132 = &v126 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v126 - v20;
  __chkstk_darwin(v19);
  v131 = &v126 - v21;
  v149 = type metadata accessor for Logger();
  v147 = *(v149 - 8);
  v22 = __chkstk_darwin(v149);
  v146 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = &v126 - v24;
  v138 = type metadata accessor for RoutingSessionConfiguration();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *sub_100021264();
  if ((v150 & 1) == 0)
  {
LABEL_15:
    (*(v11 + 16))(v14, v151, v10);
    v35 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v36 = (v12 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v5;
    (*(v11 + 32))(v37 + v35, v14, v10);
    v38 = (v37 + v36);
    v39 = v148;
    *v38 = a2;
    v38[1] = v39;
    *&v157 = sub_1003318A0;
    *(&v157 + 1) = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v156 = sub_100003D98;
    *(&v156 + 1) = &unk_1004CDC40;
    v40 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v41 = v30;

    v42 = v140;
    static DispatchQoS.unspecified.getter();
    *&v152[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v43 = v142;
    v44 = v145;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v144 + 8))(v43, v44);
    (*(v141 + 8))(v42, v143);

    return;
  }

  v150 = v11;
  v135 = v10;
  v145 = v5;
  *v29 = v30;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = v30;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((v12 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (v33)
    {
      goto LABEL_5;
    }

LABEL_38:

    v106 = sub_100028D40();
    v107 = v147;
    v108 = v146;
    v109 = v149;
    (*(v147 + 16))(v146, v106, v149);
    v110 = v150;
    v111 = v139;
    v112 = v135;
    (*(v150 + 16))(v139, v151, v135);
    swift_unknownObjectRetain();
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *&v152[0] = v151;
      *v115 = 136315650;
      v116 = _typeName(_:qualified:)();
      v118 = sub_10002C9C8(v116, v117, v152);

      *(v115 + 4) = v118;
      *(v115 + 12) = 2082;
      sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      (*(v110 + 8))(v111, v112);
      v122 = sub_10002C9C8(v119, v121, v152);

      *(v115 + 14) = v122;
      *(v115 + 22) = 2082;
      *&aBlock = a2;
      *(&aBlock + 1) = v148;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v123 = String.init<A>(describing:)();
      v125 = sub_10002C9C8(v123, v124, v152);

      *(v115 + 24) = v125;
      _os_log_impl(&_mh_execute_header, v113, v114, "[%s] beginInteractionWithControl - control: %{public}s, no internal client found matching client: %{public}s", v115, 0x20u);
      swift_arrayDestroy();

      (*(v147 + 8))(v146, v149);
    }

    else
    {

      (*(v110 + 8))(v111, v112);
      (*(v107 + 8))(v108, v109);
    }

    return;
  }

  v32 = sub_10002107C();
  v12 = v32;
  if (v32 >> 62)
  {
    goto LABEL_37;
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_38;
  }

LABEL_5:
  v11 = 0;
  v30 = (v12 & 0xFFFFFFFFFFFFFF8);
  v10 = &unk_100534000;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v34 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_36;
      }

      v5 = *(v12 + 8 * v11 + 32);

      v34 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_14;
      }
    }

    if (*(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a2)
    {
      break;
    }

    ++v11;
    if (v34 == v33)
    {
      goto LABEL_38;
    }
  }

  (*(v137 + 16))(v136, v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v138);
  v45 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
  v46 = swift_allocBox();
  v48 = v47;
  v49 = *(v45 + 48);
  v50 = v150 + 16;
  v51 = *(v150 + 16);
  v52 = v151;
  v53 = v135;
  (v51)(v47, v151, v135);
  type metadata accessor for RoutingInteraction.Action.ControlContext();
  *(v48 + v49) = sub_1001E789C(0, 0);
  v161[0] = v46;
  memset(&v161[1], 0, 24);
  v162 = 8;
  sub_100272B38(v161, &aBlock);
  v54 = sub_100028D40();
  v55 = v147;
  v56 = v133;
  v57 = v149;
  (*(v147 + 16))(v133, v54, v149);
  v58 = *(&aBlock + 1);
  v143 = aBlock;
  v159[0] = v156;
  v159[1] = v157;
  v160 = v158;
  v59 = v131;
  v148 = v50;
  v146 = v51;
  (v51)(v131, v52, v53);

  sub_10026D080(v159, v152);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  sub_100238E4C(v159);
  v62 = os_log_type_enabled(v60, v61);
  v144 = v58;
  if (v62)
  {
    v63 = swift_slowAlloc();
    LODWORD(v141) = v61;
    v64 = v63;
    v142 = swift_slowAlloc();
    v154 = v142;
    *v64 = 136315906;
    v65 = _typeName(_:qualified:)();
    v67 = sub_10002C9C8(v65, v66, &v154);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2082;

    v68 = sub_10002C9C8(v143, v58, &v154);

    *(v64 + 14) = v68;
    *(v64 + 22) = 2082;
    sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
    v69 = v135;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    v73 = *(v150 + 8);
    v73(v59, v69);
    v74 = sub_10002C9C8(v70, v72, &v154);

    *(v64 + 24) = v74;
    *(v64 + 32) = 2082;
    v152[0] = aBlock;
    v152[1] = v156;
    v152[2] = v157;
    v153 = v158;
    sub_1002856A4();
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = sub_10002C9C8(v75, v76, &v154);

    *(v64 + 34) = v77;
    _os_log_impl(&_mh_execute_header, v60, v141, "[%s] beginInteractionWithControl<%{public}s> - control: %{public}s produced interaction: %{public}s", v64, 0x2Au);
    swift_arrayDestroy();

    (*(v55 + 8))(v133, v149);
  }

  else
  {

    v73 = *(v150 + 8);
    v73(v59, v135);
    (*(v55 + 8))(v56, v57);
  }

  v78 = v145;
  v79 = sub_100300EE4();
  v80 = v132;
  if (!v79[2])
  {

    v83 = v135;
    goto LABEL_23;
  }

  sub_100031588(v5);
  v82 = v81;

  v83 = v135;
  if ((v82 & 1) == 0)
  {
LABEL_23:
    v84 = *(v78 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v152[0] = v84;
    sub_10032C2E4(&_swiftEmptySetSingleton, v5, isUniquelyReferenced_nonNull_native, &qword_100526700, &unk_1004584C8);

    *(v78 + 48) = *&v152[0];
  }

  (v146)(v80, v151, v83);
  v86 = *(v78 + 48);

  v87 = swift_isUniquelyReferenced_nonNull_native();
  *&v152[0] = v86;
  v89 = sub_100031588(v5);
  v90 = *(v86 + 16);
  v91 = (v88 & 1) == 0;
  v92 = v90 + v91;
  if (__OFADD__(v90, v91))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v59) = v88;
    if (*(v86 + 24) < v92)
    {
      sub_10032ADC0(v92, v87, &qword_100526700, &unk_1004584C8);
      v93 = sub_100031588(v5);
      if ((v59 & 1) != (v94 & 1))
      {
LABEL_46:
        type metadata accessor for RoutingSessionServer.Client(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v89 = v93;
      if ((v59 & 1) == 0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_31;
    }

    if (v87)
    {
      if ((v88 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_31;
    }
  }

  sub_10032C9B8(&qword_100526700, &unk_1004584C8);
  if ((v59 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_31:
  v154 = *(*(*&v152[0] + 56) + 8 * v89);
  v95 = v127;
  sub_1002CC07C(v127, v80);
  v73(v95, v83);
  v96 = *&v152[0];
  if (v154)
  {
    *(*(*&v152[0] + 56) + 8 * v89) = v154;
  }

  else
  {

    sub_10032B714(v89, v96);
  }

  *(v78 + 48) = v96;

  sub_10031C6F0(&aBlock, v5);
  v97 = sub_100028BB8();
  v98 = v128;
  sub_10029BE08(v128);
  v99 = v136;
  v100 = (*(*v97 + 912))(&aBlock, v136, v98);

  (*(v129 + 8))(v98, v130);
  v101 = swift_allocObject();
  swift_weakInit();
  v102 = swift_allocObject();
  swift_weakInit();
  v103 = swift_allocObject();
  *(v103 + 16) = v101;
  *(v103 + 24) = v102;
  v104 = v156;
  *(v103 + 32) = aBlock;
  *(v103 + 48) = v104;
  *(v103 + 64) = v157;
  *(v103 + 80) = v158;
  v105 = *(*v100 + 168);

  sub_10026D080(v159, v152);
  v105(sub_10033192C, v103);

  sub_100238E4C(v159);
  (*(v137 + 8))(v99, v138);
}

void sub_100311E54(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v151) = a4;
  v149 = a3;
  v153 = a2;
  v152 = a1;
  v138 = *v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v6 - 8);
  __chkstk_darwin(v6);
  v144 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContinuousRoutingControl();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v154 = &v129 - v16;
  v17 = __chkstk_darwin(v15);
  v135 = &v129 - v18;
  __chkstk_darwin(v17);
  v130 = &v129 - v19;
  v150 = type metadata accessor for Logger();
  v148 = *(v150 - 8);
  v20 = __chkstk_darwin(v150);
  v147 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v137 = &v129 - v23;
  __chkstk_darwin(v22);
  v134 = &v129 - v24;
  v25 = sub_1001BC5A8(&qword_100525798, &qword_100457B00);
  __chkstk_darwin(v25 - 8);
  v136 = &v129 - v26;
  v141 = type metadata accessor for RoutingSessionConfiguration();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *sub_100021264();
  if ((v151 & 1) == 0)
  {
LABEL_16:
    (*(v11 + 16))(v14, v152, v10);
    v38 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v5;
    (*(v11 + 32))(v39 + v38, v14, v10);
    v40 = (v39 + ((v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
    v41 = v149;
    *v40 = v153;
    v40[1] = v41;
    *&v160 = sub_10032D6FC;
    *(&v160 + 1) = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v159 = sub_100003D98;
    *(&v159 + 1) = &unk_1004CDCB8;
    v42 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v43 = v6;
    v44 = v32;

    v45 = v142;
    static DispatchQoS.unspecified.getter();
    *&v155[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v46 = v144;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v146 + 8))(v46, v43);
    (*(v143 + 8))(v45, v145);

    return;
  }

  v6 = v153;
  v14 = v152;
  v129 = v11;
  v146 = v10;
  v151 = v5;
  *v31 = v32;
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v33 = v32;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v31, v28);
  if (v11)
  {
    v34 = sub_10002107C();
    v11 = v34;
    if (!(v34 >> 62))
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v36 = v14;
  v37 = v154;
  if (!v35)
  {
LABEL_17:

    v47 = sub_100028D40();
    v48 = v148;
    v49 = v147;
    (*(v148 + 16))(v147, v47, v150);
    v50 = v129;
    v51 = v146;
    (*(v129 + 16))(v37, v36, v146);
    swift_unknownObjectRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v50;
      v55 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *&v155[0] = v154;
      *v55 = 136315650;
      v56 = _typeName(_:qualified:)();
      v58 = v48;
      v59 = sub_10002C9C8(v56, v57, v155);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v54 + 8))(v37, v51);
      v63 = sub_10002C9C8(v60, v62, v155);

      *(v55 + 14) = v63;
      *(v55 + 22) = 2082;
      *&aBlock = v6;
      *(&aBlock + 1) = v149;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v64 = String.init<A>(describing:)();
      v66 = sub_10002C9C8(v64, v65, v155);

      *(v55 + 24) = v66;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%s] endInteractionWithControl - control: %{public}s, no internal client found matching client: %{public}s", v55, 0x20u);
      swift_arrayDestroy();

      (*(v58 + 8))(v147, v150);
    }

    else
    {

      (*(v50 + 8))(v37, v51);
      (*(v48 + 8))(v49, v150);
    }

    return;
  }

  v14 = 0;
  v32 = (v11 & 0xFFFFFFFFFFFFFF8);
  v12 = &unk_100534000;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v5 = *(v11 + 8 * v14 + 32);

      v10 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_15;
      }
    }

    if (*(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == v6)
    {
      break;
    }

    ++v14;
    v37 = v154;
    if (v10 == v35)
    {
      goto LABEL_17;
    }
  }

  (*(v140 + 16))(v139, v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v141);
  v67 = sub_100300F24(&aBlock);
  v68 = sub_10030D904(v155, v5);
  if (*v69)
  {
    v70 = v136;
    sub_1002CCEB0(v36, v136);
    (v68)(v155, 0);
    (v67)(&aBlock, 0);
    v71 = v129;
    v72 = v146;
    if ((*(v129 + 48))(v70, 1, v146) != 1)
    {
      sub_1000038A4(v70, &qword_100525798, &qword_100457B00);
      v73 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v74 = swift_allocBox();
      v76 = v75;
      v77 = *(v73 + 48);
      v78 = *(v71 + 16);
      v78(v75, v36, v72);
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      *(v76 + v77) = sub_1001E789C(0, 0);
      v164[0] = v74;
      memset(&v164[1], 0, 24);
      v165 = 9;
      sub_100272B38(v164, &aBlock);
      v79 = sub_100028D40();
      v80 = v148;
      v81 = v134;
      (*(v148 + 16))(v134, v79, v150);
      v82 = v72;
      v83 = aBlock;
      v162[0] = v159;
      v162[1] = v160;
      v163 = v161;
      v84 = v130;
      v85 = v36;
      v86 = *(&aBlock + 1);
      v78(v130, v85, v82);

      sub_10026D080(v162, v155);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();

      sub_100238E4C(v162);
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        LODWORD(v153) = v88;
        v90 = v89;
        v154 = swift_slowAlloc();
        v157 = v154;
        *v90 = 136315906;
        v91 = _typeName(_:qualified:)();
        v93 = sub_10002C9C8(v91, v92, &v157);

        *(v90 + 4) = v93;
        *(v90 + 12) = 2082;

        v94 = sub_10002C9C8(v83, v86, &v157);

        *(v90 + 14) = v94;
        *(v90 + 22) = 2082;
        sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        (*(v129 + 8))(v84, v82);
        v98 = sub_10002C9C8(v95, v97, &v157);

        *(v90 + 24) = v98;
        *(v90 + 32) = 2082;
        v155[0] = aBlock;
        v155[1] = v159;
        v155[2] = v160;
        v156 = v161;
        sub_1002856A4();
        v99 = dispatch thunk of CustomStringConvertible.description.getter();
        v101 = sub_10002C9C8(v99, v100, &v157);

        *(v90 + 34) = v101;
        _os_log_impl(&_mh_execute_header, v87, v153, "[%s] endInteractionWithControl<%{public}s> - control: %{public}s produced interaction: %{public}s", v90, 0x2Au);
        swift_arrayDestroy();

        (*(v80 + 8))(v134, v150);
      }

      else
      {

        (*(v129 + 8))(v84, v82);
        (*(v80 + 8))(v81, v150);
      }

      sub_10031C6F0(&aBlock, v5);
      v120 = sub_100028BB8();
      v121 = v131;
      sub_10029BE08(v131);
      v122 = v139;
      v123 = (*(*v120 + 912))(&aBlock, v139, v121);

      (*(v132 + 8))(v121, v133);
      v124 = swift_allocObject();
      swift_weakInit();
      v125 = swift_allocObject();
      swift_weakInit();
      v126 = swift_allocObject();
      *(v126 + 16) = v124;
      *(v126 + 24) = v125;
      v127 = v159;
      *(v126 + 32) = aBlock;
      *(v126 + 48) = v127;
      *(v126 + 64) = v160;
      *(v126 + 80) = v161;
      v128 = *(*v123 + 168);

      sub_10026D080(v162, v155);
      v128(sub_10032D7C0, v126);

      sub_100238E4C(v162);

      (*(v140 + 8))(v122, v141);
      return;
    }
  }

  else
  {
    (v68)(v155, 0);
    (v67)(&aBlock, 0);
    v71 = v129;
    v70 = v136;
    v72 = v146;
    (*(v129 + 56))(v136, 1, 1, v146);
  }

  sub_1000038A4(v70, &qword_100525798, &qword_100457B00);
  v102 = sub_100028D40();
  v103 = v148;
  v104 = v137;
  (*(v148 + 16))(v137, v102, v150);
  v105 = v135;
  (*(v71 + 16))(v135, v36, v72);

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v108 = 136315650;
    v109 = _typeName(_:qualified:)();
    v111 = sub_10002C9C8(v109, v110, &aBlock);

    *(v108 + 4) = v111;
    *(v108 + 12) = 2082;
    sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v113;
    (*(v71 + 8))(v105, v72);
    v115 = sub_10002C9C8(v112, v114, &aBlock);

    *(v108 + 14) = v115;
    *(v108 + 22) = 2082;

    v116 = sub_100036B00();
    v118 = v117;

    v119 = sub_10002C9C8(v116, v118, &aBlock);

    *(v108 + 24) = v119;
    _os_log_impl(&_mh_execute_header, v106, v107, "[%s] endInteractionWithControl - control: %{public}s, no ongoing control found for client: %{public}s", v108, 0x20u);
    swift_arrayDestroy();

    (*(v148 + 8))(v137, v150);
  }

  else
  {

    (*(v71 + 8))(v105, v72);
    (*(v103 + 8))(v104, v150);
  }

  (*(v140 + 8))(v139, v141);
}

void sub_100313384(uint64_t a1, void **a2, unint64_t a3, int a4)
{
  LODWORD(v96) = a4;
  v94 = a3;
  v95 = a1;
  v98 = a2;
  v85 = *v4;
  v5 = type metadata accessor for RoutingSession.Action();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = __chkstk_darwin(v5);
  v87 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = &v79 - v9;
  v89 = type metadata accessor for Logger();
  v86 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v11 - 8);
  v93 = v11;
  __chkstk_darwin(v11);
  v90 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v91 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for RoutingSession.Action.Kind();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100021264();
  v22 = *v21;
  if ((v96 & 1) == 0)
  {
LABEL_15:
    v31 = v87;
    (*(v6 + 2))(v87, v95, v5);
    v32 = v6[80];
    v97 = v13;
    v33 = (v32 + 24) & ~v32;
    v34 = swift_allocObject();
    *(v34 + 16) = v4;
    (*(v6 + 4))(v34 + v33, v31, v5);
    v35 = (v34 + ((v7 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    v36 = v94;
    *v35 = v98;
    v35[1] = v36;
    v104 = sub_10032D94C;
    v105 = v34;
    aBlock = _NSConcreteStackBlock;
    v101 = 1107296256;
    v102 = sub_100003D98;
    v103 = &unk_1004CDD30;
    v37 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v38 = v22;

    static DispatchQoS.unspecified.getter();
    v99 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v39 = v90;
    v40 = v93;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v92 + 8))(v39, v40);
    (*(v91 + 8))(v15, v97);
LABEL_16:

    return;
  }

  v80 = v21;
  v81 = v6;
  v79 = v15;
  v87 = v5;
  *v20 = v22;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v24)
  {
    v25 = sub_10002107C();
    v20 = v25;
    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = v97;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_24:

      v53 = sub_100028D40();
      v54 = v86;
      v55 = v88;
      v56 = v89;
      (*(v86 + 16))(v88, v53, v89);
      v57 = v81;
      v58 = v87;
      (*(v81 + 2))(v6, v95, v87);
      v59 = v98;
      swift_unknownObjectRetain();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        LODWORD(v96) = v61;
        v63 = v6;
        v64 = v62;
        v97 = swift_slowAlloc();
        v99 = v97;
        *v64 = 136315650;
        v65 = _typeName(_:qualified:)();
        v67 = sub_10002C9C8(v65, v66, &v99);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2082;
        sub_100004930(&qword_100525F60, &type metadata accessor for RoutingSession.Action, &protocol conformance descriptor for RoutingSession.Action);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        (*(v57 + 1))(v63, v58);
        v71 = sub_10002C9C8(v68, v70, &v99);

        *(v64 + 14) = v71;
        *(v64 + 22) = 2082;
        aBlock = v59;
        v101 = v94;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v72 = String.init<A>(describing:)();
        v74 = sub_10002C9C8(v72, v73, &v99);

        *(v64 + 24) = v74;
        _os_log_impl(&_mh_execute_header, v60, v96, "[%s] interactWithSessionAction - action: %{public}s, no internal client found matching client: %{public}s", v64, 0x20u);
        swift_arrayDestroy();

        (*(v54 + 8))(v88, v89);
      }

      else
      {

        (*(v57 + 1))(v6, v58);
        (*(v54 + 8))(v55, v56);
      }

      return;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  v6 = v97;
  if (!v26)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v96 = v20 & 0xC000000000000001;
  v22 = (v20 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v96)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v5 = *(v20 + 8 * v7 + 32);

      v15 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_14;
      }
    }

    v4 = v26;
    v27 = v13;
    v28 = *(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
    v29 = v98;
    ObjectType = swift_getObjectType();
    if (v28 == v29)
    {
      break;
    }

    ++v7;
    v26 = v4;
    v13 = v27;
    v6 = v97;
    if (v15 == v4)
    {
      goto LABEL_24;
    }
  }

  v41 = ObjectType;

  v42 = v82;
  RoutingSession.Action.kind.getter();
  if ((*(v83 + 88))(v42, v84) == enum case for RoutingSession.Action.Kind.shareAudio(_:))
  {
    v43 = swift_allocObject();
    v44 = v94;
    *(v43 + 16) = v98;
    *(v43 + 24) = v44;
    v45 = *(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
    if (v45 == *v80)
    {
      v52 = *(v44 + 32);
      swift_unknownObjectRetain();
      v52(v41, v44);
    }

    else
    {
      v46 = swift_allocObject();
      *(v46 + 16) = sub_1003318A4;
      *(v46 + 24) = v43;
      v104 = sub_1002253D8;
      v105 = v46;
      aBlock = _NSConcreteStackBlock;
      v101 = 1107296256;
      v102 = sub_100003D98;
      v103 = &unk_1004CDDA8;
      v47 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v48 = v45;

      v49 = v79;
      static DispatchQoS.unspecified.getter();
      v99 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v50 = v90;
      v51 = v93;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v92 + 8))(v50, v51);
      (*(v91 + 8))(v49, v27);
    }

    goto LABEL_16;
  }

  aBlock = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v75._countAndFlagsBits = 91;
  v75._object = 0xE100000000000000;
  String.append(_:)(v75);
  v76._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v76);

  v77._object = 0x800000010043FE80;
  v77._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v77);
  sub_100004930(&qword_100525F60, &type metadata accessor for RoutingSession.Action, &protocol conformance descriptor for RoutingSession.Action);
  v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v78);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003140C4(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v255) = a4;
  v250 = a3;
  v254 = a1;
  v240 = *v4;
  v216 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v225 = (&v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1001BC5A8(&qword_100525F50, &qword_100458148);
  __chkstk_darwin(v7 - 8);
  v222 = &v211 - v8;
  v224 = type metadata accessor for RoutingDialog();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v214 = &v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for RoutingItem.Action();
  v252 = *(v253 - 1);
  v10 = *(v252 + 64);
  v11 = __chkstk_darwin(v253);
  v229 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v211 - v13;
  v15 = __chkstk_darwin(v12);
  v241 = &v211 - v16;
  v17 = __chkstk_darwin(v15);
  v236 = &v211 - v18;
  __chkstk_darwin(v17);
  v219 = &v211 - v19;
  v251 = type metadata accessor for Logger();
  v242 = *(v251 - 8);
  v20 = __chkstk_darwin(v251);
  v228 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v243 = &v211 - v23;
  v24 = __chkstk_darwin(v22);
  v238 = &v211 - v25;
  __chkstk_darwin(v24);
  v230 = &v211 - v26;
  v249 = type metadata accessor for DispatchWorkItemFlags();
  v248 = *(v249 - 1);
  __chkstk_darwin(v249);
  v245 = &v211 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for DispatchQoS();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v244 = &v211 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for RoutingItem.Action.Kind();
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v232 = &v211 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v235 = *(v30 - 8);
  v31 = __chkstk_darwin(v30 - 8);
  v227 = &v211 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v221 = &v211 - v34;
  v35 = __chkstk_darwin(v33);
  v231 = &v211 - v36;
  v220 = v37;
  __chkstk_darwin(v35);
  v237 = &v211 - v38;
  v39 = type metadata accessor for RoutingSessionConfiguration();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v239 = &v211 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v226 = &v211 - v44;
  v45 = __chkstk_darwin(v43);
  v218 = &v211 - v46;
  v217 = v47;
  __chkstk_darwin(v45);
  v49 = &v211 - v48;
  v50 = type metadata accessor for DispatchPredicate();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = &v211 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100021264();
  isa = v54->isa;
  if ((v255 & 1) == 0)
  {
LABEL_15:
    v63 = v252;
    v64 = v253;
    (*(v252 + 16))(v14, v254, v253);
    v65 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = v256;
    (*(v63 + 32))(v66 + v65, v14, v64);
    v67 = (v66 + ((v10 + v65 + 7) & 0xFFFFFFFFFFFFFFF8));
    v68 = v250;
    *v67 = a2;
    v67[1] = v68;
    *&v262 = sub_10032DA0C;
    *(&v262 + 1) = v66;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v261 = sub_100003D98;
    *(&v261 + 1) = &unk_1004CDDF8;
    v69 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v70 = isa;
    v71 = v244;
    static DispatchQoS.unspecified.getter();
    *&v257[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v72 = v245;
    v73 = v249;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);

    (*(v248 + 8))(v72, v73);
    (*(v246 + 8))(v71, v247);
LABEL_16:

    return;
  }

  v255 = v54;
  *v53 = isa;
  (*(v51 + 104))(v53, enum case for DispatchPredicate.onQueue(_:), v50);
  v56 = isa;
  v57 = _dispatchPreconditionTest(_:)();
  (*(v51 + 8))(v53, v50);
  if (v57)
  {
    v58 = sub_10002107C();
    v53 = v58;
    v212 = v39;
    v211 = v40;
    v213 = v49;
    if (!(v58 >> 62))
    {
      v10 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_37:

      v188 = sub_100028D40();
      v189 = v242;
      v190 = v243;
      v191 = v251;
      (*(v242 + 16))(v243, v188, v251);
      v192 = v252;
      v193 = v241;
      v194 = v253;
      (*(v252 + 16))(v241, v254, v253);
      swift_unknownObjectRetain();
      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        *&v257[0] = v256;
        *v197 = 136315650;
        v198 = _typeName(_:qualified:)();
        v200 = sub_10002C9C8(v198, v199, v257);

        *(v197 + 4) = v200;
        *(v197 + 12) = 2082;
        sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action, &protocol conformance descriptor for RoutingItem.Action);
        v201 = dispatch thunk of CustomStringConvertible.description.getter();
        v203 = v202;
        (*(v192 + 8))(v193, v194);
        v204 = sub_10002C9C8(v201, v203, v257);

        *(v197 + 14) = v204;
        *(v197 + 22) = 2082;
        *&aBlock = a2;
        *(&aBlock + 1) = v250;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v205 = String.init<A>(describing:)();
        v207 = sub_10002C9C8(v205, v206, v257);

        *(v197 + 24) = v207;
        _os_log_impl(&_mh_execute_header, v195, v196, "[%s] interactWithItemAction - action: %{public}s, no internal client found matching client: %{public}s", v197, 0x20u);
        swift_arrayDestroy();

        (*(v189 + 8))(v243, v251);
      }

      else
      {

        (*(v192 + 8))(v193, v194);
        (*(v189 + 8))(v190, v191);
      }

      return;
    }
  }

  else
  {
LABEL_35:
    __break(1u);
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_37;
  }

LABEL_5:
  v59 = 0;
  isa = (v53 & 0xC000000000000001);
  while (1)
  {
    if (isa)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v59 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v14 = *(v53 + 8 * v59 + 32);

      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_14;
      }
    }

    v61 = *&v14[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient];
    ObjectType = swift_getObjectType();
    if (v61 == a2)
    {
      break;
    }

    ++v59;
    if (v60 == v10)
    {
      goto LABEL_37;
    }
  }

  v74 = ObjectType;

  v75 = v211;
  v77 = v211 + 16;
  v76 = *(v211 + 16);
  v78 = v212;
  v76(v213, &v14[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration], v212);
  v79 = sub_100030790();
  if (v79[2] && (v80 = sub_100031588(v14), (v81 & 1) != 0))
  {
    v82 = v231;
    sub_10002ADF8(v79[7] + *(v235 + 72) * v80, v231, type metadata accessor for HostedRoutingSessionSnapshot);

    sub_10002AF68(v82, v237, type metadata accessor for HostedRoutingSessionSnapshot);
    v83 = v232;
    v84 = v254;
    RoutingItem.Action.kind.getter();
    v85 = (*(v233 + 88))(v83, v234);
    if (v85 == enum case for RoutingItem.Action.Kind.shareAudio(_:))
    {
      v86 = v75;
      v87 = swift_allocObject();
      v88 = v250;
      *(v87 + 16) = a2;
      *(v87 + 24) = v88;
      v89 = *&v14[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue];
      if (v89 != v255->isa)
      {
        v90 = swift_allocObject();
        *(v90 + 16) = sub_10032DBF0;
        *(v90 + 24) = v87;
        *&v262 = sub_1002253D8;
        *(&v262 + 1) = v90;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v261 = sub_100003D98;
        *(&v261 + 1) = &unk_1004CDEC0;
        v91 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v256 = v89;

        v92 = v244;
        static DispatchQoS.unspecified.getter();
        *&v257[0] = _swiftEmptyArrayStorage;
        sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
        v93 = v245;
        v94 = v249;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v95 = v256;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v91);

        (*(v248 + 8))(v93, v94);
        (*(v246 + 8))(v92, v247);
        sub_10002AC54(v237, type metadata accessor for HostedRoutingSessionSnapshot);
        (*(v86 + 8))(v213, v212);
        goto LABEL_16;
      }

      v126 = *(v88 + 32);
      swift_unknownObjectRetain();
      v126(v74, v88);

      sub_10002AC54(v237, type metadata accessor for HostedRoutingSessionSnapshot);
      (*(v86 + 8))(v213, v212);
    }

    else if (v85 == enum case for RoutingItem.Action.Kind.remoteControl(_:))
    {
      type metadata accessor for RoutingDecisionEngine();
      v123 = sub_1002DF550(v84, v237);
      v124 = v242;
      v125 = v230;
      v248 = v77;
      v249 = v76;
      v127 = *(*v123 + 120);
      v250 = v123;
      v127(&aBlock);
      v128 = aBlock;

      v129 = sub_100028D40();
      (*(v124 + 16))(v125, v129, v251);
      v130 = v252;
      v131 = v219;
      v132 = v84;
      v133 = v253;
      (*(v252 + 16))(v219, v132, v253);
      v264[0] = v261;
      v264[1] = v262;
      v265 = v263;

      sub_10026D080(v264, v257);
      v134 = Logger.logObject.getter();
      v135 = v124;
      v136 = static os_log_type_t.default.getter();
      v255 = *(&v128 + 1);

      sub_100238E4C(v264);
      v137 = os_log_type_enabled(v134, v136);
      v247 = v128;
      if (v137)
      {
        v138 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v259 = v245;
        *v138 = 136315906;
        v139 = _typeName(_:qualified:)();
        v254 = v134;
        v141 = sub_10002C9C8(v139, v140, &v259);
        LODWORD(v246) = v136;
        v142 = v141;

        *(v138 + 4) = v142;
        *(v138 + 12) = 2082;
        *(v138 + 14) = sub_10002C9C8(v128, v255, &v259);
        *(v138 + 22) = 2082;
        sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action, &protocol conformance descriptor for RoutingItem.Action);
        v143 = dispatch thunk of CustomStringConvertible.description.getter();
        v145 = v144;
        (*(v130 + 8))(v131, v133);
        v146 = sub_10002C9C8(v143, v145, &v259);

        *(v138 + 24) = v146;
        *(v138 + 32) = 2082;
        v257[0] = aBlock;
        v257[1] = v261;
        v257[2] = v262;
        v258 = v263;
        sub_1002856A4();
        v147 = dispatch thunk of CustomStringConvertible.description.getter();
        v149 = sub_10002C9C8(v147, v148, &v259);

        *(v138 + 34) = v149;
        v150 = v211;
        v78 = v212;
        v151 = v254;
        _os_log_impl(&_mh_execute_header, v254, v246, "[%s] interactWithItemAction<%{public}s> - action: %{public}s produced interaction: %{public}s", v138, 0x2Au);
        swift_arrayDestroy();

        (*(v135 + 8))(v230, v251);
      }

      else
      {

        (*(v130 + 8))(v131, v133);
        (*(v135 + 8))(v230, v251);
        v150 = v211;
      }

      v152 = v218;
      v153 = v249;
      (v249)(v218, v213, v78);
      v154 = v221;
      sub_10002ADF8(v237, v221, type metadata accessor for HostedRoutingSessionSnapshot);
      v153(v226, v152, v78);
      sub_10002ADF8(v154, v227, type metadata accessor for HostedRoutingSessionSnapshot);
      v155 = (*(v150 + 80) + 65) & ~*(v150 + 80);
      v156 = (v217 + *(v235 + 80) + v155) & ~*(v235 + 80);
      v157 = v78;
      v158 = (v220 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;
      v160 = (v159 + 15) & 0xFFFFFFFFFFFFFFF8;
      v161 = swift_allocObject();
      v162 = v261;
      *(v161 + 16) = aBlock;
      *(v161 + 32) = v162;
      *(v161 + 48) = v262;
      *(v161 + 64) = v263;
      v163 = v157;
      v164 = v161;
      (*(v150 + 32))(v161 + v155, v152, v163);
      sub_10002AF68(v154, v164 + v156, type metadata accessor for HostedRoutingSessionSnapshot);
      v165 = v256;
      *(v164 + v158) = v250;
      *(v164 + v159) = v14;
      v166 = v213;
      *(v164 + v160) = v165;
      v167 = *(*v165 + 584);

      sub_10026D080(v264, v257);

      v168 = v222;
      v167(&aBlock, v166, v237);
      v169 = v223;
      v170 = v224;
      if ((*(v223 + 48))(v168, 1, v224) == 1)
      {

        sub_1000038A4(v168, &qword_100525F50, &qword_100458148);
        v171 = v226;
        sub_100266350(v227, v225);
        type metadata accessor for RoutingClientEvent(0);

        v173 = sub_10023AF94(v172);
        v174 = *(**(*&v14[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context] + 96) + 376);

        v254 = v173;
        v174(v173);

        sub_10031C6F0(&aBlock, v14);
        v175 = *sub_100028BB8();
        v176 = (*(v175 + 912))(&aBlock, v171, v225);

        v177 = swift_allocObject();
        swift_weakInit();
        v178 = swift_allocObject();
        swift_weakInit();
        v179 = swift_allocObject();
        swift_weakInit();
        v180 = swift_allocObject();
        *(v180 + 16) = v177;
        *(v180 + 24) = v178;
        v181 = v261;
        *(v180 + 32) = aBlock;
        *(v180 + 48) = v181;
        *(v180 + 64) = v262;
        *(v180 + 80) = v263;
        *(v180 + 88) = v179;
        v182 = *(*v176 + 168);

        sub_10026D080(v264, v257);
        v182(sub_10032DBE0, v180);

        sub_100238E4C(v264);
        (*(v215 + 8))(v225, v216);
        sub_10002AC54(v227, type metadata accessor for HostedRoutingSessionSnapshot);
        v183 = *(v211 + 8);
        v184 = v212;
        v183(v226, v212);
        sub_10002AC54(v237, type metadata accessor for HostedRoutingSessionSnapshot);
        v183(v213, v184);
      }

      else
      {
        v254 = type metadata accessor for HostedRoutingSessionSnapshot;
        sub_10002AC54(v227, type metadata accessor for HostedRoutingSessionSnapshot);
        v253 = *(v211 + 8);
        v185 = v212;
        (v253)(v226, v212);
        v186 = v168;
        v187 = v214;
        (*(v169 + 32))(v214, v186, v170);
        sub_100316C58(v187, v247, v255, &aBlock, v165, v14, v164, v240);

        sub_100238E4C(v264);

        (*(v169 + 8))(v187, v170);
        sub_10002AC54(v237, v254);
        (v253)(v213, v185);
      }
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v208._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v208);

      v209._object = 0x800000010043FEC0;
      v209._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v209);
      sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action, &protocol conformance descriptor for RoutingItem.Action);
      v210._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v210);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {

    v96 = sub_100028D40();
    v97 = v242;
    v98 = v238;
    (*(v242 + 16))(v238, v96, v251);
    v99 = v252;
    v100 = v236;
    v101 = v76;
    v102 = v253;
    (*(v252 + 16))(v236, v254, v253);
    v101(v239, v213, v78);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      *&aBlock = v256;
      *v105 = 136315650;
      v106 = _typeName(_:qualified:)();
      v255 = v103;
      v108 = sub_10002C9C8(v106, v107, &aBlock);
      LODWORD(v254) = v104;
      v109 = v108;

      *(v105 + 4) = v109;
      *(v105 + 12) = 2082;
      sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action, &protocol conformance descriptor for RoutingItem.Action);
      v110 = dispatch thunk of CustomStringConvertible.description.getter();
      v112 = v111;
      (*(v99 + 8))(v100, v102);
      v113 = sub_10002C9C8(v110, v112, &aBlock);

      *(v105 + 14) = v113;
      *(v105 + 22) = 2082;
      sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration, &protocol conformance descriptor for RoutingSessionConfiguration);
      v114 = v239;
      v115 = v212;
      v116 = dispatch thunk of CustomStringConvertible.description.getter();
      v118 = v117;
      v119 = *(v75 + 8);
      v119(v114, v115);
      v120 = sub_10002C9C8(v116, v118, &aBlock);

      *(v105 + 24) = v120;
      v121 = v255;
      _os_log_impl(&_mh_execute_header, v255, v254, "[%s] interactWithItemAction - control: %{public}s, no snapshot for configuration: %{public}s", v105, 0x20u);
      swift_arrayDestroy();

      (*(v97 + 8))(v238, v251);
      v119(v213, v115);
    }

    else
    {

      v122 = *(v75 + 8);
      v122(v239, v78);
      (*(v99 + 8))(v100, v102);
      (*(v97 + 8))(v98, v251);
      v122(v213, v78);
    }
  }
}

uint64_t sub_1003165A0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100266350(a3, v12);
  type metadata accessor for RoutingClientEvent(0);

  v14 = sub_10023AF94(v13);
  v15 = *(**(*(a5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

  v15(v14);

  sub_10031C6F0(a1, a5);
  v16 = *sub_100028BB8();
  v17 = (*(v16 + 912))(a1, a2, v12);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = a1[1];
  v33 = *a1;
  v22 = a1[2];
  v31[0] = v21;
  v31[1] = v22;
  v32 = *(a1 + 48);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v19;
  v24 = a1[1];
  *(v23 + 32) = *a1;
  *(v23 + 48) = v24;
  *(v23 + 64) = a1[2];
  *(v23 + 80) = *(a1 + 48);
  *(v23 + 88) = v20;
  v25 = *(*v17 + 168);
  sub_10028BC98(&v33, v30);
  sub_10026D080(v31, v30);
  v25(sub_100331898, v23);

  return (*(v28 + 8))(v12, v29);
}

void sub_1003168B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29[-1] - v12;
  v14 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v14;
  v34 = *(a1 + 32);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_15:

    return;
  }

  v16 = Strong;
  v17 = v8;
  v18 = sub_100300FBC(v30);
  v19 = sub_10030D88C(v29, v16);
  if (!*v20)
  {
    (v19)(v29, 0);
    (v18)(v30, 0);
    goto LABEL_18;
  }

  sub_10032970C(v31);
  (v19)(v29, 0);
  (v18)(v30, 0);
  if (!v32)
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_1000038A4(v31, &qword_1005266C8, &unk_100458470);
  v21 = *(a4 + 48);
  if (v21 <= 6 && ((1 << v21) & 0x47) != 0)
  {
    sub_10031C9DC(v16);
  }

  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (!v22)
  {

    goto LABEL_15;
  }

  v23 = v22;
  (*(*v22 + 272))(v33);
  v24 = sub_100030790();
  if (v24[2] && (v25 = sub_100031588(v16), (v26 & 1) != 0))
  {
    sub_10002ADF8(v24[7] + *(v17 + 72) * v25, v11, type metadata accessor for HostedRoutingSessionSnapshot);

    sub_10002AF68(v11, v13, type metadata accessor for HostedRoutingSessionSnapshot);
    v27 = *(*(v16 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

    sub_10023C08C(v23, v27, v13);

    sub_10002AC54(v13, type metadata accessor for HostedRoutingSessionSnapshot);
  }

  else
  {
  }
}

double sub_100316C58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a6;
  v54 = a8;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = RoutingDialog.identifier.getter();
  v19 = v18;
  v20 = sub_100028D40();
  v52 = v15;
  v21 = v15;
  v22 = v19;
  (*(v21 + 16))(v17, v20, v14);
  v23 = *(a4 + 16);
  v60[0] = *a4;
  v24 = *(a4 + 32);
  v58[0] = v23;
  v58[1] = v24;
  v59 = *(a4 + 48);

  sub_10028BC98(v60, v55);
  sub_10026D080(v58, v55);
  v51 = v17;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  sub_1001E6204(v60);
  sub_100238E4C(v58);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = a5;
    v28 = v27;
    v47 = swift_slowAlloc();
    v57 = v47;
    *v28 = 136315906;
    v29 = _typeName(_:qualified:)();
    v46 = v25;
    v31 = sub_10002C9C8(v29, v30, &v57);
    v48 = v14;
    HIDWORD(v45) = v26;
    v32 = a7;
    v33 = a1;
    v34 = v22;
    v35 = v31;

    *(v28 + 4) = v35;
    v22 = v34;
    a1 = v33;
    a7 = v32;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_10002C9C8(a2, a3, &v57);
    *(v28 + 22) = 2082;
    v36 = v50;
    *(v28 + 24) = sub_10002C9C8(v50, v22, &v57);
    *(v28 + 32) = 2082;
    v37 = *(a4 + 16);
    v55[0] = *a4;
    v55[1] = v37;
    v55[2] = *(a4 + 32);
    v56 = *(a4 + 48);
    sub_1002856A4();
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = sub_10002C9C8(v38, v39, &v57);

    *(v28 + 34) = v40;
    v41 = v46;
    _os_log_impl(&_mh_execute_header, v46, BYTE4(v45), "[%s] interactWithItemAction<%{public}s> - present dialog: %{public}s for interaction: %{public}s", v28, 0x2Au);
    swift_arrayDestroy();

    (*(v52 + 8))(v51, v48);
    v42 = v36;
  }

  else
  {

    (*(v52 + 8))(v51, v14);
    v42 = v50;
  }

  v43 = swift_allocObject();
  v43[2] = a2;
  v43[3] = a3;
  v43[4] = v42;
  v43[5] = v22;
  v43[6] = sub_10032DACC;
  v43[7] = a7;
  v43[8] = v54;

  sub_10031BFE0(a1, v53, sub_100330A50, v43);

  return result;
}

uint64_t sub_10031705C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v86 = a7;
  v87 = a8;
  v92 = a3;
  v93 = a5;
  v89 = a1;
  v91 = a9;
  v12 = type metadata accessor for RoutingDialog.Action();
  v88 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Logger();
  v15 = *(v94 - 8);
  v16 = __chkstk_darwin(v94);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v80 - v20;
  __chkstk_darwin(v19);
  v23 = &v80 - v22;
  v24 = sub_1001BC5A8(&qword_100525F40, &qword_100458140);
  v25 = __chkstk_darwin(v24 - 8);
  v26 = __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v30 = &v80 - v27;
  if (a2)
  {
    swift_errorRetain();
    v31 = sub_100028D40();
    (*(v15 + 16))(v23, v31, v94);
    swift_errorRetain();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v90 = a6;
      v35 = v34;
      v36 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v95 = v89;
      *v35 = 136315906;
      v37 = _typeName(_:qualified:)();
      v39 = sub_10002C9C8(v37, v38, &v95);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_10002C9C8(v92, a4, &v95);
      *(v35 + 22) = 2082;
      *(v35 + 24) = sub_10002C9C8(v93, v90, &v95);
      *(v35 + 32) = 2114;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 34) = v40;
      *v36 = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%s] interactWithItemAction<%{public}s> - dialog: %{public}s returned error: %{public}@ -> drop interaction", v35, 0x2Au);
      sub_1000038A4(v36, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v15 + 8))(v23, v94);
  }

  v83 = v29;
  v84 = v28;
  v80 = v21;
  v81 = v14;
  v85 = v18;
  v90 = a6;
  v41 = v89;
  sub_10001D9AC(v89, &v80 - v27, &qword_100525F40, &qword_100458140);
  v42 = v88;
  v43 = v88 + 48;
  v82 = *(v88 + 48);
  if (v82(v30, 1, v12) == 1)
  {
    sub_1000038A4(v30, &qword_100525F40, &qword_100458140);
    v44 = v15;
    goto LABEL_12;
  }

  v46 = (*(v42 + 88))(v30, v12);
  v47 = enum case for RoutingDialog.Action.confirm(_:);
  (*(v42 + 8))(v30, v12);
  v48 = v46 == v47;
  v44 = v15;
  if (!v48)
  {
LABEL_12:
    v89 = v43;
    v60 = sub_100028D40();
    v61 = v85;
    (*(v44 + 16))(v85, v60, v94);
    v62 = v84;
    sub_10001D9AC(v41, v84, &qword_100525F40, &qword_100458140);
    v63 = a4;

    v64 = v90;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      LODWORD(v87) = v66;
      v67 = v64;
      v68 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v95 = v86;
      *v68 = 136315906;
      v69 = _typeName(_:qualified:)();
      v71 = sub_10002C9C8(v69, v70, &v95);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_10002C9C8(v92, v63, &v95);
      *(v68 + 22) = 2082;
      *(v68 + 24) = sub_10002C9C8(v93, v67, &v95);
      *(v68 + 32) = 2082;
      v72 = v83;
      sub_10001D9AC(v62, v83, &qword_100525F40, &qword_100458140);
      result = (v82)(v72, 1, v12);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v73 = v81;
        (*(v42 + 32))(v81, v72, v12);
        sub_100004930(&qword_1005266E8, &type metadata accessor for RoutingDialog.Action, &protocol conformance descriptor for RoutingDialog.Action);
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v42;
        v76 = v74;
        v78 = v77;
        (*(v75 + 8))(v73, v12);
        sub_1000038A4(v62, &qword_100525F40, &qword_100458140);
        v79 = sub_10002C9C8(v76, v78, &v95);

        *(v68 + 34) = v79;
        _os_log_impl(&_mh_execute_header, v65, v87, "[%s] interactWithItemAction<%{public}s> - dialog: %{public}s returned action: %{public}s -> drop interaction", v68, 0x2Au);
        swift_arrayDestroy();

        return (*(v44 + 8))(v85, v94);
      }
    }

    else
    {

      sub_1000038A4(v62, &qword_100525F40, &qword_100458140);
      return (*(v44 + 8))(v61, v94);
    }

    return result;
  }

  v49 = sub_100028D40();
  v50 = v80;
  (*(v15 + 16))(v80, v49, v94);

  v51 = v90;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v51;
    v55 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v55 = 136315650;
    v56 = _typeName(_:qualified:)();
    v58 = sub_10002C9C8(v56, v57, &v95);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2082;
    *(v55 + 14) = sub_10002C9C8(v92, a4, &v95);
    *(v55 + 22) = 2082;
    *(v55 + 24) = sub_10002C9C8(v93, v54, &v95);
    _os_log_impl(&_mh_execute_header, v52, v53, "[%s] interactWithItemAction<%{public}s> - dialog: %{public}s confirmed -> handle interaction", v55, 0x20u);
    swift_arrayDestroy();
  }

  v59 = (*(v15 + 8))(v50, v94);
  return v86(v59);
}

uint64_t sub_1003179E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RoutingDialog();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = RoutingSessionConfiguration.supportsDialogs.getter();
  v10 = v45;
  if (v9)
  {
    type metadata accessor for RoutingDecisionEngine();
    if (sub_1002E0D6C(a1, a2))
    {
      v11 = static String.nanoIDFourChar()();
      v43 = v12;
      v44 = v11;
      v13 = static LocalizedStrings.Dialog.ReplaceAudio.title.getter();
      v41 = v14;
      v42 = v13;
      v40 = static LocalizedStrings.Dialog.ReplaceAudio.detail.getter();
      sub_1001BC5A8(&qword_100525F68, &unk_100458160);
      v15 = type metadata accessor for RoutingDialog.Action();
      v16 = *(v15 - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100450890;
      v20 = (v19 + v18);
      *v20 = static LocalizedStrings.Dialog.ReplaceAudio.Action.cancel.getter();
      v20[1] = v21;
      v22 = *(v16 + 104);
      v22(v20, enum case for RoutingDialog.Action.cancel(_:), v15);
      v23 = (v20 + v17);
      v24 = static LocalizedStrings.Dialog.ReplaceAudio.Action.accept.getter();
LABEL_6:
      *v23 = v24;
      v23[1] = v25;
      v22(v23, enum case for RoutingDialog.Action.confirm(_:), v15);
      RoutingDialog.init(identifier:titleText:detailText:actions:)();
      (*(v45 + 32))(a3, v8, v6);
      return (*(v45 + 56))(a3, 0, 1, v6);
    }

    v26 = sub_1002E3780();
    v27 = sub_1002E37AC(a1, a2, v26);

    v10 = v45;
    if (v27)
    {
      v28 = static String.nanoIDFourChar()();
      v43 = v29;
      v44 = v28;
      v30 = static LocalizedStrings.Dialog.InterruptGroupSession.title.getter();
      v41 = v31;
      v42 = v30;
      v40 = static LocalizedStrings.Dialog.InterruptGroupSession.detail.getter();
      sub_1001BC5A8(&qword_100525F68, &unk_100458160);
      v15 = type metadata accessor for RoutingDialog.Action();
      v32 = *(v15 - 8);
      v33 = *(v32 + 72);
      v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100450890;
      v36 = (v35 + v34);
      *v36 = static LocalizedStrings.Dialog.InterruptGroupSession.Action.cancel.getter();
      v36[1] = v37;
      v22 = *(v32 + 104);
      v22(v36, enum case for RoutingDialog.Action.cancel(_:), v15);
      v23 = (v36 + v33);
      v24 = static LocalizedStrings.Dialog.InterruptGroupSession.Action.accept.getter();
      goto LABEL_6;
    }
  }

  v39 = *(v10 + 56);

  return v39(a3, 1, 1, v6);
}

void sub_100317DA8(uint64_t a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v92 = a1;
  v93 = a3;
  v94 = v5;
  v83 = *v5;
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v90 = *(v95 - 1);
  __chkstk_darwin(v95);
  v88 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchQoS();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin(v10);
  v91 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for RoutingSessionConfiguration();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoutingMode();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v80 = *(v19 - 8);
  __chkstk_darwin(v19 - 8);
  v82 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *sub_100021264();
  if ((a4 & 1) == 0)
  {
LABEL_16:
    (*(v14 + 16))(v18, v92, v13);
    v31 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v94;
    (*(v14 + 32))(v32 + v31, v18, v13);
    v33 = (v32 + ((v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    v34 = v93;
    *v33 = a2;
    v33[1] = v34;
    v101 = sub_10032DD20;
    v102 = v32;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_100003D98;
    v100 = &unk_1004CDF10;
    v35 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v36 = v25;

    v37 = v86;
    static DispatchQoS.unspecified.getter();
    v96 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v38 = v88;
    v39 = v95;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v90 + 8))(v38, v39);
    (*(v87 + 8))(v37, v89);
LABEL_28:

    return;
  }

  v95 = a2;
  v88 = v18;
  v89 = v13;
  v90 = v14;
  a2 = v93;
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if (v27)
  {
    v28 = sub_10002107C();
    v27 = v28;
    if (!(v28 >> 62))
    {
      v15 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = a2;
      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v29 = a2;
  if (v15)
  {
LABEL_5:
    v14 = 0;
    v25 = &unk_100534000;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        if (v14 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v13 = *(v27 + 8 * v14 + 32);

        v18 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_15;
        }
      }

      if (*(v13 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == v95)
      {
        break;
      }

      ++v14;
      v30 = v18 == v15;
      v29 = a2;
      if (v30)
      {
        goto LABEL_32;
      }
    }

    v40 = sub_100030790();
    if (v40[2] && (v41 = sub_100031588(v13), (v42 & 1) != 0))
    {
      sub_10002ADF8(v40[7] + *(v80 + 72) * v41, v82, type metadata accessor for HostedRoutingSessionSnapshot);

      v43 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
      swift_beginAccess();
      v44 = v89;
      v45 = v90;
      v46 = *(v90 + 16);
      v93 = v43;
      v47 = v88;
      v91 = v46;
      (v46)(v88, v13 + v43, v89);
      v48 = v81;
      v95 = *(v45 + 104);
      (v95)(v81, enum case for RoutingMode.detailed(_:), v44);
      LOBYTE(v43) = static RoutingMode.== infix(_:_:)();
      v49 = *(v45 + 8);
      v49(v48, v44);
      v49(v47, v44);
      if ((v43 & 1) != 0 || ((v91)(v47, v93 + v13, v44), (v95)(v48, enum case for RoutingMode.localNetwork(_:), v44), v50 = static RoutingMode.== infix(_:_:)(), v49(v48, v44), v49(v47, v44), (v50)) && (((v95)(v47, enum case for RoutingMode.prewarm(_:), v44), v51 = static RoutingMode.== infix(_:_:)(), v49(v47, v44), (v51) || ((v95)(v47, enum case for RoutingMode.disabled(_:), v44), v52 = static RoutingMode.== infix(_:_:)(), v49(v47, v44), (v52)))
      {
        v53 = v78;
        v54 = v77;
        v55 = v79;
        (*(v78 + 16))(v77, v13 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v79);

        v57 = v82;
        sub_10023BCF8(v56, v82, v54);

        (*(v53 + 8))(v54, v55);
        v58 = v57;
      }

      else
      {
        v58 = v82;
      }

      sub_10002AC54(v58, type metadata accessor for HostedRoutingSessionSnapshot);
      v59 = v92;
      v60 = v44;
      v61 = v90;
    }

    else
    {

      v59 = v92;
      v60 = v89;
      v61 = v90;
      v47 = v88;
    }

    (*(v61 + 16))(v47, v59, v60);
    sub_1003004C8(v47);
    sub_10031A34C();
    goto LABEL_28;
  }

LABEL_32:

  v62 = sub_100028D40();
  v64 = v84;
  v63 = v85;
  v65 = v91;
  (*(v84 + 16))(v91, v62, v85);
  v66 = v95;
  swift_unknownObjectRetain();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v69 = 136315394;
    v70 = _typeName(_:qualified:)();
    v72 = sub_10002C9C8(v70, v71, &v96);

    *(v69 + 4) = v72;
    *(v69 + 12) = 2082;
    aBlock = v66;
    v98 = v29;
    swift_unknownObjectRetain();
    sub_1001BC5A8(&qword_100525F20, &qword_100458118);
    v73 = String.init<A>(describing:)();
    v75 = sub_10002C9C8(v73, v74, &v96);

    *(v69 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v67, v68, "[%s] setRoutingMode - No internal client found matching client: %{public}s", v69, 0x16u);
    swift_arrayDestroy();

    (*(v64 + 8))(v91, v63);
  }

  else
  {

    (*(v64 + 8))(v65, v63);
  }
}

void sub_1003189FC(int a1, void **a2, char *a3, char a4)
{
  v54 = a3;
  v53 = a1;
  v46 = *v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v47 = *(v13 - 8);
  v48 = v13;
  __chkstk_darwin(v13);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *sub_100021264();
  if (a4)
  {
    v12 = v54;
    *v18 = v19;
    (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
    v20 = v19;
    v21 = _dispatchPreconditionTest(_:)();
    (*(v16 + 8))(v18, v15);
    if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }

    v51 = v4;
    v22 = sub_10002107C();
    v4 = v22;
    if (v22 >> 62)
    {
LABEL_21:
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v24 = v12;
      if (v23)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v12;
      if (v23)
      {
LABEL_5:
        v7 = 0;
        v19 = (v4 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          else
          {
            if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            v25 = *(v4 + 8 * v7 + 32);

            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              goto LABEL_15;
            }
          }

          if (*(v25 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a2)
          {

            v31 = *(v25 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
            v32 = *(v31 + 16);
            *(v31 + 16) = v53 & 1;

            sub_1002FF420(v32);

            sub_100028D64(v25);
            goto LABEL_18;
          }

          ++v7;
          v26 = v9 == v23;
          v24 = v12;
        }

        while (!v26);
      }
    }

    v33 = sub_100028D40();
    v35 = v47;
    v34 = v48;
    v36 = v52;
    (*(v47 + 16))(v52, v33, v48);
    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v39 = 136315394;
      v40 = _typeName(_:qualified:)();
      v42 = sub_10002C9C8(v40, v41, &v55);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      aBlock = a2;
      v57 = v24;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v43 = String.init<A>(describing:)();
      v45 = sub_10002C9C8(v43, v44, &v55);

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%s] setUIPresented - no internal client found matching client: %{public}s", v39, 0x16u);
      swift_arrayDestroy();

      (*(v35 + 8))(v52, v34);
    }

    else
    {

      (*(v35 + 8))(v36, v34);
    }
  }

  else
  {
LABEL_16:
    v27 = swift_allocObject();
    *(v27 + 16) = v4;
    *(v27 + 24) = v53 & 1;
    v28 = v54;
    *(v27 + 32) = a2;
    *(v27 + 40) = v28;
    v60 = sub_10032DDE0;
    v61 = v27;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100003D98;
    v59 = &unk_1004CDF60;
    v29 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v30 = v19;

    static DispatchQoS.unspecified.getter();
    v55 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v51 + 8))(v9, v7);
    (*(v49 + 8))(v12, v50);
LABEL_18:
  }
}

void sub_10031912C(uint64_t a1, void **a2, char *a3, char a4)
{
  v56 = a3;
  v48 = *v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v49 = *(v14 - 8);
  v50 = v14;
  __chkstk_darwin(v14);
  v55 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *sub_100021264();
  if (a4)
  {
    v54 = a1;
    v13 = v56;
    *v19 = v20;
    (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
    v21 = v20;
    v22 = _dispatchPreconditionTest(_:)();
    (*(v17 + 8))(v19, v16);
    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

    v53 = v4;
    v23 = sub_10002107C();
    v4 = v23;
    if (v23 >> 62)
    {
LABEL_21:
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v13;
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v13;
      if (v24)
      {
LABEL_5:
        v26 = 0;
        v20 = (v4 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          else
          {
            if (v26 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            a1 = *(v4 + 8 * v26 + 32);

            v10 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
              goto LABEL_15;
            }
          }

          if (*(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a2)
          {

            v33 = *(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
            v34 = *(v33 + 24);
            *(v33 + 24) = v54;

            sub_1002FFAFC(v34);

            sub_100028D64(a1);
            goto LABEL_18;
          }

          ++v26;
          v27 = v10 == v24;
          v25 = v13;
        }

        while (!v27);
      }
    }

    v35 = sub_100028D40();
    v37 = v49;
    v36 = v50;
    v38 = v55;
    (*(v49 + 16))(v55, v35, v50);
    swift_unknownObjectRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v41 = 136315394;
      v42 = _typeName(_:qualified:)();
      v44 = sub_10002C9C8(v42, v43, &v57);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      aBlock = a2;
      v59 = v25;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v45 = String.init<A>(describing:)();
      v47 = sub_10002C9C8(v45, v46, &v57);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%s] setExpandedSessionIdentifiers - no internal client found matching client: %{public}s", v41, 0x16u);
      swift_arrayDestroy();

      (*(v37 + 8))(v55, v36);
    }

    else
    {

      (*(v37 + 8))(v38, v36);
    }
  }

  else
  {
LABEL_16:
    v28 = swift_allocObject();
    v28[2] = v4;
    v28[3] = a1;
    v29 = v56;
    v28[4] = a2;
    v28[5] = v29;
    v62 = sub_10032DE3C;
    v63 = v28;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100003D98;
    v61 = &unk_1004CDFB0;
    v30 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v31 = v20;

    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v32 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v53 + 8))(v10, v32);
    (*(v51 + 8))(v13, v52);
LABEL_18:
  }
}

uint64_t sub_100319868()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v2 - 8);
  v64 = &v60 - v3;
  v63 = type metadata accessor for NSNotificationCenter.Publisher();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63 - 8);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v61 = *(v71 - 8);
  __chkstk_darwin(v71 - 8);
  v69 = &v60 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100028D40();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v73 = v14;
    *v13 = 136315138;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10002C9C8(v15, v16, &v73);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] installNotificationObservers", v13, 0xCu);
    sub_100026A44(v14);
  }

  result = (*(v7 + 8))(v9, v6);
  v72 = v1;
  if (qword_100534300 != -1)
  {
    result = swift_once();
  }

  v19 = qword_100534308;
  v20 = *(qword_100534308 + 16);
  v21 = &selRef_bundleWithURL_;
  v23 = v63;
  v22 = v64;
  v24 = v62;
  v25 = v72;
  if (v20)
  {
    v26 = objc_opt_self();
    v67 = v65 + 1;
    v68 = v26;
    v66 = (v61 + 8);
    v27 = v19 + 40;
    do
    {
      v70 = v20;
      v28 = v24;
      v29 = v23;

      v30 = [v68 defaultCenter];
      v31 = String._bridgeToObjectiveC()();

      NSNotificationCenter.publisher(for:object:)();

      v32 = *sub_100021264();
      v73 = v32;
      v33 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_100004930(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      v34 = v32;
      v35 = v25;
      v36 = v69;
      v23 = v29;
      v24 = v28;
      v37 = v71;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v22, &unk_100524C50, &qword_10044F180);

      (*v67)(v24, v23);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      Publisher<>.sink(receiveValue:)();
      v21 = &selRef_bundleWithURL_;

      v38 = v36;
      v25 = v35;
      v39 = v70;
      (*v66)(v38, v37);
      v73 = sub_100300BF8();
      AnyCancellable.store(in:)();

      *(v25 + 16) = v73;

      v27 += 16;
      v20 = v39 - 1;
    }

    while (v20);
  }

  if (qword_100534310 != -1)
  {
    result = swift_once();
  }

  v40 = qword_100534318;
  v41 = *(qword_100534318 + 16);
  v42 = v63;
  v43 = v64;
  v44 = v62;
  v45 = v69;
  if (v41)
  {
    v68 = objc_opt_self();
    v46 = objc_opt_self();
    v47 = (v40 + 32);
    v66 = v65 + 1;
    v67 = v46;
    v65 = (v61 + 8);
    do
    {
      v48 = *v47++;
      v70 = v48;
      v49 = [v68 v21[307]];
      v50 = v44;
      v51 = v42;
      v52 = v43;
      v53 = [v67 sharedLocalEndpoint];
      NSNotificationCenter.publisher(for:object:)();

      v54 = v45;
      v55 = *sub_100021264();
      v73 = v55;
      v56 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v56 - 8) + 56))(v52, 1, 1, v56);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_100004930(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      v57 = v55;
      v43 = v52;
      v42 = v51;
      v44 = v50;
      v58 = v71;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v43, &unk_100524C50, &qword_10044F180);

      (*v66)(v44, v42);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      Publisher<>.sink(receiveValue:)();
      v45 = v54;
      v59 = v72;

      (*v65)(v45, v58);
      v73 = sub_100300BF8();
      AnyCancellable.store(in:)();
      v21 = &selRef_bundleWithURL_;

      *(v59 + 16) = v73;

      --v41;
    }

    while (v41);
  }

  return result;
}

uint64_t sub_10031A180@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HostedRoutingSession(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_10002ADF8(v12, v10, type metadata accessor for HostedRoutingSession);
      v14 = a1(v10);
      if (v3)
      {
        return sub_10002AC54(v10, type metadata accessor for HostedRoutingSession);
      }

      if (v14)
      {
        break;
      }

      sub_10002AC54(v10, type metadata accessor for HostedRoutingSession);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_10002AF68(v10, v18, type metadata accessor for HostedRoutingSession);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

double sub_10031A34C()
{
  v79 = type metadata accessor for RoutingSessionConfiguration();
  v1 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RoutingMode();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v69 = &v52 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = (&v52 - v11);
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = sub_100028BB8();
  v17 = v4 + 104;
  v16 = *(v4 + 13);
  v80 = v12;
  v18 = v12;
  v59 = enum case for RoutingMode.disabled(_:);
  v71 = v3;
  v19 = v16;
  (v16)(v18);
  v58 = v0;
  v20 = sub_10002107C();
  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_54;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v56 = v4;
  if (v22)
  {
    v53 = v15;
    v54 = v14;
    v55 = v1;
    v1 = 0;
    v65 = v21 & 0xC000000000000001;
    v57 = v21 & 0xFFFFFFFFFFFFFF8;
    v23 = (v4 + 16);
    v66 = enum case for RoutingMode.detailed(_:);
    v67 = (v4 + 8);
    v68 = enum case for RoutingMode.localNetwork(_:);
    v70 = enum case for RoutingMode.prewarm(_:);
    v15 = v19;
    v60 = v22;
    v61 = v7;
    v64 = v21;
    v77 = (v4 + 16);
    v63 = v17;
    v62 = v19;
    while (1)
    {
      if (v65)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v22 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      else
      {
        if (v1 >= *(v57 + 16))
        {
          goto LABEL_53;
        }

        v24 = *(v21 + 8 * v1 + 32);

        v25 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_52;
        }
      }

      v75 = v25;
      v76 = v1;
      v26 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
      swift_beginAccess();
      v19 = *v23;
      v14 = v69;
      v21 = v71;
      (*v23)(v69, v24 + v26, v71);
      (v15)(v7, v66, v21);
      v27 = static RoutingMode.== infix(_:_:)();
      v4 = *v67;
      (*v67)(v7, v21);
      v4(v14, v21);
      if (v27)
      {
        v38 = v80;
        v4(v80, v21);

        (v62)(v38, v66, v21);
LABEL_24:
        v4 = v56;
        v1 = v55;
        v14 = v54;
        v15 = v53;
        goto LABEL_25;
      }

      v73 = v26;
      v74 = v24;
      v72 = v19;
      (v19)(v14, v24 + v26, v21);
      v28 = v63;
      v29 = v62;
      (v62)(v7, v68, v21);
      v30 = static RoutingMode.== infix(_:_:)();
      v4(v7, v21);
      v4(v14, v21);
      if (v30)
      {
        (v29)(v14, v70, v21);
        v31 = static RoutingMode.== infix(_:_:)();
        v4(v14, v21);
        if (v31 & 1) != 0 || ((v29)(v14, v59, v21), v32 = static RoutingMode.== infix(_:_:)(), v4(v14, v21), (v32))
        {
          v33 = v80;
          v4(v80, v21);
          (v29)(v33, v68, v21);
        }
      }

      v19 = v29;
      v17 = v28;
      (v72)(v14, v74 + v73, v21);
      v7 = v61;
      (v19)(v61, v70, v21);
      v34 = static RoutingMode.== infix(_:_:)();
      v4(v7, v21);
      v4(v14, v21);
      v15 = v19;
      if (v34)
      {
        (v19)(v14, v59, v21);
        v35 = static RoutingMode.== infix(_:_:)();

        v4(v14, v21);
        v21 = v64;
        if (v35)
        {
          v36 = v80;
          v37 = v71;
          v4(v80, v71);
          (v19)(v36, v70, v37);
        }
      }

      else
      {

        v21 = v64;
      }

      v1 = v76 + 1;
      v23 = v77;
      if (v75 == v60)
      {

        goto LABEL_24;
      }
    }
  }

LABEL_25:
  (*(v4 + 4))(v14, v80, v71);
  (*(*v15 + 400))(v14);

  v17 = *(v58 + 24);
  v81 = &_swiftEmptySetSingleton;
  v39 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    v80 = (v17 & 0xC000000000000001);
    v77 = (v1 + 16);
    v4 = (v1 + 8);
    while (1)
    {
      if (v80)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v21 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          v43 = v81;
          v4 = v56;
          goto LABEL_39;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v19 = *(v17 + 8 * v15 + 32);

        v21 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      v40 = v17;
      v41 = v39;
      v42 = v78;
      v1 = v79;
      (*v77)(v78, &v19[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration], v79);
      v7 = sub_10002CC04();
      (*v4)(v42, v1);
      sub_10031B580(v7);
      v39 = v41;
      v17 = v40;

      ++v15;
      if (v21 == v14)
      {
        goto LABEL_37;
      }
    }
  }

  v43 = &_swiftEmptySetSingleton;
LABEL_39:

  v7 = 0;
  v17 = v43;
  v44 = v43[7];
  v79 = (v43 + 7);
  v45 = 1 << *(v43 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v44;
  v1 = (v45 + 63) >> 6;
  v80 = (v4 + 8);
  v19 = v69;
  if ((v46 & v44) != 0)
  {
    while (1)
    {
      v48 = v7;
LABEL_47:
      v49 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v50 = *(v17 + 48) + 24 * (v49 | (v48 << 6));
      v21 = *v50;
      v4 = *(v50 + 8);
      v14 = *(v58 + 88);
      v15 = *(v50 + 16);
      sub_10002CBE8(*v50, v4, *(v50 + 16));

      sub_10031AD24(v21, v4, v15, v19);
      (*(*v14 + 896))(v19, v21, v4, v15);

      sub_10002349C(v21, v4, v15);
      (*v80)(v19, v71);
      if (!v47)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
LABEL_43:
    v48 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v48 >= v1)
    {
      break;
    }

    v47 = *(v79 + 8 * v48);
    ++v7;
    if (v47)
    {
      v7 = v48;
      goto LABEL_47;
    }
  }

  return result;
}

uint64_t sub_10031AD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v69 = a1;
  v70 = a2;
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v45[-v10];
  v68 = type metadata accessor for RoutingSessionConfiguration();
  v12 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v6 + 104;
  v15 = *(v6 + 104);
  v56 = a4;
  v46 = enum case for RoutingMode.disabled(_:);
  v15(a4);
  v16 = sub_10002107C();
  v17 = v16;
  if (v16 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v60 = v15;
    v61 = v14;
    v47 = v11;
    v58 = v9;
    v49 = v5;
    v5 = 0;
    v66 = v17 & 0xC000000000000001;
    v55 = v17 & 0xFFFFFFFFFFFFFF8;
    v54 = v17 + 32;
    v63 = (v12 + 8);
    v64 = (v12 + 16);
    v48 = enum case for RoutingMode.detailed(_:);
    v15 = (v6 + 8);
    v50 = enum case for RoutingMode.localNetwork(_:);
    v51 = enum case for RoutingMode.prewarm(_:);
    v9 = &type metadata for HostedItemType;
    v65 = v17;
    v62 = i;
    v57 = (v6 + 16);
    while (v66)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = __OFADD__(v5++, 1);
      if (v19)
      {
        goto LABEL_28;
      }

LABEL_10:
      v20 = v67;
      v21 = v68;
      (*v64)(v67, v6 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v68);
      v12 = sub_10002CC04();
      (*v63)(v20, v21);
      v74 = v69;
      v75 = v70;
      v76 = v71;
      if (*(v12 + 16) && (v11 = *(v12 + 40), sub_100036860(), v22 = dispatch thunk of Hashable._rawHashValue(seed:)(), v14 = v12 + 56, v23 = -1 << *(v12 + 32), v24 = v22 & ~v23, ((*(v12 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        v11 = sub_1000360C4();
        while (1)
        {
          v26 = *(v12 + 48) + 24 * v24;
          v27 = *(v26 + 16);
          v72 = *v26;
          v73 = v27;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v14 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v28 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
        swift_beginAccess();
        v14 = v47;
        v29 = v49;
        v52 = *v57;
        v52(v47, v6 + v28, v49);
        v30 = v58;
        (v60)(v58, v48, v29);
        LODWORD(v53) = static RoutingMode.== infix(_:_:)();
        v31 = v6;
        v32 = *v15;
        (*v15)(v30, v29);
        v59 = v32;
        v32(v14, v29);
        if (v53)
        {
          v43 = v56;
          v59(v56, v29);

          return (v60)(v43, v48, v29);
        }

        v53 = v28;
        v6 = v31;
        v33 = v31 + v28;
        v34 = v52;
        v52(v14, v33, v29);
        (v60)(v30, v50, v29);
        v35 = static RoutingMode.== infix(_:_:)();
        v36 = v59;
        v59(v30, v29);
        v36(v14, v29);
        if (v35)
        {
          (v60)(v14, v51, v29);
          v37 = static RoutingMode.== infix(_:_:)();
          v36(v14, v29);
          if (v37 & 1) != 0 || ((v60)(v14, v46, v29), v38 = static RoutingMode.== infix(_:_:)(), v36(v14, v29), (v38))
          {
            v39 = v56;
            v36(v56, v29);
            (v60)(v39, v50, v29);
          }
        }

        v34(v14, v6 + v53, v29);
        v11 = v58;
        (v60)(v58, v51, v29);
        v40 = static RoutingMode.== infix(_:_:)();
        v12 = v59;
        v59(v11, v29);
        (v12)(v14, v29);
        if (v40)
        {
          (v60)(v14, v46, v29);
          v41 = static RoutingMode.== infix(_:_:)();

          (v12)(v14, v29);
          if (v41)
          {
            v6 = v56;
            v42 = v49;
            (v12)(v56, v49);
            (v60)(v6, v51, v42);
          }

          goto LABEL_17;
        }
      }

      else
      {
LABEL_15:
      }

LABEL_17:
      v17 = v65;
      if (v5 == v62)
      {
      }
    }

    if (v5 >= *(v55 + 16))
    {
      goto LABEL_29;
    }

    v6 = *(v54 + 8 * v5);

    v19 = __OFADD__(v5++, 1);
    if (!v19)
    {
      goto LABEL_10;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

void sub_10031B580(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(a1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_10002CBE8(*v10, v12, *(v10 + 16));
      sub_10002EF90(v14, v11, v12, v13);
      sub_10002349C(v14[0], v14[1], v15);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10031B6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingSessionConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = *(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  sub_10002ADF8(a2, v10, type metadata accessor for HostedRoutingSessionSnapshot);
  v16 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v4);
  swift_unknownObjectRetain();
  sub_100265398(v10, v7, v13);
  (*(v14 + 8))(v13, ObjectType, v14);
  swift_unknownObjectRelease();
  return sub_1000038A4(v13, &qword_100525F78, &qword_100458A90);
}

uint64_t sub_10031B8F4()
{
  v1 = v0;
  v69 = type metadata accessor for HostedRoutingSession(0);
  v2 = *(v69 - 8);
  v3 = __chkstk_darwin(v69);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v59 - v7;
  __chkstk_darwin(v6);
  v10 = &v59 - v9;
  v11 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v73 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v72 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v14 = __chkstk_darwin(v13 - 8);
  v65 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v68 = &v59 - v17;
  __chkstk_darwin(v16);
  v19 = &v59 - v18;
  v20 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v67 = v20;
  v22(v19, 1, 1);
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v23 = sub_10024C81C();
  v24 = [v23 localOriginClient];

  sub_10033D250();
  swift_beginAccess();

  v25 = String._bridgeToObjectiveC()();

  v70 = v24;
  v26 = [v24 existingNowPlayingClientForDisplayID:v25];

  if (v26 && (v27 = [v26 activePlayerClient], v26, v27))
  {
    v60 = v27;
    v61 = v19;
    v64 = v8;
    v66 = v10;
    v62 = v1;
    result = sub_100030790();
    v29 = 0;
    v31 = result + 64;
    v30 = *(result + 64);
    v71 = result;
    v32 = 1 << *(result + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v30;
    v35 = (v32 + 63) >> 6;
    v63 = (v21 + 48);
    while (v34)
    {
LABEL_12:
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v38 = v72;
      sub_10002ADF8(*(v71 + 56) + *(v73 + 72) * (v37 | (v29 << 6)), v72, type metadata accessor for HostedRoutingSessionSnapshot);
      v39 = sub_100032A00();
      v40 = sub_10002AC54(v38, type metadata accessor for HostedRoutingSessionSnapshot);
      v42 = *(v39 + 16);
      if (v42)
      {
        v43 = 0;
        while (1)
        {
          if (v43 >= *(v39 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v44 = sub_10002ADF8(v39 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v43, v5, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v44))
          {
            break;
          }

          ++v43;
          v40 = sub_10002AC54(v5, type metadata accessor for HostedRoutingSession);
          if (v42 == v43)
          {
            goto LABEL_6;
          }
        }

        v45 = v64;
        sub_10002AF68(v5, v64, type metadata accessor for HostedRoutingSession);
        v46 = v45;
        v47 = v66;
        sub_10002AF68(v46, v66, type metadata accessor for HostedRoutingSession);
        v48 = v68;
        sub_10001D9AC(v47 + *(v69 + 28), v68, &qword_100523640, qword_100451520);
        if ((*v63)(v48, 1, v67) == 1)
        {
          sub_10002AC54(v47, type metadata accessor for HostedRoutingSession);
          result = sub_1000038A4(v48, &qword_100523640, qword_100451520);
          continue;
        }

        v49 = v48;
        v50 = *(v48 + 48);
        v51 = *(v49 + 56);
        v52 = *(v49 + 60);
        sub_100248888(v50, v51, *(v49 + 60));
        sub_10002AC54(v49, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        v40 = v50;
        v41 = v51;
        if (v52)
        {
          sub_1002488FC(v50, v51, v52);
          result = sub_10002AC54(v66, type metadata accessor for HostedRoutingSession);
          continue;
        }

LABEL_25:
        sub_1002488FC(v40, v41, 0);
        v54 = v70;
        v55 = v70;
        v56 = v60;
        v57 = v60;
        v58 = v65;
        sub_100026A90(v54, v56, v65);

        sub_10002AC54(v66, type metadata accessor for HostedRoutingSession);
        v19 = v61;
        sub_1000038A4(v61, &qword_100523640, qword_100451520);
        sub_10003AEF0(v58, v19, &qword_100523640, qword_100451520);
        goto LABEL_23;
      }

LABEL_6:
    }

    while (1)
    {
      v36 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v36 >= v35)
      {

        v19 = v61;
        goto LABEL_23;
      }

      v34 = *(v31 + 8 * v36);
      ++v29;
      if (v34)
      {
        v29 = v36;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v53 = sub_100301054();
    (*(*v53 + 224))(v19);

    return sub_1000038A4(v19, &qword_100523640, qword_100451520);
  }

  return result;
}

void sub_10031BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v59 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for RoutingDialog();
  v65 = *(v67 - 8);
  v13 = *(v65 + 64);
  v14 = __chkstk_darwin(v67);
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  v17 = *(sub_100300E4C() + 2);
  v66 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v17)
  {

    goto LABEL_5;
  }

  sub_100031588(a2);
  LOBYTE(v19) = v18;

  if ((v19 & 1) == 0)
  {
LABEL_5:
    v19 = *(v4 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v19;
    sub_10032C2E4(&_swiftEmptyDictionarySingleton, a2, isUniquelyReferenced_nonNull_native, &qword_1005266D8, &qword_100458488);

    *(v4 + 40) = aBlock[0];
  }

  v64 = a1;
  v63 = RoutingDialog.identifier.getter();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = *(v4 + 40);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v24;
  v27 = sub_100031588(a2);
  v28 = *(v24 + 16);
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v19) = v26;
  if (*(v24 + 24) >= v30)
  {
    if (v25)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

LABEL_21:
    sub_10032C9B8(&qword_1005266D8, &qword_100458488);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  sub_10032ADC0(v30, v25, &qword_1005266D8, &qword_100458488);
  v31 = sub_100031588(a2);
  if ((v19 & 1) != (v32 & 1))
  {
LABEL_23:
    type metadata accessor for RoutingSessionServer.Client(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v27 = v31;
  if ((v19 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_13:
  v33 = *(*(aBlock[0] + 56) + 8 * v27);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v33;
  sub_10032C468(sub_100330844, v23, v63, v22, v34);

  v35 = aBlock[0];
  if (v69)
  {
    *(*(aBlock[0] + 56) + 8 * v27) = v69;
  }

  else
  {

    sub_10032B714(v27, v35);
  }

  v36 = v66;
  v37 = v64;
  *(v5 + 40) = v35;

  v38 = v65;
  v39 = *(v65 + 16);
  v40 = v67;
  v39(v16, v37, v67);
  v39(v36, v16, v40);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = a2;
  (*(v38 + 32))(v42 + v41, v16, v40);
  v43 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
  v44 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

  v45 = v44;
  v46 = *sub_100021264();

  if (v45 == v46)
  {
    v54 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
    ObjectType = swift_getObjectType();
    v56 = *(v54 + 24);
    swift_unknownObjectRetain();
    v56(v36, ObjectType, v54);

    swift_unknownObjectRelease();
    (*(v38 + 8))(v36, v40);
  }

  else
  {
    v47 = *(a2 + v43);
    v48 = swift_allocObject();
    *(v48 + 16) = sub_100330870;
    *(v48 + 24) = v42;
    aBlock[4] = sub_1002253D8;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004CE158;
    v49 = _Block_copy(aBlock);
    v50 = v47;

    v51 = v57;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v52 = v59;
    v53 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v49);

    (*(v61 + 8))(v52, v53);
    (*(v58 + 8))(v51, v60);
    (*(v38 + 8))(v66, v67);
  }
}

void sub_10031C6F0(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  if (*(sub_100300F7C() + 2))
  {
    sub_100031588(a2);
    v8 = v7;

    if (v8)
    {
      v9 = *(v2 + 56);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_100031588(a2);
      v13 = v9[2];
      v14 = (v11 & 1) == 0;
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        __break(1u);
      }

      else
      {
        v3 = v11;
        if (v9[3] < v15)
        {
          sub_10032ADC0(v15, isUniquelyReferenced_nonNull_native, &qword_1005266F8, &qword_1004584B8);
          v16 = sub_100031588(a2);
          if ((v3 & 1) != (v17 & 1))
          {
LABEL_23:
            type metadata accessor for RoutingSessionServer.Client(0);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v12 = v16;
          if ((v3 & 1) == 0)
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_12;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_12;
        }
      }

      sub_10032C9B8(&qword_1005266F8, &qword_1004584B8);
      if ((v3 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_12:
      v29 = *(v9[7] + 8 * v12);
      v26 = a1[1];
      v37 = *a1;
      v27 = a1[2];
      v35[0] = v26;
      v35[1] = v27;
      v36 = *(a1 + 48);
      sub_10028BC98(&v37, &v30);
      sub_10026D080(v35, &v30);
      sub_10032D508(&v30, a1);

      sub_1002485A4(v31, *(&v31 + 1), v32, v33, v34);
      if (v29)
      {
        *(v9[7] + 8 * v12) = v29;
      }

      else
      {

        sub_10032B714(v12, v9);
      }

      *(v4 + 56) = v9;
      goto LABEL_16;
    }
  }

  else
  {
  }

  sub_1001BC5A8(&qword_100524C08, &unk_100457390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v20 = a1[1];
  v37 = *a1;
  v19 = v37;
  LOBYTE(v32) = *(a1 + 48);
  v21 = v32;
  v22 = a1[2];
  v30 = v20;
  v31 = v22;
  *(inited + 48) = v20;
  *(inited + 64) = v22;
  *(inited + 80) = v21;
  *(inited + 32) = v19;
  sub_10028BC98(&v37, v35);
  sub_10026D080(&v30, v35);
  v23 = sub_10032F69C(inited);
  swift_setDeallocating();
  sub_100330CA8(inited + 32);
  v24 = *(v4 + 56);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  *&v35[0] = v24;
  sub_10032C2E4(v23, a2, v25, &qword_1005266F8, &qword_1004584B8);

  *(v4 + 56) = *&v35[0];
LABEL_16:

  v28 = *(a1 + 48);
  if (v28 <= 6 && ((1 << v28) & 0x47) != 0)
  {
    sub_10031C9DC(a2);
  }
}

void sub_10031C9DC(uint64_t a1)
{
  v91[1] = *v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Logger();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v12 = &_swiftEmptySetSingleton;
  *(v11 + 16) = &_swiftEmptySetSingleton;
  v103 = (v11 + 16);
  v102 = v1;
  v13 = sub_100300F7C();
  v14 = v13[2];
  v97 = v3;
  v96 = v4;
  v95 = v7;
  v94 = v6;
  v93 = v8;
  v99 = a1;
  if (v14)
  {
    v15 = sub_100031588(a1);
    if (v16)
    {
      v12 = *(v13[7] + 8 * v15);
    }
  }

  v17 = 0;
  v18 = 1 << v12[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v12 + 7);
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
LABEL_13:
    v27 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = *(v12 + 6) + 56 * (v27 | (v17 << 6));
    v29 = *(v28 + 16);
    v111[0] = *v28;
    v111[1] = v29;
    v114 = v111[0];
    v30 = *(v28 + 16);
    v112 = *(v28 + 32);
    v31 = *(v28 + 48);
    v113 = v31;
    v115 = v30;
    v116 = v112;
    v117 = v31;
    v32 = v30;
    if (v31 < 3)
    {
      v22 = v116;
      v23 = *(&v115 + 1);

      v104 = v22;
      sub_10028BC98(&v114, &aBlock);
      sub_10026D080(&v115, &aBlock);

      v24._countAndFlagsBits = 14906;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);

      aBlock = v104;

      v25._countAndFlagsBits = v32;
      v25._object = v23;
      String.append(_:)(v25);

      sub_100008318(&aBlock, aBlock, *(&aBlock + 1));
      sub_1001E6204(&v114);
      sub_100238E4C(&v115);
    }

    else if (v31 == 6)
    {
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
      v35 = *(v30 + 32);
      v36 = *(v30 + 40);
      sub_10028BC98(&v114, &aBlock);
      sub_10026D080(&v115, &aBlock);
      v37 = sub_100037234();
      if (v33 == *v37 && v34 == *(v37 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v91[0] = v36;
        v38 = v35;
        v39 = v11;
        v40 = sub_100030F88();
        v41 = (*(*v40 + 264))(v111);
        v43 = v42;

        if (v43)
        {
          *&aBlock = v41;
          *(&aBlock + 1) = v43;

          v44._countAndFlagsBits = 14906;
          v44._object = 0xE200000000000000;
          String.append(_:)(v44);

          v45._countAndFlagsBits = v38;
          v45._object = v91[0];
          String.append(_:)(v45);

          sub_100008318(&aBlock, aBlock, *(&aBlock + 1));
        }

        sub_1001E6204(&v114);
        sub_100238E4C(&v115);
        v11 = v39;
      }

      else
      {
        sub_1001E6204(&v114);
        sub_100238E4C(&v115);
      }
    }
  }

  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return;
    }

    if (v26 >= v21)
    {
      break;
    }

    v20 = *&v12[8 * v26 + 56];
    ++v17;
    if (v20)
    {
      v17 = v26;
      goto LABEL_13;
    }
  }

  v46 = *v103;
  v47 = sub_100301014();
  v48 = v99;
  v49 = v101;
  v50 = v98;
  v51 = v100;
  if (v47[2])
  {

    v52 = sub_100031588(v48);
    if (v53)
    {
      v54 = *(v47[7] + 8 * v52);

      v55 = sub_100218144(v46, v54);

      if (v55)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

LABEL_28:
  v56 = *(v11 + 16);
  v57 = v102;
  v58 = v102[8];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v58;
  sub_10032C2E4(v56, v48, isUniquelyReferenced_nonNull_native, &qword_1005266D0, &qword_100458480);

  v57[8] = aBlock;

  v60 = sub_100028D40();
  (*(v50 + 16))(v51, v60, v49);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v63 = 136315650;
    v64 = _typeName(_:qualified:)();
    v66 = sub_10002C9C8(v64, v65, &aBlock);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2082;
    swift_beginAccess();

    v67 = Set.description.getter();
    v68 = v11;
    v70 = v69;

    v71 = sub_10002C9C8(v67, v70, &aBlock);
    v11 = v68;

    *(v63 + 14) = v71;
    *(v63 + 22) = 2082;
    v72 = sub_100036B00();
    v74 = sub_10002C9C8(v72, v73, &aBlock);

    *(v63 + 24) = v74;
    _os_log_impl(&_mh_execute_header, v61, v62, "[%s] updatePendingItemIdentifiers - items: %{public}s for client: %{public}s", v63, 0x20u);
    swift_arrayDestroy();

    (*(v50 + 8))(v100, v101);
  }

  else
  {

    (*(v50 + 8))(v51, v49);
  }

  v75 = swift_allocObject();
  *(v75 + 16) = v48;
  *(v75 + 24) = v11;
  v76 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
  v77 = *(v48 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

  v78 = v77;
  v79 = *sub_100021264();

  if (v78 != v79)
  {
    v80 = *(v48 + v76);
    v81 = swift_allocObject();
    *(v81 + 16) = sub_10033079C;
    *(v81 + 24) = v75;
    v109 = sub_1002253D8;
    v110 = v81;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v107 = sub_100003D98;
    v108 = &unk_1004CE0B8;
    v82 = _Block_copy(&aBlock);
    v83 = v80;

    v84 = v92;
    static DispatchQoS.unspecified.getter();
    v105 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v85 = v94;
    v86 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v82);

    (*(v96 + 8))(v85, v86);
    (*(v93 + 8))(v84, v95);

LABEL_33:

    return;
  }

  v87 = *(v48 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v89 = *(v87 + 16);
  swift_unknownObjectRetain();

  v89(v90, ObjectType, v87);

  swift_unknownObjectRelease();
}

void *sub_10031D528()
{

  return v0;
}

uint64_t sub_10031D5A8()
{
  sub_10031D528();

  return swift_deallocClassInstance();
}

void *sub_10031D5DC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_10002ADF8(a3 + v15 + v16 * v13, v12, type metadata accessor for HostedRoutingSourceSession);
      v17 = a1(v12);
      if (v3)
      {
        sub_10002AC54(v12, type metadata accessor for HostedRoutingSourceSession);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_10002AF68(v12, v24, type metadata accessor for HostedRoutingSourceSession);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10032E068(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_10032E068((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_10002AF68(v24, v14 + v15 + v20 * v16, type metadata accessor for HostedRoutingSourceSession);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_10002AC54(v12, type metadata accessor for HostedRoutingSourceSession);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_10031D868@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v251 = a2;
  v234 = a1;
  v229 = a4;
  v237 = type metadata accessor for HostedRoutingSession(0);
  v257 = *(v237 - 8);
  v6 = __chkstk_darwin(v237);
  v246 = (&v213 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v218 = (&v213 - v9);
  v10 = __chkstk_darwin(v8);
  v12 = &v213 - v11;
  v13 = __chkstk_darwin(v10);
  v226 = &v213 - v14;
  v15 = __chkstk_darwin(v13);
  v213 = &v213 - v16;
  v17 = __chkstk_darwin(v15);
  v216 = &v213 - v18;
  v19 = __chkstk_darwin(v17);
  v238 = &v213 - v20;
  __chkstk_darwin(v19);
  v250 = &v213 - v21;
  v22 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v23 = __chkstk_darwin(v22 - 8);
  v214 = &v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v223 = &v213 - v26;
  v27 = __chkstk_darwin(v25);
  v215 = &v213 - v28;
  v29 = __chkstk_darwin(v27);
  v221 = &v213 - v30;
  v31 = __chkstk_darwin(v29);
  v224 = &v213 - v32;
  __chkstk_darwin(v31);
  v227 = &v213 - v33;
  v236 = type metadata accessor for RoutingSessionConfiguration.Context();
  v235 = *(v236 - 8);
  v34 = __chkstk_darwin(v236);
  v217 = &v213 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v220 = &v213 - v37;
  v38 = __chkstk_darwin(v36);
  v225 = (&v213 - v39);
  v40 = __chkstk_darwin(v38);
  v228 = (&v213 - v41);
  __chkstk_darwin(v40);
  v233 = (&v213 - v42);
  v260 = type metadata accessor for HostedRoutingItem(0);
  v262 = *(v260 - 8);
  v43 = __chkstk_darwin(v260);
  v248 = &v213 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v259 = &v213 - v46;
  v47 = __chkstk_darwin(v45);
  v261 = &v213 - v48;
  __chkstk_darwin(v47);
  v50 = (&v213 - v49);
  v254 = type metadata accessor for RoutingSessionConfiguration();
  v51 = *(v254 - 8);
  v52 = *(v51 + 64);
  v53 = __chkstk_darwin(v254);
  v245 = &v213 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v213 - v54;
  v56 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v57 = __chkstk_darwin(v56 - 8);
  v219 = &v213 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v60 = &v213 - v59;
  v247 = v4;
  v61 = sub_100030790();
  v62 = v61[2];
  v249 = v55;
  v239 = a3;
  v252 = v60;
  v222 = v12;
  if (v62)
  {
    v63 = sub_100031588(a3);
    if (v64)
    {
      v65 = v63;
      v66 = v61[7];
      v67 = type metadata accessor for HostedRoutingSessionSnapshot(0);
      v68 = *(v67 - 8);
      v69 = v66 + *(v68 + 72) * v65;
      a3 = v239;
      v70 = v252;
      sub_10002ADF8(v69, v252, type metadata accessor for HostedRoutingSessionSnapshot);

      v71 = v67;
      v55 = v249;
      (*(v68 + 56))(v70, 0, 1, v71);
    }

    else
    {

      v73 = type metadata accessor for HostedRoutingSessionSnapshot(0);
      (*(*(v73 - 8) + 56))(v252, 1, 1, v73);
    }
  }

  else
  {

    v72 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    (*(*(v72 - 8) + 56))(v60, 1, 1, v72);
  }

  v74 = *(v51 + 16);
  v230 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration;
  v75 = v254;
  v74(v55, a3 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v254);
  v76 = sub_1000321BC();
  v258 = (*(*v76 + 128))(v76);

  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v243 = sub_100018D1C();
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v77 + 24) = 0;
  v78 = v245;
  v79 = v55;
  v80 = v77;
  v232 = v51 + 16;
  v231 = v74;
  v74(v245, v79, v75);
  v81 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  v253 = v51;
  v83 = *(v51 + 32);
  v240 = v82;
  v83(v82 + v81, v78, v75);
  v84 = swift_allocObject();
  v241 = v84;
  *(v84 + 16) = &_swiftEmptySetSingleton;
  v256 = (v84 + 16);
  v85 = swift_allocObject();
  v242 = v85;
  *(v85 + 16) = &_swiftEmptySetSingleton;
  v255 = v85 + 16;
  v86 = *(v251 + 16);
  v244 = v80;
  if (v86)
  {
    v87 = v251 + ((*(v262 + 80) + 32) & ~*(v262 + 80));
    v88 = *(v262 + 72);

    v89 = v258;
    do
    {
      sub_10002ADF8(v87, v50, type metadata accessor for HostedRoutingItem);
      v91 = *v50;
      v90 = v50[1];

      sub_10002AC54(v50, type metadata accessor for HostedRoutingItem);
      if (*(v89 + 16) && (v92 = sub_10000698C(v91, v90), (v93 & 1) != 0))
      {
        v94 = *(*(v89 + 56) + 8 * v92);
        v95 = *(*v94 + 128);

        if (v95(v96))
        {

          sub_100008318(&v263, v91, v90);
        }

        if (v94[33] == 1)
        {
          sub_100008318(&v263, v91, v90);
        }

        v89 = v258;
      }

      else
      {
      }

      v87 += v88;
      --v86;
    }

    while (v86);
  }

  else
  {

    v89 = v258;
  }

  v97 = v239;
  v98 = v245;
  v99 = v254;
  v231(v245, v239 + v230, v254);
  v100 = v243;
  v101 = sub_10032595C(v234, v243);
  sub_100325C48(v101, v100);

  sub_10032625C(v102, v100);

  v104 = sub_100326CB0(v103, v100);

  v105 = v253 + 8;
  v245 = *(v253 + 8);
  v106 = (v245)(v98, v99);
  v107 = v104[2];
  v232 = v104[3];
  v234 = v104;
  v108 = v104[4];
  __chkstk_darwin(v106);
  v109 = v249;
  *(&v213 - 12) = v100;
  *(&v213 - 11) = v109;
  v110 = v241;
  *(&v213 - 10) = v251;
  *(&v213 - 9) = v110;
  v111 = v252;
  *(&v213 - 8) = v242;
  *(&v213 - 7) = v111;
  *(&v213 - 6) = v97;
  *(&v213 - 5) = v89;
  *(&v213 - 4) = v244;
  *(&v213 - 3) = sub_100331388;
  *(&v213 - 2) = v240;

  v255 = v108;

  v112 = sub_1000323E0(sub_10033140C, (&v213 - 14), v107);
  v251 = 0;
  v113 = v233;
  RoutingSessionConfiguration.context.getter();
  v114 = v235;
  v115 = *(v235 + 88);
  v116 = v236;
  v117 = v115(v113, v236);
  v256 = v112;
  v253 = v105;
  if (v117 == enum case for RoutingSessionConfiguration.Context.platterTarget(_:))
  {

    result = (*(v114 + 96))(v113, v116);
    v119 = v113[1];
    v120 = v112[2];
    if (!v120)
    {
LABEL_48:

      v130 = 1;
      v131 = v249;
      v132 = v237;
      v129 = v227;
LABEL_49:
      (*(v257 + 56))(v129, v130, 1, v132);
      sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v129, v229);
      goto LABEL_50;
    }

    v121 = 0;
    v122 = *v113;
    v259 = v112 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    while (v121 < v112[2])
    {
      sub_10002ADF8(v259 + *(v257 + 72) * v121, v250, type metadata accessor for HostedRoutingSession);
      result = sub_100261164();
      v123 = result;
      v124 = *(result + 16);
      if (v124)
      {
        v125 = 0;
        v126 = result + ((*(v262 + 80) + 32) & ~*(v262 + 80));
        while (1)
        {
          v127 = v261;
          if (v125 >= *(v123 + 16))
          {
            break;
          }

          sub_10002ADF8(v126 + *(v262 + 72) * v125, v261, type metadata accessor for HostedRoutingItem);
          if (sub_1002589A8(v122, v119))
          {
            v128 = *(v127 + *(v260 + 36));
            result = sub_10002AC54(v127, type metadata accessor for HostedRoutingItem);
            if (v128)
            {

              v129 = v227;
              sub_10002AF68(v250, v227, type metadata accessor for HostedRoutingSession);
              v130 = 0;
              v131 = v249;
              v132 = v237;
              goto LABEL_49;
            }
          }

          else
          {
            result = sub_10002AC54(v127, type metadata accessor for HostedRoutingItem);
          }

          if (v124 == ++v125)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        break;
      }

LABEL_22:
      ++v121;

      result = sub_10002AC54(v250, type metadata accessor for HostedRoutingSession);
      v112 = v256;
      if (v121 == v120)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v261 = v107;
  v133 = *(v114 + 8);
  v133(v113, v116);
  v134 = v228;
  RoutingSessionConfiguration.context.getter();
  v135 = v115(v134, v116);
  if (v135 == enum case for RoutingSessionConfiguration.Context.deviceTarget(_:))
  {

    result = (*(v114 + 96))(v134, v116);
    v136 = v134[1];
    v137 = v256;
    v138 = v256[2];
    if (v138)
    {
      v139 = 0;
      v140 = *v134;
      v261 = v256 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
      while (v139 < *(v137 + 16))
      {
        sub_10002ADF8(v261 + *(v257 + 72) * v139, v238, type metadata accessor for HostedRoutingSession);
        result = sub_100261164();
        v141 = result;
        v142 = *(result + 16);
        if (v142)
        {
          v143 = 0;
          v144 = result + ((*(v262 + 80) + 32) & ~*(v262 + 80));
          do
          {
            v145 = v259;
            if (v143 >= *(v141 + 16))
            {
              goto LABEL_103;
            }

            sub_10002ADF8(v144 + *(v262 + 72) * v143, v259, type metadata accessor for HostedRoutingItem);
            if (sub_1002589A8(v140, v136))
            {
              v146 = *(v145 + *(v260 + 36));
              result = sub_10002AC54(v145, type metadata accessor for HostedRoutingItem);
              if (v146)
              {

                v147 = v224;
                sub_10002AF68(v238, v224, type metadata accessor for HostedRoutingSession);
                v148 = 0;
                goto LABEL_63;
              }
            }

            else
            {
              result = sub_10002AC54(v145, type metadata accessor for HostedRoutingItem);
            }
          }

          while (v142 != ++v143);
        }

        ++v139;

        result = sub_10002AC54(v238, type metadata accessor for HostedRoutingSession);
        v137 = v256;
        if (v139 == v138)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_107;
    }

    goto LABEL_62;
  }

  v133(v134, v116);
  v149 = v225;
  RoutingSessionConfiguration.context.getter();
  v260 = v115;
  if (v115(v149, v116) == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:))
  {

    (*(v114 + 96))(v149, v116);
    v151 = *v149;
    v150 = v149[1];
    v152 = v219;
    sub_10001D9AC(v252, v219, &qword_100523C30, &qword_100451B00);
    v153 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    v154 = (*(*(v153 - 8) + 48))(v152, 1, v153);
    v155 = v256;
    if (v154 == 1)
    {
      sub_1000038A4(v152, &qword_100523C30, &qword_100451B00);
      v156 = v221;
      (*(v257 + 56))(v221, 1, 1, v237);
      v157 = v222;
    }

    else
    {
      v156 = v221;
      sub_10001D9AC(v152, v221, &qword_100523620, &unk_1004511D0);
      sub_10002AC54(v152, type metadata accessor for HostedRoutingSessionSnapshot);
      v168 = *(v257 + 48);
      v169 = v168(v156, 1, v237);
      v157 = v222;
      if (v169 != 1)
      {
        v193 = v216;
        v194 = sub_10002AF68(v156, v216, type metadata accessor for HostedRoutingSession);
        __chkstk_darwin(v194);
        *(&v213 - 2) = v193;
        v195 = v215;
        v196 = v251;
        sub_10031A180(sub_100248974, v155, v215);
        v251 = v196;
        v197 = v237;
        if (v168(v195, 1, v237) != 1)
        {

          v211 = v213;
          sub_10002AF68(v195, v213, type metadata accessor for HostedRoutingSession);
          v212 = v223;
          sub_10002ADF8(v211, v223, type metadata accessor for HostedRoutingSession);
          (*(v257 + 56))(v212, 0, 1, v197);
          sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v212, v229);

          sub_10002AC54(v211, type metadata accessor for HostedRoutingSession);
          v182 = v193;
LABEL_97:
          sub_10002AC54(v182, type metadata accessor for HostedRoutingSession);

          goto LABEL_98;
        }

        sub_1000038A4(v195, &qword_100523620, &unk_1004511D0);
        result = sub_10002AC54(v193, type metadata accessor for HostedRoutingSession);
        v170 = *(v155 + 16);
        if (v170)
        {
LABEL_67:
          v171 = 0;
          v172 = v155 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
          v261 = v172;
          while (v171 < *(v155 + 16))
          {
            v173 = v157;
            v174 = v171 + 1;
            sub_10002ADF8(v172 + *(v257 + 72) * v171, v226, type metadata accessor for HostedRoutingSession);
            result = sub_10003AC60();
            v175 = result;
            v176 = 0;
            v177 = *(result + 16);
            while (v177 != v176)
            {
              if (v176 >= *(v175 + 16))
              {
                goto LABEL_104;
              }

              v178 = v248;
              sub_10002ADF8(v175 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v176++, v248, type metadata accessor for HostedRoutingItem);
              v179 = sub_1002589A8(v151, v150);
              result = sub_10002AC54(v178, type metadata accessor for HostedRoutingItem);
              if (v179)
              {

                v180 = v226;
                v181 = v223;
                sub_10002ADF8(v226, v223, type metadata accessor for HostedRoutingSession);
                (*(v257 + 56))(v181, 0, 1, v237);
                sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v181, v229);

                v182 = v180;
                goto LABEL_97;
              }
            }

            sub_10002AC54(v226, type metadata accessor for HostedRoutingSession);

            v171 = v174;
            v157 = v173;
            v155 = v256;
            v172 = v261;
            if (v174 == v170)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_109;
        }

        goto LABEL_82;
      }
    }

    result = sub_1000038A4(v156, &qword_100523620, &unk_1004511D0);
    v170 = *(v155 + 16);
    if (v170)
    {
      goto LABEL_67;
    }

LABEL_82:
    v198 = sub_100028BB8();
    v199 = (*(*v198 + 904))(v151, v150);
    v201 = v200;

    if (!v201)
    {

      v147 = v223;
      (*(v257 + 56))(v223, 1, 1, v237);
LABEL_64:
      sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v147, v229);

LABEL_98:
      v131 = v249;
      goto LABEL_99;
    }

    v131 = v249;
    if (v170)
    {
      v202 = 0;
      while (v202 < *(v155 + 16))
      {
        sub_10002ADF8(v155 + ((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v202, v157, type metadata accessor for HostedRoutingSession);
        v203 = *v157 == v199 && v201 == v157[1];
        if (v203 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v205 = v214;
          sub_10002AF68(v157, v214, type metadata accessor for HostedRoutingSession);
          v204 = 0;
          goto LABEL_101;
        }

        ++v202;
        result = sub_10002AC54(v157, type metadata accessor for HostedRoutingSession);
        if (v170 == v202)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_108;
    }

LABEL_92:

    v204 = 1;
    v205 = v214;
LABEL_101:
    (*(v257 + 56))(v205, v204, 1, v237);
    sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v205, v229);
LABEL_50:

LABEL_99:
    (v245)(v131, v254);
    return sub_1000038A4(v252, &qword_100523C30, &qword_100451B00);
  }

  v133(v149, v116);
  v158 = v220;
  RoutingSessionConfiguration.context.getter();
  v159 = sub_1000307D0();
  result = (v133)(v158, v116);
  v160 = v256;
  if (v159)
  {
    v161 = v256[2];
    v162 = v232;
    v163 = v260;
    v164 = v255;
    if (!v161)
    {
LABEL_61:
      __break(1u);
LABEL_62:

      v148 = 1;
      v147 = v224;
LABEL_63:
      (*(v257 + 56))(v147, v148, 1, v237);
      goto LABEL_64;
    }

    v165 = 0;
    v166 = v246;
    while (v165 < v256[2])
    {
      sub_10002ADF8(v256 + ((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v165, v166, type metadata accessor for HostedRoutingSession);
      v167 = *v166 == v162 && v166[1] == v164;
      if (v167 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v185 = v218;
        sub_10002AF68(v246, v218, type metadata accessor for HostedRoutingSession);
        v186 = v217;
        RoutingSessionConfiguration.context.getter();
        v187 = v236;
        if (v163(v186, v236) == enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
        {

          v133(v186, v187);
          v188 = v223;
          sub_10002ADF8(v185, v223, type metadata accessor for HostedRoutingSession);
          (*(v257 + 56))(v188, 0, 1, v237);
          v189 = _swiftEmptyArrayStorage;
          v190 = v229;
          v191 = _swiftEmptyArrayStorage;
          v192 = v188;
        }

        else
        {
          v133(v186, v187);
          sub_10002CF6C(v256, v185, v239);
          v207 = v206;
          v209 = v208;

          v210 = v223;
          sub_10002ADF8(v185, v223, type metadata accessor for HostedRoutingSession);
          (*(v257 + 56))(v210, 0, 1, v237);
          v190 = v229;
          v189 = v207;
          v191 = v209;
          v192 = v210;
        }

        sub_100021940(v189, v191, v192, v190);

        v182 = v185;
        goto LABEL_97;
      }

      ++v165;
      result = sub_10002AC54(v246, type metadata accessor for HostedRoutingSession);
      if (v161 == v165)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_106;
  }

  if (*(v160 + 16))
  {
    v183 = v257;
    v184 = v223;
    sub_10002ADF8(v160 + ((*(v257 + 80) + 32) & ~*(v257 + 80)), v223, type metadata accessor for HostedRoutingSession);

    (*(v183 + 56))(v184, 0, 1, v237);
    sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v184, v229);

    goto LABEL_98;
  }

LABEL_110:
  __break(1u);
  return result;
}

BOOL sub_10031F678(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v101 = a3;
  v6 = type metadata accessor for RoutingItem.SelectionIndicator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v102 = &v93 - v14;
  v15 = __chkstk_darwin(v13);
  v100 = &v93 - v16;
  __chkstk_darwin(v15);
  v18 = &v93 - v17;
  v19 = sub_1001BC5A8(&qword_1005241F8, &qword_1004550E0);
  v20 = __chkstk_darwin(v19);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v93 - v22;
  v24 = sub_100037908() & 1;
  if (v24 != (sub_100037908() & 1))
  {
    v25 = sub_100037908();
    return v25 & 1;
  }

  v97 = v12;
  v27 = type metadata accessor for HostedRoutingItem(0);
  v28 = *(v27 + 68);
  v29 = *(a1 + v28);
  if (v29 != *(a2 + v28))
  {
    return v29 & 1;
  }

  v30 = v27;
  v31 = sub_100258908();
  if (v31 != sub_100258908())
  {
    v25 = sub_100258908();
    return v25 & 1;
  }

  v96 = v7;
  v94 = v6;
  v32 = sub_100258554();
  v34 = v33;
  v36 = v35;
  LOBYTE(v95) = sub_100256C98(v32, v33, v35);
  LODWORD(v95) = v95;
  sub_1000196F4(v32, v34, v36);
  v37 = sub_100258554();
  v39 = v38;
  v41 = v40;
  v42 = sub_100256C98(v37, v38, v40);
  sub_1000196F4(v37, v39, v41);
  if (v95 != v42)
  {
    v43 = sub_100258554();
    v45 = v44;
    v47 = v46;
    v48 = sub_100256C98(v43, v44, v46);
    sub_1000196F4(v43, v45, v47);
    return v48;
  }

  v49 = *(v30 + 32);
  v50 = *(v19 + 48);
  sub_10001D9AC(a1 + v49, v23, &unk_100524E90, &unk_1004519B0);
  v95 = a2;
  sub_10001D9AC(a2 + v49, &v23[v50], &unk_100524E90, &unk_1004519B0);
  v51 = *(v96 + 48);
  v52 = v94;
  v53 = v51(v23, 1, v94);
  v93 = v51;
  if (v53 == 1)
  {
    if (v51(&v23[v50], 1, v52) == 1)
    {
      sub_1000038A4(v23, &unk_100524E90, &unk_1004519B0);
      v54 = v95;
LABEL_24:
      v72 = *a1;
      v73 = a1[1];
      v74 = v101;
      swift_beginAccess();
      v75 = *(v74 + 24);
      if (!v75 || (v72 != *(v74 + 16) || v75 != v73) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if ((RoutingSessionConfiguration.prefersVideoRouting.getter() & 1) == 0 || (v76 = sub_100258554(), v78 = v77, v80 = v79, v81 = sub_100256CE4(v76, v77, v79), sub_1000196F4(v76, v78, v80), v82 = sub_100258554(), v84 = v83, v86 = v85, v87 = sub_100256CE4(v82, v83, v85), sub_1000196F4(v82, v84, v86), v81 == v87))
        {
          if (a1[4] == *(v54 + 32) && a1[5] == *(v54 + 40))
          {
            return 0;
          }

          LOBYTE(v29) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        else
        {
          v88 = sub_100258554();
          v90 = v89;
          v92 = v91;
          LOBYTE(v29) = sub_100256CE4(v88, v89, v91);
          sub_1000196F4(v88, v90, v92);
        }

        return v29 & 1;
      }

      goto LABEL_38;
    }

    goto LABEL_16;
  }

  sub_10001D9AC(v23, v18, &unk_100524E90, &unk_1004519B0);
  if (v51(&v23[v50], 1, v52) == 1)
  {
    (*(v96 + 8))(v18, v52);
LABEL_16:
    sub_1000038A4(v23, &qword_1005241F8, &qword_1004550E0);
    v54 = v95;
    goto LABEL_17;
  }

  v67 = v96;
  v68 = &v23[v50];
  v69 = v99;
  (*(v96 + 32))(v99, v68, v52);
  sub_100004930(&qword_100524208, &type metadata accessor for RoutingItem.SelectionIndicator, &protocol conformance descriptor for RoutingItem.SelectionIndicator);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  v71 = *(v67 + 8);
  v71(v69, v94);
  v71(v18, v94);
  v52 = v94;
  sub_1000038A4(v23, &unk_100524E90, &unk_1004519B0);
  v54 = v95;
  if (v70)
  {
    goto LABEL_24;
  }

LABEL_17:
  v55 = *(v19 + 48);
  v56 = a1 + v49;
  v57 = v103;
  sub_10001D9AC(v56, v103, &unk_100524E90, &unk_1004519B0);
  sub_10001D9AC(v54 + v49, v57 + v55, &unk_100524E90, &unk_1004519B0);
  v58 = v93;
  v59 = v93(v57, 1, v52);
  v60 = v96;
  v61 = v97;
  v62 = v102;
  if (v59 == 1)
  {
    goto LABEL_20;
  }

  v63 = v100;
  sub_10001D9AC(v57, v100, &unk_100524E90, &unk_1004519B0);
  if ((*(v60 + 88))(v63, v52) != enum case for RoutingItem.SelectionIndicator.pullable(_:))
  {
    (*(v60 + 8))(v63, v52);
    v58 = v93;
LABEL_20:
    if (v58(v57 + v55, 1, v52) != 1)
    {
      sub_10001D9AC(v57 + v55, v62, &unk_100524E90, &unk_1004519B0);
      if ((*(v60 + 88))(v62, v52) == enum case for RoutingItem.SelectionIndicator.pullable(_:))
      {
        sub_1000038A4(v57 + v55, &unk_100524E90, &unk_1004519B0);
        v64 = v57;
        v65 = &unk_100524E90;
        v66 = &unk_1004519B0;
LABEL_41:
        sub_1000038A4(v64, v65, v66);
        return 0;
      }

      (*(v60 + 8))(v62, v52);
      v58 = v93;
    }

    if (v58(v57, 1, v52) != 1)
    {
      sub_10001D9AC(v57, v61, &unk_100524E90, &unk_1004519B0);
      if ((*(v60 + 88))(v61, v52) == enum case for RoutingItem.SelectionIndicator.selected(_:))
      {
        goto LABEL_37;
      }

      (*(v60 + 8))(v61, v52);
    }

    v65 = &qword_1005241F8;
    v66 = &qword_1004550E0;
    v64 = v57;
    goto LABEL_41;
  }

LABEL_37:
  sub_1000038A4(v57 + v55, &unk_100524E90, &unk_1004519B0);
  sub_1000038A4(v57, &unk_100524E90, &unk_1004519B0);
LABEL_38:
  LOBYTE(v29) = 1;
  return v29 & 1;
}

void sub_10031FF24(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t (*a12)(char *, char *), uint64_t a13)
{
  v470 = a8;
  v492 = a7;
  v477 = a5;
  v478 = a6;
  v466 = a4;
  v504 = a3;
  v494 = a2;
  v488 = a9;
  v15 = type metadata accessor for RoutingControls();
  v484 = *(v15 - 8);
  v485 = v15;
  __chkstk_darwin(v15);
  v487 = v430 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v482 = *(v17 - 8);
  v483 = v17;
  __chkstk_darwin(v17);
  v486 = v430 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo();
  __chkstk_darwin(v19 - 8);
  v464 = (v430 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  v452 = *(v21 - 8);
  v453 = v21;
  __chkstk_darwin(v21);
  v451 = v430 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v497 = type metadata accessor for RoutingSessionConfiguration.NowPlayingInfoProperties();
  v496 = *(v497 - 8);
  v23 = __chkstk_darwin(v497);
  v480 = v430 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v479 = v430 - v25;
  v26 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v26);
  v514 = (v430 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v500 = type metadata accessor for RoutingSessionConfiguration();
  v499 = *(v500 - 8);
  v28 = __chkstk_darwin(v500);
  v513 = v430 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v435 = v430 - v31;
  __chkstk_darwin(v30);
  v434 = v430 - v32;
  v33 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v34 = __chkstk_darwin(v33 - 8);
  v481 = v430 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v503 = v430 - v37;
  v38 = __chkstk_darwin(v36);
  v447 = v430 - v39;
  __chkstk_darwin(v38);
  v458 = v430 - v40;
  v41 = sub_1001BC5A8(&qword_100526740, &unk_100458520);
  v42 = __chkstk_darwin(v41 - 8);
  v439 = v430 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v463 = v430 - v45;
  __chkstk_darwin(v44);
  v440 = v430 - v46;
  v47 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v48 = __chkstk_darwin(v47 - 8);
  v436 = v430 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v443 = v430 - v50;
  v51 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v51 - 8);
  v461 = v430 - v52;
  v53 = type metadata accessor for HostedRoutingSession(0);
  v459 = *(v53 - 8);
  v460 = v53;
  __chkstk_darwin(v53);
  v462 = v430 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  __chkstk_darwin(v55 - 8);
  v491 = v430 - v56;
  v57 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v489 = *(v57 - 8);
  v490 = v57;
  __chkstk_darwin(v57);
  v473 = v430 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = type metadata accessor for RoutingSessionConfiguration.Context();
  v493 = *(v498 - 8);
  v59 = __chkstk_darwin(v498);
  v433 = v430 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v432 = v430 - v62;
  v63 = __chkstk_darwin(v61);
  v469 = v430 - v64;
  __chkstk_darwin(v63);
  v66 = v430 - v65;
  v67 = type metadata accessor for HostedRoutingItem(0);
  v68 = *(v67 - 8);
  v69 = __chkstk_darwin(v67);
  v472 = v430 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v471 = v430 - v72;
  v73 = __chkstk_darwin(v71);
  v505 = (v430 - v74);
  v75 = __chkstk_darwin(v73);
  v509 = v430 - v76;
  v77 = __chkstk_darwin(v75);
  v431 = v430 - v78;
  v79 = __chkstk_darwin(v77);
  v467 = v430 - v80;
  v81 = __chkstk_darwin(v79);
  v444 = v430 - v82;
  v83 = __chkstk_darwin(v81);
  v442 = v430 - v84;
  v85 = __chkstk_darwin(v83);
  v441 = v430 - v86;
  v87 = __chkstk_darwin(v85);
  v465 = (v430 - v88);
  v89 = __chkstk_darwin(v87);
  v457 = v430 - v90;
  v91 = __chkstk_darwin(v89);
  v450 = v430 - v92;
  v93 = __chkstk_darwin(v91);
  v449 = v430 - v94;
  v95 = __chkstk_darwin(v93);
  v446 = v430 - v96;
  v97 = __chkstk_darwin(v95);
  v456 = (v430 - v98);
  v99 = __chkstk_darwin(v97);
  v475 = (v430 - v100);
  v101 = __chkstk_darwin(v99);
  v455 = v430 - v102;
  v103 = __chkstk_darwin(v101);
  v448 = v430 - v104;
  v105 = __chkstk_darwin(v103);
  v445 = v430 - v106;
  v107 = __chkstk_darwin(v105);
  v454 = (v430 - v108);
  v109 = __chkstk_darwin(v107);
  v474 = (v430 - v110);
  v111 = __chkstk_darwin(v109);
  v468 = v430 - v112;
  v113 = __chkstk_darwin(v111);
  v476 = v430 - v114;
  v115 = __chkstk_darwin(v113);
  v508 = (v430 - v116);
  v117 = __chkstk_darwin(v115);
  v119 = (v430 - v118);
  __chkstk_darwin(v117);
  v121 = v430 - v120;
  v501 = v26;
  v512 = *(a1 + *(v26 + 44));
  v507 = a1;
  v122 = a1[4];
  v123 = swift_allocObject();
  *(v123 + 16) = 0;
  *(v123 + 24) = 0;
  *(v123 + 32) = -30720;
  *(v123 + 40) = SystemGroupSessionTransport.hostname.getter();
  *(v123 + 48) = v124;
  v495 = v123;
  v125 = *(v122 + 16);
  v506 = v68;
  v511 = v67;
  v502 = v13;
  if (!v125)
  {
    v510 = 0;
LABEL_14:
    v129 = v490;
    goto LABEL_15;
  }

  sub_10002ADF8(v122 + ((*(v68 + 80) + 32) & ~*(v68 + 80)), v121, type metadata accessor for HostedRoutingItem);
  v126 = *&v121[*(v67 + 64) + 16];
  v127 = (v126 >> 8) & 6 | (v126 >> 7) & 1;
  if (v127 == 1)
  {
    v132 = v121[*(v511 + 44)];
    LOBYTE(v525) = *sub_10025774C();
    LOBYTE(v515[0]) = v132;
    sub_100248690();
    v133 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    sub_10002AC54(v121, type metadata accessor for HostedRoutingItem);
    if (v133)
    {

      v495 = 0;
      v510 = 34944;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v127 == 2)
  {
    v130 = v121[*(v511 + 44)];
    LOBYTE(v525) = *sub_100257764();
    LOBYTE(v515[0]) = v130;
    sub_100248690();
    v131 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    sub_10002AC54(v121, type metadata accessor for HostedRoutingItem);
    if (v131)
    {

      v495 = 0;
      v510 = 35328;
      goto LABEL_14;
    }

LABEL_13:
    v510 = 0;
    goto LABEL_14;
  }

  if (v127 != 5)
  {
    sub_10002AC54(v121, type metadata accessor for HostedRoutingItem);
    goto LABEL_13;
  }

  v128 = sub_1000328F4();
  sub_10002AC54(v121, type metadata accessor for HostedRoutingItem);
  v129 = v490;
  if (v128)
  {

    v495 = 0;
    v510 = 34944;
  }

  else
  {
    v510 = 0;
  }

LABEL_15:
  RoutingSessionConfiguration.context.getter();
  v134 = v493;
  v135 = v498;
  v437 = *(v493 + 88);
  v438 = v493 + 88;
  v136 = v437(v66, v498);
  v137 = enum case for RoutingSessionConfiguration.Context.platterTarget(_:);
  v139 = *(v134 + 8);
  v138 = v134 + 8;
  v490 = v139;
  v140 = (v139)(v66, v135);
  if (v136 == v137)
  {
    v141 = _swiftEmptyArrayStorage;
  }

  else if (*(v507 + v501[12]))
  {
    v141 = _swiftEmptyArrayStorage;
  }

  else
  {
    __chkstk_darwin(v140);
    *&v427 = v122;
    *(&v427 + 1) = v507;
    LOBYTE(v428) = v512;
    v429 = v494;
    v142 = v466;

    v143 = v502;
    v141 = sub_10003167C(sub_10033144C, &v426, v142);
    v502 = v143;
  }

  *&v525 = v122;

  sub_100030DE8(v141, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v144 = v525;
  *(&v526 + 1) = sub_1001BC5A8(&qword_1005249A0, &unk_100458530);
  *&v527 = sub_10000462C(&unk_100524CA0, &qword_1005249A0, &unk_100458530, &protocol conformance descriptor for [A]);
  *&v525 = v144;
  v145 = sub_1000325E0(&v525);
  sub_100026A44(&v525);
  v531 = _swiftEmptyArrayStorage;
  v524 = _swiftEmptyArrayStorage;
  v146 = v491;
  sub_10001D9AC(v492, v491, &qword_100523C30, &qword_100451B00);
  if ((*(v489 + 48))(v146, 1, v129) == 1)
  {
    sub_1000038A4(v146, &qword_100523C30, &qword_100451B00);
    sub_100323D24(v145, v477, &v531, &v524, v478);

    LODWORD(v145) = 0;
    v147 = v506;
    v148 = v505;
    goto LABEL_29;
  }

  v149 = v473;
  sub_10002AF68(v146, v473, type metadata accessor for HostedRoutingSessionSnapshot);
  v150 = sub_100032A00();
  v151 = *(v470 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
  if (*(v151 + 81) != 1)
  {

    v148 = v505;
    goto LABEL_28;
  }

  v492 = v145;
  v152 = v150;
  v153 = *(v151 + 24);
  v154 = *v507;
  v155 = v507[1];

  LOBYTE(v155) = sub_1001BD5E8(v154, v155, v153);

  if ((v155 & 1) == 0)
  {

    v148 = v505;
    v145 = v492;
    goto LABEL_28;
  }

  __chkstk_darwin(v156);
  v428 = v507;
  v157 = v461;
  v158 = v502;
  sub_10031A180(sub_100248588, v152, v461);
  v502 = v158;

  v159 = (*(v459 + 48))(v157, 1, v460);
  v148 = v505;
  v145 = v492;
  if (v159 == 1)
  {
    sub_1000038A4(v157, &qword_100523620, &unk_1004511D0);
    v149 = v473;
LABEL_28:
    sub_100323D24(v145, v477, &v531, &v524, v478);

    sub_10002AC54(v149, type metadata accessor for HostedRoutingSessionSnapshot);
    LODWORD(v145) = 0;
    v147 = v506;
    goto LABEL_29;
  }

  v466 = v138;
  sub_10002AF68(v157, v462, type metadata accessor for HostedRoutingSession);
  v515[0] = &_swiftEmptySetSingleton;
  v523 = &_swiftEmptySetSingleton;
  v522 = &_swiftEmptySetSingleton;
  v227 = sub_100261164();
  v228 = *(v227 + 16);
  if (v228)
  {
    v229 = v227 + ((*(v506 + 80) + 32) & ~*(v506 + 80));
    v230 = *(v506 + 72);
    v231 = v511;
    do
    {
      sub_10002ADF8(v229, v119, type metadata accessor for HostedRoutingItem);
      v235 = *(v119 + *(v231 + 64) + 16);
      v236 = (v235 >> 8) & 6 | (v235 >> 7) & 1;
      if (v236 == 3 || v236 == 4 || v236 == 5)
      {
        v232 = *v119;
        v233 = v119[1];

        v234 = v233;
        v231 = v511;
        sub_100008318(&v525, v232, v234);
      }

      sub_10002AC54(v119, type metadata accessor for HostedRoutingItem);
      v229 += v230;
      --v228;
    }

    while (v228);

    v148 = v505;
    v145 = v492;
  }

  else
  {

    v231 = v511;
  }

  v521 = &_swiftEmptySetSingleton;
  v519 = &_swiftEmptySetSingleton;
  v517 = &_swiftEmptySetSingleton;
  v147 = v506;
  v491 = *(v145 + 16);
  if (v491)
  {
    v260 = v491;
    v261 = v492 + ((*(v506 + 80) + 32) & ~*(v506 + 80));
    v262 = *(v506 + 72);
    v263 = v508 + 2;
    do
    {
      sub_10002ADF8(v261, v508, type metadata accessor for HostedRoutingItem);
      v269 = *(v263 + *(v231 + 64));
      v270 = (v269 >> 8) & 6 | (v269 >> 7) & 1;
      if (v270 == 3 || v270 == 4 || v270 == 5)
      {
        v264 = v508;
        v265 = *v508;
        v266 = v508[1];

        v267 = v266;
        v231 = v511;
        sub_100008318(&v525, v265, v267);

        v268 = v264;
        v147 = v506;
      }

      else
      {
        v268 = v508;
      }

      sub_10002AC54(v268, type metadata accessor for HostedRoutingItem);
      v261 += v262;
      --v260;
    }

    while (v260);
  }

  v271 = sub_100261164();
  v272 = 0;
  v273 = *(v271 + 16);
  v138 = v466;
  while (1)
  {
    if (v273 == v272)
    {

      v306 = 0;
      v307 = v511;
      v277 = v492;
      while (v491 != v306)
      {
        if (v306 >= *(v277 + 16))
        {
          goto LABEL_281;
        }

        v308 = v468;
        sub_10002ADF8(v277 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v306++, v468, type metadata accessor for HostedRoutingItem);
        v309 = *(v308 + *(v307 + 36));
        sub_10002AC54(v308, type metadata accessor for HostedRoutingItem);
        if ((v309 & 1) == 0)
        {
          goto LABEL_136;
        }
      }

LABEL_111:
      v278 = v515[0];
      v279 = v521;
      if (sub_100218144(v515[0], v521))
      {
        v476 = v279;
        v280 = v523;
        v281 = v519;
        v282 = sub_100218144(v523, v519);
        v283 = v473;
        v461 = v280;
        if ((v282 & 1) == 0)
        {

          sub_100323D24(v277, v477, &v531, &v524, v478);

          v310 = v283;
          goto LABEL_139;
        }

        v284 = v522;
        v285 = v517;
        if (sub_100218144(v522, v517))
        {
          v478 = v285;
          v430[1] = v284;
          v430[2] = v281;
          v520 = &_swiftEmptySetSingleton;
          v286 = *(v462 + 16);
          v287 = *(v286 + 16);
          v468 = v278;
          if (v287)
          {
            v288 = 0;
            v289 = ((*(v147 + 80) + 32) & ~*(v147 + 80));
            v489 = v289 + v286;
            v290 = *(v147 + 72);
            v477 = v289;
            v291 = v289 + v277;
            v508 = _swiftEmptyArrayStorage;
            v292 = v467;
            v293 = v474;
            do
            {
              sub_10002ADF8(v489 + v290 * v288, v293, type metadata accessor for HostedRoutingItem);
              v295 = *(v492 + 16);
              if (v295)
              {
                v296 = v291;
                v297 = v448;
                while (1)
                {
                  sub_10002ADF8(v296, v297, type metadata accessor for HostedRoutingItem);
                  v298 = *v297 == *v474 && v297[1] == v474[1];
                  if (v298 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  sub_10002AC54(v297, type metadata accessor for HostedRoutingItem);
                  v296 += v290;
                  if (!--v295)
                  {
                    goto LABEL_117;
                  }
                }

                v299 = v445;
                sub_10002AF68(v297, v445, type metadata accessor for HostedRoutingItem);
                v300 = v299;
                v301 = v454;
                sub_10002AF68(v300, v454, type metadata accessor for HostedRoutingItem);
                v302 = *v301;
                v303 = v301[1];

                sub_100008318(&v525, v302, v303);

                sub_10002ADF8(v301, v455, type metadata accessor for HostedRoutingItem);
                swift_beginAccess();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v508 = sub_100026868(0, v508[2] + 1, 1, v508, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v305 = v508[2];
                v304 = v508[3];
                if (v305 >= v304 >> 1)
                {
                  v508 = sub_100026868((v304 > 1), v305 + 1, 1, v508, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v294 = v508;
                v508[2] = v305 + 1;
                sub_10002AF68(v455, v477 + v294 + v305 * v290, type metadata accessor for HostedRoutingItem);
                v531 = v294;
                swift_endAccess();
                sub_10002AC54(v454, type metadata accessor for HostedRoutingItem);
LABEL_117:
                v292 = v467;
                v293 = v474;
              }

              ++v288;
              sub_10002AC54(v293, type metadata accessor for HostedRoutingItem);
            }

            while (v288 != v287);
          }

          else
          {
            v508 = _swiftEmptyArrayStorage;
            v292 = v467;
          }

          v328 = *(v462 + 24);
          v329 = *(v328 + 16);
          if (v329)
          {
            v330 = 0;
            v331 = (*(v506 + 80) + 32) & ~*(v506 + 80);
            v332 = v328 + v331;
            v333 = *(v506 + 72);
            v474 = v331;
            v489 = v492 + v331;
            v477 = _swiftEmptyArrayStorage;
            v334 = v475;
            do
            {
              sub_10002ADF8(v332 + v333 * v330, v334, type metadata accessor for HostedRoutingItem);
              v335 = *(v492 + 16);
              if (v335)
              {
                v336 = v489;
                v337 = v449;
                while (1)
                {
                  sub_10002ADF8(v336, v337, type metadata accessor for HostedRoutingItem);
                  v338 = *v337 == *v475 && v337[1] == v475[1];
                  if (v338 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  sub_10002AC54(v337, type metadata accessor for HostedRoutingItem);
                  v336 += v333;
                  if (!--v335)
                  {
                    goto LABEL_154;
                  }
                }

                v339 = v446;
                sub_10002AF68(v337, v446, type metadata accessor for HostedRoutingItem);
                v340 = v339;
                v341 = v456;
                sub_10002AF68(v340, v456, type metadata accessor for HostedRoutingItem);
                v342 = *v341;
                v343 = v341[1];

                sub_100008318(&v525, v342, v343);

                sub_10002ADF8(v341, v457, type metadata accessor for HostedRoutingItem);
                swift_beginAccess();
                v344 = v477;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v344 = sub_100026868(0, v344[2] + 1, 1, v344, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v346 = v344[2];
                v345 = v344[3];
                if (v346 >= v345 >> 1)
                {
                  v344 = sub_100026868((v345 > 1), v346 + 1, 1, v344, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v344[2] = v346 + 1;
                sub_10002AF68(v457, v474 + v344 + v346 * v333, type metadata accessor for HostedRoutingItem);
                v477 = v344;
                v524 = v344;
                swift_endAccess();
                sub_10002AC54(v456, type metadata accessor for HostedRoutingItem);
LABEL_154:
                v292 = v467;
              }

              ++v330;
              v334 = v475;
              sub_10002AC54(v475, type metadata accessor for HostedRoutingItem);
            }

            while (v330 != v329);
          }

          else
          {
            v477 = _swiftEmptyArrayStorage;
          }

          v347 = v508[2];
          if (v347)
          {
            v348 = 0;
            v349 = v506;
            v350 = v508 + ((*(v506 + 80) + 32) & ~*(v506 + 80));
            do
            {
              if (v348 >= v508[2])
              {
                goto LABEL_284;
              }

              v351 = v450;
              sub_10002ADF8(&v350[*(v349 + 72) * v348], v450, type metadata accessor for HostedRoutingItem);
              if (sub_100258854() || sub_10025629C(*(v351 + *(v511 + 64)), *(v351 + *(v511 + 64) + 8), *(v351 + *(v511 + 64) + 16)))
              {
                sub_10002AC54(v351, type metadata accessor for HostedRoutingItem);
              }

              else
              {
                v352 = v350;
                v353 = v349;
                v354 = v348;
                v355 = sub_100258554();
                v357 = v356;
                v359 = v358;
                LODWORD(v489) = sub_100256C98(v355, v356, v358);
                v360 = v355;
                v348 = v354;
                v349 = v353;
                v350 = v352;
                sub_1000196F4(v360, v357, v359);
                sub_10002AC54(v351, type metadata accessor for HostedRoutingItem);
                if ((v489 & 1) == 0)
                {
                  v292 = v467;
                  goto LABEL_181;
                }
              }

              ++v348;
              v292 = v467;
            }

            while (v347 != v348);
            v348 = 0;
          }

          else
          {
            v348 = 0;
            v349 = v506;
          }

LABEL_181:
          v459 = *(v349 + 56);
          v460 = v349 + 56;
          (v459)(v443, 1, 1, v511);
          v361 = v465;
          if (v491)
          {
            v457 = v348;
            v362 = 0;
            v363 = (*(v349 + 80) + 32) & ~*(v349 + 80);
            v475 = (v492 + v363);
            v474 = _swiftEmptyArrayStorage;
            v364 = v520;
            v489 = (v520 + 56);
            v456 = v363;
            while (1)
            {
              if (v362 >= *(v492 + 16))
              {
                goto LABEL_282;
              }

              v365 = *(v506 + 72);
              sub_10002ADF8(v475 + v365 * v362, v361, type metadata accessor for HostedRoutingItem);
              if (*(v364 + 2) && (v366 = *v465, v367 = v465[1], Hasher.init(_seed:)(), String.hash(into:)(), v368 = Hasher._finalize()(), v369 = -1 << v364[32], v370 = v368 & ~v369, ((*(v489 + ((v370 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v370) & 1) != 0))
              {
                v371 = ~v369;
                while (1)
                {
                  v372 = (*(v364 + 6) + 16 * v370);
                  v373 = *v372 == v366 && v372[1] == v367;
                  if (v373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v370 = (v370 + 1) & v371;
                  if (((*(v489 + ((v370 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v370) & 1) == 0)
                  {
                    goto LABEL_196;
                  }
                }

                v361 = v465;
                sub_10002AC54(v465, type metadata accessor for HostedRoutingItem);
              }

              else
              {
LABEL_196:
                v361 = v465;
                v374 = sub_1002588CC();
                v375 = v511;
                if (!v374)
                {
                  if (sub_100032ED8())
                  {
                    sub_10002ADF8(v361, v444, type metadata accessor for HostedRoutingItem);
                    swift_beginAccess();
                    v377 = v477;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v377 = sub_100026868(0, v377[2] + 1, 1, v377, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v379 = v377[2];
                    v378 = v377[3];
                    if (v379 >= v378 >> 1)
                    {
                      v377 = sub_100026868((v378 > 1), v379 + 1, 1, v377, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v377[2] = v379 + 1;
                    sub_10002AF68(v444, v377 + v363 + v379 * v365, type metadata accessor for HostedRoutingItem);
                    v477 = v377;
                    v524 = v377;
                    goto LABEL_230;
                  }

                  v385 = sub_100258554();
                  v387 = v386;
                  v389 = v388;
                  v390 = sub_100256C98(v385, v386, v388);
                  sub_1000196F4(v385, v387, v389);
                  if (!v390)
                  {
                    sub_10002ADF8(v361, v442, type metadata accessor for HostedRoutingItem);
                    swift_beginAccess();
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v508 = sub_100026868(0, v508[2] + 1, 1, v508, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v363 = v456;
                    v399 = v508[2];
                    v398 = v508[3];
                    if (v399 >= v398 >> 1)
                    {
                      v508 = sub_100026868((v398 > 1), v399 + 1, 1, v508, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v400 = v508;
                    v508[2] = v399 + 1;
                    sub_10002AF68(v442, v400 + v363 + v399 * v365, type metadata accessor for HostedRoutingItem);
                    v531 = v400;
                    goto LABEL_230;
                  }

                  swift_beginAccess();
                  v391 = v508;
                  v392 = v508[2];
                  if (v392 < v457)
                  {
                    goto LABEL_286;
                  }

                  sub_10002ADF8(v361, v440, type metadata accessor for HostedRoutingItem);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v363 = v456;
                  if (!isUniquelyReferenced_nonNull_native || v392 >= v391[3] >> 1)
                  {
                    v391 = sub_100026868(isUniquelyReferenced_nonNull_native, v392 + 1, 1, v391, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                  }

                  v394 = v457;
                  v395 = v391 + v363 + v365 * v457;
                  swift_arrayDestroy();
                  v508 = v391;
                  v396 = v391[2];
                  if (v365 < 0 || v365 >= ((v396 - v394) * v365))
                  {
                    swift_arrayInitWithTakeFrontToBack();
                    ++v508[2];
                    v397 = v440;
                    if (v365 > 0)
                    {
LABEL_227:
                      sub_10002ADF8(v397, v395, type metadata accessor for HostedRoutingItem);
                    }
                  }

                  else
                  {
                    if (v365)
                    {
                      swift_arrayInitWithTakeBackToFront();
                      ++v508[2];
                      v397 = v440;
                      goto LABEL_227;
                    }

                    v508[2] = v396 + 1;
                    v397 = v440;
                  }

                  sub_1000038A4(v397, &qword_100526740, &unk_100458520);
                  v531 = v508;
LABEL_230:
                  swift_endAccess();
                  v361 = v465;
                  goto LABEL_231;
                }

                if ((sub_100037908() & 1) == 0)
                {
                  if (sub_100258908())
                  {
                    sub_10002ADF8(v361, v441, type metadata accessor for HostedRoutingItem);
                    v380 = v474;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v380 = sub_100026868(0, v380[2] + 1, 1, v380, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v382 = v380[2];
                    v381 = v380[3];
                    if (v382 >= v381 >> 1)
                    {
                      v474 = sub_100026868((v381 > 1), v382 + 1, 1, v380, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    else
                    {
                      v474 = v380;
                    }

                    v383 = v465;
                    sub_10002AC54(v465, type metadata accessor for HostedRoutingItem);
                    v384 = v474;
                    v474[2] = v382 + 1;
                    v361 = v383;
                    sub_10002AF68(v441, v384 + v363 + v382 * v365, type metadata accessor for HostedRoutingItem);
                    goto LABEL_232;
                  }

LABEL_231:
                  sub_10002AC54(v361, type metadata accessor for HostedRoutingItem);
LABEL_232:
                  v292 = v467;
                  goto LABEL_185;
                }

                v376 = v443;
                sub_1000038A4(v443, &qword_100523C18, &qword_100451AF0);
                sub_10002AF68(v361, v376, type metadata accessor for HostedRoutingItem);
                (v459)(v376, 0, 1, v375);
              }

              v292 = v467;
LABEL_185:
              if (++v362 == v491)
              {
                goto LABEL_235;
              }
            }
          }

          v474 = _swiftEmptyArrayStorage;
LABEL_235:

          v401 = v508[2];
          if (v401)
          {
            v402 = 0;
            v147 = v506;
            v492 = v508 + ((*(v506 + 80) + 32) & ~*(v506 + 80));
            v138 = v466;
            do
            {
              if (v402 >= v508[2])
              {
                goto LABEL_285;
              }

              sub_10002ADF8(v492 + *(v147 + 72) * v402, v292, type metadata accessor for HostedRoutingItem);
              if (sub_100258854())
              {
                sub_10002AC54(v292, type metadata accessor for HostedRoutingItem);
              }

              else
              {
                v403 = sub_10025629C(*(v292 + *(v511 + 64)), *(v292 + *(v511 + 64) + 8), *(v292 + *(v511 + 64) + 16));
                sub_10002AC54(v292, type metadata accessor for HostedRoutingItem);
                if (!v403)
                {
                  goto LABEL_245;
                }
              }

              ++v402;
              v292 = v467;
            }

            while (v401 != v402);
            v402 = 0;
          }

          else
          {
            v402 = 0;
            v147 = v506;
            v138 = v466;
          }

LABEL_245:

          v404 = v474[2];
          if (!v404)
          {

LABEL_262:
            v414 = v443;
            v415 = v436;
            sub_10001D9AC(v443, v436, &qword_100523C18, &qword_100451AF0);
            v416 = (*(v147 + 48))(v415, 1, v511);
            v148 = v505;
            if (v416 == 1)
            {
              sub_1000038A4(v414, &qword_100523C18, &qword_100451AF0);
              sub_10002AC54(v473, type metadata accessor for HostedRoutingSessionSnapshot);
              sub_10002AC54(v462, type metadata accessor for HostedRoutingSession);
              sub_1000038A4(v415, &qword_100523C18, &qword_100451AF0);
            }

            else
            {
              v417 = v431;
              sub_10002AF68(v415, v431, type metadata accessor for HostedRoutingItem);
              swift_beginAccess();
              v418 = v439;
              sub_10002ADF8(v417, v439, type metadata accessor for HostedRoutingItem);
              sub_10032E0AC(0, 0, v418);
              swift_endAccess();
              sub_10002AC54(v417, type metadata accessor for HostedRoutingItem);
              sub_1000038A4(v414, &qword_100523C18, &qword_100451AF0);
              sub_10002AC54(v473, type metadata accessor for HostedRoutingSessionSnapshot);
              sub_10002AC54(v462, type metadata accessor for HostedRoutingSession);
            }

            LODWORD(v145) = 1;
LABEL_29:
            v511 = a11;
            v160 = sub_1000328F4();
            LODWORD(v492) = v145;
            if (v160)
            {
              goto LABEL_30;
            }

            v185 = v469;
            RoutingSessionConfiguration.context.getter();
            v186 = sub_1000334F0();
            v490(v185, v498);
            if (v186 & 1) == 0 || (v512 & 1) != 0 || (sub_1000325DC())
            {
              goto LABEL_30;
            }

            v466 = v138;
            v187 = v501[7];
            v188 = v507;
            v189 = v458;
            sub_10001D9AC(v507 + v187, v458, &qword_100523640, qword_100451520);
            v190 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
            v191 = *(*(v190 - 8) + 48);
            if (v191(v189, 1, v190) == 1)
            {
              sub_1000038A4(v189, &qword_100523640, qword_100451520);
              LOBYTE(v145) = v492;
              goto LABEL_30;
            }

            v237 = *(v189 + 56);
            v238 = *(v189 + 60);
            v494 = *(v189 + 48);
            LODWORD(v508) = v237;
            LODWORD(v491) = v238;
            sub_100248888(v494, v237, v238);
            sub_10002AC54(v189, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            v239 = v188 + v187;
            v240 = v447;
            sub_10001D9AC(v239, v447, &qword_100523640, qword_100451520);
            if (v191(v240, 1, v190) == 1)
            {
              sub_1000038A4(v240, &qword_100523640, qword_100451520);
              v241 = v494;
              v242 = v508;
              v243 = v491;
LABEL_275:
              sub_1002488FC(v241, v242, v243);
              LOBYTE(v145) = v492;
              goto LABEL_30;
            }

            v244 = v491;
            v245 = *(v240 + 8);

            sub_10002AC54(v240, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            if (!v245)
            {
              v241 = v494;
              v242 = v508;
              v243 = v244;
              goto LABEL_275;
            }

            v246 = v508;
            if (v244 != 1)
            {
              LOBYTE(v145) = v492;
              if (v244)
              {
                v323 = v494;
                v324 = v508;
                v325 = v244;
LABEL_271:
                sub_1002488FC(v323, v324, v325);
                goto LABEL_30;
              }

              v247 = [objc_opt_self() server];
              v248 = [v247 nowPlayingServer];

              v249 = [v248 localOriginClient];
              v250 = [v249 deviceInfo];
              v251 = [v250 systemMediaApplication];

              if (!v251)
              {
                sub_1002488FC(v494, v246, 0);

                goto LABEL_30;
              }

              v491 = v249;
              v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v254 = v253;

              v255 = v499;
              v256 = v434;
              v257 = v500;
              (*(v499 + 16))(v434, v470 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v500);
              v258 = v432;
              RoutingSessionConfiguration.context.getter();
              (*(v255 + 8))(v256, v257);
              v259 = v498;
              if (v437(v258, v498) == enum case for RoutingSessionConfiguration.Context.app(_:))
              {
                (*(v493 + 96))(v258, v259);
                if (*v258 != v252 || *(v258 + 1) != v254)
                {
                  v424 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  LOBYTE(v145) = v492;
                  v419 = v494;
                  if ((v424 & 1) == 0)
                  {
                    sub_1002488FC(v494, v508, 0);

LABEL_30:
                    if ((v145 & 1) == 0)
                    {
                      swift_beginAccess();
                      v161 = v531[2];
                      if (v161)
                      {
                        v162 = v531 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
                        swift_beginAccess();
                        swift_beginAccess();
                        v494 = 0;
                        v493 = 0;
                        v508 = *(v147 + 72);
                        LODWORD(v498) = 255;
                        do
                        {
                          sub_10002ADF8(v162, v148, type metadata accessor for HostedRoutingItem);
                          v164 = *v148;
                          v163 = v148[1];

                          sub_10002AC54(v148, type metadata accessor for HostedRoutingItem);
                          if (*(a10 + 16) && (v165 = sub_10000698C(v164, v163), (v166 & 1) != 0))
                          {
                            v167 = *(*(a10 + 56) + 8 * v165);
                            if (*(v167 + 32) == 2)
                            {
                              v169 = *(v167 + 16);
                              v168 = *(v167 + 24);
                              if (v498 == 255)
                              {
                                v172 = v511;
                                *(v511 + 16) = v164;
                                *(v172 + 24) = v163;

                                LODWORD(v498) = 2;
                                v494 = v169;
                                v493 = v168;
                              }

                              else
                              {
                                *&v525 = *(v167 + 16);
                                *(&v525 + 1) = v168;
                                LOBYTE(v526) = 2;
                                v515[0] = v494;
                                v515[1] = v493;
                                v516 = v498;
                                sub_100331484();

                                if (dispatch thunk of static Comparable.< infix(_:_:)())
                                {
                                  v170 = v511;
                                  *(v511 + 16) = v164;
                                  *(v170 + 24) = v163;

                                  v171 = *(v167 + 24);
                                  v494 = *(v167 + 16);
                                  v493 = v171;
                                  LODWORD(v498) = *(v167 + 32);
                                }

                                else
                                {
                                }
                              }

                              v147 = v506;
                            }

                            else
                            {
                            }

                            v148 = v505;
                          }

                          else
                          {
                          }

                          v162 += v508;
                          --v161;
                        }

                        while (v161);
                      }
                    }

                    sub_10002ADF8(v507, v514, type metadata accessor for HostedRoutingSourceSession);
                    (*(v499 + 16))(v513, v504, v500);
                    swift_beginAccess();
                    v173 = v531;
                    v174 = v531[2];
                    v175 = _swiftEmptyArrayStorage;
                    v508 = v531;
                    if (v174)
                    {
                      *&v525 = _swiftEmptyArrayStorage;
                      sub_10002A42C(0, v174, 0);
                      v175 = v525;
                      v176 = (*(v147 + 80) + 32) & ~*(v147 + 80);
                      v177 = v173 + v176;
                      v178 = *(v147 + 72);
                      v179 = v471;
                      do
                      {
                        v180 = v509;
                        sub_10002ADF8(v177, v509, type metadata accessor for HostedRoutingItem);
                        sub_100324E64(v180, v514, v512, v510, v513, v511, v179);
                        sub_10002AC54(v180, type metadata accessor for HostedRoutingItem);
                        *&v525 = v175;
                        v182 = *(v175 + 2);
                        v181 = *(v175 + 3);
                        if (v182 >= v181 >> 1)
                        {
                          sub_10002A42C((v181 > 1), v182 + 1, 1);
                          v175 = v525;
                        }

                        *(v175 + 2) = v182 + 1;
                        sub_10002AF68(v179, &v175[v176 + v182 * v178], type metadata accessor for HostedRoutingItem);
                        v177 += v178;
                        --v174;
                      }

                      while (v174);
                      v183 = v497;
                      v184 = v496;
                      v147 = v506;
                    }

                    else
                    {
                      v183 = v497;
                      v184 = v496;
                    }

                    v520 = v175;
                    swift_beginAccess();
                    v192 = v524;
                    v193 = v524[2];
                    v194 = _swiftEmptyArrayStorage;
                    v505 = v524;
                    if (v193)
                    {
                      *&v525 = _swiftEmptyArrayStorage;
                      sub_10002A42C(0, v193, 0);
                      v194 = v525;
                      v195 = (*(v147 + 80) + 32) & ~*(v147 + 80);
                      v196 = v192 + v195;
                      v197 = *(v147 + 72);
                      v198 = v472;
                      do
                      {
                        v199 = v509;
                        sub_10002ADF8(v196, v509, type metadata accessor for HostedRoutingItem);
                        sub_100324E64(v199, v514, v512, v510, v513, v511, v198);
                        sub_10002AC54(v199, type metadata accessor for HostedRoutingItem);
                        *&v525 = v194;
                        v201 = v194[2];
                        v200 = v194[3];
                        if (v201 >= v200 >> 1)
                        {
                          sub_10002A42C((v200 > 1), v201 + 1, 1);
                          v194 = v525;
                        }

                        v194[2] = v201 + 1;
                        sub_10002AF68(v198, v194 + v195 + v201 * v197, type metadata accessor for HostedRoutingItem);
                        v196 += v197;
                        --v193;
                      }

                      while (v193);
                      v183 = v497;
                      v184 = v496;
                    }

                    v518 = v194;
                    if ((v492 & 1) == 0)
                    {
                      v202 = v502;
                      sub_10003293C(a12, a13);
                      sub_10003293C(a12, a13);
                      v502 = v202;
                    }

                    v203 = v503;
                    v204 = v479;
                    v205 = v480;

                    sub_10001D9AC(v507 + v501[7], v203, &qword_100523640, qword_100451520);
                    RoutingSessionConfiguration.nowPlayingInfoProperties.getter();
                    static RoutingSessionConfiguration.NowPlayingInfoProperties.trackInfo.getter();
                    sub_100004930(&qword_100526748, &type metadata accessor for RoutingSessionConfiguration.NowPlayingInfoProperties, &protocol conformance descriptor for RoutingSessionConfiguration.NowPlayingInfoProperties);
                    LOBYTE(v203) = dispatch thunk of SetAlgebra.isSuperset(of:)();
                    v206 = *(v184 + 8);
                    v206(v205, v183);
                    v206(v204, v183);
                    if (v203 & 1) != 0 || (RoutingSessionConfiguration.nowPlayingInfoProperties.getter(), static RoutingSessionConfiguration.NowPlayingInfoProperties.extendedTrackInfo.getter(), v207 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v206(v205, v183), v206(v204, v183), (v207))
                    {
                      RoutingSessionConfiguration.nowPlayingInfoProperties.getter();
                      static RoutingSessionConfiguration.NowPlayingInfoProperties.extendedTrackInfo.getter();
                      v208 = dispatch thunk of SetAlgebra.isSuperset(of:)();
                      v206(v205, v183);
                      v206(v204, v183);
                      v209 = v503;
                      if ((v208 & 1) == 0)
                      {
                        v210 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
                        if (!(*(*(v210 - 8) + 48))(v209, 1, v210))
                        {
                          RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.init(storeIdentifier:subscriptionIdentifier:isrc:)();
                          RoutingSession.NowPlayingInfo.TrackInfo.extendedInfo.setter();
                        }
                      }
                    }

                    else
                    {
                      v211 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
                      v209 = v503;
                      if (!(*(*(v211 - 8) + 48))(v503, 1, v211))
                      {
                        v212 = v464;
                        default argument 6 of RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
                        v428 = v212;
                        v426 = 0u;
                        v427 = 0u;
                        v213 = v451;
                        RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
                        (*(v452 + 40))(v209 + *(v211 + 40), v213, v453);
                      }
                    }

                    v214 = v507;
                    v215 = v507[1];
                    v511 = *v507;
                    v509 = v520;
                    v508 = v518;
                    v216 = v481;
                    sub_10001D9AC(v209, v481, &qword_100523640, qword_100451520);
                    v217 = v501;
                    v218 = v486;
                    (*(v482 + 16))(v486, v214 + v501[18], v483);
                    LODWORD(v506) = *(v214 + v217[12]);
                    v219 = v217[17];
                    LODWORD(v505) = *(v214 + v217[16]);
                    LODWORD(v504) = *(v214 + v219);
                    v220 = (v214 + v217[10]);
                    v221 = *v220;
                    v222 = *(v220 + 4);
                    v223 = v487;
                    (*(v484 + 16))(v487, v214 + v217[8], v485);
                    v224 = v214 + v217[15];
                    v225 = *(v224 + 4);
                    v528 = *(v224 + 3);
                    v529 = v225;
                    v530 = *(v224 + 10);
                    v226 = *(v224 + 2);
                    v526 = *(v224 + 1);
                    v527 = v226;
                    v525 = *v224;

                    sub_10001D9AC(&v525, v515, &qword_100523B20, &unk_1004519F0);
                    LOBYTE(v515[0]) = v222;
                    sub_1002616D0(v511, v215, v509, v508, v216, v218, v512, v506, v488, v505, v504, v221 | (v222 << 32), v223, &v525);
                    sub_100019550(v495, 0, v510);
                    sub_10002AC54(v514, type metadata accessor for HostedRoutingSourceSession);
                    (*(v499 + 8))(v513, v500);
                    sub_1000038A4(v503, &qword_100523640, qword_100451520);
                    return;
                  }

                  goto LABEL_268;
                }
              }

              else
              {

                v490(v258, v259);
              }

              LOBYTE(v145) = v492;
              v419 = v494;
LABEL_268:
              if ((*(v507 + v501[17]) & 1) == 0)
              {
                v420 = v509;
                sub_100257FDC(*v507, v507[1], v509);
                swift_beginAccess();
                v421 = v439;
                sub_10002AF68(v420, v439, type metadata accessor for HostedRoutingItem);
                sub_10032E0AC(0, 0, v421);
                swift_endAccess();
              }

              v323 = v419;
              v324 = v508;
              v325 = 0;
              goto LABEL_271;
            }

            v311 = [objc_opt_self() server];
            v312 = [v311 nowPlayingServer];

            v145 = [v312 localOriginClient];
            v313 = [v145 deviceInfo];
            v314 = [v313 systemPodcastApplication];

            if (v314)
            {
              v491 = v145;
              v315 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v317 = v316;

              v318 = v499;
              v319 = v435;
              v320 = v500;
              (*(v499 + 16))(v435, v470 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v500);
              v321 = v433;
              RoutingSessionConfiguration.context.getter();
              (*(v318 + 8))(v319, v320);
              v322 = v498;
              if (v437(v321, v498) != enum case for RoutingSessionConfiguration.Context.app(_:))
              {

                v490(v321, v322);
                goto LABEL_273;
              }

              (*(v493 + 96))(v321, v322);
              if (*v321 == v315 && *(v321 + 1) == v317)
              {

LABEL_273:
                v145 = v491;
LABEL_274:
                v422 = v509;
                sub_100257FDC(*v507, v507[1], v509);
                swift_beginAccess();
                v423 = v439;
                sub_10002AF68(v422, v439, type metadata accessor for HostedRoutingItem);
                sub_10032E0AC(0, 0, v423);
                swift_endAccess();

                v241 = v494;
                v242 = v508;
                v243 = 1;
                goto LABEL_275;
              }

              v425 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v145 = v491;
              if (v425)
              {
                goto LABEL_274;
              }

              v326 = v494;
              v327 = v508;
            }

            else
            {
              v326 = v494;
              v327 = v246;
            }

            sub_1002488FC(v326, v327, 1u);

            LOBYTE(v145) = v492;
            goto LABEL_30;
          }

          v405 = (*(v147 + 80) + 32) & ~*(v147 + 80);
          v406 = v474 + v405;
          swift_beginAccess();
          v407 = *(v147 + 72);
          while (1)
          {
            v409 = v508;
            v410 = v508[2];
            if (v410 < v402)
            {
              goto LABEL_283;
            }

            sub_10002ADF8(v406, v463, type metadata accessor for HostedRoutingItem);
            v411 = swift_isUniquelyReferenced_nonNull_native();
            if (!v411 || v410 >= v409[3] >> 1)
            {
              v409 = sub_100026868(v411, v410 + 1, 1, v409, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
            }

            v412 = v409 + v405 + v407 * v402;
            swift_arrayDestroy();
            v413 = v409[2];
            v508 = v409;
            if (v407 < 0 || v407 >= ((v413 - v402) * v407))
            {
              swift_arrayInitWithTakeFrontToBack();
              ++v409[2];
              v408 = v463;
              if (v407 <= 0)
              {
                goto LABEL_249;
              }
            }

            else
            {
              if (!v407)
              {
                v409[2] = v413 + 1;
                v408 = v463;
                goto LABEL_249;
              }

              swift_arrayInitWithTakeBackToFront();
              ++v409[2];
              v408 = v463;
            }

            sub_10002ADF8(v408, v412, type metadata accessor for HostedRoutingItem);
LABEL_249:
            sub_1000038A4(v408, &qword_100526740, &unk_100458520);
            v406 += v407;
            if (!--v404)
            {
              v531 = v508;
              swift_endAccess();

              v147 = v506;
              v138 = v466;
              goto LABEL_262;
            }
          }
        }
      }

LABEL_136:

      sub_100323D24(v277, v477, &v531, &v524, v478);

      v310 = v473;
LABEL_139:
      sub_10002AC54(v310, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_10002AC54(v462, type metadata accessor for HostedRoutingSession);
      LODWORD(v145) = 0;
      goto LABEL_29;
    }

    v274 = v511;
    if (v272 >= *(v271 + 16))
    {
      break;
    }

    v275 = v476;
    sub_10002ADF8(v271 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v272++, v476, type metadata accessor for HostedRoutingItem);
    v276 = *(v275 + *(v274 + 36));
    sub_10002AC54(v275, type metadata accessor for HostedRoutingItem);
    if ((v276 & 1) == 0)
    {

      v277 = v492;
      goto LABEL_111;
    }
  }

  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
}

uint64_t sub_100323AAC(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21[1] = a5;
  v23 = a4;
  v22 = type metadata accessor for HostedRoutingItem(0);
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = 0;
  v12 = *(a2 + 16);
  do
  {
    v13 = v11;
    v14 = v12 == v11;
    if (v12 == v11)
    {
      break;
    }

    sub_10002ADF8(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v10, type metadata accessor for HostedRoutingItem);
    if (*v10 == *a1 && v10[1] == a1[1])
    {
      sub_10002AC54(v10, type metadata accessor for HostedRoutingItem);
      break;
    }

    ++v11;
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10002AC54(v10, type metadata accessor for HostedRoutingItem);
  }

  while ((v16 & 1) == 0);
  if (sub_1000325DC())
  {
    v17 = (v12 == v13) & (v23 ^ 1);
    if (v12 == v13 && (v23 & 1) != 0)
    {
      v17 = !sub_100032ED8();
    }

    return v17 & 1;
  }

  if (sub_100032ED8())
  {
    v18 = *(a1 + *(v22 + 44));
    v25 = *sub_10025774C();
    v24 = v18;
    sub_100248690();
    v14 = (v12 == v13) & dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  if (v23)
  {
LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (!sub_1000328F4())
  {
    if (v14)
    {
      v17 = sub_100032ED8();
      return v17 & 1;
    }

    goto LABEL_17;
  }

  v20 = *(a3 + *(type metadata accessor for HostedRoutingSourceSession(0) + 52));
  v17 = v20 & v14;
  if ((v20 & 1) == 0 && ((v14 ^ 1) & 1) == 0)
  {
    if (sub_100032ED8())
    {
      v17 = 1;
    }

    else
    {
      v17 = *(a1 + *(v22 + 68));
    }
  }

  return v17 & 1;
}

void sub_100323D24(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v141 = a5;
  v145 = a4;
  v149 = a2;
  v7 = type metadata accessor for HostedRoutingItem(0);
  v8 = *(v7 - 8);
  v158 = v7;
  v159 = v8;
  v9 = __chkstk_darwin(v7);
  v146 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v155 = &v139 - v12;
  v13 = __chkstk_darwin(v11);
  v140 = &v139 - v14;
  v15 = __chkstk_darwin(v13);
  v150 = &v139 - v16;
  v17 = __chkstk_darwin(v15);
  v148 = (&v139 - v18);
  v19 = __chkstk_darwin(v17);
  v147 = &v139 - v20;
  v21 = __chkstk_darwin(v19);
  v156 = &v139 - v22;
  v23 = __chkstk_darwin(v21);
  v152 = &v139 - v24;
  v25 = __chkstk_darwin(v23);
  v160 = &v139 - v26;
  v27 = __chkstk_darwin(v25);
  v143 = &v139 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v139 - v30;
  __chkstk_darwin(v29);
  v33 = (&v139 - v32);
  v142 = a1;
  v34 = *(a1 + 16);
  v151 = a3;
  v157 = v34;
  if (v34)
  {
    v35 = v159;
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v153 = v142 + v36;
    v154 = v36;
    swift_beginAccess();
    v37 = 0;
    v38 = *(v35 + 72);
    v144 = v31;
    do
    {
      v39 = v38;
      sub_10002ADF8(v153 + v38 * v37, v33, type metadata accessor for HostedRoutingItem);
      if (sub_100032ED8() && (*(v33 + *(v158 + 36)) & 1) == 0)
      {
        v40 = *(v149 + 16);
        if (*(v40 + 16))
        {
          v42 = *v33;
          v41 = v33[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v43 = Hasher._finalize()();
          v44 = -1 << *(v40 + 32);
          v45 = v43 & ~v44;
          if ((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            while (1)
            {
              v47 = (*(v40 + 48) + 16 * v45);
              v48 = *v47 == v42 && v47[1] == v41;
              if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v45 = (v45 + 1) & v46;
              if (((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            sub_10002ADF8(v33, v143, type metadata accessor for HostedRoutingItem);
            v55 = v145;
            swift_beginAccess();
            v56 = *v55;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v55 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = sub_100026868(0, v56[2] + 1, 1, v56, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
              *v145 = v56;
            }

            a3 = v151;
            v31 = v144;
            v38 = v39;
            v59 = v56[2];
            v58 = v56[3];
            if (v59 >= v58 >> 1)
            {
              v56 = sub_100026868((v58 > 1), v59 + 1, 1, v56, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
              *v145 = v56;
            }

            v56[2] = v59 + 1;
            v53 = v56 + v154 + v59 * v39;
            v54 = v143;
            goto LABEL_20;
          }

LABEL_14:

          a3 = v151;
          v31 = v144;
        }
      }

      sub_10002ADF8(v33, v31, type metadata accessor for HostedRoutingItem);
      swift_beginAccess();
      v49 = *a3;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v49;
      if ((v50 & 1) == 0)
      {
        v49 = sub_100026868(0, v49[2] + 1, 1, v49, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        *a3 = v49;
      }

      v52 = v49[2];
      v51 = v49[3];
      v38 = v39;
      if (v52 >= v51 >> 1)
      {
        v49 = sub_100026868((v51 > 1), v52 + 1, 1, v49, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        *a3 = v49;
      }

      v49[2] = v52 + 1;
      v53 = v49 + v154 + v52 * v39;
      v54 = v31;
LABEL_20:
      sub_10002AF68(v54, v53, type metadata accessor for HostedRoutingItem);
      swift_endAccess();
      ++v37;
      sub_10002AC54(v33, type metadata accessor for HostedRoutingItem);
    }

    while (v37 != v157);
  }

  swift_beginAccess();
  v60 = *a3;
  v61 = *(v60 + 16);

  v62 = _swiftEmptyArrayStorage;
  if (v61)
  {
    v63 = 0;
    v64 = v160;
    while (v63 < *(v60 + 16))
    {
      v65 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v66 = *(v159 + 72);
      sub_10002ADF8(v60 + v65 + v66 * v63, v64, type metadata accessor for HostedRoutingItem);
      v67 = sub_100032ED8();
      v64 = v160;
      if (!v67 || (*(v160 + *(v158 + 68)) & 1) != 0)
      {
        sub_10002AC54(v160, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        sub_10002AF68(v160, v152, type metadata accessor for HostedRoutingItem);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v161 = v62;
        if ((v68 & 1) == 0)
        {
          sub_10002A42C(0, v62[2] + 1, 1);
          v64 = v160;
          v62 = v161;
        }

        v70 = v62[2];
        v69 = v62[3];
        if (v70 >= v69 >> 1)
        {
          sub_10002A42C((v69 > 1), v70 + 1, 1);
          v64 = v160;
          v62 = v161;
        }

        v62[2] = v70 + 1;
        sub_10002AF68(v152, v62 + v65 + v70 * v66, type metadata accessor for HostedRoutingItem);
      }

      if (v61 == ++v63)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

LABEL_39:

  v71 = v62[2];

  v72 = v145;
  swift_beginAccess();
  v73 = *(*v72 + 16);
  v74 = __OFADD__(v71, v73);
  v75 = v71 + v73;
  if (v74)
  {
LABEL_113:
    __break(1u);
    return;
  }

  if (v75 <= 3)
  {
    swift_beginAccess();

    sub_100030DE8(v88, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
    swift_endAccess();
LABEL_108:
    v138 = v145;
    swift_beginAccess();
    *v138 = _swiftEmptyArrayStorage;

    return;
  }

  v76 = v151;
  swift_beginAccess();
  v77 = *v76;
  v78 = *(*v76 + 16);

  v79 = _swiftEmptyArrayStorage;
  if (v78)
  {
    v80 = 0;
    v81 = v156;
    while (v80 < *(v77 + 16))
    {
      v82 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v83 = *(v159 + 72);
      sub_10002ADF8(v77 + v82 + v83 * v80, v81, type metadata accessor for HostedRoutingItem);
      v84 = sub_100032ED8();
      v81 = v156;
      if (!v84 || (*(v156 + *(v158 + 68)) & 1) != 0)
      {
        sub_10002AC54(v156, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        sub_10002AF68(v156, v147, type metadata accessor for HostedRoutingItem);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v161 = v79;
        if ((v85 & 1) == 0)
        {
          sub_10002A42C(0, v79[2] + 1, 1);
          v81 = v156;
          v79 = v161;
        }

        v87 = v79[2];
        v86 = v79[3];
        if (v87 >= v86 >> 1)
        {
          sub_10002A42C((v86 > 1), v87 + 1, 1);
          v81 = v156;
          v79 = v161;
        }

        v79[2] = v87 + 1;
        sub_10002AF68(v147, v79 + v82 + v87 * v83, type metadata accessor for HostedRoutingItem);
      }

      if (v78 == ++v80)
      {
        goto LABEL_54;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

LABEL_54:

  v89 = v79[2];

  v90 = v151;
  v91 = v148;
  if (!v89)
  {
    swift_beginAccess();
    *v90 = _swiftEmptyArrayStorage;

    v103 = v145;
    swift_beginAccess();
    *v103 = _swiftEmptyArrayStorage;

    if (v157)
    {
      v104 = v159;
      v105 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v106 = v142 + v105;
      swift_beginAccess();
      swift_beginAccess();
      v107 = 0;
      v108 = *(v104 + 72);
      v160 = v106;
      do
      {
        sub_10002ADF8(v106 + v108 * v107, v91, type metadata accessor for HostedRoutingItem);
        if (sub_100032ED8() && (*(v91 + *(v158 + 36)) & 1) == 0)
        {
          v109 = *(v149 + 16);
          if (*(v109 + 16))
          {
            v111 = *v91;
            v110 = v91[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v112 = Hasher._finalize()();
            v113 = -1 << *(v109 + 32);
            v114 = v112 & ~v113;
            if ((*(v109 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
            {
              v115 = ~v113;
              while (1)
              {
                v116 = (*(v109 + 48) + 16 * v114);
                v117 = *v116 == v111 && v116[1] == v110;
                if (v117 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v114 = (v114 + 1) & v115;
                if (((*(v109 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) == 0)
                {
LABEL_90:
                  v91 = v148;
                  v106 = v160;
                  goto LABEL_92;
                }
              }

              v118 = *(v141 + 16);
              v91 = v148;
              v106 = v160;
              if (!*(v118 + 16))
              {
                goto LABEL_93;
              }

              Hasher.init(_seed:)();

              String.hash(into:)();
              v119 = Hasher._finalize()();
              v120 = -1 << *(v118 + 32);
              v121 = v119 & ~v120;
              if ((*(v118 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121))
              {
                v122 = ~v120;
                while (1)
                {
                  v123 = (*(v118 + 48) + 16 * v121);
                  v124 = *v123 == v111 && v123[1] == v110;
                  if (v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v121 = (v121 + 1) & v122;
                  if (((*(v118 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
                  {
                    goto LABEL_90;
                  }
                }

                sub_10002ADF8(v148, v140, type metadata accessor for HostedRoutingItem);
                v131 = v145;
                swift_beginAccess();
                v132 = *v131;
                v133 = swift_isUniquelyReferenced_nonNull_native();
                *v131 = v132;
                if ((v133 & 1) == 0)
                {
                  v132 = sub_100026868(0, v132[2] + 1, 1, v132, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                  *v145 = v132;
                }

                v90 = v151;
                v106 = v160;
                v135 = v132[2];
                v134 = v132[3];
                if (v135 >= v134 >> 1)
                {
                  v132 = sub_100026868((v134 > 1), v135 + 1, 1, v132, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                  *v145 = v132;
                }

                v132[2] = v135 + 1;
                v129 = v132 + v105 + v135 * v108;
                v130 = v140;
                goto LABEL_98;
              }
            }

            v91 = v148;
LABEL_92:
          }
        }

LABEL_93:
        sub_10002ADF8(v91, v150, type metadata accessor for HostedRoutingItem);
        v90 = v151;
        swift_beginAccess();
        v125 = *v90;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        *v90 = v125;
        if ((v126 & 1) == 0)
        {
          v125 = sub_100026868(0, v125[2] + 1, 1, v125, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
          *v90 = v125;
        }

        v128 = v125[2];
        v127 = v125[3];
        if (v128 >= v127 >> 1)
        {
          v125 = sub_100026868((v127 > 1), v128 + 1, 1, v125, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
          *v90 = v125;
        }

        v125[2] = v128 + 1;
        v129 = v125 + v105 + v128 * v108;
        v130 = v150;
LABEL_98:
        sub_10002AF68(v130, v129, type metadata accessor for HostedRoutingItem);
        swift_endAccess();
        ++v107;
        v91 = v148;
        sub_10002AC54(v148, type metadata accessor for HostedRoutingItem);
      }

      while (v107 != v157);
    }
  }

  swift_beginAccess();
  v92 = *v90;
  v93 = *(*v90 + 16);

  if (v93)
  {
    v94 = 0;
    v95 = _swiftEmptyArrayStorage;
    v96 = v155;
    while (v94 < v92[2])
    {
      v97 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v98 = *(v159 + 72);
      sub_10002ADF8(v92 + v97 + v98 * v94, v96, type metadata accessor for HostedRoutingItem);
      v99 = sub_100032ED8();
      v96 = v155;
      if (!v99 || (*(v155 + *(v158 + 68)) & 1) != 0)
      {
        sub_10002AC54(v155, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        sub_10002AF68(v155, v146, type metadata accessor for HostedRoutingItem);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v162 = v95;
        if ((v100 & 1) == 0)
        {
          sub_10002A42C(0, v95[2] + 1, 1);
          v96 = v155;
          v95 = v162;
        }

        v102 = v95[2];
        v101 = v95[3];
        if (v102 >= v101 >> 1)
        {
          sub_10002A42C((v101 > 1), v102 + 1, 1);
          v96 = v155;
          v95 = v162;
        }

        v95[2] = v102 + 1;
        sub_10002AF68(v146, v95 + v97 + v102 * v98, type metadata accessor for HostedRoutingItem);
      }

      if (v93 == ++v94)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_112;
  }

  v95 = _swiftEmptyArrayStorage;
LABEL_106:

  v136 = v95[2];

  if (!v136)
  {
    swift_beginAccess();
    swift_beginAccess();

    sub_100030DE8(v137, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
    swift_endAccess();
    goto LABEL_108;
  }
}

void sub_100324E64(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v93 = a6;
  v91 = a5;
  v78 = a4;
  v82 = a3;
  v92 = type metadata accessor for RoutingSessionConfiguration.Context();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RoutingItem.Action.Kind();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = __chkstk_darwin(v11);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v79 = &v73 - v14;
  v15 = type metadata accessor for Features.MediaRemote();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v20 = __chkstk_darwin(v19 - 8);
  v77 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v76 = &v73 - v23;
  v24 = __chkstk_darwin(v22);
  v81 = &v73 - v25;
  __chkstk_darwin(v24);
  v27 = &v73 - v26;
  v85 = a1;
  sub_10002ADF8(a1, a7, type metadata accessor for HostedRoutingItem);
  v28 = *a2;
  v29 = a2[1];
  v86 = a2;

  *(a7 + 16) = v28;
  *(a7 + 24) = v29;
  v30 = type metadata accessor for HostedRoutingItem(0);
  v87 = v30[8];
  v88 = a7;
  sub_10001D9AC(a7 + v87, v27, &unk_100524E90, &unk_1004519B0);
  v31 = type metadata accessor for RoutingItem.SelectionIndicator();
  v32 = *(v31 - 8);
  LODWORD(a2) = (*(v32 + 48))(v27, 1, v31);
  sub_1000038A4(v27, &unk_100524E90, &unk_1004519B0);
  if (a2 != 1)
  {
    v38 = v30;
    v34 = v15;
    v39 = v88;
    (*(v16 + 104))(v18, enum case for Features.MediaRemote.cayenneMultiItemActions(_:), v34);
    goto LABEL_24;
  }

  v74 = *(v16 + 104);
  v74(v18, enum case for Features.MediaRemote.cayenneConditionalIndicators(_:), v15);
  v33 = Features.MediaRemote.isEnabled.getter();
  v75 = v16;
  v34 = v15;
  (*(v16 + 8))(v18, v15);
  if ((v33 & 1) == 0)
  {
    if (*(v85 + v30[9]))
    {
      v40 = v81;
      (*(v32 + 104))(v81, enum case for RoutingItem.SelectionIndicator.selected(_:), v31);
    }

    else
    {
      v40 = v81;
      if (v82)
      {
        v41 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      }

      else
      {
        v41 = &enum case for RoutingItem.SelectionIndicator.selectable(_:);
      }

      (*(v32 + 104))(v81, *v41, v31);
    }

    v43 = v30;
    (*(v32 + 56))(v40, 0, 1, v31);
    v39 = v88;
    sub_10001CECC(v40, v88 + v87, &unk_100524E90, &unk_1004519B0);
    goto LABEL_22;
  }

  if ((*(v85 + v30[9]) & 1) == 0)
  {
    if (v82)
    {
      v36 = v87;
      v35 = v88;
      sub_1000038A4(v88 + v87, &unk_100524E90, &unk_1004519B0);
      v37 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      goto LABEL_10;
    }

    v42 = (v78 >> 8) & 6 | (v78 >> 7) & 1;
    v43 = v30;
    if (v42 == 2)
    {
      v44 = v30;
      v39 = v88;
      v69 = *(v88 + v30[11]);
      v95 = *sub_100257764();
      v94 = v69;
      sub_100248690();
      v70 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v47 = *(v32 + 104);
      v71 = &enum case for RoutingItem.SelectionIndicator.selectable(_:);
      if ((v70 & 1) == 0)
      {
        v71 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      }

      v49 = *v71;
      v50 = v77;
      goto LABEL_52;
    }

    v39 = v88;
    if (v42 == 1)
    {
      v44 = v30;
      v45 = *(v88 + v30[11]);
      v95 = *sub_10025774C();
      v94 = v45;
      sub_100248690();
      v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v47 = *(v32 + 104);
      v48 = &enum case for RoutingItem.SelectionIndicator.selectable(_:);
      if ((v46 & 1) == 0)
      {
        v48 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      }

      v49 = *v48;
      v50 = v76;
LABEL_52:
      v47(v50, v49, v31);
      (*(v32 + 56))(v50, 0, 1, v31);
      v38 = v44;
      sub_10001CECC(v50, &v39[v87], &unk_100524E90, &unk_1004519B0);
      goto LABEL_11;
    }

    v72 = v87;
    sub_1000038A4(v88 + v87, &unk_100524E90, &unk_1004519B0);
    (*(v32 + 104))(&v39[v72], enum case for RoutingItem.SelectionIndicator.none(_:), v31);
    (*(v32 + 56))(&v39[v72], 0, 1, v31);
LABEL_22:
    v16 = v75;
    v38 = v43;
    goto LABEL_23;
  }

  v36 = v87;
  v35 = v88;
  sub_1000038A4(v88 + v87, &unk_100524E90, &unk_1004519B0);
  v37 = &enum case for RoutingItem.SelectionIndicator.selected(_:);
LABEL_10:
  (*(v32 + 104))(&v35[v36], *v37, v31);
  (*(v32 + 56))(&v35[v36], 0, 1, v31);
  v38 = v30;
  v39 = v35;
LABEL_11:
  v16 = v75;
LABEL_23:
  v74(v18, enum case for Features.MediaRemote.cayenneMultiItemActions(_:), v34);
LABEL_24:
  v51 = Features.MediaRemote.isEnabled.getter();
  (*(v16 + 8))(v18, v34);
  if (v51)
  {
    v52 = sub_1000325DC();
    v53 = v93;
    if (v52 & 1) != 0 && v39[v38[9]] == 1 && (v54 = v39[v38[11]], v95 = *sub_100257764(), v94 = v54, sub_100248690(), (dispatch thunk of SetAlgebra.isSuperset(of:)()))
    {
      v55 = v79;
      (*(v83 + 104))(v79, enum case for RoutingItem.Action.Kind.shareAudio(_:), v84);
      v56 = sub_100026868(0, 1, 1, _swiftEmptyArrayStorage, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      v58 = v56[2];
      v57 = v56[3];
      if (v58 >= v57 >> 1)
      {
        v56 = sub_100026868((v57 > 1), v58 + 1, 1, v56, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      }

      v56[2] = v58 + 1;
      (*(v83 + 32))(v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v58, v55, v84);
    }

    else
    {
      v56 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
    v53 = v93;
  }

  v59 = v89;
  RoutingSessionConfiguration.context.getter();
  v60 = sub_100265DF0();
  (*(v90 + 8))(v59, v92);
  if ((v60 & 1) != 0 && (v39[v38[9]] & 1) == 0 && sub_100032ED8())
  {
    v61 = v39[v38[11]];
    v95 = *sub_100257758();
    v94 = v61;
    sub_100248690();
    if (dispatch thunk of SetAlgebra.isSuperset(of:)())
    {
      (*(v83 + 104))(v80, enum case for RoutingItem.Action.Kind.remoteControl(_:), v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_100026868(0, v56[2] + 1, 1, v56, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      }

      v63 = v56[2];
      v62 = v56[3];
      if (v63 >= v62 >> 1)
      {
        v56 = sub_100026868((v62 > 1), v63 + 1, 1, v56, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      }

      v56[2] = v63 + 1;
      (*(v83 + 32))(v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v63, v80, v84);
    }
  }

  v64 = v38[12];

  *&v39[v64] = v56;
  v65 = *v39;
  v66 = *(v39 + 1);
  swift_beginAccess();
  v67 = *(v53 + 24);
  if (v67 && (v65 == *(v53 + 16) && v67 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    type metadata accessor for Preferences();
    if (static Preferences.enableFlaggedSuggestedItem.getter())
    {
      v68._countAndFlagsBits = 2241389088;
      v68._object = 0xA400000000000000;
      String.append(_:)(v68);
    }
  }
}