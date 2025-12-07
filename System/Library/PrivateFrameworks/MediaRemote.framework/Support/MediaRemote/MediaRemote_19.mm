void sub_1002AA57C()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v2 - 8);
  v4 = &v76 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v87 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v77 = *(v88 - 8);
  __chkstk_darwin(v88);
  v90 = &v76 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = v1[2];
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = __CocoaSet.count.getter();

    if (v13)
    {
      return;
    }
  }

  else if (*(v12 + 16))
  {
    return;
  }

  v14 = sub_100028D40();
  (*(v9 + 16))(v11, v14, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v91[0] = v89;
    *v17 = 136315138;
    v18 = _typeName(_:qualified:)();
    LODWORD(v86) = v16;
    v20 = sub_10002C9C8(v18, v19, v91);

    *(v17 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v15, v86, "[%s] installNotificationObservers - installing", v17, 0xCu);
    sub_100026A44(v89);
  }

  (*(v9 + 8))(v11, v8);
  v86 = v4;
  v76 = v5;
  v89 = v1;
  if (qword_100533380 != -1)
  {
    swift_once();
  }

  v21 = qword_100533388;
  v22 = *(qword_100533388 + 16);
  v23 = &selRef_bundleWithURL_;
  v24 = v89;
  v25 = v76;
  if (v22)
  {
    v26 = objc_opt_self();
    v84 = (v78 + 8);
    v85 = v26;
    v27 = *v24;
    v83 = (v77 + 8);
    v27 = (v27 + 368);
    v28 = *v27;
    v81 = v27;
    v82 = v28;
    v29 = v21 + 40;
    v30 = v86;
    do
    {
      v31 = v87;
      v32 = v90;
      v33 = v25;

      v34 = [v85 defaultCenter];
      v35 = String._bridgeToObjectiveC()();

      NSNotificationCenter.publisher(for:object:)();

      v36 = v82();
      v91[0] = v36;
      v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v37 - 8) + 56))(v30, 1, 1, v37);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v30, &unk_100524C50, &qword_10044F180);

      v25 = v33;
      v38 = v88;
      (*v84)(v31, v25);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      Publisher<>.sink(receiveValue:)();

      (*v83)(v32, v38);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
      v23 = &selRef_bundleWithURL_;

      v29 += 16;
      --v22;
    }

    while (v22);
  }

  if (qword_100533390 != -1)
  {
    swift_once();
  }

  v39 = qword_100533398;
  v40 = *(qword_100533398 + 16);
  v41 = v76;
  v42 = v86;
  if (v40)
  {
    v43 = objc_opt_self();
    v44 = v90;
    v45 = *v89;
    v83 = (v89 + 3);
    v84 = v43;
    v46 = (v39 + 32);
    v82 = (v78 + 8);
    v47 = *(v45 + 46);
    v80 = v45 + 368;
    v81 = v47;
    v79 = (v77 + 8);
    do
    {
      v48 = *v46++;
      v85 = v48;
      v49 = [v84 v23[307]];
      v50 = v87;
      NSNotificationCenter.publisher(for:object:)();

      v51 = v41;
      v52 = v81();
      v91[0] = v52;
      v53 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v53 - 8) + 56))(v42, 1, 1, v53);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v42, &unk_100524C50, &qword_10044F180);

      v41 = v51;
      v54 = v88;
      (*v82)(v50, v41);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      Publisher<>.sink(receiveValue:)();

      (*v79)(v44, v54);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v23 = &selRef_bundleWithURL_;

      --v40;
    }

    while (v40);
  }

  v55 = v87;
  if (qword_1005333A0 != -1)
  {
    swift_once();
  }

  v56 = qword_1005333A8;
  v57 = *(qword_1005333A8 + 16);
  v58 = v76;
  v59 = v88;
  v60 = &selRef_bundleWithURL_;
  if (v57)
  {
    v61 = objc_opt_self();
    v62 = *v89;
    v84 = (v89 + 4);
    v85 = v61;
    v82 = (v77 + 8);
    v83 = (v78 + 8);
    v63 = *(v62 + 46);
    v80 = v62 + 368;
    v81 = v63;
    v64 = v56 + 40;
    do
    {

      v65 = [v85 v60[307]];
      v66 = v59;
      v67 = v58;
      v68 = v65;
      v69 = String._bridgeToObjectiveC()();

      NSNotificationCenter.publisher(for:object:)();

      v70 = v81();
      v91[0] = v70;
      v71 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v72 = v55;
      v73 = v86;
      (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      Publisher.receive<A>(on:options:)();
      v74 = v73;
      v55 = v72;
      sub_1000038A4(v74, &unk_100524C50, &qword_10044F180);

      v58 = v67;
      v59 = v66;
      (*v83)(v72, v58);
      swift_allocObject();
      v60 = &selRef_bundleWithURL_;
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      Publisher<>.sink(receiveValue:)();
      v75 = v90;

      (*v82)(v75, v59);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v64 += 16;
      --v57;
    }

    while (v57);
  }

  sub_100033F40(0xD000000000000023, 0x800000010043F970);
}

void sub_1002AB230()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  v6 = v1[2];
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = __CocoaSet.count.getter();

    if (!v7)
    {
      return;
    }
  }

  else if (!*(v6 + 16))
  {
    return;
  }

  v8 = sub_100028D40();
  (*(v3 + 16))(v5, v8, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s] uninstallNotificationObserversIfNeeded - uninstalling", v11, 0xCu);
    sub_100026A44(v12);
  }

  (*(v3 + 8))(v5, v2);
  v1[2] = &_swiftEmptySetSingleton;

  swift_beginAccess();
  v1[3] = &_swiftEmptySetSingleton;

  swift_beginAccess();
  v1[4] = &_swiftEmptySetSingleton;
}

void sub_1002AB4D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v54 - v6);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = v4;
  *v12 = (*(v4 + 368))(v10);
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  LOBYTE(v4) = _dispatchPreconditionTest(_:)();
  v13 = (*(v9 + 8))(v12, v8);
  if (v4)
  {
    v14 = (*(*a1 + 112))(v13);
    v15 = v14;
    v16 = v14[3];
    if (!v16)
    {
LABEL_9:
      v44 = sub_100015A78();
      sub_10001D9AC(v44, v7, &qword_100525C00, &unk_1004511A0);
      v45 = type metadata accessor for Logger();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v7, 1, v45) == 1)
      {
        sub_1000038A4(v7, &qword_100525C00, &unk_1004511A0);
      }

      else
      {
        v58 = v15;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v59[0] = v57;
          *v49 = 136315138;
          v50 = _typeName(_:qualified:)();
          v52 = v7;
          v53 = sub_10002C9C8(v50, v51, v59);

          *(v49 + 4) = v53;
          v7 = v52;
          _os_log_impl(&_mh_execute_header, v47, v48, "[%s] timelineDidUpdate - update item types to process deferred data source removals", v49, 0xCu);
          sub_100026A44(v57);
        }

        (*(v46 + 8))(v7, v45);
      }

      sub_1002982C0();
      (*(*v2 + 880))();

LABEL_15:

      return;
    }

    if (v16 >= 1)
    {
      v57 = v7;
      v17 = v14[4];
      v18 = v14[2];
      if (v17 < v18)
      {
        v18 = 0;
      }

      v19 = v14[v17 - v18 + 5];
      v20 = *(*v19 + 176);

      (v20)(v60, v21);
      *&v62 = sub_10029A79C();
      v28 = sub_10028AED4(v60, v22, v23, v24, v25, v26, v27);
      v30 = v29;
      v71 = v60[0];
      sub_1001E6204(&v71);
      v69[0] = v60[1];
      v69[1] = v60[2];
      v70 = v61;
      sub_100238E4C(v69);
      *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions) = v62;

      if (v28)
      {
        v31 = swift_allocObject();
        v58 = v15;
        v32 = v31;
        *(v31 + 16) = v28;
        *(v31 + 24) = v30;
        v20(&v62);
        v68 = v62;
        v33 = v63;
        v34 = v64;
        v66[0] = v63;
        v66[1] = v64;
        v35 = v65;
        v67 = v65;
        v36 = v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction;
        v37 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8);
        v55 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction);
        v39 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 16);
        v38 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 24);
        v40 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 32);
        v41 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 40);
        v42 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 48);
        *v36 = v62;
        *(v36 + 1) = v33;
        *(v36 + 2) = v34;
        v36[48] = v35;
        sub_10028BC98(&v68, v59);
        sub_10026D080(v66, v59);
        sub_10028AE60(v55, v37, v39, v38, v40, v41, v42);
        sub_1002A5EA8();
        sub_1001E6204(&v68);
        sub_100238E4C(v66);
        v43 = swift_allocObject();
        v43[2] = v2;
        v43[3] = sub_10028AFB0;
        v43[4] = v32;

        sub_1002ABC38(v19, v43);

        v15 = v58;
      }

      v7 = v57;
      if (v15[3])
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002ABAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = (*(*a2 + 368))(v8);
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction;
    v14 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction);
    v15 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8);
    v16 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 16);
    v17 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 24);
    v18 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 32);
    v19 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 40);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    v20 = *(v13 + 48);
    *(v13 + 48) = 0;
    sub_10028AE60(v14, v15, v16, v17, v18, v19, v20);
    sub_1002A5EA8();
    return a3(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002ABC38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v142 = a2;
  v5 = *v3;
  v136 = v3;
  v147 = v5;
  v6 = type metadata accessor for ContinuousRoutingControl();
  v134 = *(v6 - 8);
  v135 = v6;
  __chkstk_darwin(v6);
  v132 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for RoutingControl();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v148 = *(v9 - 8);
  v149 = v9;
  __chkstk_darwin(v9);
  v146 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ContinuousClock.Instant();
  v11 = *(v154 - 8);
  v144 = *(v11 + 64);
  v12 = __chkstk_darwin(v154);
  v152 = (&v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v145 = &v129 - v15;
  __chkstk_darwin(v14);
  v17 = &v129 - v16;
  v18 = type metadata accessor for ContinuousClock();
  v150 = *(v18 - 8);
  v19 = v150;
  v141 = *(v150 + 64);
  v20 = __chkstk_darwin(v18);
  v151 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v129 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v129 - v26;
  v140 = a1;
  v143 = (*(*a1 + 160))(v25);
  v153 = v28;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v29 = *(v19 + 16);
  v138 = v27;
  v139 = v24;
  v30 = v18;
  v29(v24, v27, v18);
  v31 = *(v11 + 16);
  v32 = v145;
  v137 = v17;
  v33 = v17;
  v34 = v154;
  v31(v145, v33, v154);
  v29(v151, v24, v18);
  v31(v152, v32, v34);
  v35 = v150;
  v36 = v30;
  v37 = (*(v150 + 80) + 16) & ~*(v150 + 80);
  v38 = (v141 + *(v11 + 80) + v37) & ~*(v11 + 80);
  v39 = (v144 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = *(v35 + 32);
  v144 = v36;
  v43(v42 + v37, v139, v36);
  v141 = v11;
  (*(v11 + 32))(v42 + v38, v145, v154);
  v44 = (v42 + v39);
  v45 = v142;
  v46 = v143;
  v47 = v153;
  *v44 = v143;
  v44[1] = v47;
  v48 = (v42 + v40);
  v49 = v147;
  *v48 = sub_1002CE268;
  v48[1] = v45;
  v145 = v42;
  *(v42 + v41) = v49;

  v50 = sub_100028D40();
  (*(v148 + 16))(v146, v50, v149);

  v51 = v140;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = v51;

  if (os_log_type_enabled(v52, v53))
  {
    v55 = swift_slowAlloc();
    *&v155[0] = swift_slowAlloc();
    *v55 = 136315650;
    v56 = _typeName(_:qualified:)();
    v58 = sub_10002C9C8(v56, v57, v155);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2082;
    *(v55 + 14) = sub_10002C9C8(v46, v47, v155);
    *(v55 + 22) = 2082;
    (*(*v54 + 176))(&v159);
    v171[0] = v160;
    v171[1] = v161;
    v172 = v162;
    v170 = v159;
    v163 = v159;
    v164 = v160;
    v165 = v161;
    v166 = v162;
    sub_1002856A4();
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    sub_1001E6204(&v170);
    sub_100238E4C(v171);
    v62 = sub_10002C9C8(v59, v61, v155);

    *(v55 + 24) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "[%s] handleEvent<%{public}s> - interaction: %{public}s", v55, 0x20u);
    swift_arrayDestroy();
  }

  v63 = (*(v148 + 8))(v146, v149);
  v64 = v54;
  v65 = (*(*v54 + 104))(v63);
  v69 = v141;
  v70 = v150;
  if (v65)
  {
    v71 = v147;
    if (v65 == 3)
    {
      v72 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v72 - 8) + 104))(v73, enum case for InternalRoutingError.cancelled(_:), v72);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v128 = v71;
      v81 = v151;
      v80 = v152;
      sub_1002B3594(v82, v74, v76, v78, v151, v152, v143, v153, sub_1002CE268, v142, v128);

      sub_10023DCB0(v75, v77, v79);

      v83 = *(v69 + 8);
      v84 = v154;
      v83(v80, v154);
      v85 = *(v70 + 8);
      v86 = v144;
      v85(v81, v144);
      v83(v137, v84);
      return (v85)(v138, v86);
    }

    v117 = v144;
    if ((v65 - 1) < 2)
    {

      (*(v141 + 8))(v152, v154);
      v118 = *(v70 + 8);
      v70 += 8;
      v118(v151, v117);
      __break(1u);
    }

    v119 = v68;
    v120 = v67;
    v121 = v66;

    sub_10023DCB0(v121, v120, v119);

    (*(v141 + 8))(v152, v154);
    v95 = (*(v70 + 8))(v151, v117);
    __break(1u);
    goto LABEL_37;
  }

  v88 = *(v141 + 8);
  v89 = v154;
  v88(v152, v154);
  v90 = *(v70 + 8);
  v90(v151, v144);
  v91 = (*(**(v136 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline) + 248))(v64);
  (*(*v64 + 176))(&v163, v91);
  v167 = v164;
  v168 = v165;
  v169 = v166;
  v92 = v164;
  v149 = v88;
  if (v166 > 5u)
  {
    v95 = v153;
    if (v166 <= 7u)
    {
      if (v166 == 6)
      {

        sub_1002B6AC4(*(*(v92 + 48) + 16), *(*(v92 + 48) + 24), *(v92 + 16), *(v92 + 24), *(v92 + 32), *(v92 + 40), *(v92 + 48), &v163, v145);

        v88(v137, v89);
LABEL_28:
        v90(v138, v144);
LABEL_32:
        v155[0] = v163;
        goto LABEL_33;
      }

      if (v166 != 7)
      {
        goto LABEL_37;
      }

      v113 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
      v114 = swift_projectBox();
      v115 = *(v114 + *(v113 + 48));
      v110 = v131;
      v116 = *(v131 + 16);
      v152 = v90;
      v111 = v130;
      v112 = v133;
      v116(v130, v114, v133);

      sub_1002B7F50(v111, v115, &v163, v145);
    }

    else
    {
      v152 = v90;
      if (v166 == 8)
      {

        v103 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v104 = swift_projectBox();
        v105 = *(v104 + *(v103 + 48));
        v100 = v134;
        v99 = v135;
        v101 = v132;
        (*(v134 + 16))(v132, v104, v135);
        v155[0] = v163;
        v106 = v163;

        sub_1002CEFB8(v101, v105, v106, *(&v106 + 1), v145);
        goto LABEL_21;
      }

      if (v166 == 9)
      {

        v96 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v97 = swift_projectBox();
        v98 = *(v97 + *(v96 + 48));
        v100 = v134;
        v99 = v135;
        v101 = v132;
        (*(v134 + 16))(v132, v97, v135);
        v155[0] = v163;
        v102 = v163;

        sub_1002D0308(v101, v98, v102, *(&v102 + 1), v145);
LABEL_21:

        (*(v100 + 8))(v101, v99);
        v149(v137, v89);
        (v152)(v138, v144);
LABEL_33:
        sub_1001E6204(v155);
        return sub_100238E4C(&v167);
      }

      if (v166 != 10)
      {
        goto LABEL_37;
      }

      v107 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
      v108 = swift_projectBox();
      v109 = *(v108 + *(v107 + 48));
      v111 = v130;
      v110 = v131;
      v112 = v133;
      (*(v131 + 16))(v130, v108, v133);

      sub_1002B9434(v111, v109, &v163, v145);
    }

    (*(v110 + 8))(v111, v112);
    v149(v137, v89);
    (v152)(v138, v144);
    goto LABEL_32;
  }

  v93 = *(&v167 + 1);
  v94 = v168;
  v95 = v153;
  if (v166 <= 1u)
  {
    if (v166)
    {

      sub_1002B40F0(v92, v93, v94, *(&v94 + 1), &v163, v145, 2, &unk_1004C87D0, sub_1002D387C, &unk_1004C87E8);
    }

    else
    {

      sub_1002B40F0(v92, v93, v94, *(&v94 + 1), &v163, v145, 1, &unk_1004C8668, sub_1002D3408, &unk_1004C8680);
    }

    goto LABEL_27;
  }

  switch(v166)
  {
    case 2u:

      sub_1002B40F0(v92, v93, v94, *(&v94 + 1), &v163, v145, 3, &unk_1004C8848, sub_1002D3910, &unk_1004C8860);
      goto LABEL_27;
    case 4u:

      sub_1002B48B8(v92, v93, &v163, sub_1002D32BC, v145);
LABEL_27:

      v149(v137, v89);
      goto LABEL_28;
    case 5u:

      sub_1002B54E4(v92, v93, &v163, 1, sub_1002D32BC, v145);
      goto LABEL_27;
  }

LABEL_37:
  *&v155[0] = 0;
  *(&v155[0] + 1) = 0xE000000000000000;
  v122 = v95;
  _StringGuts.grow(_:)(48);

  v157 = 91;
  v158 = 0xE100000000000000;
  v123._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v123);

  v124._countAndFlagsBits = 0x656C646E6168205DLL;
  v124._object = 0xEE003C746E657645;
  String.append(_:)(v124);
  v125._countAndFlagsBits = v143;
  v125._object = v122;
  String.append(_:)(v125);
  v126._object = 0x800000010043F630;
  v126._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v126);
  v155[0] = v163;
  v155[1] = v164;
  v155[2] = v165;
  v156 = v166;
  sub_1002856A4();
  v127._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v127);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_1002ACD00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v14 = sub_100297768();
    v10 = sub_1002859AC(a2, a3);
    v12 = v11;
    *(v9 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v14;

    if (v10)
    {
      v13 = sub_1001C7C2C(v10, v12);
      a4(v13);
    }
  }

  return result;
}

void sub_1002ACDCC(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v115 = a5;
  v116 = a4;
  v114 = a3;
  v113 = a2;
  v7 = *v5;
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for DispatchTime();
  v103 = *(v119 - 8);
  v10 = __chkstk_darwin(v119);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v95 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContinuousClock.Instant();
  v124 = *(v17 - 8);
  v125 = v17;
  v18 = __chkstk_darwin(v17);
  v128 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v126 = &v95 - v21;
  v100 = v22;
  __chkstk_darwin(v20);
  v24 = &v95 - v23;
  v122 = type metadata accessor for ContinuousClock();
  v121 = *(v122 - 8);
  v25 = __chkstk_darwin(v122);
  v127 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v117 = &v95 - v28;
  v96 = v29;
  __chkstk_darwin(v27);
  v31 = &v95 - v30;
  v33 = *a1;
  v32 = *(a1 + 1);
  ContinuousClock.init()();
  v123 = v24;
  v120 = v31;
  ContinuousClock.now.getter();
  v34 = sub_100028D40();
  v98 = v14;
  v35 = *(v14 + 16);
  v99 = v13;
  v35(v16, v34, v13);
  v36 = a1[2];
  v134[0] = a1[1];
  v134[1] = v36;
  v135 = *(a1 + 48);

  sub_10026D080(v134, &aBlock);
  v97 = v16;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  sub_100238E4C(v134);
  v39 = os_log_type_enabled(v37, v38);
  v112 = v7;
  v111 = v32;
  v110 = v33;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v40 = 136315650;
    v41 = _typeName(_:qualified:)();
    v43 = sub_10002C9C8(v41, v42, &v133);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    *(v40 + 14) = sub_10002C9C8(v33, v32, &v133);
    *(v40 + 22) = 2082;
    v44 = a1[1];
    aBlock = *a1;
    v130 = v44;
    v131 = a1[2];
    v132 = *(a1 + 48);
    sub_1002856A4();
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = sub_10002C9C8(v45, v46, &v133);

    *(v40 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v37, v38, "[%s] waitForSessionStability<%{public}s> - interaction: %{public}s", v40, 0x20u);
    swift_arrayDestroy();
  }

  v98[1](v97, v99);
  v48 = v121;
  v49 = *(v121 + 16);
  v50 = v117;
  v51 = v122;
  v49(v117, v120, v122);
  v52 = v124;
  v53 = *(v124 + 16);
  v55 = v125;
  v54 = v126;
  v53(v126, v123, v125);
  v49(v127, v50, v51);
  v53(v128, v54, v55);
  v56 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v57 = (v96 + *(v52 + 80) + v56) & ~*(v52 + 80);
  v58 = (v100 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  (*(v48 + 32))(v60 + v56, v117, v51);
  (*(v52 + 32))(v60 + v57, v126, v55);
  v61 = (v60 + v58);
  v62 = v111;
  *v61 = v110;
  v61[1] = v62;
  v63 = (v60 + v59);
  v64 = v114;
  *v63 = v113;
  v63[1] = v64;
  *(v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8)) = v112;
  v65 = v60;

  v66 = static String.nanoIDFourChar()();
  v68 = v67;
  v69 = swift_allocObject();
  v70 = v102;
  swift_weakInit();
  v71 = swift_allocObject();
  v100 = v69;
  v72 = v116;
  *(v71 + 2) = v69;
  *(v71 + 3) = v72;
  *(v71 + 4) = v115;
  *(v71 + 5) = v66;
  *(v71 + 6) = v68;
  *(v71 + 7) = sub_1002D35C0;
  *(v71 + 8) = v65;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1002D35C0;
  *(v73 + 24) = v65;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1002D3754;
  *(v74 + 24) = v71;
  v75 = sub_100297768();
  swift_bridgeObjectRetain_n();
  v126 = v65;
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v75;
  sub_100285D14(sub_1002253D8, v74, v66, v68, isUniquelyReferenced_nonNull_native);

  *(v70 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = aBlock;

  v98 = (*(*v70 + 368))(v77);
  v78 = v101;
  static DispatchTime.now()();
  + infix(_:_:)();
  v99 = *(v103 + 8);
  v99(v78, v119);
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = v66;
  v102 = v66;
  v80[4] = v68;
  v80[5] = sub_1002867B0;
  v80[6] = v73;
  *&v131 = sub_1002D3878;
  *(&v131 + 1) = v80;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v130 = sub_100003D98;
  *(&v130 + 1) = &unk_1004C8798;
  v81 = _Block_copy(&aBlock);
  v103 = v68;

  v117 = v73;

  v82 = v104;
  static DispatchQoS.unspecified.getter();
  v133 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v83 = v107;
  v84 = v109;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = v118;
  v86 = v98;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v81);

  (*(v108 + 8))(v83, v84);
  (*(v105 + 8))(v82, v106);
  v99(v85, v119);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v88 = Strong;
    v89 = v103;
    (*(*Strong + 440))();
    v90 = v116();

    if (v90)
    {
      v133 = sub_100297768();
      sub_10027DB8C(0, 0, v102, v89);
      *(v88 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v133;

      sub_1002AE9FC(0, v127, v128, v110, v111, v113, v114, v112, "[%s] waitForSessionStability<%{public}s> - timed out after: %{public}s", "[%s] waitForSessionStability<%{public}s> - stable after: %{public}s", v95, v96, v97, v98, v99, v100, v101, v102);
    }

    else
    {
    }

    v126 = v71;
  }

  else
  {
  }

  v91 = v125;
  v92 = *(v124 + 8);
  v92(v128, v125);
  v93 = *(v121 + 8);
  v94 = v122;
  v93(v127, v122);
  v92(v123, v91);
  v93(v120, v94);
}

double sub_1002ADC18(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v115 = a5;
  v116 = a4;
  v114 = a3;
  v113 = a2;
  v7 = *v5;
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DispatchTime();
  v103 = *(v120 - 8);
  v10 = __chkstk_darwin(v120);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v119 = &v95 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContinuousClock.Instant();
  v125 = *(v17 - 8);
  v126 = v17;
  v18 = __chkstk_darwin(v17);
  v128 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v118 = &v95 - v21;
  v100 = v22;
  __chkstk_darwin(v20);
  v24 = &v95 - v23;
  v25 = type metadata accessor for ContinuousClock();
  v122 = *(v25 - 8);
  v123 = v25;
  v26 = __chkstk_darwin(v25);
  v127 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v117 = &v95 - v29;
  v96 = v30;
  __chkstk_darwin(v28);
  v32 = &v95 - v31;
  v34 = *a1;
  v33 = *(a1 + 1);
  ContinuousClock.init()();
  v124 = v24;
  v121 = v32;
  ContinuousClock.now.getter();
  v35 = sub_100028D40();
  v98 = v14;
  v36 = *(v14 + 16);
  v99 = v13;
  v36(v16, v35, v13);
  v37 = a1[2];
  v134[0] = a1[1];
  v134[1] = v37;
  v135 = *(a1 + 48);

  sub_10026D080(v134, &aBlock);
  v97 = v16;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  sub_100238E4C(v134);
  v40 = os_log_type_enabled(v38, v39);
  v112 = v7;
  v111 = v33;
  v110 = v34;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v41 = 136315650;
    v42 = _typeName(_:qualified:)();
    v44 = sub_10002C9C8(v42, v43, &v133);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_10002C9C8(v34, v33, &v133);
    *(v41 + 22) = 2082;
    v45 = a1[1];
    aBlock = *a1;
    v130 = v45;
    v131 = a1[2];
    v132 = *(a1 + 48);
    sub_1002856A4();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = sub_10002C9C8(v46, v47, &v133);

    *(v41 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%s] waitForFavoriteStatusStability<%{public}s> - interaction: %{public}s", v41, 0x20u);
    swift_arrayDestroy();
  }

  v98[1](v97, v99);
  v49 = v122;
  v50 = *(v122 + 16);
  v51 = v117;
  v52 = v123;
  v50(v117, v121, v123);
  v53 = v125;
  v54 = *(v125 + 16);
  v55 = v118;
  v56 = v126;
  v54(v118, v124, v126);
  v50(v127, v51, v52);
  v54(v128, v55, v56);
  v57 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v58 = (v96 + *(v53 + 80) + v57) & ~*(v53 + 80);
  v59 = (v100 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v49 + 32))(v61 + v57, v117, v52);
  (*(v53 + 32))(v61 + v58, v118, v56);
  v62 = (v61 + v59);
  v63 = v111;
  *v62 = v110;
  v62[1] = v63;
  v64 = (v61 + v60);
  v65 = v114;
  *v64 = v113;
  v64[1] = v65;
  *(v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8)) = v112;

  v66 = static String.nanoIDFourChar()();
  v68 = v67;
  v69 = swift_allocObject();
  v70 = v102;
  swift_weakInit();
  v71 = swift_allocObject();
  v100 = v69;
  v72 = v116;
  v71[2] = v69;
  v71[3] = v72;
  v71[4] = v115;
  v71[5] = v66;
  v71[6] = v68;
  v71[7] = sub_1002D28B0;
  v71[8] = v61;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1002D28B0;
  *(v73 + 24) = v61;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1002D28C4;
  *(v74 + 24) = v71;
  v75 = sub_100297774();
  swift_bridgeObjectRetain_n();
  v118 = v61;
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v75;
  sub_100285D14(sub_10021C408, v74, v66, v68, isUniquelyReferenced_nonNull_native);

  *(v70 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = aBlock;

  v98 = (*(*v70 + 368))(v77);
  v78 = v101;
  static DispatchTime.now()();
  + infix(_:_:)();
  v99 = *(v103 + 8);
  v99(v78, v120);
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = v66;
  v102 = v66;
  v80[4] = v68;
  v80[5] = sub_1002D5054;
  v80[6] = v73;
  *&v131 = sub_1002D29A0;
  *(&v131 + 1) = v80;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v130 = sub_100003D98;
  *(&v130 + 1) = &unk_1004C8568;
  v81 = _Block_copy(&aBlock);
  v103 = v68;

  v117 = v73;

  v82 = v104;
  static DispatchQoS.unspecified.getter();
  v133 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v83 = v107;
  v84 = v109;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = v119;
  v86 = v98;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v81);

  (*(v108 + 8))(v83, v84);
  (*(v105 + 8))(v82, v106);
  v99(v85, v120);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v88 = Strong;
    v89 = v103;
    if (v116())
    {
      v133 = sub_100297774();
      sub_10027DB8C(0, 0, v102, v89);
      *(v88 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = v133;

      sub_1002AE9FC(0, v127, v128, v110, v111, v113, v114, v112, "[%s] waitForFavoriteStatusStability<%{public}s> - timed out after: %{public}s", "[%s] waitForFavoriteStatusStability<%{public}s> - stable after: %{public}s", v95, v96, v97, v98, v99, v100, v101, v102);
    }

    else
    {
    }
  }

  else
  {
  }

  v90 = v126;
  v91 = *(v125 + 8);
  v91(v128, v126);
  v92 = v123;
  v93 = *(v122 + 8);
  v93(v127, v123);
  v91(v124, v90);
  v93(v121, v92);

  return result;
}

