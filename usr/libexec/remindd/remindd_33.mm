uint64_t sub_1003384B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && ((a1[16] ^ a2[16]) & 1) == 0 && *(a1 + 3) == *(a2 + 3))
  {
    v2 = a2[32] ^ a1[32] ^ 1;
  }

  return v2 & 1;
}

id sub_100338510()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) remObjectID];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = UUID.uuidString.getter();
    v11 = v10;
    (*(v2 + 8))(v5, v1);
    v12 = sub_100338734();
    v14 = v13;
    v65 = v12;
    v66 = v13;

    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23 = v66;

    v24._countAndFlagsBits = v9;
    v24._object = v11;
    String.append(_:)(v24);
    v11, v25, v26, v27, v28, v29, v30, v31;
    v39 = v23;
  }

  else
  {
    v40 = sub_100338734();
    v42 = v41;
    v65 = v40;
    v66 = v41;

    v43._countAndFlagsBits = 46;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    v42, v44, v45, v46, v47, v48, v49, v50;
    v52 = v65;
    v51 = v66;
    UUID.init()();
    v53 = UUID.uuidString.getter();
    v55 = v54;
    (*(v2 + 8))(v5, v1);
    v65 = v52;
    v66 = v51;

    v56._countAndFlagsBits = v53;
    v56._object = v55;
    String.append(_:)(v56);
    v55, v57, v58, v59, v60, v61, v62, v63;
    v39 = v51;
  }

  v39, v32, v33, v34, v35, v36, v37, v38;
  return v65;
}

id sub_100338734()
{
  v1 = v0;
  v2 = 0xD000000000000018;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v9 = [*(v0 + *(updated + 28)) list];
  v63._countAndFlagsBits = v9;
  sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();

  v11 = v64;
  v12 = [v64 remObjectID];

  if (v12)
  {
    v13 = [v12 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = UUID.uuidString.getter();
    v16 = v15;
    v17 = *(v4 + 8);
    v18.n128_f64[0] = v17(v7, v3);
    v64 = v14;
    v65 = v16;
    sub_100337974(v18);
    if (v19)
    {
      v20 = v19;
      v21 = [v19 remObjectID];

      if (v21)
      {
        v22 = [v21 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = UUID.uuidString.getter();
        v25 = v24;
        v17(v7, v3);
        v63._countAndFlagsBits = 46;
        v63._object = 0xE100000000000000;
        v26._countAndFlagsBits = v23;
        v26._object = v25;
        String.append(_:)(v26);
        v25, v27, v28, v29, v30, v31, v32, v33;
        object = v63._object;
        String.append(_:)(v63);
        object, v35, v36, v37, v38, v39, v40, v41;
      }
    }

    v42 = *(v1 + *(updated + 20));
    if (v42 > 2)
    {
      if (v42 == 3)
      {
        v43 = "notesMayHaveDirtyHashtag";
        goto LABEL_18;
      }

      if (v42 == 4)
      {
        v44 = 0x80000001007F3370;
        v2 = 0xD00000000000001BLL;
        goto LABEL_22;
      }

      if (v42 != 5)
      {
LABEL_19:
        v44 = 0xEF746C7561666564;
        v2 = 0x206E776F6E6B6E75;
        goto LABEL_22;
      }

      v44 = 0xE800000000000000;
      v2 = 0x6574656C706D6F63;
    }

    else
    {
      if (v42)
      {
        if (v42 == 1)
        {
          v44 = 0xE300000000000000;
          v2 = 6579297;
          goto LABEL_22;
        }

        if (v42 == 2)
        {
          v43 = "titleMayHaveDirtyHashtag";
LABEL_18:
          v44 = ((v43 - 32) | 0x8000000000000000);
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v44 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
    }

LABEL_22:
    v63._countAndFlagsBits = 46;
    v63._object = 0xE100000000000000;
    v45._countAndFlagsBits = v2;
    v45._object = v44;
    String.append(_:)(v45);
    v44, v46, v47, v48, v49, v50, v51, v52;
    v53 = v63._object;
    String.append(_:)(v63);
    v53, v54, v55, v56, v57, v58, v59, v60;
    return v64;
  }

  UUID.init()();
  v10 = UUID.uuidString.getter();
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t REMSharedEntitySyncActivityType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0xD000000000000018;
      case 4:
        return 0xD00000000000001BLL;
      case 5:
        return 0x6574656C706D6F63;
      default:
        return 0x206E776F6E6B6E75;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000018;
      }

      return 0x206E776F6E6B6E75;
    }

    return 6579297;
  }
}

void sub_100338C18()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v14[15] & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    sub_100338EC0(v0);
    objc_autoreleasePoolPop(v13);
    return;
  }

  if (qword_100935ED8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_1009421A8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
  }
}

uint64_t sub_100338E4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100338EC0(uint64_t a1)
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_1009421A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "📔 RDSyncActivityEngine Starting...", v5, 2u);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    v10 = sub_100338164();
    v12 = v11;
    v13 = sub_10000668C(v10, v11, &v27);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "📔 RDSyncActivityEngine: Startup Parameter Summary: {%s}", v8, 0xCu);
    sub_10000607C(v9);
  }

  sub_100339258();
  if (*(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration) & 1) != 0 || (*(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 16))
  {
    sub_100339F4C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v27) = 1;

    static Published.subscript.setter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "📔 RDSyncActivityEngine Started", v26, 2u);
    }
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "📔 RDSyncActivityEngine is in manual testing mode. All subscribed hooks are disabled.", v23, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v27) = 1;

    static Published.subscript.setter();
  }
}

uint64_t sub_100339258()
{
  v147 = *v0;
  v1 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v1 - 8, v2);
  v146 = &v111 - v3;
  v143 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v149 = *(v143 - 8);
  __chkstk_darwin(v143, v4);
  v6 = &v111 - v5;
  v7 = type metadata accessor for NSNotificationCenter.Publisher();
  v136 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v148 = *(v141 - 8);
  __chkstk_darwin(v141, v12);
  v14 = &v111 - v13;
  v144 = sub_1000F5104(&qword_100942508, &qword_1007A2D48);
  v150 = *(v144 - 8);
  __chkstk_darwin(v144, v15);
  v111 = &v111 - v16;
  v145 = sub_1000F5104(&qword_100942510, &qword_1007A2D50);
  v151 = *(v145 - 8);
  __chkstk_darwin(v145, v17);
  v142 = &v111 - v18;
  v134 = RDSyncActivityNotificationEngineAuthor;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v140 = sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v22 = swift_allocObject();
  v139 = xmmword_100791300;
  *(v22 + 16) = xmmword_100791300;
  *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 40) = v23;
  v138 = objc_opt_self();
  v24 = [v138 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28 = sub_100440048(v25, v26, v19, v21, v22);
  v21, v29, v30, v31, v32, v33, v34, v35;
  v22, v36, v37, v38, v39, v40, v41, v42;
  v27, v43, v44, v45, v46, v47, v48, v49;
  v50 = *(v8 + 8);
  v135 = v8 + 8;
  v137 = v50;
  v50(v11, v7);
  v152 = v28;
  v133 = sub_1000F5104(&unk_10093D140, qword_1007969F0);
  v132 = sub_1000F5104(&unk_100936F70, &unk_100791B60);
  v131 = sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v130 = sub_10054B4EC;
  v123 = v6;
  Publisher.map<A>(_:)();
  v129 = sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, &protocol conformance descriptor for Publishers.Map<A, B>);
  v128 = sub_100067038;
  v51 = v143;
  Publisher.filter(_:)();

  v52 = *(v149 + 8);
  v149 += 8;
  v127 = v52;
  v52(v6, v51);
  v53 = v126;
  v54 = *(v126 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_accountSignInOrOutSubscriptionTransactionRegistrar);
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = 1;
  v125 = sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, &protocol conformance descriptor for Publishers.Filter<A>);

  v56 = v141;
  v57 = v111;
  v115 = v14;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v58 = *(v148 + 8);
  v148 += 8;
  v124 = v58;
  v58(v14, v56);
  v152 = *(v53 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler);
  v59 = v152;
  v121 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v60 = *(v121 - 8);
  v120 = *(v60 + 56);
  v122 = v60 + 56;
  v61 = v146;
  v120(v146, 1, 1, v121);
  v117 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v116 = sub_10000CB48(&qword_100942518, &qword_100942508, &qword_1007A2D48, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v118 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v114 = v59;
  v62 = v142;
  v63 = v144;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v61, &qword_100939980, &unk_10079ADA0);
  v64 = *(v150 + 8);
  v150 += 8;
  v119 = v64;
  v64(v57, v63);
  v65 = swift_allocObject();
  v65[2] = sub_10033D2B8;
  v65[3] = 0;
  v65[4] = v54;
  v113 = sub_10000CB48(&unk_100942520, &qword_100942510, &qword_1007A2D50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v66 = v145;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  v67 = *(v151 + 8);
  v151 += 8;
  v112 = v67;
  v67(v62, v66);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = v139;
  *(v71 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v71 + 40) = v72;
  v73 = [v138 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;
  v77 = sub_100440048(v74, v75, v68, v70, v71);
  v70, v78, v79, v80, v81, v82, v83, v84;
  v71, v85, v86, v87, v88, v89, v90, v91;
  v76, v92, v93, v94, v95, v96, v97, v98;
  v137(v11, v136);
  v152 = v77;
  v99 = v123;
  Publisher.map<A>(_:)();
  v100 = v115;
  v101 = v143;
  Publisher.filter(_:)();

  v127(v99, v101);
  v102 = swift_allocObject();
  *(v102 + 16) = v54;
  *(v102 + 24) = 1;

  v103 = v141;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v124(v100, v103);
  v104 = v114;
  v152 = v114;
  v105 = v146;
  v120(v146, 1, 1, v121);
  v106 = v142;
  v107 = v144;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v105, &qword_100939980, &unk_10079ADA0);

  v119(v57, v107);
  v108 = swift_allocObject();
  v108[2] = sub_10033D2D8;
  v108[3] = 0;
  v108[4] = v54;

  v109 = v145;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  v112(v106, v109);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100339F4C()
{
  v1 = v0;
  v169 = *v0;
  v168 = sub_1000F5104(&qword_100942410, &unk_1007A2A38);
  v166 = *(v168 - 8);
  __chkstk_darwin(v168, v2);
  v163 = &v127 - v3;
  v164 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  v162 = *(v164 - 8);
  __chkstk_darwin(v164, v4);
  v160 = (&v127 - v5);
  v153 = sub_1000F5104(&qword_100942418, &qword_1007A2A48);
  v154 = *(v153 - 8);
  __chkstk_darwin(v153, v6);
  v152 = &v127 - v7;
  v156 = sub_1000F5104(&qword_100942420, &qword_1007A2A50);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156, v8);
  v151 = &v127 - v9;
  v159 = sub_1000F5104(&qword_100942428, &qword_1007A2A58);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159, v10);
  v157 = &v127 - v11;
  v167 = sub_1000F5104(&qword_100942430, &qword_1007A2A60);
  v165 = *(v167 - 8);
  __chkstk_darwin(v167, v12);
  v161 = &v127 - v13;
  v149 = sub_1000F5104(&qword_100942438, &qword_1007A2A68);
  v150 = *(v149 - 8);
  __chkstk_darwin(v149, v14);
  v145 = &v127 - v15;
  v139 = sub_1000F5104(&qword_100942440, &qword_1007A2A70);
  v140 = *(v139 - 8);
  __chkstk_darwin(v139, v16);
  v137 = &v127 - v17;
  v143 = sub_1000F5104(&qword_100942448, &qword_1007A2A78);
  v146 = *(v143 - 8);
  __chkstk_darwin(v143, v18);
  v138 = &v127 - v19;
  v147 = sub_1000F5104(&qword_100942450, &qword_1007A2A80);
  v148 = *(v147 - 8);
  __chkstk_darwin(v147, v20);
  v141 = &v127 - v21;
  v22 = sub_1000F5104(&qword_100942458, &qword_1007A2A88);
  v178 = *(v22 - 8);
  v179 = v22;
  __chkstk_darwin(v22, v23);
  v144 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v177 = &v127 - v27;
  v28 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v28 - 8, v29);
  v176 = &v127 - v30;
  v31 = sub_1000F5104(&qword_10093E718, &qword_10079C980);
  __chkstk_darwin(v31 - 8, v32);
  v34 = &v127 - v33;
  v35 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v129 = v35;
  v36 = *(v35 - 8);
  __chkstk_darwin(v35, v37);
  v128 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000F5104(&qword_100942460, &qword_1007A2A90);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39, v41);
  v43 = &v127 - v42;
  v131 = sub_1000F5104(&qword_100942468, &qword_1007A2A98);
  v132 = *(v131 - 8);
  __chkstk_darwin(v131, v44);
  v46 = &v127 - v45;
  v135 = sub_1000F5104(&qword_100942470, &qword_1007A2AA0);
  v170 = *(v135 - 1);
  __chkstk_darwin(v135, v47);
  v49 = &v127 - v48;
  v133 = sub_1000F5104(&qword_100942478, &qword_1007A2AA8);
  v134 = *(v133 - 8);
  __chkstk_darwin(v133, v50);
  v130 = &v127 - v51;
  v180 = v1;
  v52 = *&v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 16];
  v183 = *&v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration];
  v184 = v52;
  v185 = v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32];
  v182 = _swiftEmptySetSingleton;
  v136 = sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  Just.init(_:)();
  v181 = &v183;
  Just.drop(while:)();
  (*(v40 + 8))(v43, v39);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (*(v36 + 56))(v34, 1, 1, v35);
  v182 = *&v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler];
  v53 = v182;
  v54 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v57 = v176;
  v175 = v54;
  v173 = v56;
  v172 = v55 + 56;
  (v56)(v176, 1, 1);
  v58 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_100942480, &qword_100942468, &qword_1007A2A98, &protocol conformance descriptor for A?.Publisher);
  v59 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v142 = v53;
  v60 = v128;
  v61 = v34;
  v62 = v131;
  v174 = v58;
  v171 = v59;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000050A4(v57, &qword_100939980, &unk_10079ADA0);
  sub_1000050A4(v61, &qword_10093E718, &qword_10079C980);
  (*(v36 + 8))(v60, v129);
  (*(v132 + 8))(v46, v62);
  sub_10000CB48(&qword_100942488, &qword_100942470, &qword_1007A2AA0, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v63 = v135;
  v64 = v130;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v170 + 8))(v49, v63);
  v135 = &protocol conformance descriptor for Publishers.HandleEvents<A>;
  sub_10000CB48(&qword_100942490, &qword_100942478, &qword_1007A2AA8, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v65 = v133;
  v170 = Publisher.eraseToAnyPublisher()();
  (*(v134 + 8))(v64, v65);
  v66 = v180;
  v67 = *&v180[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100791340;
  *(v71 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v71 + 40) = v72;
  *(v71 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v71 + 56) = v73;
  v74 = sub_100441DF8(v67, v68, v70, v71);
  v70, v75, v76, v77, v78, v79, v80, v81;
  v71, v82, v83, v84, v85, v86, v87, v88;
  v182 = v74;
  v89 = swift_allocObject();
  v90 = v184;
  *(v89 + 16) = v183;
  *(v89 + 32) = v90;
  *(v89 + 48) = v185;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v91 = v137;
  Publisher.drop(while:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100942498, &qword_100942440, &qword_1007A2A70, &protocol conformance descriptor for Publishers.DropWhile<A>);
  v92 = v138;
  v93 = v139;
  Publisher.drop(while:)();

  (*(v140 + 8))(v91, v93);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v182 = type metadata accessor for REMCKSharedEntitySyncActivity();
  sub_1000F5104(&unk_10093E750, qword_10079FC30);
  *(inited + 32) = String.init<A>(describing:)();
  *(inited + 40) = v95;
  v96 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  *(swift_allocObject() + 16) = v96;
  v97 = v66;
  sub_10000CB48(&qword_1009424A0, &qword_100942448, &qword_1007A2A78, &protocol conformance descriptor for Publishers.DropWhile<A>);
  v98 = v145;
  v99 = v143;
  v100 = v92;
  Publisher.map<A>(_:)();

  sub_10000CB48(&qword_1009424A8, &qword_100942438, &qword_1007A2A68, &protocol conformance descriptor for Publishers.Map<A, B>);
  v101 = v141;
  v102 = v149;
  Publisher.filter(_:)();
  (*(v150 + 8))(v98, v102);
  (*(v146 + 8))(v100, v99);
  sub_10000CB48(&qword_1009424B0, &qword_100942450, &qword_1007A2A80, &protocol conformance descriptor for Publishers.Filter<A>);
  v103 = v147;
  v104 = v177;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v148 + 8))(v101, v103);
  v182 = v170;
  (*(v178 + 16))(v144, v104, v179);
  v105 = v151;
  sub_10000CB48(&qword_1009424B8, &qword_100942458, &qword_1007A2A88, v135);

  v106 = v152;
  Publishers.Merge.init(_:_:)();
  v107 = *&v97[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_journalUpdatesSubscriptionTransactionRegistrar];
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = 1;
  sub_10000CB48(&qword_1009424C0, &qword_100942418, &qword_1007A2A48, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v150 = v107;

  v109 = v153;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v154 + 8))(v106, v109);
  sub_1000F5104(&qword_1009424C8, &qword_1007A2AB0);
  if (qword_100935EE0 != -1)
  {
    swift_once();
  }

  v110 = qword_1009421C0;
  v111 = v160;
  *v160 = qword_1009421C0;
  v112 = v110;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v113 = v162;
  v114 = v164;
  (*(v162 + 104))(v111, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v164);
  v115 = v176;
  v173(v176, 1, 1, v175);
  sub_10000CB48(&qword_1009424D0, &qword_100942420, &qword_1007A2A50, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v116 = v163;
  v117 = v156;
  Publisher.collect<A>(_:options:)();
  sub_10000CB48(&qword_1009424D8, &qword_100942410, &unk_1007A2A38, &protocol conformance descriptor for Publishers.CollectByTime<A, B>);
  v118 = v105;
  v119 = v157;
  v120 = v168;
  Publisher.map<A>(_:)();
  (*(v166 + 8))(v116, v120);
  sub_1000050A4(v115, &qword_100939980, &unk_10079ADA0);
  (*(v113 + 8))(v111, v114);
  (*(v155 + 8))(v118, v117);
  v121 = v142;
  v182 = v142;
  v173(v115, 1, 1, v175);
  sub_10000CB48(&qword_1009424E0, &qword_100942428, &qword_1007A2A58, &protocol conformance descriptor for Publishers.Map<A, B>);
  v122 = v161;
  v123 = v159;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v115, &qword_100939980, &unk_10079ADA0);

  (*(v158 + 8))(v119, v123);
  v124 = swift_allocObject();
  v124[2] = v150;
  v124[3] = sub_10033D84C;
  v124[4] = 0;
  sub_10000CB48(&qword_1009424E8, &qword_100942430, &qword_1007A2A60, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v125 = v167;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v165 + 8))(v122, v125);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return (*(v178 + 8))(v177, v179);
}

void sub_10033B750(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v46 - v14;
  sub_10033BB2C(0);
  v47 = a1;
  v16 = [a1 stringRepresentation];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  Date.init()();
  (*(v4 + 56))(v15, 0, 1, v3);
  v19 = *(v1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v21 = (*(v19 + 8))(ObjectType, v19);
  if (!v21)
  {
    v21 = sub_10038FF50(&_swiftEmptyArrayStorage);
  }

  v49 = v21;
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
    sub_100369620(v46, v18, v11);
    v18, v22, v23, v24, v25, v26, v27, v28;
    sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
    v29 = v49;
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    v30 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v30;
    sub_1002C8FF8(v7, v46, v18, isUniquelyReferenced_nonNull_native);
    v18, v32, v33, v34, v35, v36, v37, v38;
    v29 = v48;
  }

  (*(v19 + 16))(v29, ObjectType, v19);
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_1009421A8);
  v40 = v47;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138543362;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "📔 RDSyncActivityEngine - logged sign in event for {accountID: %{public}@}", v43, 0xCu);
    sub_1000050A4(v44, &unk_100938E70, &unk_100797230);
  }
}

void sub_10033BB2C(char a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController) newBackgroundContextWithAuthor:RDSyncActivityNotificationEngineAuthor];
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
}

void sub_10033BD98(void *a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v6 = __chkstk_darwin(v4 - 8, v5).n128_u64[0];
  v8 = &v30 - v7;
  v9 = [a1 stringRepresentation];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = *(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v15 = (*(v13 + 8))(ObjectType, v13);
  if (!v15)
  {
    v15 = sub_10038FF50(&_swiftEmptyArrayStorage);
  }

  v31 = v15;
  sub_100369620(v10, v12, v8);
  v12, v16, v17, v18, v19, v20, v21, v22;
  sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
  (*(v13 + 16))(v31, ObjectType, v13);
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_1009421A8);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "📔 RDSyncActivityEngine - logged sign out event for {accountID: %{public}@}", v27, 0xCu);
    sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
  }

  sub_10033BB2C(1);
}

