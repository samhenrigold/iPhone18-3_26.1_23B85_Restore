double sub_100050238()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075C80, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s [App Shortcut] begin creating app shortcuts", v6, 0xCu);
    sub_100034948(v7);
  }

  (*(v1 + 8))(v3, v0);
  return sub_100036E30(sub_100036BDC, 0);
}

void *sub_1000503F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093C00, &unk_100074450);
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

double sub_1000505E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28[2] = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v2;
    v28[1] = v15;
    v31 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_100005D28(0xD00000000000002FLL, 0x8000000100075560, &v31);
    *(v14 + 12) = 2080;
    v16 = Array.description.getter();
    v28[0] = v8;
    v18 = v7;
    v19 = v5;
    v20 = v4;
    v21 = sub_100005D28(v16, v17, &v31);

    *(v14 + 14) = v21;
    v4 = v20;
    v5 = v19;
    v7 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: URLs: %s", v14, 0x16u);
    swift_arrayDestroy();
    v2 = v29;

    (*(v30 + 8))(v10, v28[0]);
  }

  else
  {

    (*(v30 + 8))(v10, v8);
  }

  v22 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController;
  v23 = *&v2[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController];
  if (v23)
  {
    *&v23[OBJC_IVAR____TtC5Files23DOCImportFileController_delegate + 8] = 0;
    swift_unknownObjectWeakAssign();
    v23 = *&v2[v22];
  }

  *&v2[v22] = 0;

  if (*(a1 + 16) == 1)
  {
    v25 = *(v5 + 80);
    (*(v5 + 16))(v7, a1 + ((v25 + 32) & ~v25), v4);
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    (*(v5 + 32))(v26 + ((v25 + 24) & ~v25), v7, v4);
    v27 = v2;
    DOCRunInMainThread(_:)();
  }

  return result;
}

void sub_1000509F8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  sub_1000448B4(a1, a2, v6, v7, v8);
}

uint64_t sub_100050A8C(unint64_t a1, void *a2, int a3)
{
  v87 = a3;
  v6 = type metadata accessor for Logger();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v80 - v11;
  __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v15 = type metadata accessor for DOCUserActivityIdentifier();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v19 = *(a1 + 32);
      }

      v20 = v19;
      v21 = a2;
      if (!a2)
      {
        v21 = v19;
      }

      v88 = v20;
      v22 = objc_opt_self();
      v92 = 0;
      v23 = a2;
      v89 = v21;
      v24 = [v22 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v92];
      v25 = v92;
      if (v24)
      {
        v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v26;

        v27 = *(v3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
        if (v27)
        {
          v28 = [v27 configuration];
        }

        else
        {
          v28 = [objc_opt_self() configurationForImportingDocumentContentTypes:0 mode:1];
        }

        v30 = v28;
        v92 = 0;
        v31 = v30;
        v32 = [v22 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v92];
        v33 = v92;
        if (v32)
        {
          v83 = v31;
          v84 = v14;
          v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v3;
          v35 = v34;
          v37 = v36;

          (*(v16 + 104))(v18, enum case for DOCUserActivityIdentifier.quickLook(_:), v15);
          DOCUserActivityIdentifier.rawValue.getter();
          (*(v16 + 8))(v18, v15);
          v38 = objc_allocWithZone(NSUserActivity);
          v39 = String._bridgeToObjectiveC()();

          v40 = [v38 initWithActivityType:v39];

          sub_10000DB4C(&qword_100093A28, qword_100074AD0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000736D0;
          *(inited + 32) = DOCUserActivityDOCNodeKey.getter();
          *(inited + 40) = v42;
          *(inited + 48) = 0xD00000000000001ELL;
          *(inited + 56) = 0x8000000100075680;
          sub_10004CDFC(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          isa = Set._bridgeToObjectiveC()().super.isa;

          [v40 setRequiredUserInfoKeys:isa];

          sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
          v44 = swift_initStackObject();
          *(v44 + 16) = xmmword_100073FF0;
          v92 = DOCUserActivityDOCNodeKey.getter();
          v93 = v45;
          AnyHashable.init<A>(_:)();
          *(v44 + 96) = &type metadata for Data;
          v46 = v85;
          v47 = v86;
          *(v44 + 72) = v85;
          *(v44 + 80) = v47;
          v92 = 0xD00000000000001ELL;
          v93 = 0x8000000100075680;
          sub_10000AEE8(v46, v47);
          AnyHashable.init<A>(_:)();
          *(v44 + 168) = &type metadata for Data;
          *(v44 + 144) = v35;
          *(v44 + 152) = v37;
          v92 = 0xD000000000000019;
          v93 = 0x80000001000756A0;
          v81 = v37;
          v82 = v35;
          sub_10000AEE8(v35, v37);
          AnyHashable.init<A>(_:)();
          *(v44 + 240) = &type metadata for Bool;
          *(v44 + 216) = v87 & 1;
          sub_10004CBBC(v44);
          swift_setDeallocating();
          sub_10000DB4C(&qword_100093A38, &qword_1000743B8);
          swift_arrayDestroy();
          v48 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v40 addUserInfoEntriesFromDictionary:v48];

          v49 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
          v95 = type metadata accessor for UIWindowSceneProminentPlacement();
          v96 = sub_10004DC20(&unk_100094250, &type metadata accessor for UIWindowSceneProminentPlacement, &protocol conformance descriptor for UIWindowSceneProminentPlacement);
          sub_10000AE7C(&v92);
          static UIWindowScenePlacement<>._largeProminentPlacement()();
          UIWindowSceneActivationRequestOptions.placement.setter();
          v50 = *(v80 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
          v51 = v49;
          if (v50)
          {
            v50 = [v50 windowScene];
          }

          [v49 setRequestingScene:v50];

          sub_100002B84(0, &unk_100093BC0, UIWindowSceneActivationConfiguration_ptr);
          v60 = v40;
          v98.value.super.super.isa = 0;
          v98.is_nil = 0;
          v61.super.isa = UIWindowSceneActivationConfiguration.init(userActivity:options:preview:)(v60, v98, v99).super.isa;
          [(objc_class *)v61.super.isa setOptions:v49];
          static Logger.Application.getter();
          v62 = v88;
          v63 = v60;
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *v66 = 138412546;
            *(v66 + 4) = v62;
            *(v66 + 12) = 2112;
            *(v66 + 14) = v63;
            *v67 = v62;
            v67[1] = v63;
            v68 = v62;
            v69 = v63;
            _os_log_impl(&_mh_execute_header, v64, v65, "Requesting new Quick Look scene creation for item: %@ with activation activity: %@", v66, 0x16u);
            sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
            swift_arrayDestroy();
          }

          (*(v90 + 8))(v84, v91);
          v70 = [objc_opt_self() sharedApplication];
          v71 = swift_allocObject();
          v72 = v89;
          *(v71 + 16) = v89;
          v96 = sub_100051CBC;
          v97 = v71;
          v92 = _NSConcreteStackBlock;
          v93 = 1107296256;
          v94 = sub_100045D24;
          v95 = &unk_10008E808;
          v73 = _Block_copy(&v92);
          v74 = v61.super.isa;
          v75 = v72;

          [v70 _requestSceneSessionActivationWithConfiguration:v74 errorHandler:v73];

          _Block_release(v73);
          sub_10000A0F8(v82, v81);

          return sub_10000A0F8(v85, v86);
        }

        v52 = v33;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10000A0F8(v85, v86);
      }

      else
      {
        v29 = v25;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      static Logger.Application.getter();
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *v55 = 136315394;
        *(v55 + 4) = sub_100005D28(0xD00000000000003BLL, 0x8000000100075640, &v92);
        *(v55 + 12) = 2080;
        swift_getErrorValue();
        v56 = Error.localizedDescription.getter();
        v58 = sub_100005D28(v56, v57, &v92);

        *(v55 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v53, v54, "%s: Failed to encode FPItem in to data. Error: %s", v55, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return (*(v90 + 8))(v9, v91);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  static Logger.Application.getter();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v92 = v79;
    *v78 = 136315138;
    *(v78 + 4) = sub_100005D28(0xD00000000000003BLL, 0x8000000100075640, &v92);
    _os_log_impl(&_mh_execute_header, v76, v77, "%s: items was empty.", v78, 0xCu);
    sub_100034948(v79);
  }

  return (*(v90 + 8))(v12, v91);
}

void sub_100051664(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = swift_allocObject();
  *(v44 + 16) = &_swiftEmptyArrayStorage;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = dispatch_group_create();
  static Logger.Application.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = a1 >> 62;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075610, aBlock);
    *(v16 + 12) = 2048;
    if (v15)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v13, v14, "%s start preparing items from: %ld nodes", v16, 0x16u);
    sub_100034948(v17);
  }

  else
  {
  }

  (*(v8 + 8))(v10, v7);
  v43 = a1;
  if (v15)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    v21 = v43 & 0xC000000000000001;
    v22 = v43 & 0xFFFFFFFFFFFFFF8;
    while (v21)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_16;
      }

LABEL_12:
      dispatch_group_enter(v12);
      swift_getObjectType();
      v25 = swift_allocObject();
      v25[2] = v12;
      v25[3] = v23;
      v25[4] = v44;
      v26 = v12;
      swift_unknownObjectRetain();

      DOCNode.fpfs_fetchFPItem(completion:)();
      swift_unknownObjectRelease();

      ++v20;
      if (v24 == i)
      {
        goto LABEL_19;
      }
    }

    if (v20 >= *(v22 + 16))
    {
      goto LABEL_17;
    }

    v23 = *(v43 + 8 * v20 + 32);
    swift_unknownObjectRetain();
    v24 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v28[2] = Current;
  v29 = v35;
  v30 = v36;
  *(v28 + 3) = v44;
  *(v28 + 4) = v29;
  *(v28 + 5) = v30;
  aBlock[4] = sub_100051C9C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E790;
  v31 = _Block_copy(aBlock);

  v32 = v37;
  static DispatchQoS.unspecified.getter();
  v45 = &_swiftEmptyArrayStorage;
  sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0, &protocol conformance descriptor for [A]);
  v33 = v39;
  v34 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v31);

  (*(v41 + 8))(v33, v34);
  (*(v38 + 8))(v32, v40);
}

void sub_100051CDC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10003EC28(v2, v3);
}

uint64_t sub_100051D48()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051E50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_100051FC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000520A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_100052120(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100044198(a1, v4);
}

void sub_1000521B0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 25);
  v9 = *(v2 + 32);
  v10 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_10003B160(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100052248()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052340()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100052418(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_1000524E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100009C94(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10004B1B8(v16, a4 & 1);
      v11 = sub_100009C94(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10004B460();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1000526E4()
{
  v1 = v0;
  v2 = [v0 configuration];
  v3 = [v2 isFilesApp];

  if (!v3)
  {
    v6 = &enum case for ScanningError.appNotSupported(_:);
    goto LABEL_5;
  }

  v4 = [v1 configuration];
  v5 = [v4 isPickerUI];

  if (v5)
  {
    v6 = &enum case for ScanningError.pickerNotSupported(_:);
LABEL_5:
    v7 = type metadata accessor for ScanningError();
    sub_10005D97C(&qword_100093F08, &type metadata accessor for ScanningError, &protocol conformance descriptor for ScanningError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *v6, v7);
    return swift_willThrow();
  }

  type metadata accessor for DOCDocumentScannerUtil();
  if ((static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
  {
    v6 = &enum case for ScanningError.documentCameraNotSupported(_:);
    goto LABEL_5;
  }

  return static DOCDocumentScannerUtil.presentScanner(on:)();
}

void sub_100052884(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 currentLocationTitle];
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

BOOL sub_10005293C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10005296C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100052998@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100052A70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10005F3F4(a1);

  *a2 = v3;
  return result;
}

void sub_100052AB0(int a1, void *a2)
{
  v51 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v47 - v9;
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  static Logger.Application.getter();
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v50 = v7;
    v17 = v16;
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v17 = 136315394;
    *(v17 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v17 + 12) = 2080;
    v52 = *&v13[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v18 = v52;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100005D28(v19, v20, aBlock);

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "[Interaction] %s %s", v17, 0x16u);
    swift_arrayDestroy();

    v7 = v50;
  }

  v22 = *(v4 + 8);
  v22(v12, v3);
  v23 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v24 = *&v13[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (v24)
  {
    v25 = v24;
    static Logger.Application.getter();
    v26 = v13;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v49 = v22;
      v30 = v29;
      v31 = swift_slowAlloc();
      v50 = v25;
      aBlock[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v30 + 12) = 2080;
      v52 = *&v13[v23];
      v32 = v52;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v33 = String.init<A>(describing:)();
      v35 = sub_100005D28(v33, v34, aBlock);
      v48 = v10;
      v36 = v3;
      v37 = v35;

      *(v30 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Interaction] %s calling dismiss on: %s", v30, 0x16u);
      swift_arrayDestroy();
      v25 = v50;

      v49(v48, v36);
    }

    else
    {

      v22(v10, v3);
    }

    v45 = *&v13[v23];
    *&v13[v23] = 0;

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F368;
    v46 = _Block_copy(aBlock);

    [v25 dismissViewControllerAnimated:v51 & 1 completion:v46];
    _Block_release(v46);
  }

  else
  {
    static Logger.Application.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v3;
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v40 = 136315138;
      *(v40 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v38, v39, "[Interaction] %s no current preview controller, calling completion immediately", v40, 0xCu);
      sub_100034948(v42);

      v43 = v7;
      v44 = v41;
    }

    else
    {

      v43 = v7;
      v44 = v3;
    }

    v22(v43, v44);
  }
}

void sub_100053084(int a1, void (*a2)(uint64_t), uint64_t a3)
{
  v63 = a2;
  v61 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v57 - v11;
  __chkstk_darwin(v10);
  v14 = (&v57 - v13);
  static Logger.Application.getter();
  v15 = v3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  p_ivars = &QuickLookSceneDelegate.ivars;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v62 = a3;
    v20 = v19;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v20 = 136315394;
    *(v20 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v20 + 12) = 2080;
    v64 = *&v15[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v21 = v64;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100005D28(v22, v23, aBlock);
    v59 = v14;
    v25 = v17;
    v26 = v9;
    v27 = v15;
    v28 = v12;
    v29 = v6;
    v30 = v5;
    v31 = v24;
    p_ivars = (&QuickLookSceneDelegate + 48);

    *(v20 + 14) = v31;
    v5 = v30;
    v6 = v29;
    v12 = v28;
    v15 = v27;
    v9 = v26;
    _os_log_impl(&_mh_execute_header, v16, v25, "[Interaction] %s %s", v20, 0x16u);
    swift_arrayDestroy();

    a3 = v62;

    v32 = *(v6 + 8);
    v32(v59, v5);
  }

  else
  {

    v32 = *(v6 + 8);
    v32(v14, v5);
  }

  v33 = p_ivars[420];
  v34 = *(v33 + v15);
  if (v34)
  {
    v59 = v32;
    v60 = v6;
    v35 = v34;
    static Logger.Application.getter();
    v36 = v15;
    v37 = v15;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v62 = a3;
      v41 = v40;
      aBlock[0] = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v41 + 12) = 2080;
      v64 = *(v33 + v36);
      v42 = v64;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v43 = String.init<A>(describing:)();
      v58 = v5;
      v45 = sub_100005D28(v43, v44, aBlock);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "[Interaction] %s calling dismiss on: %s", v41, 0x16u);
      swift_arrayDestroy();

      a3 = v62;

      v46 = v12;
      v47 = v58;
    }

    else
    {

      v46 = v12;
      v47 = v5;
    }

    v59(v46, v47);
    v55 = *(v33 + v36);
    *(v33 + v36) = 0;

    aBlock[4] = v63;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F2A0;
    v56 = _Block_copy(aBlock);

    [v35 dismissViewControllerAnimated:v61 & 1 completion:v56];
    _Block_release(v56);
  }

  else
  {
    static Logger.Application.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v32;
      v51 = swift_slowAlloc();
      v52 = v5;
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v51 = 136315138;
      *(v51 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v48, v49, "[Interaction] %s no current preview controller, calling completion immediately", v51, 0xCu);
      sub_100034948(v53);

      v54 = v50(v9, v52);
    }

    else
    {

      v54 = (v32)(v9, v5);
    }

    v63(v54);
  }
}

uint64_t sub_1000536A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for Logger();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for DOCBrowserHistoryShiftDirection();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for NavigationDirection();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  sub_10000DB4C(&qword_100093FC8, &qword_100074698);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v7 = type metadata accessor for DOCBrowserHistoryShiftAmount();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v8 = type metadata accessor for DOCNavigationBar.Style();
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[33] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100053958, v10, v9);
}

uint64_t sub_100053958()
{
  v68 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v21 = type metadata accessor for DOCLinkDeferredLocalizedError();
    sub_10005D97C(&qword_100093FD0, &type metadata accessor for DOCLinkDeferredLocalizedError, &protocol conformance descriptor for DOCLinkDeferredLocalizedError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for DOCLinkDeferredLocalizedError.actionNotSupported(_:), v21);
    swift_willThrow();
LABEL_10:

    v25 = v0[1];
    goto LABEL_11;
  }

  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = Strong;
  v6 = [v5 traitCollection];
  UITraitCollection.preferredNavigationBarStyle.getter();

  LOBYTE(v6) = DOCNavigationBar.Style.hasHistoryButtons.getter();
  (*(v3 + 8))(v2, v4);
  if ((v6 & 1) == 0)
  {

LABEL_9:
    v23 = type metadata accessor for DOCLinkDeferredLocalizedError();
    sub_10005D97C(&qword_100093FD0, &type metadata accessor for DOCLinkDeferredLocalizedError, &protocol conformance descriptor for DOCLinkDeferredLocalizedError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for DOCLinkDeferredLocalizedError.actionNotSupported(_:), v23);
    swift_willThrow();

    goto LABEL_10;
  }

  v7 = [v5 presentedViewController];

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    if (v8)
    {
      goto LABEL_9;
    }
  }

  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v13 = v0[18];
  v14 = v0[19];
  (*(v0[28] + 104))(v0[29], enum case for DOCBrowserHistoryShiftAmount.one(_:), v0[27]);
  v15 = *(v14 + 56);
  v15(v9, 1, 1, v13);
  NavigateHistoryIntent.direction.getter();
  v16 = (*(v11 + 88))(v10, v12);
  if (v16 == enum case for NavigationDirection.back(_:))
  {
    v17 = v0[26];
    v18 = v0[18];
    v19 = v0[19];
    sub_100005A04(v17, &qword_100093FC8, &qword_100074698);
    v20 = &enum case for DOCBrowserHistoryShiftDirection.backward(_:);
LABEL_16:
    (*(v19 + 104))(v17, *v20, v18);
    v15(v17, 0, 1, v18);
    goto LABEL_18;
  }

  if (v16 == enum case for NavigationDirection.forward(_:))
  {
    v17 = v0[26];
    v18 = v0[18];
    v19 = v0[19];
    sub_100005A04(v17, &qword_100093FC8, &qword_100074698);
    v20 = &enum case for DOCBrowserHistoryShiftDirection.forward(_:);
    goto LABEL_16;
  }

  v28 = v0[23];
  v27 = v0[24];
  v29 = v0[22];
  v0[5] = v29;
  sub_10000AE7C(v0 + 2);
  NavigateHistoryIntent.direction.getter();
  doc_warnUnrecognizedEnumValueEncountered(_:)();
  v30 = sub_100034948(v0 + 2);
  (*(v28 + 8))(v27, v29, v30);
