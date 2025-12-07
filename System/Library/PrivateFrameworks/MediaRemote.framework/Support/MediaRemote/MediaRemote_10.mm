uint64_t sub_1001DC638()
{
  v15 = v0;
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529AB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v13 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10002C9C8(v4, v13, &v14);
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v10;
    *v6 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s]<%{public}s> Failed to start advertising: %@", v5, 0x20u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001DC904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity;
  v9 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity);
  if (v9)
  {
    v10 = *(*v9 + 104);

    v12 = v10(v11);
    v14 = v13;

    v15 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement;
    v16 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement);
    if (v16)
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v16;
      v18[5] = v12;
      v18[6] = v14;
      v18[7] = a2;
      swift_retain_n();
      sub_1001BF864(0, 0, v7, &unk_10044F1B0, v18);

      if (*(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession))
      {

        GroupSession.end()();
      }

      *(a1 + v8) = 0;

      *(a1 + v15) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001DCB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v10 = (&async function pointer to dispatch thunk of GroupActivityAdvertisement.stopAdvertisement() + async function pointer to dispatch thunk of GroupActivityAdvertisement.stopAdvertisement());
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_1001DCBC8;

  return v10();
}

uint64_t sub_1001DCBC8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001DCCFC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001DCCFC()
{
  v15 = v0;
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529AB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v13 = v0[3];
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10002C9C8(v4, v13, &v14);
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v10;
    *v6 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s]<%{public}s> Failed to stop advertising: %@", v5, 0x20u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001DCFA0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1001BC5A8(&qword_100521D78, &qword_10044F188);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = sub_1001BC5A8(&qword_100521D80, &unk_10044F190);
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v19 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession;
    if (*(v2 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession))
    {

      GroupSession.leave()();
    }

    type metadata accessor for SystemGroupSession();

    v21 = sub_1003A0EEC(v20);
    v22 = *(v2 + v19);
    *(v2 + v19) = v21;
    v23 = v21;

    GroupSession.$activeParticipants.getter();
    v35 = v17;
    v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_1001E0520();
    sub_10000462C(&qword_100521D88, &qword_100521D78, &qword_10044F188, &protocol conformance descriptor for Published<A>.Publisher);
    sub_100004810(&qword_100524C70, sub_1001E0520, &protocol conformance descriptor for OS_dispatch_queue);
    v25 = v32;
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v5, &unk_100524C50, &qword_10044F180);

    (*(v31 + 8))(v8, v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v23;
    sub_10000462C(&qword_100521D90, &qword_100521D80, &unk_10044F190, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v28 = v23;
    v29 = v34;
    Publisher<>.sink(receiveValue:)();

    (*(v33 + 8))(v11, v29);
    swift_beginAccess();
    sub_1001BC5A8(&qword_100521D98, qword_10045BF70);
    sub_10000462C(&unk_100529150, &qword_100521D98, qword_10045BF70, &protocol conformance descriptor for [A]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DD4F4(uint64_t a1, unint64_t *a2)
{
  v151 = type metadata accessor for Participant();
  v5 = *(v151 - 1);
  __chkstk_darwin(v151);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(&v2->isa + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (qword_100529AB0 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v16 = sub_100015AFC(v15, qword_100529AB8);
    v17 = v2;
    v18 = a2;

    v152 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v148 = v5;
    v149 = a1;
    v147 = v7;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v155[0] = v150;
      *v22 = 138412802;
      *(v22 + 4) = v17;
      *v23 = v17;
      *(v22 + 12) = 2082;
      v24 = v17;
      v25 = [v18 identifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_10002C9C8(v26, v28, v155);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      sub_100004810(&qword_100521D68, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
      v30 = Set.description.getter();
      v32 = sub_10002C9C8(v30, v31, v155);

      *(v22 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%@]<%{public}s> Participants changed: %s", v22, 0x20u);
      sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v33 = v17;
    v34 = v18;
    v5 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    v36 = os_log_type_enabled(v5, v35);
    v150 = v33;
    if (v36)
    {
      a1 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v155[0] = swift_slowAlloc();
      *a1 = 138412802;
      *(a1 + 4) = v33;
      *v37 = v33;
      *(a1 + 12) = 2082;
      v38 = v33;
      v39 = [v34 identifier];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_10002C9C8(v40, v42, v155);

      *(a1 + 14) = v43;
      *(a1 + 22) = 2080;
      v44 = v147;
      GroupSession.initiator.getter();
      sub_100004810(&qword_1005222C0, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
      v45 = v151;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (v148[1].isa)(v44, v45);
      v49 = sub_10002C9C8(v46, v48, v155);

      *(a1 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v5, v35, "[%@]<%{public}s> Initiator: %s", a1, 0x20u);
      sub_1000038A4(v37, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    result = GroupSession.isLocallyInitiated.getter();
    if ((result & 1) == 0)
    {
      return result;
    }

    v51 = v34;

    v53 = sub_1001DFFE0(v52, v51);
    v148 = v51;

    v54 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_connections;
    v7 = v150;
    swift_beginAccess();

    v56 = sub_1001BDDB0(v55);
    v2 = sub_1001DE6A0(v53);

    a2 = sub_100008280(v2);

    v57 = a2[2];
    v58 = v56[2];
    v140 = v56;
    v139 = a2;
    if (v57 > v58 >> 3)
    {

      p_isa = sub_1001C0730(a2, v56);
    }

    else
    {
      v154[0] = v56;

      v2 = v154;
      sub_1001C0604(a2);
      p_isa = v154[0];
    }

    v61 = 0;
    v62 = (p_isa + 7);
    v63 = 1 << *(p_isa + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & p_isa[7];
    v66 = ((v63 + 63) >> 6);
    v142 = "T@MRDSystemGroupSession,N,R";
    *&v59 = 138412802;
    v145 = v59;
    v146 = v66;
    v147 = v54;
    v143 = p_isa;
    v149 = (p_isa + 7);
    while (v65)
    {
LABEL_22:
      v68 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v69 = p_isa[6] + ((v61 << 10) | (16 * v68));
      v70 = *v69;
      v5 = *(v69 + 8);
      swift_beginAccess();

      v71 = sub_10000698C(v70, v5);
      v151 = v70;
      if (v72)
      {
        v73 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = *(v7 + v54);
        v153 = v75;
        *(v7 + v54) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1001DF16C();
          v75 = v153;
        }

        v144 = *(*(v75 + 56) + 8 * v73);
        sub_1001DEE44(v73, v75);
        *(v7 + v54) = v75;
        swift_endAccess();
        v76 = v7;
        a1 = v148;

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v154[0] = v141;
          *v79 = v145;
          *(v79 + 4) = v76;
          *v80 = v7;
          *(v79 + 12) = 2082;
          v81 = v76;
          v82 = [a1 identifier];
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;

          v85 = sub_10002C9C8(a1, v84, v154);
          v7 = v150;

          *(v79 + 14) = v85;
          *(v79 + 22) = 2080;
          v86 = sub_10002C9C8(v151, v5, v154);

          *(v79 + 24) = v86;
          _os_log_impl(&_mh_execute_header, v77, v78, "[%@]<%{public}s> Disconnecting removed participant: %s", v79, 0x20u);
          sub_1000038A4(v80, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        else
        {
        }

        v97 = objc_allocWithZone(NSError);
        v98 = String._bridgeToObjectiveC()();
        v99 = [v97 initWithMRError:104 description:v98];

        v54 = v147;
        if (v99)
        {
          a2 = _convertErrorToNSError(_:)();
        }

        else
        {
          a2 = 0;
        }

        p_isa = &v143->isa;
        v2 = v144;
        [v144 closeWithError:a2, v139];
      }

      else
      {
        swift_endAccess();
        v87 = v7;
        v88 = v148;

        v2 = Logger.logObject.getter();
        a1 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v2, a1))
        {
          a2 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v154[0] = v144;
          *a2 = v145;
          *(a2 + 4) = v87;
          *v89 = v7;
          *(a2 + 6) = 2082;
          v90 = v87;
          v91 = [v88 identifier];
          v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v94 = v93;

          v95 = sub_10002C9C8(v92, v94, v154);
          v7 = v150;

          *(a2 + 14) = v95;
          *(a2 + 11) = 2080;
          v96 = sub_10002C9C8(v151, v5, v154);

          a2[3] = v96;
          _os_log_impl(&_mh_execute_header, v2, a1, "[%@]<%{public}s> Removed participant: %s didn't have an active connection to remove", a2, 0x20u);
          sub_1000038A4(v89, &qword_100521870, &unk_10044EA70);
          p_isa = &v143->isa;

          swift_arrayDestroy();
        }

        else
        {
        }

        v54 = v147;
      }

      v62 = v149;
      v66 = v146;
    }

    while (1)
    {
      v67 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v67 >= v66)
      {
        break;
      }

      v65 = *(v62 + 8 * v67);
      ++v61;
      if (v65)
      {
        v61 = v67;
        goto LABEL_22;
      }
    }

    a2 = v140;
    if (v140[2] <= v139[2] >> 3)
    {
      v154[0] = v139;
      v2 = v154;
      sub_1001C0604(v140);

      v100 = v154[0];
    }

    else
    {
      v2 = sub_1001C0730(v140, v139);

      v100 = v2;
    }

    v101 = 0;
    v102 = v100 + 7;
    v103 = 1 << LOBYTE(v100[4].isa);
    v104 = -1;
    if (v103 < 64)
    {
      v104 = ~(-1 << v103);
    }

    isa = v104 & v100[7].isa;
    v106 = (v103 + 63) >> 6;
    v143 = v100 + 7;
    v144 = v100;
    v142 = v106;
    while (isa)
    {
      a1 = v101;
      v7 = v150;
LABEL_48:
      v107 = (v100[6].isa + ((a1 << 10) | (16 * __clz(__rbit64(isa)))));
      v108 = v107[1];
      v149 = *v107;
      swift_bridgeObjectRetain_n();
      v109 = v7;
      v110 = v148;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();

      v151 = &v110->isa;

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v141 = v114;
        v146 = swift_slowAlloc();
        v154[0] = v146;
        *v113 = v145;
        *(v113 + 4) = v109;
        *v114 = v7;
        *(v113 + 12) = 2082;
        v115 = v109;
        v116 = [v151 identifier];
        v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v118;

        v7 = v150;
        v120 = sub_10002C9C8(v117, v119, v154);

        *(v113 + 14) = v120;
        v121 = v149;
        *(v113 + 22) = 2080;
        *(v113 + 24) = sub_10002C9C8(v121, v108, v154);
        _os_log_impl(&_mh_execute_header, v111, v112, "[%@]<%{public}s> Creating connection for added participant: %s", v113, 0x20u);
        sub_1000038A4(v141, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      v122 = objc_allocWithZone(MRDSystemGroupSessionTransportConnection);
      v5 = v149;
      v123 = String._bridgeToObjectiveC()();
      a2 = [v122 initWithGroupSession:v151 participantIdentifier:v123];

      v124 = v147;
      swift_beginAccess();

      v125 = a2;
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v153 = *&v124[v7];
      *&v124[v7] = 0x8000000000000000;
      sub_1001DEFF4(v125, v5, v108, v126);

      *&v124[v7] = v153;
      v127 = swift_endAccess();
      v128 = (*((swift_isaMask & *v109) + 0x90))(v127);
      if (v128)
      {
        a2 = v128;
        [v128 systemGroupSessionRemoteControlService:v109 didAcceptConnection:v125];
        swift_unknownObjectRelease();
      }

      v146 = v125;
      isa &= isa - 1;
      v129 = v109;
      v130 = v151;

      v2 = Logger.logObject.getter();
      v131 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v2, v131))
      {
        a2 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v154[0] = v151;
        *a2 = v145;
        *(a2 + 4) = v129;
        v5->isa = v150;
        *(a2 + 6) = 2082;
        v132 = v129;
        v133 = [v130 identifier];
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v135;

        v137 = sub_10002C9C8(v134, v136, v154);

        *(a2 + 14) = v137;
        *(a2 + 11) = 2080;
        v138 = sub_10002C9C8(v149, v108, v154);

        a2[3] = v138;
        _os_log_impl(&_mh_execute_header, v2, v131, "[%@]<%{public}s> Added participant: %s", a2, 0x20u);
        sub_1000038A4(v5, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      else
      {
      }

      v101 = a1;
      v102 = v143;
      v100 = v144;
      v106 = v142;
    }

    v7 = v150;
    while (1)
    {
      a1 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (a1 >= v106)
      {
      }

      isa = v102[a1].isa;
      ++v101;
      if (isa)
      {
        goto LABEL_48;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }
}

void *sub_1001DE6A0(uint64_t a1)
{
  v48 = type metadata accessor for UUID();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Participant();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v37 = v1;
  v53 = _swiftEmptyArrayStorage;
  sub_1000089FC(0, v7, 0);
  v8 = v53;
  v9 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v42 = (v3 + 8);
  v43 = v5 + 16;
  v44 = v5;
  v40 = a1 + 56;
  v41 = v5 + 8;
  v38 = a1 + 64;
  v39 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v49 = v12;
    v50 = v16;
    v17 = v44;
    v18 = *(a1 + 48) + *(v44 + 72) * v11;
    v19 = *(v44 + 16);
    v52 = v8;
    v21 = v45;
    v20 = v46;
    v19(v45, v18, v46);
    v22 = v47;
    Participant.id.getter();
    v23 = UUID.uuidString.getter();
    v51 = v24;
    (*v42)(v22, v48);
    v25 = v21;
    v8 = v52;
    result = (*(v17 + 8))(v25, v20);
    v53 = v8;
    v27 = v8[2];
    v26 = v8[3];
    if (v27 >= v26 >> 1)
    {
      result = sub_1000089FC((v26 > 1), v27 + 1, 1);
      v8 = v53;
    }

    v8[2] = v27 + 1;
    v28 = &v8[2 * v27];
    v29 = v51;
    v28[4] = v23;
    v28[5] = v29;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v9 = v40;
    v30 = *(v40 + 8 * v15);
    if ((v30 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v50 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v31 = v30 & (-2 << (v11 & 0x3F));
    if (v31)
    {
      v13 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v14 = v39;
    }

    else
    {
      v32 = v15 << 6;
      v33 = v15 + 1;
      v14 = v39;
      v34 = (v38 + 8 * v15);
      while (v33 < (v13 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_10000A16C(v11, v50, 0);
          v13 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_10000A16C(v11, v50, 0);
    }

LABEL_4:
    v12 = v49 + 1;
    v11 = v13;
    if (v49 + 1 == v14)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id SystemGroupSessionRemoteControlService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemGroupSessionRemoteControlService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1001DEBA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100521D70, &unk_10044F160);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1001DEE44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001DEFF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1001DEBA0(v16, a4 & 1);
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1001DF16C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_1001DF16C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521D70, &unk_10044F160);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001DF2D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Participant();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1001BC5A8(&qword_100522990, &unk_100450100);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100004810(&qword_100521D68, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_1001DF600(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_1001DFBF4(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t sub_1001DF698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100521D70, &unk_10044F160);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000698C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1001DF79C@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession);
  *a1 = v2;
  return v2;
}

id sub_1001DF7D8(unint64_t a1)
{
  v12 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity] = 0;
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement] = 0;
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask] = 0;
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionCancellables] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_connections;
  *&v1[v8] = sub_1001DF698(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12 = sub_1001E0520();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100004810(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = type metadata accessor for SystemGroupSessionRemoteControlService();
  v13.receiver = v1;
  v13.super_class = v9;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_1001DFAEC()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask))
  {

    Task.cancel()();
  }

  v2 = *(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession);
  *(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession) = 0;

  v3 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionCancellables;
  swift_beginAccess();
  *(v1 + v3) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001DFBF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v36 = a2;
  v37 = a1;
  v52 = type metadata accessor for UUID();
  v5 = *(v52 - 8);
  v6 = __chkstk_darwin(v52);
  v51 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v35 - v8;
  v49 = type metadata accessor for Participant();
  v9 = __chkstk_darwin(v49);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v46 = &v35 - v13;
  v38 = 0;
  v14 = 0;
  v54 = a3;
  v15 = *(a3 + 56);
  v40 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v39 = (v16 + 63) >> 6;
  v44 = v12 + 16;
  v45 = OBJC_IVAR___MRDSystemGroupSession_session;
  v48 = v12;
  v42 = (v5 + 8);
  v43 = v12 + 8;
  v19 = v46;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v57 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = *(v54 + 48);
    v26 = v48;
    v25 = v49;
    v27 = *(v48 + 72);
    v41 = v23;
    (*(v48 + 16))(v19, v24 + v27 * v23, v49);
    v28 = v50;
    Participant.id.getter();
    v29 = v47;
    GroupSession.localParticipant.getter();
    v30 = v51;
    Participant.id.getter();
    v56 = *(v26 + 8);
    v56(v29, v25);
    sub_100004810(&unk_1005286D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = v52;
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *v42;
    (*v42)(v30, v31);
    v32(v28, v31);
    result = (v56)(v19, v25);
    v18 = v57;
    if ((v55 & 1) == 0)
    {
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_15:
        v34 = v54;

        return sub_1001DF2D8(v37, v36, v38, v34);
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v39)
    {
      goto LABEL_15;
    }

    v22 = *(v40 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v57 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DFFE0(char *a1, void *a2)
{
  v3 = v2;
  v54 = type metadata accessor for UUID();
  v6 = *(v54 - 8);
  v7 = __chkstk_darwin(v54);
  v53 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v37 - v9;
  v51 = type metadata accessor for Participant();
  v10 = *(v51 - 8);
  v11 = __chkstk_darwin(v51);
  v50 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v37 - v13;
  v14 = a1[32];
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v16;
  v18 = a2;
  v56 = v18;
  if (v15 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v38 = v16;
    v39 = v3;
    v37 = &v37;
    __chkstk_darwin(v18);
    v40 = &v37 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v17);
    v41 = 0;
    v16 = 0;
    v55 = a1;
    v20 = *(a1 + 7);
    a1 += 56;
    v19 = v20;
    v43 = a1;
    v21 = 1 << *(a1 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v42 = (v21 + 63) >> 6;
    v47 = v10 + 16;
    v48 = OBJC_IVAR___MRDSystemGroupSession_session;
    v57 = v10;
    v45 = (v6 + 8);
    v46 = v10 + 8;
    while (v23)
    {
      v60 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v16 << 6);
      v10 = v57;
LABEL_12:
      v27 = *(v55 + 6);
      v28 = *(v10 + 72);
      v44 = v24;
      a1 = v49;
      v3 = v51;
      (*(v10 + 16))(v49, v27 + v28 * v24, v51);
      v29 = v52;
      Participant.id.getter();
      v30 = v50;
      GroupSession.localParticipant.getter();
      v6 = v53;
      Participant.id.getter();
      v59 = *(v10 + 8);
      v59(v30, v3);
      sub_100004810(&unk_1005286D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = v54;
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *v45;
      (*v45)(v6, v17);
      v31(v29, v17);
      v59(a1, v3);
      v23 = v60;
      if ((v58 & 1) == 0)
      {
        *&v40[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_16:
          v33 = sub_1001DF2D8(v40, v38, v41, v55);

          return v33;
        }
      }
    }

    v25 = v16;
    v10 = v57;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v42)
      {
        goto LABEL_16;
      }

      v26 = *(v43 + 8 * v16);
      ++v25;
      if (v26)
      {
        v60 = (v26 - 1) & v26;
        v24 = __clz(__rbit64(v26)) | (v16 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v56;
  v33 = sub_1001DF600(v35, v16, a1, v36);

  return v33;
}

unint64_t sub_1001E0520()
{
  result = qword_100524C60;
  if (!qword_100524C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100524C60);
  }

  return result;
}

void sub_1001E056C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001DD4F4(v3, v2);
  }
}

uint64_t sub_1001E05D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F34;

  return sub_1001DCB1C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1001E0684()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_1001DBE18(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1001E0740()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_1001DA51C(v4, v5, v6, v2, v3);
}

uint64_t sub_1001E07D8(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t variable initialization expression of MRDNearbyGroup.autoApproveKey()
{
  v0 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v0 - 8);
  static SymmetricKeySize.bits256.getter();
  return SymmetricKey.init(size:)();
}

uint64_t sub_1001E098C()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret + 8))
  {
    countAndFlagsBits = *v1;
  }

  else
  {
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v3 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v3._countAndFlagsBits;
    sub_1001C4034(v5, v6);
    *v1 = v3;
  }

  return countAndFlagsBits;
}

uint64_t sub_1001E0AB8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1001E0AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_1000326D8(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1001D588C(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1001E209C(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1001E2018(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_100026A44(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t (*sub_1001E0BA0(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1001E098C();
  a1[1] = v3;
  return sub_1001E0BE8;
}

uint64_t sub_1001E0BE8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t sub_1001E0C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001E0CB4;

  return sub_10003DEEC();
}

uint64_t sub_1001E0CB4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id sub_1001E0DB4(uint64_t a1)
{
  v3 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v3 - 8);
  v4 = objc_allocWithZone(v1);
  static SymmetricKeySize.bits256.getter();
  SymmetricKey.init(size:)();
  v5 = &v4[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup] = a1;
  v7.receiver = v4;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1001E0E88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t MRDNearbyGroup.description.getter()
{
  swift_getObjectType();
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = (*((swift_isaMask & *v0) + 0x68))();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

id sub_1001E13B0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  a4();
  UUID.uuidString.getter();

  (*(v7 + 8))(v9, v6);
  v11 = String._bridgeToObjectiveC()();

  return v11;
}

uint64_t sub_1001E14F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v5);
  v8 = UUID.uuidString.getter();
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1001E15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1001E2A8C;

  return sub_1001E23A0(a1, a2, a3, a4);
}

id sub_1001E16B8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1001E18A4(void *a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v5 = a3;
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a1;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_1001CDEF0;

  return sub_1001E23A0(v10, v7, v9, v5);
}

uint64_t MRDNearbyInvitation.description.getter()
{
  swift_getObjectType();
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D6469203ALL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = (*((swift_isaMask & *v0) + 0x60))();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

uint64_t sub_1001E1B88()
{
  v1 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1001CB290(0, 0, v3, &unk_10044F240, v5);
}

uint64_t sub_1001E1CAC()
{
  v3 = (&async function pointer to dispatch thunk of NearbyInvitation.markUsed() + async function pointer to dispatch thunk of NearbyInvitation.markUsed());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1001E1D5C;

  return v3();
}

uint64_t sub_1001E1D5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1001E1FD0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001E2018(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001E209C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001E2118(uint64_t a1)
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

    return _swift_task_switch(sub_1001E226C, 0, 0);
  }
}

uint64_t sub_1001E226C()
{
  receiver = v0[3].receiver;
  v2 = type metadata accessor for MRDNearbyGroup(0);
  v3 = objc_allocWithZone(v2);
  static SymmetricKeySize.bits256.getter();
  SymmetricKey.init(size:)();
  v4 = &v3[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup] = receiver;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v5 = objc_msgSendSuper2(v0 + 1, "init");

  super_class = v0->super_class;

  return super_class(v5);
}

uint64_t type metadata accessor for MRDNearbyGroup(uint64_t a1)
{
  result = qword_100529AE0;
  if (!qword_100529AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E23A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  return _swift_task_switch(sub_1001E23C8, 0, 0);
}

uint64_t sub_1001E23C8()
{
  v1 = *(v0 + 72);
  v2 = sub_10036C350(*(v0 + 120));
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);

  v3 = sub_1001D2EFC(v2);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  *(v0 + 40) = type metadata accessor for NearbyGroup();
  *(v0 + 48) = &protocol witness table for NearbyGroup;
  *(v0 + 16) = v6;

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1001E24F8;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  return NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)(v9, v8, 1, v3, v5, v0 + 16);
}

uint64_t sub_1001E24F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1001E26B4;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_1001E2620;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E2620()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for MRDNearbyInvitation();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation] = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v4 = objc_msgSendSuper2((v0 + 56), "init");
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1001E26F0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F30;

  return sub_1001E1C8C(v3, v4, v5, v2);
}

uint64_t sub_1001E278C(uint64_t a1)
{
  result = type metadata accessor for SymmetricKey();
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

uint64_t sub_1001E2834()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001E2874()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F34;

  return sub_1001E1C8C(v3, v4, v5, v2);
}

uint64_t sub_1001E2908()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_1001E18A4(v2, v3, v5, v4);
}

uint64_t sub_1001E29D0(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for MRGroupSessionRouteType()
{
  if (!qword_100521E60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100521E60);
    }
  }
}

uint64_t sub_1001E2A90()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529AF8);
  sub_100015AFC(v0, qword_100529AF8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001E2AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001E2B60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E2BAC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_1001E2C00(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_1001E2C70(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1001E2D14;
}

void sub_1001E2D14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1001E2D7C()
{
  swift_beginAccess();
  sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_1001E2DF0(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1001E2F28(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC12mediaremoted32GroupSessionRapportUserDiscovery__availableDevices;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_1001E3098;
}

void sub_1001E3098(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void sub_1001E3300()
{
  v1 = *(v0 + 16);
  if (*v1)
  {
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100015AFC(v2, qword_100529AF8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v16);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Attempted to start while already started", v5, 0xCu);
      sub_100026A44(v6);
    }
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = [objc_allocWithZone(RPCompanionLinkClient) init];
    [v8 setControlFlags:2052];
    v9 = swift_allocObject();
    swift_weakInit();
    v20 = sub_1001E40B0;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_1001E3C00;
    v19 = &unk_1004C28A8;
    v10 = _Block_copy(&v16);

    [v8 setDeviceFoundHandler:v10];
    _Block_release(v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v20 = sub_1001E40B8;
    v21 = v11;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_1001E3C00;
    v19 = &unk_1004C28D0;
    v12 = _Block_copy(&v16);

    [v8 setDeviceLostHandler:v12];
    _Block_release(v12);
    v13 = *v1;
    *v1 = v8;
    v14 = v8;

    v15 = *(v7 + 16);
    *(v7 + 16) = v8;
  }
}

void sub_1001E35FC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100015AFC(v1, qword_100529AF8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v4 = 136315394;
      *(v4 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v13);
      *(v4 + 12) = 2112;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v7;
      *v5 = v7;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to activate client: %@", v4, 0x16u);
      sub_1001E4048(v5);

      sub_100026A44(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100015AFC(v8, qword_100529AF8);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v13);
      _os_log_impl(&_mh_execute_header, oslog, v9, "[%s] Activated RP client", v10, 0xCu);
      sub_100026A44(v11);
    }

    else
    {
    }
  }
}

void sub_1001E3974()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }

  else
  {
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_100529AF8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Attempted to stop with no active client", v6, 0xCu);
      sub_100026A44(v7);
    }
  }
}

uint64_t sub_1001E3AD8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = [a1 idsDeviceIdentifier];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v6);

      sub_100013378(sub_1001E4FD8);
    }
  }

  return result;
}

void sub_1001E3C00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1001E3C68(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = [a1 idsDeviceIdentifier];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v6);

      sub_100013378(sub_1001E40C0);
    }
  }

  return result;
}