uint64_t sub_10033C054(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10033C0C0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  sub_1000F5104(&qword_100937018, &unk_100791C00);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (!v2)
  {
    v3 = v24;
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_1009421A8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = *(v24 + 16);
      v24, v9, v10, v11, v12, v13, v14, v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "📔 RDSyncActivityEngine: Fetch Success - Consumed entries: %{public}ld", v8, 0xCu);
    }

    else
    {

      v24, v16, v17, v18, v19, v20, v21, v22;
    }

    if (*(v4 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
    }
  }

  return v3;
}

void sub_10033C29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = v54 - v13;
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v56 = sub_100006654(v15, qword_1009421A8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v57 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "📔 RDSyncActivityEngine: Deleting journal entries", v19, 2u);
    v3 = v2;
    a2 = v57;
  }

  v28 = *(a1 + 16);
  if (v28)
  {
    v55 = v3;
    v58 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v30 = *(v7 + 72);
    do
    {
      sub_100010364(v29, v14, &qword_1009424F0, &qword_1007A2AB8);
      sub_100342B28(v14, v10);
      sub_100342C48(&v10[*(v6 + 48)], type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 = specialized ContiguousArray._endMutation()();
      v29 += v30;
      --v28;
    }

    while (v28);
    v31 = v58;
    v3 = v55;
    a2 = v57;
  }

  else
  {
    v31 = &_swiftEmptyArrayStorage;
  }

  v59 = &_swiftEmptyArrayStorage;
  if (v31 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
LABEL_12:
      __chkstk_darwin(v20, v21);
      v54[-4] = v31;
      v54[-3] = a2;
      v54[-2] = &v59;
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      v31, v32, v33, v34, v35, v36, v37, v38;
      if (v3)
      {
        v59, v39, v40, v41, v42, v43, v44, v45;
      }

      else
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 134217984;
          swift_beginAccess();
          if (v59 >> 62)
          {
            v49 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v49 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v48 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v46, v47, "📔 RDSyncActivityEngine: Deleted journal entries: %ld", v48, 0xCu);
        }

        if (*(v54[1] + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32) == 1)
        {
          swift_beginAccess();
          v50 = v59;
          swift_getKeyPath();
          swift_getKeyPath();
          v58 = v50;

          static Published.subscript.setter();
        }

        swift_beginAccess();
      }

      return;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  v31, v21, v22, v23, v24, v25, v26, v27;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "📔 RDSyncActivityEngine: Up-to-date! No journal entries to delete", v53, 2u);
  }
}

uint64_t sub_10033C7C8()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  __chkstk_darwin(v15, v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v14[1] = "list.remObjectID";
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v8);
  v14[0] = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10000D410(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1009421C0 = result;
  return result;
}

uint64_t sub_10033CB0C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10033CB8C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10033CC00(uint64_t a1, uint64_t a2, int a3)
{
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v131 - v9;
  v143 = 258;
  v144 = a1;
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v3)
  {
    return;
  }

  v11 = v145;
  sub_10000CB48(&qword_10093A580, &qword_10093A578, &qword_1007A1E10, &protocol conformance descriptor for [A]);
  v12 = Sequence.mapToSet<A>(_:)();
  v133 = 0;
  v11, v13, v14, v15, v16, v17, v18, v19;
  v21 = *(a2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  v20 = *(a2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v20 + 8);
  v135 = v21;
  v141 = ObjectType;
  v142 = v20;
  v137 = v23;
  v138 = v20 + 8;
  if (!v23(ObjectType, v20))
  {
    sub_10038FF50(&_swiftEmptyArrayStorage);
  }

  v24 = sub_1001A6DC0();
  v25 = *(v12 + 16);
  v26 = *v24->clientIdentity;
  v132 = a3;
  if (v25 <= v26 >> 3)
  {
    v145 = v24;
    sub_10019BAF4(v12);
    v12, v35, v36, v37, v38, v39, v40, v41;
    v27 = v145;
  }

  else
  {
    v27 = sub_10019C4D4(v12, v24);
    v12, v28, v29, v30, v31, v32, v33, v34;
  }

  v42 = &v27->clientIdentity[40];
  v43 = 1 << v27->clientIdentity[16];
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *&v27->clientIdentity[40];
  v46 = (v43 + 63) >> 6;
  v136 = v142 + 16;

  v47 = 0;
  v139 = v10;
  v134 = v27;
  while (v45)
  {
LABEL_17:
    v58 = (*&v27->clientIdentity[32] + ((v47 << 10) | (16 * __clz(__rbit64(v45)))));
    v59 = v27;
    v61 = *v58;
    v60 = v58[1];

    v62 = v137(v141, v142);
    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = _swiftEmptyDictionarySingleton;
    }

    v140 = v60;
    v64 = sub_100005F4C(v61, v60);
    if (v65)
    {
      v66 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v63;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100375A1C();
        v63 = v145;
      }

      *(*&v63->clientIdentity[32] + 16 * v66 + 8), v68, v69, v70, v71, v72, v73, v74;
      v75 = *&v63->clientIdentity[40];
      v76 = type metadata accessor for Date();
      v77 = *(v76 - 8);
      v78 = v75 + *(v77 + 72) * v66;
      v49 = v139;
      (*(v77 + 32))(v139, v78, v76);
      sub_100333370(v66, v63);
      (*(v77 + 56))(v49, 0, 1, v76);
      v27 = v134;
    }

    else
    {
      v48 = type metadata accessor for Date();
      v49 = v139;
      (*(*(v48 - 8) + 56))(v139, 1, 1, v48);
      v27 = v59;
    }

    v45 &= v45 - 1;
    sub_1000050A4(v49, &unk_100938850, qword_100795AE0);
    (*(v142 + 16))(v63, v141);
    v140, v50, v51, v52, v53, v54, v55, v56;
  }

  while (1)
  {
    v57 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_26;
    }

    if (v57 >= v46)
    {
      break;
    }

    v45 = *&v42[8 * v57];
    ++v47;
    if (v45)
    {
      v47 = v57;
      goto LABEL_17;
    }
  }

  if (!*v27->clientIdentity)
  {
    v27, v79, v80, v81, v82, v83, v84, v85;
    return;
  }

  if (qword_100935ED8 != -1)
  {
    goto LABEL_39;
  }

LABEL_26:
  v86 = type metadata accessor for Logger();
  sub_100006654(v86, qword_1009421A8);

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  v27, v89, v90, v91, v92, v93, v94, v95;
  if (os_log_type_enabled(v87, v88))
  {
    v103 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *v103 = 136446466;
    if (v132)
    {
      v104 = 0x4574754F6E676973;
    }

    else
    {
      v104 = 0x76456E496E676973;
    }

    if (v132)
    {
      v105 = 0xEC000000746E6576;
    }

    else
    {
      v105 = 0xEB00000000746E65;
    }

    v106 = sub_10000668C(v104, v105, &v145);
    v105, v107, v108, v109, v110, v111, v112, v113;
    *(v103 + 4) = v106;
    *(v103 + 12) = 2082;
    v114 = Set.description.getter();
    v116 = v115;
    v27, v115, v117, v118, v119, v120, v121, v122;
    v123 = sub_10000668C(v114, v116, &v145);
    v116, v124, v125, v126, v127, v128, v129, v130;
    *(v103 + 14) = v123;
    swift_arrayDestroy();
  }

  else
  {
    v27, v96, v97, v98, v99, v100, v101, v102;
  }
}

void sub_10033D250(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 stringRepresentation];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_10033D2F8(uint64_t a1, uint64_t *a2, const char *a3, void (*a4)(void))
{
  v61 = a4;
  v56 = a3;
  v54 = type metadata accessor for Date();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54, v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v50 = objc_autoreleasePoolPush();
  v10 = v9 + 56;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 56);
  v14 = (v11 + 63) >> 6;
  v52 = (v6 + 8);
  v62 = v9;

  v15 = 0;
  *&v16 = 138543618;
  v51 = v16;
  v55 = a1;
  while (v13)
  {
LABEL_11:
    v19 = *(v62 + 48) + 24 * (__clz(__rbit64(v13)) | (v15 << 6));
    v20 = *(v19 + 16);
    v21 = qword_100935ED8;
    v22 = *(v19 + 8);
    v23 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_1009421A8);
    v25 = v22;
    v26 = v23;
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59 = v31;
      v60 = swift_slowAlloc();
      v63 = v60;
      *v30 = v51;
      *(v30 + 4) = v26;
      *v31 = v26;
      *(v30 + 12) = 2082;
      v32 = v26;
      v58 = v29;
      v33 = v53;
      Date.init()();
      v34 = Date.description.getter();
      v57 = v28;
      v35 = v27;
      v36 = v34;
      v38 = v37;
      (*v52)(v33, v54);
      v39 = v36;
      v27 = v35;
      v40 = sub_10000668C(v39, v38, &v63);
      v38, v41, v42, v43, v44, v45, v46, v47;
      *(v30 + 14) = v40;
      v48 = v57;
      _os_log_impl(&_mh_execute_header, v57, v58, v56, v30, 0x16u);
      sub_1000050A4(v59, &unk_100938E70, &unk_100797230);

      sub_10000607C(v60);
    }

    else
    {
    }

    v13 &= v13 - 1;
    v17 = v26;
    v61();
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      objc_autoreleasePoolPop(v50);
      return;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10033D69C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void sub_10033D75C(uint64_t a1, const char *a2)
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_1009421A8);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

void sub_10033D84C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_10033D8A4(a1);

  objc_autoreleasePoolPop(v2);
}

void sub_10033D8A4(uint64_t a1)
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_1009421A8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "📔 RDSyncActivityEngine - Starting journal consumption", v6, 2u);
  }

  v7 = [*(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController) newBackgroundContextWithAuthor:RDSyncActivityNotificationEngineAuthor];
  __chkstk_darwin(v7, v8);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v1)
  {

    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = Error.rem_errorDescription.getter();
      v15 = v14;
      v16 = sub_10000668C(v13, v14, &v27);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "📔 RDSyncActivityEngine - Unable to consume journal updates {error: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {
    }
  }

  else
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "📔 RDSyncActivityEngine - Finished journal consumption", v26, 2u);
    }
  }
}

void sub_10033DBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10033C0C0(a2);
  if (!v2)
  {
    if (*(v4 + 16))
    {
      v12 = v4;
      v13 = sub_10033DD20(v4);
      sub_10033E04C(v13, sub_10033DF64, 0);
      v13, v14, v15, v16, v17, v18, v19, v20;
      sub_10033C29C(v12, a2);
      v22 = v21;
      v12, v23, v24, v25, v26, v27, v28, v29;
      v22, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
      v4, v5, v6, v7, v8, v9, v10, v11;
      if (qword_100935ED8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_1009421A8);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "📔 RDSyncActivityEngine: Skipping journal entry processing, no changes to process", v40, 2u);
      }
    }
  }
}

void *sub_10033DD20(uint64_t a1)
{
  v2 = v1;
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_1009421A8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);
    a1, v8, v9, v10, v11, v12, v13, v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "📔 RDSyncActivityEngine: Processing entries - %ld", v7, 0xCu);
  }

  else
  {

    a1, v15, v16, v17, v18, v19, v20, v21;
  }

  v22 = 0;
  v27 = _swiftEmptyDictionarySingleton;
  v23 = *(a1 + 16);
  while (v23 != v22)
  {
    v24 = *(sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8) - 8);
    sub_10033FBAC(&v27, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22++);
  }

  v25 = v27;
  if (*(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v25;

    static Published.subscript.setter();
  }

  return v25;
}

void sub_10033DF64()
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009421A8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "📔 RDSyncActivityEngine: Notifications posted successfully", v2, 2u);
  }
}

void sub_10033E04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v86 = a2;
  v99 = type metadata accessor for UUID();
  v4 = *(v99 - 8);
  __chkstk_darwin(v99, v5);
  v98 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93, v7);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchQoS();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90, v9);
  v88 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch_group_create();
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v97 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userNotificationCenter;
  v16 = (v13 + 63) >> 6;
  v96 = 0x80000001007F5450;
  v95 = (v4 + 8);
  v94 = v108;
  v104 = a1;

  v17 = 0;
  v105 = 0;
  v102 = v11;
  v103 = a1 + 64;
  while (v15)
  {
LABEL_11:
    v70 = __clz(__rbit64(v15)) | (v17 << 6);
    v71 = (*(v104 + 48) + 16 * v70);
    v72 = *v71;
    v73 = v71[1];
    sub_10000A87C(*(v104 + 56) + 40 * v70, v111);
    v109 = v72;
    v110 = v73;

    dispatch_group_enter(v11);
    v74 = v112;
    v75 = v113;
    sub_10000F61C(v111, v112);
    v76 = v105;
    v77 = (*(v75 + 16))(v74, v75);
    if (v76)
    {
      dispatch_group_leave(v11);

      v105 = 0;
    }

    else
    {
      v105 = 0;
      aBlock = 0xD000000000000031;
      v107 = v96;
      v18 = v77;
      v19._countAndFlagsBits = v72;
      v19._object = v73;
      String.append(_:)(v19);
      v20 = v107;

      v21._countAndFlagsBits = 46;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v20, v22, v23, v24, v25, v26, v27, v28;
      v30 = aBlock;
      v29 = v107;
      v31 = v98;
      UUID.init()();
      v32 = UUID.uuidString.getter();
      v34 = v33;
      (*v95)(v31, v99);
      aBlock = v30;
      v107 = v29;

      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);
      v34, v36, v37, v38, v39, v40, v41, v42;
      v29, v43, v44, v45, v46, v47, v48, v49;
      v51 = aBlock;
      v50 = v107;
      v52 = *(v101 + v97);
      v53 = swift_allocObject();
      v53[2] = v51;
      v53[3] = v50;
      v54 = v102;
      v53[4] = v18;
      v53[5] = v54;
      v55 = swift_allocObject();
      v55[2] = v52;
      v55[3] = sub_100342BB8;
      v55[4] = v53;
      v55[5] = v51;
      v55[6] = v50;
      v55[7] = v18;
      v100 = *(v52 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter);
      v56 = swift_allocObject();
      v56[2] = v52;
      v56[3] = sub_100342BC4;
      v56[4] = v55;
      v108[2] = sub_100342BD4;
      v108[3] = v56;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108[0] = sub_1004CB24C;
      v108[1] = &unk_1008EE718;
      v57 = _Block_copy(&aBlock);
      v58 = v18;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      v59 = v58;
      v11 = v102;
      v60 = v59;
      v61 = v102;

      [v100 getNotificationSettingsWithCompletionHandler:v57];
      _Block_release(v57);
      v50, v62, v63, v64, v65, v66, v67, v68;
    }

    v12 = v103;
    v15 &= v15 - 1;
    sub_1000050A4(&v109, &qword_1009424F8, &unk_1007A2B08);
  }

  while (1)
  {
    v69 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v69 >= v16)
    {

      v78 = swift_allocObject();
      v79 = v86;
      v80 = v87;
      *(v78 + 16) = v86;
      *(v78 + 24) = v80;
      v111[2] = sub_100342BE0;
      v112 = v78;
      v109 = _NSConcreteStackBlock;
      v110 = 1107296256;
      v111[0] = sub_100019200;
      v111[1] = &unk_1008EE768;
      v81 = _Block_copy(&v109);
      sub_10014D92C(v79, v80);
      v82 = v88;
      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_10000D410(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
      v83 = v91;
      v84 = v93;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();

      _Block_release(v81);
      (*(v92 + 8))(v83, v84);
      (*(v89 + 8))(v82, v90);

      return;
    }

    v15 = *(v12 + 8 * v69);
    ++v17;
    if (v15)
    {
      v17 = v69;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10033E804(unsigned __int8 *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6, v8);
  v137 = (&v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v11);
  v133 = (&v120 - v12);
  __chkstk_darwin(v13, v14);
  v136 = (&v120 - v15);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  __chkstk_darwin(updated, v16);
  v135 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935ED8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_1009421A8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "📔 RDSyncActivityEngine: Starting Fetch", v21, 2u);
    }

    v22 = sub_100342024();
    type metadata accessor for REMCKSharedEntitySyncActivity();
    v23 = NSManagedObjectContext.fetch<A>(_:)();
    if (v3)
    {
      break;
    }

    v31 = v23;
    v140 = _swiftEmptyDictionarySingleton;
    if (v23 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v128 = a2;
    v129 = v22;
    v126 = v7;
    v127 = v6;
    if (v32)
    {
      a2 = 0;
      v7 = v31 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v33 = *(v31 + 8 * a2 + 32);
        }

        v6 = v33;
        v34 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v139 = v33;
        sub_10033F044(&v140, &v139);

        ++a2;
      }

      while (v34 != v32);
      v35 = v140;
    }

    else
    {
      v35 = _swiftEmptyDictionarySingleton;
    }

    v31, v24, v25, v26, v27, v28, v29, v30;

    v37 = sub_100278794(v36);
    v35, v38, v39, v40, v41, v42, v43, v44;
    __chkstk_darwin(v45, v46);
    *(&v120 - 2) = v37;
    *(&v120 - 1) = a1;
    sub_1000F5104(&qword_100942500, qword_1007A2BB0);
    NSManagedObjectContext.rem_performAndWait<A>(_:)();

    v134 = v140;
    if ((v35 & 0xC000000000000001) != 0)
    {
      a1 = 0;
      v47 = 0;
      v48 = 0;
      a2 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v49 = -1 << *(v35 + 32);
      v47 = ~v49;
      a1 = (v35 + 64);
      v50 = -v49;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v48 = v51 & *(v35 + 64);
      a2 = v35;
    }

    v124 = v35;

    v7 = 0;
    v123 = v47;
    v6 = ((v47 + 64) >> 6);
    v125 = &_swiftEmptyArrayStorage;
    v130 = a2;
    v131 = a1;
LABEL_25:
    v59 = v7;
    v60 = v48;
    while ((a2 & 0x8000000000000000) != 0)
    {
      v67 = __CocoaDictionary.Iterator.next()();
      if (!v67 || (v68 = v52, v139 = v67, sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr), swift_dynamicCast(), v65 = v140, v139 = v68, sub_1000060C8(0, &qword_100939DB0, REMSharedEntitySyncActivity_ptr), swift_dynamicCast(), v66 = v140, v7 = v59, v138 = v60, !v65))
      {
LABEL_44:
        v134, v52, v53, v54, v55, v56, v57, v58;

        sub_10001B860(a2);
        v124, v113, v114, v115, v116, v117, v118, v119;
        *v128 = v125;
        return;
      }

LABEL_37:
      v69 = v65;
      v70 = v66;
      v71 = [(RDXPCStorePerformer *)v70 ckIdentifier];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      if (*v134->clientIdentity)
      {
        v82 = sub_100005F4C(v72, v74);
        v84 = v83;
        v74, v83, v85, v86, v87, v88, v89, v90;
        if (v84)
        {
          v122 = *(*&v134->clientIdentity[40] + 8 * v82);
          v91 = [(RDXPCStorePerformer *)v70 activityDate];
          v92 = v135;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v121 = [(RDXPCStorePerformer *)v70 activityType];
          v93 = [(RDXPCStorePerformer *)v70 authorUserRecordIDString];
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          v97 = updated;
          *(v92 + *(updated + 20)) = v121;
          v98 = (v92 + *(v97 + 24));
          *v98 = v94;
          v98[1] = v96;
          *(v92 + *(v97 + 28)) = v122;
          v99 = v127;
          v100 = *(v127 + 12);
          v101 = v136;
          *v136 = v69;
          sub_1002CDE74(v92, v101 + v100, v102);
          v103 = v101;
          v104 = v133;
          sub_100010364(v103, v133, &qword_1009424F0, &qword_1007A2AB8);
          v105 = *(v99 + 12);
          v106 = v137;
          *v137 = *v104;
          sub_1002CDF8C(v104 + v105, v106 + v105, v107);
          v108 = v125;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v131;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v108 = sub_100367D6C(0, *v108->clientIdentity + 1, 1, v108);
          }

          v111 = *v108->clientIdentity;
          v110 = *&v108->clientIdentity[8];
          if (v111 >= v110 >> 1)
          {
            v108 = sub_100367D6C((v110 > 1), v111 + 1, 1, v108);
          }

          sub_1000050A4(v136, &qword_1009424F0, &qword_1007A2AB8);
          sub_100342C48(v135, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
          *v108->clientIdentity = v111 + 1;
          v112 = (*(v126 + 80) + 32) & ~*(v126 + 80);
          v125 = v108;
          sub_100342B28(v137, v108 + v112 + *(v126 + 72) * v111);
          a2 = v130;
          v48 = v138;
          goto LABEL_25;
        }
      }

      else
      {
        v74, v75, v76, v77, v78, v79, v80, v81;
      }

      v59 = v7;
      v60 = v138;
      a2 = v130;
      a1 = v131;
    }

    v61 = v59;
    v62 = v60;
    v7 = v59;
    if (v60)
    {
LABEL_33:
      v138 = (v62 - 1) & v62;
      v63 = (v7 << 9) | (8 * __clz(__rbit64(v62)));
      v64 = *(*(a2 + 56) + v63);
      v65 = *(*(a2 + 48) + v63);
      v66 = v64;
      if (!v65)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    }

    while (1)
    {
      v7 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v7 >= v6)
      {
        goto LABEL_44;
      }

      v62 = *&a1[8 * v7];
      ++v61;
      if (v62)
      {
        goto LABEL_33;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }
}

