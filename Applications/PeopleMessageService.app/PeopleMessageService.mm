id sub_100001FC0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void type metadata accessor for UIBackgroundTaskIdentifier()
{
  if (!qword_10001D1D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10001D1D8);
    }
  }
}

uint64_t sub_1000020FC(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002150(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000021A8@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *sub_1000021E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002200(uint64_t a1)
{
  sub_100002378(&qword_10001D1F8, &unk_100014D74);
  sub_100002378(&unk_10001D200, &unk_100014D14);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100002378(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIBackgroundTaskIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000023BC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  swift_beginAccess();
  if (*(a1 + 16) == UIBackgroundTaskInvalid)
  {
    static PeopleLogger.messages.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "sendMessage cleanup but task invalid", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    static PeopleLogger.messages.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "sendMessage cleanup task", v14, 2u);
    }

    (*(v3 + 8))(v8, v2);
    v15 = [objc_opt_self() sharedApplication];
    swift_beginAccess();
    [v15 endBackgroundTask:*(a1 + 16)];
  }
}

uint64_t sub_100002630(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1000026B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MessageComposer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10000270C(uint64_t a1)
{
  type metadata accessor for MessageDetails.EventSource();
  sub_100007184(&qword_10001D2C8, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000027A4(a1, v2);
}

unint64_t sub_1000027A4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for MessageDetails.EventSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100007184(&qword_10001D2D0, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100002964()
{
  v0 = type metadata accessor for PeopleURL.PathAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100006FA4(&qword_10001D2D8, &qword_100014E68);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100006FA4(&qword_10001D2E0, &unk_100014E70);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  URLComponents.peopleAction.getter();
  (*(v1 + 104))(v13, enum case for PeopleURL.PathAction.sendMessage(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000070BC(v15, v6, &qword_10001D2E0, &unk_100014E70);
  sub_1000070BC(v13, &v6[v16], &qword_10001D2E0, &unk_100014E70);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1000070BC(v6, v10, &qword_10001D2E0, &unk_100014E70);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_100007184(&qword_10001D2E8, &type metadata accessor for PeopleURL.PathAction, &protocol conformance descriptor for PeopleURL.PathAction);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_100007124(v13, &qword_10001D2E0, &unk_100014E70);
      sub_100007124(v15, &qword_10001D2E0, &unk_100014E70);
      v21(v10, v0);
      sub_100007124(v6, &qword_10001D2E0, &unk_100014E70);
      return v18 & 1;
    }

    sub_100007124(v13, &qword_10001D2E0, &unk_100014E70);
    sub_100007124(v15, &qword_10001D2E0, &unk_100014E70);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_100007124(v13, &qword_10001D2E0, &unk_100014E70);
  sub_100007124(v15, &qword_10001D2E0, &unk_100014E70);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100007124(v6, &qword_10001D2D8, &qword_100014E68);
    v18 = 0;
    return v18 & 1;
  }

  sub_100007124(v6, &qword_10001D2E0, &unk_100014E70);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_100002DB0(uint64_t a1)
{
  v1[51] = a1;
  sub_100006FA4(&qword_10001D298, &qword_100014E40);
  v1[52] = swift_task_alloc();
  sub_100006FA4(&qword_10001D2A0, &qword_100014E48);
  v1[53] = swift_task_alloc();
  v2 = type metadata accessor for AskToMetrics();
  v1[54] = v2;
  v1[55] = *(v2 - 8);
  v1[56] = swift_task_alloc();
  v3 = type metadata accessor for DiscoveredHandles();
  v1[57] = v3;
  v1[58] = *(v3 - 8);
  v1[59] = swift_task_alloc();
  sub_100006FA4(&qword_10001D2A8, &unk_100014E50);
  v1[60] = swift_task_alloc();
  v4 = type metadata accessor for ResolvedFamily();
  v1[61] = v4;
  v1[62] = *(v4 - 8);
  v1[63] = swift_task_alloc();
  v5 = type metadata accessor for MessageDetails.EventStatus();
  v1[64] = v5;
  v1[65] = *(v5 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[69] = v6;
  v1[70] = *(v6 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v7 = type metadata accessor for MessageDetails();
  v1[77] = v7;
  v1[78] = *(v7 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  sub_100006FA4(&qword_10001D2B0, &qword_100014FA0);
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v8 = type metadata accessor for MessageDetails.EventSource();
  v1[85] = v8;
  v1[86] = *(v8 - 8);
  v1[87] = swift_task_alloc();
  v9 = type metadata accessor for PeopleURL.Parameter();
  v1[88] = v9;
  v1[89] = *(v9 - 8);
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[92] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[93] = v11;
  v1[94] = v10;

  return _swift_task_switch(sub_10000329C, v11, v10);
}

uint64_t sub_10000329C()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  v4 = *(v2 + 104);
  v4(v1, enum case for PeopleURL.Parameter.requestID(_:), v3);
  v5 = URLComponents.subscript.getter();
  v7 = v6;
  v0[95] = v6;
  v8 = *(v2 + 8);
  v8(v1, v3);
  if (!v7)
  {

    goto LABEL_5;
  }

  v26 = v5;
  v9 = v0[90];
  v10 = v0[88];
  v11 = v0[86];
  v27 = v0[85];
  v28 = v7;
  v12 = v0[84];
  v4(v9, enum case for PeopleURL.Parameter.eventSource(_:), v10);
  URLComponents.subscript.getter();
  v8(v9, v10);
  MessageDetails.EventSource.init(rawValue:)();
  v13 = *(v11 + 48);
  v0[96] = v13;
  v0[97] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v12, 1, v27) == 1)
  {
    v14 = v0[84];

    sub_100007124(v14, &qword_10001D2B0, &qword_100014FA0);
LABEL_5:
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  (*(v0[86] + 32))(v0[87], v0[84], v0[85]);
  v17 = swift_allocObject();
  v0[98] = v17;
  *(v17 + 16) = UIBackgroundTaskInvalid;
  v18 = (v17 + 16);
  v19 = [objc_opt_self() sharedApplication];
  v20 = String._bridgeToObjectiveC()();
  v0[22] = sub_100006FFC;
  v0[23] = v17;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100002630;
  v0[21] = &unk_100018B70;
  v21 = _Block_copy(v0 + 18);

  v22 = [v19 beginBackgroundTaskWithName:v20 expirationHandler:v21];
  _Block_release(v21);

  swift_beginAccess();
  *v18 = v22;
  if (qword_10001D140 != -1)
  {
    swift_once();
  }

  v23 = swift_task_alloc();
  v0[99] = v23;
  *v23 = v0;
  v23[1] = sub_1000037E4;
  v24 = v0[87];
  v25 = v0[81];

  return sub_10000A654(v25, v26, v28, v24);
}

uint64_t sub_1000037E4()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 752);
  v4 = *(v2 + 744);
  if (v0)
  {
    v5 = sub_100006DB4;
  }

  else
  {
    v5 = sub_100003938;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100003938(uint64_t a1)
{
  v132 = v1;
  v2 = *(v1 + 648);
  v3 = *(v1 + 640);
  v4 = *(v1 + 624);
  v5 = *(v1 + 616);
  static PeopleLogger.messages.getter();
  v127 = *(v4 + 16);
  v127(v3, v2, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 640);
  v10 = *(v1 + 624);
  v11 = *(v1 + 616);
  v12 = *(v1 + 608);
  v13 = *(v1 + 560);
  v14 = *(v1 + 552);
  if (v8)
  {
    v123 = *(v1 + 552);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v131[0] = v16;
    *v15 = 136315138;
    v112 = MessageDetails.debugDescription.getter();
    v119 = v12;
    v18 = v17;
    v115 = v7;
    v19 = *(v10 + 8);
    v19(v9, v11);
    v20 = sub_100007DDC(v112, v18, v131);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v115, "Fetched & created %s", v15, 0xCu);
    sub_10000701C(v16);

    v21 = *(v13 + 8);
    v21(v119, v123);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
    v21 = *(v13 + 8);
    v21(v12, v14);
  }

  *(v1 + 816) = v19;
  *(v1 + 808) = v21;
  if (qword_10001D148 != -1)
  {
    swift_once();
  }

  v22 = qword_10001D938;
  if (!*(qword_10001D938 + 16) || (v23 = sub_10000270C(*(v1 + 696)), (v24 & 1) == 0))
  {
    v33 = *(v1 + 696);
    v34 = *(v1 + 688);
    v35 = *(v1 + 680);
    v36 = *(v1 + 648);
    v37 = *(v1 + 616);

    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v19(v36, v37);
    (*(v34 + 8))(v33, v35);
    goto LABEL_28;
  }

  v25 = *(v1 + 536);
  v26 = *(v1 + 520);
  v27 = *(v1 + 512);
  v28 = (*(v22 + 56) + (v23 << 6));
  v29 = v28[3];
  v31 = *v28;
  v30 = v28[1];
  *(v1 + 48) = v28[2];
  *(v1 + 64) = v29;
  *(v1 + 16) = v31;
  *(v1 + 32) = v30;
  sub_1000070BC(v1 + 16, v1 + 80, &qword_10001D2B8, &qword_100014E60);
  MessageDetails.status.getter();
  (*(v26 + 104))(v25, enum case for MessageDetails.EventStatus.pending(_:), v27);
  sub_100007184(&qword_10001D2C0, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v126 = v19;
  if (*(v1 + 376) == *(v1 + 392) && *(v1 + 384) == *(v1 + 400))
  {
    v32 = 1;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v38 = *(v1 + 544);
  v39 = *(v1 + 512);
  v40 = *(*(v1 + 520) + 8);
  v40(*(v1 + 536), v39);
  v40(v38, v39);

  if ((v32 & 1) == 0)
  {
    v48 = *(v1 + 648);
    v49 = *(v1 + 632);
    v50 = *(v1 + 616);

    sub_100007124(v1 + 16, &qword_10001D2B8, &qword_100014E60);
    static PeopleLogger.messages.getter();
    v127(v49, v48, v50);
    v51 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();
    v52 = os_log_type_enabled(v51, v109);
    v128 = *(v1 + 696);
    v53 = *(v1 + 688);
    v120 = *(v1 + 648);
    v124 = *(v1 + 680);
    v54 = *(v1 + 632);
    v55 = *(v1 + 616);
    v113 = *(v1 + 552);
    v116 = *(v1 + 568);
    if (v52)
    {
      v108 = *(v1 + 688);
      v56 = *(v1 + 528);
      v105 = *(v1 + 512);
      buf = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v131[0] = v107;
      *buf = 136315138;
      log = v51;
      MessageDetails.status.getter();
      v57 = MessageDetails.EventStatus.rawValue.getter();
      v59 = v58;
      v40(v56, v105);
      v126(v54, v55);
      v60 = sub_100007DDC(v57, v59, v131);

      *(buf + 4) = v60;
      _os_log_impl(&_mh_execute_header, log, v109, "Event status != pending (%s), no message to send", buf, 0xCu);
      sub_10000701C(v107);

      v21(v116, v113);
      v126(v120, v55);
      (*(v108 + 8))(v128, v124);
    }

    else
    {

      v126(v54, v55);
      v21(v116, v113);
      v126(v120, v55);
      (*(v53 + 8))(v128, v124);
    }

LABEL_28:

    v80 = *(v1 + 8);

    return v80();
  }

  v41 = *(v1 + 488);
  v42 = *(v1 + 496);
  v43 = *(v1 + 480);
  MessageDetails.family.getter();
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v44 = *(v1 + 480);

    sub_100007124(v1 + 16, &qword_10001D2B8, &qword_100014E60);
    v45 = &unk_10001D2A8;
    v46 = &unk_100014E50;
    v47 = v44;
LABEL_24:
    sub_100007124(v47, v45, v46);
    static PeopleLogger.messages.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    v75 = os_log_type_enabled(v73, v74);
    v129 = *(v1 + 696);
    v76 = *(v1 + 688);
    v122 = *(v1 + 648);
    v125 = *(v1 + 680);
    v118 = *(v1 + 616);
    v77 = *(v1 + 576);
    v78 = *(v1 + 552);
    if (v75)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Only send message if I am requesting family member ", v79, 2u);
    }

    v21(v77, v78);
    v126(v122, v118);
    (*(v76 + 8))(v129, v125);
    goto LABEL_28;
  }

  (*(*(v1 + 496) + 32))(*(v1 + 504), *(v1 + 480), *(v1 + 488));
  v61 = ResolvedFamily.requestingFamilyMember.getter();
  v62 = [v61 isMe];

  if (!v62)
  {
    (*(*(v1 + 496) + 8))(*(v1 + 504), *(v1 + 488));

    v45 = &qword_10001D2B8;
    v46 = &qword_100014E60;
    v47 = v1 + 16;
    goto LABEL_24;
  }

  v63 = *(v1 + 768);
  v64 = *(v1 + 680);
  v65 = *(v1 + 664);
  AskToMetrics.init(isAskToProcess:)();
  MessageDetails.eventSource.getter();
  if (v63(v65, 1, v64) == 1)
  {

    sub_100007124(v1 + 16, &qword_10001D2B8, &qword_100014E60);
LABEL_21:
    v66 = *(v1 + 688);
    v114 = *(v1 + 680);
    v117 = *(v1 + 696);
    v121 = *(v1 + 664);
    v110 = *(v1 + 616);
    v111 = *(v1 + 648);
    v67 = *(v1 + 496);
    v68 = *(v1 + 504);
    v69 = *(v1 + 488);
    v71 = *(v1 + 440);
    v70 = *(v1 + 448);
    v72 = *(v1 + 432);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    (*(v71 + 8))(v70, v72);
    (*(v67 + 8))(v68, v69);
    v126(v111, v110);
    (*(v66 + 8))(v117, v114);
    sub_100007124(v121, &qword_10001D2B0, &qword_100014FA0);
    goto LABEL_28;
  }

  v82 = *(v1 + 688);
  v83 = *(v1 + 680);
  v84 = *(v1 + 656);
  sub_1000070BC(*(v1 + 664), v84, &qword_10001D2B0, &qword_100014FA0);
  v85 = (*(v82 + 88))(v84, v83);
  if (v85 == enum case for MessageDetails.EventSource.askToBuy(_:))
  {
    type metadata accessor for ServerFeatureFlag();
    static ServerFeatureFlag.shared.getter();
    v86 = ServerFeatureFlag.preventAskToBuyDeviceValidation.getter();
    *(v1 + 994) = v86 & 1;

    type metadata accessor for MessageSendRules();
    *(v1 + 888) = static MessageSendRules.sharedInstance.getter();
    v87 = ResolvedFamily.approvers.getter();
    *(v1 + 896) = v87;
    v88 = type metadata accessor for MessageDeviceCapabilityLookup();
    if (v86)
    {
      *(v1 + 232) = static MessageDeviceCapabilityLookup.sharedInstance.getter();
      v89 = v1 + 232;
      *(v1 + 256) = v88;
      *(v1 + 264) = &protocol witness table for MessageDeviceCapabilityLookup;
      v130 = (&async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:) + async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:));
      v90 = swift_task_alloc();
      *(v1 + 904) = v90;
      *v90 = v1;
      v91 = sub_1000056F0;
    }

    else
    {
      *(v1 + 192) = static MessageDeviceCapabilityLookup.sharedInstance.getter();
      v89 = v1 + 192;
      *(v1 + 216) = v88;
      *(v1 + 224) = &protocol witness table for MessageDeviceCapabilityLookup;
      v130 = (&async function pointer to dispatch thunk of MessageSendRules.approversSupportingAskToBuyMessage(_:lookup:) + async function pointer to dispatch thunk of MessageSendRules.approversSupportingAskToBuyMessage(_:lookup:));
      v90 = swift_task_alloc();
      *(v1 + 912) = v90;
      *v90 = v1;
      v91 = sub_1000059B4;
    }

    v90[1] = v91;
    v97 = *(v1 + 472);
    v99 = v87;
    v98 = v89;
  }

  else
  {
    if (v85 != enum case for MessageDetails.EventSource.screenTime(_:))
    {
      v100 = *(v1 + 688);
      v101 = *(v1 + 680);
      v102 = *(v1 + 656);

      sub_100007124(v1 + 16, &qword_10001D2B8, &qword_100014E60);
      (*(v100 + 8))(v102, v101);
      goto LABEL_21;
    }

    type metadata accessor for ServerFeatureFlag();
    static ServerFeatureFlag.shared.getter();
    v92 = ServerFeatureFlag.preventScreenTimeMessageDeviceValidation.getter();
    *(v1 + 992) = v92 & 1;

    type metadata accessor for MessageSendRules();
    *(v1 + 824) = static MessageSendRules.sharedInstance.getter();
    v93 = ResolvedFamily.approvers.getter();
    *(v1 + 832) = v93;
    v94 = type metadata accessor for MessageDeviceCapabilityLookup();
    v95 = static MessageDeviceCapabilityLookup.sharedInstance.getter();
    if (v92)
    {
      *(v1 + 336) = v94;
      *(v1 + 344) = &protocol witness table for MessageDeviceCapabilityLookup;
      *(v1 + 312) = v95;
      v130 = (&async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:) + async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:));
      v96 = swift_task_alloc();
      *(v1 + 840) = v96;
      *v96 = v1;
      v96[1] = sub_1000049A8;
      v97 = *(v1 + 472);
      v98 = v1 + 312;
    }

    else
    {
      *(v1 + 296) = v94;
      *(v1 + 304) = &protocol witness table for MessageDeviceCapabilityLookup;
      *(v1 + 272) = v95;
      v130 = (&async function pointer to dispatch thunk of MessageSendRules.approversSupportingScreenTimeMessage(_:lookup:) + async function pointer to dispatch thunk of MessageSendRules.approversSupportingScreenTimeMessage(_:lookup:));
      v103 = swift_task_alloc();
      *(v1 + 848) = v103;
      *v103 = v1;
      v103[1] = sub_100004C6C;
      v97 = *(v1 + 472);
      v98 = v1 + 272;
    }

    v99 = v93;
  }

  return v130(v97, v99, v98);
}

uint64_t sub_1000049A8()
{
  v1 = *v0;

  sub_10000701C(v1 + 39);
  v2 = v1[94];
  v3 = v1[93];

  return _swift_task_switch(sub_100004B14, v3, v2);
}

uint64_t sub_100004B14()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[53];
  type metadata accessor for MessageSendRules();
  v0[107] = static MessageSendRules.sharedInstance.getter();
  v5 = ResolvedFamily.requestingFamilyMember.getter();
  v0[108] = v5;
  v6 = ResolvedFamily.approvers.getter();
  v0[109] = v6;
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v11 = &async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:);
  v7 = swift_task_alloc();
  v0[110] = v7;
  *v7 = v0;
  v7[1] = sub_100004DD8;
  v8 = v0[56];
  v9 = v0[53];

  return (v11)(v5, v6, 0, v8, v9);
}

