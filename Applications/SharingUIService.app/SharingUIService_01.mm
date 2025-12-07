uint64_t sub_10001C450(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_1000211CC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007CB0;
  aBlock[3] = &unk_10003DF60;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000210E4(&qword_100046CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000025C4(&unk_100047A00, qword_10002D780);
  sub_10000A71C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

void sub_10001C71C(void *a1, uint64_t a2)
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493C0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "did update data source with configuration %@", v8, 0xCu);
    sub_100009C18(v9, &qword_1000475A0, &unk_10002D720);
  }

  v11 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_currentConfiguration;
  v12 = *(a2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_currentConfiguration);
  if (!v12)
  {
    sub_100001F54();
    v12 = *(a2 + v11);
  }

  *(a2 + v11) = v5;

  v13 = [v5 shouldBlockPresentation];
  v14 = a2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    if (Strong)
    {
      v16 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 48))(a2, ObjectType, v16);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (Strong)
    {
      v18 = *(v14 + 8);
      v19 = swift_getObjectType();
      (*(v18 + 56))(a2, v19, v18);
      swift_unknownObjectRelease();
    }

    sub_10001B960();
  }
}

uint64_t sub_10001C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v4;
  v15[5] = a3;
  v15[6] = a4;
  aBlock[4] = sub_10002117C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007CB0;
  aBlock[3] = &unk_10003DF10;
  v16 = _Block_copy(aBlock);

  v17 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000210E4(&qword_100046CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000025C4(&unk_100047A00, qword_10002D780);
  sub_10000A71C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

void sub_10001CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext;
  v7 = *(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext);
  if (v7)
  {
    v8 = [v7 activitiesByUUID];
    type metadata accessor for UUID();
    sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
    sub_1000210E4(&qword_100047370, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(a3 + v6);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_12;
  }

  sub_10001FDE8(_swiftEmptyArrayStorage);
  v9 = *(a3 + v6);
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = [v9 applicationActivityTypes];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ActivityType(0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = *(a3 + v6);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *(a3 + v6);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v14 = [v12 excludedActivityTypes];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for ActivityType(0);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_12;
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UUID();
  sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
  sub_1000210E4(&qword_100047370, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  type metadata accessor for ActivityType(0);
  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v13)
  {
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  LOBYTE(v27) = 1;
  v22 = [objc_allocWithZone(_UIActivityUserDefaultsViewController) initWithFavoritesProxies:v16.super.isa suggestionProxies:v17.super.isa activitiesByUUID:v18.super.isa applicationActivityTypes:v19.super.isa orderedUUIDs:v20.super.isa excludedActivityTypes:v21.super.isa activityCategory:a5 isPresentedModally:v27];

  [v22 setUserDefaultsDelegate:a3];
  [v22 setHostAuditToken:*(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_hostAuditToken)];
  v23 = *(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController);
  *(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController) = v22;
  v29 = v22;

  v24 = a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 16))(a3, v29, ObjectType, v25);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10001D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1000210C0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007CB0;
  aBlock[3] = &unk_10003DEC0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000210E4(&qword_100046CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000025C4(&unk_100047A00, qword_10002D780);
  sub_10000A71C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10001D49C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController);
    if (v3)
    {
      sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
      v4 = v3;
      v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v7 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext;
      v8 = *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext];
      if (v8)
      {
        v9 = [v8 activitiesByUUID];
        type metadata accessor for UUID();
        sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
        sub_1000210E4(&qword_100047370, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_10001FDE8(_swiftEmptyArrayStorage);
      }

      type metadata accessor for UUID();
      sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
      sub_1000210E4(&qword_100047370, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v11 = *&v2[v7];
      if (v11)
      {
        v12 = [v11 applicationActivityTypes];
        if (v12)
        {
          v13 = v12;
          type metadata accessor for ActivityType(0);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      type metadata accessor for ActivityType(0);
      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v16 = *&v2[v7];
      if (!v16 || (v17 = [v16 excludedActivityTypes]) == 0)
      {
        v17 = 0;
      }

      [v4 updateWithFavoritesProxies:v5.super.isa suggestionProxies:v6.super.isa activitiesByUUID:v10.super.isa applicationActivityTypes:v14.super.isa orderedUUIDs:v15.super.isa excludedActivityTypes:v17];
    }
  }
}

void sub_10001D88C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000097A8(v7, qword_1000493C0);
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v22 + 8))(v6, v4);
    v16 = sub_100029F40(v13, v15, &v23);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Remove people suggestion %s", v10, 0xCu);
    sub_10000EF68(v11);
  }

  v17 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v17)
  {
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    v20 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v6, v4);
    [v18 activityViewControllerWithSessionID:v19 removedPersonWithIdentifier:isa];
  }
}

uint64_t sub_10001DC0C(void *a1, uint64_t a2)
{
  v5 = sub_1000025C4(&qword_100046C08, &unk_10002E280);
  v6 = __chkstk_darwin(v5 - 8);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v65 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v74 = &v65 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - v17;
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  v71 = a2;
  sub_1000211EC(a2, v9, &qword_100046C08, &unk_10002E280);
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    v22 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21(v9, 1, v10) != 1)
    {
      sub_100009C18(v9, &qword_100046C08, &unk_10002E280);
    }
  }

  else
  {
    (*(v11 + 32))(v20, v9, v10);
  }

  v69 = v21;
  v70 = v11 + 48;
  v76 = v2;
  v77 = a1;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_1000097A8(v23, qword_1000493C0);
  v25 = *(v11 + 16);
  v25(v18, v20, v10);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v66 = v25;
    v67 = v24;
    v29 = v28;
    v30 = swift_slowAlloc();
    v68 = v20;
    v31 = v11;
    v32 = v30;
    v78 = v30;
    *v29 = 136315138;
    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v75 = *(v31 + 8);
    v75(v18, v10);
    v36 = sub_100029F40(v33, v35, &v78);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Perform share activity %s", v29, 0xCu);
    sub_10000EF68(v32);
    v11 = v31;
    v20 = v68;

    v25 = v66;
  }

  else
  {

    v75 = *(v11 + 8);
    v75(v18, v10);
  }

  v37 = v74;
  if ([v77 isDisabled])
  {
    v25(v37, v20, v10);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v78 = v41;
      *v40 = 136315138;
      sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v37;
      v45 = v44;
      v46 = v75;
      v75(v43, v10);
      v47 = sub_100029F40(v42, v45, &v78);

      *(v40 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Share activity: %s is disabled.", v40, 0xCu);
      sub_10000EF68(v41);
    }

    else
    {

      v46 = v75;
      v75(v37, v10);
    }

    v57 = v76;
    v58 = [objc_opt_self() createScreenTimeAlertViewController];
    v59 = v57 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v60 = *(v59 + 8);
      ObjectType = swift_getObjectType();
      (*(v60 + 32))(v57, v58, ObjectType, v60);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v46 = v75;
    v48 = *(v76 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
    if (v48)
    {
      v49 = v48;
      v50 = String._bridgeToObjectiveC()();
      v51 = v73;
      sub_1000211EC(v71, v73, &qword_100046C08, &unk_10002E280);
      v52 = v69;
      if (v69(v51, 1, v10) == 1)
      {
        v53 = [v77 identifier];
        v77 = v50;
        v54 = v49;
        v55 = v72;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = v55;
        v49 = v54;
        v50 = v77;
        if (v52(v51, 1, v10) != 1)
        {
          sub_100009C18(v51, &qword_100046C08, &unk_10002E280);
        }
      }

      else
      {
        v56 = v72;
        (*(v11 + 32))(v72, v51, v10);
      }

      v62 = v56;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v46(v62, v10);
      [v49 activityViewControllerWithSessionID:v50 selectedActivityWithIdentifier:isa];
    }
  }

  return (v46)(v20, v10);
}