void sub_10033F044(uint64_t *a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4, v5);
  v7 = &v36 - v6;
  v8 = *a2;
  v9 = sub_10029EE80();
  if (v9)
  {
    v10 = v9;
    v11 = [v8 objectID];
    v12 = *a1;
    if ((*a1 & 0xC000000000000001) == 0)
    {
      v7 = v10;
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    v7 = v10;
    v13 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v13, 1))
    {
      *a1 = sub_10021DBB0(v8, v13 + 1);
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *a1;
      sub_1002C9178(v7, v11, isUniquelyReferenced_nonNull_native);

      *a1 = v37;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_100935ED8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_1009421A8);
  v15 = v8;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136446210;
    v20 = [v15 uuidForChangeTracking];
    if (v20)
    {
      v21 = v20;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    }

    else
    {
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    }

    v25 = Optional.descriptionOrNil.getter();
    v27 = v26;
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    v28 = sub_10000668C(v25, v27, &v37);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v18 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "📔 RDSyncActivityEngine: Unable to make activity object for journal entry {identifier: %{public}s}", v18, 0xCu);
    sub_10000607C(v19);
  }
}

void sub_10033F37C(unint64_t a1@<X0>, uint64_t a2@<X1>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v6 = v3;
  v117 = a3;
  v9 = _s10PredicatesOMa(0);
  __chkstk_darwin(v9, v10);
  v118 = (v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
LABEL_50:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = &_swiftEmptyArrayStorage;
  v124 = a2;
  v125 = v6;
  if (v12)
  {
    v126 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v123 = v9;
    v14 = 0;
    v13 = v126;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 ckIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v126 = v13;
      v22 = *v13->clientIdentity;
      v21 = *&v13->clientIdentity[8];
      if (v22 >= v21 >> 1)
      {
        sub_100026EF4((v21 > 1), v22 + 1, 1);
        v13 = v126;
      }

      ++v14;
      *v13->clientIdentity = v22 + 1;
      v23 = v13 + 16 * v22;
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
    }

    while (v12 != v14);
  }

  KeyPath = swift_getKeyPath();
  v25 = sub_100270804(v13);
  v13, v26, v27, v28, v29, v30, v31, v32;
  v33 = sub_1003EAE38(KeyPath, v25);

  v34 = v118;
  *v118 = v33;
  *(v34 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = v33;
  v35 = sub_100043AA8();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  a1 = &unk_1007A2C00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1007953F0;
  *(v37 + 32) = swift_getKeyPath();
  v38 = sub_100050654(inited, v37, 0, v35);
  inited, v39, v40, v41, v42, v43, v44, v45;

  swift_setDeallocating();
  v46 = v38;
  swift_arrayDestroy();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100796900;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v47 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  *(v47 + 40) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v47, v49, v50, v51, v52, v53, v54, v55;
  [(RDXPCStorePerformer *)v38 setSortDescriptors:isa];

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v3 = v125;
  v56 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100342C48(v34, _s10PredicatesOMa);

    return;
  }

  v12 = v56;
  v115 = v46;
  v4 = v56 & 0xFFFFFFFFFFFFFF8;
  if (!(v56 >> 62))
  {
    a2 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_52:
  a2 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
  v114[1] = v3;
  if (!a2)
  {
    v116 = _swiftEmptyDictionarySingleton;
LABEL_47:
    v12, v57, v58, v59, v60, v61, v62, v63;

    sub_100342C48(v118, _s10PredicatesOMa);
    *v117 = v116;
    return;
  }

  v6 = 0;
  v124 = v12 & 0xC000000000000001;
  v116 = _swiftEmptyDictionarySingleton;
  *&v64 = 136446210;
  v119 = v64;
  v121 = v12;
  v122 = v5;
  v120 = v4;
  v123 = a2;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      if (v124)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_49;
        }

        v65 = *(v12 + 8 * v9 + 32);
      }

      v66 = v65;
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v67 = [v65 ckIdentifier];
      v125 = v9 + 1;
      if (v67)
      {
        break;
      }

      if (qword_100935ED8 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      v6 = sub_100006654(v68, qword_1009421A8);
      a1 = v66;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v6 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v126 = v71;
        *v6 = v119;
        v72 = [a1 remObjectID];
        if (v72)
        {
          v73 = v72;
          v74 = [v72 description];

          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;
        }

        else
        {
          v77 = 0xE300000000000000;
          v75 = 7104878;
        }

        v78 = sub_10000668C(v75, v77, &v126);
        v77, v79, v80, v81, v82, v83, v84, v85;
        *(v6 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v69, v70, "📔 RDSyncActivityEngine: Unable to get ckIdentifier for reminder {identifier: %{public}s}", v6, 0xCu);
        sub_10000607C(v71);

        v12 = v121;
        v5 = v122;
        v4 = v120;
        a2 = v123;
      }

      else
      {
      }

      ++v9;
      if (v125 == a2)
      {
        goto LABEL_47;
      }
    }

    v86 = v67;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = v88;

    v89 = v66;
    v90 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v126 = v90;
    v92 = sub_100005F4C(v87, a1);
    v94 = *(v90 + 16);
    v95 = (v93 & 1) == 0;
    v96 = __OFADD__(v94, v95);
    v97 = v94 + v95;
    if (v96)
    {
      __break(1u);
    }

    else
    {
      v98 = v93;
      if (*(v90 + 24) >= v97)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v113 = v92;
          sub_1003731D4();
          v92 = v113;
        }
      }

      else
      {
        sub_10036A224(v97, isUniquelyReferenced_nonNull_native);
        v92 = sub_100005F4C(v87, a1);
        if ((v98 & 1) != (v99 & 1))
        {
          goto LABEL_55;
        }
      }

      v100 = v126;
      v116 = v126;
      if (v98)
      {
        v101 = *&v126->clientIdentity[40];
        v102 = *(v101 + 8 * v92);
        *(v101 + 8 * v92) = v89;

        a1, v103, v104, v105, v106, v107, v108, v109;
        v89 = v102;
        goto LABEL_44;
      }

      *&v126->storeProvider[8 * (v92 >> 6) + 2] |= 1 << v92;
      v110 = (*&v100->clientIdentity[32] + 16 * v92);
      *v110 = v87;
      v110[1] = a1;
      *(*&v100->clientIdentity[40] + 8 * v92) = v89;
      v111 = *v100->clientIdentity;
      v96 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (!v96)
      {
        *v100->clientIdentity = v112;
LABEL_44:
        a2 = v123;
        v6 = v125;

        if (v6 != a2)
        {
          continue;
        }

        goto LABEL_47;
      }
    }

    break;
  }

  __break(1u);
LABEL_55:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10033FBAC(uint64_t *a1, uint64_t a2)
{
  v156 = a1;
  v3 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  v4 = v3 - 8;
  __chkstk_darwin(v3, v5);
  v7 = (&v154 - v6);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v157 = *(updated - 8);
  __chkstk_darwin(updated, v9);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v155 = &v154 - v14;
  __chkstk_darwin(v15, v16);
  v18 = &v154 - v17;
  __chkstk_darwin(v19, v20);
  v22 = &v154 - v21;
  sub_100010364(a2, v7, &qword_1009424F0, &qword_1007A2AB8);

  sub_1002CDF8C(v7 + *(v4 + 56), v22, v23);
  if ((sub_100340778(v22, v24) & 1) == 0)
  {
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_1009421A8);
    sub_1002CDE74(v22, v11, v56);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v159[0] = v60;
      *v59 = 136446210;
      v61 = sub_100338510();
      v62 = v22;
      v64 = v63;
      sub_100342C48(v11, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      v65 = sub_10000668C(v61, v64, v159);
      v64, v66, v67, v68, v69, v70, v71, v72;
      *(v59 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "📔 RDSyncActivityEngine: Entry is not eligible for notifications {%{public}s}", v59, 0xCu);
      sub_10000607C(v60);

      v73 = v62;
      return sub_100342C48(v73, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
    }

    v74 = v11;
    goto LABEL_27;
  }

  v25 = *&v22[*(updated + 20)];
  v26 = updated;
  if (v25 <= 1)
  {
    v27 = v18;
    if (!v25)
    {
      goto LABEL_18;
    }

    if (v25 != 1)
    {
      goto LABEL_28;
    }

    v75 = sub_100338734();
    v83 = *v156;
    if (*(*v156 + 16))
    {
      v84 = v76;
      v85 = sub_100005F4C(v75, v76);
      v87 = v86;
      v84, v86, v88, v89, v90, v91, v92, v93;
      if (v87)
      {
        sub_10000A87C(*(v83 + 56) + 40 * v85, v158);
        sub_10027DC60(v158, v159);
        v94 = v160;
        v95 = v161;
        sub_10000F61C(v159, v160);
        v96 = (v95[1])(v94, v95);
        sub_1000F5104(&qword_100944170, &qword_10079D660);
        v97 = (*(v157 + 80) + 32) & ~*(v157 + 80);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_100791300;
        sub_1002CDE74(v22, v98 + v97, xmmword_100791300);
        *&v158[0] = v96;
        sub_100272548(v98);
        v52 = sub_1002CDCD0(*&v158[0], v99);
        v54 = v100;
        sub_10000607C(v159);
LABEL_43:
        v128 = sub_100338734();
        v130 = v129;
        v131 = &type metadata for RDAddedReminderNotificationContent;
        v132 = &off_1008ED1F0;
LABEL_47:
        v160 = v131;
        v161 = v132;
        v159[0] = v52;
        v159[1] = v54;
        sub_10031DFF4(v159, v128, v130);
        return sub_100342C48(v22, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      }
    }

    else
    {
      v76, v76, v77, v78, v79, v80, v81, v82;
    }

    sub_1000F5104(&qword_100944170, &qword_10079D660);
    v124 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_100791300;
    sub_1002CDE74(v22, v125 + v124, xmmword_100791300);
    v52 = sub_1002CDCD0(v125, v126);
    v54 = v127;
    goto LABEL_43;
  }

  v27 = v18;
  if ((v25 - 2) < 3)
  {
LABEL_18:
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100006654(v101, qword_1009421A8);
    sub_1002CDE74(v22, v27, v102);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = v22;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v159[0] = v107;
      *v106 = 136446210;
      v108 = *(v27 + *(v26 + 20));
      if (v108 > 2)
      {
        if (v108 == 3)
        {
          v109 = 0xD000000000000018;
          v110 = "notesMayHaveDirtyHashtag";
          goto LABEL_50;
        }

        if (v108 == 4)
        {
          v123 = 0x80000001007F3370;
          v109 = 0xD00000000000001BLL;
          goto LABEL_54;
        }

        if (v108 != 5)
        {
LABEL_51:
          v109 = 0x206E776F6E6B6E75;
          v123 = 0xEF746C7561666564;
          goto LABEL_54;
        }

        v123 = 0xE800000000000000;
        v109 = 0x6574656C706D6F63;
      }

      else
      {
        if (v108)
        {
          if (v108 == 1)
          {
            v123 = 0xE300000000000000;
            v109 = 6579297;
            goto LABEL_54;
          }

          if (v108 == 2)
          {
            v109 = 0xD000000000000018;
            v110 = "titleMayHaveDirtyHashtag";
LABEL_50:
            v123 = ((v110 - 32) | 0x8000000000000000);
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        v109 = 0x6E776F6E6B6E75;
        v123 = 0xE700000000000000;
      }

LABEL_54:
      sub_100342C48(v27, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      v138 = sub_10000668C(v109, v123, v159);
      v123, v139, v140, v141, v142, v143, v144, v145;
      *(v106 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v103, v104, "📔 RDSyncActivityEngine: Received a journal entry with an unsupported activity type {type: %{public}s}", v106, 0xCu);
      sub_10000607C(v107);

      v73 = v105;
      return sub_100342C48(v73, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
    }

    v74 = v27;
LABEL_27:
    sub_100342C48(v74, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
    v73 = v22;
    return sub_100342C48(v73, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
  }

  if (v25 == 5)
  {
    v28 = sub_100338734();
    v36 = *v156;
    if (*(*v156 + 16))
    {
      v37 = v29;
      v38 = sub_100005F4C(v28, v29);
      v40 = v39;
      v37, v39, v41, v42, v43, v44, v45, v46;
      if (v40)
      {
        sub_10000A87C(*(v36 + 56) + 40 * v38, v158);
        sub_10027DC60(v158, v159);
        v47 = v160;
        v48 = v161;
        sub_10000F61C(v159, v160);
        v49 = (v48[1])(v47, v48);
        sub_1000F5104(&qword_100944170, &qword_10079D660);
        v50 = (*(v157 + 80) + 32) & ~*(v157 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100791300;
        sub_1002CDE74(v22, v51 + v50, xmmword_100791300);
        *&v158[0] = v49;
        sub_100272548(v51);
        v52 = sub_100349E00(*&v158[0]);
        v54 = v53;
        sub_10000607C(v159);
LABEL_46:
        v128 = sub_100338734();
        v130 = v136;
        v131 = &type metadata for RDCompletedReminderNotificationContent;
        v132 = &off_1008EEBD0;
        goto LABEL_47;
      }
    }

    else
    {
      v29, v29, v30, v31, v32, v33, v34, v35;
    }

    sub_1000F5104(&qword_100944170, &qword_10079D660);
    v133 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_100791300;
    sub_1002CDE74(v22, v134 + v133, xmmword_100791300);
    v52 = sub_100349E00(v134);
    v54 = v135;
    goto LABEL_46;
  }

LABEL_28:
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  sub_100006654(v111, qword_1009421A8);
  v112 = v155;
  sub_1002CDE74(v22, v155, v113);
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v114, v115))
  {

    v74 = v112;
    goto LABEL_27;
  }

  v116 = swift_slowAlloc();
  v117 = swift_slowAlloc();
  v159[0] = v117;
  *v116 = 136446210;
  v118 = *(v112 + *(v26 + 20));
  v119 = v112;
  if (v118 > 2)
  {
    switch(v118)
    {
      case 3:
        v120 = v22;
        v121 = 0xD000000000000018;
        v122 = 0x80000001007F3400;
        goto LABEL_65;
      case 4:
        v120 = v22;
        v122 = 0x80000001007F3370;
        v121 = 0xD00000000000001BLL;
        goto LABEL_65;
      case 5:
        v120 = v22;
        v122 = 0xE800000000000000;
        v121 = 0x6574656C706D6F63;
        goto LABEL_65;
    }

LABEL_62:
    v120 = v22;
    v121 = 0x206E776F6E6B6E75;
    v122 = 0xEF746C7561666564;
    goto LABEL_65;
  }

  if (!v118)
  {
    v120 = v22;
    v121 = 0x6E776F6E6B6E75;
    v122 = 0xE700000000000000;
    goto LABEL_65;
  }

  if (v118 == 1)
  {
    v120 = v22;
    v122 = 0xE300000000000000;
    v121 = 6579297;
    goto LABEL_65;
  }

  if (v118 != 2)
  {
    goto LABEL_62;
  }

  v120 = v22;
  v121 = 0xD000000000000018;
  v122 = 0x80000001007F3420;
LABEL_65:
  sub_100342C48(v119, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
  v146 = sub_10000668C(v121, v122, v159);
  v122, v147, v148, v149, v150, v151, v152, v153;
  *(v116 + 4) = v146;
  _os_log_impl(&_mh_execute_header, v114, v115, "📔 RDSyncActivityEngine: Received a journal entry with an unknown activity type {type: %{public}s}", v116, 0xCu);
  sub_10000607C(v117);

  return sub_100342C48(v120, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
}

uint64_t sub_100340778(uint64_t a1, __n128 a2)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v8 = [*(a1 + *(updated + 28)) list];
  sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();

  v4 = [v9 remObjectID];
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  Optional.tryUnwrap(_:file:line:)();

  v6 = sub_100340928(v10, *(a1 + *(updated + 20)));
  if (v6)
  {

    v7 = 0;
  }

  else
  {
    v7 = sub_100340AD8(a1);
  }

  return v7 & 1;
}

uint64_t sub_100340928(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v7 = [a1 stringRepresentation];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = (*(v5 + 32))(v8, v10, ObjectType, v5);
  v10, v12, v13, v14, v15, v16, v17, v18;
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      return v11 & 1;
    }
  }

  else if ((a2 - 2) >= 3 && a2 == 5)
  {
    return (v11 >> 1) & 1;
  }

  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_1009421A8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134349056;
    *(v23 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v21, v22, "📔 RDSyncActivityEngine: Unsupported notification type: %{public}ld", v23, 0xCu);
  }

  return 1;
}

uint64_t sub_100340AD8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8, v9);
  v12 = &v57[-v11];
  sub_100337E80(v10);
  v14 = v13;
  v15 = [v13 remObjectID];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [v15 stringRepresentation];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = *(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v22 = (*(v20 + 8))(ObjectType, v20);
  if (!v22)
  {
    v22 = sub_10038FF50(&_swiftEmptyArrayStorage);
  }

  v30 = v22;
  if (!*(v22 + 16))
  {
    v22, v23, v24, v25, v26, v27, v28, v29;
    v55 = v19;
LABEL_9:
    v55, v40, v41, v42, v43, v44, v45, v46;

LABEL_10:
    v54 = 1;
    return v54 & 1;
  }

  v31 = sub_100005F4C(v17, v19);
  v33 = v32;
  v19, v32, v34, v35, v36, v37, v38, v39;
  if ((v33 & 1) == 0)
  {
    v55 = v30;
    goto LABEL_9;
  }

  (*(v4 + 16))(v7, *(v30 + 56) + *(v4 + 72) * v31, v3);
  v30, v47, v48, v49, v50, v51, v52, v53;
  (*(v4 + 32))(v12, v7, v3);
  v54 = static Date.< infix(_:_:)();

  (*(v4 + 8))(v12, v3);
  return v54 & 1;
}

id sub_100340D38(unint64_t a1, id a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  v7 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [a2 objectWithID:{v8, v14}];
    [a2 deleteObject:v10];
    v11 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v7;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v6 != v7);
LABEL_13:
  v15 = 0;
  if ([a2 save:{&v15, v14}])
  {
    return v15;
  }

  v13 = v15;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_100340F1C(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, NSObject *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_1009421A8);
    swift_errorRetain();

    v10 = a4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    a3, v13, v14, v15, v16, v17, v18, v19;
    if (os_log_type_enabled(v11, v12))
    {
      v20 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v20 = 136315650;
      swift_getErrorValue();
      v21 = Error.rem_errorDescription.getter();
      v23 = v22;
      v24 = sub_10000668C(v21, v22, &v77);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_10000668C(a2, a3, &v77);
      *(v20 + 22) = 2082;
      v32 = [v10 body];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10000668C(v33, v35, &v77);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v20 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v11, v12, "📔 RDSyncActivityEngine: Unable to post Shared List Activity notification {error: %s, identifier: %{public}s, body: %{public}s}", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_1009421A8);

    v45 = a4;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    a3, v48, v49, v50, v51, v52, v53, v54;
    if (os_log_type_enabled(v46, v47))
    {
      v55 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v55 = 136446466;
      *(v55 + 4) = sub_10000668C(a2, a3, &v77);
      *(v55 + 12) = 2082;
      v56 = [v45 body];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = sub_10000668C(v57, v59, &v77);
      v59, v61, v62, v63, v64, v65, v66, v67;
      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v46, v47, "📔 RDSyncActivityEngine: Posted Shared List Activity notification {identifier: %{public}s, body: %{public}s}", v55, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939240, &unk_100798990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0x696669746E656449;
    *(inited + 40) = 0xEA00000000007265;
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    *(inited + 48) = NSString.init(stringLiteral:)();
    v69 = sub_10038D880(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100939250, &unk_100795D30);
    static Analytics.postEvent(_:payload:duration:)();
    v69, v70, v71, v72, v73, v74, v75, v76;
  }

  dispatch_group_leave(a5);
}

uint64_t sub_1003413E4()
{
  v1 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine___debug_fetchedJournalEntries;
  v2 = sub_1000F5104(&qword_1009423F0, &qword_1007A29D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine___debug_processedJournalEntries;
  v4 = sub_1000F5104(&qword_1009423F8, &qword_1007A29D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine___debug_staleObjectIDs;
  v6 = sub_1000F5104(&qword_100942400, &qword_1007A29E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_cancellables), v7, v8, v9, v10, v11, v12, v13;
  v14 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine__started;
  v15 = sub_1000F5104(&qword_100942408, &qword_1007A29E8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  return v0;
}

uint64_t sub_1003415A4()
{
  sub_1003413E4();

  return swift_deallocClassInstance();
}

void sub_10034163C(uint64_t a1)
{
  sub_100341808(319, &qword_100942258, &qword_100937018, &unk_100791C00);
  if (v1 <= 0x3F)
  {
    sub_100341808(319, &qword_100942260, &qword_100937020, &unk_1007A2840);
    if (v2 <= 0x3F)
    {
      sub_100341808(319, &qword_100942268, &qword_100937028, &qword_100791C10);
      if (v3 <= 0x3F)
      {
        sub_10034185C();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100341808(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000F514C(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10034185C()
{
  if (!qword_100942270)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100942270);
    }
  }
}

uint64_t getEnumTagSinglePayload for RDSharedListActivityNotificationsEngine.EngineConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSharedListActivityNotificationsEngine.EngineConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *sub_100341958(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    v12 = a3[7];
    v13 = *(a2 + v12);
    *(a1 + v12) = v13;

    v14 = v13;
  }

  return a1;
}

void sub_100341A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);
  *(a1 + *(a2 + 24) + 8), v5, v6, v7, v8, v9, v10, v11;
  v12 = *(a1 + *(a2 + 28));
}

uint64_t sub_100341AC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = a3[7];
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;

  v13 = v12;
  return a1;
}

uint64_t sub_100341B68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = a3[7];
  v19 = *(a2 + v18);
  v20 = *(a1 + v18);
  *(a1 + v18) = v19;
  v21 = v19;

  return a1;
}

uint64_t sub_100341C28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_100341CB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = a3[7];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);

  return a1;
}

