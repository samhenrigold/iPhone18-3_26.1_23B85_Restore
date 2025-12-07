char *sub_1001B74C8(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v50 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = qword_1002ABE60;
  v12 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v42[0] = "dockaccessoryd.DockIDSServer";
  v42[1] = v12;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v44 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
  v13 = v11;
  *&v2[v43] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[qword_1002ABE68] = 0;
  v14 = qword_1002ABE70;
  *&v2[v14] = sub_1001F2598(_swiftEmptyArrayStorage);
  v15 = qword_1002ABE78;
  *&v2[v15] = sub_1001F27B8(_swiftEmptyArrayStorage);
  *&v2[qword_1002ABE80] = _swiftEmptyArrayStorage;
  v16 = qword_1002ABE88;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
  v18 = qword_1002ABE90;
  type metadata accessor for DKIDSKeepAlive();
  swift_allocObject();
  *&v2[v18] = DKIDSKeepAlive.init(_:)();
  v19 = type metadata accessor for DockIDSServer(0);
  v55.receiver = v2;
  v55.super_class = v19;
  v20 = objc_msgSendSuper2(&v55, "init");
  v21 = qword_1002A6790;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100093DE8(v23, qword_1002ABE48);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Initializing IDS...", v26, 2u);
  }

  v27 = qword_1002ABE60;
  v28 = *&v22[qword_1002ABE60];
  v29 = objc_allocWithZone(type metadata accessor for DKIDSMessagingCenter());
  v30 = v22;
  v31 = v28;
  v32 = DKIDSMessagingCenter.init(serviceName:delegate:queue:)();
  v33 = *&v30[qword_1002ABE68];
  *&v30[qword_1002ABE68] = v32;

  v47 = qword_1002ABE90;
  sub_1001CF2C4(&qword_1002ABFA0, type metadata accessor for DockIDSServer, &unk_10023F6E8);
  v34 = v30;

  dispatch thunk of DKIDSKeepAlive.setDelegate(delegate:)();

  v35 = *&v22[v27];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  aBlock[4] = sub_1001CF344;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027AD40;
  v37 = _Block_copy(aBlock);
  v38 = v35;
  static DispatchQoS.unspecified.getter();
  v53 = _swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
  v39 = v50;
  v40 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  (*(v51 + 8))(v39, v40);
  (*(v48 + 8))(v13, v49);

  dispatch thunk of DKIDSKeepAlive.startKeepAlive()();

  return v34;
}

void sub_1001B7C04(uint64_t a1)
{
  v1 = *(a1 + qword_1002ABE68);
  if (v1)
  {
    v2 = v1;
    v3 = DKIDSMessagingCenter.service.getter();

    sub_1001B7E8C(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001B7C74()
{

  sub_100095C84(v0 + qword_1002ABE88, &qword_1002A7C88, &qword_10023CC10);
}

id sub_1001B7D14()
{

  dispatch thunk of DKIDSKeepAlive.stopKeepAlive()();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockIDSServer(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001B7D78(char *a1)
{
  v1 = a1;

  dispatch thunk of DKIDSKeepAlive.stopKeepAlive()();

  v3.receiver = v1;
  v3.super_class = type metadata accessor for DockIDSServer(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001B7DE0(uint64_t a1)
{

  sub_100095C84(a1 + qword_1002ABE88, &qword_1002A7C88, &qword_10023CC10);
}

void sub_1001B7E8C(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    goto LABEL_42;
  }

  v2 = v1;
  sub_100095B94(0, &qword_1002ABF58, IDSDevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = v3;
  if (v3 >> 62)
  {
LABEL_39:
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v49)
  {
LABEL_32:

    v45 = qword_1002ABE78;
    swift_beginAccess();
    if (!*(*(v47 + v45) + 16))
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      sub_100189D44();
    }

    return;
  }

  v46 = qword_1002ABE78;
  swift_beginAccess();
  v4 = 0;
  v5 = &selRef_initWithName_;
  while (1)
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v6 = *(v50 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100093DE8(v9, qword_1002ABE48);
    v10 = v7;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52[0] = v48;
      *v13 = 136315138;
      v14 = v10;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = v16;
      v5 = &selRef_initWithName_;
      v20 = sub_1000952D4(v19, v18, v52);

      *(v13 + 4) = v20;
      v8 = v4 + 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
      sub_100095808(v48);
    }

    if ([v10 isDefaultPairedDevice])
    {
      break;
    }

LABEL_7:
    ++v4;
    if (v8 == v49)
    {
      goto LABEL_32;
    }
  }

  v21 = v10;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {

LABEL_29:
    if ([v21 v5[82]])
    {
    }

    else
    {
      v41 = v21;

      v43 = v8;
      v44 = sub_1001CD178(v42, v41);

      *(v47 + v46) = v44;
      v8 = v43;
    }

    goto LABEL_7;
  }

  v51 = v8;
  v24 = v4;
  v25 = swift_slowAlloc();
  v52[0] = swift_slowAlloc();
  *v25 = 136315650;
  v26 = [v21 uniqueIDOverride];

  if (!v26)
  {
    goto LABEL_41;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = sub_1000952D4(v27, v29, v52);

  *(v25 + 4) = v30;
  *(v25 + 12) = 2080;
  v31 = [v21 name];

  if (v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000952D4(v32, v34, v52);

    *(v25 + 14) = v35;
    *(v25 + 22) = 2080;
    v5 = &selRef_initWithName_;
    v36 = [v21 isConnected];
    v37 = v36 == 0;
    if (v36)
    {
      v38 = 0x657463656E6E6F63;
    }

    else
    {
      v38 = 0x656E6E6F63736964;
    }

    if (v37)
    {
      v39 = 0xEC00000064657463;
    }

    else
    {
      v39 = 0xE900000000000064;
    }

    v40 = sub_1000952D4(v38, v39, v52);

    *(v25 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v22, v23, "Device %s (%s) %s", v25, 0x20u);
    swift_arrayDestroy();

    v4 = v24;
    v8 = v51;
    goto LABEL_29;
  }

  __break(1u);
LABEL_41:

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1001B8498(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DockKitIDSMessageType();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DockKitIDSMessage();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v40 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DockKitIDSInfo();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v15 - 8);
  v17 = v36 - v16;
  type metadata accessor for DockCoreManager();
  if ((static DockCoreManager.debugAllowed.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = DockKitIDSInfo.info.getter();
  UUID.init(uuidString:)();
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    __break(1u);
    return;
  }

  v19 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
  v20 = DockCoreInfo.init(type:name:identifier:)();
  v21 = static NSObject.== infix(_:_:)();

  if ((v21 & 1) == 0)
  {
LABEL_4:
    v22 = qword_1002ABE78;
    swift_beginAccess();
    if (*(*(v2 + v22) + 16))
    {
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100093DE8(v23, qword_1002ABE48);
      (*(v12 + 16))(v14, a1, v11);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v36[1] = a1;
        v27 = v26;
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        v29 = DockKitIDSInfo.info.getter();
        (*(v12 + 8))(v14, v11);
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "Sending INFO for accessory %@", v27, 0xCu);
        sub_100095C84(v28, &unk_1002A6F60, &unk_10023C4E0);
      }

      else
      {

        (*(v12 + 8))(v14, v11);
      }

      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_1001CF2C4(&qword_1002ABF68, &type metadata accessor for DockKitIDSInfo, &protocol conformance descriptor for DockKitIDSInfo);
      v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v32 = v31;

      v33 = *(v2 + qword_1002ABE68);
      if (v33)
      {
        (*(v37 + 104))(v39, enum case for DockKitIDSMessageType.info(_:), v38);
        type metadata accessor for DockKitIDSClient();
        v34 = v33;
        static DockKitIDSClient.DockKitBroadcastToken.getter();
        sub_1000A0CD8(v30, v32);
        v35 = v40;
        DockKitIDSMessage.init(type:token:payload:)();
        DKIDSMessagingCenter.send(_:)();
        (*(v41 + 8))(v35, v42);
        sub_1000A0D2C(v30, v32);
      }

      else
      {
        sub_1000A0D2C(v30, v32);
      }
    }
  }
}

uint64_t sub_1001B8C34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  __chkstk_darwin(v23);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v5 + qword_1002ABE60);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v15;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v24 + 8))(v11, v9);
  (*(v12 + 8))(v14, v23);
}

uint64_t sub_1001B8F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v54 = a5;
  v55 = a6;
  v53 = a4;
  v56 = a3;
  v6 = sub_100095274(&qword_1002ABF98, &unk_10023FF20);
  __chkstk_darwin(v6 - 8);
  v52 = &v48 - v7;
  v8 = type metadata accessor for DockKitIDSInfo();
  v58 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  v23 = dispatch thunk of DockCoreAccessory.info.getter();
  DockCoreInfo.identifier.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = qword_1002ABE70;
    swift_beginAccess();
    v27 = *&v25[v26];

    if (*(v27 + 16) && (v28 = sub_10016D5D4(v22), (v29 & 1) != 0))
    {
      v49 = v20;
      v51 = v16;
      v30 = v58;
      v31 = *(v58 + 16);
      v31(v13, *(v27 + 56) + *(v58 + 72) * v28, v8);

      v32 = (*(v30 + 32))(v15, v13, v8);
      v53 = v53(v32);
      v50 = v15;
      v33 = v15;
      v34 = v8;
      v35 = v31;
      v31(v57, v33, v34);
      v54(v56);
      swift_beginAccess();
      v36 = swift_unknownObjectWeakLoadStrong();
      if (v36)
      {
        v37 = v36;
        v38 = v49;
        (*(v17 + 16))(v49, v22, v51);
        v39 = v52;
        v35(v52, v57, v34);
        (*(v58 + 56))(v39, 0, 1, v34);
        swift_beginAccess();
        sub_1001DAD2C(v39, v38);
        swift_endAccess();
      }

      v40 = v55;
      v41 = v55(v56);
      v42 = v40(v53);
      v43 = v57;
      if (v41 != v42)
      {
        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          sub_1001B8498(v43);
        }
      }

      v46 = *(v58 + 8);
      v46(v43, v34);
      v46(v50, v34);
      v16 = v51;
    }

    else
    {
    }
  }

  return (*(v17 + 8))(v22, v16);
}

uint64_t sub_1001B93D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + qword_1002ABE60);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1001CF0F8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027AC00;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

