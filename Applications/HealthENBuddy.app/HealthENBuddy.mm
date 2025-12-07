id sub_10000165C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000017B0(uint64_t a1, uint64_t a2)
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

id sub_100001938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100001A6C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v64 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = __chkstk_darwin(v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v55 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v57 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v68 = &v55 - v16;
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = Logger.buddy.unsafeMutableAddressor();
  v20 = *(v12 + 16);
  v20(v18, v19, v11);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v56 = v12;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "HealthENBuddyContainer viewDidAppear", v23, 2u);
    v12 = v56;
  }

  v24 = *(v12 + 8);
  v24(v18, v11);
  v25 = type metadata accessor for HealthENBuddyContainer();
  v70.receiver = v2;
  v70.super_class = v25;
  objc_msgSendSuper2(&v70, "viewDidAppear:", a1 & 1);
  v2[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
  v26 = [v2 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = v26;
  v28 = [v26 window];

  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = [v28 _rootSheetPresentationController];

  if (!v29)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v29 _setShouldScaleDownBehindDescendantSheets:0];

LABEL_7:
  v30 = *&v2[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region];
  if (v30)
  {
    v20(v68, v19, v11);
    v31 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Fetch all entities", v34, 2u);
    }

    v24(v68, v11);
    v35 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v36 = *v35;
    v37 = swift_allocObject();
    *(v37 + 16) = v2;
    *(v37 + 24) = v31;
    v38 = *((swift_isaMask & *v36) + 0x180);
    v68 = v31;
    v39 = v36;
    v40 = v2;
    v38(sub_10000552C, v37);

    sub_100005534(0, &qword_1000118C8, OS_dispatch_queue_ptr);
    v41 = static OS_dispatch_queue.main.getter();
    v42 = v58;
    static DispatchTime.now()();
    v43 = v59;
    + infix(_:_:)();
    v44 = v61;
    v60 = *(v60 + 8);
    (v60)(v42, v61);
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    aBlock[4] = sub_1000055B4;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C5E0;
    v46 = _Block_copy(aBlock);
    v47 = v40;

    v48 = v62;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000055D4();
    sub_100005288(&qword_1000118D8, &qword_100006680);
    sub_10000562C();
    v49 = v64;
    v50 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v46);

    (*(v66 + 8))(v49, v50);
    (*(v63 + 8))(v48, v65);
    (v60)(v43, v44);
  }

  else
  {
    v51 = v57;
    v20(v57, v19, v11);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Cannot create onboarding stack without region.", v54, 2u);
    }

    v24(v51, v11);
  }
}

uint64_t sub_10000228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v63 = a7;
  v65 = a5;
  v66 = a6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v64 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - v12;
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  v16 = Logger.buddy.unsafeMutableAddressor();
  v17 = *(v8 + 16);
  v17(v15, v16, v7);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Got entities", v20, 2u);
  }

  v21 = *(v8 + 8);
  v21(v15, v7);
  v22 = v65;
  if (v65)
  {
    v17(v13, v16, v7);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v64 = v21;
      v26 = v25;
      v27 = swift_slowAlloc();
      v67 = v22;
      aBlock[0] = v27;
      *v26 = 136315138;
      swift_errorRetain();
      sub_100005288(&qword_1000118E8, &qword_100006688);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000046B4(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Could not fetch entities: %s", v26, 0xCu);
      sub_1000052D0(v27);

      v64(v13, v7);
    }

    else
    {

      v21(v13, v7);
    }

    v46 = swift_allocObject();
    v47 = v66;
    *(v46 + 16) = v66;
    aBlock[4] = sub_100005758;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C6A8;
    v48 = _Block_copy(aBlock);
    v49 = v47;

    [v49 dismissViewControllerAnimated:1 completion:v48];
    _Block_release(v48);
  }

  else
  {
    v31 = v64;
    v17(v64, v16, v7);
    v32 = v63;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    v35 = &ViewController;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v36 = 136315138;
      v37 = [v32 regionCode];
      v65 = v7;
      v38 = v37;
      v39 = v31;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_1000046B4(v40, v42, aBlock);

      *(v36 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v33, v34, "Fetch agency model for region %s", v36, 0xCu);
      sub_1000052D0(v63);

      v44 = v39;
      v35 = &ViewController;
      v45 = v65;
    }

    else
    {

      v44 = v31;
      v45 = v7;
    }

    v21(v44, v45);
    v51 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v52 = *v51;
    v53 = [v32 v35[51].base_props];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = swift_allocObject();
    v58 = v66;
    *(v57 + 16) = v32;
    *(v57 + 24) = v58;
    v59 = *((swift_isaMask & *v52) + 0x178);
    v60 = v58;
    v61 = v32;
    v59(v54, v56, 0, sub_1000056E0, v57);
  }
}