LABEL_18:
  v31 = v0[25];
  v32 = v0[18];
  v33 = v0[19];
  sub_100034850(v0[26], v31, &qword_100093FC8, &qword_100074698);
  v34 = *(v33 + 48);
  if (v34(v31, 1, v32) == 1)
  {
    sub_100005A04(v0[25], &qword_100093FC8, &qword_100074698);
LABEL_23:
    static Logger.UI.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v0[26];
      v49 = v0[18];
      v50 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_100005D28(0xD00000000000001ELL, 0x80000001000761E0, v67);
      *(v50 + 12) = 2080;
      swift_beginAccess();
      if (v34(v48, 1, v49))
      {
        v51 = 0xE200000000000000;
        v52 = 28526;
      }

      else
      {
        v57 = v0[19];
        v56 = v0[20];
        v58 = v0[18];
        (*(v57 + 16))(v56, v0[26], v58);
        v65 = DOCBrowserHistoryShiftDirection.description.getter();
        v51 = v59;
        (*(v57 + 8))(v56, v58);
        v52 = v65;
      }

      v60 = v0[16];
      v66 = v0[17];
      v61 = v0[15];
      v62 = sub_100005D28(v52, v51, v67);

      *(v50 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s Cannot perform navigation shift action with %s direction", v50, 0x16u);
      swift_arrayDestroy();

      (*(v60 + 8))(v66, v61);
    }

    else
    {
      v54 = v0[16];
      v53 = v0[17];
      v55 = v0[15];

      (*(v54 + 8))(v53, v55);
    }

    v63 = v0[12];
    v63[3] = sub_10000DB4C(&qword_100093FD8, &qword_1000746A0);
    v63[4] = sub_10005DFD4();
    sub_10000AE7C(v63);
    static IntentResult.result<>()();

    goto LABEL_30;
  }

  (*(v0[19] + 32))(v0[21], v0[25], v0[18]);
  v35 = v5;
  v36 = [v35 effectiveFullBrowser];
  v37 = DOCFullDocumentManagerViewController.canPerformHistoryShift(direction:amount:)();

  if ((v37 & 1) == 0)
  {
    v43 = v0[21];
    v44 = v0[18];
    v45 = v0[19];

    (*(v45 + 8))(v43, v44);
    goto LABEL_23;
  }

  v38 = v0[21];
  v39 = v0[18];
  v40 = v0[19];
  v41 = v0[12];
  v42 = [v35 effectiveFullBrowser];

  DOCFullDocumentManagerViewController.performHistoryShift(direction:amount:)();
  v41[3] = sub_10000DB4C(&qword_100093FD8, &qword_1000746A0);
  v41[4] = sub_10005DFD4();
  sub_10000AE7C(v41);
  static IntentResult.result<>()();

  (*(v40 + 8))(v38, v39);
LABEL_30:
  v64 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_100005A04(v64, &qword_100093FC8, &qword_100074698);

  v25 = v0[1];
LABEL_11:

  return v25();
}

uint64_t sub_1000541CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_100054268, v5, v4);
}

uint64_t sub_100054268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = v0[5];
    v3 = [Strong effectiveFullBrowser];
    v0[12] = v3;
    v2[3] = sub_10000DB4C(&qword_100093FB8, &qword_100074680);
    v2[4] = swift_getOpaqueTypeConformance2();
    v4 = sub_10000AE7C(v2);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100054478;

    return SearchFileShortcutsIntent.startSearch(inFullDocumentManagerController:)(v4, v3);
  }

  else
  {

    v6 = type metadata accessor for DOCAppIntentsGenericError();
    sub_10005D97C(&qword_100093FA8, &type metadata accessor for DOCAppIntentsGenericError, &protocol conformance descriptor for DOCAppIntentsGenericError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for DOCAppIntentsGenericError.performIntentError(_:), v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100054478()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_100054604;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_100054594;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100054594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100054604()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);

  sub_10005DED8(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_100054728, v5, v4);
}

uint64_t sub_100054728()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = v0[5];
    v3 = [Strong effectiveFullBrowser];
    v0[12] = v3;
    v2[3] = sub_10000DB4C(&qword_100093FB0, &qword_100074678);
    v2[4] = swift_getOpaqueTypeConformance2();
    v4 = sub_10000AE7C(v2);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100054938;

    return SearchInBrowserIntent.startSearch(inFullDocumentManagerController:)(v4, v3);
  }

  else
  {

    v6 = type metadata accessor for DOCAppIntentsGenericError();
    sub_10005D97C(&qword_100093FA8, &type metadata accessor for DOCAppIntentsGenericError, &protocol conformance descriptor for DOCAppIntentsGenericError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for DOCAppIntentsGenericError.performIntentError(_:), v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100054938()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_10005FFF4;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_10005FFEC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100054A54(void *a1)
{
  v1 = [a1 effectiveFullBrowser];
  [v1 dismissSearch];

  return sub_100054AB0();
}

uint64_t sub_100054AB0()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  return sub_1000526E4();
}

void sub_100054CE4(uint64_t a1, int a2, uint64_t a3)
{
  v48 = a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = v8;
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB4C(&qword_100093F68, &qword_100074640);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v13 = __chkstk_darwin(v12 - 8);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - v16;
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v47 = v3;
  v20 = *(v3 + OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController);
  if (!v20 || ![v20 currentPreviewItem])
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
LABEL_14:
    v29 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = v49;
    (*(v7 + 16))(v49, a1, v6);
    v35 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v36 = (v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    (*(v7 + 32))(v37 + v35, v34, v6);
    v38 = v37 + v36;
    *v38 = a3;
    *(v38 + 8) = v48 & 1;
    aBlock[4] = sub_10005D8C4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001D16C;
    aBlock[3] = &unk_10008F1D8;
    v39 = _Block_copy(aBlock);

    [v29 fetchItemForURL:v32 completionHandler:v39];
    _Block_release(v39);

    return;
  }

  v43 = a3;
  v44 = a1;
  v22 = [v21 previewItemURL];
  if (v22)
  {
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v7 + 56);
    v24(v19, 0, 1, v6);
  }

  else
  {
    v24 = *(v7 + 56);
    v24(v19, 1, 1, v6);
  }

  (*(v7 + 16))(v17, v44, v6);
  v24(v17, 0, 1, v6);
  v25 = *(v9 + 48);
  sub_100034850(v19, v11, &qword_100093F50, &qword_100074090);
  sub_100034850(v17, &v11[v25], &qword_100093F50, &qword_100074090);
  v26 = *(v7 + 48);
  if (v26(v11, 1, v6) == 1)
  {
    swift_unknownObjectRelease();
    sub_100005A04(v17, &qword_100093F50, &qword_100074090);
    sub_100005A04(v19, &qword_100093F50, &qword_100074090);
    if (v26(&v11[v25], 1, v6) == 1)
    {
      sub_100005A04(v11, &qword_100093F50, &qword_100074090);
      return;
    }

    goto LABEL_13;
  }

  v27 = v25;
  v28 = v45;
  sub_100034850(v11, v45, &qword_100093F50, &qword_100074090);
  v42 = v27;
  if (v26(&v11[v27], 1, v6) == 1)
  {
    swift_unknownObjectRelease();
    sub_100005A04(v17, &qword_100093F50, &qword_100074090);
    sub_100005A04(v19, &qword_100093F50, &qword_100074090);
    (*(v7 + 8))(v28, v6);
LABEL_13:
    sub_100005A04(v11, &qword_100093F68, &qword_100074640);
    a3 = v43;
    a1 = v44;
    goto LABEL_14;
  }

  v40 = v49;
  (*(v7 + 32))(v49, &v11[v42], v6);
  sub_10005D97C(&qword_100093F70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  LODWORD(v42) = dispatch thunk of static Equatable.== infix(_:_:)();
  swift_unknownObjectRelease();
  v41 = *(v7 + 8);
  v41(v40, v6);
  sub_100005A04(v17, &qword_100093F50, &qword_100074090);
  sub_100005A04(v19, &qword_100093F50, &qword_100074090);
  v41(v45, v6);
  sub_100005A04(v11, &qword_100093F50, &qword_100074090);
  a3 = v43;
  a1 = v44;
  if ((v42 & 1) == 0)
  {
    goto LABEL_14;
  }
}

void sub_1000553A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v63 = a6;
  v65 = a4;
  v8 = type metadata accessor for URL();
  v66 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = v9;
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB4C(&qword_100093F68, &qword_100074640);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = *(Strong + OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController);
    v61 = v23;
    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = [v24 currentPreviewItem];
    if (!v25)
    {
      goto LABEL_24;
    }

    v26 = v25;
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (!v27)
    {
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = v66;
      v46 = v64;
      (*(v66 + 16))(v64, v65, v8);
      v47 = (*(v45 + 80) + 24) & ~*(v45 + 80);
      v48 = (v47 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = a1;
      v50 = (v47 + v62 + 23) & 0xFFFFFFFFFFFFFFF8;
      v51 = a5;
      v52 = swift_allocObject();
      *(v52 + 16) = v44;
      v53 = v46;
      v23 = v61;
      (*(v45 + 32))(v52 + v47, v53, v8);
      v54 = v52 + v48;
      *v54 = v51;
      *(v54 + 8) = v63 & 1;
      *(v52 + v50) = v49;

      v55 = v49;

      DOCRunInMainThread(_:)();

      goto LABEL_25;
    }

    v60 = v26;
    v56 = v27;
    v57 = a5;
    v28 = [v27 previewItemURL];
    v58 = a1;
    if (v28)
    {
      v29 = v28;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = v66;
    v32 = *(v66 + 56);
    v32(v21, v30, 1, v8);
    (*(v31 + 16))(v19, v65, v8);
    v32(v19, 0, 1, v8);
    v33 = *(v10 + 48);
    sub_100034850(v21, v12, &qword_100093F50, &qword_100074090);
    v59 = v33;
    sub_100034850(v19, &v12[v33], &qword_100093F50, &qword_100074090);
    v34 = *(v31 + 48);
    if (v34(v12, 1, v8) == 1)
    {
      sub_100005A04(v19, &qword_100093F50, &qword_100074090);
      sub_100005A04(v21, &qword_100093F50, &qword_100074090);
      if (v34(&v12[v59], 1, v8) == 1)
      {
        sub_100005A04(v12, &qword_100093F50, &qword_100074090);
LABEL_19:
        swift_unknownObjectRelease();
LABEL_25:

        return;
      }
    }

    else
    {
      sub_100034850(v12, v16, &qword_100093F50, &qword_100074090);
      v35 = v59;
      if (v34(&v12[v59], 1, v8) != 1)
      {
        v40 = v66;
        v41 = v64;
        (*(v66 + 32))(v64, &v12[v35], v8);
        sub_10005D97C(&qword_100093F70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *(v40 + 8);
        v43(v41, v8);
        sub_100005A04(v19, &qword_100093F50, &qword_100074090);
        sub_100005A04(v21, &qword_100093F50, &qword_100074090);
        v43(v16, v8);
        v23 = v61;
        sub_100005A04(v12, &qword_100093F50, &qword_100074090);
        a1 = v58;
        if (v42)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      sub_100005A04(v19, &qword_100093F50, &qword_100074090);
      sub_100005A04(v21, &qword_100093F50, &qword_100074090);
      (*(v66 + 8))(v16, v8);
    }

    sub_100005A04(v12, &qword_100093F68, &qword_100074640);
    a1 = v58;
LABEL_14:
    v36 = [v56 fpItem];
    if (!v36)
    {
      swift_unknownObjectRelease();
      a5 = v57;
      if (!a1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v37 = v36;
    if (a1)
    {
      sub_100002B84(0, &qword_100093F78, FPItem_ptr);
      v38 = a1;
      v39 = static NSObject.== infix(_:_:)();

      swift_unknownObjectRelease();
      a5 = v57;
      if (v39)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    a5 = v57;
    goto LABEL_23;
  }
}

void sub_100055A90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = a4;
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v15, v12, v9);
    *(v17 + v16) = v14;
    v18 = v17 + v22;
    *v18 = a3;
    *(v18 + 8) = v23 & 1;
    *(v17 + ((v16 + 31) & 0xFFFFFFFFFFFFFFF8)) = a5;
    v19 = a5;
    v20 = v14;

    sub_100053084(0, sub_10005DA68, v17);
  }
}

void sub_100055C6C(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v14 = objc_opt_self();
    v15 = a5;
    v27 = a3;
    v28 = v15;
    v29 = [v14 defaultPermission];
    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v16, v13, v10);
    v19 = a2;
    *(v18 + v17) = a2;
    v20 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = v28;
    *v20 = v27;
    *(v20 + 8) = a4 & 1;
    *(v18 + ((v17 + 31) & 0xFFFFFFFFFFFFFFF8)) = v21;
    aBlock[4] = sub_10005DBD8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F278;
    v22 = _Block_copy(aBlock);

    v23 = v21;
    v24 = v19;

    v25 = v29;
    [v29 adoptPersonaFromNode:v23 andPerformBlock:v22];
    _Block_release(v22);
  }

  else
  {

    sub_100055F10(0, a1, a2, a3, a4 & 1);
  }
}

void sub_100055F10(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v80 = a5;
  v76 = a2;
  v77 = a4;
  v79 = a3;
  v6 = type metadata accessor for DOCPreviewRouter.InAppContext();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000DB4C(&unk_100093F80, &qword_100074648);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DOCPreviewSource();
  v78 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (&v71 - v21);
  if (a1)
  {
    sub_10000DB4C(&qword_100093F90, &qword_100074650);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000742D0;
    *(v23 + 32) = a1;
  }

  else
  {
    v71 = v18;
    v72 = v16;
    v73 = v15;
    v74 = (&v71 - v21);
    v75 = v19;
    v24 = v76;
    URL._bridgeToObjectiveC()(v21);
    v26 = v25;
    v27 = [objc_opt_self() fiNodeFromURL:v25];

    if (!v27)
    {
      v59 = v71;
      static Logger.UI.getter();
      v60 = v12;
      v61 = v59;
      (*(v60 + 16))(v14, v24, v11);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v84[0] = v65;
        *v64 = 136315138;
        sub_10005D97C(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v14;
        v69 = v68;
        (*(v60 + 8))(v67, v11);
        v70 = sub_100005D28(v66, v69, v84);

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v62, v63, "Unable to present Quick Look for %s", v64, 0xCu);
        sub_100034948(v65);
      }

      else
      {

        (*(v60 + 8))(v14, v11);
      }

      (*(v72 + 8))(v61, v73);
      return;
    }

    sub_10000DB4C(&qword_100093F90, &qword_100074650);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000742D0;
    *(v23 + 32) = v27;
    v22 = v74;
    v19 = v75;
  }

  *v22 = v23;
  v28 = v78;
  (*(v78 + 104))(v22, enum case for DOCPreviewSource.nodes(_:), v19);
  v29 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
  v30 = a1;
  v31 = DOCPreviewController.init()();
  (*(v28 + 16))(v10, v22, v19);
  v32 = v19;
  (*(v28 + 56))(v10, 0, 1, v19);
  dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();
  sub_100005A04(v10, &unk_100093F80, &qword_100074648);
  v33 = v79;
  [v31 setDelegate:v79];
  v34 = [v33 effectiveFullBrowser];
  v35 = [v34 documentManager];

  dispatch thunk of DOCPreviewController.editingDelegate.setter();
  v36 = [v33 effectiveFullBrowser];
  v37 = [v36 configuration];

  dispatch thunk of DOCPreviewController.configuration.setter();
  v38 = [v33 effectiveFullBrowser];
  v39 = [v38 actionManager];

  dispatch thunk of DOCPreviewController.actionManager.setter();
  v40 = v31;
  v41 = [v40 userActivity];
  if (!v41)
  {
    v42 = objc_allocWithZone(NSUserActivity);
    v43 = String._bridgeToObjectiveC()();
    v44 = [v42 initWithActivityType:v43];

    [v40 setUserActivity:v44];
    v41 = v44;
  }

  v45 = [v40 userActivity];
  v46 = v81;
  if (v45)
  {
    if (v77)
    {
      v47.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v47.super.isa = 0;
    }

    [v45 setUserInfo:v47.super.isa];
  }

  v48 = v40;
  [v48 setAlwaysDisplayPreviewItemTitle:1];
  type metadata accessor for DOCPreviewRouter();
  static DOCPreviewRouter.shared.getter();
  v49 = v33;
  DOCPreviewRouter.InAppContext.init(animated:presentingVC:)();
  dispatch thunk of DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)();
  if (DOCPreviewRouter.presentsInExternalApp.getter())
  {

    (*(v82 + 8))(v46, v83);
    (*(v28 + 8))(v22, v32);
  }

  else
  {
    v50 = *&v49[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    *&v49[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = v48;

    sub_100005BC0(v84);
    v51 = v85;
    if (v85)
    {
      v52 = v86;
      sub_100006C6C(v84, v85);
      (*(v52 + 32))(v51, v52);
      sub_100034948(v84);
    }

    else
    {
      sub_100005A04(v84, &unk_100093F30, &unk_1000745C8);
    }

    sub_100005BC0(v84);
    v53 = v85;
    if (v85)
    {
      v54 = v86;
      sub_100006C6C(v84, v85);
      (*(v54 + 24))(v53, v54);
      sub_100034948(v84);
    }

    else
    {
      sub_100005A04(v84, &unk_100093F30, &unk_1000745C8);
    }

    sub_100005BC0(v84);
    v55 = v85;
    if (v85)
    {
      v56 = v86;
      sub_100006C6C(v84, v85);
      (*(v56 + 40))(v55, v56);
      sub_100034948(v84);
    }

    else
    {
      sub_100005A04(v84, &unk_100093F30, &unk_1000745C8);
    }

    v84[0] = v48;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    (*(v82 + 8))(v46, v83);
    (*(v28 + 8))(v22, v32);

    v58 = *&v49[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver];
    *&v49[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = v57;
  }
}

void sub_100056938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100005BC0(v15);

    v5 = v16;
    if (v16)
    {
      v6 = v17;
      sub_100006C6C(v15, v16);
      (*(v6 + 32))(v5, v6);
      sub_100034948(v15);
    }

    else
    {
      sub_100005A04(v15, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_100005BC0(v15);

    v9 = v16;
    if (v16)
    {
      v10 = v17;
      sub_100006C6C(v15, v16);
      (*(v10 + 24))(v9, v10);
      sub_100034948(v15);
    }

    else
    {
      sub_100005A04(v15, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_100005BC0(v15);

    v13 = v16;
    if (v16)
    {
      v14 = v17;
      sub_100006C6C(v15, v16);
      (*(v14 + 40))(v13, v14);
      sub_100034948(v15);
    }

    else
    {
      sub_100005A04(v15, &unk_100093F30, &unk_1000745C8);
    }
  }
}

uint64_t sub_100056B0C(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v48 = a5;
  v52 = a4;
  v49 = a2;
  v50 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v47 = &v47 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v47 - v14;
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v18 - 8);
  v20 = &v47 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() supportsQuickLookInSharedWindow];
  sub_100034850(a1, v20, &qword_100093F50, &qword_100074090);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100005A04(v20, &qword_100093F50, &qword_100074090);
    static Logger.Application.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[Interaction] Attempted to quick look a nil url. Ignoring", v27, 2u);
    }

    return (*(v54 + 8))(v10, v53);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    if (v50)
    {
      static Logger.Application.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = v22;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v55 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v55);
        _os_log_impl(&_mh_execute_header, v29, v30, "[Interaction] %s openInWindow: true", v32, 0xCu);
        sub_100034948(v33);

        v22 = v31;
      }

      (*(v54 + 8))(v17, v53);
      sub_1000591C0(v24, v52 & 1);
    }

    else
    {
      v34 = v51;
      if (v52)
      {
        static Logger.Application.getter();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = v22;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v55 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v55);
          _os_log_impl(&_mh_execute_header, v35, v36, "[Interaction] %s sharedPreview: true", v38, 0xCu);
          sub_100034948(v39);

          v22 = v37;
        }

        (*(v54 + 8))(v15, v53);
        v40 = v34;
        sub_10005C6C4(0, v40, v40, v49 & 1);
      }

      else
      {
        v41 = v47;
        static Logger.Application.getter();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v22;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v55 = v46;
          *v45 = 136315138;
          *(v45 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v55);
          _os_log_impl(&_mh_execute_header, v42, v43, "[Interaction] %s preview", v45, 0xCu);
          sub_100034948(v46);

          v22 = v44;
        }

        (*(v54 + 8))(v41, v53);
        sub_100054CE4(v24, v49 & 1, v48);
      }
    }

    return (*(v22 + 8))(v24, v21);
  }
}