uint64_t sub_1002AE9FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, const char *a9, const char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  v86 = a8;
  v87 = a4;
  v101 = a7;
  v102 = a6;
  v20 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v95 = *(v20 - 8);
  v96 = v20;
  __chkstk_darwin(v20);
  v91 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v92 = *(v22 - 8);
  v93 = v22;
  __chkstk_darwin(v22);
  v24 = &v81[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v89 = *(v25 - 8);
  v90 = v25;
  __chkstk_darwin(v25);
  v27 = &v81[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for Duration.UnitsFormatStyle();
  v97 = *(v28 - 8);
  v98 = v28;
  __chkstk_darwin(v28);
  v94 = &v81[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = type metadata accessor for Logger();
  v30 = *(v103 - 8);
  v31 = __chkstk_darwin(v103);
  v33 = &v81[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v81[-v34];
  v36 = type metadata accessor for ContinuousClock.Instant();
  v99 = *(v36 - 8);
  v100 = v36;
  __chkstk_darwin(v36);
  v38 = &v81[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ContinuousClock.now.getter();
  v88 = ContinuousClock.Instant.duration(to:)();
  v40 = v39;
  v41 = sub_100028D40();
  v42 = *(v30 + 16);
  if (a1)
  {
    v42(v35, v41, v103);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    v85 = v43;
    if (os_log_type_enabled(v43, v44))
    {
      v84 = a9;
      v45 = swift_slowAlloc();
      v82 = v44;
      v46 = v45;
      v83 = swift_slowAlloc();
      v106[0] = v83;
      *v46 = 136315650;
      v47 = _typeName(_:qualified:)();
      v49 = sub_10002C9C8(v47, v48, v106);
      v86 = v40;
      v50 = v49;

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_10002C9C8(v87, a5, v106);
      *(v46 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      type metadata accessor for Duration.UnitsFormatStyle.Unit();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v51);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v52 = v91;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v53 = v94;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v95 + 8))(v52, v96);
      (*(v92 + 8))(v24, v93);
      (*(v89 + 8))(v27, v90);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
      v54 = v98;
      Duration.formatted<A>(_:)();
      (*(v97 + 8))(v53, v54);
      v55 = sub_10002C9C8(v104, v105, v106);

      *(v46 + 24) = v55;
      v56 = v85;
      _os_log_impl(&_mh_execute_header, v85, v82, v84, v46, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v30 + 8))(v35, v103);
    v70 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v70 - 8) + 104))(v71, enum case for InternalRoutingError.stabilityTimeout(_:), v70);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
  }

  else
  {
    v42(v33, v41, v103);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    v85 = v57;
    if (os_log_type_enabled(v57, v58))
    {
      v84 = a10;
      v59 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v106[0] = v83;
      *v59 = 136315650;
      v60 = _typeName(_:qualified:)();
      v82 = v58;
      v62 = sub_10002C9C8(v60, v61, v106);
      v86 = v40;
      v63 = v62;

      *(v59 + 4) = v63;
      *(v59 + 12) = 2082;
      *(v59 + 14) = sub_10002C9C8(v87, a5, v106);
      *(v59 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      type metadata accessor for Duration.UnitsFormatStyle.Unit();
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v64);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v65 = v91;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v66 = v94;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v95 + 8))(v65, v96);
      (*(v92 + 8))(v24, v93);
      (*(v89 + 8))(v27, v90);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
      v67 = v98;
      Duration.formatted<A>(_:)();
      (*(v97 + 8))(v66, v67);
      v68 = sub_10002C9C8(v104, v105, v106);

      *(v59 + 24) = v68;
      v69 = v85;
      _os_log_impl(&_mh_execute_header, v85, v82, v84, v59, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v30 + 8))(v33, v103);
    v73 = 0;
    v75 = 0;
    v77 = 0;
    v79 = 0;
  }

  v102(v73, v75, v77, v79);
  sub_10023DC58(v73, v75, v77, v79);
  return (*(v99 + 8))(v38, v100);
}

uint64_t sub_1002AF590(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v345 = a5;
  v346 = a4;
  v357 = a3;
  v344 = a2;
  v361 = *v5;
  v336 = type metadata accessor for DispatchWorkItemFlags();
  v335 = *(v336 - 8);
  __chkstk_darwin(v336);
  v333 = &v301 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for DispatchQoS();
  v332 = *(v334 - 8);
  __chkstk_darwin(v334);
  v331 = &v301 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for DispatchTime();
  v330 = *(v350 - 8);
  v9 = __chkstk_darwin(v350);
  v337 = &v301 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v349 = &v301 - v11;
  v12 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v12 - 8);
  v340 = &v301 - v13;
  v343 = type metadata accessor for NSNotificationCenter.Publisher();
  v347 = *(v343 - 8);
  v14 = __chkstk_darwin(v343);
  v324 = (&v301 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v326 = (&v301 - v17);
  v18 = __chkstk_darwin(v16);
  v314 = &v301 - v19;
  v20 = __chkstk_darwin(v18);
  v316 = &v301 - v21;
  v22 = __chkstk_darwin(v20);
  v304 = &v301 - v23;
  v24 = __chkstk_darwin(v22);
  v302 = &v301 - v25;
  v26 = __chkstk_darwin(v24);
  v308 = &v301 - v27;
  v28 = __chkstk_darwin(v26);
  v306 = &v301 - v29;
  v30 = __chkstk_darwin(v28);
  v310 = &v301 - v31;
  __chkstk_darwin(v30);
  v312 = &v301 - v32;
  v33 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v338 = *(v33 - 8);
  v34 = __chkstk_darwin(v33);
  v323 = &v301 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v325 = &v301 - v37;
  v38 = __chkstk_darwin(v36);
  v313 = &v301 - v39;
  v40 = __chkstk_darwin(v38);
  v315 = &v301 - v41;
  v42 = __chkstk_darwin(v40);
  v303 = &v301 - v43;
  v44 = __chkstk_darwin(v42);
  v301 = &v301 - v45;
  v46 = __chkstk_darwin(v44);
  v307 = &v301 - v47;
  v48 = __chkstk_darwin(v46);
  v305 = &v301 - v49;
  v50 = __chkstk_darwin(v48);
  v309 = &v301 - v51;
  __chkstk_darwin(v50);
  v311 = &v301 - v52;
  v322 = type metadata accessor for RoutingControl.RoutingControlType();
  v321 = *(v322 - 1);
  v53 = __chkstk_darwin(v322);
  v320 = &v301 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v319 = &v301 - v55;
  v318 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
  __chkstk_darwin(v318);
  v317 = (&v301 - v56);
  v329 = type metadata accessor for RoutingControl();
  v328 = *(v329 - 1);
  __chkstk_darwin(v329);
  v327 = &v301 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Logger();
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v61 = &v301 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = type metadata accessor for ContinuousClock.Instant();
  v356 = *(v355 - 8);
  v62 = __chkstk_darwin(v355);
  v359 = &v301 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v364 = &v301 - v65;
  v342 = v66;
  __chkstk_darwin(v64);
  v68 = &v301 - v67;
  v365 = type metadata accessor for ContinuousClock();
  v354 = *(v365 - 8);
  v69 = __chkstk_darwin(v365);
  v358 = &v301 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v360 = &v301 - v72;
  v341 = v73;
  __chkstk_darwin(v71);
  v75 = &v301 - v74;
  v77 = *a1;
  v76 = *(a1 + 1);
  ContinuousClock.init()();
  v353 = v68;
  v352 = v75;
  ContinuousClock.now.getter();
  v78 = sub_100028D40();
  v363 = v59;
  v79 = *(v59 + 16);
  v366 = v58;
  v79(v61, v78, v58);
  v80 = a1[2];
  v372[0] = a1[1];
  v372[1] = v80;
  v81 = a1;
  v373 = *(a1 + 48);

  sub_10026D080(v372, &aBlock);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  v362 = v76;

  sub_100238E4C(v372);
  v84 = os_log_type_enabled(v82, v83);
  v351 = v77;
  v339 = v33;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v371 = swift_slowAlloc();
    *v85 = 136315650;
    v86 = _typeName(_:qualified:)();
    v88 = sub_10002C9C8(v86, v87, &v371);

    *(v85 + 4) = v88;
    *(v85 + 12) = 2082;
    *(v85 + 14) = sub_10002C9C8(v77, v362, &v371);
    *(v85 + 22) = 2082;
    v89 = v81[1];
    aBlock = *v81;
    v368 = v89;
    v369 = v81[2];
    v370 = *(v81 + 48);
    sub_1002856A4();
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = sub_10002C9C8(v90, v91, &v371);

    *(v85 + 24) = v92;
    _os_log_impl(&_mh_execute_header, v82, v83, "[%s] waitForLocalNowPlayingStability<%{public}s> - interaction: %{public}s", v85, 0x20u);
    swift_arrayDestroy();
  }

  (*(v363 + 8))(v61, v366);
  v93 = swift_allocObject();
  v366 = v93;
  *(v93 + 16) = &_swiftEmptySetSingleton;
  v363 = v93 + 16;
  v94 = v354;
  v95 = *(v354 + 16);
  v96 = v360;
  v97 = v365;
  v95(v360, v352, v365);
  v98 = v356;
  v99 = *(v356 + 16);
  v100 = v364;
  v101 = v355;
  v99(v364, v353, v355);
  v95(v358, v96, v97);
  v99(v359, v100, v101);
  v102 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v103 = (v341 + *(v98 + 80) + v102) & ~*(v98 + 80);
  v104 = (v342 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 23) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  v107 = v365;
  v108 = v366;
  *(v106 + 16) = v366;
  (*(v94 + 32))(v106 + v102, v360, v107);
  (*(v98 + 32))(v106 + v103, v364, v101);
  v109 = (v106 + v104);
  v110 = v362;
  *v109 = v351;
  v109[1] = v110;
  v111 = (v106 + v105);
  v112 = v357;
  *v111 = v344;
  v111[1] = v112;
  *(v106 + ((v105 + 23) & 0xFFFFFFFFFFFFFFF8)) = v361;
  v113 = swift_allocObject();
  v114 = v346;
  *(v113 + 2) = v108;
  *(v113 + 3) = v114;
  *(v113 + 4) = v345;
  *(v113 + 5) = sub_1002D23D8;
  v364 = v106;
  *(v113 + 6) = v106;
  v360 = v113;
  if (v373 != 6)
  {
    v115 = v348;
    if (v373 == 7)
    {
      v116 = swift_projectBox();
      v117 = v317;
      sub_10001D9AC(v116, v317, &qword_100524290, &qword_100455140);
      v342 = *&v117[*(v318 + 48)];
      v118 = v327;
      (*(v328 + 32))(v327, v117, v329);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      v119 = v319;
      RoutingControl.type.getter();
      v120 = v321;
      v121 = *(v321 + 104);
      v122 = v320;
      v123 = v322;
      v121(v320, enum case for RoutingControl.RoutingControlType.favorite(_:), v322);
      v124 = static RoutingControl.RoutingControlType.== infix(_:_:)();
      v125 = *(v120 + 8);
      v125(v122, v123);
      v125(v119, v123);
      if (v124 & 1) != 0 || (RoutingControl.type.getter(), v121(v122, enum case for RoutingControl.RoutingControlType.unfavorite(_:), v123), v126 = static RoutingControl.RoutingControlType.== infix(_:_:)(), v125(v122, v123), v125(v119, v123), (v126))
      {
        v127 = v342[3];
        v128 = v360;
        if (v127)
        {
          v341 = v342[2];
          v129 = objc_opt_self();

          v130 = [v129 defaultCenter];
          if (!kMRMediaRemotePlayerSupportedCommandsDidChangeNotification)
          {
LABEL_44:

            (*(v354 + 8))(v358, v365);
            (*(v356 + 8))(v359, v355);

            __break(1u);
            goto LABEL_45;
          }

          v131 = v130;
          v132 = kMRMediaRemotePlayerSupportedCommandsDidChangeNotification;
          v133 = v312;
          NSNotificationCenter.publisher(for:object:)();

          v134 = (*(*v115 + 368))();
          *&aBlock = v134;
          v135 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v136 = v340;
          (*(*(v135 - 8) + 56))(v340, 1, 1, v135);
          sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
          sub_1002853D8();
          v137 = v311;
          v138 = v343;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v136, &unk_100524C50, &qword_10044F180);

          (*(v347 + 8))(v133, v138);
          v139 = swift_allocObject();
          v139[2] = v341;
          v139[3] = v127;
          v139[4] = sub_1002D24FC;
          v139[5] = v128;
          sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

          v140 = v339;
          Publisher<>.sink(receiveValue:)();

          (*(v338 + 8))(v137, v140);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();
          v141 = v337;
          v142 = v327;
          v143 = v329;
        }

        else
        {
          v182 = v118;
          v183 = [objc_opt_self() defaultCenter];
          if (!kMRMediaRemoteSupportedCommandsDidChangeNotification)
          {
LABEL_45:

            (*(v354 + 8))(v358, v365);
            (*(v356 + 8))(v359, v355);

            __break(1u);
            goto LABEL_46;
          }

          v184 = v183;
          v185 = kMRMediaRemoteSupportedCommandsDidChangeNotification;
          v186 = v310;
          NSNotificationCenter.publisher(for:object:)();

          v187 = (*(*v115 + 368))();
          *&aBlock = v187;
          v188 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v189 = v340;
          (*(*(v188 - 8) + 56))(v340, 1, 1, v188);
          sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
          sub_1002853D8();
          v190 = v309;
          v191 = v343;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v189, &unk_100524C50, &qword_10044F180);

          (*(v347 + 8))(v186, v191);
          v192 = swift_allocObject();
          *(v192 + 16) = sub_1002D24FC;
          *(v192 + 24) = v128;
          sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

          v193 = v339;
          Publisher<>.sink(receiveValue:)();

          (*(v338 + 8))(v190, v193);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();
          v141 = v337;
          v143 = v329;
          v142 = v182;
        }
      }

      else
      {
        v194 = v342[3];
        v195 = v360;
        if (v194)
        {
          v341 = v342[2];
          v196 = objc_opt_self();

          v326 = v196;
          v197 = [v196 defaultCenter];
          if (!kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification)
          {
LABEL_46:

            (*(v354 + 8))(v358, v365);
            (*(v356 + 8))(v359, v355);

            __break(1u);
            goto LABEL_47;
          }

          v198 = v197;
          v199 = kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification;
          v200 = v306;
          NSNotificationCenter.publisher(for:object:)();

          v201 = *(*v115 + 368);
          v325 = (*v115 + 368);
          v324 = v201;
          v202 = v201();
          *&aBlock = v202;
          v203 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v204 = *(v203 - 8);
          v205 = *(v204 + 56);
          v206 = v340;
          v323 = v203;
          v322 = v205;
          v321 = v204 + 56;
          (v205)(v340, 1, 1);
          v207 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          v208 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
          v209 = sub_1002853D8();
          v210 = v305;
          v211 = v343;
          v320 = v207;
          v319 = v208;
          v318 = v209;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v206, &unk_100524C50, &qword_10044F180);

          v317 = *(v347 + 8);
          (v317)(v200, v211);
          v212 = swift_allocObject();
          v212[2] = v341;
          v212[3] = v194;
          v212[4] = sub_1002D24FC;
          v212[5] = v195;
          v213 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

          v347 = v194;

          v214 = v339;
          v316 = v213;
          Publisher<>.sink(receiveValue:)();

          v338 = *(v338 + 8);
          (v338)(v210, v214);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v215 = [v326 defaultCenter];
          if (!kMRMediaRemotePlayerPlaybackStateDidChangeNotification)
          {
LABEL_47:

            (*(v354 + 8))(v358, v365);
            (*(v356 + 8))(v359, v355);

            __break(1u);
            goto LABEL_48;
          }

          v216 = v215;
          v217 = kMRMediaRemotePlayerPlaybackStateDidChangeNotification;
          v218 = v308;
          NSNotificationCenter.publisher(for:object:)();

          v219 = v324();
          *&aBlock = v219;
          (v322)(v206, 1, 1, v323);
          v220 = v307;
          v221 = v343;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v206, &unk_100524C50, &qword_10044F180);

          (v317)(v218, v221);
          v222 = swift_allocObject();
          v223 = v347;
          v222[2] = v341;
          v222[3] = v223;
          v222[4] = sub_1002D24FC;
          v222[5] = v360;

          Publisher<>.sink(receiveValue:)();

          (v338)(v220, v214);
          swift_beginAccess();
        }

        else
        {
          v252 = objc_opt_self();
          v253 = [v252 defaultCenter];
          if (!kMRMediaRemoteNowPlayingInfoDidChangeNotification)
          {
LABEL_48:

            (*(v354 + 8))(v358, v365);
            (*(v356 + 8))(v359, v355);

            __break(1u);
            goto LABEL_49;
          }

          v254 = v253;
          v255 = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
          v256 = v302;
          NSNotificationCenter.publisher(for:object:)();

          v257 = *(*v115 + 368);
          v341 = (*v115 + 368);
          v326 = v257;
          v258 = v257();
          *&aBlock = v258;
          v259 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v260 = *(v259 - 8);
          v261 = *(v260 + 56);
          v262 = v340;
          v325 = v259;
          v324 = v261;
          v323 = (v260 + 56);
          (v261)(v340, 1, 1);
          v263 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          v264 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
          v265 = sub_1002853D8();
          v266 = v301;
          v267 = v343;
          v322 = v263;
          v321 = v264;
          v320 = v265;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v262, &unk_100524C50, &qword_10044F180);

          v268 = v267;
          v347 = *(v347 + 8);
          (v347)(v256, v267);
          v269 = swift_allocObject();
          *(v269 + 16) = sub_1002D24FC;
          *(v269 + 24) = v195;
          v270 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

          v271 = v339;
          v319 = v270;
          Publisher<>.sink(receiveValue:)();

          v338 = *(v338 + 8);
          (v338)(v266, v271);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v272 = [v252 defaultCenter];
          if (!kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification)
          {
LABEL_49:

            (*(v354 + 8))(v358, v365);
            (*(v356 + 8))(v359, v355);

            __break(1u);
            return result;
          }

          v273 = v272;
          v274 = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
          v275 = v304;
          NSNotificationCenter.publisher(for:object:)();

          v276 = v326();
          *&aBlock = v276;
          (v324)(v262, 1, 1, v325);
          v277 = v303;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v262, &unk_100524C50, &qword_10044F180);

          (v347)(v275, v268);
          v278 = swift_allocObject();
          *(v278 + 16) = sub_1002D24FC;
          *(v278 + 24) = v360;

          Publisher<>.sink(receiveValue:)();

          (v338)(v277, v271);
          swift_beginAccess();
        }

        AnyCancellable.store(in:)();
        swift_endAccess();
        v115 = v348;
        v141 = v337;
        v143 = v329;
        v142 = v327;
      }

      v181 = (*(v328 + 8))(v142, v143);
      goto LABEL_33;
    }

    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    goto LABEL_24;
  }

  v144 = *(*&v372[0] + 16);
  v145 = *(*&v372[0] + 24);
  v146 = *(*&v372[0] + 48);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v147 = sub_100037234();
  v115 = v348;
  if ((v144 != *v147 || v145 != *(v147 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

LABEL_24:
    v342 = objc_opt_self();
    v224 = [v342 defaultCenter];
    v225 = v347;
    v226 = v340;
    if (kMRMediaRemoteNowPlayingInfoDidChangeNotification)
    {
      v227 = v224;
      v228 = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
      v229 = v326;
      NSNotificationCenter.publisher(for:object:)();

      v230 = *(*v115 + 368);
      v341 = (*v115 + 368);
      v329 = v230;
      v231 = v230();
      *&aBlock = v231;
      v232 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v233 = *(v232 - 8);
      v328 = *(v233 + 56);
      v327 = (v233 + 56);
      (v328)(v226, 1, 1, v232);
      v234 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      v235 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      v236 = sub_1002853D8();
      v237 = v325;
      v238 = v343;
      v322 = v234;
      v321 = v235;
      v320 = v236;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v226, &unk_100524C50, &qword_10044F180);

      v239 = *(v225 + 8);
      v347 = v225 + 8;
      v326 = v239;
      (v239)(v229, v238);
      v240 = swift_allocObject();
      v241 = v360;
      *(v240 + 16) = sub_1002D24FC;
      *(v240 + 24) = v241;
      v242 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

      v243 = v339;
      v319 = v242;
      Publisher<>.sink(receiveValue:)();

      v338 = *(v338 + 8);
      (v338)(v237, v243);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v244 = [v342 defaultCenter];
      if (kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification)
      {
        v245 = v244;
        v246 = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
        v247 = v324;
        NSNotificationCenter.publisher(for:object:)();

        v248 = v348;
        v249 = v329();
        *&aBlock = v249;
        (v328)(v226, 1, 1, v232);
        v250 = v323;
        Publisher.receive<A>(on:options:)();
        sub_1000038A4(v226, &unk_100524C50, &qword_10044F180);

        (v326)(v247, v238);
        v251 = swift_allocObject();
        *(v251 + 16) = sub_1002D24FC;
        *(v251 + 24) = v241;

        Publisher<>.sink(receiveValue:)();

        (v338)(v250, v243);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v115 = v248;
        goto LABEL_27;
      }
    }

    else
    {

      (*(v354 + 8))(v358, v365);
      (*(v356 + 8))(v359, v355);

      __break(1u);
    }

    (*(v354 + 8))(v358, v365);
    (*(v356 + 8))(v359, v355);

    __break(1u);
    goto LABEL_42;
  }

  v328 = v145;
  v149 = *(v146 + 16);
  v148 = *(v146 + 24);
  v329 = v146;
  v150 = objc_opt_self();
  v342 = v148;

  v341 = v150;
  v151 = [v150 defaultCenter];
  v152 = v343;
  if (!kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification)
  {
LABEL_42:

    (*(v354 + 8))(v358, v365);
    (*(v356 + 8))(v359, v355);

    __break(1u);
    goto LABEL_43;
  }

  v153 = v151;
  v154 = kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification;
  v155 = v316;
  NSNotificationCenter.publisher(for:object:)();

  v156 = *(*v115 + 368);
  v327 = (*v115 + 368);
  v326 = v156;
  v157 = v156();
  *&aBlock = v157;
  v158 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v159 = *(v158 - 8);
  v160 = v340;
  v325 = *(v159 + 56);
  v324 = (v159 + 56);
  (v325)(v340, 1, 1, v158);
  v161 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v162 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v163 = sub_1002853D8();
  v164 = v315;
  v323 = v161;
  v322 = v162;
  v321 = v163;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v160, &unk_100524C50, &qword_10044F180);

  v320 = *(v347 + 8);
  (v320)(v155, v152);
  v165 = swift_allocObject();
  v347 = v149;
  v166 = v342;
  v165[2] = v149;
  v165[3] = v166;
  v167 = v360;
  v165[4] = sub_1002D24FC;
  v165[5] = v167;
  v168 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v169 = v339;
  v319 = v168;
  Publisher<>.sink(receiveValue:)();

  v338 = *(v338 + 8);
  (v338)(v164, v169);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v170 = [v341 defaultCenter];
  v171 = kMRMediaRemotePlayerPlaybackStateDidChangeNotification;
  if (!kMRMediaRemotePlayerPlaybackStateDidChangeNotification)
  {
LABEL_43:

    (*(v354 + 8))(v358, v365);
    (*(v356 + 8))(v359, v355);

    __break(1u);
    goto LABEL_44;
  }

  v172 = v170;

  v173 = v171;
  v174 = v314;
  NSNotificationCenter.publisher(for:object:)();

  v175 = v348;
  v176 = v326();
  *&aBlock = v176;
  (v325)(v160, 1, 1, v158);
  v177 = v313;
  v178 = v343;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v160, &unk_100524C50, &qword_10044F180);

  (v320)(v174, v178);
  v179 = swift_allocObject();
  v180 = v342;
  v179[2] = v347;
  v179[3] = v180;
  v179[4] = sub_1002D24FC;
  v179[5] = v360;

  Publisher<>.sink(receiveValue:)();

  (v338)(v177, v169);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v115 = v175;
LABEL_27:
  v141 = v337;
LABEL_33:
  v343 = (*(*v115 + 368))(v181);
  static DispatchTime.now()();
  + infix(_:_:)();
  v347 = *(v330 + 8);
  (v347)(v141, v350);
  v279 = swift_allocObject();
  swift_weakInit();
  v280 = swift_allocObject();
  v281 = v366;
  v280[2] = v279;
  v280[3] = v281;
  v282 = v364;
  v280[4] = sub_1002D23D8;
  v280[5] = v282;
  *&v369 = sub_1002D260C;
  *(&v369 + 1) = v280;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v368 = sub_100003D98;
  *(&v368 + 1) = &unk_1004C8338;
  v283 = _Block_copy(&aBlock);

  v284 = v331;
  static DispatchQoS.unspecified.getter();
  v371 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v285 = v333;
  v286 = v336;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v287 = v349;
  v288 = v343;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v283);

  (*(v335 + 8))(v285, v286);
  (*(v332 + 8))(v284, v334);
  (v347)(v287, v350);

  v289 = swift_beginAccess();
  v290 = *(v281 + 16);
  if ((v290 & 0xC000000000000001) != 0)
  {

    v291 = __CocoaSet.count.getter();
  }

  else
  {
    v291 = *(v290 + 16);
  }

  v292 = v357;
  v293 = v361;
  v294 = v362;
  v295 = v351;
  if (v291)
  {
    if (v346(v289))
    {
      sub_1002B29C8(0, v366, v358, v359, v295, v294, v344, v292, v293);
    }
  }

  v296 = *(v354 + 8);
  v297 = v365;
  v296(v358, v365);
  v298 = *(v356 + 8);
  v299 = v355;
  v298(v359, v355);

  v298(v353, v299);
  v296(v352, v297);
}