void sub_10001E538(void *a1, const char *a2, const char *a3, SEL *a4, ...)
{
  v46 = a3;
  v7 = v4;
  v9 = type metadata accessor for UUID();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000097A8(v12, qword_1000493C0);
  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v43 = a2;
    v44 = v17;
    v48 = v17;
    *v16 = 136315138;
    v18 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v7;
    v22 = v21;
    (*(v47 + 8))(v11, v9);
    v23 = sub_100029F40(v19, v22, &v48);
    v7 = v20;

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, v43, v16, 0xCu);
    sub_10000EF68(v44);

    a4 = v45;
  }

  if ([a1 isDisabled])
  {
    swift_unknownObjectRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v7;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = 136315138;
      v29 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v47 + 8))(v11, v9);
      v33 = sub_100029F40(v30, v32, &v48);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, v46, v27, 0xCu);
      sub_10000EF68(v28);

      v7 = v26;
    }

    v34 = [objc_opt_self() createScreenTimeAlertViewController];
    v35 = v7 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v35 + 8);
      ObjectType = swift_getObjectType();
      (*(v36 + 32))(v7, v34, ObjectType, v36);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v38 = *(v7 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
    if (v38)
    {
      v39 = v38;
      v40 = String._bridgeToObjectiveC()();
      v41 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v47 + 8))(v11, v9);
      [v39 *a4];
    }
  }
}

void sub_10001EA90(void *a1, uint64_t a2, void *a3, const char *a4, const char *a5, SEL *a6, ...)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_10001E538(a3, a4, a5, a6);
  swift_unknownObjectRelease();
}

void sub_10001EB20()
{
  v1 = v0;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handle action edit", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v6)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    [v7 activityViewControllerPerformEditActionsWithSessionID:v8];
  }
}

void sub_10001ED2C()
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000097A8(v1, qword_1000493C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "did update sheet size", v4, 2u);
  }

  v5 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = [objc_allocWithZone(SHSheetSizeUpdateAction) initWithSize:objc_msgSend(swift_unknownObjectRetain() isResizable:{"isCompactSize"), objc_msgSend(v6, "isResizable")}];
    v8 = v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v0, v7, ObjectType, v9);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "no content view available", v13, 2u);
    }
  }
}

void sub_10001F150()
{
  v1 = v0;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handle info suggestion", v5, 2u);
  }

  v6 = objc_allocWithZone(SHSheetSuggestionAction);
  v7 = String._bridgeToObjectiveC()();
  v11 = [v6 initWithSuggestionReason:v7];

  v8 = v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, v11, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10001F888(uint64_t a1)
{
  v2 = v1;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "userDefaultsViewControllerDidDisappear", v7, 2u);
  }

  v8 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController);
  *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController) = 0;

  v9 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v9)
  {
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    [v10 userDefaultsViewControllerDidDisappearWithSessionID:v11];
  }

  v12 = v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(v2, a1, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10001FAB4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1000210E4(&qword_100047370, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10001FBB8(a1, v2);
}

unint64_t sub_10001FB4C(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return sub_10001FD78(a1 & 1, v2);
}

unint64_t sub_10001FBB8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
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
      sub_1000210E4(&unk_100047A30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

unint64_t sub_10001FD78(int a1, uint64_t a2)
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

unint64_t sub_10001FDE8(uint64_t a1)
{
  v2 = sub_1000025C4(&qword_100047A20, &qword_10002E290);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000025C4(&qword_100047A28, &qword_10002E298);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000211EC(v9, v5, &qword_100047A20, &qword_10002E290);
      result = sub_10001FAB4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10001FFD0()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_100020090(uint64_t a1)
{
  v2 = sub_1000025C4(&qword_1000477C8, &qword_10002E210);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000025C4(&unk_100047A60, qword_10002E2A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000211EC(v9, v5, &qword_1000477C8, &qword_10002E210);
      v11 = *v5;
      result = sub_10001FB4C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10002026C(const char *a1, uint64_t a2)
{
  v5 = v2;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000097A8(v6, qword_1000493C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v13 = [objc_allocWithZone(SHSheetAction) initWithType:a2];
  v10 = v5 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v5, v13, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10002040C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000097A8(v10, qword_1000493C0);
  (*(v7 + 16))(v9, a1, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25[1] = a1;
    v16 = v15;
    v27 = v15;
    *v14 = 136315138;
    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_100029F40(v17, v19, &v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "didToggleActivityWithIdentifier:%s", v14, 0xCu);
    sub_10000EF68(v16);

    a2 = v26;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v21 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v21)
  {
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v22 activityViewControllerWithSessionID:v23 toggledActivityWithIdentifier:isa activityCategory:a2];
  }
}

void sub_1000206FC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000097A8(v11, qword_1000493C0);
  (*(v8 + 16))(v10, a2, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v26[1] = a2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v26[0] = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_100029F40(v18, v20, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "didFavoriteActivity:%s", v16, 0xCu);
    sub_10000EF68(v17);

    a3 = v26[0];
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = *(v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v22)
  {
    v23 = v22;
    v24 = String._bridgeToObjectiveC()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v23 activityViewControllerWithSessionID:v24 favoritedActivity:v27 & 1 withIdentifier:isa activityCategory:a3];
  }
}

void sub_1000209F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000097A8(v5, qword_1000493C0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
    v10 = Array.description.getter();
    v12 = sub_100029F40(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "didUpdateFavoritesProxies:%s", v8, 0xCu);
    sub_10000EF68(v9);
  }

  v13 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v13)
  {
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v14 activityViewControllerWithSessionID:v15 updatedFavoritesProxies:isa activityCategory:a2];
  }
}

void sub_100020C34(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000097A8(v12, qword_1000493C0);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v13, v14))
  {

    (*(v9 + 8))(v11, v8);
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v31 = [objc_opt_self() createScreenTimeAlertViewController];
    v32 = v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      (*(v33 + 32))(v4, v31, ObjectType, v33);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v15 = swift_slowAlloc();
  v37 = a1;
  v16 = v15;
  v35 = swift_slowAlloc();
  v38 = v35;
  *v16 = 136315138;
  sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = a3;
  v18 = v4;
  v19 = a2;
  v21 = v20;
  (*(v9 + 8))(v11, v8);
  v22 = sub_100029F40(v17, v21, &v38);
  a2 = v19;
  v4 = v18;
  LOBYTE(v18) = v36;

  *(v16 + 4) = v22;
  _os_log_impl(&_mh_execute_header, v13, v14, "didSelectActivityWithIdentifier:%s", v16, 0xCu);
  sub_10000EF68(v35);

  if (v18)
  {
    goto LABEL_11;
  }

LABEL_5:
  v23 = [objc_allocWithZone(SHSheetAction) initWithType:13];
  v24 = v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    v26 = swift_getObjectType();
    (*(v25 + 8))(v4, v23, v26, v25);
    swift_unknownObjectRelease();
  }

  v27 = *(v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v27)
  {
    v28 = v27;
    v29 = String._bridgeToObjectiveC()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v28 activityViewControllerWithSessionID:v29 selectedDefaultActivityWithIdentifier:isa activityCategory:a2];
  }
}