void sub_10005717C(void *a1, char a2)
{
  v3 = type metadata accessor for DOCPreviewRouter.InAppContext();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DOCPreviewController();
  v7 = [a1 configuration];
  v8 = [v7 sceneIdentifier];

  v9 = static DOCPreviewController.sharedController(for:)();
  if (v9)
  {
    [v9 setDelegate:a1];
    v10 = [a1 effectiveFullBrowser];
    v11 = [v10 documentManager];

    dispatch thunk of DOCPreviewController.editingDelegate.setter();
    v12 = [a1 effectiveFullBrowser];
    v13 = [v12 configuration];

    dispatch thunk of DOCPreviewController.configuration.setter();
    v14 = [a1 effectiveFullBrowser];
    v15 = [v14 actionManager];

    dispatch thunk of DOCPreviewController.actionManager.setter();
    v16 = a1;
    DOCPreviewRouter.InAppContext.init(animated:presentingVC:)();
    type metadata accessor for DOCPreviewRouter();
    static DOCPreviewRouter.shared.getter();
    *(swift_allocObject() + 16) = v16;
    v17 = v16;
    dispatch thunk of DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)();

    if (DOCPreviewRouter.presentsInExternalApp.getter())
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v18 = *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
      *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = v9;
      v19 = v9;

      sub_100005BC0(v32);
      v20 = v33;
      if (v33)
      {
        v21 = v34;
        sub_100006C6C(v32, v33);
        (*(v21 + 32))(v20, v21);
        sub_100034948(v32);
      }

      else
      {
        sub_100005A04(v32, &unk_100093F30, &unk_1000745C8);
      }

      sub_100005BC0(v32);
      v22 = v33;
      if (v33)
      {
        v23 = v34;
        sub_100006C6C(v32, v33);
        (*(v23 + 24))(v22, v23);
        sub_100034948(v32);
      }

      else
      {
        sub_100005A04(v32, &unk_100093F30, &unk_1000745C8);
      }

      sub_100005BC0(v32);
      v24 = v33;
      if (v33)
      {
        v25 = v34;
        sub_100006C6C(v32, v33);
        (*(v25 + 40))(v24, v25);
        sub_100034948(v32);
      }

      else
      {
        sub_100005A04(v32, &unk_100093F30, &unk_1000745C8);
      }

      v32[0] = v19;
      swift_getKeyPath();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      v29 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      (*(v4 + 8))(v6, v3);

      v30 = *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver];
      *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = v29;
    }
  }
}

void sub_10005766C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10005D8BC;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100002DB0;
  v6[3] = &unk_10008F188;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 performAfterCATransactionCommits:v4];
  _Block_release(v4);
}

void sub_100057754(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:DOCQLPreviewFinishLoadingNotificationName object:a1];

  sub_100005BC0(v9);
  v3 = v10;
  if (v10)
  {
    v4 = v11;
    sub_100006C6C(v9, v10);
    (*(v4 + 32))(v3, v4);
    sub_100034948(v9);
  }

  else
  {
    sub_100005A04(v9, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v9);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    sub_100006C6C(v9, v10);
    (*(v6 + 24))(v5, v6);
    sub_100034948(v9);
  }

  else
  {
    sub_100005A04(v9, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v9);
  v7 = v10;
  if (v10)
  {
    v8 = v11;
    sub_100006C6C(v9, v10);
    (*(v8 + 40))(v7, v8);
    sub_100034948(v9);
  }

  else
  {
    sub_100005A04(v9, &unk_100093F30, &unk_1000745C8);
  }
}

void sub_100057900(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v68 = a2;
  v6 = sub_10000DB4C(&qword_100093F58, &qword_100074630);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  static Logger.Application.getter();
  v17 = *(v7 + 16);
  v18 = v68;
  v68 = v6;
  v64 = v17;
  v17(v11, v18, v6);

  v19 = v16;
  v20 = Logger.logObject.getter();
  LODWORD(v6) = static os_log_type_t.info.getter();
  v66 = a3;

  v67 = v6;
  if (os_log_type_enabled(v20, v6))
  {
    v60 = v20;
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v21 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v71[0] = v59;
    *v21 = 136316162;
    *(v21 + 4) = sub_100005D28(0xD000000000000022, 0x80000001000761B0, v71);
    *(v21 + 12) = 2080;
    v22 = v19;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_100005D28(v24, v26, v71);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = v68;
    v64(v65, v11, v68);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    (*(v7 + 8))(v11, v28);
    v32 = sub_100005D28(v29, v31, v71);

    *(v21 + 24) = v32;
    *(v21 + 32) = 2080;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      v35 = [Strong isBeingPresented];
    }

    else
    {
      v35 = 2;
    }

    v70 = v35;
    sub_10000DB4C(&qword_100093F60, &qword_100074638);
    v36 = String.init<A>(describing:)();
    v38 = sub_100005D28(v36, v37, v71);

    *(v21 + 34) = v38;
    *(v21 + 42) = 2080;
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = [v39 isBeingDismissed];
    }

    else
    {
      v41 = 2;
    }

    v42 = v62;
    v70 = v41;
    v43 = String.init<A>(describing:)();
    v45 = sub_100005D28(v43, v44, v71);

    *(v21 + 44) = v45;
    v46 = v60;
    _os_log_impl(&_mh_execute_header, v60, v67, "[Interaction] %s shared Quick Look currentPreviewItemIndex itemChangeObserver observed object: %s change: %s QLVC isBeingPresented: %s isBeingDismissed: %s", v21, 0x34u);
    swift_arrayDestroy();

    (*(v42 + 8))(v61, v63);
  }

  else
  {

    (*(v7 + 8))(v11, v68);
    (*(v13 + 8))(v15, v12);
  }

  swift_beginAccess();
  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = v47;
    sub_100005BC0(v71);

    v49 = v72;
    if (v72)
    {
      v50 = v73;
      sub_100006C6C(v71, v72);
      (*(v50 + 32))(v49, v50);
      sub_100034948(v71);
    }

    else
    {
      sub_100005A04(v71, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    sub_100005BC0(v71);

    v53 = v72;
    if (v72)
    {
      v54 = v73;
      sub_100006C6C(v71, v72);
      (*(v54 + 24))(v53, v54);
      sub_100034948(v71);
    }

    else
    {
      sub_100005A04(v71, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    sub_100005BC0(v71);

    v57 = v72;
    if (v72)
    {
      v58 = v73;
      sub_100006C6C(v71, v72);
      (*(v58 + 40))(v57, v58);
      sub_100034948(v71);
    }

    else
    {
      sub_100005A04(v71, &unk_100093F30, &unk_1000745C8);
    }
  }
}

void sub_100057FE0(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1)
    {
      static Logger.UI.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (opened in an other app)", v16, 2u);
      }

      (*(v6 + 8))(v8, v5);
      type metadata accessor for DOCInteractionManager();
      v17 = [v13 configuration];
      v18 = [v17 sceneIdentifier];

      v19 = static DOCInteractionManager.sharedManager(for:)();
      dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
    }

    else
    {
      (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
      v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v21 = swift_allocObject();
      (*(v10 + 32))(v21 + v20, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      *(v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
      v22 = v13;
      DOCRunInMainThread(_:)();
    }
  }
}

void sub_1000582D4(uint64_t a1, void *a2)
{
  v79 = a1;
  v80 = a2;
  v2 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v2 - 8);
  v4 = &v75 - v3;
  v5 = sub_10000DB4C(&qword_100093BF0, &qword_100074440);
  __chkstk_darwin(v5 - 8);
  v7 = &v75 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v75 - v14;
  v16 = __chkstk_darwin(v13);
  v75 = &v75 - v17;
  __chkstk_darwin(v16);
  v19 = &v75 - v18;
  static Logger.UI.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "[Interaction] update scene activation conditions", v22, 2u);
  }

  v23 = *(v9 + 8);
  v77 = v9 + 8;
  v78 = v8;
  v76 = v23;
  v23(v19, v8);
  v24 = objc_opt_self();
  if ([v24 supportsQuickLookInSharedWindow] && (v25 = objc_msgSend(objc_opt_self(), "sharedApplication"), v26 = objc_msgSend(v25, "supportsMultipleScenes"), v25, v26) && (v27 = sub_10006254C()) != 0)
  {
    v28 = v27;
    if ([v27 delegate])
    {
      type metadata accessor for QuickLookSceneDelegate(0);
      if (swift_dynamicCastClass())
      {
        sub_10000DB4C(&unk_100093C40, "&+");
        v29 = v28;
        v30 = type metadata accessor for URL();
        v31 = *(v30 - 8);
        v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_100073FE0;
        (*(v31 + 16))(v33 + v32, v79, v30);
        sub_100065908(v33);
        swift_setDeallocating();
        (*(v31 + 8))(v33 + v32, v30);
        swift_deallocClassInstance();
        v34 = v80;
        v35 = [v80 viewIfLoaded];
        v36 = [v35 window];

        v37 = [v36 windowScene];
        sub_1000620FC(v29, v37);

        type metadata accessor for DOCInteractionManager();
        v38 = [v34 configuration];
        v39 = [v38 sceneIdentifier];

        v40 = static DOCInteractionManager.sharedManager(for:)();
        dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

        v41 = v75;
        static Logger.UI.getter();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (focus on existing window scene) ", v44, 2u);
        }

        swift_unknownObjectRelease();
        v45 = v41;
        v46 = v78;
LABEL_16:
        v76(v45, v46);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v47 = [objc_opt_self() sharedApplication];
    v48 = [v47 supportsMultipleScenes];

    if (v48)
    {
      sub_10005A36C(v79);
      if (v49)
      {
        v50 = v49;
        v51 = v80;
        v52 = [v80 viewIfLoaded];
        v53 = [v52 window];

        v54 = [v53 windowScene];
        sub_1000620FC(v50, v54);

        type metadata accessor for DOCInteractionManager();
        v55 = [v51 configuration];
        v56 = [v55 sceneIdentifier];

        v57 = static DOCInteractionManager.sharedManager(for:)();
        dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

        static Logger.UI.getter();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        v60 = os_log_type_enabled(v58, v59);
        v61 = v78;
        if (v60)
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (focus on existing scene)", v62, 2u);
        }

        v45 = v15;
        v46 = v61;
        goto LABEL_16;
      }
    }

    v63 = [v80 viewIfLoaded];
    v64 = [v63 window];

    v65 = [v64 windowScene];
    v66 = v78;
    if (v65 && (URL.contentType.getter(), v67 = UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)(), v65, sub_100005A04(v7, &qword_100093BF0, &qword_100074440), (v67 & 1) != 0))
    {
      v68 = [v24 supportsQuickLookInSharedWindow];
      v69 = 1;
    }

    else
    {
      v69 = 0;
      v68 = 1;
    }

    static Logger.UI.getter();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "[Interaction] Opening in Quick Look", v72, 2u);
    }

    v76(v12, v66);
    v73 = type metadata accessor for URL();
    v74 = *(v73 - 8);
    (*(v74 + 16))(v4, v79, v73);
    (*(v74 + 56))(v4, 0, 1, v73);
    sub_100056B0C(v4, 1, v69, v68, 0);
    sub_100005A04(v4, &qword_100093F50, &qword_100074090);
  }
}

void sub_100058BE4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1)
    {
      type metadata accessor for DOCInteractionManager();
      v14 = [v13 configuration];
      v15 = [v14 sceneIdentifier];

      v16 = static DOCInteractionManager.sharedManager(for:)();
      dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

      static Logger.UI.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickImportedURLs: (opened in an other app)", v19, 2u);
      }

      else
      {
      }

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
      v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v13;
      (*(v10 + 32))(v21 + v20, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      v22 = v13;
      DOCRunInMainThread(_:)();
    }
  }
}

uint64_t sub_100058EE4(void *a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10000DB4C(&qword_100093BF0, &qword_100074440);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = [a1 viewIfLoaded];
  v11 = [v10 window];

  v12 = [v11 windowScene];
  if (v12)
  {
    URL.contentType.getter();
    v13 = UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)();

    sub_100005A04(v9, &qword_100093BF0, &qword_100074440);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() supportsQuickLookInSharedWindow];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, a2, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  sub_100056B0C(v6, 1, v13 & 1, v14, 0);
  return sub_100005A04(v6, &qword_100093F50, &qword_100074090);
}

uint64_t sub_100059134(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for URL();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

void sub_1000591C0(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100005BC0(v17);
  if (v18)
  {
    sub_10000DB4C(&qword_100093F40, &unk_1000745D8);
    type metadata accessor for BrowserSceneDelegate();
    if (swift_dynamicCast())
    {
      v9 = v16;
      type metadata accessor for DOCInteractionManager();
      v10 = [v2 configuration];
      v11 = [v10 sceneIdentifier];

      v12 = static DOCInteractionManager.sharedManager(for:)();
      dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

      static Logger.UI.getter();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "[Interaction] Clearing lastOpenedNode in documentBrowser:didPickDocumentsAt: (focus on existing scene)", v15, 2u);
      }

      (*(v6 + 8))(v8, v5);
      sub_10003D920(a1, a2 & 1);
    }
  }

  else
  {
    sub_100005A04(v17, &unk_100093F30, &unk_1000745C8);
  }
}

void sub_1000593F8(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = v3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v11 = 136315650;
    *(v11 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100076190, &v34);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    *v12 = v7;
    *(v11 + 22) = 2080;
    v13 = v7;
    sub_100005BC0(v35);
    v14 = v36;
    if (v36)
    {
      v15 = v37;
      sub_100006C6C(v35, v36);
      v16 = (*(v15 + 8))(v14, v15);
      v14 = v17;
      sub_100034948(v35);
    }

    else
    {
      sub_100005A04(v35, &unk_100093F30, &unk_1000745C8);
      v16 = 0;
    }

    v35[0] = v16;
    v35[1] = v14;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100005D28(v18, v19, &v34);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Interaction] %s controller: %@ scene: %s", v11, 0x20u);
    sub_100005A04(v12, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    (*(v4 + 8))(v6, v33);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for DOCInteractionManager();
  v21 = [v8 configuration];
  v22 = [v21 sceneIdentifier];

  v23 = static DOCInteractionManager.sharedManager(for:)();
  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();

  v24 = *&v8[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver];
  *&v8[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;

  v25 = *&v8[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  *&v8[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;

  sub_100005BC0(v35);
  v26 = v36;
  if (v36)
  {
    v27 = v37;
    sub_100006C6C(v35, v36);
    (*(v27 + 32))(v26, v27);
    sub_100034948(v35);
  }

  else
  {
    sub_100005A04(v35, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v35);
  v28 = v36;
  if (v36)
  {
    v29 = v37;
    sub_100006C6C(v35, v36);
    (*(v29 + 24))(v28, v29);
    sub_100034948(v35);
  }

  else
  {
    sub_100005A04(v35, &unk_100093F30, &unk_1000745C8);
  }

  sub_100005BC0(v35);
  v30 = v36;
  if (v36)
  {
    v31 = v37;
    sub_100006C6C(v35, v36);
    (*(v31 + 40))(v30, v31);
    sub_100034948(v35);
  }

  else
  {
    sub_100005A04(v35, &unk_100093F30, &unk_1000745C8);
  }
}

id sub_100059D9C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  if (a1)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for DRIMainViewController(0);
  v7 = objc_msgSendSuper2(&v9, "initForOpeningFilesWithContentTypes:", v6.super.isa);

  return v7;
}

id sub_100059F00(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DRIMainViewController(0);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10005A06C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DRIMainViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005A36C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v96 = &v86 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v86 - v9;
  __chkstk_darwin(v8);
  v12 = &v86 - v11;
  v13 = type metadata accessor for URL();
  v113[3] = v13;
  v113[4] = &off_10008EFC0;
  v14 = sub_10000AE7C(v113);
  v15 = *(*(v13 - 8) + 16);
  v93 = v14;
  v15(v14, a1, v13);
  static Logger.Application.getter();
  sub_100034994(v113, v114);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v97 = v10;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *&v107 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100076230, &v107);
    *(v19 + 12) = 2080;
    sub_100006C6C(v114, v115);
    v110[0] = URL.absoluteString.getter();
    v110[1] = v20;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100034948(v114);
    v24 = sub_100005D28(v21, v23, &v107);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s identifier: %s", v19, 0x16u);
    swift_arrayDestroy();

    v100 = *(v3 + 8);
    v100(v12, v2);
  }

  else
  {

    v100 = *(v3 + 8);
    v100(v12, v2);
    sub_100034948(v114);
  }

  v25 = [objc_opt_self() sharedApplication];
  v26 = [v25 connectedScenes];

  v27 = sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_10005FD68();
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v101 = v2;
  v102 = v27;
  if ((v28 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v28 = v114[0];
    v30 = v114[1];
    v31 = v114[2];
    v32 = v115;
    v33 = v116;
  }

  else
  {
    v32 = 0;
    v34 = -1 << *(v28 + 32);
    v30 = v28 + 56;
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v28 + 56);
  }

  v98 = v31;
  v37 = (v31 + 64) >> 6;
  v38 = v3 + 8;
  v95 = "ntManager.qlActivity";
  *&v29 = 136315394;
  v94 = v29;
  if ((v28 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v39 = __CocoaSet.Iterator.next()();
  if (v39)
  {
    *&v107 = v39;
    swift_dynamicCast();
    v40 = v110[0];
    v41 = v32;
    v42 = v33;
    if (v110[0])
    {
      while (1)
      {
        v45 = [v40 delegate];
        if (!v45)
        {
          break;
        }

        v103 = v32;
        v104 = v45;
        sub_10000DB4C(&qword_100093F48, qword_1000745E8);
        sub_10000DB4C(&qword_100093F40, &unk_1000745D8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v109 = 0;
          v107 = 0u;
          v108 = 0u;
LABEL_27:

LABEL_28:
          sub_100005A04(&v107, &unk_100093F30, &unk_1000745C8);
          v32 = v41;
          v33 = v42;
          if (v28 < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_14;
        }

        if (!*(&v108 + 1))
        {
          goto LABEL_27;
        }

        v99 = v28;
        sub_1000349F8(&v107, v110);
        v46 = v111;
        v47 = v112;
        sub_100006C6C(v110, v111);
        v48 = (*(v47 + 8))(v46, v47);
        if (v49)
        {
          v50 = v49;
          v92 = v48;
          v51 = v96;
          static Logger.Application.getter();
          sub_100034994(v113, &v107);
          v52 = Logger.logObject.getter();
          v90 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v52, v90))
          {
            v53 = swift_slowAlloc();
            v87 = v52;
            v54 = v53;
            v88 = swift_slowAlloc();
            v106 = v88;
            *v54 = v94;
            *(v54 + 4) = sub_100005D28(0xD000000000000018, v95 | 0x8000000000000000, &v106);
            *(v54 + 12) = 2080;
            sub_100006C6C(&v107, *(&v108 + 1));
            v104 = URL.absoluteString.getter();
            v105 = v55;
            sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
            v56 = String.init<A>(describing:)();
            v89 = v38;
            v58 = v57;
            sub_100034948(&v107);
            v59 = sub_100005D28(v56, v58, &v106);

            *(v54 + 14) = v59;
            v60 = v87;
            _os_log_impl(&_mh_execute_header, v87, v90, "%s scene identifier: %s", v54, 0x16u);
            swift_arrayDestroy();
            v38 = v89;

            v100(v96, v101);
          }

          else
          {

            v100(v51, v101);
            sub_100034948(&v107);
          }

          if (URL.absoluteString.getter() == v92 && v50 == v61)
          {

LABEL_41:
            v89 = v38;
            v72 = v91;
            static Logger.Application.getter();
            sub_100034994(v113, &v107);
            v73 = v40;
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v106 = v102;
              *v76 = 136315906;
              *(v76 + 4) = sub_100005D28(0xD000000000000018, v95 | 0x8000000000000000, &v106);
              *(v76 + 12) = 2080;
              sub_100006C6C(&v107, *(&v108 + 1));
              LODWORD(v97) = v75;
              v104 = URL.absoluteString.getter();
              v105 = v78;
              sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
              v79 = String.init<A>(describing:)();
              v81 = v80;
              sub_100034948(&v107);
              v82 = sub_100005D28(v79, v81, &v106);

              *(v76 + 14) = v82;
              *(v76 + 22) = 2112;
              *(v76 + 24) = v73;
              *v77 = v40;
              *(v76 + 32) = 2080;
              v104 = [v73 delegate];
              sub_10000DB4C(&qword_100094000, qword_1000746A8);
              v83 = String.init<A>(describing:)();
              v85 = sub_100005D28(v83, v84, &v106);

              *(v76 + 34) = v85;
              _os_log_impl(&_mh_execute_header, v74, v97, "%s SUCCESS for identifier: %s windowScene: %@ delegate: %s", v76, 0x2Au);
              sub_100005A04(v77, &qword_1000937D0, &unk_1000743F0);

              swift_arrayDestroy();

              sub_100052240(v99);

              v100(v72, v101);
            }

            else
            {
              sub_100052240(v99);

              v100(v72, v101);
              sub_100034948(&v107);
            }

            sub_100034948(v110);
            goto LABEL_39;
          }

          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v62)
          {
            goto LABEL_41;
          }
        }

        sub_100034948(v110);
        v32 = v41;
        v33 = v42;
        v28 = v99;
        if (v99 < 0)
        {
          goto LABEL_11;
        }

LABEL_14:
        v43 = v32;
        v44 = v33;
        v41 = v32;
        if (!v33)
        {
          while (1)
          {
            v41 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            if (v41 >= v37)
            {
              goto LABEL_36;
            }

            v44 = *(v30 + 8 * v41);
            ++v43;
            if (v44)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          return;
        }

LABEL_18:
        v42 = (v44 - 1) & v44;
        v40 = *(*(v28 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v44)))));
        if (!v40)
        {
          goto LABEL_36;
        }
      }

      v109 = 0;
      v107 = 0u;
      v108 = 0u;
      goto LABEL_28;
    }
  }