uint64_t sub_100341DA8(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_100341E5C()
{
  result = qword_1009423E0;
  if (!qword_1009423E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009423E0);
  }

  return result;
}

uint64_t sub_100341EB0@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_100341F2C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100341FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

id sub_100342024()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1003EF734(KeyPath, &off_1008E2BD8);

  type metadata accessor for REMCKSharedEntitySyncActivity();
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v1];
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  v4 = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  v5 = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100796900;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = v4;
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6, v10, v11, v12, v13, v14, v15, v16;
  [v2 setSortDescriptors:isa];

  return v2;
}

void sub_1003421D0(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RDUserNotificationAction();
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  __chkstk_darwin(v6, v8);
  v117 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v116 - v12;
  v14 = type metadata accessor for RDUserNotificationType();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14, v16);
  v120 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v116 - v20;
  v24 = __chkstk_darwin(v22, v23);
  isa = (&v116 - v25);
  v27 = *(v15 + 16);
  (v27)(&v116 - v25, a2, v14, v24);
  v28 = (*(v15 + 88))(isa, v14);
  if (v28 == enum case for RDUserNotificationType.reminderAlarm(_:) || v28 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v28 == enum case for RDUserNotificationType.caldavSharedList(_:) || v28 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    goto LABEL_12;
  }

  if (v28 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    (*(v15 + 96))(isa, v14);
    isa = isa->super.isa;
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    v51 = sub_100006654(v50, qword_1009421A8);
    v52 = a1;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    isa, v55, v56, v57, v58, v59, v60, v61;

    v14 = a3;
    if (os_log_type_enabled(v53, v54))
    {
      v62 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v62 = 136315394;
      v63 = [v52 actionIdentifier];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v51;
      v65 = a3;
      v66 = v64;
      v67 = isa;
      v69 = v68;

      v70 = sub_10000668C(v66, v69, &v121);
      v71 = v69;
      isa = v67;
      v71, v72, v73, v74, v75, v76, v77, v78;
      *(v62 + 4) = v70;
      *(v62 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v79 = Array.description.getter();
      v81 = v80;
      v82 = sub_10000668C(v79, v80, &v121);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v62 + 14) = v82;
      v14 = v65;
      _os_log_impl(&_mh_execute_header, v53, v54, "📔 RDSyncActivityEngine: Processing shared list update notification {actionIdentifier:%s, reminderIDs: %s", v62, 0x16u);
      swift_arrayDestroy();
    }

    a3 = v118;
    v27 = v119;
    a1 = v119[2];
    (a1)(v13, v14, v118);
    v90 = (v27[11])(v13, a3);
    if (v90 != enum case for RDUserNotificationAction.defaultDismiss(_:) && v90 != enum case for RDUserNotificationAction.debugDismiss(_:) && v90 != enum case for RDUserNotificationAction.markAsCompleted(_:) && v90 != enum case for RDUserNotificationAction.snoozeForOneHour(_:) && v90 != enum case for RDUserNotificationAction.snoozeForOneDay(_:) && v90 != enum case for RDUserNotificationAction.snoozeToNextThirds(_:) && v90 != enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) && v90 != enum case for RDUserNotificationAction.addToReminders(_:) && v90 != enum case for RDUserNotificationAction.viewAssignmentInList(_:) && v90 != enum case for RDUserNotificationAction.declineAssignment(_:))
    {
      if (v90 == enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        isa, v91, v92, v93, v94, v95, v96, v97;
      }

      else
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }

      return;
    }

    goto LABEL_44;
  }

  if (v28 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
LABEL_12:
    (*(v15 + 8))(isa, v14);
  }

  else if (v28 != enum case for RDUserNotificationType.todayNotification(_:) && v28 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v28 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_44:
    isa, v91, v92, v93, v94, v95, v96, v97;
    v100 = v117;
    (a1)(v117, v14, a3);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v121 = v104;
      *v103 = 136315138;
      v105 = RDUserNotificationAction.rawValue.getter();
      v107 = v106;
      (v27[1])(v100, a3);
      v108 = sub_10000668C(v105, v107, &v121);
      v107, v109, v110, v111, v112, v113, v114, v115;
      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v101, v102, "📔 RDSyncActivityEngine: Unexpected action %s for notification type .sharedListAddedReminderNotification", v103, 0xCu);
      sub_10000607C(v104);
    }

    else
    {

      (v27[1])(v100, a3);
    }

    return;
  }

  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_1009421A8);
  (v27)(v21, a2, v14);
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v121 = v119;
    *v36 = 136315394;
    (v27)(v120, v21, v14);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    (*(v15 + 8))(v21, v14);
    v40 = sub_10000668C(v37, v39, &v121);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v36 + 4) = v40;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    v48 = v118;
    *v118 = v33;
    v49 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "📔 RDSyncActivityEngine: Unexpected notification type {type: %s, response: %@}", v36, 0x16u);
    sub_1000050A4(v48, &unk_100938E70, &unk_100797230);

    sub_10000607C(v119);
  }

  else
  {

    (*(v15 + 8))(v21, v14);
  }
}

uint64_t sub_100342B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100342BE0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100342C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_TtC7remindd19RDXPCStorePerformer *sub_100342D08()
{
  result = sub_10026E25C();
  v8 = result;
  v9 = 0;
  v10 = *result->clientIdentity;
LABEL_2:
  v11 = v9;
  while (1)
  {
    if (v10 == v11)
    {
      v8, v1, v2, v3, v4, v5, v6, v7;
      return &_swiftEmptyArrayStorage;
    }

    if (v11 >= *v8->clientIdentity)
    {
      break;
    }

    v9 = v11 + 1;
    result = sub_10034454C(v8->clientIdentity[v11 + 16]);
    v11 = v9;
    if (result)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100342E04()
{
  v1 = v0;
  if ((sub_100345070() & 1) == 0)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_1009475D0);
    v14 = v0;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_36;
    }

    v17 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v76);
    *(v17 + 12) = 2082;
    v18 = [v14 remObjectID];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 description];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 7104878;
      v23 = 0xE300000000000000;
    }

    v56 = sub_10000668C(v21, v23, &v76);
    v23, v57, v58, v59, v60, v61, v62, v63;
    *(v17 + 14) = v56;
    v64 = "📓 %s: Object is not eligible for journaling {remObjectID: %{public}s}";
    goto LABEL_35;
  }

  if (qword_100936168 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_1009475D0);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v6 = 136315394;
      *(v6 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v76);
      *(v6 + 12) = 2082;
      v7 = [v3 remObjectID];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 description];

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 7104878;
        v12 = 0xE300000000000000;
      }

      v24 = sub_10000668C(v10, v12, &v76);
      v12, v25, v26, v27, v28, v29, v30, v31;
      *(v6 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v4, v5, "📓 %s: Considering reminder activity {remObjectID: %{public}s}", v6, 0x16u);
      swift_arrayDestroy();
    }

    v75 = [v3 storeControllerManagedObjectContext];
    if (!v75)
    {
      break;
    }

    v32 = sub_100342D08();
    v33 = v32;
    v76 = &_swiftEmptyArrayStorage;
    v74 = v3;
    v34 = v32 & 0xFFFFFFFFFFFFFF8;
    if (v32 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = 0;
    v1 = (v33 & 0xC000000000000001);
    v37 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v35 == v36)
      {

        v33, v42, v43, v44, v45, v46, v47, v48;
        return v37;
      }

      if (v1)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v34 + 16))
        {
          goto LABEL_39;
        }

        v38 = *&v33->clientIdentity[8 * v36 + 16];
      }

      v39 = v38;
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v41 = sub_1003456A4(v38, v75, v74);

      ++v36;
      if (v41)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 = v76;
        v36 = v40;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v49 = v3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v76);
    *(v17 + 12) = 2082;
    v50 = [v49 remObjectID];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 description];

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {
      v53 = 7104878;
      v55 = 0xE300000000000000;
    }

    v65 = sub_10000668C(v53, v55, &v76);
    v55, v66, v67, v68, v69, v70, v71, v72;
    *(v17 + 14) = v65;
    v64 = "📓 %s: Unable to unwrap optional storeControllerManagedObjectContext {remObjectID: %{public}s}";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v15, v16, v64, v17, 0x16u);
    swift_arrayDestroy();
  }

LABEL_36:

  return &_swiftEmptyArrayStorage;
}

Swift::Void __swiftcall REMCDReminder.willSave_Swift()()
{
  if (([v0 willSave_hasProcessedDueDateDeltaAlertsDataChanges] & 1) == 0)
  {
    [v0 setWillSave_hasProcessedDueDateDeltaAlertsDataChanges:1];
    v1 = [v0 changedValues];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_1001A6DC0();
    v3 = sub_100240BDC(0xD000000000000016, 0x80000001007E8FD0, v2);
    v2, v4, v5, v6, v7, v8, v9, v10;
    if (v3)
    {

      [v0 processDueDateDeltaAlertsDataChanges];
    }
  }
}

BOOL sub_100343618()
{
  v1 = v0;
  v2 = [v0 currentUserShareParticipantID];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_1009475D0);
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v72[0] = v12;
      *v11 = 136446210;
      v13 = [v8 remObjectID];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 description];

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 7104878;
        v18 = 0xE300000000000000;
      }

      v19 = sub_10000668C(v16, v18, v72);
      v18, v20, v21, v22, v23, v24, v25, v26;
      *(v11 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "📓 REMSharedActivityJournaling: Unable to get currentUserShareParticipantID from reminder. Assuming unit testing and returning CKCurrentUserDefaultName {reminderObjectID: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v27;
  }

  sub_1003439F4();
  if (v28)
  {
    v72[0] = v4;
    v72[1] = v6;
    v35 = v28;
    sub_10013BCF4();
    v36 = StringProtocol.caseInsensitiveCompare<A>(_:)();
    v35, v37, v38, v39, v40, v41, v42, v43;
    v6, v44, v45, v46, v47, v48, v49, v50;
    return v36 == 0;
  }

  else
  {
    v6, 0, v29, v30, v31, v32, v33, v34;
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_1009475D0);
    v53 = v1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72[0] = v57;
      *v56 = 136446210;
      v58 = [v53 remObjectID];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 description];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v61 = 7104878;
        v63 = 0xE300000000000000;
      }

      v64 = sub_10000668C(v61, v63, v72);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v56 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "📓: Unable to get authorUserID for reminder {reminderObjectID: %{public}s}", v56, 0xCu);
      sub_10000607C(v57);
    }

    return 1;
  }
}

uint64_t sub_1003439F4()
{
  v1 = v0;
  v2 = [v0 list];
  if (!v2)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_1009475D0);
    v20 = v0;
    v5 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v21))
    {
      v22 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v22 = 136446466;
      v23 = [v20 remObjectID];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 description];

        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 7104878;
        v28 = 0xE300000000000000;
      }

      v75 = sub_10000668C(v26, v28, &v183);
      v28, v76, v77, v78, v79, v80, v81, v82;
      *(v22 + 4) = v75;
      *(v22 + 12) = 2080;
      [v20 isConcealed];
      v83 = Bool.yesno.getter();
      v85 = v84;
      v86 = sub_10000668C(v83, v84, &v183);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v22 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v5, v21, "📓 REMSharedActivityJournaling: Unable to get list from reminder {reminderObjectID: %{public}s, isConcealed: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_63;
  }

  v3 = v2;
  v4 = [v0 ckServerRecord];
  if (!v4)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_1009475D0);
    v30 = v0;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v183 = v34;
      *v33 = 136446210;
      v35 = [v30 remObjectID];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 description];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 7104878;
        v40 = 0xE300000000000000;
      }

      v127 = sub_10000668C(v38, v40, &v183);
      v40, v128, v129, v130, v131, v132, v133, v134;
      *(v33 + 4) = v127;
      _os_log_impl(&_mh_execute_header, v31, v32, "📓 REMSharedActivityJournaling: Unable to get ckServerRecord for reminder {reminderObjectID: %{public}s}", v33, 0xCu);
      sub_10000607C(v34);
    }

    return 0;
  }

  v5 = v4;
  if (([v0 isInserted] & 1) == 0)
  {
    v6 = [v5 lastModifiedUserRecordID];
    if (!v6)
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_100006654(v67, qword_1009475D0);
      v68 = v0;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_58;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v183 = v12;
      *v11 = 136446210;
      v69 = [v68 remObjectID];
      if (v69)
      {
        v70 = v69;
        v71 = [v69 description];

        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;
      }

      else
      {
        v72 = 7104878;
        v74 = 0xE300000000000000;
      }

      v167 = sub_10000668C(v72, v74, &v183);
      v74, v168, v169, v170, v171, v172, v173, v174;
      *(v11 + 4) = v167;
      v166 = "📓 REMSharedActivityJournaling: Unable to get lastModifiedUserRecordID from reminder {reminderObjectID: %{public}s}";
      goto LABEL_57;
    }

LABEL_21:
    v41 = v6;
    v42 = [v6 recordName];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = [v3 ckServerShare];
    if (v46)
    {
      v47 = v46;
      v48 = sub_100446EB8(v43, v45);
      if (!v48)
      {
        if (qword_100936168 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_100006654(v94, qword_1009475D0);
        v95 = v1;

        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();

        v45, v98, v99, v100, v101, v102, v103, v104;
        if (os_log_type_enabled(v96, v97))
        {
          v112 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          *v112 = 136446466;
          v113 = sub_10000668C(v43, v45, &v183);
          v45, v114, v115, v116, v117, v118, v119, v120;
          *(v112 + 4) = v113;
          *(v112 + 12) = 2082;
          v121 = [v95 remObjectID];
          if (v121)
          {
            v122 = v121;
            v123 = [v121 description];

            v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v126 = v125;
          }

          else
          {
            v124 = 7104878;
            v126 = 0xE300000000000000;
          }

          v175 = sub_10000668C(v124, v126, &v183);
          v126, v176, v177, v178, v179, v180, v181, v182;
          *(v112 + 14) = v175;
          _os_log_impl(&_mh_execute_header, v96, v97, "📓 REMSharedActivityJournaling: Unable to get a participant for the reminder's author {authorID: %{public}s, reminderObjectID: %{public}s}", v112, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v45, v105, v106, v107, v108, v109, v110, v111;
        }

        goto LABEL_62;
      }

      v56 = v48;
      v45, v49, v50, v51, v52, v53, v54, v55;
      v43 = CKShareParticipant.participantID.getter();
    }

    else
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100006654(v57, qword_1009475D0);
      v58 = v1;
      v3 = v3;
      v56 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v56, v59))
      {

LABEL_52:
        return v43;
      }

      v60 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v60 = 136446466;
      v61 = [v58 remObjectID];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 description];

        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
      }

      else
      {
        v66 = 0xE300000000000000;
        v64 = 7104878;
      }

      v135 = sub_10000668C(v64, v66, &v183);
      v66, v136, v137, v138, v139, v140, v141, v142;
      *(v60 + 4) = v135;
      *(v60 + 12) = 2082;
      v143 = [v3 remObjectID];
      if (v143)
      {
        v144 = v143;
        v145 = [v143 description];

        v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v148 = v147;
      }

      else
      {
        v148 = 0xE300000000000000;
        v146 = 7104878;
      }

      v149 = sub_10000668C(v146, v148, &v183);
      v148, v150, v151, v152, v153, v154, v155, v156;
      *(v60 + 14) = v149;
      _os_log_impl(&_mh_execute_header, v56, v59, "📓 REMSharedActivityJournaling: Unable to get ckServerShare from reminder's list. Assuming unit testing and returning userRecordID {reminderObjectID: %{public}s, listObjectID: %{public}s}", v60, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_52;
  }

  v6 = [v5 creatorUserRecordID];
  if (v6)
  {
    goto LABEL_21;
  }

  if (qword_100936168 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_1009475D0);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_58;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v183 = v12;
  *v11 = 136446210;
  v13 = [v8 remObjectID];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 description];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 7104878;
    v18 = 0xE300000000000000;
  }

  v158 = sub_10000668C(v16, v18, &v183);
  v18, v159, v160, v161, v162, v163, v164, v165;
  *(v11 + 4) = v158;
  v166 = "📓 REMSharedActivityJournaling: Unable to get creatorUserRecordID from reminder {reminderObjectID: %{public}s}";
LABEL_57:
  _os_log_impl(&_mh_execute_header, v9, v10, v166, v11, 0xCu);
  sub_10000607C(v12);

LABEL_58:

LABEL_62:
LABEL_63:

  return 0;
}

id sub_10034454C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v184 - v6;
  v8 = type metadata accessor for Date();
  v195 = *(v8 - 8);
  v196 = v8;
  __chkstk_darwin(v8, v9);
  v197 = v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16 - 8, v17);
  v19 = v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = v184 - v22;
  *&v26 = __chkstk_darwin(v24, v25).n128_u64[0];
  v28 = v184 - v27;
  v29 = [v2 account];
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v29;
  v194 = a1;
  v31 = [v29 identifier];

  if (v31)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = *(v12 + 56);
    v32(v23, 0, 1, v11);
  }

  else
  {
    v32 = *(v12 + 56);
    v32(v23, 1, 1, v11);
  }

  sub_100031B58(v23, v28, &unk_100939D90, "8\n\r");
  v33 = *(v12 + 48);
  if (!v33(v28, 1, v11))
  {
    v189 = v32;
    (*(v12 + 16))(v15, v28, v11);
    sub_1000050A4(v28, &unk_100939D90, "8\n\r");
    v188 = UUID.uuidString.getter();
    isa = v49;
    v184[0] = *(v12 + 8);
    (v184[0])(v15, v11);
    sub_100345AEC(v7);
    v51 = v195;
    v50 = v196;
    if ((*(v195 + 48))(v7, 1, v196) == 1)
    {
      isa, v52, v53, v54, v55, v56, v57, v58;
      v178 = sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
      __chkstk_darwin(v178, v179);
      sub_100345DB0();
    }

    else
    {
      v184[1] = v12 + 8;
      v190 = v33;
      (*(v51 + 32))(v197, v7, v50);
      v59 = sub_1003439F4();
      if (v60)
      {
        v67 = v60;
        v187 = v59;
        v68 = [v2 parentCloudObject];
        if (v68)
        {
          v69 = v68;
          v70 = [swift_getObjCClassFromObject() cdEntityName];
          v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v192 = v71;

          v72 = [v69 ckIdentifier];
          if (v72)
          {
            v73 = v72;
            v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v191 = v74;
          }

          else
          {

            v185 = 0;
            v191 = 0;
          }
        }

        else
        {
          v185 = 0;
          v186 = 0;
          v191 = 0;
          v192 = 0;
        }

        v94 = v194;
        sub_100345DB0();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v96 = [ObjCClassFromMetadata cdEntityName];
        if (!v96)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;
          v96 = String._bridgeToObjectiveC()();
          v99 = v98;
          v94 = v194;
          v99, v100, v101, v102, v103, v104, v105, v106;
        }

        v107 = [v2 ckIdentifier];
        if (!v107)
        {
          v67, v108, v109, v110, v111, v112, v113, v114;
          isa, v150, v151, v152, v153, v154, v155, v156;

          v191, v157, v158, v159, v160, v161, v162, v163;
          v192, v164, v165, v166, v167, v168, v169, v170;
          v171 = objc_opt_self();
          v172 = String._bridgeToObjectiveC()();
          [v171 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v172];

          swift_willThrow();
          (*(v195 + 8))(v197, v196);
          goto LABEL_8;
        }

        v115 = v107;
        v194 = qword_1007A2DB8[v94];
        v189(v19, 1, 1, v11);
        v116 = isa;
        v189 = String._bridgeToObjectiveC()();
        v116, v117, v118, v119, v120, v121, v122, v123;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v124 = String._bridgeToObjectiveC()();
        v67, v125, v126, v127, v128, v129, v130, v131;
        v132 = v192;
        if (v192)
        {
          v133 = String._bridgeToObjectiveC()();
          v132, v134, v135, v136, v137, v138, v139, v140;
          v141 = v191;
          if (v191)
          {
LABEL_28:
            v142 = String._bridgeToObjectiveC()();
            v141, v143, v144, v145, v146, v147, v148, v149;
LABEL_32:
            if (v190(v19, 1, v11) == 1)
            {
              v173 = 0;
            }

            else
            {
              v173 = UUID._bridgeToObjectiveC()().super.isa;
              (v184[0])(v19, v11);
            }

            v174 = objc_allocWithZone(REMSharedEntitySyncActivity);
            v175 = v189;
            v176 = isa;
            v177 = [v174 initWithAccountIdentifier:v189 activityDate:isa activityType:v194 authorUserRecordIDString:v124 ckParentCloudObjectEntityName:v133 ckParentCloudObjectIdentifier:v142 ckIdentifier:v115 sharedEntityName:v96 uuidForChangeTracking:v173];

            (*(v195 + 8))(v197, v196);
            return v177;
          }
        }

        else
        {
          v133 = 0;
          v141 = v191;
          if (v191)
          {
            goto LABEL_28;
          }
        }

        v142 = 0;
        goto LABEL_32;
      }

      isa, 0, v61, v62, v63, v64, v65, v66;
      __chkstk_darwin(v180, v181);
      sub_100345DB0();
    }

    KeyPath = swift_getKeyPath();
    v199[0] = 0;
    v199[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v183._object = 0x80000001007EC120;
    v183._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v183);
    v198 = KeyPath;
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  sub_1000050A4(v28, &unk_100939D90, "8\n\r");
LABEL_7:
  v34 = objc_opt_self();
  sub_100345DB0();
  v35 = swift_getObjCClassFromMetadata();
  v36 = String._bridgeToObjectiveC()();
  [v34 unexpectedNilPropertyWithClass:v35 property:v36];

  swift_willThrow();