uint64_t sub_100021038()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021070()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000210CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000210E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002112C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002118C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000211EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000025C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_100021564(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000215D0()
{
  v0 = type metadata accessor for Logger();
  sub_10000AB94(v0, qword_100047B40);
  v1 = sub_1000097A8(v0, qword_100047B40);
  if (qword_1000464D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000097A8(v0, qword_1000493D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000216AC()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000AB94(v0, static ShareIntent.title);
  sub_1000097A8(v0, static ShareIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t ShareIntent.title.unsafeMutableAddressor()
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_1000097A8(v0, static ShareIntent.title);
}

uint64_t static ShareIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000097A8(v2, static ShareIntent.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ShareIntent.title.setter(uint64_t a1)
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000097A8(v2, static ShareIntent.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ShareIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for LocalizedStringResource();
  sub_1000097A8(v1, static ShareIntent.title);
  swift_beginAccess();
  return j__swift_endAccess;
}

double ShareIntent.shareTransport.getter@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t (*ShareIntent.shareTransport.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000275EC;
}

uint64_t (*ShareIntent.recipients.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100021BB0;
}

uint64_t (*ShareIntent.mode.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000275EC;
}

uint64_t (*ShareIntent.content.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000275EC;
}

void sub_100021DB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ShareIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return _swift_task_switch(sub_100021E50);
}

uint64_t sub_100021E50()
{
  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000097A8(v1, qword_100047B40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing share intent", v4, 2u);
  }

  IntentParameter.wrappedValue.getter();
  v5 = v0[6];
  v6 = v0[7];

  sub_1000256F4((v0 + 2));
  if (v5 == 0xD00000000000002ALL && 0x800000010002ECA0 == v6)
  {

LABEL_9:
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_100022094;
    v9 = v0[13];
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];

    return sub_1000222F0(v12, v11, v9, v10);
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_9;
  }

  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_1000221F4;
  v15 = v0[13];
  v16 = v0[14];
  v18 = v0[11];
  v17 = v0[12];

  return sub_100022820(v18, v17, v15, v16);
}

uint64_t sub_100022094()
{

  return _swift_task_switch(sub_100022190);
}

uint64_t sub_100022190()
{
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000221F4()
{

  return _swift_task_switch(sub_1000275E0);
}

uint64_t sub_1000222F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v4[16] = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v6;

  return _swift_task_switch(sub_1000223E8);
}

uint64_t sub_1000223E8()
{
  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000097A8(v1, qword_100047B40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No transport provided, presenting Share Sheet", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10002253C;
  v6 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  return sub_100022EAC(v9, v8, v6, v7);
}

uint64_t sub_10002253C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_100022664);
}

uint64_t sub_100022664()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];

  type metadata accessor for SUISRemoteAlertPresentationManager(0);
  v5 = sub_10000BD18();
  (*(v4 + 104))(v2, enum case for SFRemoteAlertPresentationRequest.PresentationType.sharesheet(_:), v3);
  v6 = dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:)();

  (*(v4 + 8))(v2, v3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_1000275F0;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002330C;
  v0[5] = &unk_10003E128;
  v8 = _Block_copy(v0 + 2);

  [v1 setCompletionWithItemsHandler:v8];
  _Block_release(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100022820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v5 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v4[32] = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v6;

  return _swift_task_switch(sub_100022918);
}

uint64_t sub_100022918()
{
  v18 = v0;
  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000097A8(v1, qword_100047B40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    IntentParameter.wrappedValue.getter();
    v6 = ShareTransportEntity.description.getter();
    v8 = v7;
    sub_1000256F4((v0 + 2));
    v9 = sub_100029F40(v6, v8, &v17);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing provided transport: %s", v4, 0xCu);
    sub_10000EF68(v5);
  }

  IntentParameter.wrappedValue.getter();
  v10 = v0[15];
  v0[34] = v0[14];
  v0[35] = v10;

  sub_1000256F4((v0 + 10));
  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v11[1] = sub_100022B5C;
  v12 = v0[26];
  v13 = v0[27];
  v15 = v0[24];
  v14 = v0[25];

  return sub_100022EAC(v15, v14, v12, v13);
}

uint64_t sub_100022B5C(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100022C84);
}

uint64_t sub_100022C84()
{
  v1 = v0[37];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[29];

  type metadata accessor for SUISRemoteAlertPresentationManager(0);
  v5 = sub_10000BD18();
  (*(v4 + 104))(v2, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v3);
  v6 = dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:)();

  (*(v4 + 8))(v2, v3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[22] = sub_100027410;
  v0[23] = v7;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10002330C;
  v0[21] = &unk_10003E1C8;
  v8 = _Block_copy(v0 + 18);

  [v1 setCompletionWithItemsHandler:v8];
  _Block_release(v8);
  v9 = v0[37];
  v10 = v0[35];
  if (v6)
  {
    v11 = v0[34];
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = v11;
    v12[4] = v10;
    v12[5] = v6;

    v13 = v9;
    dispatch thunk of SFRemoteAlertPresentationHandle.onActivate.setter();
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100022EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v4[14] = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v5;

  return _swift_task_switch(sub_100022F48);
}

uint64_t sub_100022F48()
{
  IntentParameter.wrappedValue.getter();
  v1 = sub_100025BB8(v0[8]);
  v0[16] = v1;

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100023004;
  v3 = v0[12];

  return sub_100026718(v1, v3);
}

uint64_t sub_100023004(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10002312C);
}

uint64_t sub_10002312C()
{
  v1 = v0[18];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_10000A598(0, &qword_100047B80, NSItemProvider_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithItemProviders:isa];

  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v1;
  v0[6] = sub_1000273C8;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100024C40;
  v0[5] = &unk_10003E178;
  v10 = _Block_copy(v0 + 2);

  [v8 setPerItemMetadataProvider:v10];
  _Block_release(v10);
  v11 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v8];

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_10002330C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_1000233C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000025C4(&qword_100047048, &qword_10002DC28);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = a1;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  sub_10000DCD8(0, 0, v10, &unk_10002E4D8, v14);
}

uint64_t sub_100023520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  type metadata accessor for MainActor();
  v7[22] = static MainActor.shared.getter();
  v7[23] = dispatch thunk of Actor.unownedExecutor.getter();
  v7[24] = v8;

  return _swift_task_switch(sub_1000235BC);
}