void sub_1001B96E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100095274(&qword_1002ABF98, &unk_10023FF20);
  __chkstk_darwin(v2 - 8);
  v4 = &v88 - v3;
  v96 = type metadata accessor for DockKitIDSInfo();
  v95 = *(v96 - 8);
  v5 = __chkstk_darwin(v96);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v88 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v88 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v88 - v14;
  __chkstk_darwin(v13);
  v92 = &v88 - v16;
  v98 = type metadata accessor for UUID();
  v97 = *(v98 - 8);
  v17 = __chkstk_darwin(v98);
  v93 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v88 - v19;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v21 = qword_1002B1CF0;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  v94 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
  v24 = *(v21 + v22);

  os_unfair_lock_unlock(v24 + 4);

  v25 = dispatch thunk of DockCoreAccessory.info.getter();
  DockCoreInfo.identifier.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v99 = v20;
  if (!Strong)
  {
    goto LABEL_9;
  }

  v90 = v9;
  v27 = qword_1002ABE70;
  v28 = Strong;
  swift_beginAccess();
  v29 = *&v28[v27];

  if (!*(v29 + 16) || (v30 = sub_10016D5D4(v20), (v31 & 1) == 0))
  {

LABEL_9:
    dispatch thunk of DockCoreAccessory.info.getter();
    v40 = dispatch thunk of DockCoreAccessory.info.getter();
    v41 = v40;
    v42 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
    if (v42)
    {
      sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
      v43 = v42;
      v44 = dispatch thunk of DockCoreAccessory.info.getter();
      static NSObject.== infix(_:_:)();
    }

    else
    {
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    dispatch thunk of DockCoreAccessory.serialNumber.getter();
    DockKitIDSInfo.init(info:dockState:trackingState:firmwareVersion:serialNumber:)();
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      v47 = v93;
      (*(v97 + 16))(v93, v99, v98);
      v48 = v95;
      v49 = v96;
      (*(v95 + 16))(v4, v12, v96);
      (*(v48 + 56))(v4, 0, 1, v49);
      swift_beginAccess();
      sub_1001DAD2C(v4, v47);
      swift_endAccess();

      v50 = *(v48 + 8);
      v50(v12, v49);
    }

    else
    {
      v48 = v95;
      v50 = *(v95 + 8);
      v49 = v96;
      v50(v12, v96);
    }

    goto LABEL_15;
  }

  v32 = v95;
  v33 = *(v29 + 56) + *(v95 + 72) * v30;
  v34 = v96;
  v89 = *(v95 + 16);
  v89(v15, v33, v96);

  (*(v32 + 32))(v92, v15, v34);
  v35 = dispatch thunk of DockCoreAccessory.info.getter();
  v36 = v35;
  v37 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  if (v37)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v38 = v37;
    v39 = dispatch thunk of DockCoreAccessory.info.getter();
    static NSObject.== infix(_:_:)();
  }

  else
  {
  }

  dispatch thunk of DockCoreAccessory.info.getter();
  dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
  dispatch thunk of DockCoreAccessory.serialNumber.getter();
  v62 = v90;
  DockKitIDSInfo.init(info:dockState:trackingState:firmwareVersion:serialNumber:)();
  swift_beginAccess();
  v63 = swift_unknownObjectWeakLoadStrong();
  if (v63)
  {
    v64 = v63;
    v65 = v93;
    (*(v97 + 16))(v93, v99, v98);
    v66 = v96;
    v89(v4, v62, v96);
    (*(v95 + 56))(v4, 0, 1, v66);
    swift_beginAccess();
    sub_1001DAD2C(v4, v65);
    swift_endAccess();
  }

  v67 = v92;
  DockKitIDSInfo.dockState.getter();
  v68 = DockState.rawValue.getter();
  v69 = DockState.rawValue.getter();
  v48 = v95;
  if (v68 != v69)
  {
    goto LABEL_37;
  }

  DockKitIDSInfo.trackingState.getter();
  v70 = TrackingButtonState.rawValue.getter();
  if (v70 != TrackingButtonState.rawValue.getter())
  {
    goto LABEL_37;
  }

  v71 = DockKitIDSInfo.info.getter();
  v72 = dispatch thunk of DockCoreAccessory.info.getter();
  type metadata accessor for DockCoreInfo();
  v73 = static NSObject.== infix(_:_:)();

  if ((v73 & 1) == 0)
  {
    goto LABEL_37;
  }

  v74 = DockKitIDSInfo.firmwareVersion.getter();
  v76 = v75;
  v77 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
  if (!v78)
  {

    v62 = v90;
    goto LABEL_37;
  }

  if (v74 == v77 && v78 == v76)
  {

    goto LABEL_33;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v62 = v90;
  if ((v79 & 1) == 0)
  {
LABEL_37:
    v50 = *(v48 + 8);
    v86 = v62;
LABEL_38:
    v49 = v96;
    v50(v86, v96);
    v50(v67, v49);
    goto LABEL_15;
  }

LABEL_33:
  v80 = DockKitIDSInfo.serialNumber.getter();
  v82 = v81;
  v83 = dispatch thunk of DockCoreAccessory.serialNumber.getter();
  if (!v84)
  {

    v50 = *(v48 + 8);
    v86 = v90;
    goto LABEL_38;
  }

  v49 = v96;
  if (v80 == v83 && v84 == v82)
  {

    v85 = *(v48 + 8);
    v85(v90, v49);
    v85(v67, v49);
LABEL_41:
    (*(v97 + 8))(v99, v98);
    return;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v50 = *(v48 + 8);
  v50(v90, v49);
  v50(v67, v49);
  if (v87)
  {
    goto LABEL_41;
  }

LABEL_15:
  swift_beginAccess();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (!v51)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v52 = swift_unknownObjectWeakLoadStrong();
  if (!v52)
  {
    goto LABEL_41;
  }

  v53 = v52;
  swift_beginAccess();
  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    v56 = qword_1002ABE70;
    swift_beginAccess();
    v57 = *&v55[v56];

    if (*(v57 + 16))
    {
      v58 = v99;
      v59 = sub_10016D5D4(v99);
      if (v60)
      {
        v61 = v91;
        (*(v48 + 16))(v91, *(v57 + 56) + *(v48 + 72) * v59, v49);

        sub_1001B8498(v61);

        (*(v97 + 8))(v58, v98);
        v50(v61, v49);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1001BA258(uint64_t a1, uint64_t a2)
{
  v124 = a2;
  v2 = type metadata accessor for DockKitIDSMessageType();
  v117 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DockKitIDSMessage();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v115 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = v105 - v13;
  v14 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v15 = __chkstk_darwin(v14 - 8);
  v116 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v119 = v105 - v18;
  __chkstk_darwin(v17);
  v118 = v105 - v19;
  v122 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = v105 - v20;
  v21 = type metadata accessor for UUID();
  __chkstk_darwin(v21 - 8);
  v127 = v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DockKitBoundingBox();
  v23 = *(v130 - 8);
  v24 = __chkstk_darwin(v130);
  v129 = v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v128 = v105 - v26;
  v27 = dispatch thunk of DKIntelligentTrackingState.trackedPeople.getter();
  if (!v27)
  {
    return;
  }

  v28 = v27;
  v110 = v6;
  v108 = v2;
  v109 = v8;

  v133 = sub_1001CC618(v29, sub_1001F7A2C, sub_1001CC6BC);
  sub_1001CAB64(&v133, sub_1001DA48C, &type metadata accessor for DKPersonTrackerState, sub_1001CAF84, sub_1001CAD34);
  v30 = v133;
  v31 = v133 < 0 || (v133 & 0x4000000000000000) != 0;
  if (!v31)
  {
    v32 = *(v133 + 16);
    if (v32 >= 0xA)
    {
      v33 = 10;
    }

    else
    {
      v33 = *(v133 + 16);
    }

    if (v32 >= v33)
    {
      goto LABEL_10;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v103 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  if (v103 >= 0xA)
  {
    v104 = 10;
  }

  else
  {
    v104 = v103;
  }

  if (v103 >= 0)
  {
    v33 = v104;
  }

  else
  {
    v33 = 10;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v33)
  {
    goto LABEL_67;
  }

LABEL_10:
  v111 = 0;
  v107 = v5;
  if ((v30 & 0xC000000000000001) != 0 && v33)
  {
    type metadata accessor for DKPersonTrackerState();

    v34 = 0;
    do
    {
      v35 = v34 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v34);
      v34 = v35;
    }

    while (v33 != v35);
  }

  else
  {
  }

  v113 = v9;
  v106 = v4;
  v123 = v28;
  if (v31)
  {
    v4 = _CocoaArrayWrapper.subscript.getter();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v41 >>= 1;
    v30 = v4;
    v43 = v41 - v39;
    v42 = v41 <= v39;
    if (v41 != v39)
    {
      goto LABEL_18;
    }

LABEL_29:
    swift_unknownObjectRelease();
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v39 = 0;
  v37 = (v30 + 32);
  v43 = v33;
  v42 = v33 <= 0;
  if (!v33)
  {
    goto LABEL_29;
  }

LABEL_18:
  if (!v42)
  {
    v105[1] = v30;
    v112 = v10;
    v126 = v23 + 8;
    v125 = v23 + 32;
    v4 = _swiftEmptyArrayStorage;
    v44 = &v37[v39];
    do
    {

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v133 >= 1)
      {
        dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
        dispatch thunk of DKProbabilityValue.variable.getter();
      }

      dispatch thunk of DKPersonTrackerState.rect.getter();
      dispatch thunk of DKPersonTrackerState.uuid.getter();
      dispatch thunk of DKPersonTrackerState.trackingLock.getter();
      v45 = v128;
      DockKitBoundingBox.init(_:id:trackingLock:saliencyRank:)();
      (*(v23 + 16))(v129, v45, v130);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100103334(0, v4[2] + 1, 1, v4);
      }

      v47 = v4[2];
      v46 = v4[3];
      if (v47 >= v46 >> 1)
      {
        v4 = sub_100103334((v46 > 1), v47 + 1, 1, v4);
      }

      v48 = v130;
      (*(v23 + 8))(v128, v130);
      v4[2] = (v47 + 1);
      (*(v23 + 32))(v4 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v47, v129, v48);
      ++v44;
      --v43;
    }

    while (v43);
    swift_unknownObjectRelease();
    v10 = v112;
LABEL_30:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

LABEL_36:

      return;
    }

    v23 = Strong;
    v50 = qword_1002ABE78;
    swift_beginAccess();
    if (!*(*(v23 + v50) + 16))
    {
LABEL_44:

      goto LABEL_36;
    }

    if (qword_1002A6780 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  swift_once();
LABEL_33:
  v51 = qword_1002B1CF0;
  v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  swift_beginAccess();
  v53 = v121;
  v54 = v51 + v52;
  v55 = v120;
  v56 = v122;
  (*(v121 + 16))(v120, v54, v122);
  DKThreadSafe.wrappedValue.getter();
  (*(v53 + 8))(v55, v56);
  if (v132)
  {
    goto LABEL_44;
  }

  v57 = qword_1002ABE88;
  swift_beginAccess();
  v58 = v118;
  sub_1000B5150(v23 + v57, v118, &qword_1002A7C88, &qword_10023CC10);
  v59 = *(v10 + 48);
  v60 = v10;
  v61 = v113;
  v62 = v59(v58, 1, v113);
  v112 = v10;
  if (v62)
  {
    sub_100095C84(v58, &qword_1002A7C88, &qword_10023CC10);
    v63 = 0;
  }

  else
  {
    v64 = v114;
    (*(v10 + 16))(v114, v58, v61);
    sub_100095C84(v58, &qword_1002A7C88, &qword_10023CC10);
    v65 = v115;
    static Date.now.getter();
    Date.distance(to:)();
    v67 = v66;
    v68 = *(v60 + 8);
    v68(v65, v61);
    v68(v64, v61);
    v63 = v67 > 0.1;
  }

  v69 = v119;
  sub_1000B5150(v23 + v57, v119, &qword_1002A7C88, &qword_10023CC10);
  v70 = v59(v69, 1, v61);
  sub_100095C84(v69, &qword_1002A7C88, &qword_10023CC10);
  if (v70 != 1 && !v63 && v4[2])
  {
    goto LABEL_44;
  }

  v71 = v116;
  static Date.now.getter();
  (*(v112 + 56))(v71, 0, 1, v113);
  swift_beginAccess();
  sub_1001A2CDC(v71, v23 + v57);
  swift_endAccess();
  v72 = qword_1002ABE80;
  *(v23 + qword_1002ABE80) = v4;

  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  v74 = sub_100093DE8(v73, qword_1002ABE48);
  v75 = v123;

  v76 = v23;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  v79 = os_log_type_enabled(v77, v78);
  v129 = v74;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v131[0] = v81;
    *v80 = 134218498;
    *(v80 + 4) = *(*(v23 + v72) + 16);

    *(v80 + 12) = 2048;
    v128 = v76;
    if (v75 >> 62)
    {
      v82 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v82 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v80 + 14) = v82;

    *(v80 + 22) = 2080;

    v83 = Array.description.getter();
    v85 = v84;

    v86 = sub_1000952D4(v83, v85, v131);

    *(v80 + 24) = v86;
    _os_log_impl(&_mh_execute_header, v77, v78, "Sending bounding box information %ld of %ld: %s", v80, 0x20u);
    sub_100095808(v81);

    v76 = v128;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v131[0] = *(v23 + v72);

  sub_100095274(&qword_1002ABF40, &qword_10023F778);
  sub_1001CEFF0();
  v87 = v111;
  v88 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v90 = v117;
  if (v87)
  {

    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v131[0] = v94;
      *v93 = 136315138;
      swift_getErrorValue();
      v95 = Error.localizedDescription.getter();
      v97 = sub_1000952D4(v95, v96, v131);

      *(v93 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v91, v92, "Unable to broadcast bounding boxes: %s", v93, 0xCu);
      sub_100095808(v94);

      return;
    }

    goto LABEL_36;
  }

  v98 = v88;
  v99 = v89;

  v100 = *&v76[qword_1002ABE68];
  if (v100)
  {
    (*(v90 + 104))(v106, enum case for DockKitIDSMessageType.objects(_:), v108);
    type metadata accessor for DockKitIDSClient();
    v101 = v100;
    static DockKitIDSClient.DockKitBroadcastToken.getter();
    sub_1000A0CD8(v98, v99);
    v102 = v109;
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    (*(v110 + 8))(v102, v107);
    sub_1000A0D2C(v98, v99);
  }

  else
  {
    sub_1000A0D2C(v98, v99);
  }
}

BOOL sub_1001BB308(uint64_t a1)
{
  dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
  dispatch thunk of DKProbabilityValue.variable.getter();

  dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
  dispatch thunk of DKProbabilityValue.variable.getter();

  if (v4 < 1)
  {
    return 0;
  }

  return v3 < 1 || v4 < v3;
}

uint64_t sub_1001BB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + qword_1002ABE60);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_1001BB6C8(uint64_t a1, uint64_t a2)
{
  v117 = a2;
  v2 = type metadata accessor for DockKitIDSMessageType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DockKitIDSMessage();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v106 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Date();
  v116 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v108 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v101 - v11;
  v12 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v13 = __chkstk_darwin(v12 - 8);
  v109 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v111 = &v101 - v16;
  __chkstk_darwin(v15);
  v118 = &v101 - v17;
  v115 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v101 - v18;
  v19 = type metadata accessor for UUID();
  __chkstk_darwin(v19 - 8);
  v121 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DockKitBoundingBox();
  v123 = *(v122 - 8);
  __chkstk_darwin(v122);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
  v23 = dispatch thunk of TrackingSummaryInternal.subjects.getter();

  v126 = sub_1001CC618(v24, sub_1001F7A2C, sub_1001CC860);
  sub_1001CAB64(&v126, sub_1001DA48C, &type metadata accessor for TrackedSubjectInternal, sub_1001CB690, sub_1001CAE5C);
  v110 = 0;

  v25 = v126;
  v26 = v126 < 0 || (v126 & 0x4000000000000000) != 0;
  v105 = v5;
  v104 = v3;
  if (!v26)
  {
    v27 = *(v126 + 16);
    if (v27 >= 0xA)
    {
      v28 = 10;
    }

    else
    {
      v28 = *(v126 + 16);
    }

    if (v27 >= v28)
    {
      goto LABEL_9;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  if (v23 >= 0xA)
  {
    v46 = 10;
  }

  else
  {
    v46 = v23;
  }

  if (v23 >= 0)
  {
    v28 = v46;
  }

  else
  {
    v28 = 10;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v28)
  {
    goto LABEL_47;
  }

LABEL_9:
  if ((v25 & 0xC000000000000001) != 0 && v28)
  {
    type metadata accessor for TrackedSubjectInternal();

    v29 = 0;
    do
    {
      v30 = v29 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v29);
      v29 = v30;
    }

    while (v28 != v30);
  }

  else
  {
  }

  v103 = v6;
  v102 = v7;
  v101 = v2;
  if (v26)
  {
    v31 = _CocoaArrayWrapper.subscript.getter();
    v33 = v32;
    v23 = v34;
    v28 = v35;

    v25 = v31;
  }

  else
  {
    v23 = 0;
    v33 = v25 + 32;
    v28 = (2 * v28) | 1;
  }

  v120 = v22;
  if (v28)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = _swiftEmptyArrayStorage;
    }

    v38 = v37[2];

    if (!__OFSUB__(v28 >> 1, v23))
    {
      if (v38 == ((v28 >> 1) - v23))
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v23)
        {
          goto LABEL_27;
        }

        v23 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }

      goto LABEL_81;
    }

    goto LABEL_80;
  }

  while (1)
  {
    sub_1001CA048(v25, v33, v23, v28);
    v23 = v36;
LABEL_26:
    swift_unknownObjectRelease();
LABEL_27:
    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
LABEL_48:
      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (!v33)
      {
LABEL_49:

        v41 = _swiftEmptyArrayStorage;
        goto LABEL_50;
      }
    }

    else
    {
      v33 = *(v23 + 16);
      if (!v33)
      {
        goto LABEL_49;
      }
    }

    v39 = v23;
    v126 = _swiftEmptyArrayStorage;
    v25 = &v126;
    sub_1001D7248(0, v33 & ~(v33 >> 63), 0);
    if ((v33 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_unknownObjectRelease_n();
  }

  v40 = 0;
  v41 = v126;
  v42 = v39 & 0xC000000000000001;
  do
  {
    if (v42)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    dispatch thunk of TrackedSubjectInternal.rect.getter();
    dispatch thunk of TrackedSubjectInternal.identifier.getter();
    dispatch thunk of TrackedSubjectInternal.trackingLock.getter();
    dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v43 = v120;
    DockKitBoundingBox.init(_:id:trackingLock:saliencyRank:)();

    v126 = v41;
    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      sub_1001D7248((v44 > 1), v45 + 1, 1);
      v41 = v126;
    }

    ++v40;
    v41[2] = (v45 + 1);
    (*(v123 + 32))(v41 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v45, v43, v122);
  }

  while (v33 != v40);

LABEL_50:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v48 = v118;
  if (!Strong)
  {

LABEL_57:

    return;
  }

  v49 = Strong;
  v50 = qword_1002ABE78;
  swift_beginAccess();
  if (!*(*&v49[v50] + 16))
  {
    goto LABEL_55;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v51 = qword_1002B1CF0;
  v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  swift_beginAccess();
  v53 = v114;
  v54 = v51 + v52;
  v55 = v113;
  v56 = v115;
  (*(v114 + 16))(v113, v54, v115);
  DKThreadSafe.wrappedValue.getter();
  (*(v53 + 8))(v55, v56);
  if (v125)
  {
LABEL_55:

    return;
  }

  v57 = qword_1002ABE88;
  swift_beginAccess();
  sub_1000B5150(&v49[v57], v48, &qword_1002A7C88, &qword_10023CC10);
  v58 = v116;
  v59 = *(v116 + 48);
  v60 = v112;
  if (v59(v48, 1, v112))
  {
    sub_100095C84(v48, &qword_1002A7C88, &qword_10023CC10);
    v61 = 0;
    v62 = v60;
  }

  else
  {
    v63 = v107;
    (*(v58 + 16))(v107, v48, v60);
    sub_100095C84(v48, &qword_1002A7C88, &qword_10023CC10);
    v64 = v108;
    static Date.now.getter();
    Date.distance(to:)();
    v66 = v65;
    v62 = v60;
    v67 = *(v116 + 8);
    v67(v64, v60);
    v67(v63, v60);
    v61 = v66 > 0.1;
  }

  v68 = v111;
  sub_1000B5150(&v49[v57], v111, &qword_1002A7C88, &qword_10023CC10);
  v69 = v59(v68, 1, v62);
  sub_100095C84(v68, &qword_1002A7C88, &qword_10023CC10);
  if (v69 != 1 && !v61 && v41[2])
  {

    goto LABEL_57;
  }

  v70 = v109;
  static Date.now.getter();
  (*(v116 + 56))(v70, 0, 1, v112);
  swift_beginAccess();
  sub_1001A2CDC(v70, &v49[v57]);
  swift_endAccess();
  v71 = qword_1002ABE80;
  *&v49[qword_1002ABE80] = v41;

  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  v73 = sub_100093DE8(v72, qword_1002ABE48);
  v74 = v49;
  v75 = v119;

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v124[0] = v79;
    *v78 = 134218498;
    *(v78 + 4) = *(*&v49[v71] + 16);

    *(v78 + 12) = 2048;
    v123 = v73;
    if (v75 >> 62)
    {
      v80 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v80 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v78 + 14) = v80;

    *(v78 + 22) = 2080;

    v81 = Array.description.getter();
    v83 = v82;

    v84 = sub_1000952D4(v81, v83, v124);

    *(v78 + 24) = v84;
    _os_log_impl(&_mh_execute_header, v76, v77, "Sending bounding box information %ld of %ld: %s", v78, 0x20u);
    sub_100095808(v79);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v124[0] = *&v49[v71];

  sub_100095274(&qword_1002ABF40, &qword_10023F778);
  sub_1001CEFF0();
  v85 = v110;
  v86 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v85)
  {

    swift_errorRetain();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = v74;
      v92 = swift_slowAlloc();
      v124[0] = v92;
      *v90 = 136315138;
      swift_getErrorValue();
      v93 = Error.localizedDescription.getter();
      v95 = sub_1000952D4(v93, v94, v124);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v88, v89, "Unable to broadcast bounding boxes: %s", v90, 0xCu);
      sub_100095808(v92);
    }

    else
    {
    }
  }

  else
  {
    v96 = v86;
    v97 = v87;

    v98 = *&v74[qword_1002ABE68];
    if (v98)
    {
      (*(v104 + 104))(v105, enum case for DockKitIDSMessageType.objects(_:), v101);
      type metadata accessor for DockKitIDSClient();
      v99 = v98;
      static DockKitIDSClient.DockKitBroadcastToken.getter();
      sub_1000A0CD8(v96, v97);
      v100 = v106;
      DockKitIDSMessage.init(type:token:payload:)();
      DKIDSMessagingCenter.send(_:)();
      (*(v102 + 8))(v100, v103);
      sub_1000A0D2C(v96, v97);
    }

    else
    {
      sub_1000A0D2C(v96, v97);
    }
  }
}

void sub_1001BC774(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100093DE8(v6, qword_1002ABE48);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000952D4(a1, a2, v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Expiring client %s due to keep-alive timeout.", v9, 0xCu);
    sub_100095808(v10);
  }

  v11 = qword_1002ABE78;
  swift_beginAccess();

  v13 = sub_1001CD650(v12, a1, a2);

  *(v3 + v11) = v13;

  if (!*(*(v3 + v11) + 16))
  {
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100189D44();
  }
}