void sub_100002898(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  if (a1)
  {
    v56 = a1;
    v57 = a3;
    v15 = a1;
    v16 = Logger.buddy.unsafeMutableAddressor();
    (*(v9 + 16))(v14, v16, v8);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58 = a4;
      v22 = v21;
      aBlock[0] = v21;
      *v20 = 136315138;
      v23 = [*&v17[direct field offset for ENUIPublicHealthAgencyModel.region] regionCode];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v8;
      v25 = v24;
      v27 = v26;

      v28 = sub_1000046B4(v25, v27, aBlock);

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Got agency model for region %s", v20, 0xCu);
      sub_1000052D0(v22);
      a4 = v58;

      (*(v9 + 8))(v14, v55);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    v39 = *ViewControllerFactory.shared.unsafeMutableAddressor();
    v40 = v17;
    v41 = v39;
    v42 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v43 = *v42;
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = *((swift_isaMask & *v41) + 0xB0);
    v46 = v43;

    v47 = v45(v56, v46, 1, 0, 0, sub_100005720, v44);

    [v47 setModalPresentationStyle:2];
    [a4 presentViewController:v47 animated:1 completion:0];
    *(a4 + OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent) = 1;
    swift_beginAccess();
    v48 = *((swift_isaMask & **v42) + 0x140);
    v49 = *v42;
    v48(v57, 2);
  }

  else
  {
    v58 = a4;
    v29 = Logger.buddy.unsafeMutableAddressor();
    (*(v9 + 16))(v12, v29, v8);
    v30 = a3;
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v33 = 138412546;
      *(v33 + 4) = v30;
      *v34 = v30;
      *(v33 + 12) = 2080;
      v59 = a2;
      v35 = v30;
      swift_errorRetain();
      sub_100005288(&qword_1000118F0, qword_100006690);
      v36 = String.init<A>(describing:)();
      v38 = sub_1000046B4(v36, v37, aBlock);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Did not get agency model for %@: %s", v33, 0x16u);
      sub_100005430(v34, &qword_1000118C0, &qword_100006678);

      sub_1000052D0(v57);
    }

    (*(v9 + 8))(v12, v8);
    v50 = swift_allocObject();
    v51 = v58;
    *(v50 + 16) = v58;
    aBlock[4] = sub_100005758;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C6F8;
    v52 = _Block_copy(aBlock);
    v53 = v51;

    [v53 dismissViewControllerAnimated:1 completion:v52];
    _Block_release(v52);
  }
}

void sub_100002EF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &aBlock[-1] - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &aBlock[-1] - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &aBlock[-1] - v15;
  __chkstk_darwin(v14);
  v18 = &aBlock[-1] - v17;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v23 = Logger.buddy.unsafeMutableAddressor();
      (*(v4 + 16))(v18, v23, v3);
      v20 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v20, v24))
      {
LABEL_18:
        v7 = v18;
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v20, v24, "User cancelled", v25, 2u);
LABEL_17:

      goto LABEL_18;
    }

    if (a1 == 1)
    {
      v32 = Logger.buddy.unsafeMutableAddressor();
      (*(v4 + 16))(v16, v32, v3);
      v20 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v20, v33, "User completed", v34, 2u);
        v18 = v16;
        goto LABEL_17;
      }

      v7 = v16;
      goto LABEL_19;
    }

LABEL_25:
    aBlock[0] = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (a1 == 2)
  {
    v26 = Logger.buddy.unsafeMutableAddressor();
    (*(v4 + 16))(v13, v26, v3);
    v20 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v20, v27, "User opted out", v28, 2u);
      v18 = v13;
      goto LABEL_17;
    }

    v7 = v13;
    goto LABEL_19;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v29 = Logger.buddy.unsafeMutableAddressor();
      (*(v4 + 16))(v7, v29, v3);
      v20 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v20, v30))
      {
        goto LABEL_19;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v20, v30, "System Error", v31, 2u);
      v18 = v7;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v19 = Logger.buddy.unsafeMutableAddressor();
  (*(v4 + 16))(v10, v19, v3);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Region unavailable", v22, 2u);
    v18 = v10;
    goto LABEL_17;
  }

  v7 = v10;
LABEL_19:

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    aBlock[4] = sub_100005758;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C770;
    v38 = _Block_copy(aBlock);
    v39 = v36;

    [v39 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);
  }
}

void sub_100003448(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent) & 1) == 0)
  {
    v6 = Logger.buddy.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v6, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Did not hear back from EN within 5 seconds, so dismissing.", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    aBlock[4] = sub_1000056D8;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C630;
    v11 = _Block_copy(aBlock);
    v12 = a1;

    [v12 dismissViewControllerAnimated:0 completion:v11];
    _Block_release(v11);
  }
}