LABEL_8:
  if (qword_100936168 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100006654(v37, qword_1009475D0);
  v38 = v2;
  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v199[0] = swift_slowAlloc();
    *v41 = 136315650;
    *(v41 + 4) = sub_10000668C(0xD000000000000010, 0x80000001007F55B0, v199);
    *(v41 + 12) = 2082;
    v42 = [v38 remObjectID];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 description];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
    }

    else
    {
      v47 = 0xE300000000000000;
      v45 = 7104878;
    }

    v75 = sub_10000668C(v45, v47, v199);
    v47, v76, v77, v78, v79, v80, v81, v82;
    *(v41 + 14) = v75;
    *(v41 + 22) = 2082;
    swift_getErrorValue();
    v83 = Error.rem_errorDescription.getter();
    v85 = v84;
    v86 = sub_10000668C(v83, v84, v199);
    v85, v87, v88, v89, v90, v91, v92, v93;
    *(v41 + 24) = v86;
    _os_log_impl(&_mh_execute_header, v39, v40, "📓 %s: An unexpected error occurred {remObjectID: %{public}s, description: %{public}s}", v41, 0x20u);
    swift_arrayDestroy();

    return 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100345070()
{
  if (![v0 isSharedViaICloud])
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_1009475D0);
    v19 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v85);
    *(v5 + 12) = 2080;
    [v19 isSharedViaICloud];
    v20 = Bool.yesno.getter();
    v22 = v21;
    v23 = sub_10000668C(v20, v21, &v85);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v5 + 14) = v23;
    v17 = "📓 %s: Object is not eligible for journaling {isSharedViaICloud: %s}";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v17, v5, 0x16u);
    swift_arrayDestroy();

LABEL_12:

LABEL_13:

    return 0;
  }

  if ([v0 isConcealed])
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_1009475D0);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v85);
    *(v5 + 12) = 2080;
    [v2 isConcealed];
    v6 = Bool.yesno.getter();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v85);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v5 + 14) = v9;
    v17 = "📓 %s: Object is not eligible for journaling {isConcealed: %s}";
    goto LABEL_11;
  }

  if (sub_100343618())
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_1009475D0);
    v33 = v0;
    v3 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v34))
    {
      goto LABEL_13;
    }

    v35 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v85);
    *(v35 + 12) = 2080;
    sub_100343618();
    v36 = Bool.yesno.getter();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, &v85);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v35 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v3, v34, "📓 %s: Object is not eligible for journaling {isAuthoredByCurrentUser: %s}", v35, 0x16u);
    swift_arrayDestroy();

    goto LABEL_12;
  }

  v47 = [v0 managedObjectContext];
  if (!v47 || (v48 = v47, v49 = [v47 transactionAuthor], v48, !v49) || (static String._unconditionallyBridgeFromObjectiveC(_:)(), v51 = v50, v49, v52._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), object = v52._object, v54 = String.hasPrefix(_:)(v52), object, v55, v56, v57, v58, v59, v60, v61, v51, v62, v63, v64, v65, v66, v67, v68, !v54))
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100006654(v69, qword_1009475D0);
    v70 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v71 = 7104878;
    v5 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007F55D0, &v85);
    *(v5 + 12) = 2082;
    v72 = [v70 managedObjectContext];
    if (v72 && (v73 = v72, v74 = [v72 transactionAuthor], v73, v74))
    {
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;
    }

    else
    {
      v76 = 0xE300000000000000;
    }

    v77 = sub_10000668C(v71, v76, &v85);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v5 + 14) = v77;
    v17 = "📓 %s: Object is not eligible for journaling - transactionAuthor: %{public}s";
    goto LABEL_11;
  }

  return 1;
}

void *sub_1003456A4(void *a1, void *a2, void *a3)
{
  v5 = sub_1002A0A50(a1, a2);
  if (v5)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_1009475D0);
    v7 = a1;
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v69);
      *(v11 + 12) = 2082;
      v12 = [v7 activityTypeDescription];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v69);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 14) = v16;
      *(v11 + 22) = 2082;
      v24 = [v8 remObjectID];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 description];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 7104878;
        v29 = 0xE300000000000000;
      }

      v51 = sub_10000668C(v27, v29, &v69);
      v29, v52, v53, v54, v55, v56, v57, v58;
      *(v11 + 24) = v51;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v9, v10, v59, v11, 0x20u);
      swift_arrayDestroy();

      return v5;
    }
  }

  else
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_1009475D0);
    v31 = a1;
    v32 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = sub_10000668C(0xD000000000000023, 0x80000001007F5580, &v69);
      *(v11 + 12) = 2082;
      v33 = [v31 activityTypeDescription];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_10000668C(v34, v36, &v69);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v11 + 14) = v37;
      *(v11 + 22) = 2082;
      v45 = [v32 remObjectID];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 description];

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;
      }

      else
      {
        v48 = 7104878;
        v50 = 0xE300000000000000;
      }

      v60 = sub_10000668C(v48, v50, &v69);
      v50, v61, v62, v63, v64, v65, v66, v67;
      *(v11 + 24) = v60;
      goto LABEL_17;
    }
  }

  return v5;
}

uint64_t sub_100345AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = &v27 - v11;
  v13 = [v2 isInserted];
  v14 = [v2 ckServerRecord];
  if (v13)
  {
    if (v14)
    {
      v15 = v14;
      v16 = [v14 creationDate];

      if (v16)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = type metadata accessor for Date();
        (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
      }

      else
      {
        v24 = type metadata accessor for Date();
        (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      }

      v25 = v12;
      return sub_100031B58(v25, a1, &unk_100938850, qword_100795AE0);
    }
  }

  else if (v14)
  {
    v18 = v14;
    v19 = [v14 modificationDate];

    if (v19)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
    }

    else
    {
      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    }

    v25 = v7;
    return sub_100031B58(v25, a1, &unk_100938850, qword_100795AE0);
  }

  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);

  return v22(a1, 1, 1, v21);
}

unint64_t sub_100345DB0()
{
  result = qword_100939EE0;
  if (!qword_100939EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939EE0);
  }

  return result;
}

uint64_t sub_100345E1C@<X0>(unint64_t *a1@<X8>)
{
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = 0x7265646E696D6572;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v3;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x44646574656C6564;
  *(inited + 88) = 0xEB00000000657461;
  type metadata accessor for RDPermanentlyHiddenReminder(0);
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 96) = v4;
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 168) = &type metadata for Int;
  v5 = kREMSupportedVersionFor2024;
  *(inited + 136) = 0x80000001007E8C60;
  *(inited + 144) = v5;
  v6 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *a1 = v6;
  v7 = enum case for REMJSONType.jsonObject(_:);
  v8 = type metadata accessor for REMJSONType();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

void sub_100345FBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1000F5104(&unk_100942600, &qword_1007A2E18);
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3, v4);
  v69 = &v64 - v5;
  v70 = type metadata accessor for Date();
  v65 = *(v70 - 8);
  __chkstk_darwin(v70, v6);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100938AF0, &qword_1007B6620);
  v73 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v64 - v10;
  v74 = type metadata accessor for UUID();
  v67 = *(v74 - 8);
  __chkstk_darwin(v74, v12);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v64 - v17;
  v19 = type metadata accessor for REMJSONType();
  v20 = *(v19 - 8);
  v22 = __chkstk_darwin(v19, v21);
  v24 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v24, a1, v19, v22);
  v25 = (*(v20 + 88))(v24, v19);
  if (v25 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v20 + 96))(v24, v19);
    v26 = *v24;
    (*(v15 + 104))(v18, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v14);
    v77 = kREMSupportedVersionFor2024;
    v27 = v76;
    Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();
    (*(v15 + 8))(v18, v14);
    if (v27)
    {
      v26, v28, v29, v30, v31, v32, v33, v34;
      return;
    }

    v39 = v78;
    if (rem_isUnsupportedVersionByRuntime())
    {
      v26, v40, v41, v42, v43, v44, v45, v46;
      v35 = type metadata accessor for REMJSONDeserializationError();
      sub_1003466D4();
      swift_allocError();
      v37 = v47;
      *v47 = v39;
      v38 = &enum case for REMJSONDeserializationError.notSupported(_:);
      goto LABEL_6;
    }

    v48 = v73;
    (*(v73 + 104))(v11, enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:), v8);
    v49 = v74;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v48 + 8))(v11, v8);
    v51 = v71;
    v50 = v72;
    v52 = v69;
    (*(v71 + 104))(v69, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v72);
    v53 = v68;
    v54 = v70;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v51 + 8))(v52, v50);
    v26, v55, v56, v57, v58, v59, v60, v61;
    v62 = v66;
    (*(v67 + 32))(v66, v75, v49);
    v63 = type metadata accessor for RDPermanentlyHiddenReminder(0);
    (*(v65 + 32))(v62 + *(v63 + 20), v53, v54);
  }

  else
  {
    if (v25 == enum case for REMJSONType.jsonArray(_:))
    {
      (*(v20 + 8))(v24, v19);
      v35 = type metadata accessor for REMJSONDeserializationError();
      sub_1003466D4();
      swift_allocError();
      v37 = v36;
      v38 = &enum case for REMJSONDeserializationError.invalidData(_:);
LABEL_6:
      (*(*(v35 - 8) + 104))(v37, *v38, v35);
      swift_willThrow();
      return;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

unint64_t sub_1003466D4()
{
  result = qword_100938AF8;
  if (!qword_100938AF8)
  {
    type metadata accessor for REMJSONDeserializationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938AF8);
  }

  return result;
}

uint64_t sub_10034672C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002955CC(a1, &v22);
  if (v23)
  {
    sub_100054B6C(&v22, v24);
    sub_10000A87C(v24, &v22);
    v3 = sub_10000C9DC(&v22, v23);
    v4 = __chkstk_darwin(v3, v3);
    v6 = (&v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = *v6;
    v9 = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
    v21[3] = v9;
    v21[4] = &off_1008EE8C0;
    v21[0] = v8;
    v10 = type metadata accessor for _MobileKeybagStateProvider();
    v11 = swift_allocObject();
    v12 = sub_10000C9DC(v21, v9);
    v13 = __chkstk_darwin(v12, v12);
    v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_100347AE8(*v15, v11);
    sub_10000607C(v21);
    sub_10000607C(&v22);
    a2[3] = v10;
    a2[4] = &off_1008EE8E8;
    *a2 = v17;
    return sub_10000607C(v24);
  }

  else
  {
    sub_1000050A4(&v22, &qword_100936E80, qword_10079F000);
    if (qword_100935EF0 != -1)
    {
      swift_once();
    }

    v19 = qword_100942628;
    a2[3] = type metadata accessor for _MobileKeybagStateProvider();
    a2[4] = &off_1008EE8E8;
    *a2 = v19;
  }
}

uint64_t sub_1003469B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942610);
  v1 = sub_100006654(v0, qword_100942610);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100346A80(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0x64656B636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x676E696B636F6CLL;
    }

    if (a1)
    {
      v5 = 0x64656B636F6C6E75;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5065636172476E69;
    v2 = 0x7472657373416E69;
    if (a1 != 7)
    {
      v2 = 0x6C6E556F69426E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x64656C6261736964;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100346BE8()
{
  v10 = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
  v11 = &off_1008EE8C0;
  v9[0] = swift_initStaticObject();
  type metadata accessor for _MobileKeybagStateProvider();
  v0 = swift_allocObject();
  v1 = sub_10000C9DC(v9, v10);
  v2 = __chkstk_darwin(v1, v1);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4, v2);
  v6 = sub_100347AE8(*v4, v0);
  result = sub_10000607C(v9);
  qword_100942628 = v6;
  return result;
}

uint64_t sub_100346D08()
{
  if (*(v0 + 72))
  {
    MKBEventsUnregister();
  }

  sub_10000607C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100346D90()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100942610);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_hasUnlockedSinceBoot.didSet}", v18, 2u);
  }

  v19 = *(v0 + 56);
  *v14 = v19;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v19)
  {
    v22 = *(v0 + 97);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "_MobileKeybagStateProvider: Has unlocked since boot: %{BOOL}d", v25, 8u);
    }

    v26 = *(v1 + 64);
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = v22;
    *(v27 + 32) = v31;
    aBlock[4] = sub_100347FB4;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008EEA10;
    v28 = _Block_copy(aBlock);
    v29 = v26;

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v36 = &_swiftEmptyArrayStorage;
    sub_10005464C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v30 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    swift_unknownObjectRelease();

    (*(v34 + 8))(v5, v30);
    (*(v32 + 8))(v9, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10034729C(uint64_t a1, char a2)
{

  CurrentValueSubject.send(_:)();

  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100942610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_hasUnlockedSinceBoot.didSet}", v5, 2u);
  }
}

uint64_t sub_10034739C()
{
  v1 = v0;
  v2 = os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100942610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.updateInternalStates}", v6, 2u);
  }

  v7 = *(v1 + 56);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100347920;
  *(v9 + 24) = v8;
  v14[4] = sub_1000529DC;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000F160;
  v14[3] = &unk_1008EE970;
  v10 = _Block_copy(v14);
  v11 = v7;

  swift_unknownObjectRetain();

  dispatch_sync(v11, v10);

  swift_unknownObjectRelease();
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1003475D8(uint64_t a1)
{
  if (sub_100347EB4() != *(a1 + 97))
  {
    *(a1 + 97) = sub_100347EB4();
    sub_100346D90();
  }

  if (*(a1 + 96) != sub_100053D2C())
  {
    v2 = sub_100053D2C();
    v3 = *(a1 + 96);
    *(a1 + 96) = v2;
    sub_100053D84(v3);
  }

  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100942610);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.updateInternalStates}", v6, 2u);
  }
}

void sub_10034770C()
{
  v0 = sub_10039013C(&off_1008E2C00);
  sub_1000050A4(&unk_1008E2C20, &unk_100942948, &qword_1007A2FE0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0, v2, v3, v4, v5, v6, v7, v8;
  qword_100942630 = isa;
}

unint64_t sub_1003477C0()
{
  result = qword_100942928;
  if (!qword_100942928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942928);
  }

  return result;
}

uint64_t sub_100347814()
{
  sub_1000F5104(&qword_100942930, &qword_1007A2FD8);
  sub_10000CB48(&unk_100942938, &qword_100942930, &qword_1007A2FD8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_1003478A4()
{
  v1 = *(*v0 + 56);
  OS_dispatch_queue.sync<A>(execute:)();

  return v3;
}

uint64_t sub_100347928(uint64_t a1, uint64_t a2)
{
  v14[3] = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
  v14[4] = &off_1008EE8C0;
  v14[0] = a2;

  sub_10034739C();
  v4 = *(a1 + 56);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_10000A87C(v14, v13);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_100054B6C(v13, v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100053D20;
  *(v7 + 24) = v6;
  v12[4] = sub_100053A94;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100053A1C;
  v12[3] = &unk_1008EEAB0;
  v8 = _Block_copy(v12);
  v9 = v4;

  v10 = MKBEventsRegister();
  _Block_release(v8);

  *(a1 + 72) = v10;
  return sub_10000607C(v14);
}

uint64_t sub_100347AE8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8, v10);
  v23 = type metadata accessor for _MobileKeybagStateProvider._MKBEventsControllerImplementation();
  v24 = &off_1008EE8C0;
  v22[0] = a1;
  v18[0] = sub_100007F54();
  v18[3] = "kedSinceBoot.didSet";
  static DispatchQoS.userInteractive.getter();
  v21 = &_swiftEmptyArrayStorage;
  v18[2] = sub_10005464C(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v12 = v3 + 104;
  v13 = *(v3 + 104);
  v18[1] = v12;
  v13(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *(v19 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.userInteractive.getter();
  v21 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13(v6, v11, v20);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v19;
  *(v19 + 64) = v14;
  *(v15 + 72) = 0;
  sub_1000F5104(&qword_100942958, qword_1007A2FE8);
  swift_allocObject();
  *(v15 + 80) = PassthroughSubject.init()();
  LOBYTE(v21) = 0;
  sub_1000F5104(&qword_100942930, &qword_1007A2FD8);
  swift_allocObject();
  *(v15 + 88) = CurrentValueSubject.init(_:)();
  *(v15 + 96) = 4;
  sub_10000A87C(v22, v15 + 16);
  v16 = sub_10000F61C(v22, v23);
  sub_100347928(v15, *v16);
  sub_10000607C(v22);
  return v15;
}

BOOL sub_100347EB4()
{
  v0 = MKBDeviceUnlockedSinceBoot();
  if ((v0 & 0x80000000) == 0)
  {
    return v0 == 1;
  }

  v2 = v0;
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100942610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "_MobileKeybagStateProvider: MKBDeviceUnlockedSinceBoot() unexpectedly returned %d. Assuming device is before first unlock.", v6, 8u);
  }

  return 0;
}

void sub_100347FD4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sharedToMeReminderCKIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_10034803C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSharedToMeReminderCKIdentifier:?];
}

uint64_t sub_1003480AC(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v26 - v6;
  v28 = &_swiftEmptyArrayStorage;
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      KeyPath = swift_getKeyPath();
      v10 = sub_10004FAEC(a1);
      v11 = sub_1003E9F6C(KeyPath, v10);

      *(inited + 32) = v11;
      sub_10027230C(inited);
LABEL_14:
      sub_10001035C(0);
      goto LABEL_15;
    }

    v13 = swift_getKeyPath();
    sub_1003925F4(v13, 1);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v28->clientIdentity >= *&v28->clientIdentity[8] >> 1)
    {
      v27 = *v28->clientIdentity;
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v12 = swift_getKeyPath();
    sub_1003925F4(v12, 0);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v28->clientIdentity >= *&v28->clientIdentity[8] >> 1)
    {
      v27 = *v28->clientIdentity;
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

LABEL_10:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = swift_getKeyPath();
    v15 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    sub_100392608(v14, v7);
LABEL_11:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v28->clientIdentity >= *&v28->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_14;
  }

  if (!a1)
  {
    v25 = swift_getKeyPath();
    sub_1003F7200(v25);
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_14;
  }

  v18 = swift_getKeyPath();
  sub_1003EF184(v18);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v28->clientIdentity >= *&v28->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_100791340;
  v20 = swift_getKeyPath();
  v21 = sub_1003F7200(v20);

  *(v19 + 32) = v21;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = sub_100348E50(v22, v23, &unk_10093D020, qword_1007A3230);

  *(v19 + 40) = v24;
  sub_100025060(v19);
LABEL_15:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v28->clientIdentity >= *&v28->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0();
}