LABEL_36:
  sub_100052240(v28);
  v63 = v97;
  static Logger.Application.getter();
  sub_100034994(v113, v110);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v66 = v94;
    *(v66 + 4) = sub_100005D28(0xD000000000000018, v95 | 0x8000000000000000, &v104);
    *(v66 + 12) = 2080;
    sub_100006C6C(v110, v111);
    *&v107 = URL.absoluteString.getter();
    *(&v107 + 1) = v67;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v68 = String.init<A>(describing:)();
    v70 = v69;
    sub_100034948(v110);
    v71 = sub_100005D28(v68, v70, &v104);

    *(v66 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "%s No existing scene for %s", v66, 0x16u);
    swift_arrayDestroy();

    v100(v63, v101);
  }

  else
  {

    v100(v63, v101);
    sub_100034948(v110);
  }

LABEL_39:
  sub_100034948(v113);
}

void sub_10005B100(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v106 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v112 = &v101[-v7];
  v8 = __chkstk_darwin(v6);
  v10 = &v101[-v9];
  __chkstk_darwin(v8);
  v12 = &v101[-v11];
  v129[3] = sub_100002B84(0, &qword_100093F78, FPItem_ptr);
  v129[4] = &off_10008EFB0;
  v129[0] = a1;
  v109 = a1;
  static Logger.Application.getter();
  sub_100034994(v129, v130);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v118 = v2;
  v113 = v10;
  if (v15)
  {
    v16 = swift_slowAlloc();
    *&v123 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100076230, &v123);
    *(v16 + 12) = 2080;
    v17 = [*sub_100006C6C(v130 v131)];
    v18 = FPItemID.identifierString.getter();
    v20 = v19;

    v126[0] = v18;
    v126[1] = v20;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100034948(v130);
    v24 = sub_100005D28(v21, v23, &v123);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s identifier: %s", v16, 0x16u);
    swift_arrayDestroy();

    v117 = *(v3 + 8);
    v117(v12, v118);
  }

  else
  {

    v117 = *(v3 + 8);
    v117(v12, v2);
    sub_100034948(v130);
  }

  v25 = [objc_opt_self() sharedApplication];
  v26 = [v25 connectedScenes];

  v27 = sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_10005FD68();
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v119 = v27;
  if ((v28 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v28 = v130[0];
    v30 = v130[1];
    v31 = v130[2];
    v32 = v131;
    v33 = v132;
  }

  else
  {
    v32 = 0;
    v34 = -1 << *(v28 + 32);
    v30 = v28 + 56;
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v28 + 56);
  }

  v114 = v31;
  v37 = (v31 + 64) >> 6;
  v116 = v3 + 8;
  v111 = "ntManager.qlActivity";
  *&v29 = 136315394;
  v110 = v29;
  v38 = v32;
  while (v28 < 0)
  {
    v44 = __CocoaSet.Iterator.next()();
    if (!v44 || (*&v123 = v44, swift_dynamicCast(), v43 = v126[0], v41 = v38, v42 = v33, !v126[0]))
    {
LABEL_37:
      sub_100052240(v28);
      v72 = v113;
      static Logger.Application.getter();
      sub_100034994(v129, v126);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *v75 = v110;
        *(v75 + 4) = sub_100005D28(0xD000000000000018, v111 | 0x8000000000000000, &v120);
        *(v75 + 12) = 2080;
        v76 = [*sub_100006C6C(v126 v127)];
        v77 = FPItemID.identifierString.getter();
        v79 = v78;

        *&v123 = v77;
        *(&v123 + 1) = v79;
        sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
        v80 = String.init<A>(describing:)();
        v82 = v81;
        sub_100034948(v126);
        v83 = sub_100005D28(v80, v82, &v120);

        *(v75 + 14) = v83;
        _os_log_impl(&_mh_execute_header, v73, v74, "%s No existing scene for %s", v75, 0x16u);
        swift_arrayDestroy();

        v117(v72, v118);
      }

      else
      {

        v117(v72, v118);
        sub_100034948(v126);
      }

      goto LABEL_40;
    }

LABEL_20:
    v45 = [v43 delegate];
    if (!v45)
    {

      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      goto LABEL_29;
    }

    v120 = v45;
    sub_10000DB4C(&qword_100093F48, qword_1000745E8);
    sub_10000DB4C(&qword_100093F40, &unk_1000745D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
LABEL_28:

LABEL_29:
      sub_100005A04(&v123, &unk_100093F30, &unk_1000745C8);
      goto LABEL_30;
    }

    if (!*(&v124 + 1))
    {
      goto LABEL_28;
    }

    v115 = v28;
    sub_1000349F8(&v123, v126);
    v46 = v127;
    v47 = v128;
    sub_100006C6C(v126, v127);
    v48 = (*(v47 + 8))(v46, v47);
    v108 = v49;
    if (v49)
    {
      v107 = v48;
      v50 = v112;
      static Logger.Application.getter();
      sub_100034994(v129, &v123);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      v53 = os_log_type_enabled(v51, v52);
      v105 = v38;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v103 = v51;
        v55 = v54;
        v104 = swift_slowAlloc();
        v122 = v104;
        *v55 = v110;
        *(v55 + 4) = sub_100005D28(0xD000000000000018, v111 | 0x8000000000000000, &v122);
        *(v55 + 12) = 2080;
        v56 = [*sub_100006C6C(&v123 *(&v124 + 1))];
        v57 = FPItemID.identifierString.getter();
        v102 = v52;
        v58 = v57;
        v60 = v59;

        v120 = v58;
        v121 = v60;
        sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
        v61 = String.init<A>(describing:)();
        v63 = v62;
        sub_100034948(&v123);
        v64 = sub_100005D28(v61, v63, &v122);

        *(v55 + 14) = v64;
        v65 = &off_100091000;
        v66 = v103;
        _os_log_impl(&_mh_execute_header, v103, v102, "%s scene identifier: %s", v55, 0x16u);
        swift_arrayDestroy();

        v117(v112, v118);
      }

      else
      {

        v117(v50, v118);
        sub_100034948(&v123);
        v65 = &off_100091000;
      }

      v28 = v115;
      v67 = [v109 v65[388]];
      v68 = FPItemID.identifierString.getter();
      v70 = v69;

      if (v68 == v107 && v108 == v70)
      {

LABEL_42:
        v84 = v106;
        static Logger.Application.getter();
        sub_100034994(v129, &v123);
        v85 = v43;
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v122 = v119;
          *v88 = 136315906;
          *(v88 + 4) = sub_100005D28(0xD000000000000018, v111 | 0x8000000000000000, &v122);
          *(v88 + 12) = 2080;
          v89 = [*sub_100006C6C(&v123 *(&v124 + 1))];
          v90 = FPItemID.identifierString.getter();
          LODWORD(v113) = v87;
          v92 = v91;

          v120 = v90;
          v121 = v92;
          sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
          v93 = String.init<A>(describing:)();
          v95 = v94;
          sub_100034948(&v123);
          v96 = sub_100005D28(v93, v95, &v122);

          *(v88 + 14) = v96;
          *(v88 + 22) = 2112;
          *(v88 + 24) = v85;
          v97 = v112;
          *v112 = v43;
          *(v88 + 32) = 2080;
          v120 = [v85 delegate];
          sub_10000DB4C(&qword_100094000, qword_1000746A8);
          v98 = String.init<A>(describing:)();
          v100 = sub_100005D28(v98, v99, &v122);

          *(v88 + 34) = v100;
          _os_log_impl(&_mh_execute_header, v86, v113, "%s SUCCESS for identifier: %s windowScene: %@ delegate: %s", v88, 0x2Au);
          sub_100005A04(v97, &qword_1000937D0, &unk_1000743F0);

          swift_arrayDestroy();

          sub_100052240(v115);

          v117(v84, v118);
        }

        else
        {
          sub_100052240(v28);

          v117(v84, v118);
          sub_100034948(&v123);
        }

        sub_100034948(v126);
LABEL_40:
        sub_100034948(v129);
        return;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v71)
      {
        goto LABEL_42;
      }

      sub_100034948(v126);
LABEL_30:
      v38 = v41;
      v33 = v42;
    }

    else
    {

      sub_100034948(v126);
      v38 = v41;
      v33 = v42;
      v28 = v115;
    }
  }

  v39 = v38;
  v40 = v33;
  v41 = v38;
  if (v33)
  {
LABEL_16:
    v42 = (v40 - 1) & v40;
    v43 = *(*(v28 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
    if (!v43)
    {
      goto LABEL_37;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
      goto LABEL_37;
    }

    v40 = *(v30 + 8 * v41);
    ++v39;
    if (v40)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_10005BF68(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v68 = a1;
  v11 = type metadata accessor for Logger();
  v69 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v67 = &v61 - v16;
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v65 = a4;
  *(v19 + 32) = a5;
  LODWORD(v66) = a6;
  *(v19 + 40) = a6;
  v64 = a3;

  static Logger.Application.getter();
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  p_ivars = &QuickLookSceneDelegate.ivars;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v63 = a5;
    v25 = v24;
    v62 = swift_slowAlloc();
    aBlock = v62;
    *v25 = 136315394;
    *(v25 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, &aBlock);
    *(v25 + 12) = 2080;
    v70 = *&v20[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v26 = v70;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v27 = String.init<A>(describing:)();
    v61 = v21;
    v29 = sub_100005D28(v27, v28, &aBlock);
    v30 = v69;

    *(v25 + 14) = v29;
    v31 = v61;
    _os_log_impl(&_mh_execute_header, v61, v22, "[Interaction] %s %s", v25, 0x16u);
    swift_arrayDestroy();

    a5 = v63;

    v32 = v30;
    p_ivars = (&QuickLookSceneDelegate + 48);
  }

  else
  {

    v32 = v69;
  }

  v33 = *(v32 + 8);
  v33(v18, v11);
  v34 = p_ivars[420];
  v35 = *(v34 + v20);
  if (v35)
  {
    v36 = v35;
    v37 = v67;
    static Logger.Application.getter();
    v38 = v20;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v11;
      v42 = v41;
      aBlock = swift_slowAlloc();
      *v42 = 136315394;
      *(v42 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, &aBlock);
      *(v42 + 12) = 2080;
      v70 = *(v34 + v20);
      v43 = v70;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v44 = String.init<A>(describing:)();
      v64 = v33;
      v46 = sub_100005D28(v44, v45, &aBlock);
      v66 = v36;
      v47 = v20;
      v48 = v37;
      v49 = v46;

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "[Interaction] %s calling dismiss on: %s", v42, 0x16u);
      swift_arrayDestroy();

      v50 = v48;
      v20 = v47;
      v36 = v66;
      v64(v50, v65);
    }

    else
    {

      v33(v37, v11);
    }

    v56 = *(v34 + v20);
    *(v34 + v20) = 0;

    v75 = sub_10005FDE4;
    v76 = v19;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_100002DB0;
    v74 = &unk_10008F520;
    v57 = _Block_copy(&aBlock);

    [v36 dismissViewControllerAnimated:v68 & 1 completion:v57];
  }

  else
  {
    static Logger.Application.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, &aBlock);
      _os_log_impl(&_mh_execute_header, v51, v52, "[Interaction] %s no current preview controller, calling completion immediately", v53, 0xCu);
      sub_100034948(v54);
    }

    v33(v14, v11);
    v55 = v64;
    if (*(v64 + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8))
    {

      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
    }

    v58 = swift_allocObject();
    v59 = v65;
    *(v58 + 16) = v55;
    *(v58 + 24) = v59;
    *(v58 + 32) = a5;
    *(v58 + 40) = v66;
    v75 = sub_10005FE50;
    v76 = v58;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_100002DB0;
    v74 = &unk_10008F4F8;
    v57 = _Block_copy(&aBlock);
    v60 = v55;

    [v60 finishedTest:v36 waitForCommit:1 extraResults:0 withTeardownBlock:v57];
  }

  _Block_release(v57);
}

void sub_10005C6C4(int a1, void *a2, void *a3, int a4)
{
  v60 = a1;
  v7 = type metadata accessor for Logger();
  v61 = *(v7 - 1);
  v8 = __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v55 - v12;
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  LODWORD(v59) = a4;
  *(v16 + 24) = a4;
  v58 = a3;
  static Logger.Application.getter();
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  p_ivars = &QuickLookSceneDelegate.ivars;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v57 = v13;
    v22 = v21;
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v22 = 136315394;
    *(v22 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v22 + 12) = 2080;
    v62 = *&v17[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v23 = v62;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v24 = String.init<A>(describing:)();
    v26 = v10;
    v27 = v16;
    v28 = v7;
    v29 = sub_100005D28(v24, v25, aBlock);

    *(v22 + 14) = v29;
    v7 = v28;
    v16 = v27;
    v30 = v61;
    _os_log_impl(&_mh_execute_header, v18, v19, "[Interaction] %s %s", v22, 0x16u);
    swift_arrayDestroy();

    v13 = v57;

    v31 = v30;
    v10 = v26;
    p_ivars = (&QuickLookSceneDelegate + 48);
  }

  else
  {

    v31 = v61;
  }

  v32 = *(v31 + 8);
  (v32)(v15, v7);
  v33 = p_ivars[420];
  v34 = *(v33 + v17);
  if (v34)
  {
    v35 = v34;
    static Logger.Application.getter();
    v36 = v17;
    v37 = v17;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v59 = v35;
      v41 = v40;
      v42 = swift_slowAlloc();
      v58 = v7;
      aBlock[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v41 + 12) = 2080;
      v62 = *(v33 + v36);
      v43 = v62;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v44 = String.init<A>(describing:)();
      v46 = sub_100005D28(v44, v45, aBlock);
      v57 = v32;
      v47 = v13;
      v48 = v46;

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "[Interaction] %s calling dismiss on: %s", v41, 0x16u);
      swift_arrayDestroy();

      v35 = v59;

      (v57)(v47, v58);
    }

    else
    {

      (v32)(v13, v7);
    }

    v53 = *(v33 + v36);
    *(v33 + v36) = 0;

    aBlock[4] = sub_10005D894;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F098;
    v54 = _Block_copy(aBlock);

    [v35 dismissViewControllerAnimated:v60 & 1 completion:v54];
    _Block_release(v54);
  }

  else
  {
    static Logger.Application.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v49, v50, "[Interaction] %s no current preview controller, calling completion immediately", v51, 0xCu);
      sub_100034948(v52);
    }

    (v32)(v10, v7);
    sub_10005717C(v58, v59 & 1);
  }
}

double sub_10005CCFC(int a1, void *a2, void *a3)
{
  v62 = a1;
  v5 = type metadata accessor for Logger();
  isa = v5[-1].isa;
  v7 = __chkstk_darwin(v5);
  v9 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v57[-v11];
  __chkstk_darwin(v10);
  v14 = &v57[-v13];
  v63 = swift_allocObject();
  *(v63 + 16) = a3;
  v61 = a3;
  static Logger.Application.getter();
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v59 = v16;
    v19 = v18;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v19 = 136315394;
    *(v19 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v19 + 12) = 2080;
    v64 = *&v15[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v20 = v64;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v21 = String.init<A>(describing:)();
    v58 = v17;
    v23 = v15;
    v24 = v12;
    v25 = isa;
    v26 = v5;
    v27 = sub_100005D28(v21, v22, aBlock);

    *(v19 + 14) = v27;
    v5 = v26;
    isa = v25;
    v12 = v24;
    v15 = v23;
    v28 = v59;
    _os_log_impl(&_mh_execute_header, v59, v58, "[Interaction] %s %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v29 = isa[1];
  v29(v14, v5);
  v30 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v31 = *&v15[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (v31)
  {
    v61 = isa;
    v32 = v31;
    static Logger.Application.getter();
    v33 = v15;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v32;
      v37 = v36;
      aBlock[0] = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v37 + 12) = 2080;
      v64 = *&v15[v30];
      v38 = v64;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v39 = String.init<A>(describing:)();
      v41 = sub_100005D28(v39, v40, aBlock);
      v59 = v5;
      v42 = v41;

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "[Interaction] %s calling dismiss on: %s", v37, 0x16u);
      swift_arrayDestroy();

      v32 = v60;

      v43 = v12;
      v44 = v59;
    }

    else
    {

      v43 = v12;
      v44 = v5;
    }

    v29(v43, v44);
    v53 = *&v15[v30];
    *&v15[v30] = 0;

    aBlock[4] = sub_10005FFF8;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F048;
    v54 = _Block_copy(aBlock);

    [v32 dismissViewControllerAnimated:v62 & 1 completion:v54];
    _Block_release(v54);
  }

  else
  {
    static Logger.Application.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v9;
      v48 = swift_slowAlloc();
      v49 = v5;
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v48 = 136315138;
      *(v48 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v45, v46, "[Interaction] %s no current preview controller, calling completion immediately", v48, 0xCu);
      sub_100034948(v50);

      v51 = v47;
      v52 = v49;
    }

    else
    {

      v51 = v9;
      v52 = v5;
    }

    v29(v51, v52);
    v56 = [v61 effectiveFullBrowser];
    [v56 dismissSearch];

    sub_100054AB0();
  }

  return result;
}