uint64_t sub_1002B29C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v87 = a8;
  v88 = a7;
  v72 = a5;
  v71 = a9;
  v12 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v77 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v75 = *(v16 - 8);
  v76 = v16;
  __chkstk_darwin(v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Duration.UnitsFormatStyle();
  v83 = *(v19 - 8);
  v84 = v19;
  __chkstk_darwin(v19);
  v80 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Logger();
  v21 = *(v89 - 8);
  v22 = __chkstk_darwin(v89);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v69 - v25;
  v27 = type metadata accessor for ContinuousClock.Instant();
  v85 = *(v27 - 8);
  v86 = v27;
  __chkstk_darwin(v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(a2 + 16) = &_swiftEmptySetSingleton;

  ContinuousClock.now.getter();
  v73 = ContinuousClock.Instant.duration(to:)();
  v31 = v30;
  v32 = sub_100028D40();
  v33 = *(v21 + 16);
  if (a1)
  {
    v33(v26, v32, v89);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v92 = v70;
      *v36 = 136315650;
      v37 = _typeName(_:qualified:)();
      LODWORD(v71) = v35;
      v39 = sub_10002C9C8(v37, v38, &v92);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_10002C9C8(v72, a6, &v92);
      *(v36 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      type metadata accessor for Duration.UnitsFormatStyle.Unit();
      v72 = v31;
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v40);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v41 = v74;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v42 = v77;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v43 = v80;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v81 + 8))(v42, v82);
      (*(v78 + 8))(v41, v79);
      (*(v75 + 8))(v18, v76);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
      v44 = v84;
      Duration.formatted<A>(_:)();
      (*(v83 + 8))(v43, v44);
      v45 = sub_10002C9C8(v90, v91, &v92);

      *(v36 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v34, v71, "[%s] waitForLocalNowPlayingStability<%{public}s> - timed out after: %{public}s", v36, 0x20u);
      swift_arrayDestroy();
    }

    (*(v21 + 8))(v26, v89);
    v46 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v46 - 8) + 104))(v47, enum case for InternalRoutingError.stabilityTimeout(_:), v46);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
  }

  else
  {
    v33(v24, v32, v89);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v92 = v70;
      *v58 = 136315650;
      v59 = _typeName(_:qualified:)();
      LODWORD(v71) = v57;
      v61 = sub_10002C9C8(v59, v60, &v92);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2082;
      *(v58 + 14) = sub_10002C9C8(v72, a6, &v92);
      *(v58 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      type metadata accessor for Duration.UnitsFormatStyle.Unit();
      v72 = v31;
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v62);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v63 = v74;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v64 = v77;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v65 = v80;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v81 + 8))(v64, v82);
      (*(v78 + 8))(v63, v79);
      (*(v75 + 8))(v18, v76);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
      v66 = v84;
      Duration.formatted<A>(_:)();
      (*(v83 + 8))(v65, v66);
      v67 = sub_10002C9C8(v90, v91, &v92);

      *(v58 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v56, v71, "[%s] waitForLocalNowPlayingStability<%{public}s> - stable after: %{public}s", v58, 0x20u);
      swift_arrayDestroy();
    }

    (*(v21 + 8))(v24, v89);
    v49 = 0;
    v51 = 0;
    v53 = 0;
    v55 = 0;
  }

  v88(v49, v51, v53, v55);
  sub_10023DC58(v49, v51, v53, v55);
  return (*(v85 + 8))(v29, v86);
}

uint64_t sub_1002B3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(uint64_t *), uint64_t a10, uint64_t a11)
{
  v66 = a7;
  v93 = a6;
  v89 = a10;
  v90 = a9;
  v16 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  __chkstk_darwin(v16 - 8);
  v85 = &v63 - v17;
  v18 = type metadata accessor for InternalRoutingError();
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v86 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Duration.UnitsFormatStyle();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ContinuousClock.Instant();
  v83 = *(v28 - 8);
  v84 = v28;
  __chkstk_darwin(v28);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.now.getter();
  v82 = v30;
  v81 = ContinuousClock.Instant.duration(to:)();
  v80 = v31;
  v32 = sub_100028D40();
  (*(v25 + 16))(v27, v32, v24);

  sub_10023DBE8(a1, a2, a3, a4);
  v33 = Logger.logObject.getter();
  LODWORD(v30) = static os_log_type_t.default.getter();

  v91 = a2;
  v92 = a3;
  LODWORD(v93) = a4;
  sub_10023DC58(a1, a2, a3, a4);
  v67 = v30;
  if (os_log_type_enabled(v33, v30))
  {
    v64 = v33;
    v65 = v24;
    v34 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v95 = v63;
    *v34 = 136315906;
    v35 = _typeName(_:qualified:)();
    v37 = sub_10002C9C8(v35, v36, &v95);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_10002C9C8(v66, a8, &v95);
    *(v34 + 22) = 2082;
    if (a1)
    {
      v96 = 0;
      v97 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v94, " with error: ");
      HIWORD(v94[1]) = -4864;
      v96 = a1;
      v97 = v91;
      v98 = v92;
      v99 = v93;
      sub_10023DD70();
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 32;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v40 = v94[0];
      v41 = v94[1];
    }

    else
    {
      v41 = 0xE100000000000000;
      v40 = 32;
    }

    v42 = sub_10002C9C8(v40, v41, &v95);

    *(v34 + 24) = v42;
    *(v34 + 32) = 2082;
    sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100450890;
    static Duration.UnitsFormatStyle.Unit.seconds.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1002868A0(v43);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v44 = v68;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v45 = v71;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v46 = v76;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v47 = v69;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v78 + 8))(v46, v79);
    (*(v75 + 8))(v45, v77);
    (*(v70 + 8))(v44, v72);
    sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
    v48 = v74;
    Duration.formatted<A>(_:)();
    (*(v73 + 8))(v47, v48);
    v49 = sub_10002C9C8(v96, v97, &v95);

    *(v34 + 34) = v49;
    v50 = v64;
    _os_log_impl(&_mh_execute_header, v64, v67, "[%s] handleEvent<%{public}s> - finished%{public}sin: %{public}s", v34, 0x2Au);
    swift_arrayDestroy();

    (*(v25 + 8))(v27, v65);
  }

  else
  {

    (*(v25 + 8))(v27, v24);
  }

  v51 = v90;
  v53 = v87;
  v52 = v88;
  v54 = v85;
  v55 = v86;
  if (!a1)
  {
    (*(v87 + 56))(v85, 1, 1, v88);
    goto LABEL_12;
  }

  v96 = a1;
  swift_errorRetain();
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v56 = swift_dynamicCast();
  (*(v53 + 56))(v54, v56 ^ 1u, 1, v52);
  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
LABEL_12:
    sub_1000038A4(v54, &unk_100524EC0, &qword_100457040);
LABEL_13:
    v59 = v91;
    v58 = v92;
    v60 = v93;
    sub_10023DBE8(a1, v91, v92, v93);
    static Duration./ infix(_:_:)();
    sub_10026CEA0(a1, v59, v58, v60, 1, &v96, v61);
    v51(&v96);
    sub_100286E38(&v96);
    return (*(v83 + 8))(v82, v84);
  }

  (*(v53 + 32))(v55, v54, v52);
  if ((InternalRoutingError.isStabilityError.getter() & 1) == 0)
  {
    (*(v53 + 8))(v55, v52);
    goto LABEL_13;
  }

  static Duration./ infix(_:_:)();
  sub_10026CEA0(0, 0, 0, 0, 0, &v96, v57);
  v51(&v96);
  sub_100286E38(&v96);
  (*(v53 + 8))(v55, v52);
  return (*(v83 + 8))(v82, v84);
}

uint64_t sub_1002B40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v84 = a8;
  v83 = a7;
  v11 = v10;
  v88 = a6;
  v85 = a5;
  v86 = a1;
  v87 = a2;
  v14 = type metadata accessor for HostedRoutingSourceSession(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16);
  v21 = &v78 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v78 - v23;
  result = (*(*v10 + 440))(v22);
  v26 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v28 = 0;
    v82 = a10;
    v81 = a9;
    while (1)
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_1002CDCB4(v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v28, v18, type metadata accessor for HostedRoutingSourceSession);
      v29 = *v18 == a3 && v18[1] == a4;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v28;
      result = sub_10002187C(v18, type metadata accessor for HostedRoutingSourceSession);
      if (v27 == v28)
      {
        goto LABEL_10;
      }
    }

    sub_100032E70(v18, v21, type metadata accessor for HostedRoutingSourceSession);
    result = sub_100032E70(v21, v24, type metadata accessor for HostedRoutingSourceSession);
    v39 = *(v24 + 3);
    if (v39)
    {
      v40 = *(v24 + 2);
      v41 = sub_100034D68();
      if (v41[2] && (v42 = sub_10000698C(v40, v39), (v43 & 1) != 0))
      {
        v44 = *(v41[7] + 8 * v42);

        if (*(v44 + 16) == 2)
        {
          v79 = MRRequestDetailsInitiatorRoutePicker;
          v45 = v85;
          v46 = v85[1];
          v78 = *v85;
          v80 = v46;
          v47 = *(v85 + 1);
          v48 = *(v85 + 2);
          aBlock = *v85;
          v91 = v47;
          v92 = v48;
          v93 = *(v85 + 48);
          sub_1002856A4();
          dispatch thunk of CustomStringConvertible.description.getter();
          v49 = objc_allocWithZone(MRRequestDetails);
          v50 = String._bridgeToObjectiveC()();
          v51 = String._bridgeToObjectiveC()();

          v52 = [v49 initWithInitiator:v79 requestID:v50 reason:v51 userInitiated:1];

          sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_10044EC70;
          v54 = v87;
          *(v53 + 32) = v86;
          *(v53 + 40) = v54;
          v55 = objc_allocWithZone(MRGroupTopologyModificationRequest);

          isa = Array._bridgeToObjectiveC()().super.isa;

          v57 = [v55 initWithRequestDetails:v52 type:v83 outputDeviceUIDs:isa];

          [v57 setShouldWaitForUpdatedOutputDevices:1];
          v58 = *(v44 + 88);
          v59 = *v11;
          v83 = v44;
          v60 = *(v59 + 368);
          v79 = v58;
          v61 = v60();
          v62 = *(v45 + 2);
          v94[0] = *(v45 + 1);
          v94[1] = v62;
          v95 = *(v45 + 48);
          v63 = swift_allocObject();
          v64 = *(v45 + 1);
          *(v63 + 56) = *v45;
          v66 = v87;
          v65 = v88;
          *(v63 + 16) = sub_1002D32BC;
          *(v63 + 24) = v65;
          *(v63 + 32) = v86;
          *(v63 + 40) = v66;
          *(v63 + 48) = v11;
          *(v63 + 72) = v64;
          *(v63 + 88) = *(v45 + 2);
          *(v63 + 104) = *(v45 + 48);
          *(v63 + 112) = a3;
          *(v63 + 120) = a4;
          *&v92 = v81;
          *(&v92 + 1) = v63;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v91 = sub_1001BC53C;
          *(&v91 + 1) = v82;
          v67 = _Block_copy(&aBlock);

          sub_10026D080(v94, v89);

          v68 = v79;
          [v79 modifyTopologyWithRequest:v57 withReplyQueue:v61 completion:v67];
          _Block_release(v67);

          return sub_10002187C(v24, type metadata accessor for HostedRoutingSourceSession);
        }
      }

      else
      {
      }

      v69 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v69 - 8) + 104))(v70, enum case for InternalRoutingError.sessionNotFound(_:), v69);

      MRDFastSyncGroupSessionState.rawValue.getter();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      sub_1002D32BC(v77, v71, v73, v75);

      sub_10023DCB0(v72, v74, v76);
      return sub_10002187C(v24, type metadata accessor for HostedRoutingSourceSession);
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_10:

    v30 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for InternalRoutingError.sessionNotFound(_:), v30);

    MRDFastSyncGroupSessionState.rawValue.getter();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_1002D32BC(v38, v32, v34, v36);

    return sub_10023DCB0(v33, v35, v37);
  }

  return result;
}

uint64_t sub_1002B48B8(unint64_t a1, unint64_t a2, __int128 *a3, void (*a4)(void), uint64_t a5)
{
  v113 = a4;
  v110 = *v5;
  v111 = a3;
  v9 = type metadata accessor for Logger();
  v112 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HostedRoutingSourceSession(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v105 - v18;
  __chkstk_darwin(v17);
  v21 = &v105 - v20;
  if (*sub_100037234() == __PAIR128__(a2, a1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v22 = (v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v23 = *(v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v24 = *(v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
    v25 = *(v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
    v22[1] = 0;
    v22[2] = 0;
    *v22 = 0;
    sub_10029A410(v23, v24, v25);
    sub_1002CDC70(v23, v24, v25);
    return (v113)(0, 0, 0, 0);
  }

  v107 = v21;
  v108 = a5;
  v27 = *(*v5 + 440);
  v109 = v5;
  v28 = v27();
  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_13:

    v32 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, enum case for InternalRoutingError.sessionNotFound(_:), v32);

    MRDFastSyncGroupSessionState.rawValue.getter();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v113();

    return sub_10023DCB0(v35, v37, v39);
  }

  v30 = 0;
  while (1)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_58;
    }

    sub_1002CDCB4(v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v30, v16, type metadata accessor for HostedRoutingSourceSession);
    v31 = *v16 == a1 && *(v16 + 1) == a2;
    if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v30;
    sub_10002187C(v16, type metadata accessor for HostedRoutingSourceSession);
    if (v29 == v30)
    {
      goto LABEL_13;
    }
  }

  sub_100032E70(v16, v19, type metadata accessor for HostedRoutingSourceSession);
  v40 = v107;
  result = sub_100032E70(v19, v107, type metadata accessor for HostedRoutingSourceSession);
  v41 = *(v40 + 24);
  if (v41)
  {
    v42 = *(v40 + 16);
    v43 = sub_100034D68();
    if (!v43[2] || (v44 = sub_10000698C(v42, v41), (v45 & 1) == 0))
    {

      v61 = v40;
      v62 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v62 - 8) + 104))(v63, enum case for InternalRoutingError.sessionNotFound(_:), v62);

      MRDFastSyncGroupSessionState.rawValue.getter();
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v113();

      sub_10023DCB0(v65, v67, v69);
      return sub_10002187C(v61, type metadata accessor for HostedRoutingSourceSession);
    }

    v16 = *(v43[7] + 8 * v44);

    v46 = v16[16];
    if (v46 >= 2)
    {
      v70 = v108;
      if (v46 == 2)
      {
        v71 = *(v16 + 6);
        v110 = *(v16 + 7);
        v111 = v71;

        v72 = sub_100298814();
        a2 = v72;
        v19 = (v72 & 0xFFFFFFFFFFFFFF8);
        if (v72 >> 62)
        {
          goto LABEL_60;
        }

        for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v106 = v16;
          if (!i)
          {
            break;
          }

          v74 = 0;
          v112 = _swiftEmptyArrayStorage;
LABEL_29:
          v75 = v74;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v75 >= *(v19 + 2))
              {
                goto LABEL_59;
              }

              v77 = *(a2 + 8 * v75 + 32);
            }

            v78 = v77;
            v74 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              break;
            }

            if ([v77 deviceType] == 1)
            {
              v79 = [v78 uid];
              if (v79)
              {
                v76 = v79;
LABEL_40:
                v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v81 = v80;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v112 = sub_10002AFD0(0, *(v112 + 2) + 1, 1, v112);
                }

                v83 = *(v112 + 2);
                v82 = *(v112 + 3);
                if (v83 >= v82 >> 1)
                {
                  v112 = sub_10002AFD0((v82 > 1), v83 + 1, 1, v112);
                }

                v84 = v112;
                *(v112 + 2) = v83 + 1;
                v85 = &v84[16 * v83];
                *(v85 + 4) = v16;
                *(v85 + 5) = v81;
                if (v74 != i)
                {
                  goto LABEL_29;
                }

                goto LABEL_50;
              }
            }

            else
            {
              v16 = [*(v106 + 11) groupLeader];
              v76 = [v16 uid];

              if (v76)
              {
                goto LABEL_40;
              }
            }

            ++v75;
            if (v74 == i)
            {
              goto LABEL_50;
            }
          }

LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          ;
        }

        v112 = _swiftEmptyArrayStorage;
LABEL_50:

        v91 = (v109 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
        v92 = *(v109 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
        v93 = *(v109 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
        v94 = *(v109 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
        v95 = v110;
        *v91 = v111;
        v91[1] = v95;
        v91[2] = v112;
        sub_10029A410(v92, v93, v94);
        sub_1002CDC70(v92, v93, v94);
        (v113)(0, 0, 0, 0);
      }

      else
      {
        v86 = v111;
        v87 = v111[1];
        v118 = *v111;
        v88 = v111[2];
        v115 = v87;
        v116 = v88;
        v117 = *(v111 + 48);
        v89 = swift_allocObject();
        *(v89 + 16) = v113;
        *(v89 + 24) = v70;
        *(v89 + 32) = a1;
        *(v89 + 40) = a2;
        *(v89 + 48) = v109;
        v90 = v86[1];
        *(v89 + 56) = *v86;
        *(v89 + 72) = v90;
        *(v89 + 88) = v86[2];
        *(v89 + 104) = *(v86 + 48);

        sub_10028BC98(&v118, v114);
        sub_10026D080(&v115, v114);
        sub_1002A4144(v16, sub_1002D3AA4, v89);
      }

      goto LABEL_56;
    }

    v47 = sub_100028D40();
    v48 = v112;
    (*(v112 + 2))(v11, v47, v9);
    v49 = *(v111 + 1);
    v109 = *v111;
    v50 = v111[2];
    v115 = v111[1];
    v116 = v50;
    v117 = *(v111 + 48);

    sub_10026D080(&v115, v114);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    sub_100238E4C(&v115);

    v53 = os_log_type_enabled(v51, v52);
    v106 = v16;
    if (!v53)
    {

      (*(v48 + 1))(v11, v9);
LABEL_55:
      v97 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v97 - 8) + 104))(v98, enum case for InternalRoutingError.sessionNotFound(_:), v97);

      MRDFastSyncGroupSessionState.rawValue.getter();
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v113();

      sub_10023DCB0(v100, v102, v104);
LABEL_56:

      return sub_10002187C(v107, type metadata accessor for HostedRoutingSourceSession);
    }

    LODWORD(v111) = v52;
    v54 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v114[0] = v105;
    *v54 = 136315650;
    v55 = _typeName(_:qualified:)();
    v57 = sub_10002C9C8(v55, v56, v114);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_10002C9C8(v109, v49, v114);
    *(v54 + 22) = 2082;
    v58 = v16[16];
    if (v58 > 1)
    {
      if (v58 != 2)
      {
        v59 = 0x800000010043F170;
        v60 = 0xD000000000000016;
        goto LABEL_54;
      }

      v59 = 0xEA00000000006465;
    }

    else
    {
      if (!v16[16])
      {
        v59 = 0xEB00000000646572;
        v60 = 0x65766F637369642ELL;
LABEL_54:
        v96 = sub_10002C9C8(v60, v59, v114);

        *(v54 + 24) = v96;
        _os_log_impl(&_mh_execute_header, v51, v111, "[%s] handleSetActiveSession<%{public}s> - cannot set entry in state: %{public}s as active session", v54, 0x20u);
        swift_arrayDestroy();

        (*(v112 + 1))(v11, v9);
        goto LABEL_55;
      }

      v59 = 0xEB00000000676E69;
    }

    v60 = 0x7463656E6E6F632ELL;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