uint64_t sub_1000235BC()
{
  v1 = v0[18];
  v2 = String._bridgeToObjectiveC()();
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1000236F4;
  v3 = swift_continuation_init();
  v0[17] = sub_1000025C4(&qword_100047BB8, &qword_10002E4E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100023C00;
  v0[13] = &unk_10003E240;
  v0[14] = v3;
  [v1 _performActivityWithType:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000236F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1000239D8;
  }

  else
  {
    v2 = sub_100023824;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100023824()
{
  v13 = v0;
  v1 = *(v0 + 200);

  v2 = *(v0 + 216);

  if ((v2 & 1) == 0)
  {
    if (qword_100046528 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000097A8(v3, qword_100047B40);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 152);
      v6 = *(v0 + 160);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100029F40(v7, v6, &v12);
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform activity of type %s", v8, 0xCu);
      sub_10000EF68(v9);
    }

    if (*(v0 + 168))
    {
      dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000239D8()
{
  v14 = v0;
  v1 = v0[25];

  swift_willThrow();

  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_100047B40);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_100029F40(v6, v5, &v13);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform activity of type %s with error: %@", v7, 0x16u);
    sub_100009C18(v8, &qword_1000475A0, &unk_10002D720);

    sub_10000EF68(v9);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100023C00(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000F3D8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000025C4(&qword_100047060, &qword_10002DC58);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100023CCC@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v44 = a3;
  v43 = type metadata accessor for URL();
  v37 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = v4;
  v41 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000025C4(&qword_1000473A8, &qword_10002E490);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  v39 = type metadata accessor for UTType();
  v45 = *(v39 - 8);
  v8 = __chkstk_darwin(v39);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = v35 - v11;
  v12 = type metadata accessor for URLResourceValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = URL.startAccessingSecurityScopedResource()();
  sub_1000025C4(&qword_100047B88, &qword_10002E498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002D290;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v17 = NSURLTypeIdentifierKey;
  sub_1000259C4(inited);
  swift_setDeallocating();
  sub_10002659C(inited + 32);
  v42 = a1;
  v18 = v35[1];
  URL.resourceValues(forKeys:)();
  if (v18)
  {
  }

  else
  {

    URLResourceValues.typeIdentifier.getter();
    v30 = v29;
    (*(v13 + 8))(v15, v12);
    if (v30)
    {
      v31 = v7;
      UTType.init(identifier:allowUndeclared:)();
      v32 = v45;
      v33 = *(v45 + 48);
      v19 = v39;
      if (v33(v7, 1, v39) == 1)
      {
        static UTType.fileURL.getter();
        v34 = v33(v7, 1, v19);
        v21 = v42;
        v20 = v38;
        if (v34 != 1)
        {
          sub_100009C18(v31, &qword_1000473A8, &qword_10002E490);
        }
      }

      else
      {
        (*(v32 + 32))(v10, v7, v19);
        v21 = v42;
        v20 = v38;
      }

      (*(v32 + 32))(v20, v10, v19);
      if (v36)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  v20 = v38;
  v19 = v39;
  static UTType.fileURL.getter();
  v21 = v42;
  if (v36)
  {
LABEL_4:
    URL.stopAccessingSecurityScopedResource()();
  }

LABEL_5:
  v22 = [objc_allocWithZone(NSItemProvider) init];
  v23 = v37;
  v24 = v41;
  v25 = v43;
  (*(v37 + 16))(v41, v21, v43);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = swift_allocObject();
  (*(v23 + 32))(v27 + v26, v24, v25);
  NSItemProvider.registerFileRepresentation(for:visibility:openInPlace:loadHandler:)();

  result = (*(v45 + 8))(v20, v19);
  *v44 = v22;
  return result;
}

uint64_t sub_1000241B8(void (*a1)(char *, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000025C4(&qword_100046C80, &unk_10002D770);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = URL.startAccessingSecurityScopedResource()();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a3, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  a1(v7, 1, 0);
  sub_100009C18(v7, &qword_100046C80, &unk_10002D770);
  if (v8)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return 0;
}

void *sub_100024310@<X0>(uint64_t a1@<X0>, unint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v78 = type metadata accessor for IntentPerson();
  v74 = *(v78 - 8);
  v7 = __chkstk_darwin(v78);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v72 - v9;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_16;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_16:
    IntentParameter.wrappedValue.getter();
    if (v79)
    {
      if (*(v79 + 16))
      {
        if (qword_100046528 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000097A8(v29, qword_100047B40);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v79 = v33;
          *v32 = 136315138;
          v34 = Array.description.getter();
          v36 = v35;

          v37 = sub_100029F40(v34, v36, &v79);

          *(v32 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v30, v31, "Intent providing recipients: %s", v32, 0xCu);
          sub_10000EF68(v33);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    result = IntentParameter.wrappedValue.getter();
    v38 = v79;
    if (v79)
    {
      v39 = _swiftEmptyArrayStorage;
      v79 = _swiftEmptyArrayStorage;
      v40 = *(v38 + 16);
      if (v40)
      {
        v73 = a4;
        v41 = sub_10000A598(0, &qword_100047BA8, INPerson_ptr);
        v42 = v74 + 16;
        v43 = *(v74 + 16);
        v44 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v74 = v38;
        v75 = v41;
        v45 = v38 + v44;
        v46 = *(v42 + 56);
        v47 = (v42 - 8);
        do
        {
          v48 = v76;
          v49 = v78;
          v43(v76, v45, v78);
          v43(v77, v48, v49);
          INPerson.init(_:)();
          (*v47)(v48, v49);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v72 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 += v46;
          --v40;
        }

        while (v40);
        v39 = v79;
        a4 = v73;
      }

      result = sub_1000025C4(&qword_100047BB0, &unk_10002E4C0);
      *(a4 + 24) = result;
      *a4 = v39;
    }

    else
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    return result;
  }

  v16 = a4;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
      {

        v28 = v16;
        if (!a3)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v16;
        if ((v63 & 1) == 0 || !a3)
        {
          goto LABEL_57;
        }
      }

      if (a3 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result > a1)
        {
LABEL_48:
          if ((a3 & 0xC000000000000001) != 0)
          {
            v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a1 < 0)
            {
              __break(1u);
              goto LABEL_60;
            }

            if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
            {
              __break(1u);
              return result;
            }

            v64 = *(a3 + 8 * a1 + 32);
          }

          a3 = v64;
          if (qword_100046528 == -1)
          {
LABEL_53:
            v65 = type metadata accessor for Logger();
            sub_1000097A8(v65, qword_100047B40);
            v66 = a3;
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *v69 = 138412290;
              *(v69 + 4) = v66;
              *v70 = v66;
              v71 = v66;
              _os_log_impl(&_mh_execute_header, v67, v68, "Intent providing metadata: %@", v69, 0xCu);
              sub_100009C18(v70, &qword_1000475A0, &unk_10002D720);
            }

            result = sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
            *(v16 + 24) = result;
            *v16 = v66;
            return result;
          }

LABEL_60:
          swift_once();
          goto LABEL_53;
        }
      }

      else
      {
        result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result > a1)
        {
          goto LABEL_48;
        }
      }

LABEL_57:
      *v28 = 0u;
      v28[1] = 0u;
      return result;
    }
  }

  IntentParameter.wrappedValue.getter();
  v50 = v79;
  if (v79 != 2)
  {
    if (qword_100046528 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000097A8(v51, qword_100047B40);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v79 = v55;
      *v54 = 136315138;
      sub_1000025C4(&qword_100046C88, qword_10002DD20);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_10002D6A0;
      *(v56 + 32) = [objc_allocWithZone(UIActivityCollaborationModeRestriction) initWithDisabledMode:(v50 & 1) == 0];
      sub_10000A598(0, &qword_100047BA0, UIActivityCollaborationModeRestriction_ptr);
      v57 = Array.description.getter();
      v59 = v58;

      v60 = sub_100029F40(v57, v59, &v79);

      *(v54 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "Intent providing restrictions: %s", v54, 0xCu);
      sub_10000EF68(v55);
    }
  }

  result = IntentParameter.wrappedValue.getter();
  v61 = v79;
  if (v79 == 2)
  {
    *v16 = 0u;
    *(v16 + 16) = 0u;
  }

  else
  {
    sub_1000025C4(&qword_100046C88, qword_10002DD20);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10002D6A0;
    *(v62 + 32) = [objc_allocWithZone(UIActivityCollaborationModeRestriction) initWithDisabledMode:(v61 & 1) == 0];
    result = sub_1000025C4(&qword_100047B98, &qword_10002E4B8);
    *(v16 + 24) = result;
    *v16 = v62;
  }

  return result;
}

id sub_100024C40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    v8 = sub_10000F3D8(v14, v15);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_10000EF68(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_100024DC0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BA80;

  return ShareIntent.perform()(a1, v4, v5, v7, v6);
}

uint64_t sub_100024E80@<X0>(uint64_t *a1@<X8>)
{
  result = _s16SharingUIService11ShareIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100024EAC(uint64_t a1)
{
  v2 = sub_100025864();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100024EE8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100024F34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t _s16SharingUIService11ShareIntentVACycfC_0()
{
  v0 = type metadata accessor for IntentPerson.ParameterMode();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v39 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000025C4(&qword_100046540, &unk_10002D2A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v36 - v9;
  v11 = sub_1000025C4(&qword_100046548, &qword_10002E200);
  __chkstk_darwin(v11 - 8);
  v13 = v36 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v43 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000025C4(&qword_100046550, &qword_10002D2B0);
  LocalizedStringResource.init(stringLiteral:)();
  v18 = *(v15 + 56);
  v36[2] = v15 + 56;
  v44 = v18;
  v18(v13, 1, 1, v14);
  v19 = type metadata accessor for IntentDialog();
  v49 = v19;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v47 = v21;
  v48 = v20 + 56;
  v21(v10, 1, 1, v19);
  v37 = v8;
  v21(v8, 1, 1, v19);
  v50 = enum case for InputConnectionBehavior.default(_:);
  v45 = *(v2 + 104);
  v46 = v2 + 104;
  v22 = v51;
  v45(v4);
  sub_10000260C();
  v42 = v17;
  v23 = v4;
  v38 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v36[1] = sub_1000025C4(&qword_100046560, &qword_10002D2B8);
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v13;
  v25 = v13;
  v27 = v43;
  v26 = v44;
  v44(v24, 1, 1, v43);
  v47(v10, 1, 1, v49);
  (*(v40 + 104))(v39, enum case for IntentPerson.ParameterMode.contact(_:), v41);
  v36[0] = v23;
  v28 = v22;
  v29 = v45;
  (v45)(v23, v50, v28);
  v30 = v10;
  v41 = IntentParameter<>.init(title:description:mode:requestValueDialog:inputConnectionBehavior:)();
  v40 = sub_1000025C4(&qword_100046568, &qword_10002D2C0);
  LocalizedStringResource.init(stringLiteral:)();
  v26(v25, 1, 1, v27);
  LOBYTE(v52) = 2;
  v31 = v49;
  v32 = v47;
  v47(v30, 1, 1, v49);
  v32(v37, 1, 1, v31);
  v33 = v32;
  v34 = v36[0];
  (v29)(v36[0], v50, v51);
  sub_100002C98();
  v40 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_1000025C4(&qword_100046578, &qword_10002D2C8);
  LocalizedStringResource.init(stringLiteral:)();
  v44(v25, 1, 1, v43);
  *&v52 = 0;
  v33(v30, 1, 1, v49);
  sub_1000025C4(&qword_100046580, &unk_10002D2D0);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10002D290;
  static UTType.item.getter();
  (v45)(v34, v50, v51);
  IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  return v38;
}

unint64_t sub_10002574C()
{
  result = qword_100047B58;
  if (!qword_100047B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B58);
  }

  return result;
}

unint64_t sub_1000257A4()
{
  result = qword_100047B60;
  if (!qword_100047B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B60);
  }

  return result;
}

unint64_t sub_100025864()
{
  result = qword_100047B68;
  if (!qword_100047B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B68);
  }

  return result;
}

__n128 sub_1000258B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000258C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002590C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100025960()
{
  result = qword_100047B70;
  if (!qword_100047B70)
  {
    sub_10000A780(&qword_100047B78, &unk_10002E480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B70);
  }

  return result;
}

void *sub_1000259C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000025C4(&qword_100047B90, &qword_10002E4A0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100025BB8(uint64_t a1)
{
  v2 = 0;
  v3 = sub_1000025C4(&qword_100046C80, &unk_10002D770);
  __chkstk_darwin(v3 - 8);
  v5 = &v68 - v4;
  v6 = type metadata accessor for URL();
  v77 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v68 - v10;
  v79 = type metadata accessor for IntentFile();
  v11 = *(v79 - 8);
  v12 = __chkstk_darwin(v79);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v16 = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return v16;
  }

  v73 = v9;
  v80[0] = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  v78 = v6;
  v71 = a1;
  if (v17)
  {
    v69 = v11;
    v70 = v5;
    v72 = 0;
    v18 = *(v11 + 16);
    v19 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v20 = *(v11 + 72);
    v21 = (v11 + 8);
    v74 = v17;
    v22 = v17;
    do
    {
      v23 = v79;
      v18(v15, v19, v79);
      IntentFile._itemProvider.getter();
      (*v21)(v15, v23);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 += v20;
      --v22;
    }

    while (v22);
    v16 = v80[0];
    v2 = v72;
    v11 = v69;
    v5 = v70;
    v17 = v74;
  }

  v24 = (v16 >> 62);
  if (v16 >> 62)
  {
LABEL_50:
    if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
    {
      v34 = 0;
      goto LABEL_20;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    v34 = 0;
    goto LABEL_17;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    v25 = v17;
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      swift_once();
LABEL_44:
      v63 = type metadata accessor for Logger();
      sub_1000097A8(v63, qword_100047B40);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v38, v39))
      {
LABEL_47:

        return v16;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80[0] = v41;
      *v40 = 136315138;
      sub_10000A598(0, &qword_100047B80, NSItemProvider_ptr);
      v64 = Array.description.getter();
      v66 = sub_100029F40(v64, v65, v80);

      *(v40 + 4) = v66;
      v45 = "Did not find item providers on Intent File using synthesized item providers: %s";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v38, v39, v45, v40, 0xCu);
      sub_10000EF68(v41);

      goto LABEL_47;
    }

    v25 = v17;
    v26 = *(v16 + 32);
  }

  v27 = v26;
  v28 = [v26 registeredTypeIdentifiers];
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = *(v29 + 16);

  if (v30 != 1)
  {

    v34 = 0;
    v17 = v25;
    if (v24)
    {
      goto LABEL_20;
    }

LABEL_17:
    v35 = v71;
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v31 = [v27 registeredTypeIdentifiers];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80[0] = 0xD000000000000018;
  v80[1] = 0x800000010002F680;
  __chkstk_darwin(v33);
  *(&v68 - 2) = v80;
  v34 = sub_100024F34(sub_100026544, (&v68 - 4), v32);

  v17 = v25;
  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_20:
  v36 = _CocoaArrayWrapper.endIndex.getter();
  v35 = v71;
  if (!v36)
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((v34 & 1) == 0)
  {
    if (qword_100046528 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000097A8(v37, qword_100047B40);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_47;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v80[0] = v41;
    *v40 = 136315138;
    sub_10000A598(0, &qword_100047B80, NSItemProvider_ptr);
    v42 = Array.description.getter();
    v44 = sub_100029F40(v42, v43, v80);

    *(v40 + 4) = v44;
    v45 = "Returning item providers from IntentFiles: %s";
    goto LABEL_46;
  }

LABEL_26:
  v69 = v16;
  v46 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v48 = *(v11 + 16);
    v47 = v11 + 16;
    v49 = v35 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
    v71 = *(v47 + 56);
    v72 = v48;
    v24 = (v47 - 8);
    v50 = (v77 + 48);
    v70 = (v77 + 32);
    do
    {
      v51 = v75;
      v52 = v79;
      v72(v75, v49, v79);
      IntentFile.fileURL.getter();
      (*v24)(v51, v52);
      v53 = v78;
      if ((*v50)(v5, 1, v78) == 1)
      {
        sub_100009C18(v5, &qword_100046C80, &unk_10002D770);
      }

      else
      {
        v74 = v17;
        v54 = v47;
        v55 = *v70;
        v56 = v5;
        (*v70)(v76, v5, v53);
        v57 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100029B54(0, *(v46 + 2) + 1, 1, v46);
        }

        v59 = *(v46 + 2);
        v58 = *(v46 + 3);
        if (v59 >= v58 >> 1)
        {
          v46 = sub_100029B54((v58 > 1), v59 + 1, 1, v46);
        }

        *(v46 + 2) = v59 + 1;
        v55(&v46[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v59], v76, v78);
        v2 = v57;
        v5 = v56;
        v47 = v54;
        v17 = v74;
      }

      v49 += v71;
      --v17;
    }

    while (v17);
  }

  v5 = *(v46 + 2);
  if (!v5)
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_43:
    if (qword_100046528 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

  v80[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v17 = 0;
  v60 = &v46[(*(v77 + 80) + 32) & ~*(v77 + 80)];
  v11 = v77 + 16;
  v16 = v77 + 8;
  while (1)
  {
    if (v17 >= *(v46 + 2))
    {
      __break(1u);
      goto LABEL_50;
    }

    v61 = v78;
    v62 = v73;
    (*(v77 + 16))(v73, &v60[*(v77 + 72) * v17], v78);
    sub_100023CCC(v62, &v81);
    if (v2)
    {
      break;
    }

    ++v17;
    (*v16)(v62, v61);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(v80[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v5 == v17)
    {

      v16 = v80[0];
      goto LABEL_43;
    }
  }

  (*v16)(v62, v61);

  __break(1u);
  return result;
}

uint64_t sub_100026544(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10002659C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000265F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100026680(void (*a1)(char *, uint64_t, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000241B8(a1, a2, v6);
}

uint64_t sub_100026700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026718(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1000025C4(&qword_100046C80, &unk_10002D770);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for IntentFile();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100026878);
}

uint64_t sub_100026878()
{
  v0[2] = _swiftEmptyArrayStorage;
  v1 = v0[4];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v0[14] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[14] = v2;
    if (v2)
    {
LABEL_3:
      if (v2 >= 1)
      {
        v3 = v0[4];
        v0[16] = _swiftEmptyArrayStorage;
        v0[17] = _swiftEmptyArrayStorage;
        v0[15] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[18] = v4;
        v5 = swift_task_alloc();
        v0[19] = v5;
        *v5 = v0;
        v5[1] = sub_100026D54;

        return sub_100012B04();
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_34:
  v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  if (!v7)
  {
    IntentParameter.wrappedValue.getter();
    v8 = v0[3];
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v0[12];
      v43 = *(v10 + 16);
      v40 = v0[8];
      v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v12 = (v10 + 8);
      v41 = (v40 + 32);
      v42 = *(v10 + 72);
      v13 = _swiftEmptyArrayStorage;
      do
      {
        v14 = v13;
        v15 = v0[13];
        v16 = v0[11];
        v17 = v0[6];
        v18 = v0[7];
        v43(v15, v11, v16);
        IntentFile.fileURL.getter();
        (*v12)(v15, v16);
        if ((*(v40 + 48))(v17, 1, v18) == 1)
        {
          sub_100009C18(v0[6], &qword_100046C80, &unk_10002D770);
          v13 = v14;
        }

        else
        {
          v19 = *v41;
          (*v41)(v0[10], v0[6], v0[7]);
          v13 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_100029B54(0, v14[2] + 1, 1, v14);
          }

          v21 = v13[2];
          v20 = v13[3];
          if (v21 >= v20 >> 1)
          {
            v13 = sub_100029B54((v20 > 1), v21 + 1, 1, v13);
          }

          v22 = v0[10];
          v23 = v0[7];
          v13[2] = v21 + 1;
          v19(v13 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v21, v22, v23);
        }

        v11 += v42;
        --v9;
      }

      while (v9);

      v24 = v13[2];
      if (!v24)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
      v24 = _swiftEmptyArrayStorage[2];
      if (!v24)
      {
LABEL_29:

        goto LABEL_30;
      }
    }

    v25 = v0[8];
    specialized ContiguousArray.reserveCapacity(_:)();
    v27 = *(v25 + 16);
    v26 = v25 + 16;
    v44 = v27;
    v28 = v13 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v29 = *(v26 + 56);
    do
    {
      v30 = v0[9];
      v31 = v0[7];
      v44(v30, v28, v31);
      v32 = [objc_allocWithZone(LPLinkMetadata) init];
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      [v32 setOriginalURL:v34];

      URL._bridgeToObjectiveC()(v36);
      v38 = v37;
      [v32 setURL:v37];

      (*(v26 - 8))(v30, v31);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v28 += v29;
      --v24;
    }

    while (v24);
    goto LABEL_29;
  }

LABEL_30:

  v39 = v0[1];

  return v39(_swiftEmptyArrayStorage);
}

uint64_t sub_100026D54(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_100026E54);
}

uint64_t sub_100026E54()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = v1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v3 = *(v0 + 144);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = *(v0 + 16);
    v5 = v4;
  }

  else
  {

    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
  }

  v6 = *(v0 + 120) + 1;
  if (v6 == *(v0 + 112))
  {
    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_31;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:

      v43 = *(v0 + 8);

      return v43(v4);
    }

    IntentParameter.wrappedValue.getter();
    v7 = *(v0 + 24);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v0 + 96);
      v10 = *(v0 + 64);
      v47 = *(v9 + 16);
      v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v12 = (v9 + 8);
      v13 = (v10 + 48);
      v44 = v10;
      v45 = (v10 + 32);
      v46 = *(v9 + 72);
      v14 = _swiftEmptyArrayStorage;
      do
      {
        v15 = *(v0 + 104);
        v16 = *(v0 + 88);
        v17 = *(v0 + 48);
        v18 = *(v0 + 56);
        v47(v15, v11, v16);
        IntentFile.fileURL.getter();
        (*v12)(v15, v16);
        if ((*v13)(v17, 1, v18) == 1)
        {
          sub_100009C18(*(v0 + 48), &qword_100046C80, &unk_10002D770);
        }

        else
        {
          v19 = *v45;
          (*v45)(*(v0 + 80), *(v0 + 48), *(v0 + 56));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_100029B54(0, *(v14 + 2) + 1, 1, v14);
          }

          v21 = *(v14 + 2);
          v20 = *(v14 + 3);
          if (v21 >= v20 >> 1)
          {
            v14 = sub_100029B54((v20 > 1), v21 + 1, 1, v14);
          }

          v22 = *(v0 + 80);
          v23 = *(v0 + 56);
          *(v14 + 2) = v21 + 1;
          v19(&v14[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v21], v22, v23);
        }

        v11 += v46;
        --v8;
      }

      while (v8);

      v28 = *(v14 + 2);
      if (!v28)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
      v28 = _swiftEmptyArrayStorage[2];
      if (!v28)
      {
LABEL_30:

        v4 = _swiftEmptyArrayStorage;
        goto LABEL_31;
      }
    }

    v29 = *(v0 + 64);
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = *(v29 + 16);
    v30 = v29 + 16;
    v48 = v31;
    v32 = &v14[(*(v30 + 64) + 32) & ~*(v30 + 64)];
    v33 = *(v30 + 56);
    do
    {
      v34 = *(v0 + 72);
      v35 = *(v0 + 56);
      v48(v34, v32, v35);
      v36 = [objc_allocWithZone(LPLinkMetadata) init];
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      [v36 setOriginalURL:v38];

      URL._bridgeToObjectiveC()(v40);
      v42 = v41;
      [v36 setURL:v41];

      (*(v30 - 8))(v34, v35);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 += v33;
      --v28;
    }

    while (v28);
    goto LABEL_30;
  }

  *(v0 + 128) = v4;
  *(v0 + 136) = v5;
  *(v0 + 120) = v6;
  v24 = *(v0 + 32);
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v25 = *(v24 + 8 * v6 + 32);
  }

  *(v0 + 144) = v25;
  v26 = swift_task_alloc();
  *(v0 + 152) = v26;
  *v26 = v0;
  v26[1] = sub_100026D54;

  return sub_100012B04();
}