double sub_10005D364(void **a1, char a2, int a3, char *a4, void *a5)
{
  v38 = a3;
  v39 = type metadata accessor for Logger();
  v9 = *(v39 - 8);
  v10 = __chkstk_darwin(v39);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v37[-v13];
  v40 = swift_allocObject();
  *(v40 + 16) = a5;
  if (a2)
  {
    v15 = a5;
  }

  else
  {
    v16 = a5;
    if (a1)
    {
      v17 = v16;
      v18 = [a4 presentedViewController];
      if (v18)
      {
        v19 = v18;
        sub_100002B84(0, &unk_100093F18, VNDocumentCameraViewController_ptr);
        v20 = [v19 isKindOfClass:swift_getObjCClassFromMetadata()];

        if (v20)
        {
          static Logger.Application.getter();
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v23 = 136315394;
            *(v23 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &aBlock);
            *(v23 + 12) = 2080;
            v41 = a1;
            v24 = String.init<A>(describing:)();
            v26 = sub_100005D28(v24, v25, &aBlock);

            *(v23 + 14) = v26;
            _os_log_impl(&_mh_execute_header, v21, v22, "%s options: %s satisfied. Document scanner already present. Skipping dismissal", v23, 0x16u);
            swift_arrayDestroy();
          }

          (*(v9 + 8))(v14, v39);
          v27 = [v17 effectiveFullBrowser];
          [v27 dismissSearch];

          sub_100054AB0();
          goto LABEL_14;
        }
      }
    }
  }

  static Logger.Application.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &v41);
    *(v30 + 12) = 2080;
    aBlock = a1;
    LOBYTE(v43) = a2 & 1;
    sub_10000DB4C(&qword_100093F10, &unk_1000745B0);
    v31 = String.init<A>(describing:)();
    v33 = sub_100005D28(v31, v32, &v41);

    *(v30 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s options: %s empty or not satisfied. Dismissing presented view controllers", v30, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v12, v39);
  if (*&a4[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController])
  {
    v34 = a5;
    sub_10005CCFC(v38 & 1, a4, v34);

    return result;
  }

  v46 = sub_10005D88C;
  v47 = v40;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100002DB0;
  v45 = &unk_10008EFF8;
  v36 = _Block_copy(&aBlock);

  [a4 dismissAllPresentedViewControllers:v38 & 1 completion:v36];
  _Block_release(v36);

LABEL_14:

  return result;
}

void sub_10005D8C4(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1000553A8(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_10005D97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10005D9C4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v5 + 8);

  sub_100055A90(v4, v0 + v2, v6, v8, v7);
}

void sub_10005DA68()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v0 + v4);
  v9 = *(v6 + 8);

  sub_100055C6C(v0 + v2, v5, v7, v9, v8);
}

uint64_t sub_10005DB14()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_10005DBD8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v0 + v4);
  v9 = *(v6 + 8);

  sub_100055F10(v8, v0 + v2, v5, v7, v9);
}

uint64_t sub_10005DC8C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10005DD38;

  return sub_1000541CC(a1, a2, v2);
}

uint64_t sub_10005DD38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005DE2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000B1A0;

  return sub_10005468C(a1, a2, v2);
}

void *sub_10005DED8(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_10005DF28(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000B1A0;

  return sub_1000536A0(a1, a2, v2);
}

unint64_t sub_10005DFD4()
{
  result = qword_100093FE0;
  if (!qword_100093FE0)
  {
    sub_10000DB94(&qword_100093FD8, &qword_1000746A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093FE0);
  }

  return result;
}

double sub_10005E038(int a1, void *a2, void *a3, void *a4)
{
  v68 = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  v9 = __chkstk_darwin(v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v64 - v13;
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v69 = v17;
  v67 = a3;
  v66 = a4;
  static Logger.Application.getter();
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  p_ivars = &QuickLookSceneDelegate.ivars;
  v70 = v8;
  if (v21)
  {
    v23 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v23 = 136315394;
    *(v23 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v23 + 12) = 2080;
    v71 = *&v18[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v24 = v71;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v25 = String.init<A>(describing:)();
    v27 = v18;
    v28 = v14;
    v29 = v11;
    v30 = sub_100005D28(v25, v26, aBlock);

    *(v23 + 14) = v30;
    v11 = v29;
    v14 = v28;
    v18 = v27;
    p_ivars = (&QuickLookSceneDelegate + 48);
    _os_log_impl(&_mh_execute_header, v19, v20, "[Interaction] %s %s", v23, 0x16u);
    swift_arrayDestroy();

    v8 = v70;
  }

  v31 = *(v8 + 8);
  v31(v16, v7);
  v32 = p_ivars[420];
  v33 = *(v32 + v18);
  if (v33)
  {
    v34 = v33;
    static Logger.Application.getter();
    v35 = v18;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67 = v34;
      aBlock[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v38 + 12) = 2080;
      v71 = *(v32 + v18);
      v40 = v71;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v41 = String.init<A>(describing:)();
      v43 = sub_100005D28(v41, v42, aBlock);
      v66 = v7;
      v44 = v43;

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "[Interaction] %s calling dismiss on: %s", v38, 0x16u);
      swift_arrayDestroy();
      v34 = v67;

      v45 = v14;
      v46 = v66;
    }

    else
    {

      v45 = v14;
      v46 = v7;
    }

    v31(v45, v46);
    v55 = *(v32 + v18);
    *(v32 + v18) = 0;

    aBlock[4] = sub_10005FFF0;
    aBlock[5] = v69;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F408;
    v56 = _Block_copy(aBlock);

    [v34 dismissViewControllerAnimated:v68 & 1 completion:v56];
    _Block_release(v56);
  }

  else
  {
    static Logger.Application.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v11;
      v50 = swift_slowAlloc();
      v51 = v7;
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v50 = 136315138;
      *(v50 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v47, v48, "[Interaction] %s no current preview controller, calling completion immediately", v50, 0xCu);
      sub_100034948(v52);

      v53 = v49;
      v54 = v51;
    }

    else
    {

      v53 = v11;
      v54 = v7;
    }

    v31(v53, v54);
    v58 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
    v59 = v67;
    v60 = *&v67[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v60)
    {
      v61 = [v60 effectiveFullBrowser];
      [v61 dismissSearch];

      v62 = *(v59 + v58);
      if (v62)
      {
        v63 = [v62 effectiveFullBrowser];
        [v63 setEditing:0 animated:0];
      }
    }

    sub_1000397D4(v66, v59);
  }

  return result;
}

void sub_10005E6EC(void **a1, char a2, int a3, char *a4, void *a5, void *a6)
{
  v60 = a4;
  v58 = a3;
  v10 = type metadata accessor for Logger();
  v59 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v61 = a6;
  if (a2)
  {
    v17 = a1;
    v18 = a5;
    v19 = v61;
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v22 = a5;
    v23 = v61;
    v57 = v22;
    v56 = v23;
    v17 = a1;
    if (a1)
    {
      v24 = [v60 presentedViewController];
      if (v24)
      {
        v25 = v24;
        sub_100002B84(0, &unk_100093F18, VNDocumentCameraViewController_ptr);
        v26 = [v25 isKindOfClass:swift_getObjCClassFromMetadata()];

        if (v26)
        {
          static Logger.Application.getter();
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v29 = 136315394;
            *(v29 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &aBlock);
            *(v29 + 12) = 2080;
            v62 = a1;
            v30 = String.init<A>(describing:)();
            v32 = sub_100005D28(v30, v31, &aBlock);

            *(v29 + 14) = v32;
            _os_log_impl(&_mh_execute_header, v27, v28, "%s options: %s satisfied. Document scanner already present. Skipping dismissal", v29, 0x16u);
            swift_arrayDestroy();
          }

          (*(v59 + 8))(v15, v10);
          v49 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
          v50 = v57;
          v51 = *&v57[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
          if (v51)
          {
            v52 = [v51 effectiveFullBrowser];
            [v52 dismissSearch];

            v53 = *&v50[v49];
            if (v53)
            {
              v54 = [v53 effectiveFullBrowser];
              [v54 setEditing:0 animated:0];
            }
          }

          sub_1000397D4(v56, v50);

          goto LABEL_14;
        }
      }
    }
  }

  static Logger.Application.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v57 = v16;
    v62 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_100005D28(0xD00000000000003FLL, 0x80000001000760F0, &v62);
    *(v35 + 12) = 2080;
    aBlock = v17;
    LOBYTE(v64) = a2 & 1;
    sub_10000DB4C(&qword_100093F10, &unk_1000745B0);
    v37 = String.init<A>(describing:)();
    v39 = sub_100005D28(v37, v38, &v62);
    v40 = v59;
    v41 = a5;
    v42 = v10;
    v43 = v39;

    *(v35 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v33, v34, "%s options: %s empty or not satisfied. Dismissing presented view controllers", v35, 0x16u);
    swift_arrayDestroy();
    v16 = v57;

    v44 = v42;
    a5 = v41;
    (*(v40 + 8))(v13, v44);
  }

  else
  {

    (*(v59 + 8))(v13, v10);
  }

  v45 = v60;
  if (!*&v60[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController])
  {
    v67 = sub_10005FDD0;
    v68 = v16;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100002DB0;
    v66 = &unk_10008F3B8;
    v48 = _Block_copy(&aBlock);

    [v45 dismissAllPresentedViewControllers:v58 & 1 completion:v48];
    _Block_release(v48);

LABEL_14:

    goto LABEL_15;
  }

  v46 = a5;
  v47 = v61;
  sub_10005E038(v58 & 1, v45, v46, v47);

LABEL_15:
}

double sub_10005ED10(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v66 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v65 = &v61 - v14;
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v18 = a3;

  static Logger.Application.getter();
  v19 = a2;
  v20 = Logger.logObject.getter();
  LODWORD(a2) = static os_log_type_t.debug.getter();

  LODWORD(v64) = a2;
  v21 = os_log_type_enabled(v20, a2);
  v62 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v67 = v9;
    v23 = v22;
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v23 = 136315394;
    *(v23 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
    *(v23 + 12) = 2080;
    v68 = *&v19[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    v24 = v68;
    sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
    v25 = String.init<A>(describing:)();
    v27 = v19;
    v28 = sub_100005D28(v25, v26, aBlock);

    *(v23 + 14) = v28;
    v19 = v27;
    _os_log_impl(&_mh_execute_header, v20, v64, "[Interaction] %s %s", v23, 0x16u);
    swift_arrayDestroy();

    v9 = v67;
  }

  v29 = *(v10 + 1);
  v29(v16, v9);
  v30 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v31 = *&v19[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (v31)
  {
    v64 = v29;
    v32 = v31;
    v33 = v65;
    static Logger.Application.getter();
    v34 = v19;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v67 = v9;
      v38 = v37;
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v38 = 136315394;
      *(v38 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      *(v38 + 12) = 2080;
      v68 = *&v19[v30];
      v39 = v68;
      sub_10000DB4C(&qword_100093F28, &qword_1000745C0);
      v40 = String.init<A>(describing:)();
      v62 = v10;
      v42 = v32;
      v43 = v19;
      v44 = sub_100005D28(v40, v41, aBlock);

      *(v38 + 14) = v44;
      v19 = v43;
      v32 = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "[Interaction] %s calling dismiss on: %s", v38, 0x16u);
      swift_arrayDestroy();

      v45 = v33;
      v46 = v67;
    }

    else
    {

      v45 = v33;
      v46 = v9;
    }

    v64(v45, v46);
    v53 = *&v19[v30];
    *&v19[v30] = 0;

    aBlock[4] = sub_10005FDD8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008F480;
    v54 = _Block_copy(aBlock);

    [v32 dismissViewControllerAnimated:v66 & 1 completion:v54];
    _Block_release(v54);
  }

  else
  {
    v47 = v63;
    static Logger.Application.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v64 = v29;
      v51 = v50;
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100005D28(0xD00000000000003FLL, 0x8000000100076150, aBlock);
      _os_log_impl(&_mh_execute_header, v48, v49, "[Interaction] %s no current preview controller, calling completion immediately", v51, 0xCu);
      sub_100034948(v52);

      v64(v47, v9);
    }

    else
    {

      v29(v47, v9);
    }

    v56 = v62;
    v57 = *&v62[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v57)
    {
      v58 = swift_allocObject();
      v58[2] = a4;
      v58[3] = a5;
      v58[4] = v56;
      v59 = v56;

      v60 = v57;
      DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)();
    }
  }

  return result;
}

uint64_t sub_10005F3F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

double sub_10005F42C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v17 = &v40 - v14;
  if (*(a1 + 16))
  {
    v47 = v4;
    v49 = v15;
    v50 = v9;
    v18 = *(v9 + 16);
    v19 = *(v9 + 80);
    v44 = v5;
    v45 = ~v19;
    v48 = v19;
    v18(&v40 - v14, a1 + ((v19 + 32) & ~v19), v8);
    static Logger.UI.getter();
    v46 = v18;
    v18(v13, v17, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v22;
      v41 = swift_slowAlloc();
      v51 = v41;
      *v22 = 136315138;
      sub_10005D97C(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v2;
      v25 = v24;
      v26 = *(v50 + 8);
      v43 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27 = v13;
      v28 = v26;
      v26(v27, v8);
      v29 = sub_100005D28(v23, v25, &v51);
      v2 = v42;

      v30 = v40;
      *(v40 + 1) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "[Interaction] documentBrowser:didPickDocumentsAt: %s", v30, 0xCu);
      sub_100034948(v41);

      v31 = v50;
    }

    else
    {

      v31 = v50;
      v32 = *(v50 + 8);
      v43 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v33 = v13;
      v28 = v32;
      v32(v33, v8);
    }

    (*(v44 + 8))(v7, v47);
    v34 = objc_opt_self();
    v35 = [v2 configuration];
    [v34 supportsQuickLookInsteadOfOpen:v35];

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = v49;
    v46(v49, v17, v8);
    v38 = (v48 + 24) & v45;
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    (*(v31 + 32))(v39 + v38, v37, v8);

    static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();

    v28(v17, v8);
  }

  return result;
}

double sub_10005F8E8(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  if (*(a1 + 16))
  {
    v7 = *(v4 + 80);
    v8 = objc_opt_self();
    v9 = [v1 configuration];
    v12[3] = [v8 supportsQuickLookInsteadOfOpen:v9];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + ((v7 + 32) & ~v7), v3);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    (*(v4 + 32))(v11 + ((v7 + 24) & ~v7), v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

    static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();
  }

  return result;
}

id sub_10005FAD0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DRIMainViewController(0);
  return objc_msgSendSuper2(&v7, "initWithConfiguration:", a1);
}

uint64_t sub_10005FBD8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100058EE4(v2, v3);
}

uint64_t sub_10005FC54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

void sub_10005FCDC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000582D4(v0 + v2, v3);
}

unint64_t sub_10005FD68()
{
  result = qword_100093FF8;
  if (!qword_100093FF8)
  {
    sub_100002B84(255, &qword_100093FF0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093FF8);
  }

  return result;
}

uint64_t sub_10005FDF4(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

unint64_t sub_10005FE74()
{
  result = qword_100094008;
  if (!qword_100094008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094008);
  }

  return result;
}

unint64_t sub_10005FECC()
{
  result = qword_100094010;
  if (!qword_100094010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094010);
  }

  return result;
}

unint64_t sub_10005FF24()
{
  result = qword_100094018;
  if (!qword_100094018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094018);
  }

  return result;
}

unint64_t sub_10005FF7C()
{
  result = qword_100094020;
  if (!qword_100094020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094020);
  }

  return result;
}

void sub_10006001C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v19 = &_swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
    sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
    Set.Iterator.init(_cocoa:)();
    v3 = v18[1];
    v4 = v18[2];
    v5 = v18[3];
    v6 = v18[4];
    v7 = v18[5];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));

    v6 = 0;
  }

  while (v3 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16 || (v17 = v16, sub_100002B84(0, &qword_100093FF0, UIScene_ptr), swift_dynamicCast(), v15 = v18[0], v13 = v6, v14 = v7, !v18[0]))
    {
LABEL_22:
      sub_100052240(v3);
      return;
    }

LABEL_18:
    v18[0] = v15;
    sub_100060FDC(v18, &v17);
    if (v2)
    {

      sub_100052240(v3);

      return;
    }

    if (v17)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v6 = v13;
    v7 = v14;
  }

  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = v4[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1000602D4()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  sub_100061BA4(&enum case for DOCUserActivityIdentifier.folderDrag(_:));
  if (v1)
  {
    v2 = v1;
    v3 = [v1 userInfo];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      DOCUserActivityDOCNodeKey.getter();
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v6 = sub_10000A60C(&v10), (v7 & 1) != 0))
      {
        sub_100005CC8(*(v5 + 56) + 32 * v6, &v12);
        sub_10000A774(&v10);

        if (*(&v13 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v8 = v10;
          sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
          sub_10000DB4C(&qword_100093C18, &qword_100074468);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1000736D0;
          *(v9 + 32) = sub_100002B84(0, &qword_100093BE8, FINode_ptr);
          *(v9 + 40) = sub_100002B84(0, &qword_100093F78, FPItem_ptr);
          static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
          sub_10000A0F8(v8, *(&v8 + 1));

          sub_10006208C(&v10, &v12);
          if (*(&v13 + 1))
          {
            if (swift_dynamicCast())
            {
              sub_100005A04(&v10, &qword_100093498, &qword_100074430);
              return;
            }
          }

          else
          {
            sub_100005A04(&v12, &qword_100093498, &qword_100074430);
          }

          v12 = v10;
          v13 = v11;
          if (*(&v11 + 1))
          {
            swift_dynamicCast();
            return;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_10000A774(&v10);
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {

      v12 = 0u;
      v13 = 0u;
    }

    sub_100005A04(&v12, &qword_100093498, &qword_100074430);
  }
}

void sub_1000607C8()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  sub_100061BA4(&enum case for DOCUserActivityIdentifier.location(_:));
  if (v1)
  {
    v2 = v1;
    v3 = [v1 userInfo];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      DOCUserActivityLocationKey.getter();
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v6 = sub_10000A60C(v20), (v7 & 1) != 0))
      {
        sub_100005CC8(*(v5 + 56) + 32 * v6, &v21);
        sub_10000A774(v20);

        if (*(&v22 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v9 = v20[0];
          v8 = v20[1];
          sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
          sub_10000DB4C(&qword_100093C18, &qword_100074468);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_100073FE0;
          *(v10 + 32) = sub_100002B84(0, &qword_100093BD8, DOCConcreteLocation_ptr);
          v11 = v9;
          static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
          v13 = v8;

          if (v20[3])
          {
            if ((swift_dynamicCast() & 1) == 0)
            {

              sub_10000A0F8(v9, v8);
              return;
            }

            v14 = v21;
            v15 = [v2 userInfo];
            if (v15)
            {
              v16 = v15;
              v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              DOCUserActivityTagNameKey.getter();
              AnyHashable.init<A>(_:)();
              if (*(v17 + 16))
              {
                v18 = sub_10000A60C(v20);
                if (v19)
                {
                  sub_100005CC8(*(v17 + 56) + 32 * v18, &v21);

                  sub_10000A0F8(v11, v13);
                  sub_10000A774(v20);

                  if (*(&v22 + 1))
                  {
                    swift_dynamicCast();
                    return;
                  }

                  goto LABEL_27;
                }
              }

              sub_10000A0F8(v11, v13);

              sub_10000A774(v20);
            }

            else
            {

              sub_10000A0F8(v11, v8);
            }

            v21 = 0u;
            v22 = 0u;
LABEL_27:
            sub_100005A04(&v21, &qword_100093498, &qword_100074430);
            return;
          }

          sub_10000A0F8(v9, v8);
          v12 = v20;
          goto LABEL_11;
        }
      }

      else
      {

        sub_10000A774(v20);
        v21 = 0u;
        v22 = 0u;
      }
    }

    else
    {

      v21 = 0u;
      v22 = 0u;
    }

    v12 = &v21;
LABEL_11:
    sub_100005A04(v12, &qword_100093498, &qword_100074430);
  }
}