void sub_1002B54E4(uint64_t a1, unint64_t a2, uint64_t *a3, int a4, void (*a5)(void), uint64_t a6)
{
  v191 = a6;
  v190 = a5;
  v184 = a4;
  v10 = *v6;
  v187 = type metadata accessor for Logger();
  v186 = *(v187 - 8);
  v11 = __chkstk_darwin(v187);
  v189 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v181 = &v179 - v14;
  __chkstk_darwin(v13);
  v180 = &v179 - v15;
  v16 = type metadata accessor for HostedRoutingItem(0);
  v194 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v18 = (&v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for HostedRoutingSourceSession(0);
  v202 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v182 = &v179 - v24;
  __chkstk_darwin(v23);
  v183 = &v179 - v25;
  v26 = *a3;
  v27 = a3[1];
  v188 = a3;
  v28 = *(v10 + 440);

  v185 = v6;
  v30 = v28(v29);
  v31 = v30;
  v32 = *(v30 + 16);
  v192 = v26;
  v197 = a2;
  v195 = a1;
  isa = v32;
  v196 = v10;
  if (!v32)
  {
    v34 = v27;
LABEL_23:

    v67 = sub_100028D40();
    v68 = v186;
    v69 = v189;
    v70 = v187;
    (*(v186 + 16))(v189, v67, v187);
    v71 = v34;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v188;
    if (v74)
    {
      v76 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v76 = 136315650;
      v77 = _typeName(_:qualified:)();
      v79 = sub_10002C9C8(v77, v78, &aBlock);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2082;
      *(v76 + 14) = sub_10002C9C8(v192, v71, &aBlock);
      *(v76 + 22) = 2082;
      v80 = v195;
      *(v76 + 24) = sub_10002C9C8(v195, v197, &aBlock);
      _os_log_impl(&_mh_execute_header, v72, v73, "[%s] handleSetActiveItem<%{public}s> - creating endpoint for item: %{public}s to set as active session", v76, 0x20u);
      swift_arrayDestroy();
      a2 = v197;

      (*(v68 + 8))(v189, v70);
    }

    else
    {

      (*(v68 + 8))(v69, v70);
      v80 = v195;
    }

    v202 = objc_opt_self();
    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_10044EC70;
    *(v81 + 32) = v80;
    *(v81 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100272B7C();
    v82 = objc_allocWithZone(MRRequestDetails);
    v83 = v80;
    v84 = String._bridgeToObjectiveC()();
    v85 = v192;
    v86 = String._bridgeToObjectiveC()();
    v87 = v71;
    v88 = v75;
    v89 = String._bridgeToObjectiveC()();

    v90 = [v82 initWithName:v84 requestID:v86 reason:v89 userInitiated:1];

    v91 = *(v88 + 2);
    v210 = *(v88 + 1);
    v211 = v91;
    v212 = *(v88 + 48);
    v92 = swift_allocObject();
    v93 = *(v88 + 1);
    *(v92 + 56) = *v88;
    *(v92 + 16) = v185;
    *(v92 + 24) = v85;
    v94 = v190;
    *(v92 + 32) = v87;
    *(v92 + 40) = v94;
    *(v92 + 48) = v191;
    *(v92 + 72) = v93;
    *(v92 + 88) = *(v88 + 2);
    *(v92 + 104) = *(v88 + 48);
    *(v92 + 112) = v83;
    *(v92 + 120) = v197;
    *(v92 + 128) = v184 & 1;
    *(v92 + 136) = v196;
    *&v205 = sub_1002D3E3C;
    *(&v205 + 1) = v92;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v204 = sub_1002BFB00;
    *(&v204 + 1) = &unk_1004C8950;
    v95 = _Block_copy(&aBlock);

    sub_10026D080(&v210, v207);

    v96 = isa;
    [v202 createEndpointWithOutputDeviceUIDs:isa timeout:v90 details:v95 completion:8.0];
    _Block_release(v95);

    return;
  }

  v33 = 0;
  v198 = v30 + ((v202[80] + 32) & ~v202[80]);
  v34 = v27;
  v193 = v27;
  v35 = v202;
  v200 = v22;
  v199 = v30;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    sub_1002CDCB4(v198 + *(v35 + 9) * v33, v22, type metadata accessor for HostedRoutingSourceSession);
    v36 = *(v22 + 4);
    v37 = *(v36 + 16);
    if (v37)
    {
      *&aBlock = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v37, 0);
      v6 = aBlock;
      v38 = v36 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
      v39 = *(v194 + 72);
      do
      {
        sub_1002CDCB4(v38, v18, type metadata accessor for HostedRoutingItem);
        v40 = *v18;
        v41 = v18[1];

        sub_10002187C(v18, type metadata accessor for HostedRoutingItem);
        *&aBlock = v6;
        v43 = v6[2];
        v42 = v6[3];
        if (v43 >= v42 >> 1)
        {
          sub_1000089FC((v42 > 1), v43 + 1, 1);
          v6 = aBlock;
        }

        v6[2] = v43 + 1;
        v44 = &v6[2 * v43];
        v44[4] = v40;
        v44[5] = v41;
        v38 += v39;
        --v37;
      }

      while (v37);
      v34 = v193;
      v10 = v196;
      a2 = v197;
      a1 = v195;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v209[0] = a1;
    v209[1] = a2;
    v22 = v200;
    v31 = v199;
    if (v6[2] == 1)
    {
      if (v6 == &v208)
      {
        break;
      }

      v45 = v6[4] == a1 && v6[5] == a2;
      if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    ++v33;

    sub_1001E6204(v209);
    sub_10002187C(v22, type metadata accessor for HostedRoutingSourceSession);
    v35 = v202;
    if (v33 == isa)
    {
      goto LABEL_23;
    }
  }

  sub_1001E6204(v209);
  v46 = v182;
  sub_100032E70(v22, v182, type metadata accessor for HostedRoutingSourceSession);
  v47 = v183;
  sub_100032E70(v46, v183, type metadata accessor for HostedRoutingSourceSession);
  if (sub_1000325DC())
  {
    v48 = sub_100028D40();
    v49 = v34;
    v50 = v186;
    v51 = v181;
    v52 = v187;
    (*(v186 + 16))(v181, v48, v187);
    v53 = v188;
    v54 = *(v188 + 2);
    v210 = *(v188 + 1);
    v211 = v54;
    v212 = *(v188 + 48);

    sub_10026D080(&v210, &aBlock);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    sub_100238E4C(&v210);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v207[0] = swift_slowAlloc();
      *v57 = 136315650;
      v58 = _typeName(_:qualified:)();
      v60 = sub_10002C9C8(v58, v59, v207);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2082;
      v61 = sub_10002C9C8(v192, v49, v207);

      *(v57 + 14) = v61;
      *(v57 + 22) = 2082;
      v62 = *(v53 + 1);
      aBlock = *v53;
      v63 = *(v53 + 2);
      v204 = v62;
      v205 = v63;
      v206 = *(v53 + 48);
      sub_1002856A4();
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = sub_10002C9C8(v64, v65, v207);

      *(v57 + 24) = v66;
      v47 = v183;
      _os_log_impl(&_mh_execute_header, v55, v56, "[%s] handleSetActiveItem<%{public}s> - interaction: %{public}s is invalid for a picked item on the local session", v57, 0x20u);
      swift_arrayDestroy();

      (*(v50 + 8))(v181, v52);
    }

    else
    {

      (*(v50 + 8))(v51, v52);
    }

    v140 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v142 = v141;
    v143 = &enum case for InternalRoutingError.invalidAction(_:);
LABEL_58:
    (*(*(v140 - 8) + 104))(v142, *v143, v140);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v190();

    sub_10023DCB0(v146, v148, v150);
LABEL_59:
    v151 = v47;
    goto LABEL_60;
  }

  v97 = *(v47 + 24);
  if (!v97)
  {
LABEL_57:

    v140 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v142 = v144;
    v143 = &enum case for InternalRoutingError.sessionNotFound(_:);
    goto LABEL_58;
  }

  v98 = *(v47 + 16);
  v99 = v185;
  v100 = sub_100034D68();
  if (!v100[2] || (v101 = sub_10000698C(v98, v97), (v102 & 1) == 0))
  {

    goto LABEL_57;
  }

  v103 = *(v100[7] + 8 * v101);

  if (v103[16] != 2)
  {

    goto LABEL_57;
  }

  v104 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore;
  v105 = *(**(v99 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 264);

  v106 = v188;
  v107 = v105(v188);
  v109 = v108;

  if (!v109)
  {
    v202 = v103;
    v152 = sub_100028D40();
    v18 = v186;
    v6 = v180;
    v10 = v187;
    (*(v186 + 16))(v180, v152, v187);
    v153 = *(v106 + 2);
    v210 = *(v106 + 1);
    v211 = v153;
    v212 = *(v106 + 48);
    v154 = v193;

    sub_10026D080(&v210, &aBlock);
    v33 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();

    sub_100238E4C(&v210);
    if (os_log_type_enabled(v33, v155))
    {
      v156 = swift_slowAlloc();
      v207[0] = swift_slowAlloc();
      *v156 = 136315650;
      v157 = _typeName(_:qualified:)();
      v159 = sub_10002C9C8(v157, v158, v207);

      *(v156 + 4) = v159;
      *(v156 + 12) = 2082;
      v160 = sub_10002C9C8(v192, v154, v207);

      *(v156 + 14) = v160;
      *(v156 + 22) = 2082;
      v161 = *(v106 + 1);
      aBlock = *v106;
      v162 = *(v106 + 2);
      v204 = v161;
      v205 = v162;
      v206 = *(v106 + 48);
      sub_1002856A4();
      v163 = dispatch thunk of CustomStringConvertible.description.getter();
      v165 = sub_10002C9C8(v163, v164, v207);

      *(v156 + 24) = v165;
      _os_log_impl(&_mh_execute_header, v33, v155, "[%s] handleSetActiveItem<%{public}s> - no prewarmed identifier found for interaction: %{public}s. Failing", v156, 0x20u);
      swift_arrayDestroy();

      (v18[1])(v180, v10);
LABEL_66:
      v47 = v183;
      v166 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v166 - 8) + 104))(v167, enum case for InternalRoutingError.sessionNotFound(_:), v166);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v169 = v168;
      v171 = v170;
      v173 = v172;
      v190();

      sub_10023DCB0(v169, v171, v173);

      goto LABEL_59;
    }

LABEL_65:

    (v18[1])(v6, v10);
    goto LABEL_66;
  }

  v110 = *(**(v99 + v104) + 288);

  v110(v107, v109, v106, v98, v97);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v210 = aBlock;
  v111._countAndFlagsBits = 0xD00000000000001DLL;
  v111._object = 0x800000010043F6C0;
  String.append(_:)(v111);
  v112._countAndFlagsBits = v98;
  v112._object = v97;
  String.append(_:)(v112);
  v113._countAndFlagsBits = 0xD000000000000022;
  v113._object = 0x800000010043F6E0;
  String.append(_:)(v113);
  v114._countAndFlagsBits = v107;
  v114._object = v109;
  String.append(_:)(v114);

  v115._object = 0x800000010043F710;
  v115._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v115);
  v116 = *(v106 + 1);
  aBlock = *v106;
  v117 = *(v106 + 2);
  v204 = v116;
  v205 = v117;
  v206 = *(v106 + 48);
  sub_1002856A4();
  v118._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v118);

  sub_100033F40(v210, *(&v210 + 1));

  v119 = v183;
  if ((v184 & 1) == 0)
  {
    goto LABEL_69;
  }

  v120 = *(v103 + 6);
  v121 = *(v103 + 7);

  v122 = sub_100298814();
  v123 = v122;
  v124 = v122 & 0xFFFFFFFFFFFFFF8;
  if (v122 >> 62)
  {
LABEL_72:
    v125 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v125 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  isa = v120;
  v200 = v121;
  if (!v125)
  {
    v202 = _swiftEmptyArrayStorage;
    goto LABEL_68;
  }

  v120 = 0;
  v202 = _swiftEmptyArrayStorage;
  while (2)
  {
    v126 = v120;
    while (2)
    {
      if ((v123 & 0xC000000000000001) != 0)
      {
        v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v126 >= *(v124 + 16))
        {
          goto LABEL_71;
        }

        v130 = *(v123 + 8 * v126 + 32);
      }

      v131 = v130;
      v120 = (v126 + 1);
      if (__OFADD__(v126, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if ([v130 deviceType] != 1)
      {
        v127 = [*(v103 + 11) groupLeader];
        v121 = v103;
        v128 = [v127 uid];

        v129 = v128;
        v103 = v121;
        if (v129)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v129 = [v131 uid];
      if (!v129)
      {
LABEL_39:

        v126 = (v126 + 1);
        if (v120 == v125)
        {
          goto LABEL_68;
        }

        continue;
      }

      break;
    }

    v121 = v103;
LABEL_48:
    v132 = v129;
    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v134;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v202 = sub_10002AFD0(0, *(v202 + 2) + 1, 1, v202);
    }

    v137 = *(v202 + 2);
    v136 = *(v202 + 3);
    if (v137 >= v136 >> 1)
    {
      v202 = sub_10002AFD0((v136 > 1), v137 + 1, 1, v202);
    }

    v138 = v202;
    *(v202 + 2) = v137 + 1;
    v139 = &v138[16 * v137];
    *(v139 + 4) = v133;
    *(v139 + 5) = v135;
    v103 = v121;
    if (v120 != v125)
    {
      continue;
    }

    break;
  }

LABEL_68:

  v174 = (v185 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v175 = *(v185 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v176 = *(v185 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
  v177 = *(v185 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  v178 = v200;
  *v174 = isa;
  v174[1] = v178;
  v174[2] = v202;
  sub_10029A410(v175, v176, v177);
  sub_1002CDC70(v175, v176, v177);
  v119 = v183;
LABEL_69:
  (v190)(0, 0, 0, 0);

  v151 = v119;
LABEL_60:
  sub_10002187C(v151, type metadata accessor for HostedRoutingSourceSession);
}

void sub_1002B6AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, unint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v186 = a7;
  v191 = a6;
  v192 = a5;
  v185 = a2;
  v184 = a1;
  v189 = *v9;
  v190 = type metadata accessor for Logger();
  v187 = *(v190 - 8);
  v13 = __chkstk_darwin(v190);
  v15 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v183 = &v177 - v17;
  __chkstk_darwin(v16);
  v181 = &v177 - v18;
  v19 = type metadata accessor for HostedRoutingSourceSession(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19 - 8);
  v182 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = (&v177 - v24);
  v26 = __chkstk_darwin(v23);
  v28 = &v177 - v27;
  __chkstk_darwin(v26);
  v30 = &v177 - v29;
  v31 = a8[1];
  v188 = *a8;
  v193 = a8;
  v196 = v31;

  v32 = sub_100037234();
  v33 = *(v32 + 1);
  v62 = *v32 == a3;
  v195 = a9;
  if (v62 && v33 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v57 = sub_100257FC4(), *v57 != v192) || v57[1] != v191) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (*v32 == a3 && *(v32 + 1) == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v34 = v194;
      v35 = *(**(v194 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 264);

      v36 = v193;
      v37 = v35(v193);
      v39 = v38;

      if (v39)
      {
        v40 = swift_allocObject();
        v40[2] = v34;
        v40[3] = v37;
        v40[4] = v39;
        v40[5] = sub_1002D32BC;
        v40[6] = v195;
        v41 = v186;
        v42 = *(*v186 + 208);

        v44 = (v42)(v43);
        v45 = String._bridgeToObjectiveC()();
        v46 = [v44 startEvent:v45 role:1];
        v195 = v37;
        v47 = v34;
        v48 = v46;

        v49 = v42();
        v50 = String._bridgeToObjectiveC()();
        LODWORD(v42) = [v49 startEvent:v50 role:1];

        v51 = *(v36 + 2);
        v197 = *(v36 + 1);
        v198 = v51;
        LOBYTE(v199) = *(v36 + 48);
        v52 = swift_allocObject();
        *(v52 + 16) = v41;
        *(v52 + 24) = v42;
        *(v52 + 28) = v48;
        *(v52 + 32) = v188;
        v54 = v195;
        v53 = v196;
        v55 = *(v36 + 1);
        *(v52 + 88) = *v36;
        *(v52 + 40) = v53;
        *(v52 + 48) = sub_1002D3FA0;
        *(v52 + 56) = v40;
        *(v52 + 64) = v47;
        *(v52 + 72) = v54;
        *(v52 + 80) = v39;
        *(v52 + 104) = v55;
        *(v52 + 120) = *(v36 + 2);
        *(v52 + 136) = *(v36 + 48);
        v56 = v185;
        *(v52 + 144) = v184;
        *(v52 + 152) = v56;
        *(v52 + 160) = v189;

        sub_10026D080(&v197, &v202);

        sub_1002B54E4(v192, v191, v36, 0, sub_1002D40B4, v52);

        return;
      }

      v65 = sub_100028D40();
      v66 = v187;
      v67 = v183;
      v68 = v190;
      (*(v187 + 16))(v183, v65, v190);
      v69 = *(v36 + 2);
      v202 = *(v36 + 1);
      v203 = v69;
      v204 = *(v36 + 48);
      v70 = v196;

      sub_10026D080(&v202, &v197);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      sub_100238E4C(&v202);
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *v73 = 136315650;
        v74 = _typeName(_:qualified:)();
        v76 = sub_10002C9C8(v74, v75, &v201);

        *(v73 + 4) = v76;
        *(v73 + 12) = 2082;
        v77 = sub_10002C9C8(v188, v70, &v201);

        *(v73 + 14) = v77;
        *(v73 + 22) = 2082;
        v78 = *(v36 + 1);
        v197 = *v36;
        v198 = v78;
        v199 = *(v36 + 2);
        v200 = *(v36 + 48);
        sub_1002856A4();
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = sub_10002C9C8(v79, v80, &v201);

        *(v73 + 24) = v81;
        _os_log_impl(&_mh_execute_header, v71, v72, "[%s] handleHandoffFromApplication<%{public}s> - no prewarmed identifier found for interaction: %{public}s -> failing", v73, 0x20u);
        swift_arrayDestroy();

        (*(v66 + 8))(v67, v190);
      }

      else
      {

        (*(v66 + 8))(v67, v68);
      }

      v99 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      v101 = v100;
      v102 = &enum case for InternalRoutingError.sessionNotFound(_:);
    }

    else
    {
      v82 = sub_100028D40();
      v83 = v187;
      v84 = v190;
      (*(v187 + 16))(v15, v82, v190);
      v85 = v193;
      v86 = *(v193 + 2);
      v202 = *(v193 + 1);
      v203 = v86;
      v204 = *(v193 + 48);
      v87 = v196;

      sub_10026D080(&v202, &v197);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      sub_100238E4C(&v202);
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *v90 = 136315650;
        v91 = _typeName(_:qualified:)();
        v93 = sub_10002C9C8(v91, v92, &v201);

        *(v90 + 4) = v93;
        *(v90 + 12) = 2082;
        v94 = sub_10002C9C8(v188, v87, &v201);

        *(v90 + 14) = v94;
        *(v90 + 22) = 2082;
        v95 = *(v85 + 1);
        v197 = *v85;
        v198 = v95;
        v199 = *(v85 + 2);
        v200 = *(v85 + 48);
        sub_1002856A4();
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = sub_10002C9C8(v96, v97, &v201);

        *(v90 + 24) = v98;
        _os_log_impl(&_mh_execute_header, v88, v89, "[%s] handleHandoffFromApplication<%{public}s> - handoff interaction: %{public}s doesn't match any supported direction", v90, 0x20u);
        swift_arrayDestroy();

        (*(v83 + 8))(v15, v190);
      }

      else
      {

        (*(v83 + 8))(v15, v84);
      }

      v99 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      v101 = v103;
      v102 = &enum case for InternalRoutingError.invalidAction(_:);
    }

    (*(*(v99 - 8) + 104))(v101, *v102, v99);
    goto LABEL_32;
  }

  v191 = v32;
  v192 = v30;
  v58 = (*(*v194 + 440))();
  v59 = *(v58 + 16);
  if (!v59)
  {
LABEL_22:

    v63 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v63 - 8) + 104))(v64, enum case for InternalRoutingError.sessionNotFound(_:), v63);

LABEL_32:
    MRDFastSyncGroupSessionState.rawValue.getter();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    sub_1002D32BC(v110, v104, v106, v108);

    sub_10023DCB0(v105, v107, v109);
    return;
  }

  v60 = 0;
  while (1)
  {
    if (v60 >= *(v58 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v61 = *(v20 + 80);
    sub_1002CDCB4(v58 + ((v61 + 32) & ~v61) + *(v20 + 72) * v60, v25, type metadata accessor for HostedRoutingSourceSession);
    v62 = *v25 == a3 && v25[1] == a4;
    if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v60;
    sub_10002187C(v25, type metadata accessor for HostedRoutingSourceSession);
    if (v59 == v60)
    {
      goto LABEL_22;
    }
  }

  sub_100032E70(v25, v28, type metadata accessor for HostedRoutingSourceSession);
  v111 = v192;
  sub_100032E70(v28, v192, type metadata accessor for HostedRoutingSourceSession);
  v112 = *(v111 + 24);
  if (v112)
  {
    v113 = *(v111 + 16);
    v114 = sub_100034D68();
    if (v114[2] && (v115 = sub_10000698C(v113, v112), (v116 & 1) != 0))
    {
      v117 = *(v114[7] + 8 * v115);

      if (*(v117 + 16) == 2)
      {
        v118 = ~v61;
        v185 = v117;
        v119 = [*(v117 + 88) origin];
        if (!v119)
        {
          v141 = v186;
          goto LABEL_58;
        }

        v120 = v119;
        v184 = ~v61;
        v121 = (*(*v186 + 160))();
        sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
        v122 = sub_10024C81C();
        v123 = objc_allocWithZone(MRPlayerPath);
        v124 = v120;
        v125 = String._bridgeToObjectiveC()();
        v126 = [v123 initWithOrigin:v124 bundleIdentifier:v125 player:0];

        v127 = [v122 resolveExistingPlayerPath:v126];
        if (v127)
        {
          v183 = v121;
          if ([v127 isResolved])
          {
            v128 = v183;
            if (v183)
            {
              sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
              v129 = v127;
              v130 = v128;
              v131 = static NSObject.== infix(_:_:)();

              if (v131)
              {

                goto LABEL_51;
              }
            }

            else
            {
              v142 = v127;
            }

            v143 = sub_100028D40();
            v144 = v181;
            (*(v187 + 16))(v181, v143, v190);

            v145 = v127;
            v146 = Logger.logObject.getter();
            v147 = static os_log_type_t.default.getter();
            v179 = v145;

            v178 = v147;
            v180 = v146;
            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v177 = swift_slowAlloc();
              *&v197 = swift_slowAlloc();
              *v148 = 136315650;
              v149 = _typeName(_:qualified:)();
              v151 = sub_10002C9C8(v149, v150, &v197);

              *(v148 + 4) = v151;
              *(v148 + 12) = 2082;
              *(v148 + 14) = sub_10002C9C8(v188, v196, &v197);
              *(v148 + 22) = 2114;
              v152 = v179;
              *(v148 + 24) = v179;
              v153 = v177;
              *v177 = v127;
              v154 = v152;
              v155 = v180;
              _os_log_impl(&_mh_execute_header, v180, v178, "[%s] handleHandoffFromApplication<%{public}s> - inject source player path: %{public}@ into handoff context", v148, 0x20u);
              sub_1000038A4(v153, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();

              (*(v187 + 8))(v181, v190);
              v156 = v152;
            }

            else
            {

              (*(v187 + 8))(v144, v190);
              v156 = v179;
            }

            v157 = v183;
            v141 = v186;
            (*(*v186 + 168))(v127);

LABEL_57:
            v118 = v184;
LABEL_58:
            v158 = *(*v141 + 208);
            v159 = v141;
            v160 = v158();
            v161 = String._bridgeToObjectiveC()();
            LODWORD(v187) = [v160 startEvent:v161 role:1];

            v162 = v158();
            v163 = String._bridgeToObjectiveC()();
            v164 = [v162 startEvent:v163 role:1];

            v165 = v191[1];
            v190 = *v191;
            v191 = v165;
            v166 = v182;
            sub_1002CDCB4(v192, v182, type metadata accessor for HostedRoutingSourceSession);
            v167 = v193;
            v168 = *(v193 + 2);
            v197 = *(v193 + 1);
            v198 = v168;
            LOBYTE(v199) = *(v193 + 48);
            v169 = (v61 + 72) & v118;
            v170 = swift_allocObject();
            *(v170 + 16) = v159;
            v171 = v187;
            *(v170 + 24) = v164;
            *(v170 + 28) = v171;
            v172 = v195;
            v173 = v196;
            *(v170 + 32) = v188;
            *(v170 + 40) = v173;
            *(v170 + 48) = sub_1002D32BC;
            *(v170 + 56) = v172;
            *(v170 + 64) = v194;
            sub_100032E70(v166, v170 + v169, type metadata accessor for HostedRoutingSourceSession);
            v174 = v170 + ((v169 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
            v175 = *(v167 + 1);
            *v174 = *v167;
            *(v174 + 16) = v175;
            *(v174 + 32) = *(v167 + 2);
            *(v174 + 48) = *(v167 + 48);
            *(v170 + ((v169 + v21 + 63) & 0xFFFFFFFFFFFFFFF8)) = v189;

            v176 = v191;

            sub_10026D080(&v197, &v202);
            sub_1002B48B8(v190, v176, v167, sub_1002D410C, v170);

LABEL_46:
            sub_10002187C(v192, type metadata accessor for HostedRoutingSourceSession);
            return;
          }
        }

        else
        {
        }

LABEL_51:
        v141 = v186;
        goto LABEL_57;
      }
    }

    else
    {
    }

    v132 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v132 - 8) + 104))(v133, enum case for InternalRoutingError.sessionNotFound(_:), v132);

    MRDFastSyncGroupSessionState.rawValue.getter();
    v135 = v134;
    v137 = v136;
    v139 = v138;
    sub_1002D32BC(v140, v134, v136, v138);

    sub_10023DCB0(v135, v137, v139);
    goto LABEL_46;
  }

LABEL_60:
  __break(1u);
}