void sub_1001BC970()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for DockKitIDSMessageType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DockKitIDSMessage();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1002ABE78;
  swift_beginAccess();
  if (*(*(v0 + v10) + 16))
  {
    v11 = *(v0 + qword_1002ABE68);
    if (v11)
    {
      (*(v3 + 104))(v5, enum case for DockKitIDSMessageType.keepAlive(_:), v2);
      type metadata accessor for DockKitIDSClient();
      v12 = v11;
      static DockKitIDSClient.DockKitBroadcastToken.getter();
      DockKitIDSMessage.init(type:token:payload:)();
      DKIDSMessagingCenter.send(_:)();
      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_1001BCD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v6 = type metadata accessor for DockKitIDSMessageType();
  v52 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = type metadata accessor for DockKitIDSMessage();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v3;
  if (a3 && (v15 = *(v3 + qword_1002ABE68)) != 0)
  {
    v49 = v4;
    v16 = v15;
    v17 = DKIDSMessagingCenter.service.getter();

    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 deviceForFromID:v18];

    if (v19)
    {
      v20 = v53;
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100093DE8(v21, qword_1002ABE48);
      (*(v12 + 16))(v14, v20, v11);
      v22 = v19;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v47 = v24;
        v48 = v23;
        v25 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v54 = v46;
        *v25 = 136315395;
        DockKitIDSMessage.type.getter();
        v26 = sub_1001B70DC();
        v28 = v27;
        (*(v52 + 8))(v10, v6);
        (*(v12 + 8))(v14, v11);
        v29 = sub_1000952D4(v26, v28, &v54);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2081;
        v30 = [v22 uniqueIDOverride];

        if (!v30)
        {
          goto LABEL_43;
        }

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_1000952D4(v31, v33, &v54);

        *(v25 + 14) = v34;
        v35 = v48;
        _os_log_impl(&_mh_execute_header, v48, v47, "Got IDS message %s from %{private}s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v12 + 8))(v14, v11);
      }

      v38 = [v22 uniqueIDOverride];
      if (v38)
      {
        v39 = v38;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v40;

        goto LABEL_14;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v36 = 0;
    v37 = 0xE000000000000000;
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
  }

LABEL_14:
  v41 = v53;
  v42 = v51;
  DockKitIDSMessage.type.getter();
  v43 = (*(v52 + 88))(v42, v6);
  if (v43 == enum case for DockKitIDSMessageType.register(_:))
  {
    sub_1001BD4E8(v41, v36, v37);
LABEL_18:

    return;
  }

  if (v43 == enum case for DockKitIDSMessageType.deRegister(_:))
  {
    sub_1001BE480(v41, v36, v37);
    goto LABEL_18;
  }

  if (v43 == enum case for DockKitIDSMessageType.select(_:))
  {

    sub_1001BFA78();
  }

  else if (v43 == enum case for DockKitIDSMessageType.offset(_:))
  {

    sub_1001C48F0();
  }

  else if (v43 == enum case for DockKitIDSMessageType.region(_:))
  {

    sub_1001C0394();
  }

  else if (v43 == enum case for DockKitIDSMessageType.frame(_:))
  {

    sub_1001C4180();
  }

  else if (v43 == enum case for DockKitIDSMessageType.velocity(_:))
  {

    sub_1001C11BC();
  }

  else if (v43 == enum case for DockKitIDSMessageType.objects(_:))
  {

    sub_1001C65DC(v41);
  }

  else if (v43 == enum case for DockKitIDSMessageType.trajectory(_:))
  {

    sub_1001C2E58(v41);
  }

  else if (v43 == enum case for DockKitIDSMessageType.diagnostics(_:))
  {

    sub_1001BEF8C();
  }

  else if (v43 == enum case for DockKitIDSMessageType.systemTracking(_:))
  {

    sub_1001C2244();
  }

  else if (v43 == enum case for DockKitIDSMessageType.camera(_:))
  {

    sub_1001C4FB4();
  }

  else
  {
    if (v43 == enum case for DockKitIDSMessageType.keepAliveResp(_:))
    {
      sub_1001C607C(v41, v36, v37);
      goto LABEL_18;
    }

    v44 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, enum case for DockKitIDSMessagingError.unsupportedMessageType(_:), v44);
    swift_willThrow();
    (*(v52 + 8))(v42, v6);
  }
}

void sub_1001BD4E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v133 = a2;
  v138 = a3;
  v4 = type metadata accessor for DockKitIDSMessage();
  v5 = *(v4 - 8);
  v135 = v4;
  v136 = v5;
  v6 = __chkstk_darwin(v4);
  v130 = &v118[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v124 = &v118[-v9];
  __chkstk_darwin(v8);
  v134 = &v118[-v10];
  v11 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v11 - 8);
  v131 = &v118[-v12];
  v13 = type metadata accessor for UUID();
  v141 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v125 = &v118[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v118[-v17];
  __chkstk_darwin(v16);
  v20 = &v118[-v19];
  v21 = type metadata accessor for DockKitIDSMessageType();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v118[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v27 = &v118[-v26];
  v139 = a1;
  DockKitIDSMessage.type.getter();
  v126 = *(v22 + 104);
  v127 = v22 + 104;
  v126(v25, enum case for DockKitIDSMessageType.register(_:), v21);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = *(v22 + 8);
  v28(v25, v21);
  v128 = v27;
  v129 = v21;
  v28(v27, v21);
  if (v140[3] != v140[0])
  {
    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v35 = v37;
    v36 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
    goto LABEL_5;
  }

  v29 = v139;
  DockKitIDSMessage.token.getter();
  type metadata accessor for DockKitIDSClient();
  static DockKitIDSClient.DockKitBroadcastToken.getter();
  sub_1001CF2C4(&qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = v141 + 8;
  v31 = *(v141 + 8);
  v31(v18, v13);
  v141 = v32;
  v123 = v31;
  v31(v20, v13);
  if (v30)
  {
    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v35 = v34;
    v36 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
LABEL_5:
    (*(*(v33 - 8) + 104))(v35, *v36, v33);
    swift_willThrow();
    return;
  }

  v38 = v29;
  v121 = v20;
  v122 = v13;
  v39 = DockKitIDSMessage.payload.getter();
  if (v40 >> 60 != 15)
  {
    sub_1000A452C(v39, v40);
    v44 = DockKitIDSMessage.payload.getter();
    v42 = v137;
    v46 = v134;
    if (v45 >> 60 != 15)
    {
      v47 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v47 != 2)
        {
          v43 = v134;
          sub_1000A452C(v44, v45);
          goto LABEL_22;
        }

        v51 = *(v44 + 16);
        v50 = *(v44 + 24);
        v44 = sub_1000A452C(v44, v45);
        v49 = v50 - v51;
        if (!__OFSUB__(v50, v51))
        {
LABEL_18:
          v43 = v46;
          if (v49 >= 1)
          {
            v54 = DockKitIDSMessage.payload.getter();
            if (v55 >> 60 != 15)
            {
              v56 = v54;
              v57 = v55;
              v58 = Data._Representation.subscript.getter();
              sub_1000A452C(v56, v57);
              v41 = v58 != 0;
              v42 = v137;
              goto LABEL_23;
            }

LABEL_51:
            __break(1u);
            return;
          }

LABEL_22:
          v41 = 0;
          goto LABEL_23;
        }

        __break(1u);
      }

      else if (!v47)
      {
        v48 = BYTE6(v45);
        sub_1000A452C(v44, v45);
        v49 = v48;
        goto LABEL_18;
      }

      v52 = HIDWORD(v44);
      v53 = v44;
      sub_1000A452C(v44, v45);
      LODWORD(v49) = v52 - v53;
      if (!__OFSUB__(v52, v53))
      {
        v49 = v49;
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  v41 = 0;
  v42 = v137;
  v43 = v134;
LABEL_23:
  v59 = qword_1002ABE78;
  v60 = swift_beginAccess();
  v61 = *(v42 + v59);
  __chkstk_darwin(v60);
  *&v118[-16] = v29;

  v62 = v131;
  v63 = v132;
  sub_1001B6D9C(sub_1001C9EB8, v61, v131);

  v64 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v61) = (*(*(v64 - 8) + 48))(v62, 1, v64);
  sub_100095C84(v62, &qword_1002ABEE8, &qword_10023F720);
  v134 = v63;
  if (v61 == 1)
  {
    v65 = v136;
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100093DE8(v66, qword_1002ABE48);
    v67 = v124;
    v68 = v135;
    (*(v65 + 16))(v124, v38, v135);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v140[0] = v131;
      *v71 = 136315394;
      v120 = v59;
      v72 = v121;
      v119 = v70;
      DockKitIDSMessage.token.getter();
      sub_1001CF2C4(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v73 = v122;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v41;
      v76 = v67;
      v78 = v77;
      v79 = v72;
      v59 = v120;
      v80 = v73;
      v81 = v123;
      v123(v79, v80);
      v82 = v76;
      v41 = v75;
      v132 = *(v136 + 8);
      (v132)(v82, v68);
      v83 = sub_1000952D4(v74, v78, v140);

      *(v71 + 4) = v83;
      *(v71 + 12) = 2080;
      v84 = v133;
      *(v71 + 14) = sub_1000952D4(v133, v138, v140);
      _os_log_impl(&_mh_execute_header, v69, v119, "Registering new client %s for device %s", v71, 0x16u);
      swift_arrayDestroy();

      v85 = v134;

      v42 = v137;
    }

    else
    {

      v132 = *(v65 + 8);
      (v132)(v67, v68);
      v84 = v133;
      v85 = v134;
      v42 = v137;
      v81 = v123;
    }
  }

  else
  {
    LODWORD(v131) = v41;
    v86 = v136;
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100093DE8(v87, qword_1002ABE48);
    v88 = v43;
    v89 = v135;
    (*(v86 + 16))(v43, v38, v135);

    v90 = v86;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v140[0] = v124;
      *v93 = 136315394;
      v120 = v59;
      v94 = v121;
      DockKitIDSMessage.token.getter();
      sub_1001CF2C4(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v95 = v89;
      v96 = v88;
      v97 = v122;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v92;
      v99 = v98;
      v101 = v100;
      v102 = v94;
      v59 = v120;
      v103 = v97;
      v81 = v123;
      v123(v102, v103);
      v132 = *(v90 + 8);
      (v132)(v96, v95);
      v104 = sub_1000952D4(v99, v101, v140);

      *(v93 + 4) = v104;
      *(v93 + 12) = 2080;
      v84 = v133;
      *(v93 + 14) = sub_1000952D4(v133, v138, v140);
      _os_log_impl(&_mh_execute_header, v91, v119, "Re-registering client %s for device %s", v93, 0x16u);
      swift_arrayDestroy();

      v42 = v137;
    }

    else
    {

      v132 = *(v90 + 8);
      (v132)(v43, v89);
      v84 = v133;
      v81 = v123;
    }

    v85 = v134;
    v41 = v131;
  }

  if (v41)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_100093DE8(v105, qword_1002ABE48);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "Treating this as an initial registration and clearing state.", v108, 2u);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100189D44();
  }

  v109 = v138;

  v111 = v85;
  v112 = sub_1001CD650(v110, v84, v109);

  *(v42 + v59) = v112;

  v113 = v121;
  DockKitIDSMessage.token.getter();
  swift_beginAccess();
  sub_1001CC454(v84, v109, v113);
  v81(v113, v122);
  swift_endAccess();

  v114 = *(v42 + qword_1002ABE68);
  if (v114)
  {
    v126(v128, enum case for DockKitIDSMessageType.ack(_:), v129);
    v115 = v114;
    DockKitIDSMessage.token.getter();
    v116 = v130;
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    if (v111)
    {
      (v132)(v116, v135);

      return;
    }

    (v132)(v116, v135);

    v81 = v123;
  }

  v117 = v125;
  DockKitIDSMessage.token.getter();
  sub_1001C716C(v117);
  v81(v117, v122);
  if (!v111)
  {

    dispatch thunk of DKIDSKeepAlive.monitor(from:)();
  }
}

void sub_1001BE480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a2;
  v88 = a3;
  v89 = type metadata accessor for DockKitIDSMessage();
  v93 = *(v89 - 8);
  v4 = __chkstk_darwin(v89);
  v85 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v86 = &v76[-v6];
  v7 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v7 - 8);
  v91 = &v76[-v8];
  v9 = type metadata accessor for UUID();
  v97 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v90 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v76[-v13];
  __chkstk_darwin(v12);
  v16 = &v76[-v15];
  v17 = type metadata accessor for DockKitIDSMessageType();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v76[-v22];
  v95 = a1;
  DockKitIDSMessage.type.getter();
  v82 = *(v18 + 104);
  v83 = v18 + 104;
  v82(v21, enum case for DockKitIDSMessageType.deRegister(_:), v17);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v18 + 8);
  v24(v21, v17);
  v84 = v23;
  v81 = v17;
  v24(v23, v17);
  if (v96[3] != v96[0])
  {
    v29 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v31 = v33;
    v32 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
    goto LABEL_5;
  }

  v25 = v95;
  DockKitIDSMessage.token.getter();
  type metadata accessor for DockKitIDSClient();
  static DockKitIDSClient.DockKitBroadcastToken.getter();
  sub_1001CF2C4(&qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = v97 + 8;
  v27 = *(v97 + 8);
  v27(v14, v9);
  v27(v16, v9);
  if (v26)
  {
    v29 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v31 = v30;
    v32 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
LABEL_5:
    (*(*(v29 - 8) + 104))(v31, *v32, v29);
LABEL_6:
    swift_willThrow();
    return;
  }

  v34 = v16;
  v35 = v28;
  v36 = v90;
  DockKitIDSMessage.token.getter();
  v80 = v27;
  v37 = qword_1002ABE78;
  v38 = v94;
  v39 = swift_beginAccess();
  v40 = *&v38[v37];
  __chkstk_darwin(v39);
  *&v76[-16] = v36;

  v41 = v91;
  v42 = v92;
  sub_1001B6D9C(sub_1001CD88C, v40, v91);
  v92 = v42;

  v43 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v44 = (*(*(v43 - 8) + 48))(v41, 1, v43);
  v45 = v41;
  v46 = v80;
  sub_100095C84(v45, &qword_1002ABEE8, &qword_10023F720);
  v46(v36, v9);
  v47 = v25;
  DockKitIDSMessage.token.getter();
  if (v44 == 1)
  {
    v48 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v49 = swift_allocError();
    (*(*(v48 - 8) + 104))(v50, enum case for DockKitIDSMessagingError.notRegistered(_:), v48);
    sub_1001C6CCC(v34, v49);
    v46(v34, v9);

    goto LABEL_6;
  }

  v51 = v94;
  swift_beginAccess();
  v90 = v37;
  sub_1001B6CB4(v34);
  v91 = v34;
  v79 = v9;
  v97 = v35;
  v46(v34, v9);
  swift_endAccess();

  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100093DE8(v52, qword_1002ABE48);
  v53 = v93;
  v54 = v86;
  v55 = v89;
  (*(v93 + 16))(v86, v47, v89);
  v56 = v51;
  v57 = v51;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = v51;
    v61 = v54;
    v62 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v96[0] = v78;
    *v62 = 136315394;
    v63 = v91;
    v77 = v59;
    DockKitIDSMessage.token.getter();
    sub_1001CF2C4(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v64 = v79;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v80(v63, v64);
    v68 = *(v93 + 8);
    v69 = v61;
    v57 = v60;
    v55 = v89;
    v68(v69, v89);
    v70 = sub_1000952D4(v65, v67, v96);

    *(v62 + 4) = v70;
    *(v62 + 12) = 2048;
    v71 = v90;
    v72 = *(*&v90[v57] + 16);

    *(v62 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v58, v77, "De-registering client %s. %ld client(s) remaining.", v62, 0x16u);
    sub_100095808(v78);
  }

  else
  {

    v68 = *(v53 + 8);
    v68(v54, v55);
    v71 = v90;
  }

  if (!*(*&v71[v57] + 16))
  {
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100189D44();
  }

  dispatch thunk of DKIDSKeepAlive.expire(from:fail:)();

  v73 = *&v56[qword_1002ABE68];
  if (v73)
  {
    v82(v84, enum case for DockKitIDSMessageType.ack(_:), v81);
    v74 = v73;
    DockKitIDSMessage.token.getter();
    v75 = v85;
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    v68(v75, v55);
  }
}