uint64_t sub_100060DAC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a2;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = a1;
    v20 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    swift_errorRetain();
    sub_10000DB4C(&unk_100093B40, qword_100074410);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005D28(v15, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to activate scene from requesting scene: %@ error: %s", v11, 0x16u);
    sub_100005A04(v12, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v13);
  }

  return (*(v5 + 8))(v7, v4);
}

id sub_100060FDC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  result = [v8 delegate];
  if (!result)
  {
    goto LABEL_7;
  }

  type metadata accessor for QuickLookSceneDelegate(0);
  v10 = swift_dynamicCastClass();
  if (!v10 || (v11 = v10, *(v10 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene) != 1))
  {
    result = swift_unknownObjectRelease();
LABEL_7:
    *a2 = 0;
    return result;
  }

  v26 = v5;
  static Logger.Application.getter();
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v25 = v13;
  v27 = v12;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v14 = 136315394;
    v15 = sub_100005D28(0xD00000000000001ALL, 0x8000000100076320, &v28);
    v23 = v14;
    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    swift_unknownObjectRetain();
    v16 = [v11 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v27;
    v19 = v18;
    swift_unknownObjectRelease();

    v20 = sub_100005D28(v22, v19, &v28);

    v21 = v23;
    *(v23 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v17, v25, "%s found existing shared scene: %s", v21, 0x16u);
    swift_arrayDestroy();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v26 + 8))(v7, v4);
  *a2 = v8;
  return v8;
}

uint64_t sub_1000612D0()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = [v0 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = DOCUserActivityDOCNodeKey.getter();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10000A60C(&v11), (v6 & 1) == 0))
  {

    sub_10000A774(&v11);
LABEL_8:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_9;
  }

  sub_100005CC8(*(v4 + 56) + 32 * v5, &v13);
  sub_10000A774(&v11);

  if (!*(&v14 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v7 = v11;
  sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
  sub_10000DB4C(&qword_100093C18, &qword_100074468);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000736D0;
  *(v8 + 32) = sub_100002B84(0, &qword_100093BE8, FINode_ptr);
  *(v8 + 40) = sub_100002B84(0, &qword_100093F78, FPItem_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  sub_10000A0F8(v7, *(&v7 + 1));

  sub_10006208C(&v11, &v13);
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100005A04(&v11, &qword_100093498, &qword_100074430);
      return v10;
    }
  }

  else
  {
    sub_100005A04(&v13, &qword_100093498, &qword_100074430);
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
LABEL_9:
    sub_100005A04(&v13, &qword_100093498, &qword_100074430);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  return 0;
}

uint64_t sub_100061778()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = [v0 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10000A60C(v12), (v6 & 1) == 0))
  {

    sub_10000A774(v12);
LABEL_8:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_9;
  }

  sub_100005CC8(*(v4 + 56) + 32 * v5, &v13);
  sub_10000A774(v12);

  if (!*(&v14 + 1))
  {
LABEL_9:
    v10 = &v13;
LABEL_10:
    sub_100005A04(v10, &qword_100093498, &qword_100074430);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v7 = v12[0];
  v8 = v12[1];
  sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
  sub_10000DB4C(&qword_100093C18, &qword_100074468);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100073FE0;
  *(v9 + 32) = sub_100002B84(0, &qword_100094090, DOCConfiguration_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  sub_10000A0F8(v7, v8);
  if (!v12[3])
  {
    v10 = v12;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_100061BA4(unsigned int *a1)
{
  v3 = v1;
  v44 = type metadata accessor for DOCUserActivityIdentifier();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v3 userActivities];
  v7 = sub_100002B84(0, &unk_100093C60, NSUserActivity_ptr);
  sub_100003A30(&qword_1000941C0, &unk_100093C60, NSUserActivity_ptr);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v8;
  v37 = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v8 = v48;
    v9 = v49;
    v10 = v50;
    v11 = v51;
    v12 = v52;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);

    v11 = 0;
  }

  v35 = v10;
  v16 = (v10 + 64) >> 6;
  v42 = *a1;
  v40 = (v4 + 8);
  v41 = (v4 + 104);
  v39 = v9;
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = __CocoaSet.Iterator.next()();
  if (v17 && (v46 = v17, swift_dynamicCast(), v18 = v47, v19 = v11, v20 = v12, v47))
  {
    while (1)
    {
      v38 = v11;
      v23 = v8;
      v45 = v18;
      v24 = [v18 activityType];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v29 = v43;
      v28 = v44;
      (*v41)(v43, v42, v44);
      v30 = DOCUserActivityIdentifier.rawValue.getter();
      v32 = v31;
      (*v40)(v29, v28);
      if (v25 == v30 && v27 == v32)
      {

        v8 = v23;
        goto LABEL_25;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = v23;
      v9 = v39;
      if (v34)
      {
        goto LABEL_25;
      }

      v11 = v19;
      v12 = v20;
      if (v8 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v21 = v11;
      v22 = v12;
      v19 = v11;
      if (!v12)
      {
        break;
      }

LABEL_15:
      v20 = (v22 - 1) & v22;
      v18 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v18)
      {
        goto LABEL_25;
      }
    }

    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_25;
      }

      v22 = *(v9 + 8 * v19);
      ++v21;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    sub_100052240(v8);
  }
}

uint64_t sub_100061F48()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v8 = 0xD000000000000019;
  *(&v8 + 1) = 0x80000001000756A0;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10000A60C(v7), (v5 & 1) == 0))
  {

    sub_10000A774(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_100005CC8(*(v3 + 56) + 32 * v4, &v8);
  sub_10000A774(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    sub_100005A04(&v8, &qword_100093498, &qword_100074430);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7[0];
  }

  return 0;
}

uint64_t sub_10006208C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093498, &qword_100074430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000620FC(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a2;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v12 = 136315650;
    *(v12 + 4) = sub_100005D28(0xD000000000000022, 0x8000000100076340, aBlock);
    *(v12 + 12) = 2080;
    v13 = v9;
    v14 = [v13 description];
    v39 = v5;
    v15 = a2;
    v16 = v14;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v11;
    v18 = v9;
    v19 = v8;
    v20 = v17;
    v38 = v4;
    v22 = v21;

    v23 = v20;
    v8 = v19;
    v9 = v18;
    v24 = sub_100005D28(v23, v22, aBlock);

    *(v12 + 14) = v24;
    *(v12 + 22) = 2080;
    v41 = v15;
    v25 = v8;
    sub_10000DB4C(&unk_1000940A0, &qword_1000748D0);
    v26 = String.init<A>(describing:)();
    v28 = sub_100005D28(v26, v27, aBlock);

    *(v12 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v10, v37, "%s scene: %s requestingScene: %s", v12, 0x20u);
    swift_arrayDestroy();

    (*(v39 + 8))(v7, v38);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v29 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
  [v29 setRequestingScene:v8];
  v43 = type metadata accessor for _UIWindowScenePreservedPlacement();
  v44 = sub_1000629EC();
  sub_10000AE7C(aBlock);
  _UIWindowScenePreservedPlacement.init()();
  UIWindowSceneActivationRequestOptions.placement.setter();
  v30 = [objc_opt_self() sharedApplication];
  v31 = [v9 session];
  v32 = swift_allocObject();
  *(v32 + 16) = v9;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100062A44;
  *(v33 + 24) = v32;
  v44 = sub_100062A4C;
  v45 = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000639C4;
  v43 = &unk_10008F5C0;
  v34 = _Block_copy(aBlock);
  v35 = v9;

  [v30 requestSceneSessionActivation:v31 userActivity:0 options:v29 errorHandler:v34];
  _Block_release(v34);
}

id sub_10006254C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v28 - v5;
  static Logger.Application.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100005D28(0xD00000000000001ALL, 0x8000000100076320, v29);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_100034948(v10);
  }

  v11 = *(v1 + 8);
  v11(v6, v0);
  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 connectedScenes];

  sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006001C(v14);
  v16 = v15;

  v17 = v16 >> 62;
  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_11;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_11;
  }

  static Logger.Application.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v28[1] = v1;
    v20 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_100005D28(0xD00000000000001ALL, 0x8000000100076320, v29);
    *(v20 + 12) = 2048;
    v28[0] = v11;
    if (v17)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 14) = v21;

    *(v20 + 22) = 2080;
    v22 = Array.description.getter();
    v24 = sub_100005D28(v22, v23, v29);

    *(v20 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s found %ld scenes. There should only be 1. Scenes: %s", v20, 0x20u);
    swift_arrayDestroy();

    (v28[0])(v4, v0);
  }

  else
  {

    v11(v4, v0);
  }

LABEL_11:
  if (!v17)
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v16 + 32);
LABEL_16:
    v27 = v26;

    return v27;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000629EC()
{
  result = qword_100094098;
  if (!qword_100094098)
  {
    type metadata accessor for _UIWindowScenePreservedPlacement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094098);
  }

  return result;
}

