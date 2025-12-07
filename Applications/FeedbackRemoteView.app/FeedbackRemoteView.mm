uint64_t sub_100001738()
{
  v0 = type metadata accessor for Logger();
  sub_100006358(v0, qword_100011498);
  sub_10000622C(v0, qword_100011498);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000017BC()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_1000017FC()
{
  v1 = OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_remoteEvaluationRequest;
  v2 = type metadata accessor for FBKSRemoteEvaluationRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000018A8(char a1)
{
  v2 = v1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FeedbackRemoteViewController();
  objc_msgSendSuper2(&v25, "viewWillAppear:", a1 & 1);
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 environment];

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v6 + 16))
  {
  }

  v7 = sub_10000507C(0xD000000000000014, 0x8000000100008160);
  if ((v8 & 1) == 0)
  {
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v11 = *v9;
  v10 = v9[1];

  if ((FBKSHasInternalDiagnostics() & 1) == 0)
  {
  }

  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000622C(v12, qword_100011498);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100004AD4(v11, v10, &v24);
    _os_log_impl(&_mh_execute_header, v13, v14, "Using form from scheme %s", v15, 0xCu);
    sub_1000062AC(v16);
  }

  v17 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v18 = FBKFeedbackForm.init(identifier:)();
  objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
  v19 = v18;
  v20 = FBKFeedbackDraftViewController.init(feedbackForm:)();
  swift_unknownObjectRetain();
  dispatch thunk of FBKFeedbackDraftViewController.delegate.setter();
  type metadata accessor for FeedbackRemoteViewController.FormRequestState();
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = *&v2[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
  *&v2[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = v21;
  return sub_10000641C(v22);
}

void sub_100001BAC(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FeedbackRemoteViewController();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000622C(v4, qword_100011498);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100004AD4(0xD000000000000011, 0x8000000100008140, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_1000062AC(v8);
  }

  sub_100001E2C();
}

void sub_100001E2C()
{
  v1 = type metadata accessor for FBKSEvaluation.Subject();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
  if ((~v10 & 0xF000000000000007) == 0)
  {
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000622C(v11, qword_100011498);
    v45 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v45, v12, "Not configured yet. Will not present UI", v13, 2u);
    }

    v14 = v45;

    return;
  }

  v45 = v7;
  v15 = v10 & 0x7FFFFFFFFFFFFFFFLL;

  v16 = [v0 view];
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 window];

  if (!v18)
  {
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000622C(v25, qword_100011498);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No window. Will not present UI", v28, 2u);
    }

    sub_100004198();
    goto LABEL_34;
  }

  v19 = qword_100011490;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v20 = *(v10 + 32);

    if (v20)
    {
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000622C(v21, qword_100011498);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Feedback UI already presented.", v24, 2u);
      }

      sub_10000641C(v10);
      goto LABEL_34;
    }

    v34 = v0;
    if (v19 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000622C(v35, qword_100011498);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Presenting Feedback UI", v38, 2u);
    }

    *(v10 + 32) = 1;
    v31 = *(v10 + 24);
    [v34 presentViewController:v31 animated:1 completion:0];
    sub_10000641C(v10);
LABEL_33:

LABEL_34:

    sub_10000641C(v10);
    return;
  }

  v29 = OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_isPresented;
  if (*(v15 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_isPresented))
  {
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000622C(v30, qword_100011498);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Evaluation Feedback UI already presented.", v33, 2u);
    }

    goto LABEL_33;
  }

  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000622C(v39, qword_100011498);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v44 = v29;
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Starting evaluation", v42, 2u);
    v29 = v44;
  }

  *(v15 + v29) = 1;
  v43 = *(v15 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_evaluationController);
  FBKSRemoteEvaluationRequest.action.getter();
  *v4 = FBKSRemoteEvaluationRequest.interaction.getter();
  (*(v2 + 104))(v4, enum case for FBKSEvaluation.Subject.interaction(_:), v1);
  FBKSRemoteEvaluationRequest.associateWithAppleAccount.getter();
  dispatch thunk of FBKEvaluationController.userDidPerformAction(action:subject:showFeedbackForm:associateWithAppleAccount:retryCount:)();

  sub_10000641C(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v9, v45);
}