void sub_1001BEF8C()
{
  v0 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v0 - 8);
  v75 = &v71 - v1;
  v2 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v2 - 8);
  v77 = &v71 - v3;
  v80 = type metadata accessor for UUID();
  v85 = *(v80 - 8);
  v4 = __chkstk_darwin(v80);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v76 = &v71 - v8;
  __chkstk_darwin(v7);
  v10 = &v71 - v9;
  v11 = type metadata accessor for DockKitIDSMessageType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v71 - v16;
  DockKitIDSMessage.type.getter();
  (*(v12 + 104))(v15, enum case for DockKitIDSMessageType.diagnostics(_:), v11);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v18(v17, v11);
  if (v82 != v81[0])
  {
    v35 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v37 = v36;
    v38 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v35 - 8) + 104))(v37, *v38, v35);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v19 = qword_1002ABE78;
  v20 = v79;
  v21 = swift_beginAccess();
  v22 = *&v20[v19];
  __chkstk_darwin(v21);
  *(&v71 - 2) = v10;

  v23 = v77;
  v24 = v78;
  sub_1001B6D9C(sub_1001CF37C, v22, v77);
  v25 = v24;

  v26 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v27 = (*(*(v26 - 8) + 48))(v23, 1, v26);
  sub_100095C84(v23, &qword_1002ABEE8, &qword_10023F720);
  v28 = v85 + 8;
  v29 = *(v85 + 8);
  v30 = v80;
  v29(v10, v80);
  if (v27 == 1)
  {
    v31 = v76;
    DockKitIDSMessage.token.getter();
    v32 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v33 = swift_allocError();
    (*(*(v32 - 8) + 104))(v34, enum case for DockKitIDSMessagingError.notRegistered(_:), v32);
    sub_1001C6CCC(v31, v33);
    v29(v31, v30);

LABEL_6:
    swift_willThrow();
    return;
  }

  v78 = v29;
  v85 = v28;
  v39 = v76;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v40 = qword_1002B1CF0;
    v41 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v42 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v42 + 4);

    v43 = *(v40 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v44 = *(v40 + v41);
    v45 = v43;

    os_unfair_lock_unlock(v44 + 4);

    if (!v43)
    {
      v35 = type metadata accessor for DockKitIDSMessagingError();
      sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
      swift_allocError();
      v37 = v57;
      v38 = &enum case for DockKitIDSMessagingError.noPairedDevice(_:);
      goto LABEL_5;
    }

    v71 = v25;
    v46 = *(v40 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v72 = v45;
    v79 = dispatch thunk of DockCoreAccessory.info.getter();
    v73 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v47 = *&v46[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v48 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v74 = v46;
    v49 = *&v46[v48];
    v50 = *(v49 + 16);

    v77 = v50;
    if (!v50)
    {
      break;
    }

    v51 = 0;
    v25 = v49 + 32;
    while (v51 < *(v49 + 16))
    {
      sub_1000A097C(v25, v81);
      v52 = *(*sub_1000A09E0(v81, v81[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v52) = static UUID.== infix(_:_:)();
      v53 = v80;
      v54 = v78;
      v78(v6, v80);
      v54(v39, v53);
      if (v52)
      {

        v55 = v74;
        v58 = *&v74[v73];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v81, &v82);
        sub_100095808(v81);
        goto LABEL_17;
      }

      ++v51;
      sub_100095808(v81);
      v25 += 40;
      if (v77 == v51)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_14:

  v55 = v74;
  v56 = *&v74[v73];
  OS_dispatch_semaphore.signal()();

  v84 = 0;
  v82 = 0u;
  v83 = 0u;
LABEL_17:

  if (*(&v83 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    v59 = swift_dynamicCast();
    v60 = v72;
    if (v59)
    {
      v61 = v81[0];
      if (*(v81[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v62 = *(v81[0] + 16)) != 0 && (v63 = *&v62[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
      {
        v64 = v62;
        if ([v63 state] == 2)
        {
          sub_1000A470C();
          v65 = type metadata accessor for TaskPriority();
          v66 = v60;
          v67 = v75;
          (*(*(v65 - 8) + 56))(v75, 1, 1, v65);
          v68 = swift_allocObject();
          v68[2] = 0;
          v68[3] = 0;
          v68[4] = v61;

          sub_1001B6A08(0, 0, v67, &unk_10023F738, v68);

          return;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100095C84(&v82, &unk_1002A6F40, &unk_10023BE90);
    v60 = v72;
  }

  v69 = type metadata accessor for DockKitIDSMessagingError();
  sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
  swift_allocError();
  (*(*(v69 - 8) + 104))(v70, enum case for DockKitIDSMessagingError.noPairedDevice(_:), v69);
  swift_willThrow();
}

uint64_t sub_1001BFA78()
{
  v0 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v0 - 8);
  v71 = &v63 - v1;
  v2 = type metadata accessor for DKSubjectSelectionRequestType();
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v64 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DKSelectSubjectMetric();
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v9 = type metadata accessor for UUID();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = __chkstk_darwin(v9);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v14 = type metadata accessor for DockKitIDSMessageType();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  DockKitIDSMessage.type.getter();
  (*(v15 + 104))(v18, enum case for DockKitIDSMessageType.select(_:), v14);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v76 != v77)
  {
    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v35 = v34;
    v36 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v33 - 8) + 104))(v35, *v36, v33);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v22 = qword_1002ABE78;
  v23 = v75;
  v24 = swift_beginAccess();
  v25 = *(v23 + v22);
  __chkstk_darwin(v24);

  sub_1001B6D9C(sub_1001CF37C, v25, v8);

  v26 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v25) = (*(*(v26 - 8) + 48))(v8, 1, v26);
  sub_100095C84(v8, &qword_1002ABEE8, &qword_10023F720);
  v27 = v74;
  v28 = *(v73 + 8);
  v28(v13, v74);
  if (v25 == 1)
  {
    v29 = v70;
    DockKitIDSMessage.token.getter();
    v30 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v31 = swift_allocError();
    (*(*(v30 - 8) + 104))(v32, enum case for DockKitIDSMessagingError.notRegistered(_:), v30);
    sub_1001C6CCC(v29, v31);
    v28(v29, v27);

    return swift_willThrow();
  }

  v38 = DockKitIDSMessage.payload.getter();
  if (v39 >> 60 == 15)
  {
    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v35 = v40;
    v36 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v38, v39);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v41 = qword_1002B1CF0;
  v42 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v43 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v43 + 4);

  v44 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v45 = *(v41 + v42);
  v46 = v44;

  os_unfair_lock_unlock(v45 + 4);

  nanocameraIdentifier.getter();
  v75 = v47;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  (*(v65 + 104))(v64, enum case for DKSubjectSelectionRequestType.point(_:), v66);
  LODWORD(v74) = DKSubjectSelectionRequestType.rawValue.getter();
  (*(v49 + 8))(v48, v50);
  v51 = type metadata accessor for Errors();
  (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
  if (v44)
  {
    v52 = v46;
    v53 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    v55 = v54;

    if (v55)
    {
      v56 = v53;
    }

    else
    {
      v56 = 0x6E776F6E6B6E55;
    }

    if (v55)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0xE700000000000000;
    }

    v72 = v57;
    v73 = v56;
    v58 = v52;
    dispatch thunk of DockCoreAccessory.model.getter();
    v59 = v46;

    v60 = v58;
    v61 = dispatch thunk of DockCoreAccessory.info.getter();

    DockCoreInfo.name.getter();
    v46 = v59;
  }

  v62 = v67;
  DKSelectSubjectMetric.init(appID:type:error:firmwareVersion:hardwareModel:hardwareMake:)();
  DKSelectSubjectMetric.send()();

  return (*(v68 + 8))(v62, v69);
}

void sub_1001C0394()
{
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchTime();
  v83 = *(v91 - 8);
  v2 = __chkstk_darwin(v91);
  v82 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v90 = &v79 - v4;
  v81 = type metadata accessor for DispatchQoS.QoSClass();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v6 - 8);
  v8 = &v79 - v7;
  v9 = type metadata accessor for UUID();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = __chkstk_darwin(v9);
  v92 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v14 = type metadata accessor for DockKitIDSMessageType();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v79 - v19;
  DockKitIDSMessage.type.getter();
  (*(v15 + 104))(v18, enum case for DockKitIDSMessageType.region(_:), v14);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (*&aBlock.f64[0] != v102)
  {
    v34 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v36 = v35;
    v37 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v34 - 8) + 104))(v36, *v37, v34);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v22 = qword_1002ABE78;
  v23 = v96.f64[0];
  v24 = swift_beginAccess();
  v25 = *(*&v23 + v22);
  __chkstk_darwin(v24);
  *(&v79 - 2) = v13;

  v26 = v95.f64[0];
  sub_1001B6D9C(sub_1001CF37C, v25, v8);

  v27 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v25) = (*(*(v27 - 8) + 48))(v8, 1, v27);
  sub_100095C84(v8, &qword_1002ABEE8, &qword_10023F720);
  v28 = v94;
  v29 = *(v93 + 8);
  v29(v13, v94);
  if (v25 == 1)
  {
    v30 = v92;
    DockKitIDSMessage.token.getter();
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, enum case for DockKitIDSMessagingError.notRegistered(_:), v31);
    sub_1001C6CCC(v30, v32);
    v29(v30, v28);

LABEL_6:
    swift_willThrow();
    return;
  }

  v38 = DockKitIDSMessage.payload.getter();
  if (v39 >> 60 == 15)
  {
    v34 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v36 = v40;
    v37 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v38, v39);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v41 = DockKitIDSMessage.payload.getter();
  if (v42 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v43 = v41;
  v44 = v42;
  type metadata accessor for CGRect(0);
  sub_1001CF2C4(&qword_1002ABF08, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1000A452C(v43, v44);

  if (v26 == 0.0)
  {
    __asm { FMOV            V1.2D, #1.0 }

    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(aBlock, _Q1), vcgtq_f64(vaddq_f64(aBlock, v98), _Q1)))) & 1) != 0 || aBlock.f64[0] < 0.0 || (v50 = aBlock.f64[1], aBlock.f64[1] < 0.0))
    {
      v34 = type metadata accessor for DockKitIDSMessagingError();
      sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
      swift_allocError();
      v36 = v58;
      v37 = &enum case for DockKitIDSMessagingError.argumentNotNormalized(_:);
      goto LABEL_5;
    }

    v95 = aBlock;
    v96 = v98;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v51 = qword_1002B1CF0;
    sub_100187E14();
    if (v54)
    {
      v55 = v52;
      v56 = v53;
      v57 = v54;

      sub_1001CD9B0(v56, v57, v95.f64[0], v50, v96.f64[0], v96.f64[1], v55, v56, v57);

      v63 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v64 = *(v51 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v64 + 4);

      v65 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(v51 + v65);
      *(v51 + v65) = 0x8000000000000000;
      sub_1001EBB3C(sub_1001B6D90, 0, v56, v57, isUniquelyReferenced_nonNull_native);

      *(v51 + v65) = v101;
      swift_endAccess();
      v67 = *(v51 + v63);

      os_unfair_lock_unlock(v67 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v68 = v80;
      v69 = v79;
      v70 = v81;
      (*(v80 + 104))(v79, enum case for DispatchQoS.QoSClass.default(_:), v81);
      *&v95.f64[0] = static OS_dispatch_queue.global(qos:)();
      (*(v68 + 8))(v69, v70);
      v71 = v82;
      static DispatchTime.now()();
      + infix(_:_:)();
      v96.f64[0] = *(v83 + 8);
      (*&v96.f64[0])(v71, v91);
      v72 = swift_allocObject();
      *(v72 + 16) = v55;
      *(v72 + 24) = v56;
      *(v72 + 32) = v57;
      v99 = sub_1001CE080;
      v100 = v72;
      *&aBlock.f64[0] = _NSConcreteStackBlock;
      *&aBlock.f64[1] = 1107296256;
      *&v98.f64[0] = sub_100147FC8;
      *&v98.f64[1] = &unk_10027AA20;
      v73 = _Block_copy(&aBlock);
      v74 = v84;
      static DispatchQoS.unspecified.getter();
      v101 = _swiftEmptyArrayStorage;
      sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
      v75 = v86;
      v76 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v77 = v90;
      v78 = v95.f64[0];
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v73);

      (*(v88 + 8))(v75, v76);
      (*(v85 + 8))(v74, v87);
      (*&v96.f64[0])(v77, v91);
    }

    else
    {
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100093DE8(v59, qword_1002ABE48);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "No foregrounded app available to set region of interest!", v62, 2u);
      }
    }
  }
}