void sub_1002B7F50(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v156 = a2;
  v157 = a4;
  v170 = a1;
  v152 = *v4;
  v6 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v163 = *(v6 - 8);
  v164 = v6;
  v7 = __chkstk_darwin(v6);
  v160 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v8;
  __chkstk_darwin(v7);
  v162 = &v148 - v9;
  v161 = type metadata accessor for RoutingControl.RoutingControlType();
  v159 = *(v161 - 1);
  __chkstk_darwin(v161);
  v11 = (&v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RoutingControl();
  v169 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v168 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v14;
  __chkstk_darwin(v13);
  v16 = &v148 - v15;
  v17 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v148 - v18;
  v20 = a3[1];
  v165 = *a3;
  v155 = a3;
  v21 = sub_100015A78();
  sub_10001D9AC(v21, v19, &qword_100525C00, &unk_1004511A0);
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v19, 1, v22);
  v166 = v20;
  v167 = v12;
  if (v24 == 1)
  {
    sub_1000038A4(v19, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    (*(v169 + 16))(v16, v170, v12);

    v25 = Logger.logObject.getter();
    v26 = v20;
    v27 = static os_log_type_t.default.getter();

    v151 = v27;
    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *&v172 = v150;
      *v28 = 136315650;
      v29 = _typeName(_:qualified:)();
      v149 = v25;
      v31 = sub_10002C9C8(v29, v30, &v172);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10002C9C8(v165, v166, &v172);
      *(v28 + 22) = 2080;
      sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v169 + 8))(v16, v12);
      v35 = sub_10002C9C8(v32, v34, &v172);

      *(v28 + 24) = v35;
      v36 = v149;
      _os_log_impl(&_mh_execute_header, v149, v151, "[%s] handleControl<%s> - handle interaction with: %s", v28, 0x20u);
      swift_arrayDestroy();

      v20 = v166;
    }

    else
    {

      (*(v169 + 8))(v16, v12);
      v20 = v26;
    }

    (*(v23 + 8))(v19, v22);
  }

  RoutingControl.type.getter();
  v37 = v159;
  v38 = v161;
  v39 = (*(v159 + 88))(v11, v161);
  if (v39 == enum case for RoutingControl.RoutingControlType.togglePlayPause(_:))
  {
    (*(v37 + 96))(v11, v38);
    v40 = v162;
    v41 = v163;
    v161 = *(v163 + 32);
    v42 = v164;
    (v161)(v162, v11, v164);
    v43 = v169;
    (*(v169 + 16))(v168, v170, v167);
    v44 = v155;
    v45 = *(v155 + 2);
    v172 = *(v155 + 1);
    v173 = v45;
    v174 = *(v155 + 48);
    (*(v41 + 16))(v160, v40, v42);
    v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v47 = (v154 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = (*(v41 + 80) + v48 + 49) & ~*(v41 + 80);
    v50 = swift_allocObject();
    v51 = v157;
    *(v50 + 16) = sub_1002D32BC;
    *(v50 + 24) = v51;
    (*(v43 + 32))(v50 + v46, v168, v167);
    *(v50 + v47) = v158;
    v52 = v50 + v48;
    *(v52 + 48) = *(v44 + 48);
    v53 = *(v44 + 2);
    *(v52 + 16) = *(v44 + 1);
    *(v52 + 32) = v53;
    *v52 = *v44;
    v54 = v164;
    (v161)(v50 + v49, v160, v164);
    v55 = v166;

    sub_10026D080(&v172, v171);
    v56 = sub_10021F050(_swiftEmptyArrayStorage);
    sub_1002CE274(v170, v156, v165, v55, 2, v56, sub_1002D4508, v50);

    (*(v163 + 8))(v162, v54);
    return;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.seek(_:))
  {
    (*(v37 + 96))(v11, v38);
    v57 = *v11;
    sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044EC70;
    if (kMRMediaRemoteOptionPlaybackPosition)
    {
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v59;
      *(inited + 72) = &type metadata for Double;
      *(inited + 48) = v57;
      v164 = sub_10021F050(inited);
      swift_setDeallocating();
      sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
      v60 = v169;
      v61 = v167;
      (*(v169 + 16))(v168, v170, v167);
      v62 = v155;
      v63 = *(v155 + 2);
      v172 = *(v155 + 1);
      v173 = v63;
      v174 = *(v155 + 48);
      v64 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v65 = (v154 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 71) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      v68 = v157;
      *(v67 + 16) = sub_1002D32BC;
      *(v67 + 24) = v68;
      (*(v60 + 32))(v67 + v64, v168, v61);
      *(v67 + v65) = v158;
      v69 = v67 + v163;
      *(v69 + 48) = *(v62 + 48);
      v70 = *(v62 + 2);
      *(v69 + 16) = *(v62 + 1);
      *(v69 + 32) = v70;
      *v69 = *v62;
      v71 = v156;
      *(v67 + v66) = v156;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
      v72 = v166;

      sub_10026D080(&v172, v171);

      sub_1002CE274(v170, v71, v165, v72, 24, v164, sub_1002D43E8, v67);

LABEL_19:

      return;
    }

    __break(1u);
    goto LABEL_45;
  }

  v73 = v169;
  if (v39 == enum case for RoutingControl.RoutingControlType.skipForward(_:))
  {
    (*(v37 + 96))(v11, v38);
    v74 = *v11;
    sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_10044EC70;
    if (!kMRMediaRemoteOptionSkipInterval)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    *(v75 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v75 + 40) = v76;
    *(v75 + 72) = &type metadata for Double;
    *(v75 + 48) = v74;
    v77 = sub_10021F050(v75);
    swift_setDeallocating();
    sub_1000038A4(v75 + 32, &unk_100527DF0, &unk_100457610);
    v78 = v170;
    v79 = v156;
    v80 = v165;
    v81 = v20;
    v82 = 17;
LABEL_18:
    sub_1002CE274(v78, v79, v80, v81, v82, v77, sub_1002D32BC, v157);
    goto LABEL_19;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.skipBackward(_:))
  {
    (*(v37 + 96))(v11, v38);
    v83 = *v11;
    sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
    v84 = swift_initStackObject();
    *(v84 + 16) = xmmword_10044EC70;
    if (!kMRMediaRemoteOptionSkipInterval)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    *(v84 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v84 + 40) = v85;
    *(v84 + 72) = &type metadata for Double;
    *(v84 + 48) = v83;
    v77 = sub_10021F050(v84);
    swift_setDeallocating();
    sub_1000038A4(v84 + 32, &unk_100527DF0, &unk_100457610);
    v78 = v170;
    v79 = v156;
    v80 = v165;
    v81 = v20;
    v82 = 18;
    goto LABEL_18;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
LABEL_47:
    *&v172 = 0;
    *(&v172 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(96);
    v124._countAndFlagsBits = 91;
    v124._object = 0xE100000000000000;
    String.append(_:)(v124);
    v125._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v125);

    v126._object = 0x800000010043F7C0;
    v126._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v126);
    v127._countAndFlagsBits = v165;
    v127._object = v20;
    String.append(_:)(v127);
    v128._countAndFlagsBits = 0x746E6F63202D203ELL;
    v128._object = 0xED0000203A6C6F72;
    String.append(_:)(v128);
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
    v129._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v129);

    v130._countAndFlagsBits = 0xD00000000000003CLL;
    v130._object = 0x800000010043E270;
    String.append(_:)(v130);
    goto LABEL_48;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
  {
    (*(v37 + 96))(v11, v38);
    v86 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    (*(*(v86 - 8) + 8))(v11, v86);
LABEL_23:
    sub_1002C6FB4(v170, v155, v157);
    return;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.previousTrack(_:))
  {
    v87 = sub_10021F050(_swiftEmptyArrayStorage);
    v88 = v170;
    v89 = v156;
    v90 = v165;
    v91 = v20;
    v92 = 5;
LABEL_28:
    sub_1002CE274(v88, v89, v90, v91, v92, v87, sub_1002D32BC, v157);
    goto LABEL_19;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.nextTrack(_:))
  {
    v87 = sub_10021F050(_swiftEmptyArrayStorage);
    v88 = v170;
    v89 = v156;
    v90 = v165;
    v91 = v20;
    v92 = 4;
    goto LABEL_28;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.play(_:))
  {
    v93 = v167;
    (*(v169 + 16))(v168, v170, v167);
    v94 = v155;
    v95 = *(v155 + 2);
    v172 = *(v155 + 1);
    v173 = v95;
    v174 = *(v155 + 48);
    v96 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v97 = (v154 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v99 = v157;
    *(v98 + 16) = sub_1002D32BC;
    *(v98 + 24) = v99;
    (*(v73 + 32))(v98 + v96, v168, v93);
    *(v98 + v97) = v158;
    v100 = v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v100 + 48) = *(v94 + 48);
    v101 = *(v94 + 2);
    *(v100 + 16) = *(v94 + 1);
    *(v100 + 32) = v101;
    *v100 = *v94;

    sub_10026D080(&v172, v171);
    v102 = sub_10021F050(_swiftEmptyArrayStorage);
    v103 = sub_1002D4848;
    v104 = v170;
    v105 = v156;
    v106 = v165;
    v107 = v20;
    v108 = 0;
LABEL_35:
    sub_1002CE274(v104, v105, v106, v107, v108, v102, v103, v98);

    goto LABEL_19;
  }

  v109 = v167;
  if (v39 == enum case for RoutingControl.RoutingControlType.pause(_:))
  {
    (*(v169 + 16))(v168, v170, v167);
    v110 = v155;
    v111 = *(v155 + 2);
    v172 = *(v155 + 1);
    v173 = v111;
    v174 = *(v155 + 48);
    v112 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v113 = (v154 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v114 = v157;
    *(v98 + 16) = sub_1002D32BC;
    *(v98 + 24) = v114;
    (*(v73 + 32))(v98 + v112, v168, v109);
    *(v98 + v113) = v158;
    v115 = v98 + ((v113 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v115 + 48) = *(v110 + 48);
    v116 = *(v110 + 2);
    *(v115 + 16) = *(v110 + 1);
    *(v115 + 32) = v116;
    *v115 = *v110;

    sub_10026D080(&v172, v171);
    v102 = sub_10021F050(_swiftEmptyArrayStorage);
    v103 = sub_1002D4624;
    v104 = v170;
    v105 = v156;
    v106 = v165;
    v107 = v20;
    v108 = 1;
    goto LABEL_35;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.stop(_:))
  {
    (*(v169 + 16))(v168, v170, v167);
    v117 = v155;
    v118 = *(v155 + 2);
    v172 = *(v155 + 1);
    v173 = v118;
    v174 = *(v155 + 48);
    v119 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v120 = (v154 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v121 = v157;
    *(v98 + 16) = sub_1002D32BC;
    *(v98 + 24) = v121;
    (*(v73 + 32))(v98 + v119, v168, v109);
    *(v98 + v120) = v158;
    v122 = v98 + ((v120 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v122 + 48) = *(v117 + 48);
    v123 = *(v117 + 2);
    *(v122 + 16) = *(v117 + 1);
    *(v122 + 32) = v123;
    *v122 = *v117;

    sub_10026D080(&v172, v171);
    v102 = sub_10021F050(_swiftEmptyArrayStorage);
    v103 = sub_1002D44D4;
    v104 = v170;
    v105 = v156;
    v106 = v165;
    v107 = v20;
    v108 = 3;
    goto LABEL_35;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.rewind(_:))
  {
    goto LABEL_49;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.fastForward(_:))
  {
    *&v172 = 0;
    *(&v172 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(86);
    v136._countAndFlagsBits = 91;
    v136._object = 0xE100000000000000;
    String.append(_:)(v136);
    v137._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v137);

    v138._object = 0x800000010043F7C0;
    v138._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v138);
    v139._countAndFlagsBits = v165;
    v139._object = v20;
    String.append(_:)(v139);
    v140._countAndFlagsBits = 0xD000000000000041;
    v140._object = 0x800000010043F810;
    String.append(_:)(v140);
    goto LABEL_48;
  }

  if (v39 == enum case for RoutingControl.RoutingControlType.tvRemote(_:))
  {
    *&v172 = 0;
    *(&v172 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    v141._countAndFlagsBits = 91;
    v141._object = 0xE100000000000000;
    String.append(_:)(v141);
    v142._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v142);

    v143._object = 0x800000010043F7C0;
    v143._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v143);
    v144._countAndFlagsBits = v165;
    v144._object = v20;
    String.append(_:)(v144);
    v145._countAndFlagsBits = 0x746E6F63202D203ELL;
    v145._object = 0xED0000203A6C6F72;
    String.append(_:)(v145);
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
    v146._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v146);

    v147._countAndFlagsBits = 0xD00000000000002FLL;
    v147._object = 0x800000010043F7E0;
    String.append(_:)(v147);
    while (1)
    {
LABEL_48:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_49:
      *&v172 = 0;
      *(&v172 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(81);
      v131._countAndFlagsBits = 91;
      v131._object = 0xE100000000000000;
      String.append(_:)(v131);
      v132._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v132);

      v133._object = 0x800000010043F7C0;
      v133._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v133);
      v134._countAndFlagsBits = v165;
      v134._object = v20;
      String.append(_:)(v134);
      v135._countAndFlagsBits = 0xD00000000000003CLL;
      v135._object = 0x800000010043F860;
      String.append(_:)(v135);
    }
  }

  if (v39 != enum case for RoutingControl.RoutingControlType.favorite(_:) && v39 != enum case for RoutingControl.RoutingControlType.unfavorite(_:))
  {
    if (v39 == enum case for RoutingControl.RoutingControlType.mute(_:))
    {
      goto LABEL_23;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  sub_1002C6A28(v170, v156, v155, sub_1002D32BC, v157);
}

void sub_1002B9434(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v184 = a4;
  v182 = a2;
  v187 = a1;
  v6 = *v4;
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v173 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v171 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v167 = &v166 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v166 - v13;
  v15 = __chkstk_darwin(v12);
  v170 = &v166 - v16;
  v17 = __chkstk_darwin(v15);
  v166 = &v166 - v18;
  __chkstk_darwin(v17);
  v168 = &v166 - v19;
  v183 = type metadata accessor for RoutingControl();
  v178 = *(v183 - 8);
  __chkstk_darwin(v183);
  v177 = v20;
  v185 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RoutingControl.Target();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v180 = (&v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v26 = &v166 - v25;
  v27 = type metadata accessor for RoutingControl.RoutingControlType();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v166 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v6;
  v32 = *(v6 + 368);
  v186 = v4;
  v172 = v32(v29);
  v33 = *a3;
  v179 = *(a3 + 8);
  RoutingControl.type.getter();
  if ((*(v28 + 88))(v31, v27) != enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
LABEL_59:
    (*(v28 + 8))(v31, v27);
    aBlock = 0;
    v189 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v159._countAndFlagsBits = 91;
    v159._object = 0xE100000000000000;
    String.append(_:)(v159);
    v160._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v160);

    v161._countAndFlagsBits = 0xD00000000000001ELL;
    v161._object = 0x800000010043E5A0;
    String.append(_:)(v161);
    v162._countAndFlagsBits = v33;
    v162._object = v179;
    String.append(_:)(v162);
    v163._countAndFlagsBits = 0x746E6F63202D203ELL;
    v163._object = 0xED0000203A6C6F72;
    String.append(_:)(v163);
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
    v164._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v164);

    v165._object = 0x800000010043E5C0;
    v165._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v165);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_60;
  }

  v169 = v14;
  (*(v28 + 96))(v31, v27);
  v34 = *v31;
  v35 = dispatch thunk of VolumeGroup.copy()();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v37 = v187;
  RoutingControl.target.getter();
  v38 = *(v22 + 88);
  v176 = v22 + 88;
  v175 = v38;
  v39 = v38(v26, v21);
  v40 = enum case for RoutingControl.Target.session(_:);
  v181 = v22;
  v182 = v21;
  v41 = v26;
  v42 = v36;
  (*(v22 + 8))(v41, v21);
  v174 = v40;
  if (v39 == v40)
  {
    dispatch thunk of VolumeGroup.groupVolumeLevel.getter();
    if (v43 == 0.0)
    {
      *(v36 + 16) = 1;
    }
  }

  v44 = *(a3 + 32);
  v194[0] = *(a3 + 16);
  v194[1] = v44;
  v195 = *(a3 + 48);
  v45 = v178;
  v46 = v183;
  (*(v178 + 16))(v185, v37, v183);
  v47 = (*(v45 + 80) + 96) & ~*(v45 + 80);
  v48 = (v177 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = v42;
  v50 = swift_allocObject();
  v51 = *(a3 + 16);
  *(v50 + 24) = *a3;
  v33 = v35;
  v52 = v185;
  *(v50 + 16) = v186;
  *(v50 + 40) = v51;
  *(v50 + 56) = *(a3 + 32);
  *(v50 + 72) = *(a3 + 48);
  v53 = v184;
  *(v50 + 80) = sub_1002D32BC;
  *(v50 + 88) = v53;
  v54 = *(v45 + 32);
  v27 = v45 + 32;
  v54(v50 + v47, v52, v46);
  *(v50 + v48) = v35;
  v185 = v50;
  *(v50 + v28) = v49;

  sub_10026D080(v194, &aBlock);

  v55 = v180;
  RoutingControl.target.getter();
  v31 = v182;
  v56 = v175(v55, v182);
  if (v56 == v174)
  {
    (*(v181 + 96))(v55, v31);
    v58 = *v55;
    v57 = v55[1];
    v59 = sub_100037234();
    if (v58 == *v59 && v57 == *(v59 + 1))
    {
      goto LABEL_55;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v31 = (*(*v186 + 440))();
      v60 = *(v31 + 2);
      v61 = v173;
      v33 = v170;
      if (v60)
      {
        v27 = 0;
        while (1)
        {
          if (v27 >= *(v31 + 2))
          {
            __break(1u);
            goto LABEL_52;
          }

          sub_1002CDCB4(&v31[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v27], v33, type metadata accessor for HostedRoutingSourceSession);
          v62 = *v33 == v58 && v33[1] == v57;
          if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v27;
          sub_10002187C(v33, type metadata accessor for HostedRoutingSourceSession);
          if (v60 == v27)
          {
            goto LABEL_18;
          }
        }

        v94 = v166;
        sub_100032E70(v33, v166, type metadata accessor for HostedRoutingSourceSession);
        v27 = v168;
        sub_100032E70(v94, v168, type metadata accessor for HostedRoutingSourceSession);
        v31 = *(v27 + 24);
        if (!v31)
        {
          goto LABEL_57;
        }

        v95 = *(v27 + 16);
        v96 = sub_100034D68();
        if (v96[2] && (v97 = sub_10000698C(v95, v31), (v98 & 1) != 0))
        {
          v99 = *(v96[7] + 8 * v97);

          if (*(v99 + 16) == 2)
          {
            dispatch thunk of VolumeGroup.apply(groupVolume:)();
            v186 = *(v99 + 88);
            RoutingControl.identifier.getter();
            aBlock = 0;
            v189 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            aBlock = 0xD00000000000001CLL;
            v189 = 0x800000010043E5E0;
            v100._countAndFlagsBits = v58;
            v100._object = v57;
            String.append(_:)(v100);

            v101._countAndFlagsBits = 62;
            v101._object = 0xE100000000000000;
            String.append(_:)(v101);
            v102 = objc_allocWithZone(MRRequestDetails);
            v103 = String._bridgeToObjectiveC()();
            v104 = String._bridgeToObjectiveC()();

            v105 = String._bridgeToObjectiveC()();

            v106 = [v102 initWithName:v103 requestID:v104 reason:v105];

            v107 = swift_allocObject();
            v108 = v172;
            v107[2] = v172;
            v107[3] = sub_1002D32BC;
            v109 = v185;
            v107[4] = v184;
            v107[5] = sub_1002D4DF0;
            v107[6] = v109;
            v192 = sub_1002D4EDC;
            v193 = v107;
            aBlock = _NSConcreteStackBlock;
            v189 = 1107296256;
            v190 = sub_1001BC53C;
            v191 = &unk_1004C8F40;
            v110 = _Block_copy(&aBlock);
            v111 = v108;

            v112 = v111;

            v113 = v186;
            LODWORD(v114) = v34;
            [v186 setVolume:v106 details:v112 queue:v110 completion:v114];
            _Block_release(v110);

            v115 = v168;
            goto LABEL_47;
          }
        }

        else
        {
        }

        v141 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
        swift_allocError();
        (*(*(v141 - 8) + 104))(v142, enum case for InternalRoutingError.sessionNotFound(_:), v141);
        MRDFastSyncGroupSessionState.rawValue.getter();
        v144 = v143;
        v146 = v145;
        v148 = v147;
        sub_1002D32BC(v149, v143, v145, v147);

        sub_10023DCB0(v144, v146, v148);

        v115 = v27;
LABEL_47:
        sub_10002187C(v115, type metadata accessor for HostedRoutingSourceSession);
        goto LABEL_48;
      }

LABEL_18:

      v63 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v63 - 8) + 104))(v64, enum case for InternalRoutingError.sessionNotFound(_:), v63);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      sub_1002D32BC(v71, v65, v67, v69);

      sub_10023DCB0(v66, v68, v70);
      goto LABEL_48;
    }

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
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v179 = v35;
  if (v56 == enum case for RoutingControl.Target.item(_:))
  {
    (*(v181 + 96))(v55, v31);
    v33 = *v55;
    v31 = v55[1];
    v28 = sub_100258614(*v55, v31, v72, v73);
    v27 = v74;
    v77 = sub_1002586E4(v33, v31, v75, v76);
    v78 = sub_100037234();
    v79 = v173;
    v80 = v171;
    if (v28 == *v78 && v27 == *(v78 + 1))
    {
      goto LABEL_56;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v182 = v77;
      v183 = v49;
      v81 = (*(*v186 + 440))();
      v82 = *(v81 + 16);
      if (v82)
      {
        v83 = 0;
        while (1)
        {
          if (v83 >= *(v81 + 16))
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          sub_1002CDCB4(v81 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v83, v80, type metadata accessor for HostedRoutingSourceSession);
          v84 = *v80 == v28 && v80[1] == v27;
          if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v83;
          sub_10002187C(v80, type metadata accessor for HostedRoutingSourceSession);
          if (v82 == v83)
          {
            goto LABEL_32;
          }
        }

        v116 = v80;
        v117 = v167;
        sub_100032E70(v116, v167, type metadata accessor for HostedRoutingSourceSession);
        v118 = v169;
        sub_100032E70(v117, v169, type metadata accessor for HostedRoutingSourceSession);
        v119 = *(v118 + 24);
        if (!v119)
        {
          goto LABEL_58;
        }

        v120 = *(v118 + 16);

        v121 = sub_100034D68();
        if (v121[2] && (v122 = sub_10000698C(v120, v119), (v123 & 1) != 0))
        {
          v124 = *(v121[7] + 8 * v122);

          if (*(v124 + 16) == 2)
          {
            dispatch thunk of VolumeGroup.apply(volume:to:)();
            v186 = *(v124 + 88);
            v125 = String._bridgeToObjectiveC()();

            RoutingControl.identifier.getter();
            aBlock = 0;
            v189 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            aBlock = 0xD00000000000001CLL;
            v189 = 0x800000010043E5E0;
            v126._countAndFlagsBits = v33;
            v126._object = v31;
            String.append(_:)(v126);

            v127._countAndFlagsBits = 62;
            v127._object = 0xE100000000000000;
            String.append(_:)(v127);
            v128 = objc_allocWithZone(MRRequestDetails);
            v129 = String._bridgeToObjectiveC()();
            v130 = String._bridgeToObjectiveC()();

            v131 = String._bridgeToObjectiveC()();

            v132 = [v128 initWithName:v129 requestID:v130 reason:v131];

            v133 = swift_allocObject();
            v134 = v172;
            v133[2] = v172;
            v133[3] = sub_1002D32BC;
            v135 = v185;
            v133[4] = v184;
            v133[5] = sub_1002D4DF0;
            v133[6] = v135;
            v192 = sub_1002D50EC;
            v193 = v133;
            aBlock = _NSConcreteStackBlock;
            v189 = 1107296256;
            v190 = sub_1001BC53C;
            v191 = &unk_1004C8EF0;
            v136 = _Block_copy(&aBlock);
            v137 = v134;

            v138 = v137;

            v139 = v186;
            LODWORD(v140) = v34;
            [v186 setOutputDeviceVolume:v125 outputDevice:v132 details:v138 queue:v136 completion:v140];
            _Block_release(v136);

            v115 = v169;
            goto LABEL_47;
          }
        }

        else
        {
        }

        v150 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
        swift_allocError();
        (*(*(v150 - 8) + 104))(v151, enum case for InternalRoutingError.sessionNotFound(_:), v150);
        MRDFastSyncGroupSessionState.rawValue.getter();
        v153 = v152;
        v155 = v154;
        v157 = v156;
        sub_1002D32BC(v158, v152, v154, v156);

        sub_10023DCB0(v153, v155, v157);

        v115 = v118;
        goto LABEL_47;
      }

LABEL_32:

      v85 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v85 - 8) + 104))(v86, enum case for InternalRoutingError.sessionNotFound(_:), v85);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v88 = v87;
      v90 = v89;
      v92 = v91;
      sub_1002D32BC(v93, v87, v89, v91);

      sub_10023DCB0(v88, v90, v92);
LABEL_48:

      return;
    }

    goto LABEL_54;
  }

LABEL_60:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1002BA928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v31 = a3;
  v8 = type metadata accessor for HostedRoutingItem(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for HostedRoutingSourceSession(0) - 8;
  __chkstk_darwin(v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(a1 + 16);
  if (v29)
  {
    v16 = 0;
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    v27 = v18;
    v28 = v17;
    do
    {
      sub_1002CDCB4(v17 + v18 * v16, v15, type metadata accessor for HostedRoutingSourceSession);
      result = *v15;
      v20 = *v15 == v30 && v15[1] == v31;
      if (v20 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v21 = 0;
        v22 = v15[4];
        v23 = *(v22 + 16);
        while (v23 != v21)
        {
          if (v21 >= *(v22 + 16))
          {
            __break(1u);
            return result;
          }

          sub_1002CDCB4(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v11, type metadata accessor for HostedRoutingItem);
          if (*v11 == a4 && v11[1] == a5)
          {
            sub_10002187C(v11, type metadata accessor for HostedRoutingItem);
LABEL_20:
            sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
            return 1;
          }

          ++v21;
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = sub_10002187C(v11, type metadata accessor for HostedRoutingItem);
          if (v25)
          {
            goto LABEL_20;
          }
        }
      }

      ++v16;
      sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
      v17 = v28;
      v18 = v27;
    }

    while (v16 != v29);
  }

  return 0;
}

uint64_t sub_1002BABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v30 = a3;
  v8 = type metadata accessor for HostedRoutingItem(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for HostedRoutingSourceSession(0) - 8;
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v16 = 0;
  v17 = *(v13 + 80);
  v27 = *(v13 + 72);
  v28 = a1 + ((v17 + 32) & ~v17);
  while (1)
  {
    sub_1002CDCB4(v28 + v27 * v16, v15, type metadata accessor for HostedRoutingSourceSession);
    result = *v15;
    if (*v15 == v29 && v15[1] == v30)
    {
      break;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      break;
    }

LABEL_4:
    ++v16;
    sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
    if (v16 == v26)
    {
      return 0;
    }
  }

  v20 = 0;
  v21 = v15[4];
  v22 = *(v21 + 16);
  while (1)
  {
    if (v22 == v20)
    {
      sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
      return 1;
    }

    if (v20 >= *(v21 + 16))
    {
      break;
    }

    sub_1002CDCB4(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v11, type metadata accessor for HostedRoutingItem);
    if (*v11 == a4 && v11[1] == a5)
    {
      sub_10002187C(v11, type metadata accessor for HostedRoutingItem);
      goto LABEL_4;
    }

    ++v20;
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = sub_10002187C(v11, type metadata accessor for HostedRoutingItem);
    if (v24)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002BAE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for HostedRoutingItem(0);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for HostedRoutingSourceSession(0) - 8;
  __chkstk_darwin(v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(a1 + 16);
  if (v40)
  {
    v17 = 0;
    v18 = *(v14 + 80);
    v38 = *(v14 + 72);
    v39 = a1 + ((v18 + 32) & ~v18);
    v35 = a4;
    v36 = a5;
    v33 = a2;
    v34 = a3;
    v32 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      sub_1002CDCB4(v39 + v38 * v17, v16, type metadata accessor for HostedRoutingSourceSession);
      v19 = *v16 == a2 && v16[1] == a3;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v20 = v16[4];
        v21 = *(v20 + 16);
        if (v21)
        {
          v43 = _swiftEmptyArrayStorage;
          sub_1000089FC(0, v21, 0);
          v22 = v43;
          v23 = v20 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
          v24 = *(v37 + 72);
          do
          {
            sub_1002CDCB4(v23, v12, type metadata accessor for HostedRoutingItem);
            v25 = *v12;
            v26 = v12[1];

            sub_10002187C(v12, type metadata accessor for HostedRoutingItem);
            v43 = v22;
            v28 = *(v22 + 2);
            v27 = *(v22 + 3);
            if (v28 >= v27 >> 1)
            {
              sub_1000089FC((v27 > 1), v28 + 1, 1);
              v22 = v43;
            }

            *(v22 + 2) = v28 + 1;
            v29 = &v22[16 * v28];
            *(v29 + 4) = v25;
            *(v29 + 5) = v26;
            v23 += v24;
            --v21;
          }

          while (v21);
          a4 = v35;
          a5 = v36;
          a2 = v33;
          a3 = v34;
          v16 = v32;
        }

        else
        {
          v22 = _swiftEmptyArrayStorage;
        }

        v42[0] = a4;
        v42[1] = a5;
        if (*(v22 + 2) == 1)
        {
          if (v22 == &v41 || (*(v22 + 4) == a4 ? (v30 = *(v22 + 5) == a5) : (v30 = 0), v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {

            sub_1001E6204(v42);
            sub_10002187C(v16, type metadata accessor for HostedRoutingSourceSession);
            return 1;
          }
        }

        sub_1001E6204(v42);
      }

      ++v17;
      sub_10002187C(v16, type metadata accessor for HostedRoutingSourceSession);
    }

    while (v17 != v40);
  }

  return 0;
}

uint64_t sub_1002BB218(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1002BB468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  while (1)
  {
    sub_1002CDCB4(v11, v9, type metadata accessor for HostedRoutingSourceSession);
    v14 = *v9 == a2 && v9[1] == a3;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10002187C(v9, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_4;
    }

    v13 = *(v9 + *(v6 + 48));
    sub_10002187C(v9, type metadata accessor for HostedRoutingSourceSession);
    if ((v13 & 1) == 0)
    {
      return 1;
    }

LABEL_4:
    v11 += v12;
    if (!--v10)
    {
      return 0;
    }
  }
}

double sub_1002BB5E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v36 = a6;
  v39 = a12;
  v38 = a11;
  v37 = a10;
  v35 = a9;
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v41 = *(v42 - 8);
  v22 = __chkstk_darwin(v42);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (*(*a3 + 368))(v22);
  v25 = a8[1];
  v48 = *a8;
  v26 = a8[2];
  v46[0] = v25;
  v46[1] = v26;
  v47 = *(a8 + 48);
  v27 = swift_allocObject();
  v28 = a8[1];
  *(v27 + 72) = *a8;
  *(v27 + 16) = a2;
  *(v27 + 24) = a4;
  v29 = v36;
  *(v27 + 32) = a5;
  *(v27 + 40) = v29;
  *(v27 + 48) = a7;
  *(v27 + 56) = a1;
  *(v27 + 64) = a3;
  *(v27 + 88) = v28;
  *(v27 + 104) = a8[2];
  *(v27 + 120) = *(a8 + 48);
  v30 = v37;
  *(v27 + 128) = v35;
  *(v27 + 136) = v30;
  *(v27 + 144) = v38;
  *(v27 + 152) = v39;
  aBlock[4] = sub_1002D3E84;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C89A0;
  v31 = _Block_copy(aBlock);
  swift_errorRetain();
  v32 = a1;

  sub_10028BC98(&v48, v44);
  sub_10026D080(v46, v44);

  static DispatchQoS.unspecified.getter();
  v44[0] = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v40;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v43 + 8))(v21, v19);
  (*(v41 + 8))(v24, v42);

  return result;
}

void sub_1002BBA10(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, char *a6, uint64_t a7, __int128 *a8, void (*a9)(_BYTE *, uint64_t, uint64_t, __n128), char *a10, unsigned __int8 a11, uint64_t a12)
{
  v263 = a8;
  v262 = a7;
  v266 = a5;
  v267 = a3;
  v16 = a12;
  v253 = type metadata accessor for DispatchWorkItemFlags();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v250 = &v233[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v251 = type metadata accessor for DispatchQoS();
  v249 = *(v251 - 8);
  __chkstk_darwin(v251);
  v248 = &v233[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v255 = type metadata accessor for DispatchTime();
  v247 = *(v255 - 8);
  v19 = __chkstk_darwin(v255);
  v246 = &v233[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v254 = &v233[-v21];
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v256 = &v233[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v261 = &v233[-v27];
  v28 = __chkstk_darwin(v26);
  v244 = &v233[-v29];
  v30 = __chkstk_darwin(v28);
  v243 = &v233[-v31];
  v32 = __chkstk_darwin(v30);
  v242 = &v233[-v33];
  v34 = __chkstk_darwin(v32);
  v36 = &v233[-v35];
  __chkstk_darwin(v34);
  v38 = &v233[-v37];
  v264 = a2;
  v265 = a4;
  if (a1)
  {
    v39 = v23;
    v40 = v22;
    swift_getErrorValue();
    v41 = v268;
    v42 = v269;
    swift_errorRetain();
    if ((sub_100248E9C(v41, v42) & 1) == 0)
    {
      v85 = sub_100028D40();
      (*(v39 + 16))(v38, v85, v40);
      swift_errorRetain();

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v88 = 136315650;
        v89 = _typeName(_:qualified:)();
        v91 = sub_10002C9C8(v89, v90, &aBlock);

        *(v88 + 4) = v91;
        *(v88 + 12) = 2082;
        *(v88 + 14) = sub_10002C9C8(v264, v267, &aBlock);
        *(v88 + 22) = 2114;
        swift_errorRetain();
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v88 + 24) = v92;
        v93 = v263;
        *v263 = v92;
        _os_log_impl(&_mh_execute_header, v86, v87, "[%s] handleSetActiveItem<%{public}s> - create endpoint failed with error: %{public}@", v88, 0x20u);
        sub_1000038A4(v93, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      (*(v39 + 8))(v38, v40);
      swift_errorRetain();
      MRDFastSyncGroupSessionState.rawValue.getter();
      v110 = v109;
      v112 = v111;
      v114 = v113;
      v265();

      sub_10023DCB0(v110, v112, v114);

      return;
    }

    v22 = v40;
    v23 = v39;
    a2 = v264;
  }

  v260 = a6;
  v43 = sub_100028D40();
  v44 = *(v23 + 16);
  v258 = v43;
  v257 = v23 + 16;
  v259 = v44;
  v44(v36);
  v45 = a6;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  v48 = os_log_type_enabled(v46, v47);
  v245 = v45;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v239 = v46;
    v50 = v49;
    v238 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    *&aBlock = v240;
    *v50 = 136315650;
    v51 = _typeName(_:qualified:)();
    v52 = v22;
    v54 = sub_10002C9C8(v51, v53, &aBlock);
    LODWORD(v237) = v47;
    v55 = a2;
    v56 = v54;
    v57 = v267;

    *(v50 + 4) = v56;
    v16 = a12;
    *(v50 + 12) = 2082;
    *(v50 + 14) = sub_10002C9C8(v55, v57, &aBlock);
    *(v50 + 22) = 2114;
    *(v50 + 24) = v45;
    v58 = v260;
    v59 = v238;
    *v238 = v260;
    v60 = v45;
    v61 = v239;
    _os_log_impl(&_mh_execute_header, v239, v237, "[%s] handleSetActiveItem<%{public}s> - created endpoint: %{public}@", v50, 0x20u);
    sub_1000038A4(v59, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v62 = *(v23 + 8);
    v63 = v52;
    v62(v36, v52);
  }

  else
  {
    v64 = v22;
    v58 = v260;

    v62 = *(v23 + 8);
    v63 = v64;
    v62(v36, v64);
  }

  v65 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore;
  v66 = *(**(v262 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 264);

  v67 = v263;
  v68 = v66(v263);
  v70 = v69;

  if (!v70)
  {
    v94 = v256;
    (v259)(v256, v258, v63);
    v95 = v67[1];
    v278 = *v67;
    v96 = v67[2];
    v275 = v95;
    v276 = v96;
    v277 = *(v67 + 48);

    sub_10028BC98(&v278, &aBlock);
    sub_10026D080(&v275, &aBlock);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    sub_1001E6204(&v278);
    sub_100238E4C(&v275);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v262 = v63;
      v100 = v67;
      v101 = v99;
      v274 = swift_slowAlloc();
      *v101 = 136315650;
      v102 = _typeName(_:qualified:)();
      v104 = sub_10002C9C8(v102, v103, &v274);

      *(v101 + 4) = v104;
      *(v101 + 12) = 2082;
      *(v101 + 14) = sub_10002C9C8(v264, v267, &v274);
      *(v101 + 22) = 2082;
      v105 = v100[1];
      aBlock = *v100;
      v271 = v105;
      v272 = v100[2];
      v273 = *(v100 + 48);
      sub_1002856A4();
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v108 = sub_10002C9C8(v106, v107, &v274);

      *(v101 + 24) = v108;
      _os_log_impl(&_mh_execute_header, v97, v98, "[%s] handleSetActiveItem<%{public}s> - no prewarmed identifier found for interaction: %{public}s. Failing", v101, 0x20u);
      swift_arrayDestroy();

      v62(v94, v262);
    }

    else
    {

      v62(v94, v63);
    }

    v115 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v115 - 8) + 104))(v116, enum case for InternalRoutingError.sessionNotFound(_:), v115);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    goto LABEL_57;
  }

  v256 = v65;
  v241 = v16;
  v71 = v261;
  if (!v58 || (v72 = [v245 outputDevices]) == 0)
  {
LABEL_53:

    (v259)(v71, v258, v63);
    v213 = v67[1];
    v278 = *v67;
    v214 = v67[2];
    v275 = v213;
    v276 = v214;
    v277 = *(v67 + 48);

    sub_10028BC98(&v278, &aBlock);
    sub_10026D080(&v275, &aBlock);
    v215 = Logger.logObject.getter();
    v216 = static os_log_type_t.error.getter();

    sub_1001E6204(&v278);
    sub_100238E4C(&v275);
    if (os_log_type_enabled(v215, v216))
    {
      v217 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v262 = v63;
      v274 = v218;
      *v217 = 136315650;
      v219 = _typeName(_:qualified:)();
      v221 = sub_10002C9C8(v219, v220, &v274);

      *(v217 + 4) = v221;
      *(v217 + 12) = 2082;
      *(v217 + 14) = sub_10002C9C8(v264, v267, &v274);
      *(v217 + 22) = 2082;
      v222 = v67[1];
      aBlock = *v67;
      v271 = v222;
      v272 = v67[2];
      v273 = *(v67 + 48);
      sub_1002856A4();
      v223 = dispatch thunk of CustomStringConvertible.description.getter();
      v225 = sub_10002C9C8(v223, v224, &v274);

      *(v217 + 24) = v225;
      _os_log_impl(&_mh_execute_header, v215, v216, "[%s] handleSetActiveItem<%{public}s> - formed endpoint for interaction: %{public}s has no group identifier. Failing", v217, 0x20u);
      swift_arrayDestroy();

      v226 = v71;
      v227 = v262;
    }

    else
    {

      v226 = v71;
      v227 = v63;
    }

    v62(v226, v227);
    v228 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v228 - 8) + 104))(v229, enum case for InternalRoutingError.sessionNotFound(_:), v228);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v118 = v230;
    v120 = v231;
    v122 = v232;