uint64_t sub_100027370()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000273D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027410()
{
  if (*(v0 + 16))
  {
    return dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
  }

  return result;
}

uint64_t sub_100027444()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100027498()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000274E8(uint64_t a1)
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
  v10[1] = sub_10000BA80;

  return sub_100023520(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ShareTransportQuery.init()()
{
  sub_1000025C4(&qword_100046588, &qword_10002E4F0);
  swift_getKeyPath();
  return IntentParameterDependency.__allocating_init<A, B>(_:)();
}

uint64_t sub_100027638()
{
  v0 = type metadata accessor for Logger();
  sub_10000AB94(v0, qword_100047BC0);
  v1 = sub_1000097A8(v0, qword_100047BC0);
  if (qword_1000464D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000097A8(v0, qword_1000493D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100027724@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100027750@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t ShareTransportQuery.entities(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return _swift_task_switch(sub_10002779C);
}

uint64_t sub_10002779C()
{
  v23 = v0;
  if (qword_100046538 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 296) = sub_1000097A8(v1, qword_100047BC0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_100029F40(v6, v7, &v22);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying for entities with identifiers %s", v4, 0xCu);
    sub_10000EF68(v5);
  }

  v9 = sub_1000280D4();
  *(v0 + 304) = v9;
  if (v9)
  {
    v10 = qword_1000464F8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    return _swift_task_switch(sub_100027A64);
  }

  else
  {
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v12 = swift_allocObject();
    v12[1] = xmmword_10002D290;
    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v14 = xmmword_100049448;
    v13 = xmmword_100049458;
    v16 = xmmword_100049428;
    v15 = xmmword_100049438;
    *(v0 + 16) = xmmword_100049428;
    *(v0 + 32) = v15;
    *(v0 + 48) = v14;
    *(v0 + 64) = v13;
    v17 = xmmword_100049438;
    v18 = xmmword_100049448;
    v12[2] = v16;
    v12[3] = v17;
    v19 = xmmword_100049458;
    v12[4] = v18;
    v12[5] = v19;
    sub_10000E408(v0 + 16, v0 + 80);
    v20 = *(v0 + 8);

    return v20(v12);
  }
}

uint64_t sub_100027A64()
{
  v1 = *(v0 + 304);
  type metadata accessor for ShareTransportEntitiesProvider();
  v2 = swift_allocObject();
  *(v0 + 312) = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;

  return _swift_task_switch(sub_100027AE8);
}

uint64_t sub_100027AE8()
{
  v0[34] = v0[35];
  v1 = swift_task_alloc();
  v0[40] = v1;
  v2 = sub_1000025C4(&qword_100047BD8, &qword_10002E540);
  v3 = sub_1000025C4(&qword_100047BE0, &unk_10002E548);
  v4 = sub_10002846C();
  *v1 = v0;
  v1[1] = sub_100027BE8;
  v5 = v0[39];

  return Sequence.asyncMap<A>(_:)(&unk_10002E538, v5, v2, v3, v4);
}

uint64_t sub_100027BE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_10002806C;
  }

  else
  {
    v4 = sub_100027CFC;
  }

  return _swift_task_switch(v4);
}

void sub_100027CFC()
{
  v38 = v0;
  v1 = *(v0 + 328);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = -v2;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v1 + 16);
      if (v3 > v6)
      {
        v6 = v3;
      }

      v7 = -v6;
      v8 = (v1 + 48 + (v3++ << 6));
      while (1)
      {
        if (v7 + v3 == 1)
        {
          __break(1u);
          return;
        }

        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        v32 = *v8;
        v33 = v8[1];
        v34 = v8[2];
        if (v10)
        {
          break;
        }

        ++v3;
        v8 += 4;
        if (v4 + v3 == 1)
        {
          goto LABEL_17;
        }
      }

      *(v0 + 144) = v9;
      *(v0 + 152) = v10;
      *(v0 + 160) = v32;
      *(v0 + 176) = v33;
      *(v0 + 192) = v34;
      sub_10000E408(v0 + 144, v0 + 208);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100029D2C(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100029D2C((v11 > 1), v12 + 1, 1, v5);
      }

      v36 = v33;
      v37 = v34;
      v35 = v32;
      *(v5 + 2) = v12 + 1;
      v13 = &v5[64 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      v14 = v35;
      v15 = v37;
      *(v13 + 4) = v36;
      *(v13 + 5) = v15;
      *(v13 + 3) = v14;
    }

    while (v4 + v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  v16 = *(v0 + 304);

  v17 = v16;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 304);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v35 = swift_slowAlloc();
    *v22 = 136315650;
    v24 = Array.description.getter();
    v26 = sub_100029F40(v24, v25, &v35);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = Array.description.getter();
    v29 = sub_100029F40(v27, v28, &v35);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2112;
    *(v22 + 24) = v21;
    *v23 = v21;
    v30 = v21;
    _os_log_impl(&_mh_execute_header, v18, v19, "Query found entities %s for identifiers %s and configuration %@", v22, 0x20u);
    sub_100014660(v23);

    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = *(v0 + 8);

  v31(v5);
}

uint64_t sub_10002806C()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1000280D4()
{
  if (!IntentParameterDependency.wrappedValue.getter())
  {
    return 0;
  }

  swift_getKeyPath();
  sub_10002A704();
  IntentProjection.subscript.getter();

  sub_100025BB8(v4);

  v0 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_10002A7E0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithItemProviders:isa];

  return v2;
}