uint64_t sub_1001E3D84()
{

  v1 = OBJC_IVAR____TtC12mediaremoted32GroupSessionRapportUserDiscovery__availableDevices;
  v2 = sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1001E3E44()
{
  v0 = swift_allocObject();
  v0[2] = 0;
  type metadata accessor for Lock();
  v0[3] = sub_10036C394();
  v0[4] = &_swiftEmptyDictionarySingleton;
  sub_1001BC5A8(&qword_100521E68, &qword_10044F380);
  Published.init(initialValue:)();
  return v0;
}

uint64_t type metadata accessor for GroupSessionRapportUserDiscovery(uint64_t a1)
{
  result = qword_100529B28;
  if (!qword_100529B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E3F2C(uint64_t a1)
{
  sub_1001E3FE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001E3FE4(uint64_t a1)
{
  if (!qword_100521EA0)
  {
    sub_1001C2EC8(&qword_100521E68, &qword_10044F380);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100521EA0);
    }
  }
}

uint64_t sub_1001E4048(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001E40C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = sub_10000698C(v2, v3);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v1[4];
    v12 = v8;
    v1[4] = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001C13CC();
      v8 = v12;
    }

    v9 = *(*(v8 + 56) + 8 * v6);
    sub_1001DEE44(v6, v8);
    v1[4] = v8;
    swift_endAccess();
    v10 = (*(*v1 + 176))(v11);

    v10(v11, 0);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1001E41F4(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1001E4F8C();
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

    v19 = sub_1001E440C(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1001BFEF0(v20 + 1);
    }

    v18 = v8;
    sub_1001E45EC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1001E4F8C();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1001E4670(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_1001E440C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1001E4F8C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1001BFEF0(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_1001E45EC(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1001E4670(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001BFEF0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001E47D0();
      goto LABEL_12;
    }

    sub_1001E4920(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1001E4F8C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1001E47D0()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_1001E4920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

void sub_1001E4B34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1001C1538(v16, a4 & 1);
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1001C13CC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1001E4CAC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1001E4E34(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1001E4F8C();
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001E47D0();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1001D4EC4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1001E4E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1001E440C(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_1001E4F8C();
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_1001D4EC4(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001E4F8C()
{
  result = qword_100521680;
  if (!qword_100521680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100521680);
  }

  return result;
}

id sub_1001E4FD8()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  result = [v2 model];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v16 = v7;
    v17 = v9;
    v18 = 0x656E6F685069;
    v19 = 0xE600000000000000;
    sub_1001D6868();
    if (StringProtocol.contains<A>(_:)())
    {
    }

    else
    {
      v16 = v7;
      v17 = v9;
      v18 = 1684099177;
      v19 = 0xE400000000000000;
      v10 = StringProtocol.contains<A>(_:)();

      if ((v10 & 1) == 0)
      {
        return result;
      }
    }

    swift_beginAccess();
    if (!*(v1[4] + 16) || (, sub_10000698C(v4, v3), v12 = v11, result = , (v12 & 1) == 0))
    {
      swift_beginAccess();

      v13 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v1[4];
      v1[4] = 0x8000000000000000;
      sub_1001E4B34(v13, v4, v3, isUniquelyReferenced_nonNull_native);

      v1[4] = v20;
      swift_endAccess();
      v15 = (*(*v1 + 176))(&v16);
      sub_1001E41F4(&v20, v13);

      return v15(&v16, 0);
    }
  }

  return result;
}

uint64_t sub_1001E5214()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529B40);
  sub_100015AFC(v0, qword_100529B40);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001E5270(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001C3FE0(result, a2);
  }

  return result;
}

void sub_1001E5284()
{
  v0 = [objc_allocWithZone(CNContactStore) init];
  if (qword_100529B60 != -1)
  {
    swift_once();
  }

  sub_1001BC5A8(&qword_100522018, &unk_10044F520);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch:isa error:&v12];

  v3 = v12;
  if (v2)
  {
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100529B38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_100529B40);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, &v12);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Failed to get Me contact with error: %{public}@", v8, 0x16u);
      sub_1001E4048(v9);

      sub_100026A44(v10);
    }

    else
    {
    }

    v2 = 0;
  }

  qword_100538430 = v2;
}

NSString *sub_1001E551C()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F440;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(v0 + 40) = CNContactEmailAddressesKey;
  *(v0 + 48) = CNContactPhoneNumbersKey;
  *(v0 + 56) = CNContactImageDataKey;
  *(v0 + 64) = CNContactThumbnailImageDataKey;
  qword_100538438 = v0;
  v1 = CNContactEmailAddressesKey;
  v2 = CNContactPhoneNumbersKey;
  v3 = CNContactImageDataKey;

  return CNContactThumbnailImageDataKey;
}