uint64_t sub_10000259C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100006264(&qword_100011748, &qword_100007DA0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000063BC(v5, &qword_1000116E0, &unk_100007D90);
    return 0;
  }
}

void sub_100002674(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = v3;
  v98 = a3;
  v94 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FBKSRemoteAlertRequest();
  v96 = *(v9 - 8);
  v10 = *(v96 + 64);
  v11 = __chkstk_darwin(v9);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v81 - v13;
  __chkstk_darwin(v12);
  v95 = &v81 - v15;
  v16 = sub_10000259C();
  if (v16)
  {
    [v16 setAllowsAlertStacking:1];
    swift_unknownObjectRelease();
  }

  v97 = v9;
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000622C(v17, qword_100011498);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_100004AD4(0xD00000000000001BLL, 0x80000001000080A0, &aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s", v20, 0xCu);
    sub_1000062AC(v21);
  }

  if (!a1)
  {
    __break(1u);
  }

  v22 = [a1 userInfo];
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v100 = 0x74736575716572;
  v101 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v24 + 16) || (v25 = sub_1000050F4(&aBlock), (v26 & 1) == 0))
  {

    sub_10000648C(&aBlock);
LABEL_28:
    v108 = 0u;
    v109 = 0u;
    goto LABEL_29;
  }

  sub_1000062F8(*(v24 + 56) + 32 * v25, &v108);
  sub_10000648C(&aBlock);

  if (!*(&v109 + 1))
  {
LABEL_29:
    sub_1000063BC(&v108, &qword_1000116E0, &unk_100007D90);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_100004AD4(0xD00000000000001BLL, 0x80000001000080A0, &aBlock);
      _os_log_impl(&_mh_execute_header, v59, v60, "%s Failed to get request data.", v61, 0xCu);
      sub_1000062AC(v62);
    }

    if (a2)
    {
      a2();
      sub_100004198();
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  v86 = aBlock;
  v85 = v103;
  v27 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  v28 = [a1 xpcEndpoint];
  if (!v28)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v27 _setEndpoint:v28];
  swift_unknownObjectRelease();
  v29 = objc_allocWithZone(NSXPCConnection);
  v84 = v27;
  v30 = [v29 initWithListenerEndpoint:v27];
  v31 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15FeedbackService33RemoteViewControllerReplyProtocol_];
  [v30 setRemoteObjectInterface:v31];

  v106 = sub_1000035D4;
  v107 = 0;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_1000035F4;
  v105 = &unk_10000C6F8;
  v32 = _Block_copy(&aBlock);
  [v30 setInvalidationHandler:v32];
  _Block_release(v32);
  v106 = sub_100003638;
  v107 = 0;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_1000035F4;
  v105 = &unk_10000C720;
  v33 = _Block_copy(&aBlock);
  [v30 setInterruptionHandler:v33];
  _Block_release(v33);
  v87 = v30;
  [v30 resume];
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Anonymous xpc connection created", v36, 2u);
  }

  v106 = sub_100003658;
  v107 = 0;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_1000037FC;
  v105 = &unk_10000C748;
  v37 = _Block_copy(&aBlock);
  v38 = [v87 remoteObjectProxyWithErrorHandler:v37];
  _Block_release(v37);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000062F8(&v108, &aBlock);
  sub_100006264(&qword_100011750, &qword_100007DA8);
  v39 = swift_dynamicCast();
  v40 = v100;
  if (!v39)
  {
    v40 = 0;
  }

  v41 = OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd;
  *&v4[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd] = v40;
  swift_unknownObjectRelease();
  v99 = 0;
  v42 = SBSGetScreenLockStatus();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    LODWORD(v83) = v44;
    v45 = v42 != 0;
    v46 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    v82 = v41;
    v47 = aBlock;
    *v46 = 67240450;
    *(v46 + 4) = v45;
    *(v46 + 8) = 2082;
    swift_beginAccess();
    v48 = DarwinBoolean.description.getter();
    v50 = sub_100004AD4(v48, v49, &aBlock);

    *(v46 + 10) = v50;
    _os_log_impl(&_mh_execute_header, v43, v83, "Is device locked? [%{BOOL,public}d] passcodeRequired [%{public}s]", v46, 0x12u);
    sub_1000062AC(v47);
    v41 = v82;
  }

  v51 = v85;
  swift_beginAccess();
  if (!v99)
  {
    sub_1000067A8(&qword_100011758, 255, &type metadata accessor for FBKSRemoteAlertRequest, &protocol conformance descriptor for FBKSRemoteAlertRequest);
    v63 = v97;
    static JSONCodable.decode(from:)();
    v64 = v96;
    v65 = *(v96 + 32);
    v66 = v95;
    v65(v95, v14, v63);
    sub_10000654C();
    v83 = static OS_dispatch_queue.main.getter();
    v67 = v64;
    v68 = *(v64 + 16);
    v69 = v88;
    v68(v88, v66, v63);
    v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v71 = (v10 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    v65((v72 + v70), v69, v63);
    *(v72 + v71) = v4;
    v73 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
    v74 = v98;
    *v73 = a2;
    v73[1] = v74;
    v106 = sub_100006650;
    v107 = v72;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_1000035F4;
    v105 = &unk_10000C7C0;
    v75 = _Block_copy(&aBlock);
    v76 = v4;
    sub_1000066EC(a2, v74);

    v77 = v89;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000067A8(&qword_100011768, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100006264(&qword_100011770, &qword_100007DB0);
    sub_1000066FC();
    v78 = v91;
    v79 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v80 = v83;
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    sub_1000064F8(v86, v85);
    _Block_release(v75);

    (*(v93 + 8))(v78, v79);
    (*(v90 + 8))(v77, v92);
    (*(v96 + 8))(v95, v63);
    goto LABEL_35;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Detected race condition with remote alert launching while device is locked from remote view", v54, 2u);
  }

  v55 = *&v4[v41];
  v56 = v86;
  if (v55)
  {
    v106 = sub_100003864;
    v107 = 0;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_1000035F4;
    v105 = &unk_10000C770;
    v57 = _Block_copy(&aBlock);
    [v55 remoteViewControllerDidLaunchWhileLockedWithCompletion:v57];
    _Block_release(v57);
  }

  v58 = v84;
  if (a2)
  {
    a2();
    sub_100004198();

    sub_1000064F8(v56, v51);
LABEL_35:
    sub_1000062AC(&v108);
    return;
  }

LABEL_39:
  __break(1u);
  __break(1u);
}

uint64_t sub_1000035F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100003658(uint64_t a1)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000622C(v1, qword_100011498);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_errorRetain();
    sub_100006264(&qword_100011788, qword_100007DB8);
    v5 = String.init<A>(describing:)();
    v7 = sub_100004AD4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to connect to feedbackd from remote alert view controller: [%{public}s]", v3, 0xCu);
    sub_1000062AC(v4);
  }

  else
  {
  }
}