void *sub_10034851C(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v33 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v6 = &v31 - v5;
  v40 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_30:
    v29 = v4;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v29;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v31 = v4;
      v8 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v34 = &unk_1007A3090;
      v9 = _swiftEmptyDictionarySingleton;
      v32 = xmmword_1007953F0;
      while (1)
      {
        if (v36)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v35 + 16))
          {
            goto LABEL_27;
          }

          v4 = *(a1 + 8 * v8 + 32);
        }

        v11 = v4;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v13 = String._bridgeToObjectiveC()();
        v14 = [v11 valueForKey:{v13, v31}];

        if (v14)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
        }

        v39[0] = v37;
        v39[1] = v38;
        if (*(&v38 + 1))
        {
          v15 = type metadata accessor for UUID();
          v16 = swift_dynamicCast();
          (*(*(v15 - 8) + 56))(v6, v16 ^ 1u, 1, v15);
        }

        else
        {
          sub_1000050A4(v39, &qword_100939ED0, &qword_100791B10);
          v17 = type metadata accessor for UUID();
          (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        }

        v19 = sub_1003645D8(v6);
        v20 = v9[2];
        v21 = (v18 & 1) == 0;
        v4 = (v20 + v21);
        if (__OFADD__(v20, v21))
        {
          goto LABEL_28;
        }

        v22 = v18;
        if (v9[3] < v4)
        {
          sub_10036E0B0(v4, 1);
          v9 = v40;
          v23 = sub_1003645D8(v6);
          if ((v22 & 1) != (v24 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v19 = v23;
        }

        if (v22)
        {
          sub_1000050A4(v6, &unk_100939D90, "8\n\r");
          v10 = (v9[7] + 8 * v19);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v4 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v25 = swift_allocObject();
          *(v25 + 16) = v32;
          *(v25 + 32) = v11;
          v9[(v19 >> 6) + 8] |= 1 << v19;
          v4 = sub_100100FB4(v6, v9[6] + *(v33 + 72) * v19);
          *(v9[7] + 8 * v19) = v25;
          v26 = v9[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_29;
          }

          v9[2] = v28;
        }

        ++v8;
        if (v12 == v7)
        {
          return v9;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_100348948(uint64_t a1, void *a2)
{
  *&v39 = &_swiftEmptyArrayStorage;
  sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v5 = sub_10004FAEC(a1);
  v6 = sub_1003E9F6C(KeyPath, v5);

  *(inited + 32) = v6;
  sub_10027230C(inited);
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v39 + 16) >= *(v39 + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = sub_10000C2B0();
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];
  [v8 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_100796900;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  v41 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 2, 0);
  v11 = &_swiftEmptyArrayStorage;
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }
  }

  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v13)
  {
LABEL_22:
    _StringGuts.grow(_:)(46);
    v36._object = 0x80000001007EC120;
    v36._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v36);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v14 = v12;
  v15 = v13;
  v40 = &type metadata for String;

  *&v39 = v14;
  *(&v39 + 1) = v15;
  v17 = *_swiftEmptyArrayStorage.clientIdentity;
  v16 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v17 >= v16 >> 1)
  {
    sub_100010D04((v16 > 1), v17 + 1, 1);
    v11 = v41;
  }

  *v11->clientIdentity = v17 + 1;
  sub_100005EE0(&v39, &v11->clientIdentity[32 * v17 + 16]);
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_14:
  v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v19)
  {
    goto LABEL_22;
  }

  v20 = v18;
  v21 = v19;
  v40 = &type metadata for String;

  *&v39 = v20;
  *(&v39 + 1) = v21;
  v41 = v11;
  v23 = *v11->clientIdentity;
  v22 = *&v11->clientIdentity[8];
  if (v23 >= v22 >> 1)
  {
    sub_100010D04((v22 > 1), v23 + 1, 1);
    v11 = v41;
  }

  *v11->clientIdentity = v23 + 1;
  sub_100005EE0(&v39, &v11->clientIdentity[32 * v23 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v25 = a2;
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  if (v38)
  {
  }

  else
  {
    v27 = v26;
    v25 = sub_10034851C(v26);

    v27, v28, v29, v30, v31, v32, v33, v34;
  }

  return v25;
}

id sub_100348E50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100791340;

  v7 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v8 && (v9 = v7, v10 = v8, , *(v6 + 56) = &type metadata for String, *(v6 + 32) = v9, *(v6 + 40) = v10, , v11 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter(), v12))
  {
    v13 = v11;
    v14 = v12;

    *(v6 + 88) = &type metadata for String;
    *(v6 + 64) = v13;
    *(v6 + 72) = v14;
    v15 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v6, v17, v18, v19, v20, v21, v22, v23;
    v24 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

    return v24;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100349144(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong *a4];
  }
}

uint64_t sub_1003491B8(uint64_t a1)
{
  v3 = sub_1000F5104(&qword_100940F50, &qword_1007A0930);
  __chkstk_darwin(v3, v4);
  v6 = &v13 - v5;
  v7 = *(a1 + 16);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v10 = *(updated - 8);
  v11 = v10;
  if (v7)
  {
    sub_1002CDE74(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v6, v9);
    (*(v11 + 56))(v6, 0, 1, updated);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, updated);
  }

  Optional.tryUnwrap(_:file:line:)();
  return sub_1002CE63C(v6);
}

void sub_100349330(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v194 = a1;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5, v7);
  v9 = v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  __chkstk_darwin(updated, v10);
  v12 = v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v191 = v179 - v15;
  __chkstk_darwin(v16, v17);
  v19 = (v179 - v18);
  __chkstk_darwin(v20, v21);
  v23 = v179 - v22;
  if (a2 >> 62)
  {
    v190 = _CocoaArrayWrapper.endIndex.getter();
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v190 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v190;
  }

  v187 = v9;
  v188 = v6;
  v189 = v12;
  v192 = v24;
  if (v24)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v25 = *(a2 + 32);
    }

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v195 = v26;
  sub_1000F5104(&unk_100943E10, &qword_1007A0928);
  Optional.tryUnwrap(_:file:line:)();
  if (v2)
  {

    return;
  }

  v185 = v5;

  v186 = v197;
  v27 = [v197 title];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v195 = v29;
  v196 = v31;
  v32 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  Optional.tryUnwrap(_:file:line:)();
  v184 = v32;
  v31, v33, v34, v35, v36, v37, v38, v39;
  v41 = v197;
  v40 = v198;
  v42 = v194;
  sub_1003491B8(v194);
  v182 = v41;
  v183 = v40;
  sub_100349FB4(v23, v43);
  v3 = 0;
  v45 = v44;
  sub_1002CDED8(v23, v46);
  if (v45)
  {
    v47 = [v45 shortName];

    if (v47)
    {
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v42 = v194;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  sub_1003491B8(v42);
  v180 = v48;
  v181 = v50;
  v51 = [*(&v19->super.isa + *(updated + 28)) list];
  v199 = v51;
  v52 = sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();
  v179[0] = "tle from reminder";
  v179[1] = v52;

  v60 = v195;
  sub_1002CDED8(v19, v61);
  v62 = [v60 name];

  if (v62)
  {
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = v180;
  v195 = v63;
  v196 = v65;
  Optional.tryUnwrap(_:file:line:)();
  v12 = v66;
  v65, v67, v68, v69, v70, v71, v72, v73;
  v5 = v197;
  v19 = v198;
  v9 = v191;
  sub_1003491B8(v194);
  v6 = [*&v9[*(updated + 28)] list];
  v195 = v6;
  Optional.tryUnwrap(_:file:line:)();
LABEL_27:

  v74 = v197;
  sub_1002CDED8(v9, v75);
  v76 = [v74 shouldCategorizeGroceryItems];

  v77 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v78 = v12;
  v79 = v181;
  v80 = v183;
  sub_10034A228(v78, v181, v182, v183, v190, v5, v19, v76);
  if (v3)
  {

    v80, v88, v89, v90, v91, v92, v93, v94;
    v19, v95, v96, v97, v98, v99, v100, v101;

    v79, v53, v54, v55, v56, v57, v58, v59;
  }

  else
  {
    v102 = v81;
    v180 = v5;
    v182 = v19;
    v80, v81, v82, v83, v84, v85, v86, v87;
    v79, v103, v104, v105, v106, v107, v108, v109;
    v110 = String._bridgeToObjectiveC()();
    v102, v111, v112, v113, v114, v115, v116, v117;
    [v77 setBody:v110];

    v119 = 0;
    v184 = &_swiftEmptyArrayStorage;
    v197 = &_swiftEmptyArrayStorage;
    v191 = (a2 & 0xC000000000000001);
    while (v192 != v119)
    {
      if (v191)
      {
        v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v119 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v120 = *(a2 + 8 * v119 + 32);
      }

      v121 = v120;
      v122 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v123 = [v120 remObjectID];

      ++v119;
      if (v123)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v184 = v197;
        v119 = v122;
      }
    }

    v124 = v184;
    v118.value._rawValue = v184;
    UNMutableNotificationContent.setReminderIDs(_:)(v118);
    v124, v125, v126, v127, v128, v129, v130, v131;
    sub_1003491B8(v194);
    v132 = [*&v189[*(updated + 28)] list];
    v195 = v132;
    Optional.tryUnwrap(_:file:line:)();

    v133 = v197;
    sub_1002CDED8(v189, v134);
    v135 = [v133 remObjectID];

    UNMutableNotificationContent.setListID(_:)();
    v137 = v187;
    v136 = v188;
    v138 = &enum case for RDUserNotificationCategory.sharedListSingleReminderCompletedNotification(_:);
    if (v190 != 1)
    {
      v138 = &enum case for RDUserNotificationCategory.sharedListMultipleRemindersCompletedNotification(_:);
    }

    v139 = v185;
    v188[13](v187, *v138, v185);
    v140 = RDUserNotificationCategory.rawValue.getter();
    v142 = v141;
    (v136[1])(v137, v139);
    v143 = String._bridgeToObjectiveC()();
    [v77 setCategoryIdentifier:v143];

    v197 = v140;
    v198 = v142;

    v144._countAndFlagsBits = 45;
    v144._object = 0xE100000000000000;
    String.append(_:)(v144);
    v142, v145, v146, v147, v148, v149, v150, v151;
    v152 = v198;

    v153._countAndFlagsBits = v180;
    v154 = v182;
    v153._object = v182;
    String.append(_:)(v153);
    v152, v155, v156, v157, v158, v159, v160, v161;
    v154, v162, v163, v164, v165, v166, v167, v168;
    v169 = v198;
    v170 = String._bridgeToObjectiveC()();
    v169, v171, v172, v173, v174, v175, v176, v177;
    [v77 setThreadIdentifier:v170];

    v178 = [objc_opt_self() soundWithAlertType:11];
    [v77 setSound:v178];
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100349E00(_TtC7remindd19RDXPCStorePerformer *a1)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v3 = *(updated - 8);
  __chkstk_darwin(updated, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;

  sub_1002CC8F4(&v17, v7);
  v8 = v17;
  v9 = *v17->clientIdentity;
  if (v9)
  {
    v17 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1002CDE74(v11, v6, v10);
      v13 = *&v6[*(updated + 28)];
      sub_1002CDED8(v6, v14);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return a1;
}

void sub_100349FB4(uint64_t a1, __n128 a2)
{
  sub_100337974(a2);
  if (v4)
  {
    v6 = v4;
    sub_100337E80(v5);
    if (v2)
    {
    }

    else
    {
      v8 = v7;
      v9 = [v7 remObjectID];

      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      Optional.tryUnwrap(_:file:line:)();

      v10 = [*(a1 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) list];
      sub_1000F5104(&unk_100943240, &qword_10079A3B8);
      Optional.tryUnwrap(_:file:line:)();

      v11 = [v9 remObjectID];
      Optional.tryUnwrap(_:file:line:)();

      v12 = v14;
      v13 = v14;
      sub_10047B110(v6);
    }
  }
}

uint64_t sub_10034A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a5 == 1)
    {

      v14 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100791320;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_100006600();
      *(v17 + 32) = a1;
      *(v17 + 40) = a2;
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v18;
      *(v17 + 64) = v18;
      *(v17 + 72) = a3;
      *(v17 + 80) = a4;
      *(v17 + 136) = &type metadata for String;
      *(v17 + 144) = v18;
      *(v17 + 112) = a6;
      *(v17 + 120) = a7;

      v19 = static String.localizedStringWithFormat(_:_:)();
      v16, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      return v19;
    }

    if (a8)
    {
      if (a5 >= 2)
      {
        goto LABEL_13;
      }
    }

    else if (a5 >= 2)
    {
LABEL_13:

      v57 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100791320;
      *(v60 + 56) = &type metadata for String;
      v61 = sub_100006600();
      *(v60 + 32) = a1;
      *(v60 + 40) = a2;
      *(v60 + 96) = &type metadata for Int;
      *(v60 + 104) = &protocol witness table for Int;
      *(v60 + 64) = v61;
      *(v60 + 72) = a5;
      *(v60 + 136) = &type metadata for String;
      *(v60 + 144) = v61;
      *(v60 + 112) = a6;
      *(v60 + 120) = a7;

      v40 = static String.localizedStringWithFormat(_:_:)();
      v59, v62, v63, v64, v65, v66, v67, v68;
      v55 = v60;
      goto LABEL_16;
    }

LABEL_15:
    v69 = objc_opt_self();
    _StringGuts.grow(_:)(84);
    v70._object = 0x80000001007F3BC0;
    v70._countAndFlagsBits = 0xD000000000000052;
    String.append(_:)(v70);
    v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v71._object;
    String.append(_:)(v71);
    object, v73, v74, v75, v76, v77, v78, v79;
    v80 = String._bridgeToObjectiveC()();
    0xE000000000000000, v81, v82, v83, v84, v85, v86, v87;
    [v69 internalErrorWithDebugDescription:v80];

    return swift_willThrow();
  }

  if (a5 == 1)
  {
    v35 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100791340;
    *(v38 + 56) = &type metadata for String;
    v39 = sub_100006600();
    *(v38 + 32) = a3;
    *(v38 + 40) = a4;
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v39;
    *(v38 + 64) = v39;
    *(v38 + 72) = a6;
    *(v38 + 80) = a7;

    v40 = static String.localizedStringWithFormat(_:_:)();
    v37, v41, v42, v43, v44, v45, v46, v47;
    v55 = v38;
  }

  else
  {
    if (a8)
    {
      if (a5 < 2)
      {
        goto LABEL_15;
      }
    }

    else if (a5 < 2)
    {
      goto LABEL_15;
    }

    v88 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_100791340;
    *(v91 + 56) = &type metadata for Int;
    *(v91 + 64) = &protocol witness table for Int;
    *(v91 + 32) = a5;
    *(v91 + 96) = &type metadata for String;
    *(v91 + 104) = sub_100006600();
    *(v91 + 72) = a6;
    *(v91 + 80) = a7;

    v40 = static String.localizedStringWithFormat(_:_:)();
    v90, v92, v93, v94, v95, v96, v97, v98;
    v55 = v91;
  }

LABEL_16:
  v55, v48, v49, v50, v51, v52, v53, v54;
  return v40;
}

uint64_t sub_10034A6CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942990);
  v1 = sub_100006654(v0, qword_100942990);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_TtC7remindd19RDXPCStorePerformer *sub_10034A794(unint64_t a1, int a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v28 - v11;
  v31 = &_swiftEmptyArrayStorage;
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      KeyPath = swift_getKeyPath();
      v14 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
      sub_1003912E4(KeyPath, v8);
    }

    else
    {
      v27 = swift_getKeyPath();
      sub_1003EB734(v27);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v31->clientIdentity >= *&v31->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
    sub_10001035C(0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v31->clientIdentity >= *&v31->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0();
  }

  v16 = swift_getKeyPath();
  if (a1 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = &_swiftEmptyArrayStorage;
  if (!v17)
  {
LABEL_24:
    sub_1003EB710(v16, v18);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v31->clientIdentity >= *&v31->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((a2 & 1) == 0)
    {
      return sub_10000C2B0();
    }

    goto LABEL_20;
  }

  v28 = v16;
  v29 = a2;
  v30 = &_swiftEmptyArrayStorage;
  result = sub_100253218(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v18 = v30;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
      v30 = v18;
      v26 = *v18->clientIdentity;
      v25 = *&v18->clientIdentity[8];
      if (v26 >= v25 >> 1)
      {
        sub_100253218((v25 > 1), v26 + 1, 1);
        v18 = v30;
      }

      ++v20;
      *v18->clientIdentity = v26 + 1;
      sub_100100FB4(v12, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26);
    }

    while (v17 != v20);
    LOBYTE(a2) = v29;
    v16 = v28;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10034ABB4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 sourceListIDURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10034AC58(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  sub_1001E0978(a1, &v14 - v6);
  v8 = *a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setSourceListIDURL:v12];
}

uint64_t sub_10034AD84()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974D58 = v0;
  return result;
}

unint64_t sub_10034AE0C(void *a1, uint64_t a2, Class isa, Class a4)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = a1;
  v67 = a1;
  v9 = sub_10034A794(v8, 1);
  type metadata accessor for REMCDTemplate();
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  if (isa)
  {
    v12 = sub_10003450C(isa);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  [v10 setPropertiesToFetch:isa];

  if (a4)
  {
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v10 setRelationshipKeyPathsForPrefetching:a4];

  v20 = NSManagedObjectContext.fetch<A>(_:)();
  v8, v21, v22, v23, v24, v25, v26, v27;

  if (!v4)
  {
    v36 = v20 >> 62;
    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v20 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v37 = *(v20 + 32);
        }

        v8 = v37;
        if (v36)
        {
          if (_CocoaArrayWrapper.endIndex.getter() < 2)
          {
            goto LABEL_14;
          }
        }

        else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
        {
LABEL_14:
          v20, v38, v39, v40, v41, v42, v43, v44;
          return v8;
        }

        if (qword_100935F00 == -1)
        {
LABEL_17:
          v45 = type metadata accessor for Logger();
          sub_100006654(v45, qword_100942990);
          v46 = v67;

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *v49 = 138412546;
            *(v49 + 4) = v46;
            *v50 = v46;
            *(v49 + 12) = 2048;
            if (v36)
            {
              v51 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v51 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v52 = v46;
            v20, v53, v54, v55, v56, v57, v58, v59;
            *(v49 + 14) = v51;
            v20, v60, v61, v62, v63, v64, v65, v66;
            _os_log_impl(&_mh_execute_header, v47, v48, "Found multiple instances of REMCDTemplate with identical objectID {objectID: %@, matches: %ld}", v49, 0x16u);
            sub_100039860(v50);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          return v8;
        }

LABEL_27:
        swift_once();
        goto LABEL_17;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    v20, v28, v29, v30, v31, v32, v33, v34;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v67];
    swift_willThrow();
  }

  return v8;
}