uint64_t sub_1001E5604(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1001E56B0(uint64_t a1, unint64_t a2)
{
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  type metadata accessor for NearbyAdvertisement();
  *(inited + 32) = static NearbyAdvertisement.meContactID.getter();
  *(inited + 40) = v5;
  v26[0] = a1;
  v26[1] = a2;
  v25 = v26;
  v6 = sub_1001E5604(sub_10001BDAC, v24, inited);
  swift_setDeallocating();
  sub_1001E6204(inited + 32);
  if (v6)
  {
    v7 = [objc_opt_self() sharedCenter];
    v8 = [v7 localActiveIdentity];

    if (v8)
    {
      v9 = [v8 displayName];

      if (v9)
      {

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v10;
      }
    }

    if (qword_100529B58 != -1)
    {
      swift_once();
    }

    if (!qword_100538430)
    {

      return 0;
    }

    v10 = qword_100538430;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10044EC70;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [v11 predicateForContactsWithIdentifiers:isa];

    v10 = sub_1001E5C60(v14);
    if (!v10)
    {

      return v10;
    }
  }

  v15 = v10;
  v10 = sub_1001E5B5C(v15);
  if (qword_100529B38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100529B40);

  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, v26);
    *(v20 + 12) = 2080;
    v22 = sub_10002C9C8(a1, a2, v26);

    *(v20 + 14) = v22;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    *v21 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Resolved %s to %@", v20, 0x20u);
    sub_1001E4048(v21);

    swift_arrayDestroy();
  }

  else
  {
  }

  return v10;
}

void sub_1001E5B00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1001E5B5C(void *a1)
{
  v2 = [objc_opt_self() stringFromContact:a1 style:1000];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 imageData];
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100045968(0, 0xF000000000000000);
  }

  else
  {

    v7 = 0;
    v9 = 0xF000000000000000;
  }

  sub_1001E5270(v7, v9);

  sub_100045968(v7, v9);
  return v4;
}

void *sub_1001E5C60(void *a1)
{
  v2 = [objc_allocWithZone(CNContactStore) init];
  if (qword_100529B60 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(CNContactFetchRequest);
  sub_1001BC5A8(&qword_100522018, &unk_10044F520);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithKeysToFetch:isa];

  [v5 setPredicate:a1];
  v34 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = &v34;
  v7 = swift_allocObject();
  v7[2] = sub_1001E6368;
  v7[3] = v6;
  aBlock[4] = sub_1001E63B4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E5B00;
  aBlock[3] = &unk_1004C29C8;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v9 = [v2 enumerateContactsWithFetchRequest:v5 error:aBlock usingBlock:v8];
  _Block_release(v8);
  v10 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100529B38 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_100529B40);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v13, v14))
  {

    v19 = v34;
    if (v34)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  aBlock[0] = v17;
  *v15 = 136315394;
  *(v15 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, aBlock);
  *(v15 + 12) = 2114;
  swift_errorRetain();
  v18 = _swift_stdlib_bridgeErrorToNSError();
  *(v15 + 14) = v18;
  *v16 = v18;
  _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Failed to query contact store with error: %{public}@", v15, 0x16u);
  sub_1001E4048(v16);

  sub_100026A44(v17);

LABEL_8:
  v19 = v34;
  if (v34)
  {
LABEL_9:
    v20 = v19;
LABEL_16:

    goto LABEL_17;
  }

LABEL_11:
  if (qword_100529B38 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100015AFC(v21, qword_100529B40);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v23, v24))
  {

    goto LABEL_16;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v32 = v2;
  v27 = a1;
  v28 = swift_slowAlloc();
  aBlock[0] = v28;
  *v25 = 136315394;
  *(v25 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, aBlock);
  *(v25 + 12) = 2114;
  *(v25 + 14) = v22;
  *v26 = v27;
  v29 = v22;
  _os_log_impl(&_mh_execute_header, v23, v24, "[%s] No contact for predicate: %{public}@", v25, 0x16u);
  sub_1001E4048(v26);

  sub_100026A44(v28);

LABEL_17:
  v30 = v34;

  return v19;
}

uint64_t sub_1001E6258(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E6274(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001E629C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001E62A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001E6304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1001E6368(void *a1, _BYTE *a2)
{
  v3 = *(v2 + 16);
  *a2 = 1;
  v5 = *v3;
  *v3 = a1;
  v4 = a1;
}

uint64_t sub_1001E641C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  sub_1001C4098(v5, a2);
  sub_100015AFC(v5, a2);
  v6 = *a3();
  return Logger.init(_:)();
}

Swift::Int sub_1001E6484(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001E64E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100224B88();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1001E6534@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10021C3CC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1001E6568(uint64_t a1)
{
  v2 = sub_100224B88();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1001E65A4(uint64_t a1)
{
  v2 = sub_100224B88();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1001E65FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100224B88();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

Swift::Int sub_1001E666C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001E66E0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1001E6724@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10021C3DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1001E675C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent(0);
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1001E67BC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent(0);
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1001E681C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent(0);
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 48);
    *(v3 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1001E687C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent(0);
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 56);
    *(v3 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1001E68DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001E6934()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F440;
  *(v0 + 32) = sub_1001E6758();
  *(v0 + 40) = sub_1001E675C();
  *(v0 + 48) = sub_1001E67BC();
  *(v0 + 56) = sub_1001E681C();
  *(v0 + 64) = sub_1001E687C();
  return v0;
}

id sub_1001E69BC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent(0);
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1001E6A1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001E6A54()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044EBC0;
  *(v0 + 32) = sub_1001E69BC();
  return v0;
}

uint64_t sub_1001E6ABC()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
  if (*(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings))
  {
    v2 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader);
    type metadata accessor for JoinTimingEvents();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0;
    *(v2 + 64) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001E6B44()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings;
  if (*(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings))
  {
    v2 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader);
    type metadata accessor for SessionTimingEvents();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001E6BC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v8);
  v12 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession__state] != a1)
  {
    v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v11;
    v37 = result;
    v38 = v5;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v36 = v7;
    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_100529B78);
    v14 = v2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = v4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v31 = v19;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v18 = 138544130;
      *(v18 + 4) = v14;
      *v19 = v14;
      *(v18 + 12) = 2082;
      v20 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v21 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v22 = v14;
      *(v18 + 14) = sub_10002C9C8(v20, v21, aBlock);
      *(v18 + 22) = 2048;
      *(v18 + 24) = a1;
      *(v18 + 32) = 2048;
      v23 = *&v2[v12];

      *(v18 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}@]<%{public}s> State changed: %ld -> %ld.", v18, 0x2Au);
      sub_1000038A4(v31, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v32);

      v4 = v33;
    }

    else
    {
    }

    v24 = *&v2[v12];
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    *(v25 + 24) = v24;
    aBlock[4] = sub_100223114;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3760;
    v26 = _Block_copy(aBlock);
    v27 = v14;
    v28 = v34;
    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v29 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v38 + 8))(v29, v4);
    (*(v35 + 8))(v28, v37);
  }

  return result;
}

uint64_t MRDFastSyncGroupSession.state.getter()
{
  v10 = 0;
  v11 = 1;
  v1 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10021C3EC;
  *(v3 + 24) = v2;
  v9[4] = sub_10021C408;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001E7220;
  v9[3] = &unk_1004C2A40;
  v4 = _Block_copy(v9);
  v5 = v0;

  dispatch_async_and_wait(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if ((v11 & 1) == 0)
  {
    v8 = v10;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t MRDFastSyncGroupSession.localParticipant.getter()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10021C430;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1002253D8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E7220;
  aBlock[3] = &unk_1004C2AB8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_async_and_wait(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void *MRDFastSyncGroupSession.leaderParticipant.getter()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MRDFastSyncGroupSession.leaderParticipant.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1001E75E8(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001E7648(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDFastSyncGroupSession_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

uint64_t MRDFastSyncGroupSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);

  return v1;
}

char *static MRDFastSyncGroupSession.createSession(nearbyGroup:asUser:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v5 = *((swift_isaMask & *a1) + 0x68);

  v7 = v5(v6);
  v9 = v8;
  type metadata accessor for RemoteControlActivity();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  swift_allocObject();
  v11 = NearbyGroupSessionProvider.init(nearbyGroup:activity:)();
  objc_allocWithZone(type metadata accessor for MRDFastSyncGroupSession());
  v12 = a2;
  swift_unknownObjectRetain();
  return sub_1001E7E74(1, v12, v11, a3);
}

uint64_t sub_1001E789C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

char *static MRDFastSyncGroupSession.joinSession(nearbyGroup:asUser:hostSigningKey:delegate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *((swift_isaMask & *a1) + 0x68);

  v9 = v7(v8);
  v11 = v10;
  type metadata accessor for RemoteControlActivity();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  swift_allocObject();
  v13 = NearbyGroupSessionProvider.init(nearbyGroup:activity:)();
  objc_allocWithZone(type metadata accessor for MRDFastSyncGroupSession());
  v14 = a2;
  swift_unknownObjectRetain();
  return sub_1001E7E74(0, v14, v13, a5);
}

uint64_t static MRDFastSyncGroupSession.stateToString(_:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C616974696E69;
    }

    if (a1 == 1)
    {
      return 0x7472617473;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696E696F6ALL;
      case 3:
        return 0x64656E696F6ALL;
      case 4:
        return 0x6164696C61766E69;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

char *sub_1001E7E74(int a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v144 = a4;
  v142 = a2;
  v109 = a1;
  v7 = sub_1001BC5A8(&qword_100522A88, &qword_100450218);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - v9;
  v105 = type metadata accessor for UUID();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v108);
  v107 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v106 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger) = 0;
  v111 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables) = &_swiftEmptySetSingleton;
  v112 = OBJC_IVAR___MRDFastSyncGroupSession_cancellables;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_cancellables) = &_swiftEmptySetSingleton;
  v113 = OBJC_IVAR___MRDFastSyncGroupSession_groupSession;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession) = 0;
  v114 = OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger) = 0;
  v119 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings) = 0;
  v121 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings) = 0;
  v135 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant) = 0;
  v141 = OBJC_IVAR___MRDFastSyncGroupSession_delegate;
  swift_unknownObjectWeakInit();
  v19 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier);
  *v19 = 0;
  v19[1] = 0;
  v138 = v19;
  v20 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipantIdentifier);
  *v20 = 0;
  v20[1] = 0;
  v139 = v20;
  v21 = v4 + OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier;
  *v21 = 0;
  v21[1] = 0;
  v118 = v21;
  v22 = v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier;
  *v22 = 0;
  v22[1] = 0;
  v117 = v22;
  v23 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
  *v23 = 0;
  v23[1] = 0;
  v143 = v23;
  v24 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle);
  *v24 = 0;
  v24[1] = 0;
  v137 = v24;
  v115 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap) = &_swiftEmptyDictionarySingleton;
  v116 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap) = &_swiftEmptyDictionarySingleton;
  v120 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_identities) = &_swiftEmptyDictionarySingleton;
  v122 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_guests) = &_swiftEmptySetSingleton;
  v123 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants) = _swiftEmptyArrayStorage;
  v124 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager) = 0;
  v136 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers) = 0;
  v125 = OBJC_IVAR___MRDFastSyncGroupSession_presenceTask;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_presenceTask) = 0;
  v126 = OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask) = 0;
  v127 = OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask) = 0;
  v130 = OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer) = 0;
  v132 = OBJC_IVAR___MRDFastSyncGroupSession_expectedRealtimeParticipants;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_expectedRealtimeParticipants) = &_swiftEmptySetSingleton;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode) = 0;
  v25 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  *v25 = 0;
  v25[1] = 0;
  v129 = v25;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_hasEncounteredLowPowerError) = 0;
  v128 = OBJC_IVAR___MRDFastSyncGroupSession_removedParticipantIdentityIdentifiers;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_removedParticipantIdentityIdentifiers) = &_swiftEmptySetSingleton;
  v131 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap) = &_swiftEmptyDictionarySingleton;
  v133 = OBJC_IVAR___MRDFastSyncGroupSession_timedOutParticipantHandles;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_timedOutParticipantHandles) = &_swiftEmptySetSingleton;
  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();
  v134 = NearbyGroup.localMemberHandle.getter();
  v27 = v26;

  v140 = v27;
  if (!v27)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100015AFC(v57, qword_100529B78);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136446210;
      v62 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
      v64 = sub_10002C9C8(v62, v63, aBlock);

      *(v60 + 4) = v64;
      v65 = "[MRDFastSyncGroupSession]<%{public}s> Error getting local handle from nearby group.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v58, v59, v65, v60, 0xCu);
      sub_100026A44(v61);