uint64_t sub_100004C6C()
{
  v1 = *v0;

  sub_10000701C(v1 + 34);
  v2 = v1[94];
  v3 = v1[93];

  return _swift_task_switch(sub_1000071CC, v3, v2);
}

uint64_t sub_100004DD8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v4 = *(*v1 + 424);
  *(*v1 + 993) = a1;

  sub_100007124(v4, &qword_10001D2A0, &qword_100014E48);
  v5 = *(v2 + 752);
  v6 = *(v2 + 744);

  return _swift_task_switch(sub_100004F8C, v6, v5);
}

uint64_t sub_100004F8C()
{
  v54 = v0;
  if (*(v0 + 993) == 1)
  {
    v1 = *(v0 + 992);
    sub_100007124(*(v0 + 664), &qword_10001D2B0, &qword_100014FA0);
    if (DiscoveredHandles.allMembersMeetRequirements.getter())
    {
      *(v0 + 952) = DiscoveredHandles.iMessageHandles.getter();
      static PeopleLogger.messages.getter();

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 808);
      v6 = *(v0 + 600);
      v7 = *(v0 + 552);
      if (v4)
      {
        v52 = v1;
        v8 = swift_slowAlloc();
        v50 = v5;
        v9 = swift_slowAlloc();
        v53 = v9;
        *v8 = 136315138;
        v10 = Array.description.getter();
        v12 = sub_100007DDC(v10, v11, &v53);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v2, v3, "MessageComposer validated destinations %s", v8, 0xCu);
        sub_10000701C(v9);

        v1 = v52;

        v50(v6, v7);
      }

      else
      {

        v5(v6, v7);
      }

      v32 = *(v0 + 416);
      v33 = type metadata accessor for URL();
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      v34 = swift_task_alloc();
      *(v0 + 960) = v34;
      *v34 = v0;
      v34[1] = sub_100006438;
      v35 = *(v0 + 648);
      v36 = *(v0 + 416);

      return sub_10000BC34(v35, v1, v36);
    }

    v49 = *(v0 + 696);
    v23 = *(v0 + 688);
    v45 = *(v0 + 816);
    v47 = *(v0 + 680);
    v41 = *(v0 + 616);
    v43 = *(v0 + 648);
    v24 = *(v0 + 496);
    v39 = *(v0 + 504);
    v37 = *(v0 + 488);
    v25 = *(v0 + 464);
    v26 = *(v0 + 472);
    v28 = *(v0 + 448);
    v27 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    (*(v30 + 8))(v28, v29);
    (*(v25 + 8))(v26, v27);
    (*(v24 + 8))(v39, v37);
    v45(v43, v41);
    (*(v23 + 8))(v49, v47);

    v22 = *(v0 + 8);
  }

  else
  {
    v44 = *(v0 + 816);
    v13 = *(v0 + 688);
    v46 = *(v0 + 680);
    v48 = *(v0 + 696);
    v51 = *(v0 + 664);
    v40 = *(v0 + 616);
    v42 = *(v0 + 648);
    v14 = *(v0 + 496);
    v38 = *(v0 + 504);
    v15 = *(v0 + 488);
    v16 = *(v0 + 464);
    v17 = *(v0 + 472);
    v18 = *(v0 + 448);
    v19 = *(v0 + 456);
    v20 = *(v0 + 432);
    v21 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    (*(v21 + 8))(v18, v20);
    (*(v16 + 8))(v17, v19);
    (*(v14 + 8))(v38, v15);
    v44(v42, v40);
    (*(v13 + 8))(v48, v46);
    sub_100007124(v51, &qword_10001D2B0, &qword_100014FA0);

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1000056F0()
{
  v1 = *v0;

  sub_10000701C(v1 + 29);
  v2 = v1[94];
  v3 = v1[93];

  return _swift_task_switch(sub_10000585C, v3, v2);
}

uint64_t sub_10000585C()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[53];
  type metadata accessor for MessageSendRules();
  v0[115] = static MessageSendRules.sharedInstance.getter();
  v5 = ResolvedFamily.requestingFamilyMember.getter();
  v0[116] = v5;
  v6 = ResolvedFamily.approvers.getter();
  v0[117] = v6;
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v11 = &async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:);
  v7 = swift_task_alloc();
  v0[118] = v7;
  *v7 = v0;
  v7[1] = sub_100005B20;
  v8 = v0[56];
  v9 = v0[53];

  return (v11)(v5, v6, 0, v8, v9);
}