uint64_t sub_100003668(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100003700(void *a1)
{
  if ([a1 _remoteViewControllerProxy])
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
  if (!*(&v4 + 1))
  {
    return sub_100005430(v5, &qword_1000118A8, &unk_100006658);
  }

  sub_100005288(&qword_1000118B0, &qword_100006668);
  result = swift_dynamicCast();
  if (result)
  {
    [v2 dismiss];
    [v2 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000037EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v92 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v13 = __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v18 = &v79 - v17;
  if (a1)
  {
    v84 = v16;
    v85 = v15;
    v91 = v3;
    v82 = v14;
    v19 = a1;
    v20 = Logger.buddy.unsafeMutableAddressor();
    v21 = *(v8 + 16);
    v87 = v20;
    v88 = v21;
    v89 = v8 + 16;
    (v21)(v18);
    v22 = v19;
    v23 = v8;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    v26 = os_log_type_enabled(v24, v25);
    v90 = v22;
    if (v26)
    {
      v86 = v23;
      v83 = v7;
      v80 = a3;
      v81 = a2;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v95[0] = v29;
      *v27 = 138412546;
      *(v27 + 4) = v22;
      *v28 = a1;
      *(v27 + 12) = 2080;
      v30 = [v22 userInfo];
      if (v30)
      {
        v31 = v30;
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v32 = 0;
      }

      v34 = v83;
      *&v96 = v32;
      sub_100005288(&qword_1000118B8, &qword_100006670);
      v36 = String.init<A>(describing:)();
      v38 = sub_1000046B4(v36, v37, v95);

      *(v27 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v24, v25, "Configure with context %@ userinfo %s", v27, 0x16u);
      sub_100005430(v28, &qword_1000118C0, &qword_100006678);

      sub_1000052D0(v29);

      v35 = v86;
      v33 = *(v86 + 8);
      v33(v18, v34);
      a2 = v81;
      a3 = v80;
    }

    else
    {

      v33 = *(v23 + 8);
      v33(v18, v7);
      v34 = v7;
      v35 = v23;
    }

    v39 = [v91 _remoteViewControllerProxy];
    v40 = v90;
    v41 = v92;
    if (v39)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v95[0] = v96;
    v95[1] = v97;
    if (*(&v97 + 1))
    {
      sub_100005288(&qword_1000118B0, &qword_100006668);
      if (swift_dynamicCast())
      {
        v42 = v93;
        [v93 setDesiredHardwareButtonEvents:16];
        [v42 setAllowsMenuButtonDismissal:0];
        [v42 setAllowsAlertItems:0];
        v43 = [v40 userInfo];
        if (v43)
        {
          v86 = v35;
          v44 = v43;
          v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v93 = 0xD000000000000011;
          v94 = 0x80000001000068D0;
          AnyHashable.init<A>(_:)();
          if (*(v45 + 16) && (v46 = sub_100004C5C(v95), (v47 & 1) != 0))
          {
            sub_100005344(*(v45 + 56) + 32 * v46, &v96);
            sub_1000053A4(v95);
            if (swift_dynamicCast())
            {
              v92 = v42;
              v83 = v34;
              *&v96 = 0xD000000000000015;
              *(&v96 + 1) = 0x80000001000068F0;
              AnyHashable.init<A>(_:)();
              if (*(v45 + 16) && (v48 = sub_100004C5C(v95), (v49 & 1) != 0))
              {
                v50 = v40;
                sub_100005344(*(v45 + 56) + 32 * v48, &v96);
                sub_1000053A4(v95);

                if (swift_dynamicCast())
                {
                  v51 = v94;
                }

                else
                {
                  v51 = 0;
                }
              }

              else
              {
                v50 = v40;

                sub_1000053A4(v95);
                v51 = 0;
              }

              v63 = String._bridgeToObjectiveC()();

              if (v51)
              {
                v64 = String._bridgeToObjectiveC()();
              }

              else
              {
                v64 = 0;
              }

              v40 = v50;
              v65 = [objc_allocWithZone(ENRegion) initWithCountryCode:v63 subdivisionCode:v64];

              v66 = *&v91[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region];
              *&v91[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = v65;

              v67 = v82;
              v68 = v83;
              v88(v82, v87, v83);
              sub_100005278(a2, a3);
              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.error.getter();
              sub_100005220(a2, a3);
              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                *&v96 = v72;
                *v71 = 136315138;
                if (a2)
                {
                  v73 = swift_allocObject();
                  *(v73 + 16) = a2;
                  *(v73 + 24) = a3;
                  v74 = sub_10000576C;
                }

                else
                {
                  v74 = 0;
                  v73 = 0;
                }

                *&v95[0] = v74;
                *(&v95[0] + 1) = v73;
                sub_100005278(a2, a3);
                sub_100005288(&qword_100011898, &qword_100006648);
                v76 = String.init<A>(describing:)();
                v78 = sub_1000046B4(v76, v77, &v96);

                *(v71 + 4) = v78;
                _os_log_impl(&_mh_execute_header, v69, v70, "Calling completion: %s", v71, 0xCu);
                sub_1000052D0(v72);

                v75 = (v33)(v82, v83);
                v40 = v50;
              }

              else
              {

                v75 = (v33)(v67, v68);
              }

              if (a2)
              {
                a2(v75);
              }

              goto LABEL_35;
            }
          }

          else
          {

            sub_1000053A4(v95);
          }

          v88(v85, v87, v34);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, "Did not get region country code, but we need it for the region.", v58, 2u);
          }

          v59 = (v33)(v85, v34);
          if (!a2)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v88(v84, v87, v34);
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&_mh_execute_header, v60, v61, "Did not get user info, but we need it for the region.", v62, 2u);
          }

          v59 = (v33)(v84, v34);
          if (!a2)
          {
            goto LABEL_35;
          }
        }

        a2(v59);
LABEL_35:
        swift_unknownObjectRelease();
LABEL_36:

        return;
      }
    }

    else
    {
      sub_100005430(v95, &qword_1000118A8, &unk_100006658);
    }

    v88(v41, v87, v34);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Could not get a SBUIRemoteAlertHostInterface", v54, 2u);
    }

    v55 = (v33)(v41, v34);
    if (a2)
    {
      a2(v55);
    }

    goto LABEL_36;
  }
}