uint64_t sub_1000281B4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 80) = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 88) = v5;
  *v5 = v2;
  v5[1] = sub_100028264;

  return sub_10000C7F8(v2 + 16, v3, v4);
}

uint64_t sub_100028264()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100028394);
  }
}

uint64_t sub_100028394()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1000283C0(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BA80;

  return sub_1000281B4(a1, a2);
}

unint64_t sub_10002846C()
{
  result = qword_100047BE8;
  if (!qword_100047BE8)
  {
    sub_10000A780(&qword_100047BD8, &qword_10002E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047BE8);
  }

  return result;
}

uint64_t sub_1000284F0()
{
  if (qword_100046538 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000097A8(v1, qword_100047BC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying for supported entities", v4, 2u);
  }

  v5 = sub_1000280D4();
  *(v0 + 160) = v5;
  if (v5)
  {
    v6 = qword_1000464F8;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    return _swift_task_switch(sub_10002872C);
  }

  else
  {
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v8 = swift_allocObject();
    v8[1] = xmmword_10002D290;
    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v10 = xmmword_100049448;
    v9 = xmmword_100049458;
    v12 = xmmword_100049428;
    v11 = xmmword_100049438;
    *(v0 + 16) = xmmword_100049428;
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    *(v0 + 64) = v9;
    v13 = xmmword_100049438;
    v14 = xmmword_100049448;
    v8[2] = v12;
    v8[3] = v13;
    v15 = xmmword_100049458;
    v8[4] = v14;
    v8[5] = v15;
    sub_10000E408(v0 + 16, v0 + 80);
    v16 = *(v0 + 8);

    return v16(v8);
  }
}

uint64_t sub_10002872C()
{
  v1 = v0[20];
  type metadata accessor for ShareTransportEntitiesProvider();
  v2 = swift_allocObject();
  v0[21] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1000287E0;

  return sub_10000C1A4();
}

uint64_t sub_1000287E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_100028AD0;
  }

  else
  {
    v4 = sub_1000288F4;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_1000288F4()
{
  v17 = v0;
  v1 = *(v0 + 160);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    v8 = Array.description.getter();
    v10 = sub_100029F40(v8, v9, &v16);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    *(v5 + 14) = v4;
    *v6 = v4;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Query found entities %s for configuration %@", v5, 0x16u);
    sub_100014660(v6);

    sub_10000EF68(v7);
  }

  else
  {
    v12 = *(v0 + 160);
  }

  v13 = *(v0 + 184);
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_100028AD0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ShareTransportQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  return _swift_task_switch(sub_100028B5C);
}