void sub_1000037FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100003884(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v72 = a4;
  v73 = a2;
  v74 = a3;
  v5 = type metadata accessor for FBKSRemoteEvaluationRequest();
  v70 = *(v5 - 1);
  v71 = v5;
  v6 = __chkstk_darwin(v5);
  v69 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v68 - v8;
  v10 = type metadata accessor for FBKSRemoteAlertRequest();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  __chkstk_darwin(v15);
  v19 = (&v68 - v18);
  v20 = *(v11 + 16);
  v20(&v68 - v18, a1, v10);
  v21 = (*(v11 + 88))(v19, v10);
  if (v21 != enum case for FBKSRemoteAlertRequest.form(_:))
  {
    if (v21 != enum case for FBKSRemoteAlertRequest.evaluation(_:))
    {
      if (qword_100011490 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_10000622C(v54, qword_100011498);
      v20(v17, a1, v10);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v75 = v71;
        *v57 = 136315138;
        v20(v14, v17, v10);
        v58 = String.init<A>(describing:)();
        v60 = v59;
        v61 = *(v11 + 8);
        v61(v17, v10);
        v62 = sub_100004AD4(v58, v60, &v75);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "Unknown request type %s. Closing the connection.", v57, 0xCu);
        sub_1000062AC(v71);
      }

      else
      {

        v61 = *(v11 + 8);
        v63 = (v61)(v17, v10);
      }

      if (v74)
      {
        v74(v63);
        sub_100004198();
        v61(v19, v10);
        goto LABEL_22;
      }

LABEL_29:
      __break(1u);
      return;
    }

    (*(v11 + 96))(v19, v10);
    v39 = v70;
    v38 = v71;
    v40 = v19;
    v41 = *(v70 + 32);
    v41(v9, v40, v71);
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000622C(v42, qword_100011498);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Configuring with Interaction", v45, 2u);
    }

    type metadata accessor for FBKEvaluationController();
    sub_1000067A8(&qword_100011780, v46, type metadata accessor for FeedbackRemoteViewController, &unk_100007D58);
    v47 = v73;
    v48 = FBKEvaluationController.__allocating_init(delegate:)();
    dispatch thunk of FBKEvaluationController.blockPresentationDetentUsage.setter();
    v49 = v69;
    (*(v39 + 16))(v69, v9, v38);
    type metadata accessor for FeedbackRemoteViewController.RemoteEvaluationControllerState(0);
    v50 = swift_allocObject();
    *(v50 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_isPresented) = 0;
    v41((v50 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_remoteEvaluationRequest), v49, v38);
    *(v50 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_evaluationController) = v48;
    v51 = *&v47[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
    *&v47[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = v50 | 0x8000000000000000;
    v52 = v48;

    v53 = sub_10000641C(v51);
    if (v74)
    {
      v74(v53);

      (*(v39 + 8))(v9, v38);
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*(v11 + 96))(v19, v10);
  v22 = *v19;
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000622C(v23, qword_100011498);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Configuring with Form", v26, 2u);
  }

  type metadata accessor for FBKFeedbackForm();
  v27 = v22;
  v28 = FBKFeedbackForm.__allocating_init(serviceForm:)();
  v29 = objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
  v30 = v28;
  v31 = FBKFeedbackDraftViewController.init(feedbackForm:)();
  v32 = v73;
  swift_unknownObjectRetain();
  dispatch thunk of FBKFeedbackDraftViewController.delegate.setter();
  type metadata accessor for FeedbackRemoteViewController.FormRequestState();
  v33 = swift_allocObject();
  *(v33 + 32) = 0;
  *(v33 + 16) = v30;
  *(v33 + 24) = v31;
  v34 = *&v32[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
  *&v32[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = v33;
  v35 = v30;
  v36 = v31;
  v37 = sub_10000641C(v34);
  if (!v74)
  {
    __break(1u);
    goto LABEL_28;
  }

  v74(v37);

LABEL_22:
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_10000622C(v64, qword_100011498);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "Did configure remote alert controller", v67, 2u);
  }
}