id sub_10000464C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HealthENBuddyContainer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000046B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004780(v11, 0, 0, 1, a1, a2);
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
    sub_100005344(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000052D0(v11);
  return v7;
}

unint64_t sub_100004780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000488C(a5, a6);
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

char *sub_10000488C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000048D8(a1, a2);
  sub_100004A08(&off_10000C4C8);
  return v3;
}

char *sub_1000048D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004AF4(v5, 0);
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
        v7 = sub_100004AF4(v10, 0);
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

uint64_t sub_100004A08(uint64_t result)
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

  result = sub_100004B68(result, v11, 1, v3);
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

void *sub_100004AF4(uint64_t a1, uint64_t a2)
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

  sub_100005288(&qword_1000118A0, &qword_100006650);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004B68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005288(&qword_1000118A0, &qword_100006650);
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

unint64_t sub_100004C5C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004CA0(a1, v4);
}

unint64_t sub_100004CA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005490(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000053A4(v8);
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

uint64_t sub_100004D68(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.buddy.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  sub_100005278(a1, a2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  sub_100005220(a1, a2);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    v19 = v18[0];
    *v11 = 136315138;
    if (a1)
    {
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v13 = sub_10000531C;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v18[1] = v13;
    v18[2] = v12;
    sub_100005278(a1, a2);
    sub_100005288(&qword_100011898, &qword_100006648);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000046B4(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "prepareForActivation with completion: %s", v11, 0xCu);
    sub_1000052D0(v18[0]);
  }

  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_100004FB8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100005534(0, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
      sub_1000051B0();
      Set.Iterator.init(_cocoa:)();
      v1 = v15;
      v2 = v16;
      v3 = v17;
      v4 = v18;
      v5 = v19;
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v2 = a1 + 56;
      v3 = ~v6;
      v7 = -v6;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v5 = v8 & *(a1 + 56);

      v4 = 0;
    }

    if (v1 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v9 = v4;
      v10 = v5;
      v11 = v4;
      if (!v5)
      {
        break;
      }

LABEL_13:
      v12 = (v10 - 1) & v10;
      v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
      if (!v13)
      {
LABEL_19:
        sub_100005218(v1);
        return;
      }

      while (1)
      {
        [v13 events];

        v4 = v11;
        v5 = v12;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          sub_100005534(0, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
          swift_dynamicCast();
          v13 = v14;
          v11 = v4;
          v12 = v5;
          if (v14)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= ((v3 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v10 = *(v2 + 8 * v11);
      ++v9;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1000051B0()
{
  result = qword_100011890;
  if (!qword_100011890)
  {
    sub_100005534(255, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011890);
  }

  return result;
}

uint64_t sub_100005220(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005230()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005278(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005288(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000052D0(void *a1)
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

uint64_t sub_100005344(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000053F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005288(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000054EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005534(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000557C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000055BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000055D4()
{
  result = qword_1000118D0;
  if (!qword_1000118D0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000118D0);
  }

  return result;
}

unint64_t sub_10000562C()
{
  result = qword_1000118E0;
  if (!qword_1000118E0)
  {
    sub_100005690(&qword_1000118D8, &qword_100006680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000118E0);
  }

  return result;
}

uint64_t sub_100005690(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000056E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}