LABEL_57:
    v265();

    sub_10023DCB0(v118, v120, v122);
    return;
  }

  v73 = v72;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v74 >> 62))
  {
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_52:

    goto LABEL_53;
  }

LABEL_12:
  if ((v74 & 0xC000000000000001) != 0)
  {
    v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v75 = *(v74 + 32);
  }

  v76 = v75;

  v77 = [v76 groupID];

  if (!v77)
  {
    goto LABEL_53;
  }

  v237 = v62;
  v260 = v23;
  v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v261 = v78;

  v79 = v245;
  v80 = [v245 designatedGroupLeader];
  v239 = v68;
  if (!v80)
  {
    v259 = a9;
    v260 = a10;
    v84 = v70;
    v83 = v256;
    goto LABEL_28;
  }

  v81 = v80;
  v82 = [v80 supportsMultiplayer];
  v83 = v256;
  if (v82)
  {
    v259 = a9;
LABEL_19:
    v260 = a10;
    v84 = v70;

LABEL_28:
    LODWORD(v245) = a11;
    v123 = v262;
    v124 = *(**&v83[v262] + 288);

    v125 = v261;

    v124(v68, v84, v67, v240, v125);

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v126._object = 0x800000010043F730;
    v126._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v126);
    v127 = v264;
    v128._countAndFlagsBits = v264;
    v129 = v267;
    v128._object = v267;
    String.append(_:)(v128);
    v130._countAndFlagsBits = 0xD000000000000022;
    v130._object = 0x800000010043F750;
    String.append(_:)(v130);
    sub_100033F40(aBlock, *(&aBlock + 1));

    v131 = static String.nanoIDFourChar()();
    v257 = v131;
    v133 = v132;
    v256 = v132;
    v134 = swift_allocObject();
    v258 = v134;
    swift_weakInit();
    v135 = v67[1];
    v278 = *v67;
    v136 = v67[2];
    v275 = v135;
    v276 = v136;
    v277 = *(v67 + 48);
    v137 = v129;
    v138 = v123;
    v139 = swift_allocObject();
    v140 = v67[1];
    *(v139 + 88) = *v67;
    *(v139 + 16) = v134;
    *(v139 + 24) = v131;
    *(v139 + 32) = v133;
    v141 = v265;
    v142 = v266;
    *(v139 + 40) = v265;
    *(v139 + 48) = v142;
    v143 = v260;
    *(v139 + 56) = v259;
    *(v139 + 64) = v143;
    *(v139 + 72) = v127;
    *(v139 + 80) = v137;
    *(v139 + 104) = v140;
    *(v139 + 120) = v67[2];
    *(v139 + 136) = *(v67 + 48);
    *(v139 + 144) = v68;
    *(v139 + 152) = v84;
    v238 = v84;
    LODWORD(v245) = v245 & 1;
    *(v139 + 160) = v245;
    v144 = v241;
    *(v139 + 168) = v241;
    v145 = swift_allocObject();
    *(v145 + 16) = v127;
    *(v145 + 24) = v137;
    v146 = v67[1];
    *(v145 + 32) = *v67;
    *(v145 + 48) = v146;
    *(v145 + 64) = v67[2];
    *(v145 + 80) = *(v67 + 48);
    *(v145 + 88) = v141;
    *(v145 + 96) = v266;
    *(v145 + 104) = v144;
    v147 = swift_allocObject();
    *(v147 + 16) = sub_1002D3ED0;
    *(v147 + 24) = v139;
    v148 = sub_100297768();

    sub_10028BC98(&v278, &aBlock);
    sub_10026D080(&v275, &aBlock);

    sub_10028BC98(&v278, &aBlock);
    sub_10026D080(&v275, &aBlock);

    v149 = v256;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v148;
    v151 = v147;
    v152 = v257;
    sub_100285D14(sub_1002253D8, v151, v257, v149, isUniquelyReferenced_nonNull_native);
    *(v138 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = aBlock;

    v244 = (*(*v138 + 368))(v153);
    v154 = v246;
    static DispatchTime.now()();
    + infix(_:_:)();
    v247 = *(v247 + 8);
    (v247)(v154, v255);
    v155 = swift_allocObject();
    swift_weakInit();
    v156 = swift_allocObject();
    v156[2] = v155;
    v156[3] = v152;
    v156[4] = v149;
    v156[5] = sub_1002D3F24;
    v156[6] = v145;
    *&v272 = sub_1002D5050;
    *(&v272 + 1) = v156;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v271 = sub_100003D98;
    *(&v271 + 1) = &unk_1004C8A68;
    v157 = _Block_copy(&aBlock);

    v158 = v248;
    static DispatchQoS.unspecified.getter();
    v274 = _swiftEmptyArrayStorage;
    sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v159 = v250;
    v160 = v253;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v161 = v254;
    v162 = v244;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v157);

    (*(v252 + 8))(v159, v160);
    (*(v249 + 8))(v158, v251);
    (v247)(v161, v255);

    sub_1002BDAF0(v258, v257, v256, v265, v266, v259, v260, v264, v267, v263, v239, v238, v245, v241);

    return;
  }

  v163 = [v79 origin];
  v164 = v63;
  if (v163)
  {
    v165 = v163;
    v166 = [objc_opt_self() server];
    v167 = [v166 nowPlayingServer];

    v168 = [v167 originClientForOrigin:v165];
    if (v168 && (v169 = [v168 deviceInfo], v168, v169))
    {
      v170 = [v169 senderDefaultGroupUID];
      if (v170)
      {
        v244 = v165;
        v238 = v70;
        v171 = v170;
        v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v174 = v173;

        if (v172 == v240 && v174 == v261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }

        else
        {
          v235 = v172;
          (v259)(v242, v258, v63);

          v191 = Logger.logObject.getter();
          v192 = static os_log_type_t.default.getter();

          v234 = v192;
          v236 = v191;
          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            *&aBlock = swift_slowAlloc();
            *v193 = 136315906;
            v194 = _typeName(_:qualified:)();
            v196 = sub_10002C9C8(v194, v195, &aBlock);

            *(v193 + 4) = v196;
            *(v193 + 12) = 2082;
            *(v193 + 14) = sub_10002C9C8(v264, v267, &aBlock);
            *(v193 + 22) = 2082;
            v197 = v261;

            v198 = sub_10002C9C8(v240, v197, &aBlock);

            *(v193 + 24) = v198;
            *(v193 + 32) = 2080;
            v199 = v235;
            *(v193 + 34) = sub_10002C9C8(v235, v174, &aBlock);
            v200 = v236;
            _os_log_impl(&_mh_execute_header, v236, v234, "[%s] handleSetActiveItem<%{public}s> - switch groupIdentifier: %{public}s with defaultGroupIdentifier: %s", v193, 0x2Au);
            swift_arrayDestroy();

            v237(v242, v164);

            v240 = v199;
          }

          else
          {

            v237(v242, v63);

            v240 = v235;
          }

          v261 = v174;
        }

        v201 = v243;
        (v259)(v243, v258, v164);

        v202 = Logger.logObject.getter();
        v203 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v202, v203))
        {
          v204 = swift_slowAlloc();
          v259 = swift_slowAlloc();
          *&aBlock = v259;
          *v204 = 136315394;
          v205 = _typeName(_:qualified:)();
          v207 = sub_10002C9C8(v205, v206, &aBlock);
          v208 = v202;
          v209 = v267;

          *(v204 + 4) = v207;
          *(v204 + 12) = 2082;
          *(v204 + 14) = sub_10002C9C8(v264, v209, &aBlock);
          _os_log_impl(&_mh_execute_header, v208, v203, "[%s] handleSetActiveItem<%{public}s> - remove item from parent group", v204, 0x16u);
          swift_arrayDestroy();

          v210 = v243;
        }

        else
        {

          v210 = v201;
        }

        v237(v210, v164);
        v67 = v263;
        v70 = v238;
        v259 = a9;
        v211 = String._bridgeToObjectiveC()();
        *&v272 = MRDFastSyncGroupSessionState.rawValue.getter;
        *(&v272 + 1) = 0;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v271 = sub_1001BC53C;
        *(&v271 + 1) = &unk_1004C8A90;
        v212 = _Block_copy(&aBlock);
        [v245 removeOutputDeviceFromParentGroup:v211 queue:0 completion:v212];

        _Block_release(v212);
        v81 = v211;
        v68 = v239;
        v83 = v256;
        goto LABEL_19;
      }
    }

    else
    {
      v169 = v165;
    }
  }

  v175 = v244;
  (v259)(v244, v258, v63);

  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v178 = 136315394;
    v179 = _typeName(_:qualified:)();
    v181 = sub_10002C9C8(v179, v180, &aBlock);

    *(v178 + 4) = v181;
    *(v178 + 12) = 2082;
    *(v178 + 14) = sub_10002C9C8(v264, v267, &aBlock);
    _os_log_impl(&_mh_execute_header, v176, v177, "[%s] handleSetActiveItem<%{public}s> - no default group identifier for non-multiplayer device", v178, 0x16u);
    swift_arrayDestroy();
  }

  v237(v175, v164);
  v182 = v265;
  v183 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  swift_allocError();
  (*(*(v183 - 8) + 104))(v184, enum case for InternalRoutingError.sessionNotFound(_:), v183);
  MRDFastSyncGroupSessionState.rawValue.getter();
  v186 = v185;
  v188 = v187;
  v190 = v189;
  v182();

  sub_10023DCB0(v186, v188, v190);
}

uint64_t sub_1002BDAF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, _BYTE *a12, unsigned __int8 a13, uint64_t a14)
{
  v254 = a8;
  v260 = a7;
  v259 = a6;
  v251 = a3;
  v250 = a2;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v255 = &v228[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v253 = &v228[-v21];
  v22 = __chkstk_darwin(v20);
  v242 = &v228[-v23];
  v24 = __chkstk_darwin(v22);
  v244 = &v228[-v25];
  v26 = __chkstk_darwin(v24);
  v248 = &v228[-v27];
  __chkstk_darwin(v26);
  v246 = &v228[-v28];
  v29 = type metadata accessor for HostedRoutingItem(0);
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = &v228[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v228[-v34];
  v241 = type metadata accessor for HostedRoutingSourceSession(0);
  v257 = *(v241 - 8);
  v36 = __chkstk_darwin(v241);
  v245 = &v228[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v243 = &v228[-v39];
  v40 = __chkstk_darwin(v38);
  v42 = &v228[-v41];
  v43 = __chkstk_darwin(v40);
  v256 = &v228[-v44];
  __chkstk_darwin(v43);
  v46 = &v228[-v45];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v258 = result;
  if (!result)
  {
    return result;
  }

  v238 = a14;
  v252 = a9;
  v48 = v258;
  v49 = (*(*v258 + 440))(result);
  v50 = *(v49 + 16);
  if (!v50)
  {
LABEL_15:

    v56 = sub_100028D40();
    v57 = v255;
    (*(v17 + 16))(v255, v56, v16);
    v58 = v252;

    v59 = v260;

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *&v261 = swift_slowAlloc();
      *v62 = 136315650;
      v63 = _typeName(_:qualified:)();
      v65 = sub_10002C9C8(v63, v64, &v261);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2082;
      *(v62 + 14) = sub_10002C9C8(v254, v58, &v261);
      *(v62 + 22) = 2082;
      *(v62 + 24) = sub_10002C9C8(v259, v59, &v261);
      _os_log_impl(&_mh_execute_header, v60, v61, "[%s] handleSetActiveItem<%{public}s> - still waiting for session containing item: %{public}s", v62, 0x20u);
      swift_arrayDestroy();

      return (*(v17 + 8))(v255, v16);
    }

    else
    {

      return (*(v17 + 8))(v57, v16);
    }
  }

  v51 = 0;
  v229 = a13;
  v230 = a12;
  v233 = a11;
  v235 = a10;
  v52 = v49 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
  v249 = v46;
  v240 = v17;
  v247 = v16;
  v236 = a4;
  v234 = a5;
  v239 = v49;
  v232 = v50;
  v231 = v52;
LABEL_4:
  if (v51 >= *(v49 + 16))
  {
    goto LABEL_81;
  }

  v237 = v51 + 1;
  sub_1002CDCB4(v52 + *(v257 + 72) * v51, v42, type metadata accessor for HostedRoutingSourceSession);
  v48 = 0;
  v53 = *(v42 + 4);
  v17 = *(v53 + 16);
  while (1)
  {
    if (v17 == v48)
    {
      sub_10002187C(v42, type metadata accessor for HostedRoutingSourceSession);
      v51 = v237;
      v17 = v240;
      v16 = v247;
      v49 = v239;
      v52 = v231;
      if (v237 == v232)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }

    if (v48 >= *(v53 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v54 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v16 = *(v30 + 72);
    sub_1002CDCB4(v53 + v54 + v16 * v48, v35, type metadata accessor for HostedRoutingItem);
    if (*v35 == v259 && v35[1] == v260)
    {
      break;
    }

    ++v48;
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10002187C(v35, type metadata accessor for HostedRoutingItem);
    if (v46)
    {
      goto LABEL_18;
    }
  }

  sub_10002187C(v35, type metadata accessor for HostedRoutingItem);
LABEL_18:

  v66 = v256;
  sub_100032E70(v42, v256, type metadata accessor for HostedRoutingSourceSession);
  v17 = v249;
  sub_100032E70(v66, v249, type metadata accessor for HostedRoutingSourceSession);
  if ((sub_1000325DC() & 1) == 0)
  {
    v85 = *v17;
    v86 = *(v17 + 8);
    v87 = v230;
    if ((*v17 != v233 || v86 != v230) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v158 = sub_100028D40();
      v159 = v240;
      v160 = v246;
      v161 = v247;
      (*(v240 + 16))(v246, v158, v247);
      v162 = v243;
      sub_1002CDCB4(v17, v243, type metadata accessor for HostedRoutingSourceSession);
      v163 = v252;

      v164 = v260;

      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v165, v166))
      {
        v167 = v162;
        v168 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        *&v261 = v257;
        *v168 = 136316162;
        v169 = _typeName(_:qualified:)();
        v171 = sub_10002C9C8(v169, v170, &v261);

        *(v168 + 4) = v171;
        *(v168 + 12) = 2082;
        *(v168 + 14) = sub_10002C9C8(v254, v163, &v261);
        *(v168 + 22) = 2082;
        *(v168 + 24) = sub_10002C9C8(v233, v87, &v261);
        *(v168 + 32) = 2082;
        *(v168 + 34) = sub_10002C9C8(v259, v164, &v261);
        *(v168 + 42) = 2082;
        sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession, &unk_100452428);
        v172 = v167;
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v175 = v174;
        sub_10002187C(v172, type metadata accessor for HostedRoutingSourceSession);
        v176 = sub_10002C9C8(v173, v175, &v261);

        *(v168 + 44) = v176;
        _os_log_impl(&_mh_execute_header, v165, v166, "[%s] handleSetActiveItem<%{public}s> - still waiting for session: %{public}s because item: %{public}s is still in original session: %{public}s", v168, 0x34u);
        swift_arrayDestroy();

        (*(v159 + 8))(v246, v247);
      }

      else
      {

        sub_10002187C(v162, type metadata accessor for HostedRoutingSourceSession);
        (*(v159 + 8))(v160, v161);
      }

      goto LABEL_33;
    }

    v256 = v86;
    v257 = v85;
    v88 = *(v17 + 32);
    v89 = *(v88 + 16);
    v90 = _swiftEmptyArrayStorage;
    if (v89)
    {
      *&v261 = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v89, 0);
      v90 = v261;
      v91 = v88 + v54;
      do
      {
        sub_1002CDCB4(v91, v33, type metadata accessor for HostedRoutingItem);
        v93 = *v33;
        v92 = v33[1];

        sub_10002187C(v33, type metadata accessor for HostedRoutingItem);
        *&v261 = v90;
        v95 = v90[2];
        v94 = v90[3];
        if (v95 >= v94 >> 1)
        {
          sub_1000089FC((v94 > 1), v95 + 1, 1);
          v90 = v261;
        }

        v90[2] = v95 + 1;
        v96 = &v90[2 * v95];
        v96[4] = v93;
        v96[5] = v92;
        v91 += v16;
        --v89;
      }

      while (v89);
      v17 = v249;
    }

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044EC70;
    *(inited + 32) = v259;
    v112 = inited + 32;
    *(inited + 40) = v260;
    v113 = sub_100034D74(v90, inited);
    swift_setDeallocating();

    sub_1001E6204(v112);
    v114 = v240;
    v115 = v236;
    if ((v113 & 1) == 0)
    {
      v140 = sub_100028D40();
      v141 = v248;
      v142 = v247;
      (*(v114 + 16))(v248, v140, v247);
      v143 = v245;
      sub_1002CDCB4(v17, v245, type metadata accessor for HostedRoutingSourceSession);
      v144 = v252;

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *&v261 = swift_slowAlloc();
        *v147 = 136315906;
        v148 = _typeName(_:qualified:)();
        v150 = sub_10002C9C8(v148, v149, &v261);

        *(v147 + 4) = v150;
        *(v147 + 12) = 2082;
        *(v147 + 14) = sub_10002C9C8(v254, v144, &v261);
        *(v147 + 22) = 2082;
        v151 = *v143;
        v152 = v143[1];

        sub_10002187C(v143, type metadata accessor for HostedRoutingSourceSession);
        v153 = sub_10002C9C8(v151, v152, &v261);

        *(v147 + 24) = v153;
        *(v147 + 32) = 2082;
        v17 = v249;
        v154 = Array.description.getter();
        v156 = v155;

        v157 = sub_10002C9C8(v154, v156, &v261);

        *(v147 + 34) = v157;
        _os_log_impl(&_mh_execute_header, v145, v146, "[%s] handleSetActiveItem<%{public}s> - still waiting because session: %{public}s contains multiple items: %{public}s", v147, 0x2Au);
        swift_arrayDestroy();

        (*(v240 + 8))(v248, v247);
      }

      else
      {

        sub_10002187C(v143, type metadata accessor for HostedRoutingSourceSession);
        (*(v114 + 8))(v141, v142);
      }

      goto LABEL_77;
    }

    v116 = *(v17 + 24);
    if (!v116)
    {
      v177 = sub_100028D40();
      v178 = v242;
      v179 = v247;
      (*(v114 + 16))(v242, v177, v247);
      v180 = v235;
      v181 = v235[1];
      v269 = *v235;
      v182 = v235[2];
      v266 = v181;
      v267 = v182;
      v268 = *(v235 + 48);
      v183 = v252;

      sub_10028BC98(&v269, &v261);
      sub_10026D080(&v266, &v261);
      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.debug.getter();

      sub_1001E6204(&v269);
      sub_100238E4C(&v266);
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *v186 = 136315650;
        v187 = _typeName(_:qualified:)();
        v189 = sub_10002C9C8(v187, v188, &v265);

        *(v186 + 4) = v189;
        *(v186 + 12) = 2080;
        *(v186 + 14) = sub_10002C9C8(v254, v183, &v265);
        *(v186 + 22) = 2080;
        v190 = v180[1];
        v261 = *v180;
        v262 = v190;
        v263 = v180[2];
        v264 = *(v180 + 48);
        sub_1002856A4();
        v191 = dispatch thunk of CustomStringConvertible.description.getter();
        v193 = sub_10002C9C8(v191, v192, &v265);

        *(v186 + 24) = v193;
        _os_log_impl(&_mh_execute_header, v184, v185, "[%s] handleSetActiveItem<%s> - session is not endpoint sourced. Continuing to wait to handle interaction: %s", v186, 0x20u);
        swift_arrayDestroy();

        v17 = v249;

        (*(v114 + 8))(v242, v247);
      }

      else
      {

        (*(v114 + 8))(v178, v179);
      }

      goto LABEL_77;
    }

    v117 = *(v17 + 16);
    v118 = sub_100034D68();
    v119 = v235;
    if (v118[2])
    {
      v120 = sub_10000698C(v117, v116);
      v121 = v244;
      if (v122)
      {
        v46 = *(v118[7] + 8 * v120);

        if (*(v46 + 16) == 2)
        {
          if (v229)
          {
            v123 = *(v46 + 56);
            v259 = *(v46 + 48);
            v257 = v123;

            v124 = sub_100298814();
            v48 = v124;
            v16 = v124 & 0xFFFFFFFFFFFFFF8;
            if (v124 >> 62)
            {
              goto LABEL_84;
            }

            for (i = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v126 = 0;
              v260 = _swiftEmptyArrayStorage;
LABEL_43:
              v127 = v126;
              while (1)
              {
                if ((v48 & 0xC000000000000001) != 0)
                {
                  v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v127 >= *(v16 + 16))
                  {
                    goto LABEL_83;
                  }

                  v130 = *(v48 + 8 * v127 + 32);
                }

                v131 = v130;
                v126 = v127 + 1;
                if (__OFADD__(v127, 1))
                {
                  break;
                }

                if ([v130 deviceType] == 1)
                {
                  v132 = [v131 uid];
                  if (v132)
                  {
                    v129 = v132;
LABEL_54:
                    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v135 = v134;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v260 = sub_10002AFD0(0, *(v260 + 2) + 1, 1, v260);
                    }

                    v137 = *(v260 + 2);
                    v136 = *(v260 + 3);
                    if (v137 >= v136 >> 1)
                    {
                      v260 = sub_10002AFD0((v136 > 1), v137 + 1, 1, v260);
                    }

                    v138 = v260;
                    *(v260 + 2) = v137 + 1;
                    v139 = &v138[16 * v137];
                    *(v139 + 4) = v133;
                    *(v139 + 5) = v135;
                    v17 = v249;
                    if (v126 != i)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_86;
                  }
                }

                else
                {
                  v128 = [*(v46 + 88) groupLeader];
                  v129 = [v128 uid];

                  v17 = v249;
                  if (v129)
                  {
                    goto LABEL_54;
                  }
                }

                ++v127;
                if (v126 == i)
                {
                  goto LABEL_86;
                }
              }

LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              ;
            }

            v260 = _swiftEmptyArrayStorage;
LABEL_86:

            v221 = (v258 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
            v222 = *(v258 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
            v223 = *(v258 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
            v224 = *(v258 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
            v225 = v257;
            *v221 = v259;
            v221[1] = v225;
            v221[2] = v260;
            sub_10029A410(v222, v223, v224);
            sub_1002CDC70(v222, v223, v224);
            v115 = v236;
          }

          v226 = v258;
          *&v261 = sub_100297768();
          v227 = v251;

          sub_10027DB8C(0, 0, v250, v227);
          *(v226 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v261;

          v115(0, 0, 0, 0);

          goto LABEL_76;
        }
      }

      else
      {
      }
    }

    else
    {

      v121 = v244;
    }

    v194 = sub_100028D40();
    (*(v114 + 16))(v121, v194, v247);
    v195 = v119[1];
    v269 = *v119;
    v196 = v119[2];
    v266 = v195;
    v267 = v196;
    v268 = *(v119 + 48);
    v197 = v252;

    sub_10028BC98(&v269, &v261);
    sub_10026D080(&v266, &v261);
    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.error.getter();

    sub_1001E6204(&v269);
    sub_100238E4C(&v266);
    if (os_log_type_enabled(v198, v199))
    {
      v200 = v119;
      v201 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      *v201 = 136315650;
      v202 = _typeName(_:qualified:)();
      v204 = sub_10002C9C8(v202, v203, &v265);

      *(v201 + 4) = v204;
      *(v201 + 12) = 2082;
      *(v201 + 14) = sub_10002C9C8(v254, v197, &v265);
      *(v201 + 22) = 2082;
      v205 = v200[1];
      v261 = *v200;
      v262 = v205;
      v263 = v200[2];
      v264 = *(v200 + 48);
      sub_1002856A4();
      v206 = dispatch thunk of CustomStringConvertible.description.getter();
      v208 = sub_10002C9C8(v206, v207, &v265);

      *(v201 + 24) = v208;
      v115 = v236;
      _os_log_impl(&_mh_execute_header, v198, v199, "[%s] handleSetActiveItem<%{public}s> - endpoint sourced session has no connected endpoint, Failing interaction: %{public}s", v201, 0x20u);
      swift_arrayDestroy();

      (*(v114 + 8))(v244, v247);
    }

    else
    {

      (*(v114 + 8))(v121, v247);
    }

    v209 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v209 - 8) + 104))(v210, enum case for InternalRoutingError.sessionNotFound(_:), v209);

    MRDFastSyncGroupSessionState.rawValue.getter();
    v212 = v211;
    v214 = v213;
    v216 = v215;
    v218 = v217;
    v219 = v258;
    *&v261 = sub_100297768();
    v220 = v251;

    sub_10027DB8C(0, 0, v250, v220);
    *(v219 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v261;

    v115(v212, v214, v216, v218);

    sub_10023DCB0(v214, v216, v218);
LABEL_76:

LABEL_77:
    v110 = v17;
    return sub_10002187C(v110, type metadata accessor for HostedRoutingSourceSession);
  }

  v67 = sub_100028D40();
  v68 = v240;
  v69 = v253;
  v70 = v247;
  (*(v240 + 16))(v253, v67, v247);
  v71 = v235;
  v72 = v235[1];
  v269 = *v235;
  v73 = v235[2];
  v266 = v72;
  v267 = v73;
  v268 = *(v235 + 48);
  v74 = v252;

  sub_10028BC98(&v269, &v261);
  sub_10026D080(&v266, &v261);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  sub_1001E6204(&v269);
  sub_100238E4C(&v266);
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    *v77 = 136315650;
    v78 = _typeName(_:qualified:)();
    v80 = sub_10002C9C8(v78, v79, &v265);

    *(v77 + 4) = v80;
    *(v77 + 12) = 2082;
    *(v77 + 14) = sub_10002C9C8(v254, v74, &v265);
    *(v77 + 22) = 2082;
    v81 = v71[1];
    v261 = *v71;
    v262 = v81;
    v263 = v71[2];
    v264 = *(v71 + 48);
    sub_1002856A4();
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = sub_10002C9C8(v82, v83, &v265);

    *(v77 + 24) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "[%s] handleSetActiveItem<%{public}s> - interaction: %{public}s is an illogical action for a picked item on the local session", v77, 0x20u);
    swift_arrayDestroy();

    (*(v68 + 8))(v253, v70);
  }

  else
  {

    (*(v68 + 8))(v69, v70);
  }

  v97 = v236;
  v98 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  swift_allocError();
  (*(*(v98 - 8) + 104))(v99, enum case for InternalRoutingError.invalidAction(_:), v98);
  MRDFastSyncGroupSessionState.rawValue.getter();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = v258;
  *&v261 = sub_100297768();
  v109 = v251;

  sub_10027DB8C(0, 0, v250, v109);
  *(v108 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v261;

  v97(v101, v103, v105, v107);

  sub_10023DCB0(v103, v105, v107);

LABEL_33:
  v110 = v249;
  return sub_10002187C(v110, type metadata accessor for HostedRoutingSourceSession);
}