void *sub_100004198()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_100004AD4(0x292865736F6C63, 0xE700000000000000, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_1000062AC(v4);
  }

  result = sub_10000259C();
  if (result)
  {
    [result invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000448C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FeedbackRemoteViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for FeedbackRemoteViewController.RemoteEvaluationControllerState(uint64_t a1)
{
  result = qword_1000115F0;
  if (!qword_1000115F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000045A8(uint64_t a1)
{
  result = type metadata accessor for FBKSRemoteEvaluationRequest();
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

uint64_t sub_100004934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100004990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_100004A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FBKEvaluationControllerDelegate.evaluationDidComplete(controller:response:)(a1, a2, a3, WitnessTable);
}

unint64_t sub_100004AD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004BA0(v11, 0, 0, 1, a1, a2);
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
    sub_1000062F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000062AC(v11);
  return v7;
}

unint64_t sub_100004BA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004CAC(a5, a6);
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

char *sub_100004CAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004CF8(a1, a2);
  sub_100004E28(&off_10000C618);
  return v3;
}

char *sub_100004CF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004F14(v5, 0);
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
        v7 = sub_100004F14(v10, 0);
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

uint64_t sub_100004E28(uint64_t result)
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

  result = sub_100004F88(result, v11, 1, v3);
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

void *sub_100004F14(uint64_t a1, uint64_t a2)
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

  sub_100006264(&qword_1000116C8, &qword_100007D88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004F88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006264(&qword_1000116C8, &qword_100007D88);
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

unint64_t sub_10000507C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005138(a1, a2, v4);
}

unint64_t sub_1000050F4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000051F0(a1, v4);
}

unint64_t sub_100005138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000051F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000067F0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000648C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1000054A8(void (*a1)(void))
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000622C(v2, qword_100011498);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_100004AD4(0xD000000000000026, 0x80000001000080F0, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_1000062AC(v6);
  }

  if (a1)
  {
    a1();
  }
}