void sub_1001C11BC()
{
  v121 = type metadata accessor for ActuatorLimit();
  v122 = *(v121 - 8);
  __chkstk_darwin(v121);
  v123 = &v107 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v119 = *(v120 - 1);
  __chkstk_darwin(v120);
  v118 = &v107 - v1;
  v2 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v2 - 8);
  v4 = &v107 - v3;
  v125 = type metadata accessor for UUID();
  v124 = *(v125 - 1);
  __chkstk_darwin(v125);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DockKitIDSMessageType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v107 - v12;
  DockKitIDSMessage.type.getter();
  (*(v8 + 104))(v11, enum case for DockKitIDSMessageType.velocity(_:), v7);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v14(v13, v7);
  if (v127[0] != v128)
  {
    v23 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v25 = v27;
    v26 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
    goto LABEL_18;
  }

  DockKitIDSMessage.token.getter();
  v15 = qword_1002ABE78;
  v16 = v126;
  v17 = swift_beginAccess();
  v18 = *(v16 + v15);
  __chkstk_darwin(v17);
  *(&v107 - 2) = v6;

  v19 = v129;
  sub_1001B6D9C(sub_1001CF37C, v18, v4);
  v20 = v19;

  v21 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v22 = (*(*(v21 - 8) + 48))(v4, 1, v21);
  sub_100095C84(v4, &qword_1002ABEE8, &qword_10023F720);
  (*(v124 + 8))(v6, v125);
  if (v22 == 1)
  {
    v23 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v25 = v24;
    v26 = &enum case for DockKitIDSMessagingError.notRegistered(_:);
LABEL_18:
    (*(*(v23 - 8) + 104))(v25, *v26, v23);
    swift_willThrow();
    return;
  }

  v28 = DockKitIDSMessage.payload.getter();
  if (v29 >> 60 == 15)
  {
LABEL_16:
    v23 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v25 = v60;
    v26 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_18;
  }

  sub_1000A452C(v28, v29);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v30 = qword_1002B1CF0;
    v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v32 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v32 + 4);

    v33 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;
    v34 = *(v30 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v35 = *(v30 + v31);
    v36 = v34;

    os_unfair_lock_unlock(v35 + 4);

    if (!v34)
    {
      v23 = type metadata accessor for DockKitIDSMessagingError();
      sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
      swift_allocError();
      v25 = v61;
      v26 = &enum case for DockKitIDSMessagingError.noPairedDevice(_:);
      goto LABEL_18;
    }

    v37 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
    swift_beginAccess();
    v38 = v119;
    v39 = v30 + v37;
    v40 = v118;
    v41 = v120;
    (*(v119 + 16))(v118, v39, v120);
    DKThreadSafe.wrappedValue.getter();
    (*(v38 + 8))(v40, v41);
    if (LOBYTE(v127[0]) != 1)
    {
      goto LABEL_16;
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v42 = DockKitIDSMessage.payload.getter();
    if (v43 >> 60 == 15)
    {
      break;
    }

    v44 = v42;
    v45 = v43;
    type metadata accessor for Vector3D(0);
    sub_1001CF2C4(&qword_1002ABF10, type metadata accessor for Vector3D, &protocol conformance descriptor for SPVector3D);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_1000A452C(v44, v45);

    if (v20)
    {
      return;
    }

    v119 = v127[0];
    v118 = v127[1];
    v117 = v127[2];
    v46 = *(v30 + v31);

    os_unfair_lock_lock(v46 + 4);

    v47 = *(v30 + v33);
    v48 = *(v30 + v31);
    v49 = v47;

    os_unfair_lock_unlock(v48 + 4);

    if (!v47)
    {
      return;
    }

    v50 = dispatch thunk of DockCoreAccessory.systems.getter();
    v51 = v50;
    if (v50 >> 62)
    {
LABEL_58:
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v121;
    v54 = v123;
    if (!v52)
    {
LABEL_52:

      return;
    }

    v55 = 0;
    v124 = v51 & 0xC000000000000001;
    v113 = v51 & 0xFFFFFFFFFFFFFF8;
    v112 = v51 + 32;
    v56 = *&v119;
    v57 = v118;
    v58 = *&v117;
    v126 = v122 + 16;
    v125 = (v122 + 8);
    *(&v59 + 1) = 6;
    v115 = xmmword_10023DB20;
    *&v59 = 136315138;
    v107 = v59;
    v116 = v49;
    v110 = v51;
    v108 = v52;
    while (1)
    {
      while (1)
      {
        if (v124)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v55 >= *(v113 + 16))
          {
            goto LABEL_57;
          }

          v62 = *(v112 + 8 * v55);
        }

        v63 = v62;
        if (__OFADD__(v55++, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        System.type.getter();
        v65 = SystemType.rawValue.getter();
        if (v65 == SystemType.rawValue.getter())
        {
          type metadata accessor for ActuationController();
          v66 = swift_dynamicCastClass();
          if (v66)
          {
            break;
          }
        }

        if (v55 == v52)
        {
          goto LABEL_52;
        }
      }

      v67 = v66;
      v120 = v63;
      v114 = v67;
      v68 = ActuationController.getActuatorLimits()();
      v111 = v55;
      v20 = *(v68 + 16);
      if (v20)
      {
        break;
      }

LABEL_45:
      v80 = v120;

      sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
      inited = swift_initStackObject();
      *(inited + 16) = v115;
      type metadata accessor for Actuator();
      *(inited + 32) = static Actuator.Yaw.getter();
      *(inited + 40) = v82;
      *(inited + 48) = static Actuator.Pitch.getter();
      *(inited + 56) = v83;
      *(inited + 64) = static Actuator.Roll.getter();
      *(inited + 72) = v84;
      sub_100095274(&qword_1002A89B8, &qword_10023D910);
      v85 = swift_allocObject();
      *(v85 + 16) = v115;
      v86 = v118;
      *(v85 + 32) = v119;
      *(v85 + 40) = v86;
      *(v85 + 48) = v117;
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100093DE8(v87, qword_1002ABE48);

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      v90 = os_log_type_enabled(v88, v89);
      v129 = inited;
      v109 = inited + 32;
      if (v90)
      {
        v91 = swift_slowAlloc();
        v127[0] = swift_slowAlloc();
        v92 = v127[0];
        *v91 = v107;
        v93 = Array.description.getter();
        v95 = sub_1000952D4(v93, v94, v127);

        *(v91 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v88, v89, "Setting actuation: %s", v91, 0xCu);
        sub_100095808(v92);
        v80 = v120;
      }

      v96 = dispatch thunk of DockCoreAccessory.info.getter();
      if (qword_1002A66E0 != -1)
      {
        swift_once();
      }

      v97 = dword_1002B1B80;
      v98 = qword_1002B1B88;
      v99 = unk_1002B1B90;
      v100 = v80;
      v101 = System.name.getter();
      v103 = v102;

      sub_10011B22C(v96, v97, v98, v99, v101, v103, v129, v85);

      swift_setDeallocating();
      swift_arrayDestroy();
      v53 = v121;
      v54 = v123;
      v51 = v110;
      v52 = v108;
      v55 = v111;
      v49 = v116;
      if (v111 == v108)
      {
        goto LABEL_52;
      }
    }

    type metadata accessor for Actuator();
    v69 = 0;
    v129 = v68 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    while (v69 < *(v68 + 16))
    {
      (*(v122 + 16))(v54, v129 + *(v122 + 72) * v69, v53);
      v70 = ActuatorLimit.name.getter();
      v72 = v71;
      if (static Actuator.Pitch.getter() == v70 && v73 == v72)
      {

        v74 = *&v57;
      }

      else
      {
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v75)
        {

          v74 = *&v57;
        }

        else if (static Actuator.Roll.getter() == v70 && v76 == v72)
        {

          v74 = v58;
        }

        else
        {
          v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v77)
          {
            v74 = v58;
          }

          else
          {
            v74 = v56;
          }
        }

        v53 = v121;
      }

      v78 = fabs(v74);
      v54 = v123;
      ActuatorLimit.maxSpeed.getter();
      if (v79 < v78)
      {

        v104 = type metadata accessor for DockKitIDSMessagingError();
        sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
        swift_allocError();
        (*(*(v104 - 8) + 104))(v105, enum case for DockKitIDSMessagingError.argumentNotNormalized(_:), v104);
        swift_willThrow();
        v106 = v120;

        (*v125)(v54, v53);
        return;
      }

      ++v69;
      (*v125)(v54, v53);
      if (v20 == v69)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  __break(1u);
}

void sub_1001C2244()
{
  v0 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v0 - 8);
  v2 = &v83 - v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = __chkstk_darwin(v3);
  v88 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v89 = &v83 - v8;
  __chkstk_darwin(v7);
  v10 = &v83 - v9;
  v11 = type metadata accessor for DockKitIDSMessageType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v83 - v16;
  DockKitIDSMessage.type.getter();
  (*(v12 + 104))(v15, enum case for DockKitIDSMessageType.systemTracking(_:), v11);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v18(v17, v11);
  if (v94 != v93[0])
  {
    v32 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v34 = v33;
    v35 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_29:
    (*(*(v32 - 8) + 104))(v34, *v35, v32);
    goto LABEL_30;
  }

  DockKitIDSMessage.token.getter();
  v19 = qword_1002ABE78;
  v20 = v97;
  v21 = swift_beginAccess();
  v22 = *&v20[v19];
  __chkstk_darwin(v21);
  *(&v83 - 2) = v10;

  sub_1001B6D9C(sub_1001CF37C, v22, v2);

  v23 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v24 = (*(*(v23 - 8) + 48))(v2, 1, v23);
  sub_100095C84(v2, &qword_1002ABEE8, &qword_10023F720);
  v25 = v91;
  v27 = v92 + 8;
  v26 = *(v92 + 8);
  v26(v10, v91);
  if (v24 == 1)
  {
    v28 = v89;
    DockKitIDSMessage.token.getter();
    v29 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v30 = swift_allocError();
    (*(*(v29 - 8) + 104))(v31, enum case for DockKitIDSMessagingError.notRegistered(_:), v29);
    sub_1001C6CCC(v28, v30);
    v26(v28, v25);

LABEL_30:
    swift_willThrow();
    return;
  }

  v36 = DockKitIDSMessage.payload.getter();
  if (v37 >> 60 == 15)
  {
    goto LABEL_28;
  }

  sub_1000A452C(v36, v37);
  v38 = DockKitIDSMessage.payload.getter();
  if (v39 >> 60 != 15)
  {
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 != 2)
      {
        sub_1000A452C(v38, v39);
        goto LABEL_28;
      }

      v42 = *(v38 + 16);
      v43 = *(v38 + 24);
      sub_1000A452C(v38, v39);
      if (!__OFSUB__(v43, v42))
      {
        if (v43 - v42 < 1)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      if (!v40)
      {
        v41 = BYTE6(v39);
        sub_1000A452C(v38, v39);
        if (!v41)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      v42 = HIDWORD(v38);
      v44 = v38;
      sub_1000A452C(v38, v39);
      if (!__OFSUB__(v42, v44))
      {
        if (v42 - v44 >= 1)
        {
LABEL_17:
          if (qword_1002A6780 != -1)
          {
            goto LABEL_48;
          }

          while (1)
          {
            v45 = qword_1002B1CF0;
            v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
            v47 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

            os_unfair_lock_lock(v47 + 4);

            v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;
            v49 = *(v45 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
            v50 = *(v45 + v46);
            v97 = v49;

            os_unfair_lock_unlock(v50 + 4);

            if (!v49)
            {
              v32 = type metadata accessor for DockKitIDSMessagingError();
              sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
              swift_allocError();
              v34 = v61;
              v35 = &enum case for DockKitIDSMessagingError.noPairedDevice(_:);
              goto LABEL_29;
            }

            v90 = v48;
            v92 = v27;
            v51 = DockKitIDSMessage.payload.getter();
            if (v52 >> 60 == 15)
            {
              goto LABEL_53;
            }

            v53 = v51;
            v54 = v52;
            v55 = Data._Representation.subscript.getter();
            sub_1000A452C(v53, v54);
            if (qword_1002A6790 != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for Logger();
            sub_100093DE8(v56, qword_1002ABE48);
            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              *v59 = 67109120;
              *(v59 + 4) = v55 == 0;
              _os_log_impl(&_mh_execute_header, v57, v58, "Setting manual control to %{BOOL}d", v59, 8u);
            }

            if (v55)
            {
              break;
            }

            LOBYTE(v93[0]) = 1;
            swift_beginAccess();
            sub_100095274(&qword_1002A9318, &qword_10023F0C0);
            DKThreadSafe.wrappedValue.setter();
            swift_endAccess();
            sub_10018A5D0(1);
            v62 = v97;
            v63 = dispatch thunk of DockCoreAccessory.info.getter();
            sub_100197D90(v63);

            v64 = *(v45 + v46);

            os_unfair_lock_lock(v64 + 4);

            v65 = *&v90[v45];
            v66 = *(v45 + v46);
            v67 = v65;

            os_unfair_lock_unlock(v66 + 4);

            if (!v65)
            {

              return;
            }

            v68 = *(v45 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
            v84 = v67;
            v90 = dispatch thunk of DockCoreAccessory.info.getter();
            v85 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
            v69 = *&v68[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
            OS_dispatch_semaphore.wait()();

            v70 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
            swift_beginAccess();
            v86 = v68;
            v27 = *&v68[v70];
            v71 = *(v27 + 16);

            v87 = v71;
            if (!v71)
            {
LABEL_38:

              v78 = v86;
              v79 = *&v86[v85];
              OS_dispatch_semaphore.signal()();

              v96 = 0;
              v94 = 0u;
              v95 = 0u;
LABEL_41:

              v81 = v97;
              v82 = v84;
              if (*(&v95 + 1))
              {
                sub_100095274(&unk_1002A7A90, &unk_10023C960);
                type metadata accessor for DaemonAccessory(0);
                if (swift_dynamicCast())
                {
                  sub_1001AB0A0();
                }

                else
                {
                }
              }

              else
              {

                sub_100095C84(&v94, &unk_1002A6F40, &unk_10023BE90);
              }

              return;
            }

            v72 = 0;
            v73 = v27 + 32;
            v74 = v91;
            while (v72 < *(v27 + 16))
            {
              sub_1000A097C(v73, v93);
              v75 = *(*sub_1000A09E0(v93, v93[3]) + 24);
              v76 = v89;
              DockCoreInfo.identifier.getter();

              v77 = v88;
              DockCoreInfo.identifier.getter();
              LOBYTE(v75) = static UUID.== infix(_:_:)();
              v26(v77, v74);
              v26(v76, v74);
              if (v75)
              {

                v78 = v86;
                v80 = *&v86[v85];
                OS_dispatch_semaphore.signal()();

                sub_1000A097C(v93, &v94);
                sub_100095808(v93);
                goto LABEL_41;
              }

              ++v72;
              sub_100095808(v93);
              v73 += 40;
              if (v87 == v72)
              {
                goto LABEL_38;
              }
            }

            __break(1u);
LABEL_48:
            swift_once();
          }

          sub_100189D44();
          v42 = v97;
          if (qword_1002A66E0 != -1)
          {
            goto LABEL_51;
          }

          goto LABEL_26;
        }

LABEL_28:
        v32 = type metadata accessor for DockKitIDSMessagingError();
        sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
        swift_allocError();
        v34 = v60;
        v35 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_51:
    swift_once();
LABEL_26:
    sub_100195C58(qword_1002B1B88, unk_1002B1B90, dword_1002B1B80);

    return;
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1001C2E58(NSObject *a1)
{
  v2 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v2 - 8);
  v127 = &v122 - v3;
  v132 = type metadata accessor for TrajectoryCommand.Animation();
  v134 = *(v132 - 8);
  v4 = __chkstk_darwin(v132);
  v131 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = &v122 - v6;
  v136 = type metadata accessor for TrajectoryCommand();
  v133 = *(v136 - 8);
  v7 = __chkstk_darwin(v136);
  v128 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v129 = &v122 - v10;
  v126 = v11;
  __chkstk_darwin(v9);
  v137 = &v122 - v12;
  v13 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v13 - 8);
  v15 = &v122 - v14;
  v141 = type metadata accessor for UUID();
  v16 = *(v141 - 1);
  v17 = __chkstk_darwin(v141);
  v135 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v138 = &v122 - v20;
  __chkstk_darwin(v19);
  v22 = &v122 - v21;
  v23 = type metadata accessor for DockKitIDSMessageType();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v122 - v28;
  v146 = a1;
  DockKitIDSMessage.type.getter();
  (*(v24 + 104))(v27, enum case for DockKitIDSMessageType.trajectory(_:), v23);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v30 = *(v24 + 8);
  v30(v27, v23);
  v30(v29, v23);
  if (v143 != v142[0])
  {
    v45 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v47 = v46;
    v48 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v45 - 8) + 104))(v47, *v48, v45);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v31 = qword_1002ABE78;
  v32 = v140;
  v33 = swift_beginAccess();
  v34 = *(v32 + v31);
  __chkstk_darwin(v33);
  *(&v122 - 2) = v22;

  v35 = v139;
  sub_1001B6D9C(sub_1001CF37C, v34, v15);

  v36 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v34) = (*(*(v36 - 8) + 48))(v15, 1, v36);
  sub_100095C84(v15, &qword_1002ABEE8, &qword_10023F720);
  isa = v16[1].isa;
  v38 = v22;
  v39 = v141;
  isa(v38, v141);
  v40 = v16 + 1;
  if (v34 == 1)
  {
    v41 = v138;
    DockKitIDSMessage.token.getter();
    v42 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, enum case for DockKitIDSMessagingError.notRegistered(_:), v42);
    sub_1001C6CCC(v41, v43);
    isa(v41, v39);

    return swift_willThrow();
  }

  v50 = DockKitIDSMessage.payload.getter();
  if (v51 >> 60 == 15)
  {
    v45 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v47 = v52;
    v48 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  v53 = v50;
  v54 = v51;
  v146 = v40;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1001CF2C4(&qword_1002ABF18, &type metadata accessor for TrajectoryCommand, &protocol conformance descriptor for TrajectoryCommand);
  v55 = v137;
  v56 = v136;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v57 = v35;
  if (v35)
  {
    sub_1000A452C(v53, v54);
  }

  else
  {
    v139 = v53;
    v140 = v54;

    if (qword_1002A6780 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v58 = qword_1002B1CF0;
      v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v60 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v60 + 4);

      v61 = *(v58 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v62 = *(v58 + v59);
      v63 = v61;

      os_unfair_lock_unlock(v62 + 4);

      v64 = v134;
      if (!v61)
      {
        v82 = type metadata accessor for DockKitIDSMessagingError();
        sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
        swift_allocError();
        (*(*(v82 - 8) + 104))(v83, enum case for DockKitIDSMessagingError.noPairedDevice(_:), v82);
        swift_willThrow();
        sub_1000A452C(v139, v140);
        return (*(v133 + 8))(v55, v56);
      }

      v124 = v58;
      v125 = v63;
      v123 = v57;
      v65 = v130;
      TrajectoryCommand.type.getter();
      v66 = v64[13];
      v67 = v131;
      v68 = v64;
      v69 = v132;
      v122 = v66;
      v66(v131, enum case for TrajectoryCommand.Animation.ReturnToHome(_:), v132);
      sub_1001CF2C4(&qword_1002ABF20, &type metadata accessor for TrajectoryCommand.Animation, &protocol conformance descriptor for TrajectoryCommand.Animation);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v70 = v69;
      v71 = v68[1];
      v71(v67, v70);
      v71(v65, v70);
      if (v143 == LOBYTE(v142[0]) || (TrajectoryCommand.type.getter(), v122(v67, enum case for TrajectoryCommand.Animation.Flip180(_:), v70), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v71(v67, v70), v55 = v137, v71(v65, v70), v143 == LOBYTE(v142[0])))
      {
        sub_100187E14();
        if (v73)
        {
          v74 = v73;
          *(&v122 - 12) = __chkstk_darwin(v72);
          *(&v122 - 5) = v75;
          *(&v122 - 4) = v76;
          v78 = v139;
          v77 = v140;
          *(&v122 - 3) = v55;
          *(&v122 - 2) = v78;
          *(&v122 - 1) = v77;
          v79 = v75;

          v80 = v123;
          sub_1001CE27C(v79, v74, sub_1001CE268);
          v81 = v133;
          v56 = v136;
          if (v80)
          {
            sub_1000A452C(v78, v77);
          }

          else
          {

            sub_1000A452C(v78, v77);
          }

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v81 = v133;
          v56 = v136;
          if (qword_1002A6790 != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          sub_100093DE8(v84, qword_1002ABE48);
          v85 = *(v81 + 16);
          v86 = v129;
          v85(v129, v55, v56);
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v146 = v87;
            v90 = v89;
            v141 = swift_slowAlloc();
            *&v143 = v141;
            *v90 = 136315138;
            v85(v128, v86, v56);
            v91 = String.init<A>(describing:)();
            v93 = v92;
            (*(v81 + 8))(v86, v56);
            v94 = sub_1000952D4(v91, v93, &v143);

            *(v90 + 4) = v94;
            v95 = v88;
            v96 = v146;
            _os_log_impl(&_mh_execute_header, v146, v95, "No foregrounded app available to send trajectory: %s", v90, 0xCu);
            sub_100095808(v141);

            sub_1000A452C(v139, v140);
          }

          else
          {

            sub_1000A452C(v139, v140);
            (*(v81 + 8))(v86, v56);
          }
        }

        return (*(v81 + 8))(v55, v56);
      }

      v97 = *(v124 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v134 = dispatch thunk of DockCoreAccessory.info.getter();
      v130 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v98 = *&v97[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      v99 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v131 = v97;
      v100 = *&v97[v99];
      v101 = *(v100 + 16);

      v56 = v136;
      v132 = v101;
      if (!v101)
      {
        break;
      }

      v102 = 0;
      v57 = v100 + 32;
      while (v102 < *(v100 + 16))
      {
        sub_1000A097C(v57, v142);
        v103 = *(*sub_1000A09E0(v142, v142[3]) + 24);
        v55 = v138;
        DockCoreInfo.identifier.getter();

        v104 = v135;
        DockCoreInfo.identifier.getter();
        LOBYTE(v103) = static UUID.== infix(_:_:)();
        v105 = v104;
        v106 = v141;
        isa(v105, v141);
        isa(v55, v106);
        if (v103)
        {

          v109 = v131;
          v110 = *&v130[v131];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v142, &v143);
          sub_100095808(v142);

          goto LABEL_33;
        }

        ++v102;
        sub_100095808(v142);
        v57 += 40;
        if (v132 == v102)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_47:
      swift_once();
    }

LABEL_28:

    v107 = v131;
    v108 = *&v130[v131];
    OS_dispatch_semaphore.signal()();

    v145 = 0;
    v143 = 0u;
    v144 = 0u;

LABEL_33:
    v81 = v133;
    v55 = v137;
    v111 = v140;
    v112 = v125;
    if (*(&v144 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      if (swift_dynamicCast())
      {
        v113 = v142[0];
        if (*(v142[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v114 = *(v142[0] + 16)) != 0)
        {
          v115 = *&v114[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
          if (v115)
          {
            v146 = v114;
            if ([v115 state] == 2)
            {
              v116 = type metadata accessor for TaskPriority();
              v117 = v127;
              (*(*(v116 - 8) + 56))(v127, 1, 1, v116);
              v118 = v128;
              (*(v81 + 16))(v128, v55, v56);
              v119 = (*(v81 + 80) + 40) & ~*(v81 + 80);
              v120 = swift_allocObject();
              *(v120 + 2) = 0;
              *(v120 + 3) = 0;
              *(v120 + 4) = v113;
              (*(v81 + 32))(&v120[v119], v118, v56);

              sub_1001B6410(0, 0, v117, &unk_10023F748, v120);
              sub_1000A452C(v139, v140);
            }

            else
            {

              sub_1000A452C(v139, v111);
            }
          }

          else
          {
            v121 = v114;

            sub_1000A452C(v139, v111);
          }
        }

        else
        {
          sub_1000A452C(v139, v111);
        }
      }

      else
      {

        sub_1000A452C(v139, v111);
      }
    }

    else
    {

      sub_1000A452C(v139, v111);
      sub_100095C84(&v143, &unk_1002A6F40, &unk_10023BE90);
    }

    return (*(v81 + 8))(v55, v56);
  }
}

void sub_1001C4180()
{
  v0 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v0 - 8);
  v2 = v47 - v1;
  v3 = type metadata accessor for UUID();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = __chkstk_darwin(v3);
  v47[0] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v47 - v6;
  v8 = type metadata accessor for DockKitIDSMessageType();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v47 - v13;
  DockKitIDSMessage.type.getter();
  (*(v9 + 104))(v12, enum case for DockKitIDSMessageType.frame(_:), v8);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v15(v14, v8);
  if (v51 != v52)
  {
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v30 = v29;
    v31 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v28 - 8) + 104))(v30, *v31, v28);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v16 = qword_1002ABE78;
  v17 = v50;
  v18 = swift_beginAccess();
  v19 = *(v17 + v16);
  __chkstk_darwin(v18);
  v47[-2] = v7;

  v20 = v47[1];
  sub_1001B6D9C(sub_1001CF37C, v19, v2);

  v21 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v19) = (*(*(v21 - 8) + 48))(v2, 1, v21);
  sub_100095C84(v2, &qword_1002ABEE8, &qword_10023F720);
  v22 = v49;
  v23 = *(v48 + 8);
  v23(v7, v49);
  if (v19 == 1)
  {
    v24 = v47[0];
    DockKitIDSMessage.token.getter();
    v25 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, enum case for DockKitIDSMessagingError.notRegistered(_:), v25);
    sub_1001C6CCC(v24, v26);
    v23(v24, v22);

LABEL_6:
    swift_willThrow();
    return;
  }

  v32 = DockKitIDSMessage.payload.getter();
  if (v33 >> 60 == 15)
  {
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v30 = v34;
    v31 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v32, v33);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v35 = DockKitIDSMessage.payload.getter();
  if (v36 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v37 = v35;
    v38 = v36;
    sub_1001CE850();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_1000A452C(v37, v38);

    if (!v20)
    {
      v39 = v52;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      sub_100187E14();
      if (v42)
      {
        sub_1001CE8A4(v41, v42, v40, v41, v42, v39);
      }

      else
      {
        if (qword_1002A6790 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_100093DE8(v43, qword_1002ABE48);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "No foregrounded app available to set framing mode!", v46, 2u);
        }
      }
    }
  }
}

uint64_t sub_1001C48F0()
{
  v0 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v0 - 8);
  v2 = &v50 - v1;
  v51 = type metadata accessor for UUID();
  v53 = *(v51 - 8);
  v3 = __chkstk_darwin(v51);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v7 = type metadata accessor for DockKitIDSMessageType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  DockKitIDSMessage.type.getter();
  (*(v8 + 104))(v11, enum case for DockKitIDSMessageType.offset(_:), v7);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v14(v13, v7);
  if (v54 != v55)
  {
    v27 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v29 = v28;
    v30 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_24:
    (*(*(v27 - 8) + 104))(v29, *v30, v27);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v15 = qword_1002ABE78;
  v16 = v52;
  v17 = swift_beginAccess();
  v18 = *(v16 + v15);
  __chkstk_darwin(v17);
  *(&v50 - 2) = v6;

  sub_1001B6D9C(sub_1001CF37C, v18, v2);

  v19 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v18) = (*(*(v19 - 8) + 48))(v2, 1, v19);
  sub_100095C84(v2, &qword_1002ABEE8, &qword_10023F720);
  v20 = v53 + 8;
  v21 = *(v53 + 8);
  v22 = v51;
  v21(v6, v51);
  if (v18 != 1)
  {
    v31 = DockKitIDSMessage.payload.getter();
    if (v32 >> 60 != 15)
    {
      sub_1000A452C(v31, v32);
      v33 = DockKitIDSMessage.payload.getter();
      if (v34 >> 60 == 15)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v35 = v34;
      v36 = v34 >> 62;
      if ((v34 >> 62) <= 1)
      {
        if (!v36)
        {
          v37 = v33;
          goto LABEL_20;
        }

        v44 = v33;
        if (v33 <= v33 >> 32)
        {
          v38 = v33;
          v45 = __DataStorage._bytes.getter();
          if (!v45)
          {
LABEL_33:
            result = __DataStorage._length.getter();
            __break(1u);
            goto LABEL_34;
          }

          v46 = v45;
          v47 = __DataStorage._offset.getter();
          if (!__OFSUB__(v44, v47))
          {
            v43 = (v44 - v47 + v46);
            result = __DataStorage._length.getter();
            if (v43)
            {
              goto LABEL_19;
            }

LABEL_34:
            __break(1u);
            return result;
          }

          goto LABEL_29;
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v36 == 2)
      {
        v38 = v33;
        v39 = *(v33 + 16);
        v40 = __DataStorage._bytes.getter();
        if (!v40)
        {
LABEL_31:
          __DataStorage._length.getter();
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v41 = v40;
        v42 = __DataStorage._offset.getter();
        if (!__OFSUB__(v39, v42))
        {
          v43 = (v39 - v42 + v41);
          __DataStorage._length.getter();
          if (v43)
          {
LABEL_19:
            v37 = *v43;
            v33 = v38;
LABEL_20:
            result = sub_1000A452C(v33, v35);
            if (v37)
            {
              return result;
            }

            goto LABEL_23;
          }

          goto LABEL_32;
        }

        goto LABEL_28;
      }

      sub_1000A452C(v33, v34);
    }

LABEL_23:
    v27 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v29 = v49;
    v30 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_24;
  }

  v23 = v50;
  v53 = v20;
  DockKitIDSMessage.token.getter();
  v24 = type metadata accessor for DockKitIDSMessagingError();
  sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
  v25 = swift_allocError();
  (*(*(v24 - 8) + 104))(v26, enum case for DockKitIDSMessagingError.notRegistered(_:), v24);
  sub_1001C6CCC(v23, v25);
  v21(v23, v22);

  return swift_willThrow();
}

void sub_1001C4FB4()
{
  v0 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v0 - 8);
  v95 = &v95 - v1;
  v98 = type metadata accessor for DockKitCameraCommand();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DockKitCameraCommandPayload();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v4 - 8);
  v6 = &v95 - v5;
  v105 = type metadata accessor for UUID();
  v104 = *(v105 - 8);
  v7 = __chkstk_darwin(v105);
  v102 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v95 - v9;
  v11 = type metadata accessor for DockKitIDSMessageType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v95 - v16;
  DockKitIDSMessage.type.getter();
  (*(v12 + 104))(v15, enum case for DockKitIDSMessageType.camera(_:), v11);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v18(v17, v11);
  if (aBlock != v112)
  {
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v33 = v32;
    v34 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v31 - 8) + 104))(v33, *v34, v31);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v19 = qword_1002ABE78;
  v20 = v113;
  v21 = swift_beginAccess();
  v22 = *(v20 + v19);
  __chkstk_darwin(v21);
  *(&v95 - 2) = v10;

  v23 = v103;
  sub_1001B6D9C(sub_1001CF37C, v22, v6);

  v24 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v22) = (*(*(v24 - 8) + 48))(v6, 1, v24);
  sub_100095C84(v6, &qword_1002ABEE8, &qword_10023F720);
  v25 = *(v104 + 8);
  v26 = v105;
  v25(v10, v105);
  if (v22 == 1)
  {
    v27 = v102;
    DockKitIDSMessage.token.getter();
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for DockKitIDSMessagingError.notRegistered(_:), v28);
    sub_1001C6CCC(v27, v29);
    v25(v27, v26);