void sub_100062A74(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = &_swiftEmptyArrayStorage;
    sub_100009B68(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_100063068(v38, v39, v40, v1, &unk_1000941A0, UISceneSession_ptr);
        v12 = v11;
        v13 = [v11 persistentIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_100009B68((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_10000DB4C(&unk_1000941B0, &unk_1000748F0);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1000639B8(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1000639B8(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1000639B8(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_100062DEC(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v7, "buildMenuWithBuilder:", a1);
  sub_100002B84(0, &qword_1000941C8, UIMenuSystem_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = [objc_allocWithZone(DOCKeyCommandController) init];
    [v6 buildWithBuilder:a1];
  }
}

id sub_100063024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100063068(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100002B84(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100002B84(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_100063280()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v48 - v5;
  v7 = [objc_opt_self() sharedApplication];
  static Logger.StateStore.getter();
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v51 = v1;
  v52 = v0;
  v49 = v4;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100005D28(0xD00000000000002ELL, 0x80000001000763F0, v57);
    *(v12 + 12) = 2080;
    v13 = [v8 openSessions];
    sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
    sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = Set.description.getter();
    v16 = v15;

    v17 = sub_100005D28(v14, v16, v57);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();

    v50 = *(v51 + 8);
    v50(v6, v52);
  }

  else
  {

    v50 = *(v1 + 8);
    v50(v6, v0);
  }

  v54 = v8;
  v18 = [v8 connectedScenes];
  sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100009970(v19, v57);
  v21 = v57[0];
  v20 = v57[1];
  v22 = v59;
  v23 = v60;
  v53 = v58;
  v24 = (v58 + 64) >> 6;
  while (v21 < 0)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31 || (v55 = v31, swift_dynamicCast(), v30 = v56[0], v28 = v22, v29 = v23, !v56[0]))
    {
LABEL_21:

      sub_100052240(v21);
      return;
    }

LABEL_18:
    if (![v30 delegate])
    {
      goto LABEL_7;
    }

    type metadata accessor for BrowserSceneDelegate();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v25 = *(v32 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v25)
      {
        v33 = v25;
        v34 = [v33 configuration];
        swift_unknownObjectRelease();

        v35 = sub_100052240(v21);
        v36 = v54;
        v37 = [v54 openSessions];
        sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
        sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
        v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100062A74(v38);

        v39 = v49;
        static Logger.StateStore.getter();

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v56[0] = swift_slowAlloc();
          *v42 = 136315394;
          *(v42 + 4) = sub_100005D28(0xD00000000000002ELL, 0x80000001000763F0, v56);
          *(v42 + 12) = 2080;
          v43 = Array.description.getter();
          v45 = sub_100005D28(v43, v44, v56);

          *(v42 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v40, v41, "%s: purging application state excluding openSessionIdentifiers: %s", v42, 0x16u);
          swift_arrayDestroy();
        }

        v50(v39, v52);
        v46 = [objc_opt_self() sharedStore];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v46 purgeApplicationStateExcludingIdentifiers:isa configuration:v34];

        return;
      }

      swift_unknownObjectRelease();
LABEL_7:

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_8:
    v22 = v28;
    v23 = v29;
  }

  v26 = v22;
  v27 = v23;
  v28 = v22;
  if (v23)
  {
LABEL_14:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v21 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      goto LABEL_21;
    }

    v27 = *(v20 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1000639B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_1000639C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100063A44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPreviewItemIndex];
  *a2 = result;
  return result;
}

void sub_100063AE4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v192 = a3;
  v190 = a2;
  v6 = sub_10000DB4C(&unk_100093F80, &qword_100074648);
  __chkstk_darwin(v6 - 8);
  v180 = &v174[-v7];
  v8 = type metadata accessor for DOCPreviewSource();
  v187 = *(v8 - 8);
  v188 = v8;
  v9 = __chkstk_darwin(v8);
  v176 = &v174[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v181 = &v174[-v11];
  v196 = type metadata accessor for Logger();
  v12 = *(v196 - 8);
  v13 = __chkstk_darwin(v196);
  v15 = &v174[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v174[-v17];
  v19 = __chkstk_darwin(v16);
  v179 = &v174[-v20];
  v21 = __chkstk_darwin(v19);
  v177 = &v174[-v22];
  v23 = __chkstk_darwin(v21);
  v184 = &v174[-v24];
  v25 = __chkstk_darwin(v23);
  v183 = &v174[-v26];
  __chkstk_darwin(v25);
  v195 = &v174[-v27];
  v28 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
  v29 = DOCPreviewController.init()();
  sub_100002CFC(&qword_100094240, type metadata accessor for QuickLookSceneDelegate, &unk_100074980);
  swift_unknownObjectRetain();
  dispatch thunk of DOCPreviewController.editingDelegate.setter();
  sub_100002CFC(&qword_100094248, type metadata accessor for QuickLookSceneDelegate, &unk_100074958);
  swift_unknownObjectRetain();
  dispatch thunk of DOCPreviewController.visibilityDelegate.setter();
  dispatch thunk of DOCPreviewController.publishesUserActivity.setter();
  v30 = *&v3[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController];
  v191 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController;
  *&v3[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController] = v29;
  v31 = v29;

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    static Logger.Application.getter();
    v61 = a1;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v12;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v197[0] = v66;
      *v65 = 136315138;
      swift_getObjectType();
      v67 = _typeName(_:qualified:)();
      v69 = sub_100005D28(v67, v68, v197);

      *(v65 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "Denying creation of quicklook window / scene.  Unexpected scene type received: %s)", v65, 0xCu);
      sub_100034948(v66);

      (*(v64 + 8))(v15, v196);
    }

    else
    {

      (*(v12 + 8))(v15, v196);
    }

    return;
  }

  v33 = v32;
  v178 = v18;
  v34 = objc_allocWithZone(UIWindowSceneActivationRequestOptions);
  v35 = a1;
  v36 = [v34 init];
  v197[3] = type metadata accessor for UIWindowSceneProminentPlacement();
  v197[4] = sub_100002CFC(&unk_100094250, &type metadata accessor for UIWindowSceneProminentPlacement, &protocol conformance descriptor for UIWindowSceneProminentPlacement);
  sub_10000AE7C(v197);
  static UIWindowScenePlacement<>._largeProminentPlacement()();
  UIWindowSceneActivationRequestOptions.placement.setter();

  v37 = [objc_allocWithZone(UIWindow) initWithWindowScene:v33];
  v38 = *&v4[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window];
  v185 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window;
  *&v4[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window] = v37;
  v39 = v37;

  if (v39)
  {
    [v39 setRootViewController:v31];
  }

  v40 = v195;
  static Logger.Application.getter();
  v41 = v4;
  v194 = v31;
  v42 = v35;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v186 = v41;

  v189 = v42;
  v45 = os_log_type_enabled(v43, v44);
  v182 = v12;
  v193 = v4;
  if (v45)
  {
    v175 = v44;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v197[0] = swift_slowAlloc();
    *v46 = 136316162;
    *(v46 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v197);
    *(v46 + 12) = 2080;
    v48 = [v33 session];
    v49 = [v48 persistentIdentifier];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_100005D28(v50, v52, v197);

    *(v46 + 14) = v53;
    *(v46 + 22) = 2112;
    *(v46 + 24) = v33;
    *v47 = v33;
    *(v46 + 32) = 2112;
    v54 = *&v4[v185];
    if (!v54)
    {

      __break(1u);
      return;
    }

    v55 = v189;
    v56 = v54;
    v57 = v194;

    *(v46 + 34) = v56;
    *(v46 + 42) = 2112;
    *(v46 + 44) = v57;
    v47[1] = v54;
    v47[2] = v29;
    v58 = v57;
    _os_log_impl(&_mh_execute_header, v43, v175, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v46, 0x34u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v59 = *(v182 + 8);
    v60 = v195;
  }

  else
  {

    v59 = *(v12 + 8);
    v60 = v40;
  }

  v195 = v59;
  (v59)(v60, v196);
  v70 = v190;
  v71 = [v190 stateRestorationActivity];
  v72 = v186;
  if (v71)
  {
    v73 = v71;
    v74 = v183;
    static Logger.Application.getter();
    v75 = v73;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v197[0] = v80;
      *v78 = 136315394;
      *(v78 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v197);
      *(v78 + 12) = 2112;
      *(v78 + 14) = v75;
      *v79 = v73;
      v81 = v75;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s: stateRestorationActivity: %@", v78, 0x16u);
      sub_100005A04(v79, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v80);
      v72 = v186;
    }

    (v195)(v74, v196);
    v83 = v187;
    v82 = v188;
    v84 = v184;
    v72[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene] = sub_100061F48() & 1;
    if (sub_1000612D0())
    {
      swift_getObjectType();
      v85 = DOCNode.fpfs_syncFetchFPItem()();
      if (v85)
      {
        v86 = v85;
        sub_10000DB4C(&qword_100093F90, &qword_100074650);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1000742D0;
        *(v87 + 32) = v86;
        v88 = v181;
        *v181 = v87;
        (*(v83 + 104))(v88, enum case for DOCPreviewSource.nodes(_:), v82);
        v89 = *&v193[v191];
        if (v89)
        {
          v90 = v180;
          (*(v83 + 16))(v180, v88, v82);
          (*(v83 + 56))(v90, 0, 1, v82);
          v91 = v86;
          v92 = v89;
          dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();

          swift_unknownObjectRelease();
          sub_100005A04(v90, &unk_100093F80, &qword_100074648);
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v83 + 8))(v88, v82);
LABEL_29:
        v113 = v178;
LABEL_30:
        v114 = v193;
        v115 = v185;
        [*&v193[v185] makeKeyAndVisible];
        v116 = *&v114[v115];
        if (v116)
        {
          v117 = objc_allocWithZone(DOCAppearance);
          v118 = v116;
          v119 = [v117 init];
          [v118 setAppearance:v119];
        }

        sub_10006511C();
        sub_100065320();
        sub_1000612C4();
        if (v120 && (v121 = v120, v122 = sub_100061778(), v121, v122))
        {
          v123 = v122;
        }

        else
        {
          v123 = [objc_allocWithZone(DOCConfiguration) init];
          static Logger.Application.getter();
          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v197[0] = v127;
            *v126 = 136315138;
            *(v126 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v197);
            _os_log_impl(&_mh_execute_header, v124, v125, "%s: couldn't fetch configuration from UserActivity. Keep going with DOCConfiguration() but things might act weirdly", v126, 0xCu);
            sub_100034948(v127);
          }

          (v195)(v113, v196);
        }

        v128 = [objc_opt_self() defaultPermission];
        v129 = [v128 userActionForConfiguration:v123];

        v130 = [v123 hostIdentifier];
        v131 = v193;
        if (!v130)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = String._bridgeToObjectiveC()();
        }

        v132 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:v129 hostIdentifier:v130];

        type metadata accessor for DOCHierarchyController();
        v133 = v132;
        v134 = v123;
        v135 = DOCHierarchyController.__allocating_init(configuration:sourceObserver:minParentLocations:)();
        v136 = objc_allocWithZone(type metadata accessor for DOCDocumentManager());
        v137 = v133;
        v138 = v135;
        v139 = DOCDocumentManager.init(configuration:sourceObserver:hierarchyController:)();
        v140 = *&v72[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager];
        *&v72[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager] = v139;

        v141 = v191;
        v142 = *&v131[v191];
        if (v142 && (v143 = v134, v144 = v142, dispatch thunk of DOCPreviewController.configuration.setter(), v144, (v145 = *&v131[v141]) != 0))
        {
          v197[0] = *&v131[v141];
          swift_getKeyPath();
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v146 = v145;
          v147 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
        }

        else
        {

          v147 = 0;
        }

        v148 = *&v72[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookPreviewItemObserver];
        *&v72[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookPreviewItemObserver] = v147;

        return;
      }

      swift_unknownObjectRelease();
    }

    static Logger.Application.getter();
    v106 = v75;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v197[0] = v111;
      *v109 = 136446466;
      *(v109 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v197);
      *(v109 + 12) = 2112;
      *(v109 + 14) = v106;
      *v110 = v73;
      v112 = v106;
      _os_log_impl(&_mh_execute_header, v107, v108, "%{public}s: stateRestorationActivity contained no restorable state: %@", v109, 0x16u);
      sub_100005A04(v110, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v111);
    }

    else
    {
    }

    (v195)(v84, v196);
    goto LABEL_29;
  }

  v93 = v192;
  sub_1000612C4();
  if (v94)
  {
    v95 = v94;
    v96 = sub_1000612D0();
    if (v96)
    {
      v97 = v96;
      sub_10000DB4C(&qword_100093F90, &qword_100074650);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1000742D0;
      *(v98 + 32) = v97;

      v99 = v177;
      static Logger.Application.getter();

      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v197[0] = swift_slowAlloc();
        *v102 = 136446466;
        *(v102 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v197);
        *(v102 + 12) = 2082;
        sub_10000DB4C(&unk_100093BB0, &qword_100074428);
        v103 = Array.description.getter();
        v105 = sub_100005D28(v103, v104, v197);

        *(v102 + 14) = v105;
        _os_log_impl(&_mh_execute_header, v100, v101, "%{public}s: Restore from quick look items: %{public}s", v102, 0x16u);
        swift_arrayDestroy();
      }

      (v195)(v99, v196);
      sub_1000612C4();
      if (v158)
      {
        v159 = v158;
        v160 = sub_100061F48();

        v72[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene] = v160 & 1;
      }

      v161 = &_swiftEmptyArrayStorage;
      v197[0] = &_swiftEmptyArrayStorage;
      v162 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v162)
      {
        v163 = 0;
        do
        {
          v164 = v163;
          while (1)
          {
            if ((v98 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v163 = v164 + 1;
              if (__OFADD__(v164, 1))
              {
                goto LABEL_71;
              }
            }

            else
            {
              if (v164 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              swift_unknownObjectRetain();
              v163 = v164 + 1;
              if (__OFADD__(v164, 1))
              {
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v164;
            if (v163 == v162)
            {
              goto LABEL_66;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v197[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v161 = v197[0];
        }

        while (v163 != v162);
      }

LABEL_66:

      if (v161 >> 62)
      {
LABEL_73:

        sub_10000DB4C(&unk_100093BB0, &qword_100074428);
        v165 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v165 = v161;
      }

      v113 = v178;
      v167 = v187;
      v166 = v188;

      v168 = v176;
      *v176 = v165;
      (*(v167 + 104))(v168, enum case for DOCPreviewSource.nodes(_:), v166);
      v169 = *&v193[v191];
      if (v169)
      {
        v170 = v180;
        (*(v167 + 16))(v180, v168, v166);
        (*(v167 + 56))(v170, 0, 1, v166);
        v171 = v169;
        v172 = v168;
        v173 = v171;
        dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();

        sub_100005A04(v170, &unk_100093F80, &qword_100074648);
        (*(v167 + 8))(v172, v166);
      }

      else
      {
        (*(v167 + 8))(v168, v166);
      }

      goto LABEL_30;
    }
  }

  v149 = v179;
  static Logger.Application.getter();
  v150 = v93;
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v197[0] = v155;
    *v153 = 136315394;
    *(v153 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v197);
    *(v153 + 12) = 2112;
    *(v153 + 14) = v150;
    *v154 = v150;
    v156 = v150;
    _os_log_impl(&_mh_execute_header, v151, v152, "%s: Unexpected scene connection options: %@", v153, 0x16u);
    sub_100005A04(v154, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v155);
  }

  (v195)(v149, v196);
  v157 = [objc_opt_self() sharedApplication];
  [v157 requestSceneSessionDestruction:v70 options:0 errorHandler:0];
}

void sub_10006511C()
{
  v1 = _DocumentManagerBundle();
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v15._object = 0x8000000100076530;
  v3._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0x6F4C206B63697551;
  v5._object = 0x8000000100076510;
  v15._countAndFlagsBits = 0xD000000000000025;
  v5._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0xEA00000000006B6FLL;
  DOCLocalizedString(_:tableName:bundle:value:comment:)(v5, v3, v2, v4, v15);

  v6 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  if (v6)
  {
    v7 = [v6 windowScene];
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
      if (v9)
      {
        v10 = [v9 currentPreviewItem];
        if (v10)
        {
          v11 = v10;
          if ([v10 respondsToSelector:"previewItemTitle"])
          {
            v12 = [v11 previewItemTitle];
            swift_unknownObjectRelease();
            if (!v12)
            {
              v13 = 0;
              goto LABEL_14;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      v13 = String._bridgeToObjectiveC()();
LABEL_14:

      [v8 setTitle:v13];

      return;
    }
  }
}

void sub_100065320()
{
  v1 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - v6;
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v0[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController];
  if (v14)
  {
    v15 = v14;
    v16 = [v15 currentPreviewItem];
    if (v16)
    {
      v17 = [v16 previewItemURL];
      swift_unknownObjectRelease();
      if (v17)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = *(v11 + 56);
        v18(v7, 0, 1, v10);
      }

      else
      {
        v18 = *(v11 + 56);
        v18(v7, 1, 1, v10);
      }

      sub_10000B2A8(v7, v9);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {

        (*(v11 + 32))(v13, v9, v10);
        (*(v11 + 16))(v4, v13, v10);
        v18(v4, 0, 1, v10);
        sub_100066EB8(v4, v0);

        sub_100005A04(v4, &qword_100093F50, &qword_100074090);
        (*(v11 + 8))(v13, v10);
        return;
      }
    }

    else
    {
      v18 = *(v11 + 56);
      v18(v9, 1, 1, v10);
    }

    sub_100005A04(v9, &qword_100093F50, &qword_100074090);
    v19 = [v15 currentPreviewItem];

    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = [v20 fpItem];
        if (v21)
        {
          v22 = v21;
          v23 = [objc_opt_self() defaultManager];
          v24 = swift_allocObject();
          *(v24 + 16) = v0;
          aBlock[4] = sub_100068D70;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000526E0;
          aBlock[3] = &unk_10008F700;
          v25 = _Block_copy(aBlock);
          v26 = v0;

          [v23 fetchURLForItem:v22 completionHandler:v25];

          _Block_release(v25);
          swift_unknownObjectRelease();

          return;
        }
      }

      swift_unknownObjectRelease();
    }

    v18(v4, 1, 1, v10);
    sub_100066EB8(v4, v0);
  }

  else
  {
    (*(v11 + 56))(v4, 1, 1, v10);
    sub_100066EB8(v4, v0);
  }

  sub_100005A04(v4, &qword_100093F50, &qword_100074090);
}

void sub_1000657F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10006511C();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_100065320();
  }
}

uint64_t sub_100065908(uint64_t a1)
{
  v68 = type metadata accessor for Logger();
  v2 = *(v68 - 8);
  __chkstk_darwin(v68);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000DB4C(&unk_100093F80, &qword_100074648);
  __chkstk_darwin(v5 - 8);
  v54 = &v54 - v6;
  v57 = type metadata accessor for DOCPreviewSource();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v75 = &_swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v66 = v11;
    v73 = objc_opt_self();
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = (a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
    v19 = *(v16 + 56);
    v70 = (v16 - 8);
    v71 = v19;
    v65 = (v2 + 8);
    v69 = &_swiftEmptyArrayStorage;
    *&v20 = 136315650;
    v60 = v20;
    v72 = v17;
    v61 = v4;
    v67 = v16;
    v59 = v13;
    v17(v13, v18, v8);
    while (1)
    {
      v22 = [v73 defaultManager];
      URL._bridgeToObjectiveC()(v23);
      v25 = v24;
      v76 = 0;
      v26 = [v22 itemForURL:v24 error:&v76];

      if (v26)
      {
        v27 = v76;
        v28 = v26;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v70)(v13, v8);
        v69 = v75;
      }

      else
      {
        v29 = v76;
        v30 = _convertNSErrorToError(_:)();

        swift_willThrow();
        static Logger.Application.getter();
        v31 = v13;
        v32 = v66;
        v15(v66, v31, v8);
        swift_errorRetain();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v76 = v64;
          *v35 = v60;
          *(v35 + 4) = sub_100005D28(0x28734C5255746573, 0xEE00293A736C7275, &v76);
          *(v35 + 12) = 2080;
          sub_100002CFC(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v63 = v34;
          v36 = dispatch thunk of CustomStringConvertible.description.getter();
          v38 = v37;
          v39 = *v70;
          v62 = v33;
          v39(v32, v8);
          v40 = sub_100005D28(v36, v38, &v76);

          *(v35 + 14) = v40;
          *(v35 + 22) = 2080;
          v74 = v30;
          swift_errorRetain();
          sub_10000DB4C(&qword_1000937C0, &unk_100074070);
          v41 = String.init<A>(describing:)();
          v43 = sub_100005D28(v41, v42, &v76);

          *(v35 + 24) = v43;
          v44 = v62;
          _os_log_impl(&_mh_execute_header, v62, v63, "%s: couldn't fetch item for url. URL %s error %s", v35, 0x20u);
          swift_arrayDestroy();

          v4 = v61;

          (*v65)(v4, v68);
          v13 = v59;
          v39(v59, v8);
        }

        else
        {

          v21 = *v70;
          (*v70)(v32, v8);
          (*v65)(v4, v68);
          v21(v31, v8);
          v13 = v31;
        }
      }

      v15 = v72;
      v18 += v71;
      if (!--v14)
      {
        break;
      }

      v72(v13, v18, v8);
    }
  }

  else
  {
    v69 = &_swiftEmptyArrayStorage;
  }

  v45 = v69;
  v46 = v57;
  if (v69 >> 62)
  {

    sub_10000DB4C(&unk_100093BB0, &qword_100074428);
    v47 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v47 = v45;
  }

  v48 = v56;
  v49 = v55;

  *v49 = v47;
  (*(v48 + 104))(v49, enum case for DOCPreviewSource.nodes(_:), v46);
  v50 = *(v58 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  if (v50)
  {
    v51 = v54;
    (*(v48 + 16))(v54, v49, v46);
    (*(v48 + 56))(v51, 0, 1, v46);
    v52 = v50;
    dispatch thunk of DOCPreviewController.set(_:defaultIndex:)();

    sub_100005A04(v51, &unk_100093F80, &qword_100074648);
  }

  return (*(v48 + 8))(v49, v46);
}

void sub_100066138(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075B30, &v19);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: scene: %@", v11, 0x16u);
    sub_100005A04(v12, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v13);
  }

  (*(v5 + 8))(v7, v4);
  v15 = *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager);
  *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager) = 0;

  v16 = *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window) = 0;

  v17 = *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  *(v2 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController) = 0;
}

id sub_100066608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickLookSceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for QuickLookSceneDelegate(uint64_t a1)
{
  result = qword_100094228;
  if (!qword_100094228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100066714(uint64_t a1)
{
  sub_1000055A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000667BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager);
  if (v6)
  {
    v7 = v6;
    DOCDocumentManager.previewController(_:import:nextTo:completion:)();
  }
}

uint64_t sub_100066868()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
  swift_beginAccess();
  sub_100068D00(v0 + v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v7, v8);
    v20 = URL.absoluteString.getter();
    (*(v9 + 8))(v14, v8);
    return v20;
  }

  sub_100005A04(v7, &qword_100093F50, &qword_100074090);
  v16 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  if (!v16)
  {
    return 0;
  }

  v17 = [v16 currentPreviewItem];
  if (!v17)
  {
    return 0;
  }

  v18 = [v17 previewItemURL];
  if (!v18)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      swift_unknownObjectRetain();
      v23 = [v22 fpItem];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 itemID];
        v20 = FPItemID.identifierString.getter();
        swift_unknownObjectRelease_n();

        return v20;
      }

      swift_unknownObjectRelease();
    }

    static Logger.UI.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No ID to return", v28, 2u);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  v19 = v18;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = URL.absoluteString.getter();
  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
  return v20;
}

uint64_t sub_100066C7C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v7 = a2;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_100005D28(0xD000000000000020, 0x80000001000764E0, &v17);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2112;
    v13 = v7;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s requestSceneSessionDestruction for scene: %@ failed with error: %@", v10, 0x20u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();

    sub_100034948(v12);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_100066EB8(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v7 = __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v54 - v11;
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v57 = type metadata accessor for Logger();
  v15 = *(v57 - 8);
  __chkstk_darwin(v57);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v58 = a1;
  sub_100068D00(a1, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v59 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v54 = v4;
    v22 = v12;
    v23 = v21;
    v24 = swift_slowAlloc();
    v55 = v3;
    v61[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075500, v61);
    *(v23 + 12) = 2080;
    sub_100068D00(v14, v22);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_100005A04(v14, &qword_100093F50, &qword_100074090);
    v28 = sub_100005D28(v25, v27, v61);

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s identifier: %s", v23, 0x16u);
    swift_arrayDestroy();
    v3 = v55;

    v4 = v54;
  }

  else
  {

    sub_100005A04(v14, &qword_100093F50, &qword_100074090);
  }

  (*(v15 + 8))(v17, v57);
  sub_100068D00(v58, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_100005A04(v9, &qword_100093F50, &qword_100074090);
    v29 = [objc_opt_self() predicateWithValue:0];
    v30 = v59;
    (*(v4 + 56))(v59, 1, 1, v3);
    v31 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
    v32 = v60;
    swift_beginAccess();
    v33 = v32 + v31;
    v34 = v30;
  }

  else
  {
    v35 = v4;
    v36 = *(v4 + 32);
    v37 = v56;
    v36(v56, v9, v3);
    v38 = URL.absoluteString.getter();
    v40 = v39;
    sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
    v41 = v3;
    sub_10000DB4C(&unk_100093B10, qword_1000749B0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100073FE0;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_1000061E8();
    *(v42 + 32) = v38;
    *(v42 + 40) = v40;
    v29 = NSPredicate.init(format:_:)();
    v43 = v59;
    v36(v59, v37, v41);
    (*(v35 + 56))(v43, 0, 1, v41);
    v44 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
    v32 = v60;
    swift_beginAccess();
    v33 = v32 + v44;
    v34 = v43;
  }

  sub_1000091C8(v34, v33);
  swift_endAccess();
  v45 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window;
  v46 = *(v32 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  if (v46)
  {
    v47 = [v46 windowScene];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 activationConditions];

      [v49 setCanActivateForTargetContentIdentifierPredicate:v29];
    }

    v50 = *(v32 + v45);
    if (v50)
    {
      v51 = [v50 windowScene];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 activationConditions];

        [v53 setPrefersToActivateForTargetContentIdentifierPredicate:v29];
        v29 = v53;
      }
    }
  }
}

uint64_t sub_1000674E0(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  sub_100068D00(a1, v13);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v22;
  sub_10000B2A8(v13, v16 + v15);
  aBlock[4] = sub_100068D78;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008F750;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100002CFC(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v23);
}

void sub_1000678C0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  if (v1)
  {
    v2 = [v1 windowScene];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 session];
      v5 = sub_100067980();
      [v4 setStateRestorationActivity:v5];
    }
  }
}