uint64_t sub_1002BF760(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100028D40();
  (*(v10 + 16))(v12, v13, v9);
  v14 = *(a3 + 16);
  v46[0] = *a3;
  v15 = *(a3 + 32);
  v44[0] = v14;
  v44[1] = v15;
  v45 = *(a3 + 48);

  sub_10028BC98(v46, v41);
  sub_10026D080(v44, v41);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  sub_1001E6204(v46);
  sub_100238E4C(v44);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = a4;
    v43 = v20;
    *v19 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, &v43);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_10002C9C8(v39, a2, &v43);
    *(v19 + 22) = 2082;
    v24 = *(a3 + 16);
    v41[0] = *a3;
    v41[1] = v24;
    v41[2] = *(a3 + 32);
    v42 = *(a3 + 48);
    sub_1002856A4();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = sub_10002C9C8(v25, v26, &v43);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] handleSetActiveItem<%{public}s> - interaction: %{public}s hit timeout", v19, 0x20u);
    swift_arrayDestroy();
    a4 = v38;

    (*(v10 + 8))(v12, v37);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v28 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, enum case for InternalRoutingError.timedOut(_:), v28);
  MRDFastSyncGroupSessionState.rawValue.getter();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a4();

  return sub_10023DCB0(v31, v33, v35);
}

void sub_1002BFB00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_1002BFBA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, void *a13, __int128 *a14, uint64_t a15)
{
  v54 = a8;
  v56 = a3;
  v21 = type metadata accessor for Logger();
  v58 = *(v21 - 8);
  v59 = v21;
  v22 = __chkstk_darwin(v21);
  v57 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*a5 + 208);
  v60 = *a5 + 208;
  v25 = (v24)(v22);
  v26 = v25;
  if (a1)
  {
    v52 = a10;
    v53 = a11;
    v27 = _convertErrorToNSError(_:)();
    v55 = a4;
    v28 = v27;
    [v26 endEventWithID:a6 error:v27];

    v29 = v55;
    v30 = v24();
    [v30 endEventWithID:a7];

    swift_errorRetain();
    v31 = v56;
    sub_10023DC40(a2, v56, v29);
    v32 = sub_100028D40();
    (*(v58 + 16))(v57, v32, v59);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = v24;
    if (os_log_type_enabled(v33, v34))
    {
      v51 = v34;
      v36 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v36 = 136315650;
      v37 = _typeName(_:qualified:)();
      v39 = sub_10002C9C8(v37, v38, &v61);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_10002C9C8(v54, a9, &v61);
      *(v36 + 22) = 2082;
      v40 = v24();
      v41 = [v40 report];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_10002C9C8(v42, v44, &v61);
      v29 = v55;

      *(v36 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v33, v51, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v36, 0x20u);
      swift_arrayDestroy();

      v35 = v24;
      v31 = v56;
    }

    v46 = (*(v58 + 8))(v57, v59);
    v47 = v52;
    v48 = (v35)(v46);
    [v48 finalizeWithCompletion:0];

    swift_errorRetain();
    sub_10023DC40(a2, v31, v29);
    (v47)(a1, a2, v31, v29);

    sub_10023DCB0(a2, v31, v29);

    sub_10023DCB0(a2, v31, v29);
  }

  else
  {
    [v25 endEventWithID:a6 error:0];

    v49 = v24();
    [v49 endEventWithID:a7];

    sub_1002C0020(a13, a5, a14, a10, a11);
  }
}

void sub_1002C0020(void *a1, uint64_t a2, __int128 *a3, void (*a4)(void), uint64_t a5)
{
  v198 = a5;
  v197 = a4;
  v9 = *v5;
  v188 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v188);
  v11 = &v180[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 1);
  v14 = __chkstk_darwin(v12);
  v199 = &v180[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v192 = &v180[-v17];
  v18 = __chkstk_darwin(v16);
  v186 = &v180[-v19];
  v20 = __chkstk_darwin(v18);
  v184 = &v180[-v21];
  v22 = __chkstk_darwin(v20);
  v183 = &v180[-v23];
  __chkstk_darwin(v22);
  v25 = &v180[-v24];
  v26 = *a3;
  v27 = *(a3 + 1);

  v28 = sub_100028D40();
  v200 = v13;
  v29 = v13[2];
  v193 = v28;
  v201 = v12;
  v195 = (v13 + 2);
  v194 = v29;
  v29(v25);
  sub_1002CDCB4(a1, v11, type metadata accessor for HostedRoutingSourceSession);
  v30 = a3[2];
  v207[0] = a3[1];
  v207[1] = v30;
  v208 = *(a3 + 48);

  sub_10026D080(v207, &aBlock);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  sub_100238E4C(v207);
  v33 = os_log_type_enabled(v31, v32);
  v196 = v27;
  v190 = v26;
  v189 = v9;
  v185 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v181 = v32;
    v35 = v27;
    v36 = v34;
    v37 = swift_slowAlloc();
    v187 = a1;
    v182 = v37;
    v206[0] = v37;
    *v36 = 136316162;
    v38 = _typeName(_:qualified:)();
    v40 = sub_10002C9C8(v38, v39, v206);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    *(v36 + 14) = sub_10002C9C8(v26, v35, v206);
    *(v36 + 22) = 2082;
    sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession, &unk_100452428);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_10002187C(v11, type metadata accessor for HostedRoutingSourceSession);
    v44 = sub_10002C9C8(v41, v43, v206);

    *(v36 + 24) = v44;
    *(v36 + 32) = 2082;
    *&aBlock = a2;
    type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
    sub_1002CDD70(&qword_100525780, type metadata accessor for RoutingInteraction.Action.HandoffContext, &unk_100455390);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = sub_10002C9C8(v45, v46, v206);

    *(v36 + 34) = v47;
    *(v36 + 42) = 2082;
    v48 = a3[1];
    aBlock = *a3;
    v203 = v48;
    v204 = a3[2];
    v205 = *(a3 + 48);
    sub_1002856A4();
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = sub_10002C9C8(v49, v50, v206);

    *(v36 + 44) = v51;
    _os_log_impl(&_mh_execute_header, v31, v181, "[%s] pullContentFromSession<%{public}s> - session: %{public}s, context: %{public}s, for: %{public}s", v36, 0x34u);
    swift_arrayDestroy();
    a1 = v187;
  }

  else
  {

    sub_10002187C(v11, type metadata accessor for HostedRoutingSourceSession);
  }

  v52 = v201;
  v53 = v200[1];
  v53(v25, v201);
  v54 = a3;
  v55 = a1[3];
  v56 = v199;
  if (!v55)
  {
    v194(v199, v193, v52);
    v106 = v52;
    v107 = v196;

    v97 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v108))
    {
      v109 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v109 = 136315394;
      v110 = _typeName(_:qualified:)();
      v195 = v53;
      v112 = sub_10002C9C8(v110, v111, &aBlock);

      *(v109 + 4) = v112;
      *(v109 + 12) = 2082;
      v113 = sub_10002C9C8(v190, v107, &aBlock);

      *(v109 + 14) = v113;
      _os_log_impl(&_mh_execute_header, v97, v108, "[%s] pullContentFromSession<%{public}s> - failing because source session is not endpoint sourced", v109, 0x16u);
      swift_arrayDestroy();

      v104 = v199;
      v105 = v106;
      goto LABEL_18;
    }

LABEL_19:

    v53(v56, v52);
    goto LABEL_20;
  }

  v57 = a1[2];
  v58 = sub_100034D68();
  v59 = v196;
  if (!v58[2] || (v60 = sub_10000698C(v57, v55), (v61 & 1) == 0))
  {

    v56 = v192;
LABEL_14:
    v194(v56, v193, v52);

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v99 = 136315394;
      v100 = _typeName(_:qualified:)();
      v195 = v53;
      v102 = sub_10002C9C8(v100, v101, &aBlock);

      *(v99 + 4) = v102;
      *(v99 + 12) = 2082;
      v103 = sub_10002C9C8(v190, v59, &aBlock);

      *(v99 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v97, v98, "[%s] pullContentFromSession<%{public}s> - failing because no connected entry for endpoint-sourced session", v99, 0x16u);
      swift_arrayDestroy();

      v104 = v192;
      v105 = v201;
LABEL_18:
      v195(v104, v105);
LABEL_20:
      v114 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v114 - 8) + 104))(v115, enum case for InternalRoutingError.sessionNotFound(_:), v114);

      MRDFastSyncGroupSessionState.rawValue.getter();
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v197();

      sub_10023DCB0(v117, v119, v121);
      return;
    }

    goto LABEL_19;
  }

  v62 = *(v58[7] + 8 * v60);

  v56 = v192;
  if (*(v62 + 16) != 2)
  {

    goto LABEL_14;
  }

  v63 = [*(v62 + 88) origin];
  if (v63)
  {
    v64 = v63;
    v65 = [objc_opt_self() server];
    v66 = [v65 nowPlayingServer];

    v67 = [v66 originClientForOrigin:v64];
    v199 = v64;
    if (v67)
    {
      v187 = a1;
      v68 = v185;
      v69 = *(v185 + 16);
      v186 = *(v185 + 24);
      v70 = String._bridgeToObjectiveC()();
      v71 = v67;
      v72 = v70;
      v188 = v71;
      v73 = [v71 existingNowPlayingClientForDisplayID:v70];

      v192 = v73;
      if (v73)
      {
        v74 = [objc_allocWithZone(MRPlaybackSessionRequest) init];
        v75 = String._bridgeToObjectiveC()();
        v201 = v74;
        [v74 setRequestIdentifier:v75];

        v76 = [v192 activePlayerPath];
        v77 = (*(*v68 + 208))();
        v78 = String._bridgeToObjectiveC()();
        [v77 setRequestID:v78];

        [v77 setInitiator:kMRMigrateInitiatorModernPicker];
        [v77 setPlaybackSessionRequest:v74];
        v200 = v76;
        [v77 setPlayerPath:v76];
        [v77 setEndpointOptions:0];
        [v77 setPlayerOptions:{objc_msgSend(v77, "playerOptions") | 8}];
        v195 = [objc_opt_self() localOrigin];
        v79 = v191;
        v80 = (*(*v191 + 368))();
        v194 = v62;
        v81 = v80;
        v82 = sub_1002661C8();
        v83 = v198;
        v84 = v82;
        v85 = v59;
        v87 = v86;
        v88 = v77;
        v89 = [v76 origin];
        v90 = swift_allocObject();
        v91 = v190;
        *(v90 + 16) = v79;
        *(v90 + 24) = v91;
        *(v90 + 32) = v85;
        *(v90 + 40) = v88;
        *(v90 + 48) = v197;
        *(v90 + 56) = v83;
        v92 = v54[1];
        *(v90 + 64) = *v54;
        *(v90 + 80) = v92;
        *(v90 + 96) = v54[2];
        *(v90 + 112) = *(v54 + 48);
        *(v90 + 120) = v84;
        *(v90 + 128) = v87;
        *(v90 + 136) = v189;
        *&v204 = sub_1002D41FC;
        *(&v204 + 1) = v90;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v203 = sub_1002D50E0;
        *(&v203 + 1) = &unk_1004C8B58;
        v93 = _Block_copy(&aBlock);

        sub_10026D080(v207, v206);
        v94 = v88;
        v95 = v195;
        v96 = v81;

        MRMediaRemotePlaybackSessionMigrateFromOriginToOrigin();
        _Block_release(v93);
      }

      else
      {
        v152 = v69;
        v153 = v183;
        v194(v183, v193, v52);

        v154 = v186;

        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v195 = v53;
          v158 = v157;
          *&aBlock = swift_slowAlloc();
          *v158 = 136315650;
          v159 = _typeName(_:qualified:)();
          v161 = sub_10002C9C8(v159, v160, &aBlock);
          v194 = v62;
          v162 = v161;

          *(v158 + 4) = v162;
          *(v158 + 12) = 2082;
          v163 = sub_10002C9C8(v190, v59, &aBlock);

          *(v158 + 14) = v163;
          *(v158 + 22) = 2082;
          *(v158 + 24) = sub_10002C9C8(v152, v154, &aBlock);
          _os_log_impl(&_mh_execute_header, v155, v156, "[%s] pullContentFromSession<%{public}s> - failing because no source client found for: %{public}s", v158, 0x20u);
          swift_arrayDestroy();

          v195(v183, v201);
        }

        else
        {

          v53(v153, v52);
        }

        v172 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
        swift_allocError();
        (*(*(v172 - 8) + 104))(v173, enum case for InternalRoutingError.unsupportedOperation(_:), v172);

        MRDFastSyncGroupSessionState.rawValue.getter();
        v175 = v174;
        v177 = v176;
        v179 = v178;
        v197();

        sub_10023DCB0(v175, v177, v179);
      }
    }

    else
    {
      v130 = v184;
      v194(v184, v193, v52);

      v131 = v64;
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v187 = a1;
        v136 = v135;
        v137 = swift_slowAlloc();
        v195 = v53;
        *&aBlock = v137;
        *v134 = 136315650;
        v138 = _typeName(_:qualified:)();
        v140 = sub_10002C9C8(v138, v139, &aBlock);
        v194 = v62;
        v141 = v140;

        *(v134 + 4) = v141;
        *(v134 + 12) = 2082;
        v142 = sub_10002C9C8(v190, v59, &aBlock);

        *(v134 + 14) = v142;
        *(v134 + 22) = 2114;
        *(v134 + 24) = v131;
        *v136 = v199;
        v143 = v131;
        _os_log_impl(&_mh_execute_header, v132, v133, "[%s] pullContentFromSession<%{public}s> - failing because no source origin client found for: %{public}@", v134, 0x20u);
        sub_1000038A4(v136, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v195(v184, v201);
      }

      else
      {

        v53(v130, v52);
      }

      v164 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v164 - 8) + 104))(v165, enum case for InternalRoutingError.sessionNotFound(_:), v164);

      MRDFastSyncGroupSessionState.rawValue.getter();
      v167 = v166;
      v169 = v168;
      v171 = v170;
      v197();

      sub_10023DCB0(v167, v169, v171);
    }
  }

  else
  {
    v122 = v186;
    v194(v186, v193, v52);

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v125 = 136315394;
      v126 = _typeName(_:qualified:)();
      v195 = v53;
      v128 = sub_10002C9C8(v126, v127, &aBlock);

      *(v125 + 4) = v128;
      *(v125 + 12) = 2082;
      v129 = sub_10002C9C8(v190, v59, &aBlock);

      *(v125 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v123, v124, "[%s] pullContentFromSession<%{public}s> - failing because no origin for endpoint-sourced session", v125, 0x16u);
      swift_arrayDestroy();

      v195(v186, v201);
    }

    else
    {

      v53(v122, v52);
    }

    v144 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v144 - 8) + 104))(v145, enum case for InternalRoutingError.sessionNotFound(_:), v144);

    MRDFastSyncGroupSessionState.rawValue.getter();
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v197();

    sub_10023DCB0(v147, v149, v151);
  }
}

uint64_t sub_1002C17A4(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, char *a15, uint64_t a16, uint64_t (*a17)(void), uint64_t a18)
{
  v181 = a8;
  LODWORD(v189) = a7;
  LODWORD(v188) = a6;
  LODWORD(v183) = a4;
  v182 = a3;
  v184 = a2;
  v187 = a1;
  v180 = a18;
  v185 = a11;
  v186 = a10;
  v190 = a9;
  v19 = type metadata accessor for Logger();
  v192 = *(v19 - 8);
  v193 = v19;
  v20 = __chkstk_darwin(v19);
  v179 = (&v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v178 = &v174 - v23;
  v24 = __chkstk_darwin(v22);
  v177 = &v174 - v25;
  __chkstk_darwin(v24);
  v191 = (&v174 - v26);
  v27 = type metadata accessor for HostedRoutingSourceSession(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v31 = __chkstk_darwin(v30);
  v33 = &v174 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = (&v174 - v35);
  v37 = __chkstk_darwin(v34);
  v39 = &v174 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v174 - v41;
  v43 = *(*a5 + 208);
  v194 = *a5 + 208;
  v195 = v43;
  v44 = (v43)(v40);
  v45 = v44;
  if (v187)
  {
    v46 = v187;
    v47 = _convertErrorToNSError(_:)();
    [v45 endEventWithID:v188 error:v47];

    v48 = v195();
    [v48 endEventWithID:v189];

    swift_errorRetain();
    v49 = v184;
    v50 = v182;
    v51 = v183;
    sub_10023DC40(v184, v182, v183);
    v52 = sub_100028D40();
    v54 = v192;
    v53 = v193;
    (*(v192 + 16))(v191, v52, v193);
    v55 = v190;

    v56 = Logger.logObject.getter();
    LODWORD(v48) = static os_log_type_t.default.getter();

    LODWORD(v189) = v48;
    if (os_log_type_enabled(v56, v48))
    {
      v57 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *&v196[0] = v188;
      *v57 = 136315650;
      v58 = _typeName(_:qualified:)();
      v60 = v46;
      v61 = sub_10002C9C8(v58, v59, v196);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2082;
      *(v57 + 14) = sub_10002C9C8(v181, v55, v196);
      *(v57 + 22) = 2082;
      v62 = v195();
      v63 = [v62 report];

      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v46 = v60;
      v67 = sub_10002C9C8(v64, v66, v196);
      v68 = v186;

      *(v57 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v56, v189, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v57, 0x20u);
      swift_arrayDestroy();

      v49 = v184;

      v69 = (*(v192 + 8))(v191, v193);
    }

    else
    {

      v69 = (*(v54 + 8))(v191, v53);
      v68 = v186;
    }

    v96 = (v195)(v69);
    [v96 finalizeWithCompletion:0];

    swift_errorRetain();
    sub_10023DC40(v49, v50, v51);
    (v68)(v46, v49, v50, v51);

    sub_10023DCB0(v49, v50, v51);

    v97 = v49;
    v98 = v50;
    return sub_10023DCB0(v97, v98, v51);
  }

  v187 = v39;
  v183 = v27;
  v184 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v29;
  v175 = v33;
  v176 = v42;
  v191 = a15;
  [v44 endEventWithID:v188 error:0];

  v188 = a5;
  v70 = v195();
  [v70 endEventWithID:v189];

  result = (*(*a12 + 440))();
  v72 = result;
  v73 = *(result + 16);
  v74 = v192;
  if (!v73)
  {
LABEL_13:

    v78 = sub_100028D40();
    v79 = v74;
    v80 = v179;
    v81 = v193;
    (*(v74 + 16))(v179, v78, v193);
    v82 = v191;
    v83 = v191[1];
    v201 = *v191;
    v84 = v191[2];
    v199[0] = v83;
    v199[1] = v84;
    v200 = *(v191 + 48);
    v85 = v190;

    sub_10028BC98(&v201, v196);
    sub_10026D080(v199, v196);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    sub_1001E6204(&v201);
    sub_100238E4C(v199);
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      *v88 = 136315906;
      v89 = _typeName(_:qualified:)();
      v91 = sub_10002C9C8(v89, v90, &v198);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2082;
      *(v88 + 14) = sub_10002C9C8(v181, v85, &v198);
      *(v88 + 22) = 2082;
      *(v88 + 24) = sub_10002C9C8(a13, a14, &v198);
      *(v88 + 32) = 2082;
      v92 = v82[1];
      v196[0] = *v82;
      v196[1] = v92;
      v196[2] = v82[2];
      v197 = *(v82 + 48);
      sub_1002856A4();
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = sub_10002C9C8(v93, v94, &v198);

      *(v88 + 34) = v95;
      _os_log_impl(&_mh_execute_header, v86, v87, "[%s] handleHandoffFromApplication<%{public}s> - no session found for prewarmed identifier: %{public}s to continue interaction: %{public}s -> failing", v88, 0x2Au);
      swift_arrayDestroy();

      (*(v192 + 8))(v179, v193);
    }

    else
    {

      (*(v79 + 8))(v80, v81);
    }

    v123 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v123 - 8) + 104))(v124, enum case for InternalRoutingError.sessionNotFound(_:), v123);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v126 = v125;
    v128 = v127;
    LOBYTE(v51) = v129;
    v186();

    v97 = v126;
    v98 = v128;
    return sub_10023DCB0(v97, v98, v51);
  }

  v75 = 0;
  v194 = a16;
  v195 = a17;
  while (1)
  {
    if (v75 >= *(v72 + 16))
    {
      __break(1u);
      return result;
    }

    v76 = *(v28 + 80);
    sub_1002CDCB4(v72 + ((v76 + 32) & ~v76) + *(v28 + 72) * v75, v36, type metadata accessor for HostedRoutingSourceSession);
    v77 = *v36 == a13 && v36[1] == a14;
    if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v75;
    result = sub_10002187C(v36, type metadata accessor for HostedRoutingSourceSession);
    if (v73 == v75)
    {
      goto LABEL_13;
    }
  }

  v99 = v187;
  sub_100032E70(v36, v187, type metadata accessor for HostedRoutingSourceSession);
  v100 = v176;
  sub_100032E70(v99, v176, type metadata accessor for HostedRoutingSourceSession);
  v101 = *(v100 + 24);
  v102 = v193;
  v103 = v74;
  if (v101)
  {
    v104 = *(v100 + 16);
    v105 = sub_100034D68();
    if (v105[2] && (v106 = sub_10000698C(v104, v101), (v107 & 1) != 0))
    {
      v108 = *(v105[7] + 8 * v106);

      if (*(v108 + 16) == 2)
      {
        v187 = v108;
        v189 = a12;
        v184 = ~v76;
        v110 = (*(*v188 + 160))(v109);
        sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
        v111 = sub_10024C81C();
        v112 = [objc_opt_self() localOrigin];
        v113 = objc_allocWithZone(MRPlayerPath);
        v114 = String._bridgeToObjectiveC()();
        v115 = [v113 initWithOrigin:v112 bundleIdentifier:v114 player:0];

        v116 = [v111 resolveExistingPlayerPath:v115];
        v117 = v175;
        v118 = v182;
        if (v116)
        {
          if (![v116 isResolved])
          {
            goto LABEL_41;
          }

          if (v110)
          {
            sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
            v119 = v116;
            v120 = v110;
            v121 = static NSObject.== infix(_:_:)();

            v122 = v193;
            if (v121)
            {

              v118 = v182;
              goto LABEL_41;
            }
          }

          else
          {
            v155 = v116;
            v122 = v193;
          }

          v156 = sub_100028D40();
          v157 = v177;
          (*(v74 + 16))(v177, v156, v122);
          v158 = v190;

          v159 = v116;
          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            *&v196[0] = v183;
            *v162 = 136315650;
            v163 = _typeName(_:qualified:)();
            v165 = sub_10002C9C8(v163, v164, v196);
            v100 = v176;

            *(v162 + 4) = v165;
            v117 = v175;
            *(v162 + 12) = 2082;
            *(v162 + 14) = sub_10002C9C8(v181, v158, v196);
            *(v162 + 22) = 2114;
            *(v162 + 24) = v159;
            v166 = v179;
            *v179 = v116;
            v167 = v159;
            _os_log_impl(&_mh_execute_header, v160, v161, "[%s] handleHandoffFromApplication<%{public}s> - inject source player path: %{public}@ into handoff context", v162, 0x20u);
            sub_1000038A4(v166, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();

            (*(v192 + 8))(v177, v193);
          }

          else
          {

            (*(v192 + 8))(v157, v193);
          }

          v118 = v182;
          (*(*v188 + 168))(v116);
LABEL_41:
        }

        sub_1002CDCB4(v100, v117, type metadata accessor for HostedRoutingSourceSession);
        v168 = (v76 + 16) & v184;
        v169 = (v118 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
        v170 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
        v171 = swift_allocObject();
        sub_100032E70(v117, v171 + v168, type metadata accessor for HostedRoutingSourceSession);
        *(v171 + v169) = v189;
        v172 = (v171 + v170);
        v173 = v190;
        *v172 = v181;
        v172[1] = v173;
        *(v171 + ((v170 + 23) & 0xFFFFFFFFFFFFFFF8)) = v180;

        sub_1002C31A4(v194, v195, v100, v188, v191, v186, v185, v171);

        return sub_10002187C(v100, type metadata accessor for HostedRoutingSourceSession);
      }
    }

    else
    {
    }
  }

  v130 = sub_100028D40();
  v131 = v178;
  (*(v74 + 16))(v178, v130, v102);
  v132 = v100;
  v133 = v184;
  sub_1002CDCB4(v132, v184, type metadata accessor for HostedRoutingSourceSession);
  v134 = v190;

  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *&v196[0] = swift_slowAlloc();
    *v137 = 136315650;
    v138 = _typeName(_:qualified:)();
    v140 = v103;
    v141 = sub_10002C9C8(v138, v139, v196);

    *(v137 + 4) = v141;
    *(v137 + 12) = 2082;
    *(v137 + 14) = sub_10002C9C8(v181, v134, v196);
    *(v137 + 22) = 2082;
    sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession, &unk_100452428);
    v142 = dispatch thunk of CustomStringConvertible.description.getter();
    v144 = v143;
    sub_10002187C(v133, type metadata accessor for HostedRoutingSourceSession);
    v145 = sub_10002C9C8(v142, v144, v196);

    *(v137 + 24) = v145;
    _os_log_impl(&_mh_execute_header, v135, v136, "[%s] handleHandoffFromApplication<%{public}s> - destination session: %{public}s is not backed by connected endpoint -> failing", v137, 0x20u);
    swift_arrayDestroy();

    (*(v140 + 8))(v178, v102);
  }

  else
  {

    sub_10002187C(v133, type metadata accessor for HostedRoutingSourceSession);
    (*(v74 + 8))(v131, v102);
  }

  v146 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  swift_allocError();
  (*(*(v146 - 8) + 104))(v147, enum case for InternalRoutingError.sessionNotFound(_:), v146);
  v148 = v176;

  MRDFastSyncGroupSessionState.rawValue.getter();
  v150 = v149;
  v152 = v151;
  v154 = v153;
  v186();

  sub_10023DCB0(v150, v152, v154);
  return sub_10002187C(v148, type metadata accessor for HostedRoutingSourceSession);
}