LABEL_16:
      swift_unknownObjectRelease();

      sub_1001DFBCC(v4 + v141);

      sub_1001C7C2C(*v129, v129[1]);

      type metadata accessor for MRDFastSyncGroupSession();
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v28 = [objc_opt_self() mr_activeGroupSessionAccount];
  if (!v28)
  {

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100015AFC(v66, qword_100529B78);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136446210;
      v67 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
      v69 = sub_10002C9C8(v67, v68, aBlock);

      *(v60 + 4) = v69;
      v65 = "[MRDFastSyncGroupSession]<%{public}s> No local IDS account.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v126 = v10;
  v127 = v8;
  v128 = v7;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_provider) = a3;

  v29 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
  v30 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  *v30 = v29;
  v30[1] = v31;
  v32 = v142;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_localIdentity) = v142;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession__state) = 0;
  v141 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v130 = "exitLowPowerMode(completion:)";
  LODWORD(v132) = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v131 = *(v16 + 104);
  v102 = v15;
  v131(v18);
  v133 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v33 = sub_100004858(&qword_100522A90, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v142 = a3;
  v129 = v33;
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (v131)(v18, v132, v102);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = v109;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) = v109 & 1;
  v35 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
  v37 = v36;
  objc_allocWithZone(type metadata accessor for PresenceDataSource(0));
  v38 = v140;

  v39 = v134;
  v40 = &unk_100522000;
  *&v5[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource] = sub_100215510(v35, v37, v134, v38);
  v41 = v143;
  *v143 = v39;
  v41[1] = v38;
  swift_bridgeObjectRetain_n();

  v5[OBJC_IVAR___MRDFastSyncGroupSession_shouldHideLeader] = 0;
  if ((v34 & 1) == 0)
  {
LABEL_17:

    v71 = type metadata accessor for MRDFastSyncGroupSession();
    v147.receiver = v5;
    v147.super_class = v71;
    v72 = objc_msgSendSuper2(&v147, "init");
    type metadata accessor for GroupSessionRemoteControlConnectionManager();
    v143 = OBJC_IVAR___MRDFastSyncGroupSession_executionQueue;
    v73 = *&v72[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v74 = v72;

    v75 = v74;
    *&v75[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager] = sub_100371C9C(v39, v38, v34 & 1, v75, &off_1004C31E8, v73);

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100015AFC(v76, qword_100529B78);

    v70 = v75;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v79 = 138543874;
      *(v79 + 4) = v70;
      *v80 = v70;
      *(v79 + 12) = 2082;
      v81 = *&v70[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v82 = *&v70[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v83 = v70;

      v84 = sub_10002C9C8(v81, v82, aBlock);
      v85 = v140;

      *(v79 + 14) = v84;
      *(v79 + 22) = 2082;
      *(v79 + 24) = sub_10002C9C8(v134, v85, aBlock);
      _os_log_impl(&_mh_execute_header, v77, v78, "[%{public}@]<%{public}s> Created with local handle: %{public}s", v79, 0x20u);
      sub_1000038A4(v80, &qword_100521870, &unk_10044EA70);
      v40 = &unk_100522000;

      swift_arrayDestroy();
    }

    v86 = v126;
    v87 = *&v70[v40[51]];
    swift_beginAccess();
    v88 = v87;
    sub_1001BC5A8(&qword_1005228D0, &qword_100450058);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000462C(&qword_100522AA8, &qword_100522A88, &qword_100450218, &protocol conformance descriptor for Published<A>.Publisher);
    v89 = v128;
    Publisher<>.sink(receiveValue:)();

    (*(v127 + 8))(v86, v89);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v90 = [objc_opt_self() mr_sharedGroupSessionService];
    v91 = *(v143 + v72);
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = objc_allocWithZone(MRDGroupSessionPushMessenger);
    v95 = v91;

    v96 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100225174;
    aBlock[5] = v92;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100217EF0;
    aBlock[3] = &unk_1004C46B0;
    v97 = _Block_copy(aBlock);
    v145[4] = sub_1002251F0;
    v145[5] = v93;
    v145[0] = _NSConcreteStackBlock;
    v145[1] = 1107296256;
    v145[2] = sub_100217F9C;
    v145[3] = &unk_1004C46D8;
    v98 = _Block_copy(v145);
    v99 = [v94 initWithService:v90 handle:v96 queue:v95 messageHandler:v97 errorHandler:v98];

    swift_unknownObjectRelease();

    _Block_release(v97);
    _Block_release(v98);

    v100 = *&v70[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    *&v70[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger] = v99;

    return v70;
  }

  v42 = v137;
  *v137 = v39;
  v42[1] = v38;

  v43 = v103;
  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  (*(v104 + 8))(v43, v105);
  v47 = v139;
  *v139 = v44;
  v47[1] = v46;

  v48 = v138;
  *v138 = v44;
  v48[1] = v46;

  if (v47[1])
  {
    v50 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
    v51 = v133;

    v52 = String._bridgeToObjectiveC()();

    v53 = [v50 initWithIdentifier:v52 identity:v51 connected:1 guest:0 hidden:0];

    v54 = v135;
    swift_beginAccess();
    v55 = *&v5[v54];
    *&v5[v54] = v53;

    v56 = v136;
    swift_beginAccess();
    *&v5[v56] = &_swiftEmptyDictionarySingleton;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_1001E9330(uint64_t *a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v31 = v7;
    v33 = v6;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v32 = v5;
    v34 = v3;
    v35 = v2;
    v12 = type metadata accessor for Logger();
    sub_100015AFC(v12, qword_100529B78);
    v13 = v11;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v16 = 138543874;
      *(v16 + 4) = v13;
      *v17 = v11;
      *(v16 + 12) = 2082;
      v19 = *&v13[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v18 = *&v13[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v20 = v13;

      v21 = sub_10002C9C8(v19, v18, aBlock);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2082;
      v22 = Set.description.getter();
      v24 = sub_10002C9C8(v22, v23, aBlock);

      *(v16 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}@]<%{public}s> Updated presentHandles: %{public}s", v16, 0x20u);
      sub_1000038A4(v17, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v13;
    aBlock[4] = sub_100225248;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C4728;
    v26 = _Block_copy(aBlock);
    v27 = v13;
    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v28 = v32;
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v34 + 8))(v28, v29);
    (*(v31 + 8))(v9, v33);
  }

  return result;
}

id MRDFastSyncGroupSession.__deallocating_deinit()
{
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v5 = 138543618;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2082;
    v8 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v9 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v10 = v2;

    v11 = sub_10002C9C8(v8, v9, v16);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@]<%{public}s> Dealloc.", v5, 0x16u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v7);
  }

  v12 = OBJC_IVAR___MRDFastSyncGroupSession_cancellables;
  swift_beginAccess();
  *&v2[v12] = &_swiftEmptySetSingleton;

  v13 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
  swift_beginAccess();
  *&v2[v13] = &_swiftEmptySetSingleton;

  v15.receiver = v2;
  v15.super_class = type metadata accessor for MRDFastSyncGroupSession();
  return objc_msgSendSuper2(&v15, "dealloc");
}

void sub_1001E9D40(char *a1)
{
  v2 = type metadata accessor for GroupSessionProviderState();
  __chkstk_darwin(v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession__state])
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100529B78);
    v7 = a1;
    v45 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v46[0] = v11;
      *v9 = 138543618;
      *(v9 + 4) = v7;
      *v10 = v7;
      *(v9 + 12) = 2082;
      v12 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v13 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v14 = v7;
      *(v9 + 14) = sub_10002C9C8(v12, v13, v46);
      _os_log_impl(&_mh_execute_header, v45, v8, "[%{public}@]<%{public}s> session can only be started from initial state.", v9, 0x16u);
      sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v11);
    }

    else
    {
      v39 = v45;
    }
  }

  else
  {
    v44 = OBJC_IVAR___MRDFastSyncGroupSession__state;
    v45 = v3;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = sub_100015AFC(v15, qword_100529B78);
    v17 = a1;
    v43 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42 = v2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v20 = 138543618;
      *(v20 + 4) = v17;
      *v22 = v17;
      *(v20 + 12) = 2082;
      v25 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v24 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v26 = v17;
      *(v20 + 14) = sub_10002C9C8(v25, v24, v46);
      _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}@]<%{public}s> Starting", v20, 0x16u);
      sub_1000038A4(v22, &qword_100521870, &unk_10044EA70);
      v2 = v42;

      sub_100026A44(v23);
    }

    v27 = dispatch thunk of NearbyGroupSessionProvider.state.getter();

    v46[0] = v27;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1001BC5A8(&qword_100522A70, &unk_100450208);
    sub_10000462C(&unk_100522A78, &qword_100522A70, &unk_100450208, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    dispatch thunk of NearbyGroupSessionProvider.state.getter();

    CurrentValueSubject.value.getter();

    v28 = v45;
    if ((v45[11].isa)(v5, v2) == enum case for GroupSessionProviderState.invalidated(_:))
    {
      (v28[12].isa)(v5, v2);
      v29 = *v5;
      v30 = v17;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v46[0] = v35;
        *v33 = 138412546;
        *(v33 + 4) = v30;
        *v34 = v17;
        *(v33 + 12) = 2082;
        v36 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v37 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v38 = v30;
        *(v33 + 14) = sub_10002C9C8(v36, v37, v46);
        _os_log_impl(&_mh_execute_header, v31, v32, "[%@]<%{public}s> Provider invalidated on start", v33, 0x16u);
        sub_1000038A4(v34, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v35);
      }

      swift_errorRetain();
      sub_100204BF8(v29);
    }

    else
    {
      (v28[1].isa)(v5, v2);
      v40 = *&a1[v44];
      *&a1[v44] = 1;
      sub_1001E6BC0(v40);
      if ((v17[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
      {
        sub_100205854();
      }
    }
  }
}

void *sub_1001EA430(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupSessionProviderState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    (*(v11 + 16))(v13, a1, v10);
    if ((*(v11 + 88))(v13, v10) == enum case for GroupSessionProviderState.invalidated(_:))
    {
      v34 = v4;
      (*(v11 + 96))(v13, v10);
      v33 = *v13;
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v35 = v3;
      v16 = type metadata accessor for Logger();
      sub_100015AFC(v16, qword_100529B78);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v20 = 138543618;
        *(v20 + 4) = v17;
        *v21 = v15;
        *(v20 + 12) = 2082;
        v24 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v23 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v25 = v17;

        v26 = sub_10002C9C8(v24, v23, aBlock);

        *(v20 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}@]<%{public}s> Provider state invalidated", v20, 0x16u);
        sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v22);
      }

      v27 = swift_allocObject();
      v28 = v33;
      *(v27 + 16) = v17;
      *(v27 + 24) = v28;
      aBlock[4] = sub_1002253D4;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004C4688;
      v29 = _Block_copy(aBlock);
      v30 = v17;
      swift_errorRetain();
      static DispatchQoS.unspecified.getter();
      v38 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v31 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v34 + 8))(v6, v31);
      (*(v36 + 8))(v9, v37);
    }

    else
    {

      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t sub_1001EAA44(void *a1)
{
  v2 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100015AFC(v5, qword_100529B78);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 138543618;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2082;
    v12 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v13 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v14 = v6;
    *(v9 + 14) = sub_10002C9C8(v12, v13, &v23);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}@]<%{public}s> Started observing session.", v9, 0x16u);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v11);
  }

  sub_1001E6ABC();
  v15 = sub_1001E67BC();

  (*((swift_isaMask & *v15) + 0xC0))(v16);

  v17 = OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask;
  if (*&v6[OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v6;
  v20 = v6;
  *&v6[v17] = sub_1001CB290(0, 0, v4, &unk_100450198, v19);
}

uint64_t sub_1001EAD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1001BC5A8(&qword_100522A30, &qword_1004501A0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1001BC5A8(&qword_100522A38, &qword_1004501A8);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001EAEBC, 0, 0);
}

uint64_t sub_1001EAEBC()
{
  v1 = v0[9];
  if (v1[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    v2 = 0;
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_allocWithZone(MSVTimer);
    v0[6] = sub_100224938;
    v0[7] = v4;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100003D98;
    v0[5] = &unk_1004C3E90;
    v6 = _Block_copy(v0 + 2);
    v7 = v3;
    v8 = v1;

    v2 = [v5 initWithInterval:0 repeats:v7 queue:v6 block:20.0];
    _Block_release(v6);
  }

  v0[16] = v2;
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580, &protocol conformance descriptor for NearbyGroupSessionProvider<A>);
  GroupSessionProvider.sessions.getter();

  GroupSession.Sessions.makeAsyncIterator()();
  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1001EB134;

  return sub_1001EB658(0, 0);
}

uint64_t sub_1001EB134(uint64_t a1)
{
  *(*v2 + 144) = a1;

  if (!v1)
  {

    return _swift_task_switch(sub_1001EB248, 0, 0);
  }

  return result;
}

uint64_t sub_1001EB248()
{
  v30 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  if (v1)
  {
    [*(v0 + 128) invalidate];
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 72);
    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100529B78);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 72);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v9 = 138543874;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2082;
      v11 = *&v8[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v12 = *&v8[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v13 = v8;
      *(v9 + 14) = sub_10002C9C8(v11, v12, &v29);
      *(v9 + 22) = 2082;
      *(v0 + 64) = v1;
      sub_1001BC5A8(&qword_100522A40, &qword_1004501B8);
      sub_10000462C(&qword_100522A48, &qword_100522A40, &qword_1004501B8, &protocol conformance descriptor for GroupSession<A>);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = sub_10002C9C8(v14, v15, &v29);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}@]<%{public}s> Provider gave session %{public}s.", v9, 0x20u);
      sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    sub_1001E6ABC();
    v21 = sub_1001E67BC();

    (*((swift_isaMask & *v21) + 0xD0))(v22);

    v23 = sub_1001E681C();

    (*((swift_isaMask & *v23) + 0xC0))(v24);

    sub_1001E6B44();
    v25 = sub_1001E69BC();

    (*((swift_isaMask & *v25) + 0xC0))(v26);

    sub_1001F61B4(v1);

    (*(v20 + 8))(v17, v19);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1001EB658(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100522A38, &qword_1004501A8);
  v4 = sub_10000462C(&qword_100522A50, &qword_100522A38, &qword_1004501A8, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1001CABFC;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

Swift::Void __swiftcall MRDFastSyncGroupSession.end()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v6) = v0[OBJC_IVAR___MRDFastSyncGroupSession_isLeader];
  v13[1] = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  if (v6 == 1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v20 = sub_10021C5BC;
    v21 = v8;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v9 = &unk_1004C2BA8;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v20 = sub_10021C594;
    v21 = v10;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v9 = &unk_1004C2B58;
  }

  v18 = sub_100003D98;
  v19 = v9;
  v11 = _Block_copy(&aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v14);
}