LABEL_6:
    swift_willThrow();
    return;
  }

  v35 = DockKitIDSMessage.payload.getter();
  if (v36 >> 60 == 15)
  {
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    v33 = v37;
    v34 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v35, v36);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v38 = DockKitIDSMessage.payload.getter();
  if (v39 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_40;
  }

  v40 = v38;
  v41 = v39;
  sub_1001CF2C4(&qword_1002ABF30, &type metadata accessor for DockKitCameraCommandPayload, &protocol conformance descriptor for DockKitCameraCommandPayload);
  v42 = v100;
  v43 = v101;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1000A452C(v40, v41);

  if (!v23)
  {
    v44 = v96;
    DockKitCameraCommandPayload.command.getter();
    v45 = v97;
    v46 = v98;
    v47 = (*(v97 + 88))(v44, v98);
    if (v47 != enum case for DockKitCameraCommand.photo(_:))
    {
      if (v47 == enum case for DockKitCameraCommand.flip(_:))
      {
        if (qword_1002A6790 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_100093DE8(v51, qword_1002ABE48);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Doing camera flip!", v54, 2u);
        }

        v55 = type metadata accessor for AccessorySystemEvent();
        static AccessorySystemEvent.kHeaderCameraFlip.getter();
        v56 = objc_allocWithZone(v55);
        LOBYTE(aBlock) = 0;
        v57 = AccessorySystemEvent.init(name:payload:)();
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v58 = qword_1002B1CF0;
        v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v60 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v60 + 4);

        v61 = *(v58 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v62 = *(v58 + v59);
        v63 = v61;

        os_unfair_lock_unlock(v62 + 4);

        if (!v61)
        {
          (*(v99 + 8))(v42, v43);

          return;
        }

        v64 = dispatch thunk of DockCoreAccessory.info.getter();

        v65 = *(v58 + v59);

        os_unfair_lock_lock(v65 + 4);

        v66 = sub_1001F3BB8(_swiftEmptyArrayStorage);
        v67 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
        swift_beginAccess();
        *(v58 + v67) = v66;

        v68 = *(v58 + v59);

        os_unfair_lock_unlock(v68 + 4);

        v69 = *(*(v58 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
        sub_1001688C0(v64, v57);
      }

      else
      {
        if (v47 == enum case for DockKitCameraCommand.zoom(_:))
        {
          v77 = DockKitCameraCommandPayload.payload.getter();
          if (v78 >> 60 == 15)
          {
            v79 = type metadata accessor for DockKitIDSMessagingError();
            sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
            swift_allocError();
            (*(*(v79 - 8) + 104))(v80, enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:), v79);
            swift_willThrow();
            goto LABEL_27;
          }

          sub_1000A452C(v77, v78);
          swift_allocObject();
          PropertyListDecoder.init()();
          v89 = DockKitCameraCommandPayload.payload.getter();
          if (v90 >> 60 != 15)
          {
            v91 = v89;
            v92 = v90;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            (*(v99 + 8))(v42, v43);
            sub_1000A452C(v91, v92);

            return;
          }

LABEL_41:
          __break(1u);
          return;
        }

        if (v47 != enum case for DockKitCameraCommand.open(_:))
        {
          v93 = type metadata accessor for DockKitIDSMessagingError();
          sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
          swift_allocError();
          (*(*(v93 - 8) + 104))(v94, enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:), v93);
          swift_willThrow();
          (*(v99 + 8))(v42, v43);
          (*(v45 + 8))(v44, v46);
          return;
        }

        v81 = SBSCreateOpenApplicationService();
        sub_100095274(&qword_1002A81A0, &qword_10023D038);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10023C170;
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = v83;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        sub_1001F2ABC(inited);
        swift_setDeallocating();
        sub_100095C84(inited + 32, &qword_1002ACA30, qword_10023D040);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v85 = [objc_opt_self() optionsWithDictionary:isa];

        if (!v81)
        {
          (*(v99 + 8))(v42, v43);

          return;
        }

        v86 = v81;
        v87 = String._bridgeToObjectiveC()();
        v110 = sub_1001C92B4;
        v111 = 0;
        aBlock = _NSConcreteStackBlock;
        v107 = 1107296256;
        v108 = sub_1000A5218;
        v109 = &unk_10027AAE8;
        v88 = _Block_copy(&aBlock);
        [v86 openApplication:v87 withOptions:v85 completion:v88];
        _Block_release(v88);
      }

LABEL_27:
      (*(v99 + 8))(v42, v43);
      return;
    }

    v48 = DockKitCameraCommandPayload.payload.getter();
    if (v49 >> 60 == 15)
    {
      v50 = 0;
LABEL_26:
      v74 = type metadata accessor for TaskPriority();
      v75 = v95;
      (*(*(v74 - 8) + 56))(v95, 1, 1, v74);
      v76 = swift_allocObject();
      v76[2] = 0;
      v76[3] = 0;
      v76[4] = v50;
      sub_1001B6A08(0, 0, v75, &unk_10023F768, v76);

      goto LABEL_27;
    }

    sub_1000A452C(v48, v49);
    swift_allocObject();
    PropertyListDecoder.init()();
    v70 = DockKitCameraCommandPayload.payload.getter();
    if (v71 >> 60 != 15)
    {
      v72 = v70;
      v73 = v71;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      sub_1000A452C(v72, v73);

      v50 = aBlock;
      goto LABEL_26;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }
}

uint64_t sub_1001C607C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[2] = a3;
  v34[1] = a2;
  v3 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = type metadata accessor for UUID();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = __chkstk_darwin(v6);
  v34[0] = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v34 - v9;
  v11 = type metadata accessor for DockKitIDSMessageType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v34 - v16;
  DockKitIDSMessage.type.getter();
  (*(v12 + 104))(v15, enum case for DockKitIDSMessageType.keepAliveResp(_:), v11);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v18(v17, v11);
  if (v38 != v39)
  {
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, enum case for DockKitIDSMessagingError.unsupportedMessageType(_:), v31);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v19 = qword_1002ABE78;
  v20 = v37;
  v21 = swift_beginAccess();
  v22 = *(v20 + v19);
  __chkstk_darwin(v21);
  v34[-2] = v10;

  sub_1001B6D9C(sub_1001CF37C, v22, v5);

  v23 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v22) = (*(*(v23 - 8) + 48))(v5, 1, v23);
  sub_100095C84(v5, &qword_1002ABEE8, &qword_10023F720);
  v24 = *(v35 + 8);
  v25 = v10;
  v26 = v36;
  v24(v25, v36);
  if (v22 == 1)
  {
    v27 = v34[0];
    DockKitIDSMessage.token.getter();
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for DockKitIDSMessagingError.notRegistered(_:), v28);
    sub_1001C6CCC(v27, v29);
    v24(v27, v26);

    return swift_willThrow();
  }

  dispatch thunk of DKIDSKeepAlive.monitor(from:)();
}

void sub_1001C65DC(uint64_t a1)
{
  v2 = type metadata accessor for DockKitIDSMessage();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v50 = type metadata accessor for UUID();
  v48 = *(v50 - 8);
  v7 = __chkstk_darwin(v50);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for DockKitIDSMessageType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v49 = a1;
  DockKitIDSMessage.type.getter();
  v18 = *(v12 + 104);
  v41 = enum case for DockKitIDSMessageType.objects(_:);
  v40 = v18;
  v18(v15);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType, &protocol conformance descriptor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if (v51 != v52)
  {
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, enum case for DockKitIDSMessagingError.unsupportedMessageType(_:), v31);
    goto LABEL_5;
  }

  DockKitIDSMessage.token.getter();
  v20 = qword_1002ABE78;
  v21 = v47;
  v22 = swift_beginAccess();
  v23 = *(v21 + v20);
  __chkstk_darwin(v22);
  *(&v40 - 2) = v10;

  v24 = v46;
  sub_1001B6D9C(sub_1001CF37C, v23, v6);
  v46 = v24;

  v25 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v23) = (*(*(v25 - 8) + 48))(v6, 1, v25);
  sub_100095C84(v6, &qword_1002ABEE8, &qword_10023F720);
  v26 = *(v48 + 8);
  v26(v10, v50);
  if (v23 == 1)
  {
    v27 = v45;
    DockKitIDSMessage.token.getter();
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for DockKitIDSMessagingError.notRegistered(_:), v28);
    sub_1001C6CCC(v27, v29);
    v26(v27, v50);

LABEL_5:
    swift_willThrow();
    return;
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v52 = _swiftEmptyArrayStorage;
  sub_100095274(&qword_1002ABF40, &qword_10023F778);
  sub_1001CEFF0();
  v33 = v46;
  v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v36 = v35;

  if (!v33)
  {
    v37 = *(v21 + qword_1002ABE68);
    if (v37)
    {
      v40(v17, v41, v11);
      type metadata accessor for DockKitIDSClient();
      v38 = v37;
      static DockKitIDSClient.DockKitBroadcastToken.getter();
      sub_1000A0CD8(v34, v36);
      v39 = v42;
      DockKitIDSMessage.init(type:token:payload:)();
      DKIDSMessagingCenter.send(_:)();
      (*(v43 + 8))(v39, v44);
      sub_1000A0D2C(v34, v36);
    }

    else
    {
      sub_1000A0D2C(v34, v36);
    }
  }
}

uint64_t sub_1001C6CCC(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for UUID();
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DockKitIDSMessageType();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DockKitIDSMessage();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DockKitIDSMessagingError();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v34 = a2;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  if (swift_dynamicCast())
  {
    v24 = a1;
    v25 = v2;
    v17 = *(v11 + 8);
    v17(v16, v10);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v34 = a2;
    swift_errorRetain();
    swift_dynamicCast();
    sub_1001CF2C4(&qword_1002ABF70, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    v18 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v20 = v19;

    v17(v14, v10);
    a1 = v24;
    v2 = v25;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = *(v2 + qword_1002ABE68);
  if (v21)
  {
    (*(v26 + 104))(v28, enum case for DockKitIDSMessageType.ack(_:), v27);
    (*(v30 + 16))(v32, a1, v33);
    v22 = v21;
    sub_1000B4F20(v18, v20);
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    (*(v29 + 8))(v9, v31);
    sub_1000A452C(v18, v20);
  }

  else
  {
    sub_1000A452C(v18, v20);
  }

  swift_errorRetain();
  return a2;
}

void sub_1001C716C(unint64_t a1)
{
  v70 = a1;
  v91 = type metadata accessor for UUID();
  v2 = *(v91 - 8);
  __chkstk_darwin(v91);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DockKitIDSMessageType();
  v4 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DockKitIDSMessage();
  v6 = *(v67 - 8);
  __chkstk_darwin(v67);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100095274(&qword_1002ABF60, &qword_10023F780);
  v9 = __chkstk_darwin(v86);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v80 = &v60 - v12;
  v13 = __chkstk_darwin(v11);
  v90 = &v60 - v14;
  __chkstk_darwin(v13);
  v79 = &v60 - v15;
  v16 = qword_1002ABE70;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v76 = qword_1002ABE68;
  v77 = v1;
  v22 = (v19 + 63) >> 6;
  v87 = v2 + 16;
  v78 = v2 + 32;
  v82 = v2;
  v61 = (v2 + 8);
  v64 = enum case for DockKitIDSMessageType.info(_:);
  v63 = (v4 + 104);
  v65 = (v6 + 8);
  v84 = v17;

  v23 = 0;
  v24.n128_u64[0] = 138412290;
  v60 = v24;
  v74 = v22;
  v75 = v18;
  v81 = v8;
  while (v21)
  {
LABEL_11:
    v26 = __clz(__rbit64(v21)) | (v23 << 6);
    v27 = v84;
    v28 = v82;
    v29 = *(v84 + 48) + *(v82 + 72) * v26;
    v30 = v79;
    v85 = *(v82 + 16);
    v85(v79, v29, v91);
    v31 = *(v27 + 56);
    v32 = type metadata accessor for DockKitIDSInfo();
    v33 = *(v32 - 8);
    v34 = v31 + *(v33 + 72) * v26;
    v35 = v86;
    v36 = *(v86 + 48);
    (*(v33 + 16))(&v30[v36], v34, v32);
    v37 = *(v35 + 48);
    v38 = v90;
    (*(v28 + 32))(v90, v30, v91);
    v83 = v33;
    v39 = *(v33 + 32);
    v88 = v37;
    v89 = v32;
    v39(v38 + v37, &v30[v36], v32);
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100093DE8(v40, qword_1002ABE48);
    v41 = v80;
    sub_1000B5150(v38, v80, &qword_1002ABF60, &qword_10023F780);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v72 = v44;
      v73 = swift_slowAlloc();
      *v44 = v60.n128_u32[0];
      v45 = v62;
      sub_1000B5150(v41, v62, &qword_1002ABF60, &qword_10023F780);
      v46 = *(v86 + 48);
      v71 = v42;
      v47 = DockKitIDSInfo.info.getter();
      sub_100095C84(v41, &qword_1002ABF60, &qword_10023F780);
      (*(v83 + 8))(v45 + v46, v89);
      (*v61)(v45, v91);
      v48 = v72;
      *(v72 + 1) = v47;
      v49 = v73;
      *v73 = v47;
      v50 = v71;
      _os_log_impl(&_mh_execute_header, v71, v43, "Sending INFO for accessory %@", v48, 0xCu);
      sub_100095C84(v49, &unk_1002A6F60, &unk_10023C4E0);

      v38 = v90;
    }

    else
    {

      sub_100095C84(v41, &qword_1002ABF60, &qword_10023F780);
    }

    v51 = v81;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1001CF2C4(&qword_1002ABF68, &type metadata accessor for DockKitIDSInfo, &protocol conformance descriptor for DockKitIDSInfo);
    v52 = v92;
    v53 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v92 = v52;
    if (v52)
    {
      sub_100095C84(v38, &qword_1002ABF60, &qword_10023F780);

LABEL_21:

      return;
    }

    v55 = v53;
    v56 = v54;

    v57 = *(v77 + v76);
    if (v57)
    {
      (*v63)(v66, v64, v68);
      v85(v69, v70, v91);
      v58 = v57;
      sub_1000A0CD8(v55, v56);
      DockKitIDSMessage.init(type:token:payload:)();
      v59 = v92;
      DKIDSMessagingCenter.send(_:)();
      v92 = v59;
      if (v59)
      {

        sub_1000A0D2C(v55, v56);
        (*v65)(v51, v67);
        sub_100095C84(v90, &qword_1002ABF60, &qword_10023F780);
        return;
      }

      sub_1000A0D2C(v55, v56);
      (*v65)(v51, v67);
      v38 = v90;
    }

    else
    {
      sub_1000A0D2C(v55, v56);
    }

    v21 &= v21 - 1;
    sub_100095C84(v38, &qword_1002ABF60, &qword_10023F780);
    v22 = v74;
    v18 = v75;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      goto LABEL_21;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1001C7A50(uint64_t a1)
{
  if (!qword_1002AA7A8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002AA7A8);
    }
  }
}

uint64_t sub_1001C7AB8(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DockKitIDSMessage.token.getter();
  v5 = static UUID.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

void sub_1001C7BA4(char a1, char *a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Errors();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(a2, 1, v10) == 1)
  {
    if ((a1 & 1) == 0)
    {
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100093DE8(v13, qword_1002ABE48);
      v25 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v25, v14, "Unable to set actuator velocities!", v15, 2u);
      }

      v16 = v25;
    }
  }

  else
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100093DE8(v17, qword_1002ABE48);
    sub_1000B5150(a2, v9, &unk_1002A6F30, &unk_10023C4D0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v20 = 136315138;
      sub_1000B5150(v9, v7, &unk_1002A6F30, &unk_10023C4D0);
      if (v12(v7, 1, v10) == 1)
      {
        __break(1u);
      }

      else
      {
        sub_1001CF2C4(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
        v21 = Error.localizedDescription.getter();
        v23 = v22;
        sub_100095C84(v9, &unk_1002A6F30, &unk_10023C4D0);
        (*(v11 + 8))(v7, v10);
        v24 = sub_1000952D4(v21, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to set actuator velocities: %s", v20, 0xCu);
        sub_100095808(v25);
      }
    }

    else
    {

      sub_100095C84(v9, &unk_1002A6F30, &unk_10023C4D0);
    }
  }
}