uint64_t sub_100028B5C()
{
  v19 = v0;
  if (qword_100046538 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 360) = sub_1000097A8(v1, qword_100047BC0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100029F40(v5, v4, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying for entity matching string %s", v6, 0xCu);
    sub_10000EF68(v7);
  }

  v8 = sub_1000280D4();
  *(v0 + 368) = v8;
  if (v8)
  {
    v9 = qword_1000464F8;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    return _swift_task_switch(sub_100028E04);
  }

  else
  {
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v11 = swift_allocObject();
    v11[1] = xmmword_10002D290;
    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v12 = xmmword_100049428;
    v13 = xmmword_100049438;
    *(v0 + 80) = xmmword_100049428;
    *(v0 + 96) = v13;
    v14 = xmmword_100049448;
    v15 = xmmword_100049458;
    *(v0 + 112) = xmmword_100049448;
    *(v0 + 128) = v15;
    v11[2] = v12;
    v11[3] = v13;
    v11[4] = v14;
    v11[5] = v15;
    sub_10000E408(v0 + 80, v0 + 144);
    v16 = *(v0 + 8);

    return v16(v11);
  }
}

uint64_t sub_100028E04()
{
  v1 = v0[46];
  type metadata accessor for ShareTransportEntitiesProvider();
  v2 = swift_allocObject();
  v0[47] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_100028EC4;
  v4 = v0[42];
  v5 = v0[43];

  return sub_10000CCB8((v0 + 2), v4, v5);
}

uint64_t sub_100028EC4()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_100029238;
  }

  else
  {
    v2 = sub_100028FD8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100028FD8()
{
  v24 = v0;
  v1 = *(v0 + 368);

  v2 = v1;
  sub_10000E408(v0 + 16, v0 + 208);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1000256F4(v0 + 16);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 368);
    v6 = *(v0 + 336);
    v22 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136315650;
    sub_10000E408(v0 + 16, v0 + 272);
    v9 = ShareTransportEntity.description.getter();
    v11 = v10;
    sub_1000256F4(v0 + 16);
    v12 = sub_100029F40(v9, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100029F40(v6, v22, &v23);
    *(v7 + 22) = 2112;
    *(v7 + 24) = v5;
    *v8 = v5;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Query found entity %s matching string %s and configuration %@", v7, 0x20u);
    sub_100014660(v8);

    swift_arrayDestroy();
  }

  v14 = *(v0 + 368);
  sub_1000025C4(&qword_100047488, &qword_10002DE10);
  v15 = swift_allocObject();
  v16 = *(v0 + 16);
  v17 = *(v0 + 32);
  v15[1] = xmmword_10002D290;
  v15[2] = v16;
  v18 = *(v0 + 48);
  v19 = *(v0 + 64);
  v15[3] = v17;
  v15[4] = v18;
  v15[5] = v19;

  v20 = *(v0 + 8);

  return v20(v15);
}