void *sub_1001EBAA8(char *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Participants();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
  if (v10)
  {

    MRDFastSyncGroupSessionState.rawValue.getter();
    v46 = v12;
    v47 = v11;
    sub_10036C864(v13);
    v48 = v15;
    v49 = v14;
    v16 = *(v7 + 104);
    v50 = v6;
    v16(v9, enum case for Participants.all(_:), v6);
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    v18 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    *v5 = v18;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v19 = a1;
    v20 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    result = (*(v3 + 8))(v5, v2);
    if (v18)
    {
      v22 = swift_allocObject();
      v22[2] = v19;
      v22[3] = sub_1002250C4;
      v22[4] = v17;
      v23 = v19;

      v25 = v48;
      v24 = v49;
      v45[1] = v10;
      GroupSessionMessenger.send(_:to:completion:)();

      sub_1001C4034(v24, v25);
      result = (*(v7 + 8))(v9, v50);
      v26 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
      if (v26)
      {
        sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10044F530;
        v28 = v26;
        v29 = sub_10036C46C();
        v30 = *(v29 + 1);
        v51 = *v29;
        v52 = v30;
        swift_bridgeObjectRetain_n();
        AnyHashable.init<A>(_:)();
        v31 = sub_10036C4D8();
        v33 = *v31;
        v32 = *(v31 + 1);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v33;
        *(inited + 80) = v32;

        v34 = sub_10036C49C();
        v35 = v34[1];
        v51 = *v34;
        v52 = v35;
        swift_bridgeObjectRetain_n();
        AnyHashable.init<A>(_:)();
        v37 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v36 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v37;
        *(inited + 152) = v36;

        v38 = sub_10036C460();
        v39 = *(v38 + 1);
        v51 = *v38;
        v52 = v39;
        swift_bridgeObjectRetain_n();
        result = AnyHashable.init<A>(_:)();
        v40 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
        if (v40)
        {
          v41 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];

          *(inited + 240) = &type metadata for String;
          *(inited + 216) = v41;
          *(inited + 224) = v40;
          sub_1001C2534(inited);
          swift_setDeallocating();
          sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
          swift_arrayDestroy();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          swift_beginAccess();

          sub_1001BDDB0(v43);
          v44 = Set._bridgeToObjectiveC()().super.isa;

          [v28 sendMessage:isa toDestinations:v44];

          sub_1001C4034(v47, v46);
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return sub_100204BF8(0);
}

uint64_t sub_1001EBFBC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v5;
    v30 = v4;
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100015AFC(v11, qword_100529B78);
    swift_errorRetain();
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v15 = 138543874;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2082;
      v27 = v13;
      v17 = *&v12[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v18 = *&v12[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v19 = v12;
      *(v15 + 14) = sub_10002C9C8(v17, v18, aBlock);
      *(v15 + 22) = 2114;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v20;
      v16[1] = v20;
      v21 = v27;
      _os_log_impl(&_mh_execute_header, v27, v14, "[%{public}@]<%{public}s> SessionEndMessage send error %{public}@.", v15, 0x20u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      sub_100026A44(v28);
    }

    else
    {
    }

    v5 = v29;
    v4 = v30;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  aBlock[4] = sub_1002254E8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C4638;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v5 + 8))(v7, v4);
  (*(v31 + 8))(v10, v32);
}

uint64_t MRDFastSyncGroupSession.prewarm(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10021C5C4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1002253D8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E7220;
  aBlock[3] = &unk_1004C2C20;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  v16 = a1;

  dispatch_async_and_wait(v11, v14);
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EC6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10021ACB8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1005229A8, &unk_1004588B0);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10000698C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10021A894(&qword_1005229A8, &unk_1004588B0);
        v14 = v16;
      }

      result = sub_1001DEE44(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1001EC7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100035B14(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10000698C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_100035C9C();
        v16 = v18;
      }

      result = sub_10021A064(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void sub_1001EC8FC(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10021AB3C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1002186FC(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_10021A5C0();
        v10 = v13;
      }

      sub_10021A214(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t MRDFastSyncGroupSession.cancel(prewarmedIdentifier:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10021CA58;
  *(v9 + 24) = v8;
  v15[4] = sub_1002253D8;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001E7220;
  v15[3] = &unk_1004C2C98;
  v10 = _Block_copy(v15);
  v11 = v3;

  v12 = a3;

  dispatch_async_and_wait(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MRDFastSyncGroupSession.prepareForAddedMember()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100015AFC(v8, qword_100529B78);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v1;
    aBlock[0] = v15;
    *v12 = 138543874;
    *(v12 + 4) = v9;
    *v14 = v9;
    *(v12 + 12) = 2082;
    v17 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v16 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v18 = v9;
    *(v12 + 14) = sub_10002C9C8(v17, v16, aBlock);
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043B270, aBlock);
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}@]<%{public}s> %s", v12, 0x20u);
    sub_1000038A4(v14, &qword_100521870, &unk_10044EA70);
    v2 = v23;

    swift_arrayDestroy();
    v1 = v24;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  aBlock[4] = sub_10021D1DC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C2CE8;
  v20 = _Block_copy(aBlock);
  v21 = v9;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v2 + 8))(v4, v1);
  (*(v25 + 8))(v7, v26);
}

uint64_t MRDFastSyncGroupSession.shouldAutomaticallyApprove(identity:)(void *a1)
{
  v13 = 0;
  v3 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = &v13;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10021D224;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1002253D8;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E7220;
  aBlock[3] = &unk_1004C2D60;
  v6 = _Block_copy(aBlock);
  v7 = v1;
  v8 = a1;

  dispatch_async_and_wait(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

void sub_1001ED324(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v6 - 8);
  v47 = &v46 - v7;
  v8 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v9 = 0;
  v10 = *&a1[v8];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
LABEL_9:
    v16 = (v9 << 10) | (16 * __clz(__rbit64(v13)));
    v17 = (*(v10 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v10 + 56) + v16);
    if (*v20 != a2 || v20[1] != a3)
    {
      v13 &= v13 - 1;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v22 = qword_100529B70;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100015AFC(v23, qword_100529B78);

    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v27 = 138543874;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2082;
      v30 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v29 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v31 = v24;
      *(v27 + 14) = sub_10002C9C8(v30, v29, &v48);
      *(v27 + 22) = 2082;
      *(v27 + 24) = sub_10002C9C8(v18, v19, &v48);
      _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}@]<%{public}s> Removing member with handle: %{public}s.", v27, 0x20u);
      sub_1000038A4(v28, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v32 = v47;
    v33 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_provider];
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v33;
    v36[5] = v18;
    v36[6] = v19;
    v36[7] = v35;

    sub_1001BF864(0, 0, v32, &unk_100450200, v36);

    return;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  if (qword_100529B70 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  v37 = type metadata accessor for Logger();
  sub_100015AFC(v37, qword_100529B78);
  v38 = a1;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v41 = 138543874;
    *(v41 + 4) = v38;
    *v42 = v38;
    *(v41 + 12) = 2082;
    v43 = *&v38[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v44 = *&v38[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v45 = v38;
    *(v41 + 14) = sub_10002C9C8(v43, v44, &v48);
    *(v41 + 22) = 2082;
    *(v41 + 24) = sub_10002C9C8(a2, a3, &v48);
    _os_log_impl(&_mh_execute_header, v39, v40, "[%{public}@]<%{public}s> Could not find participant for identifier %{public}s.", v41, 0x20u);
    sub_1000038A4(v42, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }
}

uint64_t sub_1001ED8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_1001ED8D0, 0, 0);
}

uint64_t sub_1001ED8D0(uint64_t a1)
{
  v1[9] = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_1001ED978;
  v4 = v1[6];
  v3 = v1[7];

  return NearbyGroup.kickMember(_:)(v4, v3);
}

uint64_t sub_1001ED978()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001EDAB4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001EDAB4()
{
  v18 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_100529B78);
    v4 = v2;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v15 = v0[6];
      v16 = v0[7];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 138543874;
      *(v7 + 4) = v4;
      *v8 = v2;
      *(v7 + 12) = 2080;
      v9 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v10 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v11 = v4;

      v12 = sub_10002C9C8(v9, v10, &v17);

      *(v7 + 14) = v12;
      *(v7 + 22) = 2082;
      *(v7 + 24) = sub_10002C9C8(v15, v16, &v17);
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%s> Failed to remove member: %{public}s.", v7, 0x20u);
      sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

id MRDFastSyncGroupSession.markParticipantAsGuestIfNeeded(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 guest];
  if (result)
  {
    v18 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    aBlock[4] = sub_10021D638;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C2E00;
    v13 = _Block_copy(aBlock);
    v17 = v7;
    v14 = v13;
    v15 = v1;
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v19 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v17);
  }

  return result;
}

void sub_1001EE0B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1001EE1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