uint64_t sub_1001C7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1001C803C;

  return sub_1000F77BC(v5, v6);
}

uint64_t sub_1001C803C()
{

  return (_swift_task_switch)(sub_1001C8138, 0, 0);
}

uint64_t sub_1001C8138()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v0[4] = v1;
  if (v1)
  {

    v2 = sub_1001F3CC8(_swiftEmptyArrayStorage);
    sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(5242880).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001ED690(isa, 0x6953676F4C78616DLL, 0xEA0000000000657ALL, isUniquelyReferenced_nonNull_native);
    v5 = NSNumber.init(integerLiteral:)(2).super.super.isa;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001ED690(v5, 0x746F687370616E73, 0xEC00000065707954, v6);
    type metadata accessor for AccessoryDiagnosticsOptions(0, v7);
    swift_allocObject();
    v8 = sub_100106520(v2);
    v0[5] = v8;
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1001C83C4;

    return sub_1000C7C54(v8, v10);
  }

  else
  {
    v12 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:), v12);
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1001C83C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v5 = sub_1001C86B0;
  }

  else
  {
    v5 = sub_1001C84DC;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_1001C84DC(uint64_t a1, uint64_t a2)
{
  v15 = v2;
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100093DE8(v3, qword_1002ABE48);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v2[8];
  if (v6)
  {
    v8 = v2[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_1000952D4(v8, v7, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Diagnostic logs saved to %s", v9, 0xCu);
    sub_100095808(v10);
  }

  else
  {
  }

  v12 = v2[1];

  return v12();
}

uint64_t sub_1001C86B0(uint64_t a1, uint64_t a2)
{
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100093DE8(v3, qword_1002ABE48);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Diagnostics transfer failed: %@", v6, 0xCu);
    sub_100095C84(v7, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }

  v9 = *(v2 + 8);

  return v9();
}

void sub_1001C8884(char a1, void *a2)
{
  if (!a2)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100093DE8(v14, qword_1002ABE48);
    v19 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v19, v15, "Region of Interest request completed successfully: %{BOOL}d", v16, 8u);
    }

    goto LABEL_10;
  }

  v2 = qword_1002A6790;
  v3 = a2;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100093DE8(v4, qword_1002ABE48);
  v19 = v3;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v8 = [v19 localizedDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1000952D4(v9, v11, &v20);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Region of Interest request failed: %s", v6, 0xCu);
    sub_100095808(v7);

LABEL_10:
    v17 = v19;
    goto LABEL_12;
  }

  v17 = oslog;
LABEL_12:
}

uint64_t (*sub_1001C8AF8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v5 = qword_1002B1CF0;
  result = sub_100194938(a2, a3);
  if (result)
  {
    sub_1000BAA84(result, v7);
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100093DE8(v8, qword_1002ABE48);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Region of Interest not completed after 1 sec, expiring", v11, 2u);
    }

    v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v13 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v13 + 4);

    swift_beginAccess();
    v14 = sub_1001E4D18(a2, a3);
    v16 = v15;
    swift_endAccess();
    sub_1000BAA84(v14, v16);
    v17 = *(v5 + v12);

    os_unfair_lock_unlock(v17 + 4);
  }

  return result;
}

void sub_1001C8CC4(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v30 = a3;
  v11 = type metadata accessor for TrajectoryCommand();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v29 - v16;
  v31 = *a1;
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100093DE8(v18, qword_1002ABE48);
  v19 = *(v12 + 16);
  v19(v17, a5, v11);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29[1] = a7;
    v23 = v22;
    v29[0] = swift_slowAlloc();
    v33 = v29[0];
    *v23 = 136315394;
    *(v23 + 4) = sub_1000952D4(v30, a4, &v33);
    *(v23 + 12) = 2080;
    v19(v15, v17, v11);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    (*(v12 + 8))(v17, v11);
    v27 = sub_1000952D4(v24, v26, &v33);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Notifying client that %s just sent a trajectory: %s ", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v31 sendCommandEventWithCommand:isa];
}

uint64_t sub_1001C8FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return (_swift_task_switch)(sub_1001C8FDC, 0, 0);
}

uint64_t sub_1001C8FDC(uint64_t a1)
{
  v2 = TrajectoryCommand.encode()();
  v1[4] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = v1[1];

    return v4();
  }

  else
  {
    v6 = v3;
    v7 = v1[2];
    v1[5] = v2;
    v8 = v2;
    v9 = swift_task_alloc();
    v1[6] = v9;
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v6;
    v10 = swift_task_alloc();
    v1[7] = v10;
    *v10 = v1;
    v10[1] = sub_1001C913C;

    return withCheckedContinuation<A>(isolation:function:_:)(v1 + 8, 0, 0, 0xD000000000000012, 0x8000000100231FD0, sub_100137B90, v9, &type metadata for Bool);
  }
}

uint64_t sub_1001C913C()
{

  return (_swift_task_switch)(sub_1001C9254, 0, 0);
}

uint64_t sub_1001C9254()
{
  sub_1000A452C(v0[5], v0[4]);
  v1 = v0[1];

  return v1();
}

void sub_1001C92B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100093DE8(v2, qword_1002ABE48);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1000952D4(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to launch camera app: %s", v4, 0xCu);
      sub_100095808(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1001C9450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001C9510, 0, 0);
}

uint64_t sub_1001C9510(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v1;
  v6[1] = sub_1001C9604;

  return sub_1001C9A00(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_1001C9604()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001C97AC, 0, 0);
}

uint64_t sub_1001C97AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C9810(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001C9908;

  return v6(a1);
}

uint64_t sub_1001C9908()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001C9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return (_swift_task_switch)(sub_1001C9B00, 0, 0);
}

uint64_t sub_1001C9B00()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1001CF2C4(&qword_1002AB488, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001CF2C4(&qword_1002ABF38, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1001C9C90;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1001C9C90()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001C9E4C, 0, 0);
}

uint64_t sub_1001C9E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001C9ED8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = (2 * v9 - 64);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