uint64_t sub_100029238()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000292C0()
{
  if (qword_100046500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = xmmword_100049428;
  v3 = xmmword_100049438;
  *(v0 + 80) = xmmword_100049428;
  *(v0 + 96) = v3;
  v4 = xmmword_100049448;
  v5 = xmmword_100049458;
  *(v0 + 112) = xmmword_100049448;
  *(v0 + 128) = v5;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  sub_10000E408(v0 + 80, v0 + 144);
  v6 = *(v0 + 64);
  v8 = *(v0 + 16);
  v7 = *(v0 + 32);
  v1[2] = *(v0 + 48);
  v1[3] = v6;
  *v1 = v8;
  v1[1] = v7;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100029388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100029438;

  return ShareTransportQuery.entities(matching:)(a2, a3, v7);
}

uint64_t sub_100029438(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100029548@<X0>(uint64_t *a1@<X8>)
{
  sub_1000025C4(&qword_100046588, &qword_10002E4F0);
  swift_getKeyPath();
  result = IntentParameterDependency.__allocating_init<A, B>(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100029594(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002A830;

  return ShareTransportQuery.entities(for:)(a1, v4);
}

uint64_t sub_100029630(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10002A82C;

  return ShareTransportQuery.suggestedEntities()(v3);
}

uint64_t sub_1000296C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100029788;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100029788(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100029888(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000B650();
  *v5 = v2;
  v5[1] = sub_10000BA80;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10002995C()
{
  if (qword_100046500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v3 = xmmword_100049448;
  v2 = xmmword_100049458;
  v5 = xmmword_100049428;
  v4 = xmmword_100049438;
  *(v0 + 16) = xmmword_100049428;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  v6 = xmmword_100049438;
  v7 = xmmword_100049458;
  v1[2] = xmmword_100049448;
  v1[3] = v7;
  *v1 = v5;
  v1[1] = v6;
  sub_10000E408(v0 + 16, v0 + 80);
  v8 = *(v0 + 8);

  return v8();
}

void *sub_100029A20(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000025C4(&qword_100047480, &qword_10002DE08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000025C4(&qword_100047470, &qword_10002DE00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100029B54(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000025C4(&qword_100047C38, qword_10002E770);
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

char *sub_100029D2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **sub_100029E38(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100029E48(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100029EE4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100029F40(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100029F40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002A1B0(v11, 0, 0, 1, a1, a2);
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
    sub_10000F374(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000EF68(v11);
  return v7;
}

unint64_t sub_10002A010()
{
  result = qword_100047BF0;
  if (!qword_100047BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047BF0);
  }

  return result;
}

unint64_t sub_10002A068()
{
  result = qword_100047BF8;
  if (!qword_100047BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047BF8);
  }

  return result;
}

unint64_t sub_10002A0C4()
{
  result = qword_100047C00;
  if (!qword_100047C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C00);
  }

  return result;
}

unint64_t sub_10002A11C()
{
  result = qword_100047C08;
  if (!qword_100047C08)
  {
    sub_10000A780(&qword_100047C10, qword_10002E620);
    sub_10000B800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C08);
  }

  return result;
}

unint64_t sub_10002A1B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002A2BC(a5, a6);
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

void *sub_10002A2BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10002A308(a1, a2);
  sub_10002A438(&off_10003D610);
  return v3;
}

void *sub_10002A308(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10002A524(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002A524(v10, 0);
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

uint64_t sub_10002A438(uint64_t result)
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

  result = sub_10002A598(result, v11, 1, v3);
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

void *sub_10002A524(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000025C4(&qword_100047C18, "ȉ");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002A598(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025C4(&qword_100047C18, "ȉ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10002A68C@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10002A704()
{
  result = qword_100047C20;
  if (!qword_100047C20)
  {
    sub_10000A780(&qword_100047C28, &qword_10002E768);
    sub_10002A788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C20);
  }

  return result;
}

unint64_t sub_10002A788()
{
  result = qword_100047C30;
  if (!qword_100047C30)
  {
    type metadata accessor for IntentFile();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C30);
  }

  return result;
}

unint64_t sub_10002A7E0()
{
  result = qword_100047B80;
  if (!qword_100047B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047B80);
  }

  return result;
}

uint64_t dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)()
{
  return dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();
}

{
  return dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();
}

{
  return dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();
}

uint64_t dispatch thunk of UISceneKeyValueStorage.subscript.getter()
{
  return dispatch thunk of UISceneKeyValueStorage.subscript.getter();
}

{
  return dispatch thunk of UISceneKeyValueStorage.subscript.getter();
}

{
  return dispatch thunk of UISceneKeyValueStorage.subscript.getter();
}