void *sub_100005600(uint64_t a1, unint64_t a2)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000622C(v4, qword_100011498);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100004AD4(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Controller complete with ID: %{public}s", v7, 0xCu);
    sub_1000062AC(v8);
  }

  return sub_100004198();
}

void *sub_100005764(uint64_t a1)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000622C(v1, qword_100011498);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = FBKDraftError.description.getter();
    v8 = sub_100004AD4(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Controller failed to start, error: %{public}s", v4, 0xCu);
    sub_1000062AC(v5);
  }

  return sub_100004198();
}

void sub_1000058C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000622C(v8, qword_100011498);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136380931;
    sub_1000067A8(&qword_1000116D8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_100004AD4(v12, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = FBKAttachmentError.description.getter();
    v18 = sub_100004AD4(v16, v17, &v20);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Controller failed to attach, url: %{private}s error  %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void *sub_100005B78()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Controller cancelled.", v3, 2u);
  }

  return sub_100004198();
}

void *sub_100005C64(void *a1)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000622C(v2, qword_100011498);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    type metadata accessor for FBKSubmissionError();
    sub_1000067A8(&qword_1000116D0, 255, &type metadata accessor for FBKSubmissionError, &protocol conformance descriptor for FBKSubmissionError);
    v8 = Error.localizedDescription.getter();
    v10 = sub_100004AD4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to submit feedback.%s", v6, 0xCu);
    sub_1000062AC(v7);
  }

  return sub_100004198();
}

void sub_100005E18(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000622C(v4, qword_100011498);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

void *sub_100005F10()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_100004AD4(0xD00000000000002DLL, 0x8000000100008070, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_1000062AC(v4);
  }

  return sub_100004198();
}

void *sub_100006064(uint64_t a1)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000622C(v1, qword_100011498);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_100004AD4(0xD000000000000024, 0x8000000100008020, &v9);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s %@", v4, 0x16u);
    sub_1000063BC(v5, &qword_1000116C0, &qword_100007D80);

    sub_1000062AC(v6);
  }

  return sub_100004198();
}

uint64_t sub_10000622C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006264(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000062AC(void *a1)
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

uint64_t sub_1000062F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100006358(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000063BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006264(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000641C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_100006434(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006444()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000064E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10000654C()
{
  result = qword_100011760;
  if (!qword_100011760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011760);
  }

  return result;
}

uint64_t sub_100006598()
{
  v1 = type metadata accessor for FBKSRemoteAlertRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

void sub_100006650()
{
  v1 = *(type metadata accessor for FBKSRemoteAlertRequest() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_100003884(v0 + v2, v4, v6, v7);
}

uint64_t sub_1000066EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000066FC()
{
  result = qword_100011778;
  if (!qword_100011778)
  {
    sub_100006760(&qword_100011770, &qword_100007DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011778);
  }

  return result;
}

uint64_t sub_100006760(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000067A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100006970(uint64_t a1, uint64_t a2)
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

id sub_100006B10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}