uint64_t sub_1000059B4()
{
  v1 = *v0;

  sub_10000701C(v1 + 24);
  v2 = v1[94];
  v3 = v1[93];

  return _swift_task_switch(sub_1000071D0, v3, v2);
}

uint64_t sub_100005B20(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v4 = *(*v1 + 424);
  *(*v1 + 995) = a1;

  sub_100007124(v4, &qword_10001D2A0, &qword_100014E48);
  v5 = *(v2 + 752);
  v6 = *(v2 + 744);

  return _swift_task_switch(sub_100005CD4, v6, v5);
}

uint64_t sub_100005CD4()
{
  v54 = v0;
  if (*(v0 + 995) == 1)
  {
    v1 = *(v0 + 994);
    sub_100007124(*(v0 + 664), &qword_10001D2B0, &qword_100014FA0);
    if (DiscoveredHandles.allMembersMeetRequirements.getter())
    {
      *(v0 + 952) = DiscoveredHandles.iMessageHandles.getter();
      static PeopleLogger.messages.getter();

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 808);
      v6 = *(v0 + 600);
      v7 = *(v0 + 552);
      if (v4)
      {
        v52 = v1;
        v8 = swift_slowAlloc();
        v50 = v5;
        v9 = swift_slowAlloc();
        v53 = v9;
        *v8 = 136315138;
        v10 = Array.description.getter();
        v12 = sub_100007DDC(v10, v11, &v53);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v2, v3, "MessageComposer validated destinations %s", v8, 0xCu);
        sub_10000701C(v9);

        v1 = v52;

        v50(v6, v7);
      }

      else
      {

        v5(v6, v7);
      }

      v32 = *(v0 + 416);
      v33 = type metadata accessor for URL();
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      v34 = swift_task_alloc();
      *(v0 + 960) = v34;
      *v34 = v0;
      v34[1] = sub_100006438;
      v35 = *(v0 + 648);
      v36 = *(v0 + 416);

      return sub_10000BC34(v35, v1, v36);
    }

    v49 = *(v0 + 696);
    v23 = *(v0 + 688);
    v45 = *(v0 + 816);
    v47 = *(v0 + 680);
    v41 = *(v0 + 616);
    v43 = *(v0 + 648);
    v24 = *(v0 + 496);
    v39 = *(v0 + 504);
    v37 = *(v0 + 488);
    v25 = *(v0 + 464);
    v26 = *(v0 + 472);
    v28 = *(v0 + 448);
    v27 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    (*(v30 + 8))(v28, v29);
    (*(v25 + 8))(v26, v27);
    (*(v24 + 8))(v39, v37);
    v45(v43, v41);
    (*(v23 + 8))(v49, v47);

    v22 = *(v0 + 8);
  }

  else
  {
    v44 = *(v0 + 816);
    v13 = *(v0 + 688);
    v46 = *(v0 + 680);
    v48 = *(v0 + 696);
    v51 = *(v0 + 664);
    v40 = *(v0 + 616);
    v42 = *(v0 + 648);
    v14 = *(v0 + 496);
    v38 = *(v0 + 504);
    v15 = *(v0 + 488);
    v16 = *(v0 + 464);
    v17 = *(v0 + 472);
    v18 = *(v0 + 448);
    v19 = *(v0 + 456);
    v20 = *(v0 + 432);
    v21 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    (*(v21 + 8))(v18, v20);
    (*(v16 + 8))(v17, v19);
    (*(v14 + 8))(v38, v15);
    v44(v42, v40);
    (*(v13 + 8))(v48, v46);
    sub_100007124(v51, &qword_10001D2B0, &qword_100014FA0);

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_100006438(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[121] = a1;
  v4[122] = a2;
  v4[123] = v2;

  sub_100007124(v4[52], &qword_10001D298, &qword_100014E40);
  if (v2)
  {
    sub_100007124((v4 + 2), &qword_10001D2B8, &qword_100014E60);

    v5 = v4[94];
    v6 = v4[93];
    v7 = sub_100006B2C;
  }

  else
  {
    v5 = v4[94];
    v6 = v4[93];
    v7 = sub_1000065B0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000065B0()
{

  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;

  v3 = String._bridgeToObjectiveC()();

  MessageDetails.requestID.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v1 sendPayload:isa extensionBundleID:v3 chatGUID:v4 withRecipients:v5];

  if (v6)
  {
    static PeopleLogger.messages.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[122];
    v11 = v0[121];
    v36 = v0[102];
    v31 = v0[101];
    v12 = v0[87];
    v13 = v0[86];
    v37 = v0[85];
    v35 = v0[81];
    v34 = v0[77];
    v27 = v0[69];
    v28 = v0[74];
    v14 = v0[62];
    v32 = v0[61];
    v33 = v0[63];
    v15 = v0[58];
    v29 = v0[57];
    v30 = v0[59];
    v26 = v0[56];
    v16 = v0[55];
    v25 = v0[54];
    if (v9)
    {
      v22 = v0[121];
      v23 = v0[122];
      v24 = v0[87];
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Message send with imcore seems OK";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v18, v17, 2u);

      sub_100007068(v22, v23);

      v31(v28, v27);
      (*(v16 + 8))(v26, v25);
      (*(v15 + 8))(v30, v29);
      (*(v14 + 8))(v33, v32);
      v36(v35, v34);
      (*(v13 + 8))(v24, v37);
      goto LABEL_8;
    }
  }

  else
  {
    static PeopleLogger.messages.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v7, v8);
    v10 = v0[122];
    v11 = v0[121];
    v36 = v0[102];
    v31 = v0[101];
    v12 = v0[87];
    v13 = v0[86];
    v37 = v0[85];
    v35 = v0[81];
    v34 = v0[77];
    v27 = v0[69];
    v28 = v0[73];
    v14 = v0[62];
    v32 = v0[61];
    v33 = v0[63];
    v15 = v0[58];
    v29 = v0[57];
    v30 = v0[59];
    v26 = v0[56];
    v16 = v0[55];
    v25 = v0[54];
    if (v19)
    {
      v22 = v0[121];
      v23 = v0[122];
      v24 = v0[87];
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Message send with imcore failed";
      goto LABEL_6;
    }
  }

  sub_100007068(v11, v10);

  v31(v28, v27);
  (*(v16 + 8))(v26, v25);
  (*(v15 + 8))(v30, v29);
  (*(v14 + 8))(v33, v32);
  v36(v35, v34);
  (*(v13 + 8))(v12, v37);
LABEL_8:

  v20 = v0[1];

  return v20();
}

uint64_t sub_100006B2C()
{
  v15 = v0[102];
  v17 = v0[87];
  v1 = v0[86];
  v16 = v0[85];
  v13 = v0[77];
  v14 = v0[81];
  v2 = v0[62];
  v12 = v0[63];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[59];
  v6 = v0[56];
  v7 = v0[57];
  v8 = v0[54];
  v9 = v0[55];

  (*(v9 + 8))(v6, v8);
  (*(v4 + 8))(v5, v7);
  (*(v2 + 8))(v12, v3);
  v15(v14, v13);
  (*(v1 + 8))(v17, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100006DB4()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100006FA4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000701C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100007068(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000070BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006FA4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007124(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006FA4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10000739C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RootContainerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000074E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[2] = v7;
  v5[3] = *(v7 - 8);
  v5[4] = swift_task_alloc();
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_100007600;

  return sub_100002DB0(a5);
}

uint64_t sub_100007600()
{
  *(*v1 + 64) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1000077C4;
  }

  else
  {
    v4 = sub_10000775C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10000775C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000077C4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  static PeopleLogger.messages.getter();
  swift_errorRetain();
  Logger.ifError(_:message:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

id sub_1000079F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100007AA8()
{
  result = qword_10001D428;
  if (!qword_10001D428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D428);
  }

  return result;
}

uint64_t sub_100007AF4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100007BEC;

  return v6(a1);
}

uint64_t sub_100007BEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007CE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009CF8;

  return v6(a1);
}

unint64_t sub_100007DDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007EA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000972C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000701C(v11);
  return v7;
}

unint64_t sub_100007EA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007FB4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100007FB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008000(a1, a2);
  sub_100008130(&off_100018AF8);
  return v3;
}

char *sub_100008000(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000821C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000821C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100008130(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100008290(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000821C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100006FA4(&qword_10001D458, qword_100014F08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008290(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006FA4(&qword_10001D458, qword_100014F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100008384(uint64_t a1)
{
  v3 = sub_100006FA4(&qword_10001D438, &qword_100014EC8);
  v4 = __chkstk_darwin(v3 - 8);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v104 = &v98 - v6;
  v113 = type metadata accessor for PeopleURL.Scheme();
  v7 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006FA4(&qword_10001D440, &qword_100014ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v98 - v10;
  v12 = type metadata accessor for URLComponents();
  v105 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v100 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v14;
  __chkstk_darwin(v13);
  v115 = &v98 - v15;
  v132 = type metadata accessor for Logger();
  v16 = *(v132 - 8);
  v17 = __chkstk_darwin(v132);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v117 = &v98 - v21;
  __chkstk_darwin(v20);
  v124 = &v98 - v22;
  v127 = type metadata accessor for URL();
  v23 = *(v127 - 8);
  v24 = __chkstk_darwin(v127);
  __chkstk_darwin(v24);
  v134 = &v98 - v26;
  v27 = *(v1 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_messageComposer);
  if (!v27)
  {
    static PeopleLogger.messages.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v137[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100007DDC(0xD000000000000019, 0x8000000100014940, v137);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s impossible error, no peopleView", v36, 0xCu);
      sub_10000701C(v37);
    }

    (*(v16 + 8))(v19, v132);
    return;
  }

  v121 = v25;
  v123 = v11;
  v103 = v27;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = v27;

    __CocoaSet.makeIterator()();
    sub_100007AA8();
    sub_1000096E4(&qword_10001D430, sub_100007AA8, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v137[0];
    v30 = v137[1];
    v31 = v137[2];
    v32 = v137[3];
    v33 = v137[4];
  }

  else
  {
    v38 = -1 << *(a1 + 32);
    v30 = a1 + 56;
    v31 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v33 = v40 & *(a1 + 56);
    v41 = v27;

    v32 = 0;
  }

  v99 = v31;
  v42 = (v31 + 64) >> 6;
  v120 = (v23 + 16);
  v133 = (v23 + 8);
  v128 = (v16 + 8);
  v111 = "T@UIWindow,N,&,Vwindow";
  v119 = (v105 + 48);
  v114 = (v105 + 32);
  v110 = enum case for PeopleURL.Scheme.message(_:);
  v109 = (v7 + 104);
  v108 = (v7 + 8);
  v107 = (v105 + 8);
  v98 = v105 + 16;
  *&v29 = 136315650;
  v106 = v29;
  v126 = v12;
  v43 = v127;
  v118 = v42;
  v125 = a1;
  v122 = v30;
  while (a1 < 0)
  {
    v47 = __CocoaSet.Iterator.next()();
    if (!v47 || (v135 = v47, sub_100007AA8(), swift_dynamicCast(), v46 = v136[0], v131 = v33, !v136[0]))
    {
LABEL_43:
      sub_1000092C4(a1);

      return;
    }

LABEL_21:
    v48 = [v46 URL];
    v49 = v134;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v124;
    static PeopleLogger.messages.getter();
    v51 = v121;
    (*v120)(v121, v49, v43);
    v52 = v46;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    v55 = os_log_type_enabled(v53, v54);
    v130 = v52;
    if (v55)
    {
      v56 = v52;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v136[0] = v116;
      *v57 = v106;
      *(v57 + 4) = sub_100007DDC(0xD000000000000019, v111 | 0x8000000000000000, v136);
      *(v57 + 12) = 2112;
      *(v57 + 14) = v56;
      *v58 = v46;
      *(v57 + 22) = 2080;
      sub_1000096E4(&qword_10001D448, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v59 = v56;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v129 = *v133;
      v129(v51, v43);
      v63 = sub_100007DDC(v60, v62, v136);

      *(v57 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v53, v54, "%s url centext: %@ url: %s", v57, 0x20u);
      sub_100007124(v58, &qword_10001D450, &qword_100014FB0);

      swift_arrayDestroy();
      v12 = v126;
    }

    else
    {

      v129 = *v133;
      v129(v51, v43);
    }

    v64 = *v128;
    (*v128)(v50, v132);
    v65 = v123;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v66 = (*v119)(v65, 1, v12);
    a1 = v125;
    if (v66 == 1)
    {
      sub_100007124(v65, &qword_10001D440, &qword_100014ED0);
LABEL_31:
      v89 = v117;
      v30 = v122;
      v88 = v129;
      static PeopleLogger.messages.getter();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Url does not represent people/can't be parsed", v92, 2u);
        v12 = v126;
      }

      v64(v89, v132);
      v43 = v127;
      v42 = v118;
      goto LABEL_34;
    }

    v67 = *v114;
    v68 = v115;
    (*v114)(v115, v65, v12);
    URLComponents.scheme.getter();
    v69 = v12;
    v70 = v112;
    v71 = v113;
    (*v109)(v112, v110, v113);
    v72 = static PeopleURL.Scheme.== infix(_:_:)();

    (*v108)(v70, v71);
    if ((v72 & 1) == 0)
    {
      (*v107)(v68, v69);
      v12 = v69;
      goto LABEL_31;
    }

    if (sub_100002964())
    {
      v73 = type metadata accessor for TaskPriority();
      v116 = *(v73 - 8);
      v74 = v104;
      (*(v116 + 56))(v104, 1, 1, v73);
      v75 = v105;
      v76 = v100;
      v77 = v68;
      v78 = v126;
      (*(v105 + 16))(v100, v77, v126);
      type metadata accessor for MainActor();
      v79 = v103;
      v80 = static MainActor.shared.getter();
      v81 = (*(v75 + 80) + 40) & ~*(v75 + 80);
      v82 = swift_allocObject();
      *(v82 + 2) = v80;
      *(v82 + 3) = &protocol witness table for MainActor;
      *(v82 + 4) = v79;
      v83 = v76;
      v84 = v116;
      v85 = v78;
      v86 = v73;
      v67(&v82[v81], v83, v85);
      v87 = v102;
      sub_100009584(v74, v102);
      LODWORD(v80) = (*(v84 + 48))(v87, 1, v73);

      v88 = v129;
      if (v80 == 1)
      {
        sub_100007124(v87, &qword_10001D438, &qword_100014EC8);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v84 + 8))(v87, v86);
      }

      v93 = *(v82 + 2);
      swift_unknownObjectRetain();

      a1 = v125;
      v30 = v122;
      v42 = v118;
      if (v93)
      {
        swift_getObjectType();
        v94 = dispatch thunk of Actor.unownedExecutor.getter();
        v96 = v95;
        swift_unknownObjectRelease();
      }

      else
      {
        v94 = 0;
        v96 = 0;
      }

      v43 = v127;
      sub_100007124(v104, &qword_10001D438, &qword_100014EC8);
      v97 = swift_allocObject();
      *(v97 + 16) = &unk_100014EE0;
      *(v97 + 24) = v82;
      if (v96 | v94)
      {
        v136[1] = 0;
        v136[2] = 0;
        v136[3] = v94;
        v136[4] = v96;
      }

      swift_task_create();

      v12 = v126;
      (*v107)(v115, v126);
LABEL_34:
      v33 = v131;
      v88(v134, v43);
    }

    else
    {

      v12 = v126;
      (*v107)(v68, v126);
      v43 = v127;
      v30 = v122;
      v42 = v118;
      v33 = v131;
      v129(v134, v127);
    }
  }

  v44 = v32;
  v45 = v33;
  if (v33)
  {
LABEL_17:
    v131 = (v45 - 1) & v45;
    v46 = *(*(a1 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v45)))));
    if (!v46)
    {
      goto LABEL_43;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v32 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v32 >= v42)
    {
      goto LABEL_43;
    }

    v45 = *(v30 + 8 * v32);
    ++v44;
    if (v45)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1000092CC()
{
  v1 = type metadata accessor for URLComponents();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009398(uint64_t a1)
{
  v4 = *(type metadata accessor for URLComponents() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009490;

  return sub_1000074E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100009490()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009584(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006FA4(&qword_10001D438, &qword_100014EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000095F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000962C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009490;

  return sub_100007CE4(a1, v4);
}

uint64_t sub_1000096E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000972C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000978C(void *a1, void *a2)
{
  v3 = v2;
  v48 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v46 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v45 - v9;
  static PeopleLogger.messages.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100007DDC(0xD00000000000001FLL, 0x8000000100014980, &v49);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000701C(v14);
  }

  v15 = *(v6 + 8);
  v15(v10, v5);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v17 = result;
    v45[1] = v6;
    v18 = objc_opt_self();
    v47 = a1;
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = [objc_allocWithZone(UIWindow) initWithFrame:{v21, v23, v25, v27}];
    v29 = *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window) = v28;
    v30 = v28;

    v31 = v30;
    [v31 setOpaque:0];
    v32 = [objc_opt_self() clearColor];
    [v31 setBackgroundColor:v32];

    [v31 setWindowScene:v17];
    [v31 setRootViewController:*(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_rootViewController)];
    [v31 makeKeyAndVisible];
    v33 = [objc_allocWithZone(type metadata accessor for MessageComposer()) init];
    v34 = *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_messageComposer);
    *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_messageComposer) = v33;

    v35 = [v48 URLContexts];
    sub_100007AA8();
    sub_1000096E4(&qword_10001D430, sub_100007AA8, &protocol conformance descriptor for NSObject);
    v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *(v36 + 16);
    }

    if (v37)
    {
      v38 = [v48 URLContexts];
      v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100008384(v39);
    }

    else
    {
      v40 = v46;
      static PeopleLogger.messages.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_100007DDC(0xD00000000000001FLL, 0x8000000100014980, &v49);
        _os_log_impl(&_mh_execute_header, v41, v42, "%s missing URL data", v43, 0xCu);
        sub_10000701C(v44);
      }

      else
      {
      }

      return (v15)(v40, v5);
    }
  }

  return result;
}

uint64_t sub_100009CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006FA4(&qword_10001D438, &qword_100014EC8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000070BC(a3, v25 - v10, &qword_10001D438, &qword_100014EC8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007124(v11, &qword_10001D438, &qword_100014EC8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100006FA4(&qword_10001D568, &qword_100014FE0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007124(a3, &qword_10001D438, &qword_100014EC8);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007124(a3, &qword_10001D438, &qword_100014EC8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100006FA4(&qword_10001D568, &qword_100014FE0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000A010()
{
  v0 = type metadata accessor for RequestMessageDetailsBuilder();
  swift_allocObject();
  v7 = v0;
  v8 = &protocol witness table for RequestMessageDetailsBuilder;
  *&v6 = RequestMessageDetailsBuilder.init()();
  v4 = type metadata accessor for ContactFetcher();
  v5 = &protocol witness table for ContactFetcher;
  *&v3 = ContactFetcher.__allocating_init()();
  type metadata accessor for MessagePackage();
  v1 = swift_allocObject();
  sub_10001146C(&v6, v1 + 16);
  result = sub_10001146C(&v3, v1 + 56);
  qword_10001D930 = v1;
  return result;
}

uint64_t sub_10000A0B8()
{
  sub_100006FA4(&qword_10001D578, &qword_100015000);
  v0 = sub_100006FA4(&qword_10001D580, &qword_100015008);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100014F20;
  v4 = v3 + v2;
  v5 = (v4 + *(v0 + 48));
  v6 = enum case for MessageDetails.EventSource.screenTime(_:);
  v7 = type metadata accessor for MessageDetails.EventSource();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4, v6, v7);
  *v5 = 0xD000000000000029;
  v5[1] = 0x8000000100014AD0;
  v5[2] = 0xD000000000000011;
  v5[3] = 0x8000000100014B00;
  v5[4] = 0xD000000000000022;
  v5[5] = 0x8000000100014B20;
  v5[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[7] = v9;
  v10 = (v4 + v1 + *(v0 + 48));
  v8();
  *v10 = 0xD000000000000027;
  v10[1] = 0x8000000100014B50;
  v10[2] = 0x7975426F546B7341;
  v10[3] = 0xE800000000000000;
  v10[4] = 0xD000000000000022;
  v10[5] = 0x8000000100014B80;
  v10[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10[7] = v11;
  v12 = sub_10000B2F4(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10001D938 = v12;
  return result;
}

uint64_t sub_10000A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for URL();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10000A428, 0, 0);
}

uint64_t sub_10000A428(uint64_t a1)
{
  v30 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  static PeopleLogger.messages.getter();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[6];
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  if (v8)
  {
    v28 = v1[7];
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    v17 = URL.absoluteString.getter();
    v27 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_100007DDC(v17, v19, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v26, "Fetching %s", v15, 0xCu);
    sub_10000701C(v16);

    (*(v10 + 8))(v27, v28);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = Data.init(contentsOf:options:)();
  v22 = v1[2];
  *v22 = v21;
  v22[1] = v23;

  v24 = v1[1];

  return v24();
}

uint64_t sub_10000A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for Logger();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_100006FA4(&qword_10001D528, &qword_100014F90);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for MessageDetails.EventSource();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_10000A7EC, 0, 0);
}

uint64_t sub_10000A7EC()
{
  (*(v0[18] + 104))(v0[20], enum case for MessageDetails.EventSource.unknown(_:), v0[17]);
  sub_1000110C8(&qword_10001D530, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v2 = *(v0[18] + 8);
  v2(v0[20], v0[17]);

  if (v1)
  {
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    static PeopleLogger.messages.getter();
    swift_errorRetain();
    Logger.ifError(_:message:)();

    (*(v4 + 8))(v3, v5);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[17];
    (*(v9 + 16))(v8, v0[9], v10);
    if ((*(v9 + 88))(v8, v10) == enum case for MessageDetails.EventSource.screenTime(_:))
    {
      static PeopleConstants.screenTimeRequestEventTTL.getter();
    }

    else
    {
      v11 = v0[19];
      v12 = v0[17];
      static PeopleConstants.askToBuyEventTTL.getter();
      v2(v11, v12);
    }

    v13 = v0[10];
    sub_10000AFAC((v13 + 16), *(v13 + 40));
    v14 = swift_task_alloc();
    v0[21] = v14;
    *v14 = v0;
    v14[1] = sub_10000AB44;
    v15 = v0[16];
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[6];
    v19 = v0[7];

    return dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(v18, v16, v19, v17, 0, 1, v15, v13 + 56);
  }
}

uint64_t sub_10000AB44()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10000ACFC;
  }

  else
  {
    v2 = sub_10000AC58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000AC58()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10000ACFC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  static PeopleLogger.messages.getter();
  swift_errorRetain();
  Logger.ifError(_:message:)();

  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000AE1C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10000AFF0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for URLQueryItem();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000AF48()
{
  sub_10000701C((v0 + 16));
  sub_10000701C((v0 + 56));

  return swift_deallocClassInstance();
}

void *sub_10000AFAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_10000AFF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100006FA4(&qword_10001D570, &qword_100014FF8);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000B1C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000B1E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000B1E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006FA4(&qword_10001D538, &qword_100014FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10000B2F4(uint64_t a1)
{
  v2 = sub_100006FA4(&qword_10001D580, &qword_100015008);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100006FA4(&qword_10001D588, &unk_100015010);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = *(v2 + 48);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v31 = v9;

  sub_1000070BC(a1 + v10, v5, &qword_10001D580, &qword_100015008);
  v11 = sub_10000270C(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  v14 = &v5[v8];
  v30 = type metadata accessor for MessageDetails.EventSource();
  v15 = *(v30 - 8);
  v29 = *(v15 + 32);
  v16 = *(v15 + 72);
  v17 = a1 + v31 + v10;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    result = v29(v7[6] + v16 * v13, v5, v30);
    v19 = (v7[7] + (v13 << 6));
    v21 = *(v14 + 2);
    v20 = *(v14 + 3);
    v22 = *(v14 + 1);
    *v19 = *v14;
    v19[1] = v22;
    v19[2] = v21;
    v19[3] = v20;
    v23 = v7[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v7[2] = v25;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v26 = v17 + v31;
    sub_1000070BC(v17, v5, &qword_10001D580, &qword_100015008);
    v13 = sub_10000270C(v5);
    v17 = v26;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B538(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_100006FA4(&qword_10001D438, &qword_100014EC8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000B6A0, 0, 0);
}

uint64_t sub_10000B6A0()
{
  v37 = v0;
  if (static AMSBagHelper.isTrustedDomain(for:)())
  {
    v1 = v0[12];
    v2 = v0[13];
    v3 = v0[9];
    v4 = v0[8];
    v5 = v0[4];
    static TaskPriority.userInitiated.getter();
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
    (*(v3 + 16))(v1, v5, v4);
    v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    (*(v3 + 32))(v8 + v7, v1, v4);
    v9 = sub_100009CFC(0, 0, v2, &unk_100014FD8, v8);
    v0[14] = v9;
    v10 = swift_task_alloc();
    v0[15] = v10;
    v11 = sub_100006FA4(&qword_10001D568, &qword_100014FE0);
    *v10 = v0;
    v10[1] = sub_10000BA94;

    return Task<>.value.getter(v0 + 2, v9, v11);
  }

  else
  {
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[4];
    static PeopleLogger.messages.getter();
    (*(v14 + 16))(v12, v15, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[11];
    v21 = v0[8];
    v20 = v0[9];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    if (v18)
    {
      v35 = v0[5];
      v25 = swift_slowAlloc();
      v33 = v17;
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      sub_1000110C8(&qword_10001D448, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v22;
      v29 = v28;
      (*(v20 + 8))(v19, v21);
      v30 = sub_100007DDC(v27, v29, &v36);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v16, v33, "%s not in trusted list", v25, 0xCu);
      sub_10000701C(v26);

      (*(v23 + 8))(v34, v35);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    v31 = v0[1];

    return v31(0, 0xF000000000000000);
  }
}

uint64_t sub_10000BA94()
{

  return _swift_task_switch(sub_10000BB90, 0, 0);
}

uint64_t sub_10000BB90()
{

  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_10000BC34(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 784) = a2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a3;
  v4 = type metadata accessor for Logger();
  *(v3 + 232) = v4;
  *(v3 + 240) = *(v4 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v5 = type metadata accessor for URLQueryItem();
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v6 = type metadata accessor for ATURL.Parser();
  *(v3 + 344) = v6;
  *(v3 + 352) = *(v6 - 8);
  *(v3 + 360) = swift_task_alloc();
  sub_100006FA4(&qword_10001D440, &qword_100014ED0);
  *(v3 + 368) = swift_task_alloc();
  v7 = type metadata accessor for URLComponents();
  *(v3 + 376) = v7;
  *(v3 + 384) = *(v7 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  PartyApps = type metadata accessor for FirstPartyApps();
  *(v3 + 408) = PartyApps;
  *(v3 + 416) = *(PartyApps - 8);
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = sub_100006FA4(&qword_10001D298, &qword_100014E40);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v3 + 504) = v9;
  *(v3 + 512) = *(v9 - 8);
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  sub_100006FA4(&qword_10001D2B0, &qword_100014FA0);
  *(v3 + 560) = swift_task_alloc();
  v10 = type metadata accessor for MessageDetails.EventSource();
  *(v3 + 568) = v10;
  *(v3 + 576) = *(v10 - 8);
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  v11 = type metadata accessor for MessageDetails();
  *(v3 + 624) = v11;
  *(v3 + 632) = *(v11 - 8);
  *(v3 + 640) = swift_task_alloc();

  return _swift_task_switch(sub_10000C148, 0, 0);
}

uint64_t sub_10000C148()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  (*(v0[79] + 16))(v0[80], v0[27], v0[78]);
  MessageDetails.eventSource.getter();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = v0[77];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  if (v5 == 1)
  {
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v11(v6, enum case for MessageDetails.EventSource.unknown(_:), v0[71]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_100007124(v0[70], &qword_10001D2B0, &qword_100014FA0);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[70], v0[71]);
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  }

  v0[81] = v11;
  v13 = v0[76];
  v14 = v0[71];
  v0[82] = v12;
  v11(v13, v10, v14);
  v0[83] = sub_1000110C8(&qword_10001D530, &type metadata accessor for MessageDetails.EventSource, &protocol conformance descriptor for MessageDetails.EventSource);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v0[14] == v0[16] && v0[15] == v0[17])
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v16 = v0[76];
  v17 = v0[72];
  v18 = v0[71];
  v19 = *(v17 + 8);
  v0[84] = v19;
  v0[85] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v16, v18);

  if (v15)
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[78];
    v23 = v0[77];
    v24 = v0[71];
LABEL_24:
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v19(v23, v24);
    (*(v21 + 8))(v20, v22);

    v41 = v0[1];

    return v41();
  }

  if (qword_10001D148 != -1)
  {
    swift_once();
  }

  v25 = qword_10001D938;
  if (!*(qword_10001D938 + 16) || (v26 = sub_10000270C(v0[77]), (v27 & 1) == 0))
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[78];
    v23 = v0[77];
    v24 = v0[71];
    goto LABEL_24;
  }

  v28 = (*(v25 + 56) + (v26 << 6));
  v0[86] = v28[1];
  v0[87] = v28[2];
  v0[88] = v28[3];
  v0[89] = v28[4];
  v0[90] = v28[5];
  v0[91] = v28[6];
  v0[92] = v28[7];

  MessageDetails.thumbnailPath.getter();
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v0[63];
  v31 = v0[64];
  v32 = v0[62];
  URL.init(string:)();

  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    sub_100007124(v0[62], &qword_10001D298, &qword_100014E40);
LABEL_18:
    v34 = v0[52];
    v33 = v0[53];
    v35 = v0[51];
    v36 = MessageDetails.bundleId.getter();
    v38 = v37;
    v0[95] = v37;
    type metadata accessor for AppBundleResolver();
    if (!v38)
    {
      v36 = 0;
      v38 = 0xE000000000000000;
    }

    (*(v34 + 104))(v33, enum case for FirstPartyApps.none(_:), v35);
    v39 = swift_task_alloc();
    v0[96] = v39;
    *v39 = v0;
    v39[1] = sub_10000EC4C;
    v40 = v0[53];

    return static AppBundleResolver.resolveThumbnail(_:_:)(v36, v38, v40);
  }

  (*(v0[64] + 32))(v0[69], v0[62], v0[63]);
  v42 = swift_task_alloc();
  v0[93] = v42;
  *v42 = v0;
  v42[1] = sub_10000C8B0;
  v43 = v0[69];

  return sub_10000B538(v43);
}

uint64_t sub_10000C8B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = a2;
  v3[94] = a2;

  return _swift_task_switch(sub_10000C9B8, 0, 0);
}

uint64_t sub_10000C9B8()
{
  v302 = v0;
  v1 = v0;
  v2 = v0[94];
  if (v2 >> 60 == 15)
  {
    (*(v0[64] + 8))(v0[69], v0[63]);
    goto LABEL_6;
  }

  v3 = v0[9];
  v4 = v0[69];
  v6 = v0[63];
  v5 = v0[64];
  v7 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData:isa];

  sub_100010F9C(v3, v2);
  (*(v5 + 8))(v4, v6);
  if (v9)
  {
    v10 = v1[63];
    v11 = v1[64];
    v12 = v1[61];
    v13 = v1[28];
    URLComponents.init()();
    sub_1000070BC(v13, v12, &qword_10001D298, &qword_100014E40);
    v14 = *(v11 + 48);
    v298 = v1;
    v289 = v9;
    if (v14(v12, 1, v10) == 1)
    {
      sub_100007124(v1[61], &qword_10001D298, &qword_100014E40);
    }

    else
    {
      v25 = v1[47];
      v26 = v1[48];
      v27 = v1[46];
      (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v26 + 48))(v27, 1, v25) == 1)
      {
        v28 = v1[46];
        (*(v1[64] + 8))(v1[68], v1[63]);
        sub_100007124(v28, &qword_10001D440, &qword_100014ED0);
      }

      else
      {
        (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
        v29 = URLComponents.queryItems.getter();
        if (v29)
        {
          v285 = v14;
          v30 = v1[68];
          v294 = *(v29 + 16);
          if (v294)
          {
            v280 = v29;
            ATURL.Parser.init()();
            type metadata accessor for ATPayload();
            sub_1000110C8(&qword_10001D558, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
            sub_1000110C8(&qword_10001D560, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
            ATURL.Parser.parse<A>(_:from:)();
            v120 = v1[26];
            v121 = ATPayload.question.getter();
            ATQuestion.notificationText.getter();
            v123 = v122;

            if (!v123)
            {
              v124 = ATPayload.question.getter();
              ATQuestion.summary.getter();
            }

            v125 = v1[40];
            MessageDetails.notificationCaption.setter();

            v126 = 0;
            v127 = (v125 + 8);
            do
            {
              v128 = v126;
              if (v294 == v126)
              {
                break;
              }

              if (v126 >= v280[2])
              {
                __break(1u);
                return static AppBundleResolver.resolveThumbnail(_:_:)(v23, v24, v22);
              }

              (*(v125 + 16))(v298[42], v280 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v126, v298[39]);
              v129 = URLQueryItem.name.getter();
              v131 = v298[42];
              v132 = v298[39];
              v133 = v129 == 0x69616E626D756874 && v130 == 0xED0000617461446CLL;
              if (v133)
              {

                (*v127)(v131, v132);
                break;
              }

              ++v126;
              v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v23 = (*v127)(v131, v132);
            }

            while ((v134 & 1) == 0);
            v1 = v298;
            v246 = v298[68];
            v247 = v298[63];
            v248 = v298[64];
            v250 = v298[48];
            v249 = v298[49];
            v251 = v298[47];
            (*(v298[44] + 8))(v298[45], v298[43]);
            (*(v250 + 8))(v249, v251);
            (*(v248 + 8))(v246, v247);
            v133 = v294 == v128;
            v14 = v285;
            v9 = v289;
            v34 = v280;
            if (v133)
            {
              goto LABEL_18;
            }

            static PeopleLogger.messages.getter();
            v252 = Logger.logObject.getter();
            v253 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v252, v253))
            {
              v254 = swift_slowAlloc();
              *v254 = 0;
              _os_log_impl(&_mh_execute_header, v252, v253, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v254, 2u);
            }

            v255 = v298[38];
            v256 = v298[29];
            v257 = v298[30];

            (*(v257 + 8))(v255, v256);
            goto LABEL_22;
          }

          v115 = v1[63];
          v116 = v1[64];
          v118 = v1[48];
          v117 = v1[49];
          v119 = v1[47];

          (*(v118 + 8))(v117, v119);
          (*(v116 + 8))(v30, v115);
          v34 = &_swiftEmptyArrayStorage;
          v14 = v285;
LABEL_18:
          v35 = MessageDetails.thumbnailData.getter();
          if (v36 >> 60 != 15)
          {
            sub_100010F9C(v35, v36);
            goto LABEL_23;
          }

          v37 = UIImagePNGRepresentation(v9);
          if (v37)
          {
            v38 = v37;
            static Data._unconditionallyBridgeFromObjectiveC(_:)();
          }

LABEL_22:
          MessageDetails.thumbnailData.setter();
LABEL_23:
          MessageDetails.queryItems.getter();
          static PeopleLogger.messages.getter();

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v271 = v40;
            v41 = swift_slowAlloc();
            v269 = swift_slowAlloc();
            v300 = v269;
            *v41 = 134218242;
            *(v41 + 4) = v34[2];

            v272 = v41;
            *(v41 + 12) = 2080;
            v42 = v34[2];
            v281 = v34;
            if (v42)
            {
              v286 = v14;
              v43 = v298[40];
              v301[0] = &_swiftEmptyArrayStorage;
              sub_10000B1C8(0, v42, 0);
              v44 = &_swiftEmptyArrayStorage;
              v45 = *(v43 + 16);
              v43 += 16;
              v46 = v34 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
              v291 = *(v43 + 56);
              v295 = v45;
              v47 = (v43 - 8);
              do
              {
                v48 = v298[41];
                v49 = v298[39];
                v295(v48, v46, v49);
                v50 = URLQueryItem.name.getter();
                v52 = v51;
                (*v47)(v48, v49);
                v301[0] = v44;
                v54 = v44[2];
                v53 = v44[3];
                if (v54 >= v53 >> 1)
                {
                  sub_10000B1C8((v53 > 1), v54 + 1, 1);
                  v44 = v301[0];
                }

                v44[2] = v54 + 1;
                v55 = &v44[2 * v54];
                *(v55 + 4) = v50;
                *(v55 + 5) = v52;
                v46 += v291;
                --v42;
              }

              while (v42);
              v14 = v286;
            }

            v59 = v298[37];
            v60 = v298[29];
            v61 = v298[30];
            v62 = Array.description.getter();
            v64 = v63;
            v1 = v298;

            v65 = sub_100007DDC(v62, v64, &v300);

            *(v272 + 14) = v65;
            _os_log_impl(&_mh_execute_header, v39, v271, "Appending %ld additional components to conversation url: %s", v272, 0x16u);
            sub_10000701C(v269);

            v296 = *(v61 + 8);
            v296(v59, v60);
            v9 = v289;
            v34 = v281;
          }

          else
          {
            v56 = v1[37];
            v57 = v1[29];
            v58 = v1[30];

            v296 = *(v58 + 8);
            v296(v56, v57);
          }

          v66 = v1[63];
          v67 = v1[60];
          sub_10000AE1C(v34);
          URLComponents.queryItems.setter();
          URLComponents.url.getter();
          if (v14(v67, 1, v66) == 1)
          {
            v282 = v1[84];
            v68 = v1[79];
            v292 = v1[78];
            v297 = v1[80];
            v274 = v1[71];
            v278 = v1[77];
            v69 = v9;
            v70 = v1[60];
            v71 = v1;
            v72 = v1[50];
            v74 = v71[47];
            v73 = v71[48];

            sub_100007124(v70, &qword_10001D298, &qword_100014E40);
            static PeopleErrors.createError(_:code:)();
            swift_willThrow();

            (*(v73 + 8))(v72, v74);
            v282(v278, v274);
            (*(v68 + 8))(v297, v292);
            goto LABEL_100;
          }

          v75 = *(v1 + 784);
          (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
          if (v75 != 1)
          {
            v97 = [objc_allocWithZone(MSMessageTemplateLayout) init];
            [v97 setImage:v9];
            MessageDetails.notificationCaption.getter();
            v98 = String._bridgeToObjectiveC()();

            [v97 setCaption:v98];

            v99 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v97];
            v100 = v99;
LABEL_82:
            v288 = v100;
            v190 = [objc_allocWithZone(MSSession) init];
            v191 = [objc_allocWithZone(MSMessage) initWithSession:v190];

            URL._bridgeToObjectiveC()(v192);
            v194 = v193;
            [v191 setURL:v193];

            [v191 setLayout:v100];
            MessageDetails.notificationCaption.getter();
            v195 = String._bridgeToObjectiveC()();

            [v191 setSummaryText:v195];

            static PeopleLogger.messages.getter();
            v196 = v191;
            v197 = Logger.logObject.getter();
            v198 = static os_log_type_t.debug.getter();

            v293 = v196;
            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              v301[0] = v200;
              *v199 = 136315138;
              v201 = [v196 URL];
              if (v201)
              {
                v202 = v201;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v203 = 0;
              }

              else
              {
                v203 = 1;
              }

              v206 = v1[34];
              v207 = v1[29];
              (*(v1[64] + 56))(v1[55], v203, 1, v1[63]);
              v208 = String.init<A>(describing:)();
              v210 = sub_100007DDC(v208, v209, v301);

              *(v199 + 4) = v210;
              _os_log_impl(&_mh_execute_header, v197, v198, "message url %s", v199, 0xCu);
              sub_10000701C(v200);

              v296(v206, v207);
              v9 = v289;
              v196 = v293;
            }

            else
            {
              v204 = v1[34];
              v205 = v1[29];

              v296(v204, v205);
            }

            v211 = v9;
            v212 = UIImageJPEGRepresentation(v211, 0.4);
            if (v212)
            {
              v213 = v212;
              v214 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v216 = v215;

              v279 = v216;
              v284 = v214;
              v217.super.isa = Data._bridgeToObjectiveC()().super.isa;
            }

            else
            {

              v217.super.isa = 0;
              v279 = 0xF000000000000000;
              v284 = 0;
            }

            String.localized.getter();

            v218 = String._bridgeToObjectiveC()();

            v219 = [v196 ppl_pluginPayloadWithAppIconData:v217.super.isa appName:v218 allowDataPayloads:0];

            v220 = [v219 data];
            v290 = v211;
            if (v220)
            {
              v299 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v276 = v221;

              static PeopleLogger.messages.getter();
              v222 = Logger.logObject.getter();
              v223 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v222, v223))
              {
                v224 = swift_slowAlloc();
                *v224 = 0;
                _os_log_impl(&_mh_execute_header, v222, v223, "SPI Payload successful!", v224, 2u);
              }

              v262 = v1[84];
              v225 = v1[79];
              v263 = v1[78];
              v264 = v1[80];
              v260 = v1[71];
              v261 = v1[77];
              v226 = v1[64];
              v258 = v1[63];
              v259 = v1[67];
              v227 = v1[50];
              v229 = v1[47];
              v228 = v1[48];
              v230 = v1[33];
              v231 = v1[29];

              sub_100010F9C(v284, v279);
              v296(v230, v231);
              (*(v226 + 8))(v259, v258);
              (*(v228 + 8))(v227, v229);
              v262(v261, v260);
              (*(v225 + 8))(v264, v263);

              v232 = v1[1];

              return v232(v299, v276);
            }

            static PeopleLogger.messages.getter();
            v234 = Logger.logObject.getter();
            v235 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v234, v235))
            {
              v236 = swift_slowAlloc();
              *v236 = 0;
              _os_log_impl(&_mh_execute_header, v234, v235, "Message _pluginPayload create failed", v236, 2u);
            }

            v270 = v1[84];
            v237 = v1[79];
            v273 = v1[78];
            v277 = v1[80];
            v267 = v1[71];
            v268 = v1[77];
            v238 = v1[67];
            v71 = v1;
            v241 = v1 + 63;
            v240 = v1[63];
            v239 = v241[1];
            v242 = v71[48];
            v265 = v71[47];
            v266 = v71[50];
            v243 = v71[32];
            v244 = v71[29];

            v296(v243, v244);
            static PeopleErrors.createError(_:code:)();
            swift_willThrow();

            sub_100010F9C(v284, v279);
            (*(v239 + 8))(v238, v240);
            (*(v242 + 8))(v266, v265);
            v270(v268, v267);
            (*(v237 + 8))(v277, v273);
LABEL_100:

            v245 = v71[1];

            return v245();
          }

          v287 = v14;
          v76 = v1[77];
          v77 = v1[75];
          v78 = v1[72];
          v79 = v1[71];
          static PeopleLogger.messages.getter();
          (*(v78 + 16))(v77, v76, v79);
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.debug.getter();
          v82 = os_log_type_enabled(v80, v81);
          v83 = v1[84];
          v84 = v1[75];
          v85 = v1[71];
          v86 = v1[36];
          v87 = v1[29];
          if (v82)
          {
            v283 = v1[29];
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v301[0] = v89;
            *v88 = 136315138;
            v90 = MessageDetails.EventSource.rawValue.getter();
            v275 = v86;
            v92 = v91;
            v83(v84, v85);
            v93 = v90;
            v1 = v298;
            v94 = sub_100007DDC(v93, v92, v301);

            *(v88 + 4) = v94;
            _os_log_impl(&_mh_execute_header, v80, v81, "Using LP fallback for %s", v88, 0xCu);
            sub_10000701C(v89);

            v95 = v275;
            v96 = v283;
          }

          else
          {

            v83(v84, v85);
            v95 = v86;
            v96 = v87;
          }

          v296(v95, v96);
          v101 = enum case for MessageDetails.EventSource.screenTime(_:);
          (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v102 = v1[84];
          v103 = v1[74];
          v104 = v1[71];
          if (v1[18] == v1[20] && v1[19] == v1[21])
          {
            v102(v1[74], v1[71]);
          }

          else
          {
            v105 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v102(v103, v104);

            if ((v105 & 1) == 0)
            {
              MessageDetails.title.getter();
              v113 = String.trim()();

              if (v113._countAndFlagsBits == static MessageDetails.titleFallbackKey.getter() && v113._object == v114)
              {
              }

              else
              {
                v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v135 & 1) == 0)
                {
                  MessageDetails.title.getter();
                  goto LABEL_62;
                }
              }

              MessageDetails.notificationCaption.getter();
LABEL_62:
              v136 = v1[81];
              v137 = v1[73];
              v138 = v1[71];
              (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
              v136(v137, v101, v138);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              v139 = v1[84];
              v140 = v1[73];
              v141 = v1[71];
              if (v1[22] == v1[24] && v1[23] == v1[25])
              {
                v139(v1[73], v1[71]);
              }

              else
              {
                v142 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v139(v140, v141);

                if ((v142 & 1) == 0)
                {
                  type metadata accessor for ServerFeatureFlag();
                  static ServerFeatureFlag.shared.getter();
                  ServerFeatureFlag.lpForAskToBuyFallback.getter();
                  goto LABEL_68;
                }
              }

              type metadata accessor for ServerFeatureFlag();
              static ServerFeatureFlag.shared.getter();
              ServerFeatureFlag.lpForScreenTimeFallback.getter();
LABEL_68:

              object = String.trimToNil()().value._object;

              if (object)
              {
                v145 = v1[58];
                v144 = v1[59];
                URL.init(string:)();

                sub_100010FB0(v145, v144);
              }

              v146 = v1[63];
              v147 = v1[57];
              sub_1000070BC(v1[59], v147, &qword_10001D298, &qword_100014E40);
              LODWORD(v146) = v287(v147, 1, v146);
              sub_100007124(v147, &qword_10001D298, &qword_100014E40);
              if (v146 == 1)
              {
                v148 = v1[58];
                v149 = v1[59];
                URL.init(string:)();
                sub_100010FB0(v148, v149);
              }

              static PeopleLogger.messages.getter();
              v150 = Logger.logObject.getter();
              v151 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v150, v151))
              {
                v152 = v1[63];
                v153 = v1[59];
                v154 = swift_slowAlloc();
                v155 = swift_slowAlloc();
                *v154 = 138412290;
                swift_beginAccess();
                v156 = v287(v153, 1, v152);
                v157 = 0;
                if (!v156)
                {
                  v158 = v1[66];
                  v159 = v1[63];
                  v160 = v1[64];
                  (*(v160 + 16))(v158, v1[59], v159);
                  v161 = URL.absoluteString.getter();
                  v163 = v162;
                  (*(v160 + 8))(v158, v159);
                  sub_100011020();
                  swift_allocError();
                  *v164 = v161;
                  v164[1] = v163;
                  v1 = v298;
                  v157 = _swift_stdlib_bridgeErrorToNSError();
                }

                *(v154 + 4) = v157;
                *v155 = v157;
                _os_log_impl(&_mh_execute_header, v150, v151, "alternate url %@", v154, 0xCu);
                sub_100007124(v155, &qword_10001D450, &qword_100014FB0);
              }

              v165 = v1[63];
              v166 = v1[59];
              v167 = v1[56];
              v168 = v1[35];
              v169 = v1[29];

              v296(v168, v169);
              swift_beginAccess();
              sub_1000070BC(v166, v167, &qword_10001D298, &qword_100014E40);
              v171 = 0;
              v9 = v289;
              if (v287(v167, 1, v165) != 1)
              {
                v172 = v1[63];
                v173 = v1[64];
                v174 = v1[56];
                URL._bridgeToObjectiveC()(v170);
                v171 = v175;
                (*(v173 + 8))(v174, v172);
              }

              v176 = String._bridgeToObjectiveC()();

              v177 = UIImagePNGRepresentation(v289);
              if (v177)
              {
                v178 = v177;
                v179 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v181 = v180;

                v182.super.isa = Data._bridgeToObjectiveC()().super.isa;
                sub_100007068(v179, v181);
              }

              else
              {
                v182.super.isa = 0;
              }

              v183 = v1[92];
              v184 = v1[91];
              v185 = v1[59];
              v186 = [objc_opt_self() createRichLinkLayoutWithURL:v171 title:v176 imageData:v182.super.isa];

              v187 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v186];
              sub_100006FA4(&qword_10001D538, &qword_100014FA8);
              v188 = swift_allocObject();
              *(v188 + 16) = xmmword_100014F30;
              *(v188 + 32) = v184;
              *(v188 + 40) = v183;

              v100 = v187;
              v189 = Array._bridgeToObjectiveC()().super.isa;

              [v100 setPpl_requiredCapabilities:v189];

              sub_100007124(v185, &qword_10001D298, &qword_100014E40);
              goto LABEL_82;
            }
          }

          String.localized.getter();
          sub_100006FA4(&qword_10001D548, &qword_100014FB8);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_100014F20;
          v107 = MessageDetails.childName.getter();
          v109 = v108;
          *(v106 + 56) = &type metadata for String;
          v110 = sub_100011074();
          *(v106 + 64) = v110;
          *(v106 + 32) = v107;
          *(v106 + 40) = v109;
          v111 = MessageDetails.title.getter();
          *(v106 + 96) = &type metadata for String;
          *(v106 + 104) = v110;
          *(v106 + 72) = v111;
          *(v106 + 80) = v112;
          String.init(format:_:)();

          goto LABEL_62;
        }

        v31 = v1[68];
        v32 = v1[63];
        v33 = v1[64];
        (*(v1[48] + 8))(v1[49], v1[47]);
        (*(v33 + 8))(v31, v32);
      }
    }

    v34 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_6:
  v16 = v1[52];
  v15 = v1[53];
  v17 = v1[51];
  v18 = MessageDetails.bundleId.getter();
  v20 = v19;
  v1[95] = v19;
  type metadata accessor for AppBundleResolver();
  if (!v20)
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  (*(v16 + 104))(v15, enum case for FirstPartyApps.none(_:), v17);
  v21 = swift_task_alloc();
  v1[96] = v21;
  *v21 = v1;
  v21[1] = sub_10000EC4C;
  v22 = v1[53];
  v23 = v18;
  v24 = v20;

  return static AppBundleResolver.resolveThumbnail(_:_:)(v23, v24, v22);
}