double sub_1002C2BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a3;
  v61 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v61);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = *(a1 + 16);
  v16 = sub_100034D68();
  if (!v16[2] || (v17 = sub_10000698C(v15, v14), (v18 & 1) == 0))
  {

    goto LABEL_26;
  }

  v19 = *(v16[7] + 8 * v17);

  if (*(v19 + 16) != 2)
  {

LABEL_26:
    v39 = sub_100028D40();
    (*(v11 + 16))(v13, v39, v10);
    sub_1002CDCB4(a1, v9, type metadata accessor for HostedRoutingSourceSession);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v10;
      v62 = v43;
      *v42 = 136315650;
      v44 = _typeName(_:qualified:)();
      v46 = sub_10002C9C8(v44, v45, &v62);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_10002C9C8(v60, a4, &v62);
      *(v42 + 22) = 2082;
      sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession, &unk_100452428);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_10002187C(v9, type metadata accessor for HostedRoutingSourceSession);
      v50 = sub_10002C9C8(v47, v49, &v62);

      *(v42 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%s] handleHandoffFromApplication<%{public}s> - entry lost for destination session: %{public}s, will not perform deferred update of active session elements", v42, 0x20u);
      swift_arrayDestroy();

      (*(v11 + 8))(v13, v58);
    }

    else
    {

      sub_10002187C(v9, type metadata accessor for HostedRoutingSourceSession);
      (*(v11 + 8))(v13, v10);
    }

    return result;
  }

  v20 = *(v19 + 56);
  v59 = *(v19 + 48);
  v60 = a2;
  v58 = v20;

  v21 = sub_100298814();
  v22 = v21;
  v23 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
LABEL_32:
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_7;
    }

LABEL_33:
    v61 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_33;
  }

LABEL_7:
  v25 = 0;
  v61 = _swiftEmptyArrayStorage;
  do
  {
    v26 = v25;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v23 + 16))
        {
          goto LABEL_31;
        }

        v29 = *(v22 + 8 * v26 + 32);
      }

      v30 = v29;
      v25 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ([v29 deviceType] == 1)
      {
        break;
      }

      v27 = [*(v19 + 88) groupLeader];
      v28 = [v27 uid];

      if (v28)
      {
        goto LABEL_19;
      }

LABEL_10:

      ++v26;
      if (v25 == v24)
      {
        goto LABEL_34;
      }
    }

    v31 = [v30 uid];
    if (!v31)
    {
      goto LABEL_10;
    }

    v28 = v31;
LABEL_19:
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_10002AFD0(0, *(v61 + 2) + 1, 1, v61);
    }

    v36 = *(v61 + 2);
    v35 = *(v61 + 3);
    if (v36 >= v35 >> 1)
    {
      v61 = sub_10002AFD0((v35 > 1), v36 + 1, 1, v61);
    }

    v37 = v61;
    *(v61 + 2) = v36 + 1;
    v38 = &v37[16 * v36];
    *(v38 + 4) = v32;
    *(v38 + 5) = v34;
  }

  while (v25 != v24);
LABEL_34:

  v52 = (v60 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v53 = *(v60 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v54 = *(v60 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
  v55 = *(v60 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  v56 = v58;
  *v52 = v59;
  v52[1] = v56;
  v52[2] = v61;
  sub_10029A410(v53, v54, v55);
  sub_1002CDC70(v53, v54, v55);

  return result;
}

void sub_1002C31A4(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, __int128 *a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v207 = a8;
  v227 = a7;
  v228 = a6;
  v217 = a1;
  v13 = *v8;
  v14 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v14 - 8);
  v205 = (v203 - v15);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v213 = v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v219 = v203 - v21;
  v22 = __chkstk_darwin(v20);
  v209 = v203 - v23;
  v24 = __chkstk_darwin(v22);
  v208 = v203 - v25;
  v26 = __chkstk_darwin(v24);
  v204 = v203 - v27;
  __chkstk_darwin(v26);
  v29 = v203 - v28;
  v31 = *a5;
  v30 = *(a5 + 1);
  v216 = *a3;
  v225 = a3;
  v32 = *(a3 + 1);

  v33 = sub_100028D40();
  v229 = v17;
  v34 = *(v17 + 16);
  v220 = v33;
  v222 = v17 + 16;
  v221 = v34;
  (v34)(v29);
  v35 = a5[2];
  v235[0] = a5[1];
  v235[1] = v35;
  v236 = *(a5 + 48);

  sub_10026D080(v235, &aBlock);
  v224 = v29;
  v36 = a4;
  v37 = Logger.logObject.getter();
  LODWORD(v17) = static os_log_type_t.default.getter();

  sub_100238E4C(v235);
  v214 = v17;
  v223 = v37;
  v38 = os_log_type_enabled(v37, v17);
  v226 = v30;
  v215 = v31;
  v206 = v36;
  v210 = a2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v211 = v16;
    v203[1] = v40;
    v234 = v40;
    *v39 = 136316418;
    v41 = _typeName(_:qualified:)();
    v43 = v13;
    v44 = v31;
    v45 = sub_10002C9C8(v41, v42, &v234);

    *(v39 + 4) = v45;
    v212 = v43;
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_10002C9C8(v44, v30, &v234);
    *(v39 + 22) = 2082;
    *(v39 + 24) = sub_10002C9C8(v217, a2, &v234);
    *(v39 + 32) = 2082;
    v46 = v32;
    *(v39 + 34) = sub_10002C9C8(v216, v32, &v234);
    *(v39 + 42) = 2082;
    *&aBlock = v36;
    type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
    sub_1002CDD70(&qword_100525780, type metadata accessor for RoutingInteraction.Action.HandoffContext, &unk_100455390);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = sub_10002C9C8(v47, v48, &v234);

    *(v39 + 44) = v49;
    *(v39 + 52) = 2082;
    v50 = v212;
    v51 = a5[1];
    aBlock = *a5;
    v231 = v51;
    v232 = a5[2];
    v233 = *(a5 + 48);
    sub_1002856A4();
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = sub_10002C9C8(v52, v53, &v234);

    *(v39 + 54) = v54;
    v55 = v223;
    _os_log_impl(&_mh_execute_header, v223, v214, "[%s] handoffFromApplication<%{public}s> - bundle: %{public}s to session: %{public}s, context: %{public}s, for: %{public}s", v39, 0x3Eu);
    swift_arrayDestroy();
    v16 = v211;
  }

  else
  {
    v50 = v13;
    v46 = v32;
  }

  v56 = *(v229 + 8);
  v56(v224, v16);
  v57 = a5;
  v58 = *(v225 + 3);
  if (!v58)
  {

    v108 = v213;
    v221(v213, v220, v16);
    v109 = v226;

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v112 = 136315394;
      v113 = _typeName(_:qualified:)();
      v115 = sub_10002C9C8(v113, v114, &aBlock);
      v225 = v56;
      v116 = v115;

      *(v112 + 4) = v116;
      *(v112 + 12) = 2082;
      v117 = sub_10002C9C8(v215, v109, &aBlock);

      *(v112 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v110, v111, "[%s] handoffFromApplication<%{public}s> - failing because sessions are not both endpoint sourced", v112, 0x16u);
      swift_arrayDestroy();

      v225(v108, v16);
LABEL_22:
      v128 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v128 - 8) + 104))(v129, enum case for InternalRoutingError.sessionNotFound(_:), v128);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v228();

      sub_10023DCB0(v131, v133, v135);
      return;
    }

    v118 = v108;
LABEL_21:
    v56(v118, v16);
    goto LABEL_22;
  }

  v59 = *(v225 + 2);
  v60 = sub_100034D68();
  if (!v60[2] || (v61 = sub_10000698C(v59, v58), (v62 & 1) == 0))
  {

    goto LABEL_18;
  }

  v225 = v56;
  v212 = v50;
  v63 = *(v60[7] + 8 * v61);

  if (*(v63 + 16) != 2)
  {

    v56 = v225;
LABEL_18:

    v119 = v219;
    v221(v219, v220, v16);
    v120 = v226;

    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v123 = 136315394;
      v124 = _typeName(_:qualified:)();
      v126 = sub_10002C9C8(v124, v125, &aBlock);

      *(v123 + 4) = v126;
      *(v123 + 12) = 2082;
      v127 = sub_10002C9C8(v215, v120, &aBlock);

      *(v123 + 14) = v127;
      _os_log_impl(&_mh_execute_header, v121, v122, "[%s] handoffFromApplication<%{public}s> - failing because no connected entry for endpoint sourced sessions", v123, 0x16u);
      swift_arrayDestroy();

      v118 = v219;
    }

    else
    {

      v118 = v119;
    }

    goto LABEL_21;
  }

  v64 = [*(v63 + 88) origin];
  if (v64)
  {
    v224 = v64;
    v223 = v57;
    v211 = v16;
    v65 = objc_opt_self();
    v66 = [v65 server];
    v67 = [v66 nowPlayingServer];

    v68 = [v67 localOriginClient];
    v69 = v210;
    v70 = String._bridgeToObjectiveC()();
    v71 = [v68 existingNowPlayingClientForDisplayID:v70];

    if (v71)
    {
      v72 = [v65 server];
      v73 = [v72 nowPlayingServer];

      v74 = [v73 originClientForOrigin:v224];
      v219 = v71;
      if (v74)
      {

        v75 = [objc_allocWithZone(MRPlaybackSessionRequest) init];
        v76 = v215;
        v77 = v226;
        v78 = String._bridgeToObjectiveC()();
        v225 = v75;
        [v75 setRequestIdentifier:v78];

        v79 = [v71 activePlayerPath];
        v229 = v63;
        v80 = v79;
        v222 = v46;
        v81 = v206;
        v82 = (*(*v206 + 208))();
        v83 = String._bridgeToObjectiveC()();
        [v82 setRequestID:v83];

        [v82 setInitiator:kMRMigrateInitiatorModernPicker];
        [v82 setPlaybackSessionRequest:v75];
        v84 = v80;
        [v82 setPlayerPath:v80];
        [v82 setEndpointOptions:0];
        v85 = [v82 setPlayerOptions:{objc_msgSend(v82, "playerOptions") | 8}];
        v86 = v218;
        v221 = (*(*v218 + 368))(v85);
        v87 = sub_1002661C8();
        v220 = v88;
        v89 = [v65 server];
        v90 = [v89 nowPlayingServer];

        v91 = [v90 localOriginClient];
        v92 = [v71 activePlayerClient];
        v93 = v205;
        sub_100026A90(v91, v92, v205);
        (*(*v81 + 240))(v93);
        v94 = v82;
        v95 = [v84 origin];
        v96 = swift_allocObject();
        *(v96 + 16) = v76;
        *(v96 + 24) = v77;
        v98 = v227;
        v97 = v228;
        *(v96 + 32) = v94;
        *(v96 + 40) = v97;
        *(v96 + 48) = v98;
        *(v96 + 56) = v86;
        v99 = v223;
        v100 = *&v223[2].isa;
        *(v96 + 64) = *&v223->isa;
        *(v96 + 80) = v100;
        *(v96 + 96) = *&v99[4].isa;
        *(v96 + 112) = v99[6].isa;
        v101 = v207;
        *(v96 + 120) = sub_1002D425C;
        *(v96 + 128) = v101;
        v102 = v222;
        *(v96 + 136) = v216;
        *(v96 + 144) = v102;
        v103 = v220;
        *(v96 + 152) = v87;
        *(v96 + 160) = v103;
        *(v96 + 168) = v212;
        *&v232 = sub_1002D4304;
        *(&v232 + 1) = v96;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v231 = sub_1002D50E0;
        *(&v231 + 1) = &unk_1004C8C20;
        v104 = _Block_copy(&aBlock);

        sub_10026D080(v235, &v234);
        v105 = v94;
        v106 = v224;
        v107 = v221;

        MRMediaRemotePlaybackSessionMigrateFromOriginToOrigin();
        _Block_release(v104);

        return;
      }

      v169 = v204;
      v170 = v211;
      v221(v204, v220, v211);
      v171 = v226;

      v172 = v224;
      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&aBlock = v223;
        *v175 = 136315650;
        v177 = _typeName(_:qualified:)();
        v179 = v171;
        v180 = sub_10002C9C8(v177, v178, &aBlock);

        *(v175 + 4) = v180;
        *(v175 + 12) = 2082;
        v181 = sub_10002C9C8(v215, v179, &aBlock);

        *(v175 + 14) = v181;
        *(v175 + 22) = 2114;
        *(v175 + 24) = v172;
        *v176 = v224;
        v182 = v172;
        _os_log_impl(&_mh_execute_header, v173, v174, "[%s] handoffFromApplication<%{public}s> - failing because no destination origin client found for: %{public}@", v175, 0x20u);
        sub_1000038A4(v176, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v183 = v169;
        v184 = v211;
      }

      else
      {

        v183 = v169;
        v184 = v170;
      }

      v225(v183, v184);
      v194 = v172;
      v195 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v195 - 8) + 104))(v196, enum case for InternalRoutingError.sessionNotFound(_:), v195);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v198 = v197;
      v200 = v199;
      v202 = v201;
      v228();

      sub_10023DCB0(v198, v200, v202);

      v193 = &v237;
    }

    else
    {

      v149 = v208;
      v150 = v69;
      v151 = v211;
      v221(v208, v220, v211);
      v152 = v226;

      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v155 = 136315650;
        v156 = _typeName(_:qualified:)();
        v158 = sub_10002C9C8(v156, v157, &aBlock);

        *(v155 + 4) = v158;
        *(v155 + 12) = 2082;
        v159 = sub_10002C9C8(v215, v152, &aBlock);

        *(v155 + 14) = v159;
        *(v155 + 22) = 2082;
        *(v155 + 24) = sub_10002C9C8(v217, v150, &aBlock);
        _os_log_impl(&_mh_execute_header, v153, v154, "[%s] handoffFromApplication<%{public}s> - failing because no source client found for: %{public}s", v155, 0x20u);
        swift_arrayDestroy();

        v160 = v208;
      }

      else
      {

        v160 = v149;
      }

      v225(v160, v151);
      v185 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v185 - 8) + 104))(v186, enum case for InternalRoutingError.noActivePlayer(_:), v185);
      MRDFastSyncGroupSessionState.rawValue.getter();
      v188 = v187;
      v190 = v189;
      v192 = v191;
      v228();

      sub_10023DCB0(v188, v190, v192);

      v193 = &v238;
    }
  }

  else
  {

    v136 = v209;
    v221(v209, v220, v16);
    v137 = v226;

    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v140 = 136315650;
      v141 = _typeName(_:qualified:)();
      v143 = sub_10002C9C8(v141, v142, &aBlock);

      *(v140 + 4) = v143;
      *(v140 + 12) = 2082;
      v144 = sub_10002C9C8(v215, v137, &aBlock);

      *(v140 + 14) = v144;
      *(v140 + 22) = 2082;

      v145 = sub_1002992B0();
      v147 = v146;

      v148 = sub_10002C9C8(v145, v147, &aBlock);

      *(v140 + 24) = v148;
      _os_log_impl(&_mh_execute_header, v138, v139, "[%s] handoffFromApplication<%{public}s> - failing because no destination origin for entry: %{public}s", v140, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v225(v136, v16);
    v161 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v161 - 8) + 104))(v162, enum case for InternalRoutingError.sessionNotFound(_:), v161);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v228();

    sub_10023DCB0(v164, v166, v168);
  }
}

id sub_1002C4A4C()
{
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v0 = sub_10024C81C();
  v1 = [v0 localOriginClient];

  v2 = [v1 activeNowPlayingClient];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 activePlayerClient];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 isPlaying];

  return v4;
}

uint64_t sub_1002C4B14(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingSourceSession(0) - 8;
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_1002CDCB4(v7, v5, type metadata accessor for HostedRoutingSourceSession);
      v9 = *v5;
      v10 = v5[1];
      if (v9 == RoutingControl.sessionIdentifier.getter() && v10 == v11)
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          sub_10002187C(v5, type metadata accessor for HostedRoutingSourceSession);
          goto LABEL_4;
        }
      }

      v14 = sub_10025A178();
      sub_10002187C(v5, type metadata accessor for HostedRoutingSourceSession);
      if (v14)
      {
        return 1;
      }

LABEL_4:
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

double sub_1002C4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10)
{
  v54 = a7;
  v55 = a10;
  v56 = a8;
  v57 = a9;
  v58 = a6;
  v15 = type metadata accessor for RoutingControl();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  if (!a1)
  {
    v48 = v16;
    v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = v21;
    v50 = v15;
    v53 = v20;
    v24 = v57;
    v23 = v58;
    v25 = v54;
    v26 = RoutingControl.sessionIdentifier.getter();
    v28 = v27;
    v29 = sub_100037234();
    v30 = v25;
    if (v26 == *v29 && v28 == *(v29 + 1))
    {

      v31 = v23;
      v32 = a5;
      v33 = v24;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v31 = v23;
      v32 = a5;
      v33 = v24;
      if ((v34 & 1) == 0)
      {
        v40 = v52;
        v41 = v30;
        v42 = v51;
        (*(v52 + 16))(v51, v55, v53);
        v43 = v48;
        (*(v48 + 16))(v49, v41, v50);
        v44 = (*(v40 + 80) + 16) & ~*(v40 + 80);
        v45 = (v19 + *(v43 + 80) + v44) & ~*(v43 + 80);
        v46 = swift_allocObject();
        (*(v40 + 32))(v46 + v44, v42, v53);
        (*(v43 + 32))(v46 + v45, v49, v50);
        sub_1002ACDCC(v57, v32, v31, sub_1002D48F0, v46);
        goto LABEL_11;
      }
    }

    v35 = v51;
    v36 = v52;
    v37 = v53;
    (*(v52 + 16))(v51, v55, v53);
    v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v39 = swift_allocObject();
    (*(v36 + 32))(v39 + v38, v35, v37);
    sub_1002AF590(v33, v32, v31, sub_1002D49C4, v39);
LABEL_11:

    return result;
  }

  sub_10023DBE8(a1, a2, a3, a4);
  swift_errorRetain();
  sub_10023DC40(a2, a3, a4);
  a5(a1, a2, a3, a4);
  sub_10023DC58(a1, a2, a3, a4);

  sub_10023DCB0(a2, a3, a4);
  return result;
}

id sub_1002C50B8(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:))
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v7 = sub_10024C81C();
    v8 = [v7 localOriginClient];

    v9 = [v8 activeNowPlayingClient];
    if (v9)
    {
      v10 = [v9 activePlayerClient];

      if (v10)
      {
        v11 = [v10 isPlaying];

        return (v11 ^ 1);
      }
    }
  }

  else
  {
    if (v6 != enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v13 = sub_10024C81C();
    v14 = [v13 localOriginClient];

    v15 = [v14 activeNowPlayingClient];
    if (v15)
    {
      v16 = [v15 activePlayerClient];

      if (v16)
      {
        v17 = [v16 isPlaying];

        return v17;
      }
    }
  }

  return 0;
}

uint64_t sub_1002C5320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v35 - v9);
  v11 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:))
  {
    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v18 = *(v5 + 72);
      while (1)
      {
        sub_1002CDCB4(v17, v10, type metadata accessor for HostedRoutingSourceSession);
        v19 = *v10;
        v20 = v10[1];
        if (v19 == RoutingControl.sessionIdentifier.getter() && v20 == v21)
        {
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
            goto LABEL_5;
          }
        }

        v24 = sub_10025A178();
        sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
        if ((v24 & 1) == 0)
        {
          return 1;
        }

LABEL_5:
        v17 += v18;
        if (!--v16)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (v15 != enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v27 = *(v5 + 72);
    do
    {
      sub_1002CDCB4(v26, v8, type metadata accessor for HostedRoutingSourceSession);
      v28 = *v8;
      v29 = v8[1];
      if (v28 == RoutingControl.sessionIdentifier.getter() && v29 == v30)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          sub_10002187C(v8, type metadata accessor for HostedRoutingSourceSession);
          goto LABEL_19;
        }
      }

      v33 = sub_10025A178();
      sub_10002187C(v8, type metadata accessor for HostedRoutingSourceSession);
      if (v33)
      {
        return 1;
      }

LABEL_19:
      v26 += v27;
      --v25;
    }

    while (v25);
  }

  return 0;
}

void sub_1002C56BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t (*a10)(void), uint64_t a11, uint64_t (*a12)(void))
{
  v42 = a8;
  v43 = a7;
  v44 = a5;
  v17 = type metadata accessor for RoutingControl();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  if (a1)
  {
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);
    v44(a1, a2, a3, a4);
    sub_10023DC58(a1, a2, a3, a4);

    sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v37 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v20;
    v39 = a11;
    v40 = a12;
    v21 = v43;
    v22 = v44;
    v41 = v19;
    v23 = RoutingControl.sessionIdentifier.getter();
    v25 = v24;
    v26 = sub_100037234();
    if (v23 == *v26 && v25 == *(v26 + 1))
    {

      v29 = a6;
      v30 = v22;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v29 = a6;
      v30 = v22;
      if ((v28 & 1) == 0)
      {
        v31 = v37;
        v32 = v38;
        v33 = v30;
        v34 = v41;
        (*(v38 + 16))(v37, v21, v41);
        v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
        v36 = swift_allocObject();
        (*(v32 + 32))(v36 + v35, v31, v34);
        sub_1002ACDCC(a9, v33, a6, v40, v36);

        return;
      }
    }

    sub_1002AF590(a9, v30, v29, a10, 0);
  }
}

uint64_t sub_1002C5968()
{
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v0 = sub_10024C81C();
  v1 = [v0 localOriginClient];

  v2 = [v1 activeNowPlayingClient];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 activePlayerClient];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 isPlaying];

  return v4 ^ 1;
}

uint64_t sub_1002C5A30(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingSourceSession(0) - 8;
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_1002CDCB4(v7, v5, type metadata accessor for HostedRoutingSourceSession);
      v9 = *v5;
      v10 = v5[1];
      if (v9 == RoutingControl.sessionIdentifier.getter() && v10 == v11)
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          sub_10002187C(v5, type metadata accessor for HostedRoutingSourceSession);
          goto LABEL_4;
        }
      }

      v14 = sub_10025A178();
      sub_10002187C(v5, type metadata accessor for HostedRoutingSourceSession);
      if ((v14 & 1) == 0)
      {
        return 1;
      }

LABEL_4:
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

double sub_1002C5BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, double a9, __int128 *a10, uint64_t a11)
{
  v42 = a8;
  v19 = type metadata accessor for RoutingControl();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  if (a1)
  {
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);
    a5(a1, a2, a3, a4);
    sub_10023DC58(a1, a2, a3, a4);

    sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v38 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v22;
    v40 = v21;
    v41 = a10;
    v24 = RoutingControl.sessionIdentifier.getter();
    v26 = v25;
    v27 = sub_100037234();
    if (v24 == *v27 && v26 == *(v27 + 1))
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        v31 = v38;
        v30 = v39;
        v32 = v40;
        (*(v39 + 16))(v38, a7, v40);
        v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v34 = (v20 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = swift_allocObject();
        (*(v30 + 32))(v35 + v33, v31, v32);
        *(v35 + v34) = a9;
        sub_1002ACDCC(v41, a5, a6, sub_1002D4B1C, v35);

        return result;
      }
    }

    v36 = swift_allocObject();
    *(v36 + 16) = a11;
    *(v36 + 24) = a9;

    sub_1002AF590(v41, a5, a6, sub_1002D4BB8, v36);
  }

  return result;
}

BOOL sub_1002C5EF8(uint64_t a1, double a2)
{
  v4 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo();
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  if (*(a1 + 24))
  {
    v42 = v6;
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v20 = sub_10024C81C();
    v21 = [v20 localOriginClient];

    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 existingNowPlayingClientForDisplayID:v23];

    v25 = [v24 activePlayerClient];
    v26 = v25;
    v6 = v42;
    sub_100026A90(v21, v26, v15);
  }

  else
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v22 = sub_10024C81C();
    sub_10024C87C(v15);
  }

  sub_1002D4BC4(v15, v17);
  if ((*(v19 + 48))(v17, 1, v18))
  {
    goto LABEL_8;
  }

  RoutingSession.NowPlayingInfo.PlaybackInfo.playbackType.getter();
  if ((*(v7 + 88))(v9, v6) != enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.finite(_:))
  {
    (*(v7 + 8))(v9, v6);
LABEL_8:
    v33 = 0;
    goto LABEL_9;
  }

  (*(v7 + 96))(v9, v6);
  v28 = v36;
  v27 = v37;
  v29 = v38;
  (*(v37 + 32))(v36, v9, v38);
  v30 = v39;
  RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.progressSnapshot.getter();
  RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot.time.getter();
  v32 = v31;
  (*(v40 + 8))(v30, v41);
  (*(v27 + 8))(v28, v29);
  v33 = vabdd_f64(v32, a2) <= 0.1;
LABEL_9:
  sub_1000038A4(v17, &qword_100523640, qword_100451520);
  return v33;
}

uint64_t sub_1002C63B8(uint64_t a1, uint64_t a2, double a3)
{
  v64 = a2;
  v54 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot();
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  v6 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v8 - 8);
  v62 = &v44 - v9;
  v10 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo();
  v14 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v63);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v21 = *(v16 + 72);
    v58 = (v6 + 16);
    v59 = v10;
    v56 = (v11 + 88);
    v57 = (v6 + 8);
    v55 = enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.finite(_:);
    v48 = (v11 + 96);
    v49 = (v11 + 8);
    v47 = (v14 + 32);
    ++v46;
    v45 = (v14 + 8);
    v22 = &qword_100523640;
    v50 = v21;
    while (1)
    {
      v23 = v22;
      sub_1002CDCB4(v20, v18, type metadata accessor for HostedRoutingSourceSession);
      v25 = *v18;
      v24 = v18[1];
      if (v25 == RoutingControl.sessionIdentifier.getter() && v24 == v26)
      {

        v22 = v23;
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v23;
        if ((v28 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v29 = v62;
      sub_10001D9AC(v18 + *(v63 + 28), v62, v22, qword_100451520);
      v30 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
      {
        break;
      }

      v31 = v29 + *(v30 + 36);
      v32 = v29;
      v34 = v60;
      v33 = v61;
      (*v58)(v60, v31, v61);
      sub_10002187C(v32, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      RoutingSession.NowPlayingInfo.PlaybackInfo.playbackType.getter();
      (*v57)(v34, v33);
      v35 = v59;
      v36 = (*v56)(v13, v59);
      if (v36 != v55)
      {
        (*v49)(v13, v35);
        goto LABEL_4;
      }

      (*v48)(v13, v35);
      v38 = v51;
      v37 = v52;
      (*v47)(v51, v13, v52);
      v39 = v53;
      RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.progressSnapshot.getter();
      RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot.time.getter();
      v41 = v40;
      (*v46)(v39, v54);
      v21 = v50;
      v42 = v37;
      v22 = v23;
      (*v45)(v38, v42);
      sub_10002187C(v18, type metadata accessor for HostedRoutingSourceSession);
      if (vabdd_f64(v41, a3) <= 0.1)
      {
        return 1;
      }

LABEL_5:
      v20 += v21;
      if (!--v19)
      {
        return 0;
      }
    }

    sub_1000038A4(v29, v22, qword_100451520);
LABEL_4:
    sub_10002187C(v18, type metadata accessor for HostedRoutingSourceSession);
    goto LABEL_5;
  }

  return 0;
}