void sub_1001EE4A0(void *a1, uint64_t a2, char *a3, int a4)
{
  v78 = a4;
  v7 = type metadata accessor for Participants();
  v80 = *(v7 - 8);
  v81 = v7;
  __chkstk_darwin(v7);
  v79 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  __chkstk_darwin(v9 - 8);
  v11 = v76 - v10;
  v12 = type metadata accessor for Participant();
  v91 = *(v12 - 1);
  v13 = __chkstk_darwin(v12);
  v90 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v89 = v76 - v16;
  __chkstk_darwin(v15);
  v77 = v76 - v17;
  if (qword_100529B70 != -1)
  {
LABEL_34:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100015AFC(v18, qword_100529B78);
  v20 = a1;
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v92 = v20;

  v23 = os_log_type_enabled(v21, v22);
  v82 = v11;
  v83 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v84 = v19;
    v25 = v24;
    v26 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v25 = 138543874;
    v27 = v92;
    *(v25 + 4) = v92;
    *v26 = v27;
    *(v25 + 12) = 2082;
    v28 = v12;
    v30 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v29 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v31 = v27;
    *(v25 + 14) = sub_10002C9C8(v30, v29, v93);
    *(v25 + 22) = 2080;
    v32 = [a2 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_10002C9C8(v33, v35, v93);

    *(v25 + 24) = v36;
    v12 = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, a3, v25, 0x20u);
    sub_1000038A4(v26, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v19 = v84;
  }

  v37 = *&v92[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  v38 = v90;
  if (!v37 || (v39 = *&v92[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
LABEL_27:
    v59 = v92;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v93[0] = v64;
      *v62 = 138543618;
      *(v62 + 4) = v59;
      *v63 = v59;
      *(v62 + 12) = 2082;
      v65 = *&v59[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v66 = *&v59[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v67 = v59;
      *(v62 + 14) = sub_10002C9C8(v65, v66, v93);
      _os_log_impl(&_mh_execute_header, v60, v61, "[%{public}@]<%{public}s> Unable to message leader", v62, 0x16u);
      sub_1000038A4(v63, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v64);
    }

    return;
  }

  v84 = v19;

  v76[0] = v39;

  v76[1] = v37;
  v40 = GroupSession.activeParticipants.getter();
  a1 = v40;
  v41 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 56);
  v45 = &v92[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  v11 = ((v42 + 63) >> 6);
  v85 = v91 + 16;
  v87 = (v91 + 8);
  v88 = (v91 + 32);
  a2 = 0;

  {
    if (!v44)
    {
      while (1)
      {
        v46 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        if (v46 >= v11)
        {

          v55 = 1;
          v56 = v82;
          v57 = v83;
          goto LABEL_25;
        }

        v44 = *(v41 + 8 * v46);
        ++a2;
        if (v44)
        {
          a3 = v45;
          a2 = v46;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    a3 = v45;
LABEL_17:
    v47 = v91;
    v48 = v89;
    (*(v91 + 16))(v89, a1[6] + *(v91 + 72) * (__clz(__rbit64(v44)) | (a2 << 6)), v12);
    v49 = *(v47 + 32);
    v49(v38, v48, v12);
    v50 = Participant.handle.getter();
    v45 = a3;
    v52 = *(a3 + 1);
    if (!v52)
    {

      goto LABEL_10;
    }

    a3 = v12;
    if (v50 == *v45 && v52 == v51)
    {
      break;
    }

    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v90;
    if (v54)
    {

      goto LABEL_32;
    }

LABEL_10:
    v44 &= v44 - 1;
    (*v87)(v38, v12);
  }

  v38 = v90;
LABEL_32:
  v56 = v82;
  v49(v82, v38, v12);
  v55 = 0;
  v57 = v83;
LABEL_25:
  v58 = v91;
  (*(v91 + 56))(v56, v55, 1, v12);

  if ((*(v58 + 48))(v56, 1, v12) == 1)
  {

    sub_1000038A4(v56, &qword_100529110, &qword_10044F5B0);
    goto LABEL_27;
  }

  v68 = v77;
  (*v88)(v77, v56, v12);
  v69 = v12;
  v70 = [v57 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10036D714();
  v74 = sub_10036D85C(v72, v73, v71 & 1);

  v75 = v79;
  static Participants.only(_:)();
  sub_10020CF20(8u, v74, v75, v76[0], 0, 0);

  (*(v80 + 8))(v75, v81);
  (*v87)(v68, v69);
}

uint64_t sub_1001EED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);
  v18 = v5;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v12, v10);
  (*(v13 + 8))(v15, v21);
}

void sub_1001EF054(void *a1, uint64_t a2, int64_t a3)
{
  v81 = a2;
  v5 = type metadata accessor for Participants();
  v79 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  __chkstk_darwin(v7 - 8);
  v78 = &v72 - v8;
  v9 = type metadata accessor for Participant();
  v88 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v87 = &v72 - v14;
  __chkstk_darwin(v13);
  v76 = &v72 - v15;
  if (qword_100529B70 != -1)
  {
LABEL_33:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100015AFC(v16, qword_100529B78);
  v18 = a1;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v80 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v82 = v5;
    v24 = v23;
    v86 = swift_slowAlloc();
    v89 = v86;
    *v22 = 138543874;
    *(v22 + 4) = v18;
    *v24 = v18;
    *(v22 + 12) = 2082;
    v25 = a3;
    v26 = v12;
    v27 = v9;
    v29 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v28 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v30 = v18;
    v31 = v29;
    a3 = v25;
    v32 = v28;
    v9 = v27;
    v12 = v26;
    *(v22 + 14) = sub_10002C9C8(v31, v32, &v89);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_10002C9C8(v81, v25, &v89);
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}@]<%{public}s> Requesting to remove participant: %s", v22, 0x20u);
    sub_1000038A4(v24, &qword_100521870, &unk_10044EA70);
    v5 = v82;

    swift_arrayDestroy();

    v17 = v80;
  }

  a1 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (!a1 || (v33 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
LABEL_26:
    v57 = v18;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v89 = v62;
      *v60 = 138543618;
      *(v60 + 4) = v57;
      *v61 = v57;
      *(v60 + 12) = 2082;
      v63 = *&v57[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v64 = *&v57[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v65 = v57;
      *(v60 + 14) = sub_10002C9C8(v63, v64, &v89);
      _os_log_impl(&_mh_execute_header, v58, v59, "[%{public}@]<%{public}s> Unable to message leader", v60, 0x16u);
      sub_1000038A4(v61, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v62);
    }

    return;
  }

  v80 = v17;
  v74 = a3;
  v82 = v5;

  v72 = v33;

  v75 = a1;
  v34 = GroupSession.activeParticipants.getter();
  v35 = v34;
  v36 = v34 + 56;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v5 = v38 & *(v34 + 56);
  v73 = v18;
  v84 = &v18[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  a3 = (v37 + 63) >> 6;
  v83 = v88 + 16;
  v85 = (v88 + 8);
  v86 = (v88 + 32);

  v39 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v40 >= a3)
        {

          v51 = 1;
          v52 = v82;
          v53 = v78;
          v54 = v79;
          v18 = v73;
          v55 = v72;
          goto LABEL_24;
        }

        v5 = *(v36 + 8 * v40);
        ++v39;
        if (v5)
        {
          v39 = v40;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_16:
    a1 = v35;
    v41 = v35[6];
    v43 = v87;
    v42 = v88;
    (*(v88 + 16))(v87, v41 + *(v88 + 72) * (__clz(__rbit64(v5)) | (v39 << 6)), v9);
    v44 = *(v42 + 32);
    v44(v12, v43, v9);
    v45 = Participant.handle.getter();
    v47 = *(v84 + 1);
    if (!v47)
    {

      goto LABEL_10;
    }

    v48 = v12;
    if (v45 == *v84 && v47 == v46)
    {
      break;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {

      goto LABEL_31;
    }

LABEL_10:
    v5 &= v5 - 1;
    (*v85)(v12, v9);
    v35 = a1;
  }

LABEL_31:
  v53 = v78;
  v44(v78, v48, v9);
  v51 = 0;
  v52 = v82;
  v54 = v79;
  v18 = v73;
  v55 = v72;
LABEL_24:
  v56 = v88;
  (*(v88 + 56))(v53, v51, 1, v9);

  if ((*(v56 + 48))(v53, 1, v9) == 1)
  {

    sub_1000038A4(v53, &qword_100529110, &qword_10044F5B0);
    goto LABEL_26;
  }

  v66 = v76;
  (*v86)(v76, v53, v9);

  j___s12mediaremoted28MRDFastSyncGroupSessionStateO8rawValueSivg();
  v67 = v9;
  v70 = sub_10036DA3C(v68, v69);

  v71 = v77;
  static Participants.only(_:)();
  sub_10020CF20(9u, v70, v71, v55, 0, 0);

  (*(v54 + 8))(v71, v52);
  (*v85)(v66, v67);
}

uint64_t sub_1001EF8B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1001EF944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_1001EFC08(void *a1)
{
  v2 = type metadata accessor for Participants();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - v6;
  v8 = type metadata accessor for Participant();
  v9 = *(v8 - 8);
  v78 = v8;
  v79 = v9;
  v10 = __chkstk_darwin(v8);
  v80 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v77 = &v64 - v13;
  __chkstk_darwin(v12);
  v69 = &v64 - v14;
  if (qword_100529B70 != -1)
  {
LABEL_33:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100015AFC(v15, qword_100529B78);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v71 = v7;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v73 = v3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v72 = v16;
    v25 = v2;
    v26 = v24;
    v81 = v24;
    *v22 = 138543618;
    *(v22 + 4) = v17;
    *v23 = v17;
    *(v22 + 12) = 2082;
    v7 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v27 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v28 = v17;
    *(v22 + 14) = sub_10002C9C8(v7, v27, &v81);
    _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}@]<%{public}s> Requesting to remove all participants", v22, 0x16u);
    sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v26);
    v2 = v25;
    v16 = v72;

    v3 = v73;
  }

  v29 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (!v29 || (v30 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
LABEL_26:
    v53 = v17;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81 = v58;
      *v56 = 138543618;
      *(v56 + 4) = v53;
      *v57 = v53;
      *(v56 + 12) = 2082;
      v59 = *&v53[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v60 = *&v53[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v61 = v53;
      *(v56 + 14) = sub_10002C9C8(v59, v60, &v81);
      _os_log_impl(&_mh_execute_header, v54, v55, "[%{public}@]<%{public}s> Unable to message leader", v56, 0x16u);
      sub_1000038A4(v57, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v58);
    }

    return;
  }

  v72 = v16;
  v73 = v3;
  v66 = v2;

  v67 = v30;

  v68 = v29;
  v31 = GroupSession.activeParticipants.getter();
  v32 = v31;
  v2 = v31 + 56;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 56);
  v65 = v17;
  v36 = &v17[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  a1 = ((v33 + 63) >> 6);
  v76 = (v79 + 32);
  v74 = v79 + 16;
  v75 = (v79 + 8);

  v37 = 0;
  v38 = v78;
  while (1)
  {
    if (!v35)
    {
      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= a1)
        {

          v48 = 1;
          v49 = v66;
          v50 = v73;
          v51 = v71;
          goto LABEL_24;
        }

        v35 = *(v2 + 8 * v39);
        ++v37;
        if (v35)
        {
          v37 = v39;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_16:
    v40 = v32;
    v41 = v79;
    v42 = *(v32 + 48) + *(v79 + 72) * (__clz(__rbit64(v35)) | (v37 << 6));
    v43 = v77;
    (*(v79 + 16))(v77, v42, v38);
    v3 = *(v41 + 32);
    v7 = v80;
    v3(v80, v43, v38);
    v44 = Participant.handle.getter();
    v46 = *(v36 + 1);
    if (!v46)
    {

      v32 = v40;
      goto LABEL_10;
    }

    if (v44 == *v36 && v46 == v45)
    {
      break;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v32 = v40;
    if (v7)
    {

      goto LABEL_31;
    }

LABEL_10:
    v35 &= v35 - 1;
    v38 = v78;
    (*v75)(v80, v78);
  }

LABEL_31:
  v38 = v78;
  v51 = v71;
  v3(v71, v80, v78);
  v48 = 0;
  v49 = v66;
  v50 = v73;
LABEL_24:
  v17 = v65;
  v52 = v79;
  (*(v79 + 56))(v51, v48, 1, v38);

  if ((*(v52 + 48))(v51, 1, v38) == 1)
  {

    sub_1000038A4(v51, &qword_100529110, &qword_10044F5B0);
    goto LABEL_26;
  }

  v62 = v69;
  (*v76)(v69, v51, v38);
  v63 = v70;
  static Participants.only(_:)();
  sub_10020CF20(0xAu, 0, v63, v67, 0, 0);

  v50[1](v63, v49);
  (*v75)(v62, v38);
}

uint64_t MRDFastSyncGroupSession.enterLowPowerMode(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100015AFC(v11, qword_100529B78);
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v17 = a1;
    v18 = v10;
    v19 = v7;
    v20 = a2;
    v22 = *&v12[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v21 = *&v12[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v23 = v12;
    v24 = v22;
    a1 = v17;
    v25 = v21;
    a2 = v20;
    v7 = v19;
    v10 = v18;
    *(v15 + 14) = sub_10002C9C8(v24, v25, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%@]<%s> Enter low-power mode", v15, 0x16u);
    sub_1000038A4(v32, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v33);
  }

  v26 = swift_allocObject();
  v26[2] = v12;
  v26[3] = a1;
  v26[4] = a2;
  aBlock[4] = sub_10021DCA4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C3030;
  v27 = _Block_copy(aBlock);
  v28 = v12;

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v29 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v36 + 8))(v7, v29);
  (*(v34 + 8))(v10, v35);
}

uint64_t sub_1001F087C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v158 = a3;
  v159 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v156 = *(v4 - 8);
  __chkstk_darwin(v4);
  v154 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v155 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participants();
  v153 = *(v9 - 8);
  __chkstk_darwin(v9);
  v152 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v137 - v12;
  v14 = type metadata accessor for Participant();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v137 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  v25 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession__state);
  v157 = v6;
  if (v25 != 3)
  {
    v21 = v4;
    if (qword_100529B70 != -1)
    {
LABEL_73:
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100015AFC(v41, qword_100529B78);
    v42 = a1;
    v43 = a1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v150 = v21;
      v151 = v7;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v46 = 138543874;
      *(v46 + 4) = v43;
      *v47 = v43;
      *(v46 + 12) = 2082;
      v48 = *&v43[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v49 = *&v43[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v50 = v43;
      *(v46 + 14) = sub_10002C9C8(v48, v49, &aBlock);
      *(v46 + 22) = 2080;
      v51 = *(v42 + v24);
      if (v51 <= 1)
      {
        if (v51)
        {
          if (v51 != 1)
          {
            goto LABEL_76;
          }

          v52 = 0xE500000000000000;
          v53 = 0x7472617473;
        }

        else
        {
          v52 = 0xE700000000000000;
          v53 = 0x6C616974696E69;
        }
      }

      else
      {
        switch(v51)
        {
          case 2:
            v52 = 0xE700000000000000;
            v53 = 0x676E696E696F6ALL;
            break;
          case 3:
            v52 = 0xE600000000000000;
            v53 = 0x64656E696F6ALL;
            break;
          case 4:
            v52 = 0xEB00000000646574;
            v53 = 0x6164696C61766E69;
            break;
          default:
            goto LABEL_76;
        }
      }

      v84 = sub_10002C9C8(v53, v52, &aBlock);

      *(v46 + 24) = v84;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%{public}@]<%{public}s> Cannot enter low-power mode in state: %s.", v46, 0x20u);
      sub_1000038A4(v47, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      v73 = v150;
      v7 = v151;
      v71 = v158;
      v72 = v159;
    }

    else
    {

      v71 = v158;
      v72 = v159;
      v73 = v21;
    }

    v85 = swift_allocObject();
    *(v85 + 16) = v72;
    *(v85 + 24) = v71;
    v165 = sub_1002253CC;
    v166 = v85;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v163 = sub_100003D98;
    v164 = &unk_1004C4200;
    v86 = _Block_copy(&aBlock);

    v69 = v155;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v87 = v154;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v86);
    (*(v156 + 8))(v87, v73);
    goto LABEL_37;
  }

  if (*(a1 + OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100015AFC(v26, qword_100529B78);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v7;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v30 = 138543618;
      *(v30 + 4) = v27;
      *v32 = v27;
      *(v30 + 12) = 2082;
      v34 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v35 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v36 = v27;
      *(v30 + 14) = sub_10002C9C8(v34, v35, &aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}@]<%{public}s> Already in low power mode.", v30, 0x16u);
      sub_1000038A4(v32, &qword_100521870, &unk_10044EA70);
      v7 = v31;

      sub_100026A44(v33);
    }

    v37 = v158;
    v38 = v159;
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v37;
    v165 = sub_1002253DC;
    v166 = v39;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v40 = &unk_1004C43B8;
LABEL_20:
    v163 = sub_100003D98;
    v164 = v40;
    v68 = _Block_copy(&aBlock);

    v69 = v155;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v70 = v154;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
LABEL_21:
    _Block_release(v68);
    (*(v156 + 8))(v70, v4);
LABEL_37:
    (*(v7 + 8))(v69, v157);
  }

  if (*(a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100015AFC(v54, qword_100529B78);
    v55 = a1;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = v7;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v58 = 138543618;
      *(v58 + 4) = v55;
      *v60 = v55;
      *(v58 + 12) = 2082;
      v62 = *&v55[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v63 = *&v55[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v64 = v55;
      *(v58 + 14) = sub_10002C9C8(v62, v63, &aBlock);
      _os_log_impl(&_mh_execute_header, v56, v57, "[%{public}@]<%{public}s> Cannot enter low power mode while updating low power state.", v58, 0x16u);
      sub_1000038A4(v60, &qword_100521870, &unk_10044EA70);
      v7 = v59;

      sub_100026A44(v61);
    }

    v65 = v158;
    v66 = v159;
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v65;
    v165 = sub_1002253CC;
    v166 = v67;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v40 = &unk_1004C4368;
    goto LABEL_20;
  }

  if (!*(a1 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100015AFC(v95, qword_100529B78);
    v96 = a1;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = v7;
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      aBlock = v102;
      *v99 = 138543618;
      *(v99 + 4) = v96;
      *v101 = v96;
      *(v99 + 12) = 2082;
      v103 = *&v96[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v104 = *&v96[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v105 = v96;
      *(v99 + 14) = sub_10002C9C8(v103, v104, &aBlock);
      _os_log_impl(&_mh_execute_header, v97, v98, "[%{public}@]<%{public}s> No groupSession to leave.", v99, 0x16u);
      sub_1000038A4(v101, &qword_100521870, &unk_10044EA70);
      v7 = v100;

      sub_100026A44(v102);
    }

    v106 = v158;
    v107 = v159;
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = v106;
    v165 = sub_100224DB4;
    v166 = v108;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v40 = &unk_1004C4250;
    goto LABEL_20;
  }

  v74 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger);
  v142 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession);
  if (!v74)
  {

LABEL_62:
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_100015AFC(v110, qword_100529B78);
    v111 = a1;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = v7;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      aBlock = v117;
      *v114 = 138543618;
      *(v114 + 4) = v111;
      *v116 = v111;
      *(v114 + 12) = 2082;
      v118 = *&v111[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v119 = *&v111[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v120 = v111;
      *(v114 + 14) = sub_10002C9C8(v118, v119, &aBlock);
      _os_log_impl(&_mh_execute_header, v112, v113, "[%{public}@]<%{public}s> Cannot send send low power message.", v114, 0x16u);
      sub_1000038A4(v116, &qword_100521870, &unk_10044EA70);
      v7 = v115;

      sub_100026A44(v117);
    }

    v121 = v158;
    v122 = v159;
    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    *(v123 + 24) = v121;
    v165 = sub_100224DBC;
    v166 = v123;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v163 = sub_100003D98;
    v164 = &unk_1004C42A0;
    v68 = _Block_copy(&aBlock);

    v69 = v155;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v70 = v154;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    goto LABEL_21;
  }

  v137 = v9;
  v140 = &v137 - v23;
  v138 = (a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  v150 = v4;
  v151 = v7;
  v75 = v22;
  v76 = v74;

  v139 = v76;

  v149 = v75;
  v77 = GroupSession.activeParticipants.getter();
  v78 = v149;
  v79 = v77;
  v24 = v77 + 56;
  v80 = 1 << *(v77 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = a1;
  a1 = v81 & *(v77 + 56);
  v141 = v82;
  v145 = (v82 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle);
  v83 = (v80 + 63) >> 6;
  v144 = v15 + 16;
  v147 = (v15 + 8);
  v148 = (v15 + 32);
  v7 = 0;

  {
    if (!a1)
    {
      while (1)
      {
        v89 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v89 >= v83)
        {

          v109 = 1;
          v4 = v150;
          v7 = v151;
          a1 = v141;
          goto LABEL_59;
        }

        a1 = *(v24 + 8 * v89);
        ++v7;
        if (a1)
        {
          v7 = v89;
          goto LABEL_46;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

LABEL_46:
    (*(v15 + 16))(v21, *(v79 + 48) + *(v15 + 72) * (__clz(__rbit64(a1)) | (v7 << 6)), v78);
    v143 = *(v15 + 32);
    v143(v18, v21, v78);
    v90 = Participant.handle.getter();
    v92 = v145[1];
    if (!v92)
    {

      goto LABEL_40;
    }

    if (v90 == *v145 && v92 == v91)
    {
      break;
    }

    v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v94)
    {

      goto LABEL_71;
    }

LABEL_40:
    a1 &= a1 - 1;
    v78 = v149;
    (*v147)(v18, v149);
  }

LABEL_71:
  v78 = v149;
  v143(v13, v18, v149);
  v109 = 0;
  v4 = v150;
  v7 = v151;
  a1 = v141;
LABEL_59:
  (*(v15 + 56))(v13, v109, 1, v78);

  if ((*(v15 + 48))(v13, 1, v78) == 1)
  {

    sub_1000038A4(v13, &qword_100529110, &qword_10044F5B0);
    goto LABEL_62;
  }

  (*v148)(v140, v13, v78);
  v51 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
  v124 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
  if (v124)
  {
    v51 = a1 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle;
    v125 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8);
    if (v125)
    {
      v126 = *v51;
      v127 = *(*v124 + 368);

      v127(1, v126, v125);

      v128 = v152;
      v129 = v140;
      static Participants.only(_:)();
      sub_10020CF20(6u, 0, v128, v139, 0, 0);

      (*(v153 + 8))(v128, v137);
      (*v147)(v129, v149);
      v131 = v158;
      v130 = v159;
      v132 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v133 = swift_allocObject();
      v133[2] = v132;
      v133[3] = v130;
      v133[4] = v131;
      v134 = v138;
      v135 = *v138;
      v136 = v138[1];
      *v138 = sub_100224E14;
      v134[1] = v133;

      sub_1001C7C2C(v135, v136);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_76:
  v160 = v51;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1001F205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v36 = a4;
    v21 = *(Strong + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
    *v18 = v21;
    (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    (*(v16 + 8))(v18, v15);
    if (v21)
    {
      if (a1)
      {
        v23 = swift_allocObject();
        v24 = v36;
        v23[2] = v40;
        v23[3] = v24;
        v23[4] = a1;
        aBlock[4] = sub_100225398;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004C4430;
        v25 = _Block_copy(aBlock);

        swift_errorRetain();
        static DispatchQoS.unspecified.getter();
        v41 = _swiftEmptyArrayStorage;
        sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v25);
        (*(v39 + 8))(v11, v9);
        (*(v37 + 8))(v14, v38);

        v26 = &v20[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v27 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v28 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
        *v26 = 0;
        *(v26 + 1) = 0;
        sub_1001C7C2C(v27, v28);
      }

      else
      {
        v29 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession__state];
        *&v20[OBJC_IVAR___MRDFastSyncGroupSession__state] = 1;
        sub_1001E6BC0(v29);
        *&v20[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger] = 0;

        *&v20[OBJC_IVAR___MRDFastSyncGroupSession_groupSession] = 0;

        v30 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
        swift_beginAccess();
        *&v20[v30] = &_swiftEmptySetSingleton;

        v31 = type metadata accessor for TaskPriority();
        (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
        v32 = swift_allocObject();
        v32[2] = 0;
        v32[3] = 0;
        v33 = v40;
        v32[4] = v20;
        v32[5] = v33;
        v32[6] = v36;

        v34 = v20;
        sub_1001BF864(0, 0, v8, &unk_1004501E8, v32);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001F25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();

  return _swift_task_switch(sub_1001F2710, 0, 0);
}

uint64_t sub_1001F2710()
{
  v18 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  v0[32] = sub_100015AFC(v2, qword_100529B78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 138543618;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2082;
    v10 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v11 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v12 = v6;
    *(v7 + 14) = sub_10002C9C8(v10, v11, &v17);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> Calling provider.leave", v7, 0x16u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v9);
  }

  v0[33] = *(v0[23] + OBJC_IVAR___MRDFastSyncGroupSession_provider);

  v13 = swift_task_alloc();
  v0[34] = v13;
  v14 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v15 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580, &protocol conformance descriptor for NearbyGroupSessionProvider<A>);
  *v13 = v0;
  v13[1] = sub_1001F29A4;

  return GroupSessionProvider.leave()(v14, v15);
}

uint64_t sub_1001F29A4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1001F2D1C;
  }

  else
  {

    v2 = sub_1001F2AC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F2AC0()
{
  v11 = v0[31];
  v1 = v0[28];
  v12 = v0[30];
  v13 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = swift_allocObject();
  v6 = v0[23];
  *(v5 + 16) = *(v0 + 23);
  *(v5 + 32) = v4;
  v0[18] = sub_10022500C;
  v0[19] = v5;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100003D98;
  v0[17] = &unk_1004C4520;
  v7 = _Block_copy(v0 + 14);
  v8 = v6;

  static DispatchQoS.unspecified.getter();
  v0[22] = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v2 + 8))(v1, v3);
  (*(v12 + 8))(v11, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F2D1C()
{
  v33 = v0;
  v1 = v0[23];

  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v6 = 138543874;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2082;
    v9 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v5;
    *(v6 + 14) = sub_10002C9C8(v9, v10, &v32);
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v12;
    v7[1] = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@]<%{public}s> Failure on provider.leave: %{public}@", v6, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v8);
  }

  v13 = v0[35];
  v14 = v0[31];
  v15 = v0[28];
  v29 = v0[29];
  v16 = v0[26];
  v30 = v0[27];
  v31 = v0[30];
  v17 = v0[24];
  v18 = v0[25];
  v28 = v0[23];
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v13;
  v0[6] = sub_100225398;
  v0[7] = v19;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100003D98;
  v0[5] = &unk_1004C4480;
  v20 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[20] = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  v27 = *(v30 + 8);
  v27(v15, v16);
  v21 = *(v31 + 8);
  v21(v14, v29);

  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  *(v22 + 24) = v13;
  v0[12] = sub_1002253D4;
  v0[13] = v22;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100003D98;
  v0[11] = &unk_1004C44D0;
  v23 = _Block_copy(v0 + 8);
  v24 = v28;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[21] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  v27(v15, v16);
  v21(v14, v29);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1001F3254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode) = 1;
  v12 = (a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  v13 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  v14 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8);
  *v12 = 0;
  v12[1] = 0;
  sub_1001C7C2C(v13, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_1002253DC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C4570;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);
}

void sub_1001F3594(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t MRDFastSyncGroupSession.exitLowPowerMode(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100015AFC(v11, qword_100529B78);
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v15 = 138543618;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2082;
    v17 = a1;
    v18 = v10;
    v19 = v7;
    v20 = a2;
    v22 = *&v12[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v21 = *&v12[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v23 = v12;
    v24 = v22;
    a1 = v17;
    v25 = v21;
    a2 = v20;
    v7 = v19;
    v10 = v18;
    *(v15 + 14) = sub_10002C9C8(v24, v25, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}@]<%{public}s> Exit low-power mode", v15, 0x16u);
    sub_1000038A4(v32, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v33);
  }

  v26 = swift_allocObject();
  v26[2] = v12;
  v26[3] = a1;
  v26[4] = a2;
  aBlock[4] = sub_10021DCB0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C3080;
  v27 = _Block_copy(aBlock);
  v28 = v12;

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v29 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v36 + 8))(v7, v29);
  (*(v34 + 8))(v10, v35);
}

void *sub_1001F3A70(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v148 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v144 = (&v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v143 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v11 - 8);
  v138 = &v130 - v12;
  v13 = type metadata accessor for String.Encoding();
  v140 = *(v13 - 8);
  v141 = v13;
  __chkstk_darwin(v13);
  v139 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NearbyGroup.Member();
  v142 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v130 - v19;
  v21 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v130 - v22;
  LODWORD(v22) = a1[OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode];
  v146 = v8;
  v147 = v6;
  v145 = v9;
  if (v22 != 1)
  {
    if (qword_100529B70 == -1)
    {
LABEL_9:
      v40 = type metadata accessor for Logger();
      sub_100015AFC(v40, qword_100529B78);
      v41 = a1;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        aBlock = v142;
        *v44 = 138543618;
        *(v44 + 4) = v41;
        *v45 = v41;
        *(v44 + 12) = 2082;
        v46 = v5;
        v47 = a2;
        v48 = *&v41[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v49 = *&v41[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v50 = v41;
        v51 = v49;
        a2 = v47;
        v5 = v46;
        *(v44 + 14) = sub_10002C9C8(v48, v51, &aBlock);
        _os_log_impl(&_mh_execute_header, v42, v43, "[%{public}@]<%{public}s> Not in low power mode.", v44, 0x16u);
        sub_1000038A4(v45, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v142);
      }

      v36 = v144;
      v52 = v148;
      v53 = swift_allocObject();
      *(v53 + 16) = a2;
      *(v53 + 24) = v52;
      v154 = sub_1002253DC;
      v155 = v53;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v39 = &unk_1004C3F80;
      goto LABEL_12;
    }

LABEL_45:
    swift_once();
    goto LABEL_9;
  }

  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion])
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100015AFC(v24, qword_100529B78);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      aBlock = v142;
      *v28 = 138543618;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2082;
      v30 = v5;
      v31 = a2;
      v32 = *&v25[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v33 = *&v25[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v34 = v25;
      v35 = v33;
      a2 = v31;
      v5 = v30;
      *(v28 + 14) = sub_10002C9C8(v32, v35, &aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}@]<%{public}s> Cannot exit low power mode while updating low power state.", v28, 0x16u);
      sub_1000038A4(v29, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v142);
    }

    v36 = v144;
    v37 = v148;
    v38 = swift_allocObject();
    *(v38 + 16) = a2;
    *(v38 + 24) = v37;
    v154 = sub_100224D28;
    v155 = v38;
    aBlock = _NSConcreteStackBlock;
    v151 = 1107296256;
    v39 = &unk_1004C4070;
LABEL_12:
    v152 = sub_100003D98;
    v153 = v39;
    v54 = _Block_copy(&aBlock);

    v55 = v143;
    static DispatchQoS.unspecified.getter();
    v149 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);
    (*(v147 + 8))(v36, v5);
    v145[1](v55, v146);
  }

  v57 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
  if (!v57)
  {
    __break(1u);
    goto LABEL_47;
  }

  v58 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
  if (!v58)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v132 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
  v133 = v23;
  v131 = &a1[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  v134 = v5;
  v135 = a2;
  v136 = a1;
  v59 = &a1[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
  v60 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (!v60)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v137 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  v61 = *v59;
  v62 = *(*v58 + 368);
  v63 = v57;
  v130 = v59;

  v62(0, v61, v60);
  v147 = v63;

  v64 = *&v136[v132];
  if (!v64)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v65 = *(*v64 + 200);

  v67 = v65(v66);

  if (!*(v67 + 16) || (v68 = sub_10000698C(v137, v147), (v69 & 1) == 0))
  {
LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

  v70 = *(*(v67 + 56) + 8 * v68);

  v132 = (*(*v70 + 216))(v71);

  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

  a2 = NearbyGroup.members.getter();

  v72 = 1 << *(a2 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v5 = v73 & *(a2 + 56);
  a1 = ((v72 + 63) >> 6);
  v143 = (v142 + 2);
  v144 = v142 + 4;
  v145 = (v142 + 1);

  v74 = 0;
  if (!v5)
  {
LABEL_24:
    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v75 >= a1)
      {

        v78 = 1;
        goto LABEL_36;
      }

      v5 = *(a2 + 56 + 8 * v75);
      ++v74;
      if (v5)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  while (1)
  {
    v75 = v74;
LABEL_27:
    v76 = v142;
    (v142[2])(v20, *(a2 + 48) + v142[9] * (__clz(__rbit64(v5)) | (v75 << 6)), v15);
    v134 = v76[4];
    v134(v18, v20, v15);
    if (NearbyGroup.Member.handle.getter() == v137 && v147 == v77)
    {

      goto LABEL_35;
    }

    LODWORD(v146) = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v146)
    {
      break;
    }

    v5 &= v5 - 1;
    (*v145)(v18, v15);
    v74 = v75;
    if (!v5)
    {
      goto LABEL_24;
    }
  }

LABEL_35:
  v134(v133, v18, v15);
  v78 = 0;
LABEL_36:
  v79 = v136;
  v80 = v142;
  v81 = v133;
  (v142[7])(v133, v78, 1, v15);

  if ((v80[6])(v81, 1, v15) == 1)
  {
    sub_1000038A4(v81, &qword_1005222A0, &unk_10044F5A0);
  }

  else
  {
    v146 = NearbyGroup.Member.tokenDestination.getter();
    v83 = v82;
    result = (*v145)(v81, v15);
    if (v83)
    {
      goto LABEL_40;
    }
  }

  v83 = v147;

  v146 = v137;
LABEL_40:
  v84 = *&v79[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
  if (!v84)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v145 = v83;
  sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F540;
  v86 = v84;
  v87 = sub_10036C46C();
  v89 = *v87;
  v88 = *(v87 + 1);
  aBlock = v89;
  v151 = v88;
  v144 = v88;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  v90 = sub_10036C4C0();
  v92 = *v90;
  v91 = v90[1];
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v92;
  *(inited + 80) = v91;

  v93 = sub_10036C484();
  v94 = *(v93 + 1);
  aBlock = *v93;
  v151 = v94;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();

  v95 = v139;
  static String.Encoding.utf8.getter();
  v96 = String.data(using:allowLossyConversion:)();
  v98 = v97;

  result = (*(v140 + 8))(v95, v141);
  if (v98 >> 60 == 15)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v143 = v86;
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v96;
  *(inited + 152) = v98;
  v99 = sub_10036C490();
  v100 = *(v99 + 1);
  aBlock = *v99;
  v151 = v100;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for Int;
  *(inited + 216) = v132;
  v101 = sub_10036C49C();
  v102 = v101[1];
  aBlock = *v101;
  v151 = v102;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  v104 = *&v136[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
  v103 = *&v136[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v104;
  *(inited + 296) = v103;

  v105 = sub_10036C478();
  v106 = *(v105 + 1);
  aBlock = *v105;
  v151 = v106;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for String;
  v107 = v147;
  *(inited + 360) = v137;
  *(inited + 368) = v107;

  v108 = sub_10036C460();
  v109 = *(v108 + 1);
  aBlock = *v108;
  v151 = v109;
  swift_bridgeObjectRetain_n();
  result = AnyHashable.init<A>(_:)();
  v110 = *(v130 + 1);
  if (v110)
  {
    v111 = *v130;

    *(inited + 456) = &type metadata for String;
    *(inited + 432) = v111;
    *(inited + 440) = v110;
    sub_1001C2534(inited);
    swift_setDeallocating();
    sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_10044EC70;
    v114 = v145;
    *(v113 + 32) = v146;
    v115 = v113 + 32;
    *(v113 + 40) = v114;
    sub_10021FAD4(v113);
    swift_setDeallocating();
    sub_1001E6204(v115);
    v116 = Set._bridgeToObjectiveC()().super.isa;

    v117 = v143;
    [v143 sendMessage:isa toDestinations:v116];

    v118 = swift_allocObject();
    v119 = v136;
    swift_unknownObjectWeakInit();
    v120 = swift_allocObject();
    v121 = v135;
    v120[2] = v118;
    v120[3] = v121;
    v122 = v148;
    v120[4] = v148;
    v123 = v131;
    v124 = *v131;
    v125 = v131[1];
    *v131 = sub_100224C74;
    v123[1] = v120;

    sub_1001C7C2C(v124, v125);

    v126 = type metadata accessor for TaskPriority();
    v127 = v138;
    (*(*(v126 - 8) + 56))(v138, 1, 1, v126);
    v128 = swift_allocObject();
    v128[2] = 0;
    v128[3] = 0;
    v128[4] = v119;
    v128[5] = v121;
    v128[6] = v122;

    v129 = v119;
    sub_1001BF864(0, 0, v127, &unk_1004501D8, v128);
  }

LABEL_53:
  __break(1u);
  return result;
}

_BYTE *sub_1001F4F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v27 = v7;
    v19 = *&result[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    *v16 = v19;
    (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    result = (*(v14 + 8))(v16, v13);
    if (v19)
    {
      if (a1)
      {
        v21 = swift_allocObject();
        v21[2] = v28;
        v21[3] = a4;
        v21[4] = a1;
        v36 = sub_100224D30;
        v37 = v21;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v34 = sub_100003D98;
        v35 = &unk_1004C41B0;
        v22 = _Block_copy(&aBlock);

        swift_errorRetain();
      }

      else
      {
        v18[OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode] = 0;
        v23 = &v18[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v24 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v25 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
        *v23 = 0;
        v23[1] = 0;
        sub_1001C7C2C(v24, v25);
        v26 = swift_allocObject();
        *(v26 + 16) = v28;
        *(v26 + 24) = a4;
        v36 = sub_100224D88;
        v37 = v26;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v34 = sub_100003D98;
        v35 = &unk_1004C4160;
        v22 = _Block_copy(&aBlock);
      }

      static DispatchQoS.unspecified.getter();
      v31 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);
      (*(v27 + 8))(v9, v6);
      (*(v29 + 8))(v12, v30);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001F54B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001F55D8, 0, 0);
}

uint64_t sub_1001F55D8()
{
  v17 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  v0[25] = sub_100015AFC(v2, qword_100529B78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 138543874;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2082;
    v9 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v6;
    *(v7 + 14) = sub_10002C9C8(v9, v10, &v16);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_10002C9C8(0xD00000000000001DLL, 0x800000010043BCB0, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> %s Re-joining provider", v7, 0x20u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v0[26] = *(v0[16] + OBJC_IVAR___MRDFastSyncGroupSession_provider);

  v12 = swift_task_alloc();
  v0[27] = v12;
  v13 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v14 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580, &protocol conformance descriptor for NearbyGroupSessionProvider<A>);
  *v12 = v0;
  v12[1] = sub_1001F58A8;

  return GroupSessionProvider.join()(v13, v14);
}

uint64_t sub_1001F58A8()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1001F5BBC;
  }

  else
  {

    v2 = sub_1001F59C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F59C4()
{
  v13 = v0;
  v1 = *(v0 + 128);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 138543874;
    *(v5 + 4) = v4;
    *v6 = v4;
    *(v5 + 12) = 2082;
    v7 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v8 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v9 = v4;
    *(v5 + 14) = sub_10002C9C8(v7, v8, &v12);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_10002C9C8(0xD00000000000001DLL, 0x800000010043BCB0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}@]<%{public}s> %s Re-joined provider", v5, 0x20u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  sub_1001EAA1C();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001F5BBC()
{
  v31 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v6 = 138543874;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2082;
    v8 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v9 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v10 = v5;
    *(v6 + 14) = sub_10002C9C8(v8, v9, &v30);
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_10002C9C8(0xD00000000000001DLL, 0x800000010043BCB0, &v30);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@]<%{public}s> %s Failed to re-join provider", v6, 0x20u);
    sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v11 = v0[28];
  v12 = v0[24];
  v13 = v0[21];
  v27 = v0[22];
  v14 = v0[19];
  v28 = v0[20];
  v29 = v0[23];
  v15 = v0[17];
  v16 = v0[18];
  v26 = v0[16];
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v11;
  v0[6] = sub_100224D30;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100003D98;
  v0[5] = &unk_1004C40C0;
  v18 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v25 = *(v28 + 8);
  v25(v13, v14);
  v19 = *(v29 + 8);
  v19(v12, v27);

  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  *(v20 + 24) = v11;
  v0[12] = sub_100224D60;
  v0[13] = v20;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100003D98;
  v0[11] = &unk_1004C4110;
  v21 = _Block_copy(v0 + 8);
  v22 = v26;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  v25(v13, v14);
  v19(v12, v27);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001F6120(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1001F61B4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1002247EC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C3D28;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

void sub_1001F6494(char *a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_1001BC5A8(&unk_1005229F0, &unk_100450170);
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_1001BC5A8(&qword_100521D78, &qword_10044F188);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v39 - v7;
  v8 = sub_1001BC5A8(&unk_100522A00, &qword_100450180);
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v44 = &v39 - v9;
  v10 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession__state];
  *&a1[OBJC_IVAR___MRDFastSyncGroupSession__state] = 2;
  sub_1001E6BC0(v10);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100015AFC(v11, qword_100529B78);
  v13 = a1;
  v48 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v50[0] = v19;
    *v16 = 138543618;
    *(v16 + 4) = v13;
    *v18 = v13;
    *(v16 + 12) = 2082;
    v20 = v5;
    v21 = *&v13[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v22 = *&v13[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v23 = v13;
    v24 = v21;
    v5 = v20;
    *(v16 + 14) = sub_10002C9C8(v24, v22, v50);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}@]<%{public}s> Handling session.", v16, 0x16u);
    sub_1000038A4(v18, &qword_100521870, &unk_10044EA70);
    v3 = v40;

    sub_100026A44(v19);
  }

  v25 = v41;
  v26 = v49;
  GroupSession.$activeParticipants.getter();
  sub_10000462C(&qword_100521D88, &qword_100521D78, &qword_10044F188, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10000462C(&qword_100522A10, &qword_100522A18, &qword_100450188, &protocol conformance descriptor for Set<A>);
  v27 = v43;
  v28 = v44;
  Publisher<>.removeDuplicates()();
  (*(v42 + 8))(v25, v27);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000462C(&qword_100522A20, &unk_100522A00, &qword_100450180, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v29 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v28, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  GroupSession.$state.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000462C(&qword_100522A28, &unk_1005229F0, &unk_100450170, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v45 + 8))(v5, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  *&v13[OBJC_IVAR___MRDFastSyncGroupSession_groupSession] = v26;

  sub_100209EA8();
  v30 = v13;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50[0] = v35;
    *v33 = 138543618;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2082;
    v36 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v37 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v38 = v30;
    *(v33 + 14) = sub_10002C9C8(v36, v37, v50);
    _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}@]<%{public}s> Will join session.", v33, 0x16u);
    sub_1000038A4(v34, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v35);
  }

  GroupSession.join()();
}

void *sub_1001F6BA0(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v33 = v8;
    v35 = v4;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v34 = v7;
    v36 = v3;
    v14 = type metadata accessor for Logger();
    sub_100015AFC(v14, qword_100529B78);
    v15 = v13;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v18 = 138543874;
      *(v18 + 4) = v15;
      *v19 = v13;
      *(v18 + 12) = 2082;
      v21 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v20 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v22 = v15;

      v23 = sub_10002C9C8(v21, v20, aBlock);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2082;
      type metadata accessor for Participant();
      sub_100004858(&qword_100521D68, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
      v24 = Set.description.getter();
      v26 = sub_10002C9C8(v24, v25, aBlock);

      *(v18 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}@]<%{public}s> Fast Sync participants changed: %{public}s.", v18, 0x20u);
      sub_1000038A4(v19, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v27 = swift_allocObject();
    *(v27 + 16) = v15;
    *(v27 + 24) = v11;
    aBlock[4] = sub_100224874;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3DC8;
    v28 = _Block_copy(aBlock);
    v29 = v15;

    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v30 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v35 + 8))(v6, v30);
    (*(v33 + 8))(v10, v34);
  }

  return result;
}

char *sub_1001F70DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100522920, &qword_100450090);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *&result[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v14 = result;
    (*(v10 + 16))(v12, a1, v9);
    v15 = *(v10 + 80);
    v22 = v6;
    v16 = (v15 + 24) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v10 + 32))(v17 + v16, v12, v9);
    aBlock[4] = sub_100224804;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3D78;
    v18 = _Block_copy(aBlock);
    v19 = v14;
    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v20 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v4 + 8))(v20, v3);
    (*(v23 + 8))(v8, v22);
  }

  return result;
}

void sub_1001F74C0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100529B70 == -1)
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
  v8 = type metadata accessor for Logger();
  sub_100015AFC(v8, qword_100529B78);
  v9 = v1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 138543874;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v15 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v16 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v17 = v9;
    *(v12 + 14) = sub_10002C9C8(v15, v16, &v22);
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    v13[1] = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}@]<%{public}s> Encountered push message error: %{public}@.", v12, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v14);
  }

  if (v9[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] == 1)
  {
    v9[OBJC_IVAR___MRDFastSyncGroupSession_hasEncounteredLowPowerError] = 1;
  }

  else
  {
    sub_10021DECC();
    v19 = swift_allocError();
    *v20 = 6;
    sub_100204BF8(v19);
  }
}

void sub_1001F77EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_69:
    swift_once();
LABEL_37:
    v40 = type metadata accessor for Logger();
    sub_100015AFC(v40, qword_100529B78);
    v41 = v2;
    v21 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v95[0] = v45;
      *v43 = 138543618;
      *(v43 + 4) = v41;
      *v44 = v41;
      *(v43 + 12) = 2082;
      v46 = *&v41[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v47 = *&v41[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v48 = v41;
      *(v43 + 14) = sub_10002C9C8(v46, v47, v95);
      _os_log_impl(&_mh_execute_header, v21, v42, "[%{public}@]<%{public}s> dropping push message for different session identifier.", v43, 0x16u);
      sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v45);
    }

    goto LABEL_39;
  }

  *&v94[0] = 0xD000000000000011;
  *(&v94[0] + 1) = 0x800000010043BC90;

  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v10 = sub_10001BF64(v95), (v11 & 1) == 0))
  {
    sub_10001BF10(v95);
    goto LABEL_36;
  }

  sub_100020E0C(a1[7] + 32 * v10, &v96);
  sub_10001BF10(v95);
  v12 = &type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v14 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
  v13 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
  if (v94[0] != __PAIR128__(v13, v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

LABEL_36:

    if (qword_100529B70 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

  v15 = String._bridgeToObjectiveC()();
  v95[0] = 0;
  v16 = IDSCopyTokenAndIDForTokenWithID();

  v17 = v95[0];
  if (!v16)
  {
    v21 = v95[0];

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100015AFC(v49, qword_100529B78);
    v50 = v2;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_61;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v95[0] = v55;
    *v53 = 138543618;
    *(v53 + 4) = v50;
    *v54 = v50;
    *(v53 + 12) = 2082;
    v56 = v50;
    *(v53 + 14) = sub_10002C9C8(v14, v13, v95);
    v57 = "[%{public}@]<%{public}s> could not parse sender from token.";
    goto LABEL_60;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = v17;

  v22 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
  if ((!v22 || (v18 != *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle] || v22 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) && (v2[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
  {

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100015AFC(v61, qword_100529B78);
    v62 = v2;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_61;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v95[0] = v55;
    *v53 = 138543618;
    *(v53 + 4) = v62;
    *v54 = v62;
    *(v53 + 12) = 2082;
    v63 = v62;
    *(v53 + 14) = sub_10002C9C8(v14, v13, v95);
    v57 = "[%{public}@]<%{public}s> dropping push message not from leader.";
    goto LABEL_60;
  }

  v23 = sub_10036C46C();
  v25 = *v23;
  v24 = *(v23 + 1);
  *&v94[0] = v25;
  *(&v94[0] + 1) = v24;

  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v26 = sub_10001BF64(v95), (v27 & 1) == 0))
  {
    sub_10001BF10(v95);

LABEL_46:

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100015AFC(v58, qword_100529B78);
    v59 = v2;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_61;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v95[0] = v55;
    *v53 = 138543618;
    *(v53 + 4) = v59;
    *v54 = v59;
    *(v53 + 12) = 2082;
    v60 = v59;
    *(v53 + 14) = sub_10002C9C8(v14, v13, v95);
    v57 = "[%{public}@]<%{public}s> dropping push message without type";
    goto LABEL_60;
  }

  sub_100020E0C(a1[7] + 32 * v26, &v96);
  sub_10001BF10(v95);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_46;
  }

  v92 = *(&v94[0] + 1);
  v28 = *&v94[0];
  if (__PAIR128__(v92, v28) == *sub_10036C4D8() || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
  {

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100015AFC(v67, qword_100529B78);
    v68 = v2;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v95[0] = v73;
      *v71 = 138543618;
      *(v71 + 4) = v68;
      *v72 = v68;
      *(v71 + 12) = 2082;
      v74 = v68;
      *(v71 + 14) = sub_10002C9C8(v14, v13, v95);
      _os_log_impl(&_mh_execute_header, v69, v70, "[%{public}@]<%{public}s> Received session end push message.", v71, 0x16u);
      sub_1000038A4(v72, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v73);
    }

    sub_10021DECC();
    v75 = swift_allocError();
    *v76 = 5;
    sub_100204BF8(v75);

    goto LABEL_39;
  }

  *&v94[0] = 0x74616E6974736564;
  *(&v94[0] + 1) = 0xEB000000006E6F69;
  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v29 = sub_10001BF64(v95), (v30 & 1) == 0))
  {
    sub_10001BF10(v95);
LABEL_56:

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100015AFC(v64, qword_100529B78);
    v65 = v2;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_61;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v95[0] = v55;
    *v53 = 138543618;
    *(v53 + 4) = v65;
    *v54 = v65;
    *(v53 + 12) = 2082;
    v66 = v65;
    *(v53 + 14) = sub_10002C9C8(v14, v13, v95);
    v57 = "[%{public}@]<%{public}s> dropping push message for different participant.";
LABEL_60:
    _os_log_impl(&_mh_execute_header, v51, v52, v57, v53, 0x16u);
    sub_1000038A4(v54, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v55);

LABEL_61:

    return;
  }

  sub_100020E0C(a1[7] + 32 * v29, &v96);
  sub_10001BF10(v95);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v31 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (!v31 || ((v32 = *&v94[0] == *&v2[OBJC_IVAR___MRDFastSyncGroupSession_localHandle], v91[1] = *(&v94[0] + 1), !v32) || v31 != *(&v94[0] + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_56;
  }

  v33 = sub_10036C4B4();
  if ((v28 != *v33 || v92 != *(v33 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_72:
    v77 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
    if (v77)
    {

      v95[3] = sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
      v95[0] = a1;
      (*(*v77 + 432))(v95, v18, v20, 1);

      sub_100026A44(v95);
LABEL_39:

      return;
    }

    goto LABEL_81;
  }

  v34 = sub_10036C4A8();
  v36 = *v34;
  v35 = v34[1];
  *&v94[0] = v36;
  *(&v94[0] + 1) = v35;

  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v37 = sub_10001BF64(v95), (v38 & 1) == 0))
  {
    sub_10001BF10(v95);
    goto LABEL_72;
  }

  sub_100020E0C(a1[7] + 32 * v37, &v96);
  sub_10001BF10(v95);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_72;
  }

  v39 = v94[0];
  if (v39 == *sub_10036C454())
  {
  }

  else
  {
    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v78 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  v79 = sub_10036C484();
  v80 = *(v79 + 1);
  *&v96 = *v79;
  *(&v96 + 1) = v80;

  AnyHashable.init<A>(_:)();
  if (!a1[2])
  {
    __break(1u);
    goto LABEL_80;
  }

  v81 = sub_10001BF64(v95);
  if ((v82 & 1) == 0)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_100020E0C(a1[7] + 32 * v81, v94);
  sub_10001BF10(v95);
  sub_1001C4088(v94, &v96);
  v91[0] = sub_100018D7C(0, &qword_1005229E8, NSData_ptr);
  swift_dynamicCast();
  v83 = v93;
  v84 = *v79;
  v85 = *(v79 + 1);
  *&v96 = v84;
  *(&v96 + 1) = v85;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  *&v96 = 0;
  v86 = [v83 decompressedDataUsingAlgorithm:0 error:&v96];
  v12 = v96;
  if (v86)
  {
    v87 = v86;
    v88 = v96;

    v97 = v91[0];
    *&v96 = v87;
    sub_1001C4088(&v96, v94);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = a1;
    sub_10021A9F0(v94, v95, isUniquelyReferenced_nonNull_native);

    sub_10001BF10(v95);
    a1 = v93;
    goto LABEL_72;
  }

LABEL_82:
  v90 = v12;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}