uint64_t sub_10000EC4C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[53];
  v6 = v3[52];
  v7 = v3[51];
  v4[97] = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10000EDD8, 0, 0);
}

void sub_10000EDD8()
{
  v289 = v0;
  v1 = v0;
  v2 = v0[97];
  if (v2 >> 60 == 15 || (v3 = v0[12], v4 = objc_allocWithZone(UIImage), isa = Data._bridgeToObjectiveC()().super.isa, v6 = [v4 initWithData:isa], isa, sub_100010F9C(v3, v2), !v6))
  {
    v7 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() imageNamed:v7];
  }

  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[61];
  v11 = v0[28];
  URLComponents.init()();
  sub_1000070BC(v11, v10, &qword_10001D298, &qword_100014E40);
  v12 = *(v9 + 48);
  v286 = v0;
  v278 = v6;
  if (v12(v10, 1, v8) == 1)
  {
    sub_100007124(v0[61], &qword_10001D298, &qword_100014E40);
LABEL_12:
    v22 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v13 = v0[47];
  v14 = v0[48];
  v15 = v1[46];
  (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v1[46];
    (*(v1[64] + 8))(v1[68], v1[63]);
    sub_100007124(v16, &qword_10001D440, &qword_100014ED0);
    goto LABEL_12;
  }

  (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
  v17 = URLComponents.queryItems.getter();
  if (!v17)
  {
    v19 = v1[68];
    v20 = v1[63];
    v21 = v1[64];
    (*(v1[48] + 8))(v1[49], v1[47]);
    (*(v21 + 8))(v19, v20);
    goto LABEL_12;
  }

  v18 = v1[68];
  v283 = *(v17 + 16);
  if (!v283)
  {
    v103 = v1[63];
    v104 = v1[64];
    v106 = v1[48];
    v105 = v1[49];
    v107 = v1[47];

    (*(v106 + 8))(v105, v107);
    (*(v104 + 8))(v18, v103);
    v22 = &_swiftEmptyArrayStorage;
LABEL_13:
    v23 = MessageDetails.thumbnailData.getter();
    if (v24 >> 60 == 15)
    {
      if (v6)
      {
        v25 = UIImagePNGRepresentation(v6);
        if (v25)
        {
          v26 = v25;
          static Data._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      MessageDetails.thumbnailData.setter();
    }

    else
    {
      sub_100010F9C(v23, v24);
    }

    goto LABEL_19;
  }

  v267 = v17;
  ATURL.Parser.init()();
  type metadata accessor for ATPayload();
  sub_1000110C8(&qword_10001D558, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_1000110C8(&qword_10001D560, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  ATURL.Parser.parse<A>(_:from:)();
  v108 = v1[26];
  v109 = ATPayload.question.getter();
  ATQuestion.notificationText.getter();
  v111 = v110;

  v276 = v12;
  if (!v111)
  {
    v112 = ATPayload.question.getter();
    ATQuestion.summary.getter();
  }

  v113 = v1[40];
  MessageDetails.notificationCaption.setter();

  v114 = 0;
  v115 = (v113 + 8);
  do
  {
    v116 = v114;
    if (v283 == v114)
    {
      break;
    }

    if (v114 >= v267[2])
    {
      __break(1u);
      return;
    }

    (*(v113 + 16))(v286[42], v267 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v114, v286[39]);
    v117 = URLQueryItem.name.getter();
    v119 = v286[42];
    v120 = v286[39];
    if (v117 == 0x69616E626D756874 && v118 == 0xED0000617461446CLL)
    {

      (*v115)(v119, v120);
      break;
    }

    ++v114;
    v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v115)(v119, v120);
  }

  while ((v122 & 1) == 0);
  v1 = v286;
  v235 = v286[68];
  v236 = v286[63];
  v237 = v286[64];
  v239 = v286[48];
  v238 = v286[49];
  v240 = v286[47];
  (*(v286[44] + 8))(v286[45], v286[43]);
  (*(v239 + 8))(v238, v240);
  (*(v237 + 8))(v235, v236);
  v12 = v276;
  v6 = v278;
  v22 = v267;
  if (v283 == v116)
  {
    goto LABEL_13;
  }

  static PeopleLogger.messages.getter();
  v241 = Logger.logObject.getter();
  v242 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v241, v242))
  {
    v243 = swift_slowAlloc();
    *v243 = 0;
    _os_log_impl(&_mh_execute_header, v241, v242, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v243, 2u);
  }

  v244 = v286[38];
  v245 = v286[29];
  v246 = v286[30];

  (*(v246 + 8))(v244, v245);
  MessageDetails.thumbnailData.setter();
  v22 = v267;
LABEL_19:
  MessageDetails.queryItems.getter();
  static PeopleLogger.messages.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v259 = v28;
    v274 = v12;
    v29 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v287 = v258;
    *v29 = 134218242;
    *(v29 + 4) = v22[2];

    v262 = v29;
    *(v29 + 12) = 2080;
    v30 = v22[2];
    v268 = v22;
    if (v30)
    {
      v31 = v1[40];
      v288[0] = &_swiftEmptyArrayStorage;
      sub_10000B1C8(0, v30, 0);
      v32 = &_swiftEmptyArrayStorage;
      v33 = *(v31 + 16);
      v31 += 16;
      v34 = v22 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v280 = *(v31 + 56);
      v284 = v33;
      v35 = (v31 - 8);
      do
      {
        v36 = v286[41];
        v37 = v286[39];
        v284(v36, v34, v37);
        v38 = URLQueryItem.name.getter();
        v40 = v39;
        (*v35)(v36, v37);
        v288[0] = v32;
        v42 = v32[2];
        v41 = v32[3];
        if (v42 >= v41 >> 1)
        {
          sub_10000B1C8((v41 > 1), v42 + 1, 1);
          v32 = v288[0];
        }

        v32[2] = v42 + 1;
        v43 = &v32[2 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v40;
        v34 += v280;
        --v30;
      }

      while (v30);
      v1 = v286;
      v6 = v278;
    }

    v49 = v1[37];
    v51 = v1[29];
    v50 = v1[30];
    v52 = Array.description.getter();
    v54 = v53;

    v55 = sub_100007DDC(v52, v54, &v287);

    *(v262 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v27, v259, "Appending %ld additional components to conversation url: %s", v262, 0x16u);
    sub_10000701C(v258);

    v47 = *(v50 + 8);
    v47(v49, v51);
    v12 = v274;
    v48 = v268;
  }

  else
  {
    v44 = v1[37];
    v45 = v1[29];
    v46 = v1[30];

    v47 = *(v46 + 8);
    v47(v44, v45);
    v48 = v22;
  }

  v56 = v1[63];
  v57 = v1[60];
  sub_10000AE1C(v48);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if (v12(v57, 1, v56) == 1)
  {
    v272 = v1[84];
    v58 = v1[79];
    v279 = v1[78];
    v281 = v1[80];
    v263 = v1[71];
    v269 = v1[77];
    v59 = v1[60];
    v60 = v1;
    v61 = v1[50];
    v63 = v60[47];
    v62 = v60[48];

    sub_100007124(v59, &qword_10001D298, &qword_100014E40);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();

    (*(v62 + 8))(v61, v63);
    v272(v269, v263);
    (*(v58 + 8))(v281, v279);
LABEL_100:

    v234 = v60[1];

    v234();
    return;
  }

  v64 = *(v1 + 784);
  (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
  v65 = &MSMessageConverter__metaData;
  v285 = v47;
  if (v64 != 1)
  {
    v85 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    [v85 setImage:v6];
    MessageDetails.notificationCaption.getter();
    v86 = String._bridgeToObjectiveC()();

    [v85 setCaption:v86];

    v87 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v85];
    v88 = v87;
    goto LABEL_80;
  }

  v275 = v12;
  v66 = v1[77];
  v67 = v1[75];
  v68 = v1[72];
  v69 = v1[71];
  static PeopleLogger.messages.getter();
  (*(v68 + 16))(v67, v66, v69);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v1[84];
  v74 = v1[75];
  v75 = v1[71];
  v76 = v1[36];
  v77 = v1[29];
  if (v72)
  {
    v270 = v1[29];
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v288[0] = v79;
    *v78 = 136315138;
    v80 = MessageDetails.EventSource.rawValue.getter();
    v264 = v76;
    v82 = v81;
    v73(v74, v75);
    v83 = v80;
    v1 = v286;
    v84 = sub_100007DDC(v83, v82, v288);

    *(v78 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v70, v71, "Using LP fallback for %s", v78, 0xCu);
    sub_10000701C(v79);

    v285(v264, v270);
  }

  else
  {

    v73(v74, v75);
    v47(v76, v77);
  }

  v89 = enum case for MessageDetails.EventSource.screenTime(_:);
  (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v90 = v1[84];
  v91 = v1[74];
  v92 = v1[71];
  if (v1[18] == v1[20] && v1[19] == v1[21])
  {
    v90(v1[74], v1[71]);

LABEL_39:
    String.localized.getter();
    sub_100006FA4(&qword_10001D548, &qword_100014FB8);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_100014F20;
    v95 = MessageDetails.childName.getter();
    v97 = v96;
    *(v94 + 56) = &type metadata for String;
    v98 = sub_100011074();
    *(v94 + 64) = v98;
    *(v94 + 32) = v95;
    *(v94 + 40) = v97;
    v99 = MessageDetails.title.getter();
    *(v94 + 96) = &type metadata for String;
    *(v94 + 104) = v98;
    *(v94 + 72) = v99;
    *(v94 + 80) = v100;
    String.init(format:_:)();

    goto LABEL_58;
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v90(v91, v92);

  if (v93)
  {
    goto LABEL_39;
  }

  MessageDetails.title.getter();
  v101 = String.trim()();

  if (v101._countAndFlagsBits == static MessageDetails.titleFallbackKey.getter() && v101._object == v102)
  {
  }

  else
  {
    v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v123 & 1) == 0)
    {
      MessageDetails.title.getter();
      goto LABEL_58;
    }
  }

  MessageDetails.notificationCaption.getter();
LABEL_58:
  v124 = v1[81];
  v125 = v1[73];
  v126 = v1[71];
  (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
  v124(v125, v89, v126);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v127 = v1[84];
  v128 = v1[73];
  v129 = v1[71];
  if (v1[22] == v1[24] && v1[23] == v1[25])
  {
    v127(v1[73], v1[71]);

    v47 = v285;
  }

  else
  {
    v130 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v127(v128, v129);

    v47 = v285;
    if ((v130 & 1) == 0)
    {
      type metadata accessor for ServerFeatureFlag();
      static ServerFeatureFlag.shared.getter();
      ServerFeatureFlag.lpForAskToBuyFallback.getter();
      goto LABEL_64;
    }
  }

  type metadata accessor for ServerFeatureFlag();
  static ServerFeatureFlag.shared.getter();
  ServerFeatureFlag.lpForScreenTimeFallback.getter();
LABEL_64:

  object = String.trimToNil()().value._object;

  if (object)
  {
    v133 = v1[58];
    v132 = v1[59];
    URL.init(string:)();

    sub_100010FB0(v133, v132);
  }

  v134 = v1[63];
  v135 = v1[57];
  sub_1000070BC(v1[59], v135, &qword_10001D298, &qword_100014E40);
  LODWORD(v134) = v275(v135, 1, v134);
  sub_100007124(v135, &qword_10001D298, &qword_100014E40);
  if (v134 == 1)
  {
    v136 = v1[58];
    v137 = v1[59];
    URL.init(string:)();
    sub_100010FB0(v136, v137);
  }

  static PeopleLogger.messages.getter();
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = v1[63];
    v141 = v1[59];
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *v142 = 138412290;
    swift_beginAccess();
    v144 = v275(v141, 1, v140);
    v145 = 0;
    if (!v144)
    {
      v146 = v1[66];
      v148 = v1[63];
      v147 = v1[64];
      (*(v147 + 16))(v146, v1[59], v148);
      v149 = URL.absoluteString.getter();
      v151 = v150;
      (*(v147 + 8))(v146, v148);
      sub_100011020();
      swift_allocError();
      *v152 = v149;
      v152[1] = v151;
      v1 = v286;
      v145 = _swift_stdlib_bridgeErrorToNSError();
    }

    *(v142 + 4) = v145;
    *v143 = v145;
    _os_log_impl(&_mh_execute_header, v138, v139, "alternate url %@", v142, 0xCu);
    sub_100007124(v143, &qword_10001D450, &qword_100014FB0);

    v47 = v285;
  }

  v153 = v1[63];
  v154 = v1[59];
  v155 = v1[56];
  v156 = v1[35];
  v157 = v1[29];

  v47(v156, v157);
  swift_beginAccess();
  sub_1000070BC(v154, v155, &qword_10001D298, &qword_100014E40);
  v159 = 0;
  if (v275(v155, 1, v153) != 1)
  {
    v161 = v1[63];
    v160 = v1[64];
    v162 = v1[56];
    URL._bridgeToObjectiveC()(v158);
    v159 = v163;
    (*(v160 + 8))(v162, v161);
  }

  v164 = String._bridgeToObjectiveC()();

  if (v278)
  {
    v165 = UIImagePNGRepresentation(v278);
    v65 = &MSMessageConverter__metaData;
    if (v165)
    {
      v166 = v165;
      v167 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v169 = v168;

      v170.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100007068(v167, v169);
    }

    else
    {
      v170.super.isa = 0;
    }
  }

  else
  {
    v170.super.isa = 0;
    v65 = &MSMessageConverter__metaData;
  }

  v171 = v1[92];
  v172 = v1[91];
  v173 = v1[59];
  v174 = [objc_opt_self() createRichLinkLayoutWithURL:v159 title:v164 imageData:v170.super.isa];

  v175 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v174];
  sub_100006FA4(&qword_10001D538, &qword_100014FA8);
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_100014F30;
  *(v176 + 32) = v172;
  *(v176 + 40) = v171;

  v88 = v175;
  v177 = Array._bridgeToObjectiveC()().super.isa;

  [v88 setPpl_requiredCapabilities:v177];

  sub_100007124(v173, &qword_10001D298, &qword_100014E40);
  v6 = v278;
LABEL_80:
  v277 = v88;
  v178 = [objc_allocWithZone(MSSession) v65[31].ivars];
  v179 = [objc_allocWithZone(MSMessage) initWithSession:v178];

  URL._bridgeToObjectiveC()(v180);
  v182 = v181;
  [v179 setURL:v181];

  [v179 setLayout:v88];
  MessageDetails.notificationCaption.getter();
  v183 = String._bridgeToObjectiveC()();

  [v179 setSummaryText:v183];

  static PeopleLogger.messages.getter();
  v184 = v179;
  v185 = Logger.logObject.getter();
  v186 = static os_log_type_t.debug.getter();

  v282 = v184;
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v288[0] = v188;
    *v187 = 136315138;
    v189 = [v184 URL];
    if (v189)
    {
      v190 = v189;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v191 = 0;
    }

    else
    {
      v191 = 1;
    }

    v194 = v1[34];
    v195 = v1[29];
    (*(v1[64] + 56))(v1[55], v191, 1, v1[63]);
    v196 = String.init<A>(describing:)();
    v198 = sub_100007DDC(v196, v197, v288);

    *(v187 + 4) = v198;
    _os_log_impl(&_mh_execute_header, v185, v186, "message url %s", v187, 0xCu);
    sub_10000701C(v188);

    v285(v194, v195);
    v6 = v278;
    if (!v278)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v192 = v1[34];
    v193 = v1[29];

    v47(v192, v193);
    if (!v6)
    {
      goto LABEL_90;
    }
  }

  v199 = v6;
  v200 = UIImageJPEGRepresentation(v199, 0.4);
  if (v200)
  {
    v201 = v200;
    v202 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v204 = v203;

    v271 = v204;
    v273 = v202;
    v205.super.isa = Data._bridgeToObjectiveC()().super.isa;
    goto LABEL_91;
  }

LABEL_90:
  v205.super.isa = 0;
  v271 = 0xF000000000000000;
  v273 = 0;
LABEL_91:

  String.localized.getter();

  v206 = String._bridgeToObjectiveC()();

  v207 = [v184 ppl_pluginPayloadWithAppIconData:v205.super.isa appName:v206 allowDataPayloads:0];

  v208 = [v207 data];
  if (!v208)
  {
    static PeopleLogger.messages.getter();
    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      *v225 = 0;
      _os_log_impl(&_mh_execute_header, v223, v224, "Message _pluginPayload create failed", v225, 2u);
    }

    v257 = v1[84];
    v226 = v1[79];
    v261 = v1[78];
    v266 = v1[80];
    v255 = v1[71];
    v256 = v1[77];
    v227 = v1[67];
    v60 = v1;
    v230 = v1 + 63;
    v229 = v1[63];
    v228 = v230[1];
    v231 = v60[48];
    v253 = v60[47];
    v254 = v60[50];
    v232 = v60[32];
    v233 = v60[29];

    v285(v232, v233);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();

    sub_100010F9C(v273, v271);
    (*(v228 + 8))(v227, v229);
    (*(v231 + 8))(v254, v253);
    v257(v256, v255);
    (*(v226 + 8))(v266, v261);
    goto LABEL_100;
  }

  v209 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v260 = v210;
  v265 = v209;

  static PeopleLogger.messages.getter();
  v211 = Logger.logObject.getter();
  v212 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v211, v212))
  {
    v213 = swift_slowAlloc();
    *v213 = 0;
    _os_log_impl(&_mh_execute_header, v211, v212, "SPI Payload successful!", v213, 2u);
  }

  v251 = v1[84];
  v214 = v1[80];
  v215 = v1[79];
  v252 = v1[78];
  v249 = v1[71];
  v250 = v1[77];
  v216 = v1[64];
  v247 = v1[63];
  v248 = v1[67];
  v217 = v1[50];
  v219 = v1[47];
  v218 = v1[48];
  v220 = v1[33];
  v221 = v1[29];

  sub_100010F9C(v273, v271);
  v285(v220, v221);
  (*(v216 + 8))(v248, v247);
  (*(v218 + 8))(v217, v219);
  v251(v250, v249);
  (*(v215 + 8))(v214, v252);

  v222 = v286[1];

  v222(v265, v260);
}

uint64_t sub_100010F9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100007068(result, a2);
  }

  return result;
}

uint64_t sub_100010FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006FA4(&qword_10001D298, &qword_100014E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100011020()
{
  result = qword_10001D540;
  if (!qword_10001D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D540);
  }

  return result;
}

unint64_t sub_100011074()
{
  result = qword_10001D550;
  if (!qword_10001D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D550);
  }

  return result;
}

uint64_t sub_1000110C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011110()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000111D4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009490;

  return sub_10000A30C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000112C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000112FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011488;

  return sub_100007AF4(a1, v4);
}

uint64_t sub_1000113B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009490;

  return sub_100007AF4(a1, v4);
}

uint64_t sub_10001146C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::String __swiftcall String.trim()()
{
  v0 = String.trim()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v0 = String.trimToNil()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}