_TtC7remindd19RDXPCStorePerformer *sub_10034B1FC(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v59 = v2;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 account];
      if (!v10)
      {
        v29 = objc_opt_self();
        _StringGuts.grow(_:)(36);
        0xE000000000000000, v30, v31, v32, v33, v34, v35, v36;
        v37 = [v9 description];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41._countAndFlagsBits = v38;
        v41._object = v40;
        String.append(_:)(v41);
        v40, v42, v43, v44, v45, v46, v47, v48;
        v49._countAndFlagsBits = 125;
        v49._object = 0xE100000000000000;
        String.append(_:)(v49);
        v50 = String._bridgeToObjectiveC()();
        0x80000001007F0570, v51, v52, v53, v54, v55, v56, v57;
        [v29 internalErrorWithDebugDescription:v50];

        swift_willThrow();
      }

      v2 = v10;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v6;
      if (v7 == i)
      {
        v2 = v59;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_14:
  if (qword_100935F00 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100006654(v11, qword_100942990);
  __chkstk_darwin(v12, v13);
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_100308CDC();
  v14 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    &_swiftEmptyArrayStorage, v22, v23, v24, v25, v26, v27, v28;
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v58 = v14;
    &_swiftEmptyArrayStorage, v15, v16, v17, v18, v19, v20, v21;
    return v58;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10034B568()
{
  sub_100026EF4(0, 5, 0);
  v0 = 0;
  result = &_swiftEmptyArrayStorage;
  v2 = 0x80000001007EC560;
  v3 = 0x80000001007E8BF0;
  v4 = 0x80000001007E8E00;
  v5 = 0x80000001007E8DE0;
  v6 = 0x80000001007E8DC0;
  v7 = 0x80000001007E8BC0;
  v8 = 0x80000001007E8D90;
  v9 = 0x80000001007EA730;
  v10 = 0x80000001007E8D70;
  v11 = 0x80000001007F2430;
  do
  {
    v12 = 0xEB000000006D656CLL;
    v13 = 0x626D456567646162;
    switch(*(&off_1008DD850 + v0 + 32))
    {
      case 1:
        v12 = 0xE500000000000000;
        v13 = 0x726F6C6F63;
        break;
      case 2:
        v13 = 0xD000000000000023;
        v12 = v11;
        break;
      case 3:
        v12 = 0xEA00000000007265;
        v13 = 0x696669746E656469;
        break;
      case 4:
        v13 = 0xD000000000000010;
        v12 = v10;
        break;
      case 5:
        v13 = 0xD00000000000001ALL;
        v12 = v9;
        break;
      case 6:
        v13 = 0xD000000000000025;
        v12 = v8;
        break;
      case 7:
        v12 = 0xE400000000000000;
        v13 = 1701667182;
        break;
      case 8:
        v13 = 0xD000000000000011;
        v12 = v7;
        break;
      case 9:
        v13 = 0xD00000000000001BLL;
        v12 = v6;
        break;
      case 0xA:
        v13 = 0xD000000000000016;
        v12 = v5;
        break;
      case 0xB:
        v13 = 0xD00000000000001ALL;
        v12 = v4;
        break;
      case 0xC:
        v13 = 0xD000000000000018;
        v12 = v3;
        break;
      case 0xD:
        v13 = 0xD00000000000001ELL;
        v12 = v2;
        break;
      case 0xE:
        v13 = 0x53676E6974726F73;
        v12 = 0xEC000000656C7974;
        break;
      default:
        break;
    }

    v27 = result;
    v15 = *result->clientIdentity;
    v14 = *&result->clientIdentity[8];
    if (v15 >= v14 >> 1)
    {
      v18 = v10;
      v19 = v9;
      v25 = v3;
      v26 = v2;
      v23 = v5;
      v24 = v4;
      v21 = v7;
      v22 = v6;
      v20 = v8;
      v17 = v11;
      sub_100026EF4((v14 > 1), v15 + 1, 1);
      v11 = v17;
      v10 = v18;
      v9 = v19;
      v8 = v20;
      v7 = v21;
      v6 = v22;
      v5 = v23;
      v4 = v24;
      v3 = v25;
      v2 = v26;
      result = v27;
    }

    ++v0;
    *result->clientIdentity = v15 + 1;
    v16 = &result->super.isa + 2 * v15;
    v16[4] = v13;
    v16[5] = v12;
  }

  while (v0 != 5);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10034B870()
{
  sub_100026EF4(0, 15, 0);
  v0 = 0;
  result = &_swiftEmptyArrayStorage;
  v2 = 0x80000001007EC560;
  v3 = 0x80000001007E8BF0;
  v4 = 0x80000001007E8E00;
  v5 = 0x80000001007E8DE0;
  v6 = 0x80000001007E8DC0;
  v7 = 0x80000001007E8BC0;
  v8 = 0x80000001007E8D90;
  v9 = 0x80000001007EA730;
  v10 = 0x80000001007E8D70;
  v11 = 0x80000001007F2430;
  do
  {
    v12 = 0xEB000000006D656CLL;
    v13 = 0x626D456567646162;
    switch(*(&off_1008E2C38 + v0 + 32))
    {
      case 1:
        v12 = 0xE500000000000000;
        v13 = 0x726F6C6F63;
        break;
      case 2:
        v13 = 0xD000000000000023;
        v12 = v11;
        break;
      case 3:
        v12 = 0xEA00000000007265;
        v13 = 0x696669746E656469;
        break;
      case 4:
        v13 = 0xD000000000000010;
        v12 = v10;
        break;
      case 5:
        v13 = 0xD00000000000001ALL;
        v12 = v9;
        break;
      case 6:
        v13 = 0xD000000000000025;
        v12 = v8;
        break;
      case 7:
        v12 = 0xE400000000000000;
        v13 = 1701667182;
        break;
      case 8:
        v13 = 0xD000000000000011;
        v12 = v7;
        break;
      case 9:
        v13 = 0xD00000000000001BLL;
        v12 = v6;
        break;
      case 0xA:
        v13 = 0xD000000000000016;
        v12 = v5;
        break;
      case 0xB:
        v13 = 0xD00000000000001ALL;
        v12 = v4;
        break;
      case 0xC:
        v13 = 0xD000000000000018;
        v12 = v3;
        break;
      case 0xD:
        v13 = 0xD00000000000001ELL;
        v12 = v2;
        break;
      case 0xE:
        v13 = 0x53676E6974726F73;
        v12 = 0xEC000000656C7974;
        break;
      default:
        break;
    }

    v27 = result;
    v15 = *result->clientIdentity;
    v14 = *&result->clientIdentity[8];
    if (v15 >= v14 >> 1)
    {
      v18 = v10;
      v19 = v9;
      v25 = v3;
      v26 = v2;
      v23 = v5;
      v24 = v4;
      v21 = v7;
      v22 = v6;
      v20 = v8;
      v17 = v11;
      sub_100026EF4((v14 > 1), v15 + 1, 1);
      v11 = v17;
      v10 = v18;
      v9 = v19;
      v8 = v20;
      v7 = v21;
      v6 = v22;
      v5 = v23;
      v4 = v24;
      v3 = v25;
      v2 = v26;
      result = v27;
    }

    ++v0;
    *result->clientIdentity = v15 + 1;
    v16 = &result->super.isa + 2 * v15;
    v16[4] = v13;
    v16[5] = v12;
  }

  while (v0 != 15);
  return result;
}

uint64_t sub_10034BB78(void *a1, void *a2)
{
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = (&v28 - v17);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  *v18 = a1;
  v18[1] = a2;
  v18[2] = 0x4024000000000000;
  type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_10034BF34(v18, v14);
  type metadata accessor for RDSharedInlineTagAutoConvertEngine(0);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables) = _swiftEmptySetSingleton;
  v21 = OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_babysitTarget;
  v22 = objc_allocWithZone(type metadata accessor for RDSharedInlineTagAutoConvertEngine.BabysitTarget());
  v23 = a1;
  a2;

  *(v20 + v21) = [v22 init];
  sub_10034BF98(v14, v20 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration);
  v24 = (v20 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_handler);
  *v24 = v19;
  v24[1] = &off_1008E8780;
  aBlock[4] = sub_10034BFFC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EEBE8;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v26 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v32 + 8))(v6, v26);
  (*(v30 + 8))(v10, v31);
  sub_10023D420(v18);

  return v20;
}

uint64_t sub_10034BF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034BF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10034C000()
{
  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  result = [v1 metadata];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16))
  {
    v7, v8, v9, v10, v11, v12, v13, v14;
    v38 = v4;
LABEL_10:
    v38, v24, v25, v26, v27, v28, v29, v30;
    return 0;
  }

  v15 = sub_100005F4C(v2, v4);
  v17 = v16;
  v4, v16, v18, v19, v20, v21, v22, v23;
  if ((v17 & 1) == 0)
  {
    v38 = v7;
    goto LABEL_10;
  }

  sub_100005EF0(*(v7 + 56) + 32 * v15, v40);
  v7, v31, v32, v33, v34, v35, v36, v37;
  if (swift_dynamicCast())
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

void sub_10034C130(uint64_t a1, void **a2)
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

  [v8 setEntityIdentifier:isa];
}

_TtC7remindd19RDXPCStorePerformer *sub_10034C26C(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() entity];
  v6 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v5];

  v7 = sub_100016788(0, a2, 128);
  [v6 setPredicate:v7];

  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *&v57 = 0x656C706D6F437369;
  *(&v57 + 1) = 0xEB00000000646574;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v9 = sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9, v11, v12, v13, v14, v15, v16, v17;
  [v6 setPropertiesToUpdate:isa];

  [v6 setResultType:1];
  v55 = 0;
  v18 = [(RDXPCStorePerformer *)a1 executeRequest:v6 error:&v55];
  v19 = v55;
  if (v18)
  {
    v20 = v18;
    *(&v58 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v57 = v20;
    sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
    v21 = v19;
    throwingCast<A>(_:as:failureMessage:)();
    if (v2)
    {

      sub_10000607C(&v57);
    }

    else
    {
      sub_10000607C(&v57);
      v22 = v56;
      if ([v56 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v56, &v57);
      }

      else
      {
        v57 = 0u;
        v58 = 0u;
      }

      v23 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v57, &qword_100939ED0, &qword_100791B10);
      v25 = v55;
      v26 = objc_opt_self();
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_100791300;
      *&v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v57 + 1) = v28;
      AnyHashable.init<A>(_:)();
      *(v27 + 96) = v23;
      *(v27 + 72) = v25;

      v29 = sub_10038ED74(v27);
      swift_setDeallocating();
      sub_1000050A4(v27 + 32, &unk_100946590, &qword_100796FF0);
      v30 = Dictionary._bridgeToObjectiveC()().super.isa;
      v29, v31, v32, v33, v34, v35, v36, v37;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1007953F0;
      *(v38 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v39 = a1;
      v40 = Array._bridgeToObjectiveC()().super.isa;
      v38, v41, v42, v43, v44, v45, v46, v47;
      [v26 mergeChangesFromRemoteContextSave:v30 intoContexts:v40];

      if (v25 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25, v48, v49, v50, v51, v52, v53, v54;
    }
  }

  else
  {
    a1 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_10034C798()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_1009429A8 = v0;
  return result;
}

void sub_10034C844(uint64_t a1, void **a2)
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

unint64_t sub_10034C9A4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = sub_100016788(0, a2, 128);
  type metadata accessor for REMCDOperationQueueItem();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  [v5 setFetchLimit:1];
  if (qword_100935F10 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setSortDescriptors:isa];

  [v5 setReturnsObjectsAsFaults:0];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:
    result, v9, v10, v11, v12, v13, v14, v15;

    return 0;
  }

  v25 = result;
  v26 = _CocoaArrayWrapper.endIndex.getter();
  result = v25;
  if (!v26)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = result;
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = result;
    v17 = *(result + 32);