id sub_100067980()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DOCUserActivityIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v10 currentPreviewItem];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13 || (v14 = [v13 fpItem]) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v76 = v12;
  v77 = v10;
  v74 = v0;
  v15 = v14;
  (*(v6 + 104))(v8, enum case for DOCUserActivityIdentifier.quickLook(_:), v5);
  DOCUserActivityIdentifier.rawValue.getter();
  (*(v6 + 8))(v8, v5);
  v16 = objc_allocWithZone(NSUserActivity);
  v17 = String._bridgeToObjectiveC()();

  v78 = [v16 initWithActivityType:v17];

  v18 = objc_opt_self();
  *&v84[0] = 0;
  v75 = v15;
  v19 = [v18 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v84];
  v20 = *&v84[0];
  if (!v19)
  {
    v52 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v84[0] = v74;
      *v55 = 136315394;
      *(v55 + 4) = sub_100005D28(0xD00000000000001ELL, 0x8000000100075490, v84);
      *(v55 + 12) = 2080;
      swift_getErrorValue();
      v56 = Error.localizedDescription.getter();
      v58 = sub_100005D28(v56, v57, v84);

      *(v55 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v53, v54, "%s: Failed to encode FPItem in to data. Error: %s", v55, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v4, v1);
    return v78;
  }

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v78)
  {
    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    inited = swift_initStackObject();
    v73 = xmmword_1000736D0;
    *(inited + 16) = xmmword_1000736D0;
    *(inited + 32) = DOCUserActivityDOCNodeKey.getter();
    *(inited + 40) = v25;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000001000756A0;
    sub_10004CDFC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v27 = v78;
    [v78 setRequiredUserInfoKeys:isa];

    sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
    v28 = swift_initStackObject();
    *(v28 + 16) = v73;
    *&v84[0] = DOCUserActivityDOCNodeKey.getter();
    *(&v84[0] + 1) = v29;
    AnyHashable.init<A>(_:)();
    *(v28 + 96) = &type metadata for Data;
    *(v28 + 72) = v21;
    *(v28 + 80) = v23;
    *&v84[0] = 0xD000000000000019;
    *(&v84[0] + 1) = 0x80000001000756A0;
    sub_10000AEE8(v21, v23);
    AnyHashable.init<A>(_:)();
    v30 = *(v74 + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene);
    *(v28 + 168) = &type metadata for Bool;
    *(v28 + 144) = v30;
    sub_10004CBBC(v28);
    swift_setDeallocating();
    sub_10000DB4C(&qword_100093A38, &qword_1000743B8);
    swift_arrayDestroy();
    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v27 addUserInfoEntriesFromDictionary:v31];
  }

  v74 = v21;
  v32 = v77;
  v33 = [v77 userActivity];
  if (!v33 || (v34 = v33, v35 = [v33 userInfo], v34, !v35))
  {
    swift_unknownObjectRelease();
    sub_10000A0F8(v74, v23);

    return v78;
  }

  v72 = v23;
  v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = 1 << *(v36 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v36 + 64);
  v40 = (v37 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v41 = 0;
  *&v73 = &_swiftEmptyArrayStorage;
  while (v39)
  {
LABEL_18:
    v43 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    sub_10000A718(*(v36 + 48) + 40 * (v43 | (v41 << 6)), v84);
    v79 = v84[0];
    v80 = v84[1];
    v81 = v85;
    if (swift_dynamicCast())
    {
      v44 = v83;
      if (v83)
      {
        v71 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v73 = sub_100006CC4(0, *(v73 + 16) + 1, 1, v73);
        }

        v46 = *(v73 + 16);
        v45 = *(v73 + 24);
        v47 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v69 = *(v73 + 16);
          v70 = v46 + 1;
          v50 = sub_100006CC4((v45 > 1), v46 + 1, 1, v73);
          v46 = v69;
          v47 = v70;
          *&v73 = v50;
        }

        v48 = v73;
        *(v73 + 16) = v47;
        v49 = v48 + 16 * v46;
        *(v49 + 32) = v71;
        *(v49 + 40) = v44;
      }
    }
  }

  while (1)
  {
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
    }

    if (v42 >= v40)
    {
      break;
    }

    v39 = *(v36 + 64 + 8 * v42);
    ++v41;
    if (v39)
    {
      v41 = v42;
      goto LABEL_18;
    }
  }

  if (!v78)
  {

    sub_10000A0F8(v74, v72);

    swift_unknownObjectRelease();

    return 0;
  }

  v59 = [v78 requiredUserInfoKeys];
  v60 = v77;
  v61 = v72;
  if (v59)
  {
    v62 = v59;
    v63 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *&v84[0] = v63;
    sub_10004CF64(v73);

    if (*&v84[0])
    {
      v64.super.isa = Set._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v64.super.isa = 0;
    }

    [v78 setRequiredUserInfoKeys:v64.super.isa];
  }

  else
  {

    [v78 setRequiredUserInfoKeys:0];
  }

  sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_100073FE0;
  *&v84[0] = DOCUserActivityQuickLookStateRestorationUserInfoKey.getter();
  *(&v84[0] + 1) = v66;
  AnyHashable.init<A>(_:)();
  *(v65 + 96) = sub_10000DB4C(&qword_100093A40, &qword_1000743C0);
  *(v65 + 72) = v36;
  sub_10004CBBC(v65);
  swift_setDeallocating();
  sub_100005A04(v65 + 32, &qword_100093A38, &qword_1000743B8);
  v67 = Dictionary._bridgeToObjectiveC()().super.isa;

  v68 = v78;
  [v78 addUserInfoEntriesFromDictionary:v67];

  sub_10000A0F8(v74, v61);
  swift_unknownObjectRelease();

  return v68;
}

uint64_t sub_100068434(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v15);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: userActivity: %@", v9, 0x16u);
    sub_100005A04(v10, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v11);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100068630(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075E80, &v13);
    *(v7 + 12) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100068DF0();
    v8 = Set.description.getter();
    v10 = sub_100005D28(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: openURLContexts: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_100068848()
{
  v1 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = &qword_100094000;
  if (os_log_type_enabled(v9, v10))
  {
    v33 = v4;
    v34 = v3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100005D28(0xD000000000000020, 0x80000001000764E0, &v35);
    *(v12 + 12) = 2080;
    aBlock = sub_100066868();
    v37 = v14;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005D28(v15, v16, &v35);
    v11 = &qword_100094000;

    *(v12 + 14) = v17;
    *(v12 + 22) = 2112;
    v18 = *&v8[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window];
    if (v18)
    {
      v18 = [v18 windowScene];
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v33;
    *(v12 + 24) = v18;
    *v13 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s sceneIdentifier: %s scene: %@ setting clearing currentDocumentIdentifier state", v12, 0x20u);
    sub_100005A04(v13, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    (*(v5 + 8))(v7, v20);
    v3 = v34;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = *&v8[v11[60]];
  if (v21)
  {
    v22 = [v21 windowScene];
    if (v22)
    {
      v23 = v22;
      v24 = [objc_opt_self() sharedApplication];
      v25 = [v23 session];
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      v40 = sub_100068CF8;
      v41 = v26;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_1000639C4;
      v39 = &unk_10008F6B0;
      v27 = _Block_copy(&aBlock);
      v28 = v23;

      [v24 requestSceneSessionDestruction:v25 options:0 errorHandler:v27];

      _Block_release(v27);
      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v3, 1, 1, v29);
      v30 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
      swift_beginAccess();
      sub_1000091C8(v3, &v8[v30]);
      swift_endAccess();
      v31 = *&v8[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController];
      *&v8[OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController] = 0;
    }
  }
}

uint64_t sub_100068D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100068D78()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100066EB8(v3, v2);
}

unint64_t sub_100068DF0()
{
  result = qword_100093C28;
  if (!qword_100093C28)
  {
    sub_100002B84(255, &qword_100093C20, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093C28);
  }

  return result;
}

uint64_t sub_1000691FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10006928C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCPinchZoomTestParameters();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100069338(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  [a1 pinchOpenWithStartPoint:v3 endPoint:v4 duration:{v5, v6, 1.0}];
  [a1 advanceTime:0.5];

  return [a1 pinchCloseWithStartPoint:v5 endPoint:v6 duration:{v3, v4, 1.0}];
}

uint64_t sub_1000693EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for URLQueryItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

unint64_t *sub_1000695C0(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = type metadata accessor for URL();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v24 = &_swiftEmptyArrayStorage;
  sub_10006CB10(0, v9, 0);
  v10 = v24;
  v17 = v6 + 32;
  for (i = (a3 + 56); ; i += 4)
  {
    v12 = *(i - 1);
    v13 = *i;
    v21 = *(i - 3);
    v22 = v12;
    v23 = v13;

    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v24 = v10;
    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      sub_10006CB10((v14 > 1), v15 + 1, 1);
      v10 = v24;
    }

    v10[2] = v15 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v18);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100069794(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = type metadata accessor for URLComponents();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB4C(&unk_100094440, &qword_100074AC8);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for DeepLinkComponents.Scheme();
  v35 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = objc_allocWithZone(NSURLComponents);
  v36 = a1;
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = [v15 initWithURL:v17 resolvingAgainstBaseURL:0];

  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = [v19 scheme];
  if (!v20)
  {

LABEL_6:
    v23 = [v37 options];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = sub_10003A72C(v36, v23, 1, 1, 1u);
      swift_unknownObjectRelease();
    }

    else
    {

      v24 = 0;
    }

    return v24 & 1;
  }

  v21 = v20;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkComponents.Scheme.init(rawValue:)();
  v22 = v35;
  if ((*(v35 + 48))(v8, 1, v9) == 1)
  {

    sub_100005A04(v8, &unk_100094440, &qword_100074AC8);
    goto LABEL_6;
  }

  (*(v22 + 32))(v14, v8, v9);
  (*(v22 + 16))(v12, v14, v9);
  v25 = (*(v22 + 88))(v12, v9);
  if (v25 == enum case for DeepLinkComponents.Scheme.file(_:))
  {

    v26 = [v37 options];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = sub_10003A72C(v36, v26, 1, 1, 1u);

      swift_unknownObjectRelease();
    }

    else
    {

      v24 = 0;
    }

    (*(v35 + 8))(v14, v9);
    return v24 & 1;
  }

  if (v25 == enum case for DeepLinkComponents.Scheme.shareddocuments(_:))
  {

    static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = sub_10006B60C(v5, v37);

    (*(v34 + 8))(v5, v3);
    (*(v22 + 8))(v14, v9);
    return v24 & 1;
  }

  if (v25 == enum case for DeepLinkComponents.Scheme.smb(_:))
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      URL._bridgeToObjectiveC()(v28);
      v31 = v30;
      [v29 showConnectToServer:v30];

      v19 = v31;
    }

    (*(v22 + 8))(v14, v9);
    v24 = 1;
    return v24 & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100069CC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100069D68, v5, v4);
}

uint64_t sub_100069D68()
{
  URLQueryItem.value.getter();
  if (v1 && (v2 = static DOCNamedLocation.from(location:)(), v4 = v3, , (v4 & 1) == 0))
  {
    v7 = v0[4];
    v8 = v0[3];
    v0[9] = static MainActor.shared.getter();
    v9 = swift_task_alloc();
    v0[10] = v9;
    v9[2] = v7;
    v9[3] = v2;
    v9[4] = v8;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_100069EE8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100069EE8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10006A070;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10006A00C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10006A00C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A070()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10006A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v21 = a1;
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(v12, v21, v8);
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v4);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = (v10 + *(v5 + 80) + v15) & ~*(v5 + 80);
    v17 = swift_allocObject();
    v18 = v23;
    *(v17 + 16) = v14;
    *(v17 + 24) = v18;
    (*(v9 + 32))(v17 + v15, v12, v8);
    (*(v5 + 32))(v17 + v16, v7, v4);

    v19 = v20;
    sub_100053084(1, sub_10006E2B0, v17);
  }
}

void sub_10006A360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v22 = type metadata accessor for URLComponents();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    v20 = Strong;
    if (Strong)
    {
      v19 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      (*(v8 + 16))(v11, a3, v7);
      v13 = v21;
      v14 = v22;
      (*(v5 + 16))(v21, v23, v22);
      v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v16 = (v9 + *(v5 + 80) + v15) & ~*(v5 + 80);
      v17 = swift_allocObject();
      (*(v8 + 32))(v17 + v15, v11, v7);
      (*(v5 + 32))(v17 + v16, v13, v14);
      *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

      v18 = v20;
      DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)();
    }
  }
}

uint64_t sub_10006A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[1] = a4;
  v43[2] = a3;
  v43[3] = a2;
  Name = type metadata accessor for DeepLinkComponents.QueryName();
  v6 = *(Name - 8);
  __chkstk_darwin(Name);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB4C(&qword_100094418, &unk_100074A70);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v12 - 8);
  v14 = v43 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19;
  sub_100034850(a1, v14, &qword_100093F50, &qword_100074090);
  if ((*(v16 + 48))(v14, 1, v20) == 1)
  {
    sub_100005A04(v14, &qword_100093F50, &qword_100074090);
    v21 = type metadata accessor for DeepLinkComponents.DeepLinkError();
    sub_10006DDD8();
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, enum case for DeepLinkComponents.DeepLinkError.noURLForNamedLocation(_:), v21);
    v44[0] = v22;
    sub_10000DB4C(&qword_100094438, &unk_100074AB8);
    return CheckedContinuation.resume(throwing:)();
  }

  v25 = *(v16 + 32);
  v43[0] = v18;
  v25(v18, v14, v20);
  (*(v6 + 104))(v8, enum case for DeepLinkComponents.QueryName.filenames(_:), Name);
  v26 = URLComponents.queryItems.getter();
  if (v26)
  {
    v27 = v26;
    __chkstk_darwin(v26);
    v43[-2] = v8;
    sub_1000693EC(sub_10006E4E0, v27, v11);
  }

  else
  {
    v28 = type metadata accessor for URLQueryItem();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  }

  (*(v6 + 8))(v8, Name);
  v29 = type metadata accessor for URLQueryItem();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v11, 1, v29) == 1)
  {
    sub_100005A04(v11, &qword_100094418, &unk_100074A70);
LABEL_14:
    v40 = type metadata accessor for DeepLinkComponents.DeepLinkError();
    sub_10006DDD8();
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, enum case for DeepLinkComponents.DeepLinkError.noFilenamesForNamedLocation(_:), v40);
    v44[0] = v41;
    sub_10000DB4C(&qword_100094438, &unk_100074AB8);
    CheckedContinuation.resume(throwing:)();
    return (*(v16 + 8))(v43[0], v20);
  }

  v31 = URLQueryItem.value.getter();
  v33 = v32;
  v34 = (*(v30 + 8))(v11, v29);
  if (!v33)
  {
    goto LABEL_14;
  }

  v44[0] = 44;
  v44[1] = 0xE100000000000000;
  __chkstk_darwin(v34);
  v43[-2] = v44;
  v35 = sub_10006C750(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000062A0, &v43[-4], v31, v33, v43);
  __chkstk_darwin(v35);
  v36 = v43[0];
  v43[-2] = v43[0];
  v37 = sub_1000695C0(sub_10006E498, &v43[-4], v35);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10003BDC8(v37, v38, v39);
      swift_unknownObjectRelease();
    }
  }

  sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  CheckedContinuation.resume(returning:)();
  return (*(v16 + 8))(v36, v20);
}

uint64_t sub_10006ACC8(void *a1)
{
  static String._fromSubstring(_:)();
  URL.appendingPathComponent(_:)();
}

void sub_10006AD20(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  __chkstk_darwin(v8);
  v10 = (aBlock - v9);
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 defaultManager];
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = a3;
    v14[4] = a4;
    aBlock[4] = sub_10006E0B0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008F9A8;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    [v13 fetchURLForItem:v16 completionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v18 = type metadata accessor for DeepLinkComponents.DeepLinkError();
      sub_10006DDD8();
      v17 = swift_allocError();
      (*(*(v18 - 8) + 104))(v19, enum case for DeepLinkComponents.DeepLinkError.generic(_:), v18);
    }

    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v10);
    sub_100005A04(v10, &qword_100094430, &qword_100074AB0);
  }
}

uint64_t sub_10006AF70(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v40 = a3;
  v41 = a2;
  v44 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  __chkstk_darwin(v44);
  v45 = (&v40 - v6);
  v7 = type metadata accessor for Logger();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  sub_100034850(a1, v12, &qword_100093F50, &qword_100074090);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100005A04(v12, &qword_100093F50, &qword_100074090);
    static Logger.Application.getter();
    v20 = v40;
    v21 = v41;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100076670, &v49);
      *(v24 + 12) = 2112;
      *(v24 + 14) = v20;
      *v25 = v20;
      *(v24 + 22) = 2080;
      v48 = v21;
      v26 = v20;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v27 = String.init<A>(describing:)();
      v29 = sub_100005D28(v27, v28, &v49);

      *(v24 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Failed to fetch URL for: %@ error: %s", v24, 0x20u);
      sub_100005A04(v25, &qword_1000937D0, &unk_1000743F0);

      swift_arrayDestroy();
    }

    (*(v42 + 8))(v9, v43);
    v30 = v47;
    v31 = v21;
    if (!v21)
    {
      v32 = type metadata accessor for DeepLinkComponents.DeepLinkError();
      sub_10006DDD8();
      v31 = swift_allocError();
      (*(*(v32 - 8) + 104))(v33, enum case for DeepLinkComponents.DeepLinkError.generic(_:), v32);
    }

    v34 = v45;
    *v45 = v31;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v30(v34);
    return sub_100005A04(v34, &qword_100094430, &qword_100074AB0);
  }

  else
  {
    v36 = *(v14 + 32);
    v36(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v37 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v38 = swift_allocObject();
    v39 = v46;
    *(v38 + 16) = v47;
    *(v38 + 24) = v39;
    v36((v38 + v37), v17, v13);

    DOCRunInMainThread(_:)();

    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_10006B504(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_100005A04(v7, &qword_100094430, &qword_100074AB0);
}

uint64_t sub_10006B60C(uint64_t a1, void *a2)
{
  v3 = v2;
  Name = type metadata accessor for DeepLinkComponents.QueryName();
  v7 = *(Name - 8);
  __chkstk_darwin(Name);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10000DB4C(&qword_100094418, &unk_100074A70);
  __chkstk_darwin(v10 - 8);
  v12 = &v24[-v11];
  (*(v7 + 104))(v9, enum case for DeepLinkComponents.QueryName.scan(_:), Name);
  v13 = URLComponents.queryItems.getter();
  if (v13)
  {
    v14 = v13;
    __chkstk_darwin(v13);
    *&v24[-16] = v9;
    sub_1000693EC(sub_10006DDAC, v14, v12);
  }

  else
  {
    v15 = type metadata accessor for URLQueryItem();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  (*(v7 + 8))(v9, Name);
  v16 = type metadata accessor for URLQueryItem();
  v17 = (*(*(v16 - 8) + 48))(v12, 1, v16);
  sub_100005A04(v12, &qword_100094418, &unk_100074A70);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = *(Strong + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;
  v22 = sub_10006CD08(a1, a2, v3, v17 != 1, v19);

  return v22 & 1;
}

double sub_10006B8C8(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    *(swift_allocObject() + 16) = a3;
    v4 = a3;
    DOCRunInMainThread(_:)();
  }

  return result;
}

void sub_10006B940(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_10005D364(1, 0, 0, v1, v1);
  }
}

uint64_t sub_10006B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v8[4] = type metadata accessor for MainActor();
  v8[5] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_10006BA60;

  return sub_100069CC8(a5, a6);
}

uint64_t sub_10006BA60()
{
  *(*v1 + 56) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10006BC2C;
  }

  else
  {
    v4 = sub_10006BBBC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10006BBBC()
{
  v1 = *(v0 + 16);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006BC2C()
{
  v1 = v0[7];
  v2 = v0[2];

  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10006BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000DB4C(&qword_100094420, &qword_100074A80);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100034850(a3, v25 - v10, &qword_100094420, &qword_100074A80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005A04(v11, &qword_100094420, &qword_100074A80);
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

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005A04(a3, &qword_100094420, &qword_100074A80);

      return v23;
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

  sub_100005A04(a3, &qword_100094420, &qword_100074A80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10006BFC0(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v53 = a6;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  LODWORD(v48) = a3;
  v50 = a2;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  __chkstk_darwin(v16);
  v18 = (&v43 - v17);
  sub_100034850(a1, &v43 - v17, &qword_100094430, &qword_100074AB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    swift_errorRetain();
    v54(v19);
  }

  v47 = a8;
  v21 = *(v11 + 32);
  v21(v15, v18, v10);
  v22 = v50;
  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = v10;
  if (Strong)
  {
    if (v48)
    {
      v25 = *(v11 + 16);
      v48 = Strong;
      v25(v49, v15, v10);
      v26 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v45 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = v10;
      v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v22;
      v21((v28 + v26), v49, v24);
      v29 = v15;
      v30 = v51;
      v31 = v52;
      v32 = v44;
      *(v28 + v45) = v51;
      *(v28 + v32) = v31;
      v33 = v54;
      *(v28 + v27) = v53;
      v34 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
      v35 = v47;
      *v34 = v33;
      v34[1] = v35;

      v36 = v30;

      v37 = v48;
      static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();

      return (*(v11 + 8))(v29, v46);
    }
  }

  v38 = [v51 options];
  v39 = v52;
  swift_beginAccess();
  v40 = *(v39 + 16);
  v41 = v53;
  swift_beginAccess();
  v42 = *(v41 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10003A72C(v15, v38, 0, v40, v42);
    swift_unknownObjectRelease();
  }

  v54(0);
  return (*(v11 + 8))(v15, v24);
}