id *sub_1001C9F98(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1001F7A2C(v2, 0);

    v1 = sub_1001F1528(&v5, (v3 + 32), v2, v1);
    sub_1000C7084(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_1001CA048(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for TrackedSubjectInternal();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100095274(&qword_1002A7390, &qword_10023BEF0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t *sub_1001CA12C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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
    v9 = sub_1001CCD14(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_1001CA1C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1001CD324(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

Swift::Int sub_1001CA268(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for BTDiscoveredDevice(0);
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  sub_100095274(&unk_1002AC9E0, &qword_10023F7B8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_1000E40C4(v22 + v43 * v21, v40);
    sub_1000E45C8(v26, v17);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_1000E45C8(v17, *(v13 + 56) + v30 * v43);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
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

Swift::Int sub_1001CA578(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100095274(&qword_1002ACA90, &qword_10023F798);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1001CA7BC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v49 = type metadata accessor for UUID();
  v7 = *(v49 - 8);
  v8 = __chkstk_darwin(v49);
  v48 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = v37 - v10;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100095274(&qword_1002ABF00, &qword_100240010);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v40;
  }

  v14 = 0;
  v37[1] = v7 + 16;
  v38 = result;
  v47 = v7 + 32;
  v15 = result + 64;
  v37[0] = a4;
  v39 = v7;
  v16 = v49;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v42 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v46 = *(v7 + 72);
    v22 = v41;
    (*(v7 + 16))(v41, v21 + v46 * v20, v16);
    v23 = (a4[7] + 16 * v20);
    v24 = *v23;
    v25 = v23[1];
    v43 = *(v7 + 32);
    v44 = v24;
    v43(v48, v22, v16);
    v12 = v38;
    sub_1001CF2C4(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = v25;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v12 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v15 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v12 + 48) + v29 * v46, v48, v49);
    v34 = (*(v12 + 56) + 16 * v29);
    v35 = v45;
    *v34 = v44;
    v34[1] = v35;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v13 = v42;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v40[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
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

uint64_t sub_1001CAB64(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_1001CAC10(v14, a3, a4, a5);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1001CAC10(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1001CAD34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v12 = v6;
    while (1)
    {

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v14 < 1 || v13 > 0 && v14 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v12 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v9 = *v6;
      *v6 = v6[1];
      v6[1] = v9;
      --v6;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001CAE5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v17 = v7;
    v18 = v6;
    while (1)
    {

      v8 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v10 = (v9 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v8;
      v11 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v13 = v12;

      if (v13)
      {
        if ((v10 - 1) >= 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_4;
        }
      }

      else if (v10 <= 0 || v11 >= 1 && v10 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 1;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      *v6 = v6[1];
      v6[1] = v14;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001CAF84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v92 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_101:
    v10 = *v92;
    if (!*v92)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = a3;
    if ((result & 1) == 0)
    {
LABEL_134:
      result = sub_1001D99BC(v9);
      v9 = result;
    }

    v99 = v9;
    v83 = v9[2];
    if (v83 >= 2)
    {
      while (1)
      {
        v84 = *v4;
        if (!*v4)
        {
          goto LABEL_138;
        }

        v4 = v9[2 * v83];
        v85 = v9[2 * v83 + 3];
        sub_1001CBDE4((v84 + 8 * v4), (v84 + 8 * v9[2 * v83 + 2]), (v84 + 8 * v85), v10);
        if (v6)
        {
        }

        if (v85 < v4)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1001D99BC(v9);
        }

        if (v83 - 2 >= v9[2])
        {
          goto LABEL_128;
        }

        v86 = &v9[2 * v83];
        *v86 = v4;
        v86[1] = v85;
        v99 = v9;
        result = sub_1001D9930(v83 - 1);
        v9 = v99;
        v83 = v99[2];
        v4 = a3;
        if (v83 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      v21 = a3;
    }

    else
    {
      v12 = *a3;
      v98 = *(*a3 + 8 * v11);
      v4 = *(v12 + 8 * v8);
      v97 = v4;

      v13 = sub_1001BB308(&v98);
      if (v6)
      {
      }

      v14 = v13;

      v15 = v10;
      v16 = v10 + 2;
      v90 = v15;
      if (v16 < v7)
      {
        v17 = v12 + 8 * v15 + 16;
        while (1)
        {

          dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
          dispatch thunk of DKProbabilityValue.variable.getter();

          v18 = v98;
          v4 = dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
          dispatch thunk of DKProbabilityValue.variable.getter();

          if (v18 <= 0)
          {
            if (v14)
            {
              v21 = a3;
              goto LABEL_22;
            }
          }

          else
          {
            v20 = v97 < 1 || v18 < v97;
            if (v14 != v20)
            {
              break;
            }
          }

          v17 += 8;
          if (v7 == ++v16)
          {
            v16 = v7;
            break;
          }
        }
      }

      v21 = a3;
      if (v14)
      {
LABEL_22:
        v11 = v16;
        v10 = v90;
        if (v11 < v90)
        {
          goto LABEL_131;
        }

        if (v90 < v11)
        {
          v22 = 8 * v11 - 8;
          v23 = 8 * v90;
          v24 = v11;
          v25 = v90;
          do
          {
            if (v25 != --v24)
            {
              v26 = *v21;
              if (!*v21)
              {
                goto LABEL_137;
              }

              v27 = *(v26 + v23);
              *(v26 + v23) = *(v26 + v22);
              *(v26 + v22) = v27;
            }

            ++v25;
            v22 -= 8;
            v23 += 8;
          }

          while (v25 < v24);
        }
      }

      else
      {
        v11 = v16;
        v10 = v90;
      }
    }

    v28 = v21[1];
    if (v11 < v28)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_130;
      }

      if (v11 - v10 < a4)
      {
        v29 = &v10[a4];
        if (__OFADD__(v10, a4))
        {
          goto LABEL_132;
        }

        if (v29 >= v28)
        {
          v29 = v21[1];
        }

        if (v29 < v10)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v11 != v29)
        {
          break;
        }
      }
    }

LABEL_49:
    if (v11 < v10)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100102974(0, v9[2] + 1, 1, v9);
      v9 = result;
    }

    v39 = v9[2];
    v38 = v9[3];
    v4 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_100102974((v38 > 1), v39 + 1, 1, v9);
      v9 = result;
    }

    v9[2] = v4;
    v40 = &v9[2 * v39];
    v40[4] = v10;
    v40[5] = v11;
    v96 = v11;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_139;
    }

    if (v39)
    {
      while (1)
      {
        v42 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v43 = v9[4];
          v44 = v9[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_69:
          if (v46)
          {
            goto LABEL_118;
          }

          v59 = &v9[2 * v4];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_121;
          }

          v65 = &v9[2 * v42 + 4];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_125;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v4 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v69 = &v9[2 * v4];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_83:
        if (v64)
        {
          goto LABEL_120;
        }

        v72 = &v9[2 * v42];
        v74 = v72[4];
        v73 = v72[5];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_123;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_90:
        v80 = v42 - 1;
        if (v42 - 1 >= v4)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v21)
        {
          goto LABEL_136;
        }

        v4 = v9[2 * v80 + 4];
        v81 = v9[2 * v42 + 5];
        sub_1001CBDE4((*v21 + 8 * v4), (*v21 + 8 * v9[2 * v42 + 4]), (*v21 + 8 * v81), v41);
        if (v6)
        {
        }

        if (v81 < v4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1001D99BC(v9);
        }

        if (v80 >= v9[2])
        {
          goto LABEL_115;
        }

        v82 = &v9[2 * v80];
        v82[4] = v4;
        v82[5] = v81;
        v99 = v9;
        result = sub_1001D9930(v42);
        v9 = v99;
        v4 = v99[2];
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[2 * v4 + 4];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_116;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_117;
      }

      v54 = &v9[2 * v4];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_119;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_122;
      }

      if (v58 >= v50)
      {
        v76 = &v9[2 * v42 + 4];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_126;
        }

        if (v45 < v79)
        {
          v42 = v4 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v7 = v21[1];
    v8 = v96;
    if (v96 >= v7)
    {
      goto LABEL_101;
    }
  }

  v87 = v6;
  v88 = v9;
  v30 = *v21;
  v31 = *v21 + 8 * v11 - 8;
  v91 = v10;
  v32 = &v10[-v11];
  v94 = v29;
LABEL_40:
  v95 = v11;
  v33 = v32;
  v34 = v31;
  while (1)
  {

    dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
    dispatch thunk of DKProbabilityValue.variable.getter();

    v35 = v98;
    v4 = dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
    dispatch thunk of DKProbabilityValue.variable.getter();

    if (v35 < 1 || v97 > 0 && v35 >= v97)
    {
LABEL_39:
      v11 = v95 + 1;
      v31 += 8;
      --v32;
      if ((v95 + 1) != v94)
      {
        goto LABEL_40;
      }

      v11 = v94;
      v6 = v87;
      v9 = v88;
      v21 = a3;
      v10 = v91;
      goto LABEL_49;
    }

    if (!v30)
    {
      break;
    }

    v36 = *v34;
    *v34 = v34[1];
    v34[1] = v36;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_1001CB690(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_122:
    v18 = *v104;
    if (!*v104)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_124:
      v94 = v8[2];
      if (v94 >= 2)
      {
        v95 = a3;
        while (1)
        {
          v96 = *v95;
          if (!v96)
          {
            goto LABEL_159;
          }

          v97 = v8[2 * v94];
          v98 = v8[2 * v94 + 3];
          sub_1001CC124((v96 + 8 * v97), (v96 + 8 * v8[2 * v94 + 2]), (v96 + 8 * v98), v18);
          if (v5)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_148;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1001D99BC(v8);
          }

          if (v94 - 2 >= v8[2])
          {
            goto LABEL_149;
          }

          v99 = &v8[2 * v94];
          *v99 = v97;
          v99[1] = v98;
          result = sub_1001D9930(v94 - 1);
          v94 = v8[2];
          v95 = a3;
          if (v94 <= 1)
          {
          }
        }
      }
    }

LABEL_155:
    result = sub_1001D99BC(v8);
    v8 = result;
    goto LABEL_124;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v107 = v8;
    if (v7 + 1 >= v6)
    {
      v18 = a3;
      goto LABEL_43;
    }

    v11 = *a3;
    v102 = v7;

    v12 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v14 = (v13 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v12;
    v15 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v17 = v16;

    if (v17)
    {
      if (v14 <= 0)
      {
        goto LABEL_16;
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v8 = v107;
    }

    else
    {
      if (v14 <= 0)
      {
LABEL_16:
        v109 = 0;
        v8 = v107;
        goto LABEL_17;
      }

      v8 = v107;
      if (v15 < 1)
      {
        v19 = 1;
        goto LABEL_15;
      }
    }

    v19 = v14 < v15;
LABEL_15:
    v109 = v19;
LABEL_17:
    v9 = v102;
    v10 = v102 + 2;
    if (v102 + 2 < v6)
    {
      v20 = v11 + 8 * v102 + 16;
      while (1)
      {

        v21 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
        v23 = (v22 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v21;
        v24 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
        v26 = v25;

        if (v26)
        {
          break;
        }

        v8 = v107;
        if (v23 <= 0)
        {
          goto LABEL_19;
        }

        if (v24 > 0)
        {
          goto LABEL_29;
        }

        if (!v109)
        {
          v18 = a3;
          v9 = v102;
          goto LABEL_43;
        }

LABEL_20:
        ++v10;
        v20 += 8;
        if (v6 == v10)
        {
          v10 = v6;
LABEL_34:
          v9 = v102;
          goto LABEL_35;
        }
      }

      v8 = v107;
      if (v23 > 0)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_29:
        if (((v109 ^ (v23 >= v24)) & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }

LABEL_19:
      if (v109)
      {
        v18 = a3;
        v9 = v102;
        if (v10 < v102)
        {
          goto LABEL_152;
        }

        goto LABEL_37;
      }

      goto LABEL_20;
    }

LABEL_35:
    v18 = a3;
    if (v109)
    {
      if (v10 < v9)
      {
        goto LABEL_152;
      }

LABEL_37:
      if (v9 < v10)
      {
        v27 = 8 * v10 - 8;
        v28 = 8 * v9;
        v29 = v10;
        v30 = v9;
        do
        {
          if (v30 != --v29)
          {
            v31 = *v18;
            if (!*v18)
            {
              goto LABEL_158;
            }

            v32 = *(v31 + v28);
            *(v31 + v28) = *(v31 + v27);
            *(v31 + v27) = v32;
          }

          ++v30;
          v27 -= 8;
          v28 += 8;
        }

        while (v30 < v29);
      }
    }

LABEL_43:
    v33 = v18[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_151;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_68:
    if (v10 < v9)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100102974(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v48 = v8[2];
    v47 = v8[3];
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_100102974((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v49;
    v50 = &v8[2 * v48];
    v50[4] = v9;
    v50[5] = v10;
    v111 = v10;
    v51 = *v104;
    if (!*v104)
    {
      goto LABEL_160;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = v8[4];
          v54 = v8[5];
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_88:
          if (v56)
          {
            goto LABEL_139;
          }

          v69 = &v8[2 * v49];
          v71 = *v69;
          v70 = v69[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_142;
          }

          v75 = &v8[2 * v52 + 4];
          v77 = *v75;
          v76 = v75[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_146;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v79 = &v8[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_102:
        if (v74)
        {
          goto LABEL_141;
        }

        v82 = &v8[2 * v52];
        v84 = v82[4];
        v83 = v82[5];
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_144;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_109:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v18)
        {
          goto LABEL_157;
        }

        v91 = v8[2 * v90 + 4];
        v92 = v8[2 * v52 + 5];
        sub_1001CC124((*v18 + 8 * v91), (*v18 + 8 * v8[2 * v52 + 4]), (*v18 + 8 * v92), v51);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001D99BC(v8);
        }

        if (v90 >= v8[2])
        {
          goto LABEL_136;
        }

        v93 = &v8[2 * v90];
        v93[4] = v91;
        v93[5] = v92;
        result = sub_1001D9930(v52);
        v49 = v8[2];
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[2 * v49 + 4];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_137;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_138;
      }

      v64 = &v8[2 * v49];
      v66 = *v64;
      v65 = v64[1];
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_140;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_143;
      }

      if (v68 >= v60)
      {
        v86 = &v8[2 * v52 + 4];
        v88 = *v86;
        v87 = v86[1];
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_147;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v6 = v18[1];
    v7 = v111;
    if (v111 >= v6)
    {
      goto LABEL_122;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_153;
  }

  if (v34 >= v33)
  {
    v34 = v18[1];
  }

  if (v34 < v9)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v10 == v34)
  {
    goto LABEL_68;
  }

  v100 = v5;
  v35 = *v18;
  v36 = (v35 + 8 * v10 - 8);
  v103 = v9;
  v37 = v9 - v10;
  v106 = v34;
LABEL_53:
  v108 = v36;
  v110 = v10;
  v38 = v37;
  while (1)
  {

    v39 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    if (v40)
    {
      v41 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    v42 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      if (v41 > 0 && (v42 < 1 || v41 < v42))
      {
        goto LABEL_63;
      }

LABEL_52:
      ++v10;
      v36 = v108 + 1;
      --v37;
      if (v110 + 1 == v106)
      {
        v10 = v106;
        v5 = v100;
        v18 = a3;
        v8 = v107;
        v9 = v103;
        goto LABEL_68;
      }

      goto LABEL_53;
    }

    if ((v41 - 1) >= 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_52;
    }

LABEL_63:
    if (!v35)
    {
      break;
    }

    v45 = *v36;
    *v36 = v36[1];
    v36[1] = v45;
    --v36;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_1001CBDE4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_44;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v27 >= 1 && (v26 <= 0 || v27 < v26))
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v15 = v4;
        v16 = v7 == v4;
        v4 += 8;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      *v7 = *v15;
LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_29:
    v24 = v6;
    v17 = v6 - 8;
    v18 = v5;
    v19 = v14;
    do
    {
      v25 = v14;
      v20 = v4;
      v19 -= 8;
      v21 = v17;

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v27 <= 0)
      {
        v5 = v18 - 8;
      }

      else
      {
        v5 = v18 - 8;
        if (v26 < 1 || v27 < v26)
        {
          v22 = v21;
          if (v18 != v24)
          {
            *v5 = *v21;
          }

          v4 = v20;
          v14 = v25;
          if (v25 <= v4 || (v6 = v22, v22 <= v7))
          {
            v6 = v22;
            goto LABEL_44;
          }

          goto LABEL_29;
        }
      }

      v17 = v21;
      v4 = v20;
      if (v25 != v18)
      {
        *v5 = *v19;
      }

      v14 = v19;
      v18 = v5;
    }

    while (v19 > v4);
    v14 = v19;
    v6 = v24;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1001CC124(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v37 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v15 = v5;
      goto LABEL_52;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v18 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      if (v19)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      v21 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v23 = v22;

      if (v23)
      {
        if ((v20 - 1) < 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_24;
        }
      }

      else if (v20 > 0 && (v21 < 1 || v20 < v21))
      {
LABEL_24:
        v16 = v12;
        v17 = v5 == v12;
        v12 += 8;
        if (v17)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v5 = *v16;
        goto LABEL_13;
      }

      v16 = v14;
      v17 = v5 == v14;
      v14 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 8;
      if (v14 >= v37)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = a4;
  if (a4 != a2 || &a2[8 * v11] <= a4)
  {
    v24 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v24;
  }

  v15 = a2;
  v37 = &v14[8 * v11];
  if (v9 >= 8 && a2 > v5)
  {
    v36 = v14;
LABEL_33:
    __dst = v15;
    v25 = v15 - 8;
    v4 -= 8;
    v26 = v37;
    do
    {
      v26 -= 8;
      v27 = v25;

      v28 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      if (v29)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      v31 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v33 = v32;

      if (v33)
      {
        if ((v30 - 1) < 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_46;
        }
      }

      else if (v30 > 0 && (v31 < 1 || v30 < v31))
      {
LABEL_46:
        if (v4 + 8 != __dst)
        {
          *v4 = *v27;
        }

        v14 = v36;
        if (v37 <= v36 || (v15 = v27, v27 <= v5))
        {
          v15 = v27;
          goto LABEL_52;
        }

        goto LABEL_33;
      }

      if (v4 + 8 != v37)
      {
        *v4 = *v26;
      }

      v4 -= 8;
      v37 = v26;
      v14 = v36;
      v25 = v27;
    }

    while (v26 > v36);
    v37 = v26;
    v15 = __dst;
  }

LABEL_52:
  if (v15 != v14 || v15 >= &v14[(v37 - v14 + (v37 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v15, v14, 8 * ((v37 - v14) / 8));
  }

  return 1;
}

uint64_t sub_1001CC454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v28 = v14;
  v15 = sub_10016D5D4(a3);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v16;
  if (v14[3] < v20)
  {
    sub_1001E7280(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_10016D5D4(a3);
    if ((v4 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = v15;
    sub_1001EEB6C();
    v15 = v25;
    v22 = v28;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = v15;
    (*(v10 + 16))(v12, a3, v9);
    sub_1001ED81C(v26, v12, a1, a2, v22);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  v22 = v28;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v23 = (v22[7] + 16 * v15);
  result = *v23;
  *v23 = a1;
  v23[1] = a2;
LABEL_11:
  *v5 = v22;
  return result;
}

id *sub_1001CC618(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3((v9 + 4), v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001CC6BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000E4D54(&qword_1002ABF90, &qword_1002ABF88, &qword_10023F790, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100095274(&qword_1002ABF88, &qword_10023F790);
            v9 = sub_1001CCA04(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DKPersonTrackerState();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CC860(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000E4D54(&qword_1002ABF80, &qword_1002ABF78, &qword_10023F788, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100095274(&qword_1002ABF78, &qword_10023F788);
            v9 = sub_1001CCA84(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TrackedSubjectInternal();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1001CCA04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1001CF398;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1001CCA84(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1001CCB04;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CCB0C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001CCC00;

  return v5(v2 + 32);
}

uint64_t sub_1001CCC00()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001CCD14(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a2;
  v59 = a4;
  v51 = a1;
  v58 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v5 = __chkstk_darwin(v58);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v49 - v8;
  v65 = type metadata accessor for UUID();
  result = __chkstk_darwin(v65);
  v64 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v61 = v7;
  v62 = a3;
  v13 = *(a3 + 64);
  v54 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v52 = 0;
  v53 = (v14 + 63) >> 6;
  v56 = v10 + 16;
  v57 = v10;
  v60 = (v10 + 8);
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v63 = (v16 - 1) & v16;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = v62;
    v24 = *(v57 + 16);
    v26 = v64;
    v25 = v65;
    v24(v64, v62[6] + *(v57 + 72) * v22, v65);
    v27 = v23[7];
    v55 = v22;
    v28 = (v27 + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    v31 = v66;
    v24(v66, v26, v25);
    v32 = v58;
    v33 = (v31 + *(v58 + 48));
    *v33 = v29;
    v33[1] = v30;
    sub_1000B5150(v31, v7, &qword_1002ABEF8, &qword_10023F728);
    v34 = &v7[*(v32 + 48)];
    v36 = *v34;
    v35 = *(v34 + 1);
    swift_bridgeObjectRetain_n();
    v37 = [v59 uniqueIDOverride];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v36 == v39 && v35 == v41)
      {

        sub_100095C84(v66, &qword_1002ABEF8, &qword_10023F728);
        v7 = v61;
        v17 = *v60;
        v18 = v65;
        (*v60)(v61, v65);

        result = (v17)(v64, v18);
        v16 = v63;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100095C84(v66, &qword_1002ABEF8, &qword_10023F728);
        v7 = v61;
        v44 = *v60;
        v45 = v65;
        (*v60)(v61, v65);

        result = (v44)(v64, v45);
        v16 = v63;
        if ((v43 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      sub_100095C84(v66, &qword_1002ABEF8, &qword_10023F728);
      v7 = v61;
      v46 = *v60;
      v47 = v65;
      (*v60)(v61, v65);

      result = (v46)(v64, v47);
      v16 = v63;
LABEL_20:
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
        return sub_1001CA7BC(v51, v50, v52, v62);
      }
    }
  }

  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v53)
    {
      return sub_1001CA7BC(v51, v50, v52, v62);
    }

    v21 = *(v54 + 8 * v12);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v63 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CD178(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v11 = sub_1001CA12C(v13, v6, a1, v14);

      return v11;
    }
  }

  __chkstk_darwin(v8);
  bzero(&v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_1001CCD14((&v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1001CD324(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  v46 = a4;
  v37 = a1;
  v45 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  __chkstk_darwin(v45);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UUID();
  result = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v47 = a3;
  v15 = *(a3 + 64);
  v38 = 0;
  v39 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v42 = v11 + 16;
  v43 = v11;
  v41 = (v11 + 8);
  v44 = a5;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v14 << 6);
    v24 = v47;
    v25 = *(v43 + 16);
    v25(v13, v47[6] + *(v43 + 72) * v23, v9);
    v26 = v24[7];
    v40 = v23;
    v27 = (v26 + 16 * v23);
    v29 = *v27;
    v28 = v27[1];
    v25(v8, v13, v9);
    v30 = v46;
    v31 = &v8[*(v45 + 48)];
    *v31 = v29;
    *(v31 + 1) = v28;
    if (v29 == v30 && v28 == v44)
    {

      sub_100095C84(v8, &qword_1002ABEF8, &qword_10023F728);
      result = (*v41)(v13, v9);
      v18 = v48;
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100095C84(v8, &qword_1002ABEF8, &qword_10023F728);
      result = (*v41)(v13, v9);
      v18 = v48;
      if ((v33 & 1) == 0)
      {
        *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_1001CA7BC(v37, v36, v38, v47);
        }
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

    if (v14 >= v19)
    {
      return sub_1001CA7BC(v37, v36, v38, v47);
    }

    v22 = *(v39 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v48 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CD650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1001CA1C4(v14, v9, a1, a2, a3);

      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_1001CD324((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_1001CD81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CD8BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CD8FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A139C;

  return sub_1001C7FA8(a1, v4, v5, v6);
}

void sub_1001CD9B0(uint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_48;
  }

LABEL_2:
  v14 = qword_1002B1CF0;
  v57 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v15 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  swift_beginAccess();
  v58 = v14;
  v17 = *(v14 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v59 = 0;
  v63 = v17;
LABEL_5:
  if (v21)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_2;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
LABEL_10:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = v25 | (v23 << 6);
      v27 = (*(v17 + 48) + 16 * v26);
      v28 = *(*(v17 + 56) + 8 * v26);
      v29 = *v27 == a1 && v27[1] == a2;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v28 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
          if (v30)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
LABEL_19:

            v31 = 0;
            v61 = v30;
            v62 = a1;
            while (1)
            {
              if ((v28 & 0xC000000000000001) != 0)
              {
                v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_47;
                }

                v32 = *(v28 + 8 * v31 + 32);
              }

              v33 = v32;
              v34 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_46;
              }

              v35 = [v32 remoteObjectProxy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_100095274(&qword_1002A9310, &qword_10023DE70);
              if ((swift_dynamicCast() & 1) == 0)
              {
                break;
              }

              v36 = v66;
              if (!v66)
              {
                goto LABEL_34;
              }

              v37 = qword_1002A6790;
              swift_unknownObjectRetain();
              if (v37 != -1)
              {
                swift_once();
              }

              v38 = type metadata accessor for Logger();
              sub_100093DE8(v38, qword_1002ABE48);

              oslog = Logger.logObject.getter();
              v39 = static os_log_type_t.default.getter();

              v53 = v39;
              if (os_log_type_enabled(oslog, v39))
              {
                v40 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                *v40 = 136315394;
                *(v40 + 4) = sub_1000952D4(a8, a9, &v64);
                *(v40 + 12) = 2080;
                *v65 = a3;
                *&v65[1] = a4;
                *&v65[2] = a5;
                *&v65[3] = a6;
                type metadata accessor for CGRect(0);
                v41 = String.init<A>(describing:)();
                v52 = sub_1000952D4(v41, v42, &v64);

                *(v40 + 14) = v52;
                _os_log_impl(&_mh_execute_header, oslog, v53, "Notifying client that %s just set subject ROI to %s", v40, 0x16u);
                swift_arrayDestroy();
              }

              [v36 setRectOfInterestEventWithRect:{a3, a4, a5, a6}];
              swift_unknownObjectRelease();

              if (__OFADD__(v59++, 1))
              {
                __break(1u);
                return;
              }

              swift_unknownObjectRelease();
              v31 = v34;
LABEL_35:
              a1 = v62;
              v29 = v34 == v61;
              v17 = v63;
              if (v29)
              {

                goto LABEL_5;
              }
            }

            v66 = 0;
LABEL_34:

            swift_unknownObjectRelease();
            ++v31;
            goto LABEL_35;
          }
        }
      }

      goto LABEL_5;
    }
  }

  v44 = *(v58 + v57);

  os_unfair_lock_unlock(v44 + 4);

  if (!v59)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100093DE8(v45, qword_1002ABE48);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v65[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1000952D4(a1, a2, v65);
      _os_log_impl(&_mh_execute_header, v46, v47, "No clients registered for config changes on %s", v48, 0xCu);
      sub_100095808(v49);
    }

    v50 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, enum case for DockKitIDSMessagingError.unrecognizedClient(_:), v50);
    swift_willThrow();
  }
}

uint64_t sub_1001CE048()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CE08C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CE0A4()
{
  v1 = type metadata accessor for TrajectoryCommand();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001CE170(uint64_t a1)
{
  v4 = *(type metadata accessor for TrajectoryCommand() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009862C;

  return sub_1001C8FBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001CE27C(void *a1, unint64_t a2, void (*a3)(uint64_t *))
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_43;
  }

LABEL_2:
  v4 = qword_1002B1CF0;
  v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  swift_beginAccess();
  v37 = v4;
  v7 = *(v4 + v6);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v39 = 0;
  v40 = v7;
  v41 = a1;
LABEL_5:
  v14 = a2;
LABEL_6:
  if (v11)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_2;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
LABEL_11:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v13 << 6);
      v18 = *(v7 + 48) + 16 * v17;
      v19 = *(*(v7 + 56) + 8 * v17);
      v20 = *v18 == a1 && *(v18 + 8) == a2;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v19 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          if (v21)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
LABEL_20:

            v14 = 0;
            while (1)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v14 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_42;
                }

                v22 = *(v19 + 8 * v14 + 32);
              }

              a1 = v22;
              v23 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_41;
              }

              v24 = [v22 remoteObjectProxy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_100095274(&qword_1002A9310, &qword_10023DE70);
              if ((swift_dynamicCast() & 1) == 0)
              {
                break;
              }

              if (!v43)
              {
                goto LABEL_22;
              }

              v42[0] = v43;
              swift_unknownObjectRetain();
              a3(v42);

              swift_unknownObjectRelease();
              if (__OFADD__(v39, 1))
              {
                __break(1u);
                goto LABEL_45;
              }

              ++v39;
LABEL_23:
              swift_unknownObjectRelease();
              ++v14;
              v7 = v40;
              a1 = v41;
              if (v23 == v21)
              {

                goto LABEL_5;
              }
            }

            v43 = 0;
LABEL_22:

            goto LABEL_23;
          }
        }
      }

      goto LABEL_6;
    }
  }

  v25 = *(v37 + v36);

  os_unfair_lock_unlock(v25 + 4);

  if (!v39)
  {
    if (qword_1002A6790 != -1)
    {
LABEL_45:
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100093DE8(v27, qword_1002ABE48);

    v28 = Logger.logObject.getter();
    v29 = v14;
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000952D4(a1, v29, v42);
      _os_log_impl(&_mh_execute_header, v28, v30, "No clients registered for config changes on %s", v31, 0xCu);
      sub_100095808(v32);
    }

    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for DockKitIDSMessagingError.unrecognizedClient(_:), v33);
    return swift_willThrow();
  }

  return result;
}