LABEL_10:
    v3 = v17;
    v16, v18, v19, v20, v21, v22, v23, v24;

    return v3;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10034CBCC(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2)
{
  v4 = sub_100016788(1, a2, 128);
  type metadata accessor for REMCDOperationQueueItem();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];
  *(&v50 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v49 = v5;
  v7 = v5;
  throwingCast<A>(_:as:failureMessage:)();
  if (v2)
  {

    sub_10000607C(&v49);
  }

  else
  {

    sub_10000607C(&v49);
    v9 = v48;
    v10 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v48];
    [v10 setResultType:1];
    v47 = 0;
    v11 = [(RDXPCStorePerformer *)a1 executeRequest:v10 error:&v47];
    v12 = v47;
    if (v11)
    {
      v13 = v11;
      *(&v50 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
      *&v49 = v13;
      sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
      v14 = v12;
      throwingCast<A>(_:as:failureMessage:)();
      sub_10000607C(&v49);
      v15 = v48;
      if ([v48 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v48, &v49);
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
      }

      v16 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v49, &qword_100939ED0, &qword_100791B10);
      v17 = v47;
      v46 = objc_opt_self();
      sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *&v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v49 + 1) = v19;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v16;
      *(inited + 72) = v17;

      v20 = sub_10038ED74(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v20, v22, v23, v24, v25, v26, v27, v28;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1007953F0;
      *(v29 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v30 = a1;
      v31 = Array._bridgeToObjectiveC()().super.isa;
      v29, v32, v33, v34, v35, v36, v37, v38;
      [v46 mergeChangesFromRemoteContextSave:isa intoContexts:v31];

      if (v17 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17, v39, v40, v41, v42, v43, v44, v45;
    }

    else
    {
      a1 = v47;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_10034D0CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009429B0);
  v1 = sub_100006654(v0, qword_1009429B0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10034D194(uint64_t a1)
{
  v3 = [*v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10034D3BC(a1, v4, 128, 0);
  v4, v6, v7, v8, v9, v10, v11, v12;
  return v5;
}

id sub_10034D238(uint64_t a1)
{
  v3 = [*v1 templateObjectID];
  if (qword_1009360E0 != -1)
  {
    swift_once();
  }

  v4 = sub_10034D3BC(a1, v3, 1, qword_100974E58);

  return v4;
}

_TtC7remindd19RDXPCStorePerformer *sub_10034D2E0@<X0>(void **a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for REMTemplateSectionStorageCDIngestor();
  swift_initStackObject();
  result = sub_1004A5B2C(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

NSString sub_10034D344@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [objc_opt_self() sharedConfiguration];
  [v5 templatePublicLinkTTL];

  result = sub_1001D9968(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10034D3BC(uint64_t a1, unint64_t a2, uint64_t a3, Class a4)
{
  v5 = v4;
  v7 = a3;
  type metadata accessor for REMCDTemplateSection();
  v9 = sub_1004263A0();
  v10 = sub_1004267FC();
  v11 = sub_100425A50(a2, v7);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  v14 = sub_10003450C(v9);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14, v16, v17, v18, v19, v20, v21, v22;
  [v12 setPropertiesToFetch:isa];

  v23 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setRelationshipKeyPathsForPrefetching:v23];

  if (a4)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v12 setSortDescriptors:a4];

  v24 = NSManagedObjectContext.fetch<A>(_:)();
  v25 = v4;
  v9, v26, v27, v28, v29, v30, v31, v32;
  v10, v33, v34, v35, v36, v37, v38, v39;

  if (!v4)
  {
    if (qword_100935F18 != -1)
    {
LABEL_25:
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = sub_100006654(v40, qword_1009429B0);
    __chkstk_darwin(v41, v42);
    sub_1000F5104(&qword_10094F1D0, &qword_1007A3678);
    sub_1000060C8(0, &qword_1009429C8, REMTemplateSectionStorage_ptr);
    sub_10000CB90(&qword_1009429D0, &qword_10094F1D0, &qword_1007A3678);
    v43 = Sequence.map<A>(skippingError:_:)();
    if (v25)
    {

      v93 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v93 = v43;
    }

    if (v24 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = 0;
    v25 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    while (v51 != v52)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v53 = *(v24 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v56 = [v53 template];

      ++v52;
      if (v56)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v52 = v55;
      }
    }

    v24, v44, v45, v46, v47, v48, v49, v50;
    sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
    sub_10000CB90(&qword_10093F3C0, &qword_10093F3B8, &unk_10079DDE0);
    sub_10034D990();
    v57 = Sequence<>.unique()();
    &_swiftEmptyArrayStorage, v58, v59, v60, v61, v62, v63, v64;
    __chkstk_darwin(v65, v66);
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    v67 = Sequence.map<A>(skippingError:_:)();
    v57, v68, v69, v70, v71, v72, v73, v74;
    v75 = objc_allocWithZone(REMTemplateSectionsDataViewInvocationResult);
    v76 = Array._bridgeToObjectiveC()().super.isa;
    v67, v77, v78, v79, v80, v81, v82, v83;
    v84 = Array._bridgeToObjectiveC()().super.isa;
    v93, v85, v86, v87, v88, v89, v90, v91;
    v5 = [v75 initWithTemplateStorages:v76 templateSectionStorages:v84];
  }

  return v5;
}

unint64_t sub_10034D990()
{
  result = qword_10093A968;
  if (!qword_10093A968)
  {
    type metadata accessor for REMCDTemplate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A968);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10034D9F4(void *a1, __n128 a2)
{
  v47 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v47, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v50 = &v42 - v10;
  v49 = _s10PredicatesOMa(0);
  __chkstk_darwin(v49, v11);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v14 = *(v54 - 8);
  __chkstk_darwin(v54, v15);
  v48 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v56 = &v42 - v19;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v52 = *(Subtasks - 8);
  v53 = Subtasks;
  __chkstk_darwin(Subtasks, v21);
  v55 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v51 = *(v23 - 8);
  __chkstk_darwin(v23, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_10034DF5C(*(v2 + 24), a1);
  if (!v3)
  {
    v29 = v28;
    v30 = [*(v2 + 40) shouldSaveCompleted];
    v44 = v7;
    v31 = v51;
    v32 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    if (!v30)
    {
      v32 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
    }

    (*(v51 + 104))(v26, *v32, v23);
    (*(v52 + 104))(v55, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v53);
    v33 = *(v14 + 104);
    v43 = v27;
    v34 = v54;
    v33(v56, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v54);
    v35 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
    v45 = v29;
    v13->super.isa = [v29 objectID];
    v36 = *(v31 + 16);
    v46 = v23;
    v36(v13 + v35, v26, v23);
    swift_storeEnumTagMultiPayload();
    v37 = sub_100043AA8();
    sub_100025314(v13, _s10PredicatesOMa);
    v49 = v14;
    v38 = v48;
    (*(v14 + 16))(v48, v56, v34);
    v39 = v44;
    swift_storeEnumTagMultiPayload();
    v40 = v50;
    sub_1005368D8(v38, v39, v50);
    v13 = sub_100536D54(v43, v37, v40, v26, v55, &_swiftEmptyArrayStorage, 0);

    sub_100025314(v40, _s9UtilitiesO12SortingStyleOMa);
    (*(v49 + 8))(v56, v54);
    (*(v52 + 8))(v55, v53);
    (*(v51 + 8))(v26, v46);
  }

  return v13;
}

void sub_10034DF5C(void *a1, void *a2)
{
  v4 = v2;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  v8 = *(v4 + 24);
  *(v7 + 32) = v8;
  v9 = objc_allocWithZone(REMListsDataViewInvocation_fetchByObjectIDs);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v10 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v9 initWithObjectIDs:isa];

  v20 = sub_1001DE1FC(a2);
  if (!v3)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v22 = v20;
    v78 = v20;
    if (v21)
    {
      v23 = v21;
      v76 = v22;
      v24 = [v23 accountStorages];
      if (!v24)
      {
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = Array._bridgeToObjectiveC()().super.isa;
        v25, v26, v27, v28, v29, v30, v31, v32;
      }

      v33 = [v23 listStorages];
      if (!v33)
      {
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = Array._bridgeToObjectiveC()().super.isa;
        v34, v35, v36, v37, v38, v39, v40, v41;
      }

      v42 = objc_opt_self();
      v43 = *(v4 + 48);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1007953F0;
      *(v44 + 32) = a1;
      v77 = a1;
      v45 = Array._bridgeToObjectiveC()().super.isa;
      v44, v46, v47, v48, v49, v50, v51, v52;
      v53 = [v42 listsFromAccountStorages:v24 listStorages:v33 store:v43 requestedListIDs:v45];

      if (v53)
      {
        sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
        v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v54 >> 62)
        {
          goto LABEL_23;
        }

        for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v63 = 0;
          while (1)
          {
            if ((v54 & 0xC000000000000001) != 0)
            {
              v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v63 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v64 = *(v54 + 8 * v63 + 32);
            }

            v65 = v64;
            v66 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              break;
            }

            sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
            v67 = [v65 objectID];
            v68 = static NSObject.== infix(_:_:)();

            if (v68)
            {
              v54, v69, v70, v71, v72, v73, v74, v75;

              REMList.codable.getter();
              return;
            }

            ++v63;
            if (v66 == i)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          ;
        }

LABEL_24:
        v54, v55, v56, v57, v58, v59, v60, v61;
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v77];
      swift_willThrow();
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
      swift_willThrow();
    }
  }
}

uint64_t sub_10034E3A4(uint64_t a1)
{
  v4 = sub_1001BE2C0(a1, *(v2 + 24));
  if (!v3)
  {
    if (v4 >> 62)
    {
      v21 = v4;
      type metadata accessor for REMCDBaseSection();

      v1 = _bridgeCocoaArray<A>(_:)();
      v21, v14, v15, v16, v17, v18, v19, v20;
      v12 = v21;
    }

    else
    {
      v1 = v4;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for REMCDBaseSection();
      v12 = v1;
    }

    v12, v5, v6, v7, v8, v9, v10, v11;
  }

  return v1;
}

void sub_10034E44C()
{
  v2 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v2, v3);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  v52 = xmmword_1007953F0;
  *(v6 + 16) = xmmword_1007953F0;
  v7 = *(v0 + 24);
  *(v6 + 32) = v7;
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = v52;
  *(inited + 32) = swift_getKeyPath();
  v9 = swift_initStackObject();
  *(v9 + 16) = v52;
  *(v9 + 32) = swift_getKeyPath();
  v10 = v7;
  v11 = sub_10001F6F4();
  v12 = sub_100405438(inited, v9, 0, v11);
  inited, v13, v14, v15, v16, v17, v18, v19;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v12 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_100025314(v5, _s10PredicatesOMa_1);

    return;
  }

  v53 = v21;
  v22 = v21;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v23 = Sequence.elements<A>(ofType:)();

  sub_100025314(v5, _s10PredicatesOMa_1);
  v22, v24, v25, v26, v27, v28, v29, v30;
  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:
    v23, v31, v32, v33, v34, v35, v36, v37;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v10];
    swift_willThrow();
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v38 = *(v23 + 32);
  }

  v46 = v38;
  v23, v39, v40, v41, v42, v43, v44, v45;
  v47 = [v46 membershipsOfRemindersInSectionsAsData];
  if (v47)
  {
    v48 = v47;
    v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
    static REMJSONRepresentable.fromJSONData(_:)();

    sub_10001BBA0(v49, v51);
  }

  else
  {
  }
}

uint64_t sub_10034E890()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942B00);
  v1 = sub_100006654(v0, qword_100942B00);
  if (qword_100936488 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10034E958()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v31[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_storeControllerObservationToken;
  swift_beginAccess();
  sub_10014D7CC(v1 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10034EE48(v5);
  }

  else
  {
    sub_10035083C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    if (qword_100935F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100942B00);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Removing RDDataStoreApplicationShortcutListProvider observer on store controller", v22, 2u);
    }

    v23 = *(v1 + 48);
    v24 = *(v23 + 40);

    os_unfair_lock_lock(v24);
    __chkstk_darwin(v25, v26);
    *&v31[-16] = v10;
    swift_beginAccess();
    v27 = sub_1002601AC(sub_10014D8A4, &v31[-32]);
    v28 = *(*(v23 + 48) + 16);
    if (v28 < v27)
    {
      __break(1u);
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    sub_100260C60(v27, v28);
    swift_endAccess();
    os_unfair_lock_unlock(v24);

    sub_1003508A4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  }

  v29 = *(v1 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken);
  if (v29)
  {
    [v29 stopObserving];
  }

  *(v1 + 16), v12, v13, v14, v15, v16, v17, v18;
  sub_1000536E0(v1 + 24);

  sub_10034EE48(v1 + v11);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_10034ECC4()
{
  sub_10034E958();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDDataStoreApplicationShortcutListProvider(uint64_t a1)
{
  result = qword_100942B60;
  if (!qword_100942B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034ED70(uint64_t a1)
{
  sub_1001490E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10034EE48(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10034EEB0()
{
  v1 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v2 = *(v1 - 1);
  __chkstk_darwin(v1, v3);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v59 - v7;
  v9 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v59 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v18 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v0 + 40);
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13, v16);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_isStarted))
  {
    if (qword_100935F20 == -1)
    {
LABEL_4:
      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100942B00);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "RDDataStoreApplicationShortcutListProvider must be started at most once", v25, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  *(v0 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_isStarted) = 1;
  v60 = *(v0 + 48);
  v61 = v2;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v26 = v12;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v28 = [swift_getObjCClassFromMetadata() cdEntityName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v20;
  v32 = v31;

  *(inited + 32) = v29;
  v33 = inited + 32;
  *(inited + 40) = v32;
  v34 = sub_10038D894(inited);
  v35 = v26;
  swift_setDeallocating();
  sub_100034610(v33);
  v36 = swift_allocObject();
  swift_weakInit();

  UUID.init()();
  sub_100026CD8(v26, v8, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *&v8[v1[5]] = v34;
  *&v8[v1[6]] = v30;
  v37 = &v8[v1[7]];
  *v37 = sub_100350834;
  v37[1] = v36;
  v38 = v60;
  v39 = *(v60 + 40);
  v40 = v30;
  v41 = v38;

  os_unfair_lock_lock(v39);
  sub_100026CD8(v8, v62, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v42 = *(v38 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + 48) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_100365714(0, *v42->clientIdentity + 1, 1, v42);
    *(v38 + 48) = v42;
  }

  v45 = *v42->clientIdentity;
  v44 = *&v42->clientIdentity[8];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100365714((v44 > 1), v45 + 1, 1, v42);
  }

  *v42->clientIdentity = v45 + 1;
  sub_10035083C(v62, v42 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v45, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(v41 + 48) = v42;
  swift_endAccess();
  os_unfair_lock_unlock(v39);
  v34, v46, v47, v48, v49, v50, v51, v52;

  sub_1003508A4(v8, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  v53 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v53 - 8) + 56))(v35, 0, 1, v53);
  v54 = OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_storeControllerObservationToken;
  swift_beginAccess();
  sub_10014D740(v35, v0 + v54);
  swift_endAccess();
  v55 = [objc_opt_self() daemonUserDefaults];
  v56 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100350904;
  aBlock[5] = v56;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10031B6FC;
  aBlock[3] = &unk_1008EECA0;
  v57 = _Block_copy(aBlock);

  v58 = [v55 observePreferredDefaultListIDWithBlock:v57];
  _Block_release(v57);

  *(v0 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken) = v58;
  swift_unknownObjectRelease();
  sub_10034F66C();
}

void sub_10034F554(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10034F66C();
  }

  else
  {
    if (qword_100935F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100942B00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received store controller change notification after RDDataStoreApplicationShortcutListProvider was deallocated", v5, 2u);
    }
  }
}

void sub_10034F66C()
{
  v1 = v0;
  v227 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v2 = *(v227 - 8);
  __chkstk_darwin(v227, v3);
  v218 = &v203 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v213 = &v203 - v7;
  v212 = type metadata accessor for REMAccountsListDataView.Model.Group();
  v8 = *(v212 - 8);
  __chkstk_darwin(v212, v9);
  v211 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v225 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v224 = (&v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14, v15);
  v226 = &v203 - v16;
  v223 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v17 = *&v223[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v223, v18);
  v20 = &v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v24 = __chkstk_darwin(v21, v23);
  v26 = (&v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 40);
  *v26 = v27;
  (*(v22 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v21, v24);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v26, v21);
  if ((v27 & 1) == 0)
  {
    goto LABEL_84;
  }

  v29 = *(v1 + OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_store);
  v229 = 0;
  v30 = [v29 fetchDefaultListWithError:&v229];
  v31 = v30;
  if (v229)
  {
    v8 = v229;

    swift_willThrow();
    if (qword_100935F20 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_6;
  }

  v216 = v8;
  v208 = v30;
  type metadata accessor for REMAccountsListDataView();
  v32 = static REMAccountsListDataView.fetchAccounts(store:diffingAgainst:)();
  v203 = v1;
  v56 = *(v32 + 16);
  v222 = v2;
  if (!v56)
  {
    v32, v33, v34, v35, v36, v37, v38, v39;
    v8 = &_swiftEmptyArrayStorage;
LABEL_28:
    v100 = v224;
    v223 = *v8->clientIdentity;
    if (v223)
    {
      v101 = 0;
      v221 = v225 + 16;
      v220 = (v225 + 88);
      LODWORD(v219) = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
      v210 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
      v207 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
      v217 = (v225 + 96);
      v206 = &v216->clientIdentity[16];
      storeController = v216->storeController;
      v216 = (v225 + 8);
      v204 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
      v215 = v2 + 104;
      v102 = &_swiftEmptyArrayStorage;
      v209 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
      v214 = xmmword_100791300;
      while (v101 < *v8->clientIdentity)
      {
        v103 = v225;
        v104 = v226;
        v105 = *(v225 + 16);
        v105(v226, v8 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v225 + 72) * v101, v11);
        v105(v100, v104, v11);
        v106 = (*(v103 + 88))(v100, v11);
        if (v106 == v219)
        {
          (v217->super.isa)(v100, v11);
          isa = v100->super.isa;
          sub_1000F5104(&unk_10093F800, &qword_1007A48D0);
          v108 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v109 = swift_allocObject();
          *(v109 + 16) = v214;
          *(v109 + v108) = isa;
          (*(v2 + 104))(v109 + v108, v209, v227);
        }

        else if (v106 == v210)
        {
          (v217->super.isa)(v100, v11);
          v110 = v100->super.isa;
          sub_1000F5104(&unk_10093F800, &qword_1007A48D0);
          v111 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v109 = swift_allocObject();
          *(v109 + 16) = v214;
          *(v109 + v111) = v110;
          (*(v2 + 104))(v109 + v111, v204, v227);
        }

        else
        {
          if (v106 != v207)
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return;
          }

          (v217->super.isa)(v100, v11);
          v112 = v100;
          v113 = v211;
          v114 = v212;
          (*v206)(v211, v112, v212);
          v109 = REMAccountsListDataView.Model.Group.lists.getter();
          (*storeController)(v113, v114);
        }

        (v216->super.isa)(v226, v11);
        v115 = *(v109 + 16);
        v116 = *v102->clientIdentity;
        v117 = v116 + v115;
        if (__OFADD__(v116, v115))
        {
          goto LABEL_78;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v117 > *&v102->clientIdentity[8] >> 1)
        {
          if (v116 <= v117)
          {
            v126 = v116 + v115;
          }

          else
          {
            v126 = v116;
          }

          v102 = sub_100365DF8(isUniquelyReferenced_nonNull_native, v126, 1, v102);
        }

        v2 = v222;
        if (*(v109 + 16))
        {
          if ((*&v102->clientIdentity[8] >> 1) - *v102->clientIdentity < v115)
          {
            goto LABEL_81;
          }

          swift_arrayInitWithCopy();
          v109, v127, v128, v129, v130, v131, v132, v133;
          if (v115)
          {
            v134 = *v102->clientIdentity;
            v91 = __OFADD__(v134, v115);
            v135 = v134 + v115;
            if (v91)
            {
              goto LABEL_83;
            }

            *v102->clientIdentity = v135;
          }
        }

        else
        {
          v109, v119, v120, v121, v122, v123, v124, v125;
          if (v115)
          {
            goto LABEL_79;
          }
        }

        ++v101;
        v100 = v224;
        if (v223 == v101)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_77;
    }

    v102 = &_swiftEmptyArrayStorage;
LABEL_52:
    v8, v93, v94, v95, v96, v97, v98, v99;
    v229 = v102;
    if (v208)
    {
      v143 = *v102->clientIdentity;
      v226 = v208;
      v223 = v143;
      if (v143)
      {
        v144 = 0;
        v221 = v2 + 16;
        v224 = (v2 + 8);
        while (1)
        {
          if (v144 >= *v102->clientIdentity)
          {
            __break(1u);
          }

          v225 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v145 = *(v2 + 72);
          v146 = v213;
          v147 = v227;
          (*(v2 + 16))(v213, v102 + v225 + v145 * v144, v227);
          sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
          v148 = REMAccountsListDataView.Model.GroupChild.objectID.getter();
          v149 = [v226 objectID];
          v150 = static NSObject.== infix(_:_:)();

          v2 = v222;
          v151 = *(v222 + 8);
          v151(v146, v147);
          if (v150)
          {
            break;
          }

          ++v144;
          v152 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
          if (v223 == v144)
          {
            goto LABEL_62;
          }
        }

        v153 = v213;
        sub_10042C868(v144, v213);
        v151(v153, v227);
      }

      else
      {
        v145 = *(v2 + 72);
        v225 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      }

      v152 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
LABEL_62:
      sub_1000F5104(&unk_10093F800, &qword_1007A48D0);
      v154 = v225;
      v155 = swift_allocObject();
      v156 = *&v152[96].entrysize;
      v157 = v154;
      *(v155 + 16) = v156;
      *(v155 + v154) = REMList.codable.getter();
      v158 = v227;
      (*(v2 + 104))(v155 + v154, enum case for REMAccountsListDataView.Model.GroupChild.list(_:), v227);
      v159 = v229;
      v228 = v155;

      sub_10027214C(v160);
      v168 = v228;
      v169 = *v228->clientIdentity;
      if (v169)
      {
        v224 = v159;
        v102 = sub_100365DF8(0, 1, 1, &_swiftEmptyArrayStorage);
        v223 = v168;
        v170 = v168 + v157;
        v171 = v2 + 16;
        v172 = *(v2 + 16);
        v173 = v218;
        do
        {
          v172(v173, v170, v158);
          v175 = *v102->clientIdentity;
          v174 = *&v102->clientIdentity[8];
          if (v175 >= v174 >> 1)
          {
            v102 = sub_100365DF8((v174 > 1), v175 + 1, 1, v102);
          }

          *v102->clientIdentity = v175 + 1;
          v176 = v102 + v157 + v175 * v145;
          v173 = v218;
          v158 = v227;
          (*(v171 + 16))(v176, v218, v227);
          v170 += v145;
          --v169;
        }

        while (v169);
        v223, v177, v178, v179, v180, v181, v182, v183;
        v2 = v222;
        v159 = v224;
      }

      else
      {
        v228, v161, v162, v163, v164, v165, v166, v167;
        v102 = &_swiftEmptyArrayStorage;
      }

      v159, v184, v185, v186, v187, v188, v189, v190;
    }

    v191 = v203;
    if (*v102->clientIdentity >= 5uLL)
    {
      sub_100277F84(v102, v102 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), 0, 9uLL);
      v193 = v192;
      v102, v194, v195, v196, v197, v198, v199, v200;
      v102 = v193;
    }

    v201 = *(v191 + 16);
    *(v191 + 16) = v102;
    v201, v136, v137, v138, v139, v140, v141, v142;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100350A04(Strong);
      swift_unknownObjectRelease();
    }

    return;
  }

  v58 = *(v17 + 16);
  v57 = v17 + 16;
  v59 = *(v57 + 64);
  v217 = v32;
  v60 = v32 + ((v59 + 32) & ~v59);
  v219 = *(v57 + 56);
  v220 = v58;
  v221 = v57;
  v61 = (v57 - 8);
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v69 = v223;
    v220(v20, v60, v223);
    v70 = REMAccountsListDataView.Model.Account.children.getter();
    (*v61)(v20, v69);
    v71 = *(v70 + 16);
    v72 = *v8->clientIdentity;
    v73 = v72 + v71;
    if (__OFADD__(v72, v71))
    {
      break;
    }

    v74 = swift_isUniquelyReferenced_nonNull_native();
    if (v74 && v73 <= *&v8->clientIdentity[8] >> 1)
    {
      if (*(v70 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v72 <= v73)
      {
        v82 = v72 + v71;
      }

      else
      {
        v82 = v72;
      }

      v8 = sub_100365E20(v74, v82, 1, v8);
      if (*(v70 + 16))
      {
LABEL_22:
        if ((*&v8->clientIdentity[8] >> 1) - *v8->clientIdentity < v71)
        {
          goto LABEL_80;
        }

        swift_arrayInitWithCopy();
        v70, v83, v84, v85, v86, v87, v88, v89;
        if (v71)
        {
          v90 = *v8->clientIdentity;
          v91 = __OFADD__(v90, v71);
          v92 = v90 + v71;
          if (v91)
          {
            goto LABEL_82;
          }

          *v8->clientIdentity = v92;
        }

        goto LABEL_12;
      }
    }

    v70, v75, v76, v77, v78, v79, v80, v81;
    if (v71)
    {
      goto LABEL_76;
    }

LABEL_12:
    v60 += v219;
    if (!--v56)
    {
      v217, v62, v63, v64, v65, v66, v67, v68;
      v2 = v222;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  swift_once();
LABEL_6:
  v40 = type metadata accessor for Logger();
  sub_100006654(v40, qword_100942B00);
  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v229 = v44;
    *v43 = 136315138;
    v228 = v8;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    v48 = sub_10000668C(v45, v46, &v229);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "Unable to fetch lists to use as application shortcuts {error: %s}", v43, 0xCu);
    sub_10000607C(v44);
  }

  else
  {
  }
}

uint64_t sub_1003504C8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14[1] = *(result + 40);
    aBlock[4] = sub_100350C5C;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008EECF0;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v14[2] = &_swiftEmptyArrayStorage;
    sub_10000AB38();
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_100350750()
{
  if (qword_100935F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100942B00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received preferred default list ID changed after RDDataStoreApplicationShortcutListProvider was deallocated", v3, 2u);
  }

  sub_10034F66C();
}

uint64_t sub_10035083C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003508A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10035090C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 4) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_storeControllerObservationToken;
  v8 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_preferredDefaultListIDObservationToken] = 0;
  v3[OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_isStarted] = 0;
  *(v3 + 5) = a1;
  *(v3 + 6) = a2;
  v9 = objc_allocWithZone(REMStore);
  v10 = a1;

  v11 = [v9 initWithDaemonController:a3];
  *&v3[OBJC_IVAR____TtC7remindd42RDDataStoreApplicationShortcutListProvider_store] = v11;
  *(v3 + 2) = &_swiftEmptyArrayStorage;
  return v3;
}

uint64_t sub_100350A04(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_10013B7E8;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EECC8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_100350C6C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100942CA8);
  v1 = sub_100006654(v0, qword_100942CA8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100350D34(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a2;
  v33 = a3;
  v4 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for REMRemindersListDataView.Diff();
  v32 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v39 = &v30 - v18;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v20 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters.configuration.getter();
  v38 = a1;
  v24 = v40;
  sub_100352264(a1);
  if (v24)
  {
    (*(v20 + 8))(v23, Configuration);
  }

  else
  {
    v30 = v15;
    v31 = v7;
    v40 = v12;
    v25 = v35;
    (*(v20 + 8))(v23, Configuration);
    v26 = [v36 fetchResultTokenToDiffAgainst];
    sub_100534D44(v26, v39);

    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v27 = v34;
    v28 = v25;
    (*(v34 + 16))(v31, v11, v25);
    v29 = v32;
    (*(v32 + 16))(v30, v39, v40);
    sub_100353368(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    sub_100353368(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v27 + 8))(v11, v28);
    (*(v29 + 8))(v39, v40);
  }
}

void sub_100351114(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a1;
  v5 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v163 = *(v5 - 8);
  v164 = v5;
  __chkstk_darwin(v5, v6);
  v162 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v9 = *(v8 - 8);
  v173 = v8;
  v174 = v9;
  __chkstk_darwin(v8, v10);
  v176 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v168 = *(v12 - 8);
  v169 = v12;
  __chkstk_darwin(v12, v13);
  v165 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v167 = &v160 - v18;
  v170 = *(v2 + 16);
  v19 = [v170 entityName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v23 = [swift_getObjCClassFromMetadata() cdEntityName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 == v20 && v26 == v22)
  {
    v22, v27, v28, v29, v30, v31, v32, v33;
    goto LABEL_6;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v26, v42, v43, v44, v45, v46, v47, v48;
  if (v41)
  {
    v26 = v22;
LABEL_6:
    v26, v34, v35, v36, v37, v38, v39, v40;
    v49 = sub_1001BE2C0(v175, v170);
    if (!v3)
    {
      v175 = 0;
      v161 = v2;
      if (!(v49 >> 62))
      {
        v50 = v49;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for REMCDBaseSection();
        v58 = v50;
        v59 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
LABEL_9:
        v60 = v50;
        goto LABEL_10;
      }

      v144 = v49;
      type metadata accessor for REMCDBaseSection();

      v60 = _bridgeCocoaArray<A>(_:)();
      v144, v145, v146, v147, v148, v149, v150, v151;
      v58 = v144;
      v59 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
LABEL_10:
      v58, v51, v52, v53, v54, v55, v56, v57;
      (*(v168 + 104))(v167, *v59, v169);
      if (v60 >> 62)
      {
        while (1)
        {
          v68 = _CocoaArrayWrapper.endIndex.getter();
          if (!v68)
          {
            break;
          }

LABEL_12:
          v160 = a2;
          v177 = &_swiftEmptyArrayStorage;
          v69 = sub_1002532DC(0, v68 & ~(v68 >> 63), 0);
          if (v68 < 0)
          {
            __break(1u);
LABEL_50:
            v152 = v69;
            type metadata accessor for REMCDBaseSection();

            v60 = _bridgeCocoaArray<A>(_:)();
            v152, v153, v154, v155, v156, v157, v158, v159;
            v58 = v152;
            v59 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:);
            goto LABEL_10;
          }

          v70 = 0;
          v71 = v177;
          v166 = v60 & 0xFFFFFFFFFFFFFF8;
          v171 = v174 + 32;
          v172 = v60 & 0xC000000000000001;
          while (1)
          {
            a2 = v68;
            v72 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            if (v172)
            {
              v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v74 = v175;
            }

            else
            {
              if (v70 >= *(v166 + 16))
              {
                goto LABEL_39;
              }

              v74 = v175;
              v73 = *(v60 + 8 * v70 + 32);
            }

            sub_100351A84();
            if (v74)
            {
              (*(v168 + 8))(v167, v169);

              v60, v118, v119, v120, v121, v122, v123, v124;
              return;
            }

            v175 = 0;

            v177 = v71;
            v76 = *v71->clientIdentity;
            v75 = *&v71->clientIdentity[8];
            if (v76 >= v75 >> 1)
            {
              sub_1002532DC((v75 > 1), v76 + 1, 1);
              v71 = v177;
            }

            *v71->clientIdentity = v76 + 1;
            (*(v174 + 32))(v71 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v76, v176, v173);
            ++v70;
            v84 = v72 == a2;
            v68 = a2;
            if (v84)
            {
              v60, v77, v78, v79, v80, v81, v82, v83;
              a2 = v160;
              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
        }
      }

      else
      {
        v68 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68)
        {
          goto LABEL_12;
        }
      }

      v60, v61, v62, v63, v64, v65, v66, v67;
      v71 = &_swiftEmptyArrayStorage;
LABEL_42:
      v178 = v71;
      sub_1000F5104(&qword_10093B448, &qword_10079D400);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_100791300;
      (*(v163 + 104))(v162, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v164);
      REMRemindersListDataView.SectionLite.init(type:reminders:)();
      sub_1002720B0(v133);
      v176 = REMObjectID.codable.getter();
      v134 = *(v161 + 24);
      v135 = [v134 name];
      if (v135)
      {
        v136 = a2;
        v137 = v135;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        a2 = v136;
      }

      v138 = [v134 color];
      if (v138)
      {
        v139 = v138;
        REMColor.codable.getter();
      }

      v141 = v167;
      v140 = v168;
      v142 = v169;
      (*(v168 + 16))(v165, v167, v169);
      REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
      (*(v140 + 8))(v141, v142);
      v143 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
      (*(*(v143 - 8) + 56))(a2, 0, 1, v143);
    }

    return;
  }

  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v85 = [swift_getObjCClassFromMetadata() cdEntityName];
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;

  if (v86 == v20 && v88 == v22)
  {
    v88, v89, v90, v91, v92, v93, v94, v95;
    v22, v96, v97, v98, v99, v100, v101, v102;
  }

  else
  {
    v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v88, v104, v105, v106, v107, v108, v109, v110;
    v22, v111, v112, v113, v114, v115, v116, v117;
    if ((v103 & 1) == 0)
    {
      v125 = v170;
      if (qword_100935F28 != -1)
      {
        swift_once();
      }

      v126 = type metadata accessor for Logger();
      sub_100006654(v126, qword_100942CA8);

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v129 = 138412290;
        *(v129 + 4) = v125;
        *v130 = v125;
        v131 = v125;
        _os_log_impl(&_mh_execute_header, v127, v128, "[AppIntentsSectionsInvocation] Unexpected list type to fetch sections: %@", v129, 0xCu);
        sub_1000050A4(v130, &unk_100938E70, &unk_100797230);
      }

      v132 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
      (*(*(v132 - 8) + 56))(a2, 1, 1, v132);
      return;
    }
  }

  v69 = sub_1001BE4D4(v175, v170);
  if (!v3)
  {
    v175 = 0;
    v161 = v2;
    if (v69 >> 62)
    {
      goto LABEL_50;
    }

    v50 = v69;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for REMCDBaseSection();
    v58 = v50;
    v59 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:);
    goto LABEL_9;
  }
}