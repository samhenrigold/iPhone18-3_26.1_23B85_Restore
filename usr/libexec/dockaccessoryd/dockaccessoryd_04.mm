void *sub_1000D3304(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DockStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = v5;
    v40 = v3;
    v11 = v2;
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v14 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v15 = *&v13[v14];

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_100187174(v17, v19);

    v2 = v11;
    v3 = v40;
    v5 = v39;
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    (*(v7 + 104))(v9, enum case for DockStatus.Undocked(_:), v6);
    v22 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v7 + 40))(&v21[v22], v9, v6);
    swift_endAccess();
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = *(v23 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v26 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    v27 = v41;
    swift_beginAccess();
    (*(v7 + 16))(v9, v27 + v26, v6);
    DockDetector.newStatus(_:monitorJarvisCallback:)(v9, 0, 0);

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = *(v28 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer);
    v30 = v28;
    v31 = v29;

    if (v29)
    {
      dispatch thunk of RepeatingTimer.cancel()();
    }
  }

  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = *&v32[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer];
    *&v32[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = result;
    (*(v3 + 16))(v5, result + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v2);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No core motion update received, timing out.", v38, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_1000D37E4(objc_class *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v74 = a7;
  v77 = a6;
  v76 = a5;
  v75 = a4;
  v72 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DockStatus();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer);
    v18 = Strong;
    v19 = v17;

    if (v17)
    {
      dispatch thunk of RepeatingTimer.cancel()();
    }
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = *&v20[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer];
    *&v20[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = 0;
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v78 = v15;
    v23 = v12;
    v24 = v13;
    v25 = a1;
    v26 = a3;
    v27 = v22;
    v28 = *(v22 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v29 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v30 = *&v28[v29];

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v31 = [v30 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    sub_100187174(v32, v34);

    a3 = v26;
    a1 = v25;
    v13 = v24;
    v12 = v23;
    v15 = v78;
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35 && (v36 = v35, v37 = *(v35 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector), v36, v38 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator, swift_beginAccess(), v39 = *&v37[v38], v37, v80.value.super.super.isa = a1, LOBYTE(v37) = MotionValidator.isPositionValid(deviceMotion:)(v80), v39, (v37 & 1) != 0))
  {
    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v41 = v40;
      v42 = v74;
      if (v74)
      {
        v43 = v73;

        v44 = v77;
        v45 = sub_1000CF088(v75, v76, v77, v42, v43);
        sub_1000BAA84(v42, v43);
        if (v45)
        {
LABEL_15:

          return;
        }
      }

      else
      {
        v53 = swift_allocObject();
        v44 = v77;
        *(v53 + 16) = v41;
        *(v53 + 24) = v44;
        *(v53 + 32) = 2;
        v54 = v41;
        v55 = v44;
        v56 = sub_1000CF088(v75, v76, v55, &unk_10023C9E8, v53);

        if (v56)
        {
          goto LABEL_15;
        }
      }

      v57 = *&v41[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v58 = swift_allocObject();
      *(v58 + 16) = v41;
      *(v58 + 24) = v44;
      aBlock[4] = sub_1000E44EC;
      aBlock[5] = v58;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100276B08;
      v59 = _Block_copy(aBlock);
      v60 = v41;
      v61 = v44;
      v62 = v57;
      v63 = v67;
      static DispatchQoS.unspecified.getter();
      aBlock[6] = _swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
      v64 = v69;
      v65 = v72;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v59);

      (*(v71 + 8))(v64, v65);
      (*(v68 + 8))(v63, v70);
    }
  }

  else
  {
    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      (*(v13 + 104))(v15, enum case for DockStatus.Undocked(_:), v12);
      v48 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
      swift_beginAccess();
      (*(v13 + 40))(&v47[v48], v15, v12);
      swift_endAccess();
    }

    swift_beginAccess();
    v49 = swift_unknownObjectWeakLoadStrong();
    if (v49)
    {
      v50 = v49;
      v51 = *(v49 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

      v52 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
      swift_beginAccess();
      (*(v13 + 16))(v15, a3 + v52, v12);
      DockDetector.newStatus(_:monitorJarvisCallback:)(v15, 0, 0);

      (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_1000D4030(void *a1, uint64_t a2, char *a3, void *a4, _OWORD *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v59 = a5;
  v58 = a4;
  v60 = a1;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v62 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v54 = a6;
    v55 = a7;
    v56 = a8;
    v57 = v17;
    v20 = v16;
    v21 = v13;
    v22 = v14;
    v23 = Strong;
    v24 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v25 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v26 = *&v24[v25];

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    sub_100187174(v28, v30);

    v14 = v22;
    v13 = v21;
    v16 = v20;
    v17 = v57;
    a8 = v56;
    a7 = v55;
    a6 = v54;
  }

  v61 = v16;
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31 && (v32 = v31, v33 = *(v31 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector), v32, v34 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator, swift_beginAccess(), v35 = *&v33[v34], v33, v71.value.super.super.isa = v60, LOBYTE(v33) = MotionValidator.isPositionValid(deviceMotion:)(v71), v35, (v33 & 1) != 0))
  {
    v60 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v36 = swift_allocObject();
    v37 = v58;
    *(v36 + 16) = a2;
    *(v36 + 24) = v37;
    v38 = v59;
    v39 = v59[1];
    *(v36 + 32) = *v59;
    *(v36 + 48) = v39;
    *(v36 + 64) = *(v38 + 32);
    *(v36 + 80) = a6;
    *(v36 + 88) = a7;
    *(v36 + 96) = a8;
    v69 = sub_1000E45B4;
    v70 = v36;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_100147FC8;
    v68 = &unk_100276BF8;
    v40 = _Block_copy(&aBlock);

    v41 = v60;
    v42 = v37;
    sub_1000E4390(v38, v64);
    v43 = a6;
    sub_1000C6F30(a7, a8);
    v44 = v62;
    static DispatchQoS.unspecified.getter();
    v64[0] = _swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
    v45 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v14 + 8))(v45, v13);
  }

  else
  {
    v46 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v47 = swift_allocObject();
    *(v47 + 16) = a2;
    *(v47 + 24) = a3;
    v69 = sub_1000E4544;
    v70 = v47;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_100147FC8;
    v68 = &unk_100276BA8;
    v48 = _Block_copy(&aBlock);
    v49 = v46;

    v50 = a3;
    v44 = v62;
    static DispatchQoS.unspecified.getter();
    v64[0] = _swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
    v51 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v14 + 8))(v51, v13);
  }

  (*(v17 + 8))(v44, v61);
}

char *sub_1000D471C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DockStatus();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 104))(v6, enum case for DockStatus.Undocked(_:), v3);
    v9 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v4 + 40))(&v8[v9], v6, v3);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *&result[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];

    v13 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v4 + 16))(v6, a2 + v13, v3);
    DockDetector.newStatus(_:monitorJarvisCallback:)(v6, 0, 0);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1000D4910(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v29 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a5)
    {

      v19 = sub_1000CF088(a2, a3, a4, a5, a6);
      sub_1000BAA84(a5, a6);
      if (v19)
      {
LABEL_4:

        return;
      }
    }

    else
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = a4;
      *(v20 + 32) = 2;
      v18;
      v21 = sub_1000CF088(a2, a3, a4, &unk_10023C9F0, v20);

      if (v21)
      {
        goto LABEL_4;
      }
    }

    v22 = *&v18[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    *(v23 + 24) = a4;
    aBlock[4] = sub_1000E4E18;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100276C70;
    v24 = _Block_copy(aBlock);
    v28 = v18;
    v25 = a4;
    v26 = v22;
    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v30 + 8))(v13, v11);
    (*(v29 + 8))(v16, v14);
  }
}

uint64_t sub_1000D4CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return (_swift_task_switch)(sub_1000D4D14, 0, 0);
}

uint64_t sub_1000D4D14()
{
  sub_1000D4D7C(*(v0 + 16), *(v0 + 40), *(v0 + 48), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000D4D7C(void *a1, void *a2, int a3, uint64_t a4)
{
  v5 = v4;
  v69 = a3;
  v71 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  __chkstk_darwin(v15 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v24 = &v60 - v20;
  if (a4)
  {
    v25 = v22;
    v26 = v21;
    (*(v22 + 16))(&v60 - v20, &v5[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v21);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed discovering paired acessory %@", v29, 0xCu);
      sub_100095C84(v30, &unk_1002A6F60, &unk_10023C4E0);
    }

    else
    {
    }

    (*(v25 + 8))(v24, v26);
    return;
  }

  v63 = v14;
  v64 = v12;
  v65 = v10;
  v66 = v11;
  v62 = v8;
  if (!a1)
  {
    return;
  }

  v32 = v23;
  v33 = v22;
  v34 = v21;
  v61 = v5;
  v68 = a1;
  v67 = sub_10013EC8C();
  if (v35 >> 60 != 15)
  {
    v36 = v35;
    v37 = v67;
    sub_1000A0CD8(v67, v35);
    sub_1001B1B24(v37, v36, &v74);
    v38 = v75;
    if (v75)
    {
      v39 = v76;
      v40 = v74;
      DockCoreInfo.identifier.getter();
      v41 = sub_1001408A0(v17);
      v43 = v42;
      v44 = sub_1001B1EB4(v41, v42, v40, v38, v39);
      sub_1000A0D2C(v41, v43);
      if (v44)
      {
        v45 = v61;
        v46 = *&v61[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
        v47 = swift_allocObject();
        v48 = v71;
        *(v47 + 16) = v45;
        *(v47 + 24) = v48;
        *(v47 + 32) = v69;
        aBlock[4] = sub_1000E4518;
        aBlock[5] = v47;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100147FC8;
        aBlock[3] = &unk_100276B58;
        v49 = _Block_copy(aBlock);
        v50 = v46;
        v51 = v45;
        v52 = v48;
        v53 = v63;
        static DispatchQoS.unspecified.getter();
        v72 = _swiftEmptyArrayStorage;
        sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
        v54 = v65;
        v55 = v62;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v49);
        sub_100095C84(&v74, &unk_1002A7AA0, &unk_10023C978);
        sub_1000A452C(v67, v36);
        (*(v70 + 8))(v54, v55);
        (*(v64 + 8))(v53, v66);
      }

      else
      {
        (*(v33 + 16))(v32, &v61[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v34);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "Failed dicovering paired accessory with unique identiier", v59, 2u);

          sub_100095C84(&v74, &unk_1002A7AA0, &unk_10023C978);
          sub_1000A452C(v67, v36);
        }

        else
        {
          sub_1000A452C(v67, v36);

          sub_100095C84(&v74, &unk_1002A7AA0, &unk_10023C978);
        }

        (*(v33 + 8))(v32, v34);
      }

      return;
    }

    sub_1000A452C(v67, v36);
  }

  v56 = v68;
}

uint64_t sub_1000D54FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Timing out prox card!", v10, 2u);
  }

  result = (*(v5 + 8))(v7, v4);
  v12 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
  v13 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken);
    if (!v14)
    {
      return result;
    }

    v15 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v16 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);

    sub_1000A0CD8(v15, v16);
    v17 = sub_10014025C(v15, v16);
    v19 = v18;
    sub_1000A0D2C(v15, v16);
    sub_1000B346C();
    v20 = swift_allocError();
    *v21 = 4;
    v22 = sub_1001F29A8(_swiftEmptyArrayStorage);
    if (*(v3 + v12))
    {
      *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 0;
      v23 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
      sub_100156798(v17, v19, 6, v22, v20);
    }

    else
    {
    }
  }

  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
  {

    sub_1000F2E4C(4);
  }

  return sub_1000E4E98();
}

uint64_t sub_1000D57F0()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  result = __chkstk_darwin(v10);
  v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
  v16 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard];
  if (!v16)
  {
    goto LABEL_76;
  }

  v102 = v6;
  v17 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken);
  if (!v17)
  {
    return result;
  }

  if (v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] > 2u || v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState])
  {
    v99 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState;
    v98 = &v90 - v12;
    v92 = v4;
    v93 = v3;
    v96 = v14;
    v94 = v13;
    v101 = result;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
    }

    v91 = v8;
    v97 = v15;
    v100 = v17;
    v19 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v20 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    sub_1000A0CD8(v19, v20);
    v21 = sub_10014025C(v19, v20);
    v23 = v22;
    sub_1000A0D2C(v19, v20);
    v24 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v25 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v26 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v95 = v2;
    v27 = *&v2[v26];
    v28 = *(v27 + 16);
    if (v28)
    {
      v90 = v24;
      v29 = v27 + 32;

      v30 = 0;
      while (v30 < *(v27 + 16))
      {
        sub_1000A097C(v29, v103);
        v31 = *(*sub_1000A09E0(v103, v103[3]) + 32);
        if (v31)
        {
          v32 = v31;
          v33 = [v32 identifier];
          if (v33)
          {
            v34 = v33;
            v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            if (v1 == v21 && v36 == v23)
            {

LABEL_28:

              v2 = v95;
              v39 = *&v95[v90];
              OS_dispatch_semaphore.signal()();

              sub_1000A097C(v103, &v104);
              sub_100095808(v103);
              goto LABEL_29;
            }

            v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v1)
            {
              goto LABEL_28;
            }
          }
        }

        ++v30;
        sub_100095808(v103);
        v29 += 40;
        if (v28 == v30)
        {

          v24 = v90;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_80;
    }

LABEL_23:
    v2 = v95;
    v38 = *&v95[v24];
    OS_dispatch_semaphore.signal()();

    v106 = 0;
    v104 = 0u;
    v105 = 0u;
LABEL_29:

    v15 = v97;
    v40 = v100;
    if (!*(&v105 + 1))
    {

      sub_100095C84(&v104, &unk_1002A6F40, &unk_10023BE90);
      goto LABEL_76;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = v103[0];
    v42 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    swift_beginAccess();

    v43 = 0;
    v44 = sub_1000E3E3C(&v2[v42], v40);

    v45 = *&v2[v42];
    if (v45 >> 62)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (v46 >= v44)
      {
LABEL_33:
        sub_1001A11BC(v44, v46);
        swift_endAccess();
        v47 = v99;
        v48 = v2[v99];
        if ((v48 - 2) >= 4)
        {
          if (v48 == 6)
          {
            v67 = v41[3];
            sub_1000CE0B8(v67);
          }

LABEL_76:
          v89 = *&v2[v15];
          *&v2[v15] = 0;

          v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          if (qword_1002A67A0 == -1)
          {
            return sub_1000E4E98();
          }

LABEL_80:
          swift_once();
          return sub_1000E4E98();
        }

        v49 = v91;
        v50 = *(v91 + 16);
        v93 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
        v51 = v98;
        v96 = v50;
        v50(v98, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v101);
        v43 = v2;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = v51;
          v102 = v41;
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *&v104 = v56;
          *v55 = 136315138;
          v57 = v2[v47];
          v58 = 0xE700000000000000;
          v59 = 0x676E6972696170;
          if (v57 != 5)
          {
            v59 = 0x72756769666E6F63;
            v58 = 0xEB00000000676E69;
          }

          v60 = 0x46676E6974696177;
          v61 = 0xEE0068747541726FLL;
          if (v57 != 3)
          {
            v60 = 0x7A69726F68747561;
            v61 = 0xEB00000000676E69;
          }

          if (v2[v47] <= 4u)
          {
            v59 = v60;
            v58 = v61;
          }

          v62 = 0x69746164696C6176;
          if (v57 == 1)
          {
            v62 = 0x6E69686372616573;
          }

          v63 = 0xE900000000000067;
          if (v57 != 1)
          {
            v63 = 0xEA0000000000676ELL;
          }

          if (!v2[v47])
          {
            v62 = 0x6972696150746F6ELL;
            v63 = 0xEA0000000000676ELL;
          }

          if (v2[v47] <= 2u)
          {
            v64 = v62;
          }

          else
          {
            v64 = v59;
          }

          if (v2[v47] <= 2u)
          {
            v65 = v63;
          }

          else
          {
            v65 = v58;
          }

          v66 = sub_1000952D4(v64, v65, &v104);

          *(v55 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v52, v53, "Prox card deactivated while in pairing attempt: %s", v55, 0xCu);
          sub_100095808(v56);

          v1 = *(v91 + 8);
          (v1)(v54, v101);
          v15 = v97;
          v41 = v102;
        }

        else
        {

          v1 = *(v49 + 8);
          (v1)(v51, v101);
        }

        if (qword_1002A67A0 == -1)
        {
          goto LABEL_59;
        }

        goto LABEL_83;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46 >= v44)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_83:
    swift_once();
LABEL_59:
    v68 = qword_1002B1EB8;
    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) == 2)
    {
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = 0;
      v70 = v68;
      sub_1001D5444(sub_1000E4DF8, v69);

      goto LABEL_76;
    }

    v71 = v41[4];
    if (v71)
    {
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v73 = v72;
        *&v104 = 0;
        v74 = v71;
        v75 = [v73 stopPairingWithError:&v104];
        v76 = v104;
        if (v75)
        {
          *(*&v43[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server] + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth) = 0;
          v77 = v76;
        }

        else
        {
          v102 = v41;
          v78 = v104;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v79 = v94;
          v96(v94, &v2[v93], v101);
          swift_errorRetain();
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v99 = v74;
            v83 = v82;
            v84 = swift_slowAlloc();
            *&v104 = v84;
            *v83 = 136315138;
            swift_getErrorValue();
            v85 = Error.localizedDescription.getter();
            v87 = sub_1000952D4(v85, v86, &v104);

            *(v83 + 4) = v87;
            _os_log_impl(&_mh_execute_header, v80, v81, "Unable to stop pairing: %s", v83, 0xCu);
            sub_100095808(v84);
            v2 = v95;

            v74 = v99;
          }

          else
          {
          }

          (v1)(v79, v101);
          v41 = v102;
        }

        v88 = [v73 connectReason];

        if (v88 == 7)
        {
          *(v41 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 2;
          *(v41 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer) = 1;
        }
      }

      else
      {
      }

      v15 = v97;
      goto LABEL_76;
    }

LABEL_66:

    goto LABEL_76;
  }
}

uint64_t sub_1000D6828(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  if (allowedForDockKit()())
  {
    if (sub_1000E2B14())
    {
      (*(v4 + 16))(v10, v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v3);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        v12 = v10;
        goto LABEL_14;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Ingoring URI request: device already connected or connecting over BLE", v15, 2u);
      v12 = v10;
    }

    else
    {
      if (!SBSGetScreenLockStatus())
      {
        return 1;
      }

      (*(v4 + 16))(v7, v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v3);
      v13 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v18))
      {
        v12 = v7;
        goto LABEL_14;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v18, "Ingoring URI request: cannot pair from lock screen", v19, 2u);
      v12 = v7;
    }

    goto LABEL_10;
  }

  (*(v4 + 16))(v12, v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v3);
  v13 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v13, v16, "Ingoring URI request: device not supported", v17, 2u);
LABEL_10:
  }

LABEL_14:

  (*(v4 + 8))(v12, v3);
  return 0;
}

uint64_t sub_1000D6B18(uint64_t a1)
{
  v2 = v1;
  v138 = type metadata accessor for DispatchWorkItemFlags();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for DispatchQoS();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v6 - 8);
  v126 = &v118 - v7;
  v125 = type metadata accessor for UUID();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v127 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Date();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v142 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v118 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v122 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v139 = &v118 - v21;
  v22 = __chkstk_darwin(v20);
  v121 = &v118 - v23;
  v24 = __chkstk_darwin(v22);
  v132 = &v118 - v25;
  v26 = __chkstk_darwin(v24);
  v123 = &v118 - v27;
  v28 = __chkstk_darwin(v26);
  v131 = &v118 - v29;
  __chkstk_darwin(v28);
  v31 = &v118 - v30;
  v32 = *(v17 + 16);
  v145 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
  v147 = v17 + 16;
  v146 = v32;
  v32(&v118 - v30, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v16);
  v33 = *(v11 + 16);
  v144 = a1;
  v141 = v11 + 16;
  v140 = v33;
  v33(v15, a1, v10);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v143 = v10;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v119 = v16;
    v38 = v10;
    v39 = v37;
    v40 = swift_slowAlloc();
    v120 = v2;
    v41 = v40;
    *&v154 = v40;
    *v39 = 136315138;
    v42 = URL.absoluteString.getter();
    v118 = v17;
    v44 = v43;
    (*(v11 + 8))(v15, v38);
    v45 = sub_1000952D4(v42, v44, &v154);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v34, v35, "Got URI request: %s", v39, 0xCu);
    sub_100095808(v41);
    v2 = v120;

    v46 = *(v118 + 8);
    v47 = v119;
    v48 = v46(v31, v119);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
    v46 = *(v17 + 8);
    v48 = v46(v31, v16);
    v47 = v16;
  }

  result = sub_1000D6828(v48, v49);
  if ((result & 1) == 0)
  {
    return result;
  }

  v51 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState;
  if (v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] <= 2u && !v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState])
  {

    goto LABEL_9;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v52)
  {
LABEL_9:
    v53 = v142;
    v140(v142, v144, v143);
    result = sub_1000A2C54(v53, &v150);
    if (BYTE8(v151) != 2)
    {
      v154 = v150;
      v155 = v151;
      v156 = v152;
      v157 = v153;
      v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan] = 1;
      type metadata accessor for AccessoryPairingToken(0);
      v54 = swift_allocObject();
      *(v54 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) = 0;
      *(v54 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_inUse) = 0;
      v55 = v54 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
      *(v55 + 48) = v157;
      v56 = v156;
      *(v55 + 16) = v155;
      *(v55 + 32) = v56;
      *v55 = v154;
      sub_1000E3C64(&v154, aBlock);
      UUID.init()();
      v57 = v128;
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v59 = v58;
      (*(v129 + 8))(v57, v130);
      v144 = v54;
      *(v54 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_timestamp) = v59;
      v60 = *(&v156 + 1);
      v143 = v156;
      v61 = sub_10014025C(v156, *(&v156 + 1));
      v63 = sub_100140998(v61, v62);
      if (v64 >> 60 == 15)
      {
        v65 = v124;
        v66 = v126;
        v67 = v125;
        (*(v124 + 56))(v126, 1, 1, v125);
        UUID.init()();
        if ((*(v65 + 48))(v66, 1, v67) != 1)
        {
          sub_100095C84(v66, &qword_1002A7AF0, &qword_10023C9D0);
        }
      }

      else
      {
        v72 = v126;
        v73 = v63;
        v74 = v64;
        sub_1001404A0(v63, v64, v126);
        sub_1000A452C(v73, v74);
        v75 = v124;
        v76 = v125;
        (*(v124 + 56))(v72, 0, 1, v125);
        (*(v75 + 32))(v127, v72, v76);
      }

      v77 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
      v78 = DockCoreInfo.init(type:name:identifier:)();
      v79 = v131;
      v146(v131, &v2[v145], v47);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v142 = v46;
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Popping remote alert", v82, 2u);
        v46 = v142;
      }

      v46(v79, v47);
      sub_10014025C(v143, v60);

      sub_1001F29A8(_swiftEmptyArrayStorage);

      v84 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
      if (*&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
      {
        v2[v51] = 1;
      }

      v85 = objc_allocWithZone(type metadata accessor for DKProxManager(0, v83));
      v86 = v144;

      v87 = v78;
      v88 = v2;
      v89 = sub_1000EFAB4(v86, v87, 0, v88, v85);

      v143 = v87;

      v90 = *&v2[v84];
      *&v2[v84] = v89;

      sub_1000D7DEC(v86);
      v91 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics;
      v92 = v2;
      v93 = v132;
      if (*&v88[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics])
      {
        goto LABEL_25;
      }

      v94 = v2;
      v95 = v123;
      v146(v123, &v92[v145], v47);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Initializing haptics", v98, 2u);
        v95 = v123;
      }

      v46(v95, v47);
      type metadata accessor for DKHaptics(0, v99);
      v100 = swift_allocObject();
      *&v88[v91] = sub_1001B0840(v100, v101);

      v92 = v94;
      if (*&v88[v91])
      {
LABEL_25:
        v146(v93, &v92[v145], v47);

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&_mh_execute_header, v102, v103, "Playing haptics...", v104, 2u);
        }

        v46(v93, v47);
        sub_1001B1680();
      }

      else
      {
        v105 = v121;
        v146(v121, &v94[v145], v47);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&_mh_execute_header, v106, v107, "No haptics...", v108, 2u);
        }

        v46(v105, v47);
      }

      v109 = v143;
      v110 = *&v88[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v111 = swift_allocObject();
      *(v111 + 16) = v88;
      aBlock[4] = sub_1000E3CF8;
      aBlock[5] = v111;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002769A0;
      v112 = _Block_copy(aBlock);
      v113 = v88;
      v114 = v110;
      v115 = v133;
      static DispatchQoS.unspecified.getter();
      v148 = _swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
      v116 = v135;
      v117 = v138;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v112);

      sub_100095C84(&v150, &qword_1002A7AF8, &qword_10023C9D8);
      (*(v137 + 8))(v116, v117);
      (*(v134 + 8))(v115, v136);
    }

    return result;
  }

  v68 = v139;
  v146(v139, &v2[v145], v47);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "Ignoring URI request: a pairing session is already in progress", v71, 2u);
  }

  return v46(v68, v47);
}

uint64_t sub_1000D7DEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  swift_beginAccess();

  v4 = sub_1000E2C2C((v1 + v3), a1);

  v5 = *(v1 + v3);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (v6 < v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1001A11BC(v4, v6);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_1000D7F10(uint64_t a1, void *a2)
{
  v2 = *(*sub_1000A09E0(a2, a2[3]) + 24);
  sub_1000DD72C(v2, 1);
}

uint64_t sub_1000D7F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000D8008;

  return sub_1000FAC78();
}

uint64_t sub_1000D8008()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1000D8148;

  return sub_1000F7D10();
}

uint64_t sub_1000D8148()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1000D823C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  sub_1000DD72C(v2, 1);
}

uint64_t sub_1000D82E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "stopDiscoveringAccessoryServers()", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan) = 0;
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  return sub_1000E4E98();
}

uint64_t sub_1000D84D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v5);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v9, v10))
  {

    result = (*(v6 + 8))(v8, v5);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v11 = swift_slowAlloc();
  result = swift_slowAlloc();
  *&v44 = result;
  *v11 = 136315138;
  if (!a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v13 = result;
  *(v11 + 4) = sub_1000952D4(v42, a2, &v44);
  _os_log_impl(&_mh_execute_header, v9, v10, "Request by HAP to deregister accessory %s.", v11, 0xCu);
  sub_100095808(v13);

  (*(v6 + 8))(v8, v5);
LABEL_5:
  v14 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v15 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v16 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v17 = *(v3 + v16);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_19:
    v31 = *(v3 + v14);
    OS_dispatch_semaphore.signal()();

    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    return sub_100095C84(&v44, &unk_1002A6F40, &unk_10023BE90);
  }

  v40 = v14;
  v41 = v3;
  v19 = v17 + 32;

  v20 = 0;
  while (1)
  {
    if (v20 >= *(v17 + 16))
    {
      __break(1u);
LABEL_30:
      swift_once();
LABEL_28:
      v36 = qword_1002B1EB8;
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      v38 = v36;
      sub_1001D5444(sub_1000E4DF8, v37);
    }

    sub_1000A097C(v19, v43);
    v21 = *(*sub_1000A09E0(v43, v43[3]) + 32);
    if (v21)
    {
      break;
    }

LABEL_8:
    ++v20;
    sub_100095808(v43);
    v19 += 40;
    if (v18 == v20)
    {

      v14 = v40;
      v3 = v41;
      goto LABEL_19;
    }
  }

  v22 = v21;
  v23 = [v22 identifier];
  if (!v23)
  {
LABEL_7:

    goto LABEL_8;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 != v42 || v27 != a2)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {

      v30 = v42;
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v30 = v42;

LABEL_23:
  v32 = v41;
  v33 = *(v41 + v40);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v43, &v44);
  sub_100095808(v43);
  if (!*(&v45 + 1))
  {
    return sub_100095C84(&v44, &unk_1002A6F40, &unk_10023BE90);
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v43[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
    {
    }

    v34 = *(v32 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
    v35 = sub_1001F29A8(_swiftEmptyArrayStorage);
    sub_100156798(v30, a2, 6, v35, 0);

    *(v32 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 0;
    if (qword_1002A67A0 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  return result;
}

id sub_1000D8A6C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HAP requested BLE disconnect.", v11, 2u);
  }

  result = (*(v6 + 8))(v8, v5);
  if (!a1)
  {
    __break(1u);
    goto LABEL_34;
  }

  result = [a1 identifier];
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v18 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v19 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v20 = *(v3 + v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v45 = v17;
    v46 = v3;
    v22 = v20 + 32;

    v23 = 0;
    while (v23 < *(v20 + 16))
    {
      sub_1000A097C(v22, v47);
      v24 = *(*sub_1000A09E0(v47, v47[3]) + 32);
      if (v24)
      {
        v25 = v24;
        v26 = [v25 identifier];
        if (v26)
        {
          v27 = v26;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          if (v28 == v14 && v30 == v16)
          {

LABEL_21:

            v34 = *(v46 + v45);
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v47, &v48);
            sub_100095808(v47);
            goto LABEL_22;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
            goto LABEL_21;
          }
        }
      }

      ++v23;
      sub_100095808(v47);
      v22 += 40;
      if (v21 == v23)
      {

        v17 = v45;
        v3 = v46;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_19:
  v33 = *(v3 + v17);
  OS_dispatch_semaphore.signal()();

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
LABEL_22:

  if (!*(&v49 + 1))
  {
    sub_100095C84(&v48, &unk_1002A6F40, &unk_10023BE90);
    if (qword_1002A67A0 == -1)
    {
LABEL_30:
      v42 = qword_1002B1EB8;
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      v44 = v42;
      sub_1001D5444(sub_1000E4DF8, v43);
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  sub_1000A0D80(&v48, v51);
  v35 = *(*sub_1000A09E0(v51, v51[3]) + 16);
  if (v35 && *&v35[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
  {
    v36 = qword_1002A67A0;
    v37 = v35;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = qword_1002B1EB8;
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v35;
    v40 = v37;
    v41 = v38;
    sub_1001D5444(sub_1000E4DF8, v39);
  }

  return sub_100095808(v51);
}

uint64_t sub_1000D8F90(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "setConnectionLatency()", v11, 2u);
  }

  result = (*(v6 + 8))(v8, v5);
  if (a1 == 2)
  {
    if (qword_1002A67A0 == -1)
    {
      if (!a2)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        result = swift_once();
        if (!a2)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_18:
    swift_once();
    if (!a2)
    {
      goto LABEL_19;
    }

LABEL_11:
    v13 = 1;
    return sub_1001D59A0(v13, a2);
  }

  if (!a1)
  {
    if (qword_1002A67A0 == -1)
    {
      if (!a2)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      swift_once();
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    v13 = 0;
    return sub_1001D59A0(v13, a2);
  }

  if (qword_1002A67A0 != -1)
  {
    goto LABEL_20;
  }

  if (a2)
  {
LABEL_14:
    v13 = -5;
    return sub_1001D59A0(v13, a2);
  }

LABEL_21:
  __break(1u);
  return result;
}

char *sub_1000D9230(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v65 = a1;
  v57 = type metadata accessor for CocoaError.Code();
  v56 = *(v57 - 8);
  v3 = __chkstk_darwin(v57);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v49 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = __chkstk_darwin(v6);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v58 = &v49 - v11;
  __chkstk_darwin(v10);
  v51 = &v49 - v12;
  v59 = type metadata accessor for CocoaError();
  v53 = *(v59 - 8);
  v13 = __chkstk_darwin(v59);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for URL.DirectoryHint();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v19 - 8);
  v21 = &v49 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v49 - v27;
  v60 = v2;
  sub_1000CBBDC(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100095C84(v21, &qword_1002A6B70, &unk_10023C9C0);
    return 0;
  }

  else
  {
    result = (*(v23 + 32))(v28, v21, v22);
    v29 = v22;
    v30 = v64;
    if (v64)
    {
      v66[0] = v65;
      v66[1] = v64;
      (*(v16 + 104))(v18, enum case for URL.DirectoryHint.inferFromPath(_:), v15);
      sub_1000E3C10();

      URL.append<A>(component:directoryHint:)();
      (*(v16 + 8))(v18, v15);

      v31 = *(v23 + 16);
      v50 = v29;
      v31(v26, v28, v29);
      v32 = objc_allocWithZone(NSData);
      v33 = sub_1000E14C4(v26, 2);
      v34 = v30;
      v49 = v28;
      v35 = v33;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      sub_100095B94(0, &qword_1002A7AE0, NSKeyedUnarchiver_ptr);
      sub_100095B94(0, &qword_1002A7AE8, off_100271C58);
      v39 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v40 = v63;
      v61 = v39;
      v41 = v51;
      v42 = v62;
      (*(v63 + 16))(v51, v60 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v62);
      v43 = v34;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66[0] = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_1000952D4(v65, v43, v66);
        _os_log_impl(&_mh_execute_header, v44, v45, "Loaded accessory cache for %s.", v46, 0xCu);
        sub_100095808(v47);

        sub_1000A0D2C(v36, v38);

        (*(v40 + 8))(v51, v42);
      }

      else
      {
        sub_1000A0D2C(v36, v38);

        (*(v40 + 8))(v41, v42);
      }

      (*(v23 + 8))(v49, v50);
      return v61;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000D9F2C(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = __chkstk_darwin(v5);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v52 - v8;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v2;
  sub_1000CBBDC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_100095C84(v15, &qword_1002A6B70, &unk_10023C9C0);
  }

  result = (*(v17 + 32))(v19, v15, v16);
  if (a2)
  {
    v58[0] = a1;
    v58[1] = a2;
    (*(v10 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
    sub_1000E3C10();

    URL.append<A>(component:directoryHint:)();
    (*(v10 + 8))(v12, v9);

    v21 = objc_opt_self();
    v22 = [v21 defaultManager];
    URL.path(percentEncoded:)(1);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 fileExistsAtPath:v23];

    if (v24)
    {
      v25 = [v21 defaultManager];
      URL._bridgeToObjectiveC()(v26);
      v28 = v27;
      v58[0] = 0;
      v29 = [v25 removeItemAtURL:v27 error:v58];

      v30 = v58[0];
      if (v29)
      {
        v31 = v56;
        v32 = v53;
        v33 = v57;
        (*(v56 + 16))(v53, &v55[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v57);
        v34 = v30;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v59 = v38;
          *v37 = 136315138;
          swift_beginAccess();
          v39 = URL.path(percentEncoded:)(1);
          v40 = sub_1000952D4(v39._countAndFlagsBits, v39._object, &v59);

          *(v37 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v35, v36, "Removed cache file: %s", v37, 0xCu);
          sub_100095808(v38);

          (*(v56 + 8))(v53, v33);
        }

        else
        {

          (*(v31 + 8))(v32, v33);
        }
      }

      else
      {
        v41 = v58[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v42 = v56;
        v43 = v54;
        v44 = v57;
        (*(v56 + 16))(v54, &v55[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v57);
        swift_errorRetain();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v58[0] = v55;
          *v47 = 136315138;
          swift_getErrorValue();
          v48 = Error.localizedDescription.getter();
          v50 = v42;
          v51 = sub_1000952D4(v48, v49, v58);

          *(v47 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v45, v46, "Unable to remove cache file: %s", v47, 0xCu);
          sub_100095808(v55);

          (*(v50 + 8))(v54, v57);
        }

        else
        {

          (*(v42 + 8))(v43, v44);
        }
      }
    }

    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DA630(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1000DA6AC(void *a1)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v98 = *(v3 - 8);
  v99 = v3;
  __chkstk_darwin(v3);
  v97 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v5 - 8);
  v101 = (&v82 - v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v100 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v82 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v82 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v82 - v20;
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  v26 = &v82 - v25;
  if (a1)
  {
    v93 = v24;
    v103 = v1;
    v91 = v23;
    v27 = objc_opt_self();
    v104[0] = 0;
    v102 = a1;
    v28 = [v27 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v29 = v104[0];
    if (v28)
    {
      v30 = v13;
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = *(v14 + 16);
      v35 = v103;
      v88 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
      v90 = v14 + 16;
      v89 = v34;
      v34(v26, v103 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v30);
      sub_1000A0CD8(v31, v33);
      v36 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      v37 = os_log_type_enabled(v36, v86);
      v96 = v31;
      v94 = v7;
      v92 = v8;
      v95 = v33;
      if (!v37)
      {
        sub_1000A0D2C(v31, v33);

        v49 = *(v14 + 8);
        v49(v26, v30);
        v50 = v30;
        v51 = v101;
        goto LABEL_25;
      }

      v38 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v104[0] = v83;
      *v38 = 134218242;
      v39 = v33 >> 62;
      v84 = v30;
      v85 = v14;
      v87 = v12;
      if ((v33 >> 62) > 1)
      {
        if (v39 != 2)
        {
          v40 = 0;
          goto LABEL_23;
        }

        v52 = v96;
        v54 = *(v96 + 16);
        v53 = *(v96 + 24);
        v55 = __OFSUB__(v53, v54);
        v40 = v53 - v54;
        if (!v55)
        {
          goto LABEL_24;
        }

        __break(1u);
      }

      else if (!v39)
      {
        v40 = BYTE6(v33);
LABEL_23:
        v52 = v96;
LABEL_24:
        v51 = v101;
        *(v38 + 4) = v40;
        sub_1000A0D2C(v52, v33);
        *(v38 + 12) = 2080;
        sub_10013B46C(v52, v33);
        v56 = String.uppercased()();

        sub_100162A44(256, v56._countAndFlagsBits, v56._object);

        v57 = static String._fromSubstring(_:)();
        v59 = v58;

        v60 = sub_1000952D4(v57, v59, v104);

        *(v38 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v36, v86, "Saving cached accessory data [%ld]: 0x%s...", v38, 0x16u);
        sub_100095808(v83);

        v49 = *(v85 + 8);
        v50 = v84;
        v49(v26, v84);
        v7 = v94;
        v8 = v92;
        v12 = v87;
        v35 = v103;
LABEL_25:
        sub_1000CBBDC(v51);
        if ((*(v8 + 48))(v51, 1, v7) == 1)
        {

          sub_1000A0D2C(v96, v95);
          return sub_100095C84(v51, &qword_1002A6B70, &unk_10023C9C0);
        }

        else
        {
          v101 = v49;
          (*(v8 + 32))(v12, v51, v7);
          result = [v102 pairingIdentifier];
          if (result)
          {
            v61 = result;
            v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            v104[0] = v62;
            v104[1] = v64;
            v66 = v97;
            v65 = v98;
            v67 = v99;
            (*(v98 + 104))(v97, enum case for URL.DirectoryHint.inferFromPath(_:), v99);
            sub_1000E3C10();
            URL.append<A>(component:directoryHint:)();
            (*(v65 + 8))(v66, v67);

            v68 = v93;
            v89(v93, v35 + v88, v50);
            v69 = Logger.logObject.getter();
            v70 = v12;
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v69, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v104[0] = v73;
              *v72 = 136315138;
              swift_beginAccess();
              v74 = URL.path(percentEncoded:)(1);
              v75 = sub_1000952D4(v74._countAndFlagsBits, v74._object, v104);

              *(v72 + 4) = v75;
              _os_log_impl(&_mh_execute_header, v69, v71, "Attempting to save cache to disk at %s", v72, 0xCu);
              sub_100095808(v73);
            }

            v101(v68, v50);
            v76 = v95;
            v77 = v96;
            v78 = v100;
            swift_beginAccess();
            v79 = v92;
            v80 = v94;
            (*(v92 + 16))(v78, v70, v94);
            Data.write(to:options:)();
            v81 = *(v79 + 8);
            v81(v78, v80);

            sub_1000A0D2C(v77, v76);
            return (v81)(v70, v80);
          }

          else
          {
            __break(1u);
          }
        }

        return result;
      }

      v52 = v96;
      LODWORD(v40) = HIDWORD(v96) - v96;
      if (__OFSUB__(HIDWORD(v96), v96))
      {
        __break(1u);
      }

      v40 = v40;
      goto LABEL_24;
    }

    v45 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    (*(v14 + 16))(v21, v103 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v13);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Unable to archive data!", v48, 2u);
    }

    else
    {
    }

    return (*(v14 + 8))(v21, v13);
  }

  else
  {
    (*(v14 + 16))(v18, v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v13);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Invalid accessory cache!", v43, 2u);
    }

    return (*(v14 + 8))(v18, v13);
  }
}

void sub_1000DB4BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return;
  }

  v13 = sub_1000D9230(a1, a2);
  if (!v13)
  {
    return;
  }

  v14 = &selRef_initWithName_;
  v45 = v13;
  v15 = [v13 peripheralInfo];
  if (!v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 stateNumber];

  if (!v17 || (sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr), v18 = a3, v19 = static NSObject.== infix(_:_:)(), v17, v18, (v19 & 1) == 0))
  {
    (*(v10 + 16))(v12, v5 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v9);
    v21 = a3;
    v4 = v45;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v41 = v23;
      v43 = v5;
      v44 = v21;
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v24 = 136315650;
      v25 = [v4 pairingIdentifier];
      if (!v25)
      {
LABEL_19:

        __break(1u);
        goto LABEL_20;
      }

      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_1000952D4(v27, v29, &v46);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2112;
      v31 = [v4 peripheralInfo];

      v32 = v44;
      if (!v31)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v33 = [v31 stateNumber];

      *(v24 + 14) = v33;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v32;
      v34 = v40;
      *v40 = v33;
      v34[1] = a3;
      v35 = v32;
      _os_log_impl(&_mh_execute_header, v22, v41, "Updating cached state number for %s: %@ -> %@", v24, 0x20u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();

      sub_100095808(v42);

      (*(v10 + 8))(v12, v9);
      v14 = &selRef_initWithName_;
      v21 = v32;
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    v36 = [v4 v14[291]];
    if (v36)
    {
      v37 = v36;
      [v36 updateStateNumber:v21];

      v38 = v4;
      sub_1000DA6AC(v45);

      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v45;
}

BOOL sub_1000DBA24(_BOOL8 result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
    return result;
  }

  v3 = v2;
  v5 = result;
  v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v7 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_16:
    v21 = *(v3 + v36);
    OS_dispatch_semaphore.signal()();

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
LABEL_17:
    sub_100095C84(&v38, &unk_1002A6F40, &unk_10023BE90);
    return 0;
  }

  v35 = v3;
  v10 = v8 + 32;

  v11 = 0;
  while (1)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1000A097C(v10, v41);
    v12 = *(*sub_1000A09E0(v41, v41[3]) + 32);
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = v12;
    v14 = [v13 identifier];
    if (v14)
    {
      break;
    }

LABEL_4:

LABEL_5:
    ++v11;
    sub_100095808(v41);
    v10 += 40;
    if (v9 == v11)
    {

      v3 = v35;
      goto LABEL_16;
    }
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 != v5 || v18 != a2)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_19;
    }

    goto LABEL_4;
  }

LABEL_19:

  v22 = *(v35 + v36);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v41, &v38);
  sub_100095808(v41);
  if (!*(&v39 + 1))
  {
    goto LABEL_17;
  }

  sub_1000A0D80(&v38, v41);
  sub_1000A097C(v41, &v38);
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if (swift_dynamicCast())
  {
    v23 = *(v37 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired);

    v24 = v23 != 0;
    goto LABEL_26;
  }

  if (qword_1002A6780 != -1)
  {
LABEL_28:
    swift_once();
  }

  v25 = qword_1002B1CF0;
  v26 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v27 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v27 + 4);

  v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v29 = *(v25 + v28);
  v30 = *(v25 + v26);

  os_unfair_lock_unlock(v30 + 4);

  __chkstk_darwin(v31);
  v34[2] = v41;
  v32 = sub_100181878(sub_1000E3BF0, v34, v29);
  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v33 > 0;
LABEL_26:
  sub_100095808(v41);
  return v24;
}

uint64_t sub_1000DBDEC(uint64_t a1, void *a2)
{
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  v3 = dispatch thunk of DockCoreAccessory.info.getter();
  v4 = *(*sub_1000A09E0(a2, a2[3]) + 24);
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

void sub_1000DBFD4(uint64_t a1, int a2)
{
  v103 = a2;
  *&v113 = a1;
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v3 - 8);
  v104 = &v97 - v4;
  v5 = type metadata accessor for UUID();
  v105 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v97 - v9;
  v110 = type metadata accessor for Logger();
  v112 = *(v110 - 8);
  v11 = __chkstk_darwin(v110);
  v109 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v106 = &v97 - v14;
  __chkstk_darwin(v13);
  v108 = &v97 - v15;
  v107 = type metadata accessor for DockStatus();
  v16 = *(v107 - 8);
  __chkstk_darwin(v107);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = v2;
  v23 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    goto LABEL_43;
  }

  if (qword_1002A67A0 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v25 = v111;
    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) != 3)
    {
      v50 = v112;
      v51 = v110;
      (*(v112 + 16))(v109, &v111[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v110);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Ignoring connect block, accessory already disconnected!", v54, 2u);
      }

      (*(v50 + 8))(v109, v51);
      return;
    }

    v26 = v107;
    (*(v16 + 104))(v18, enum case for DockStatus.Docked(_:), v107);
    v27 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v16 + 40))(&v25[v27], v18, v26);
    swift_endAccess();
    v28 = *&v25[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
    (*(v16 + 16))(v18, &v25[v27], v26);
    v97 = v28;
    DockDetector.newStatus(_:monitorJarvisCallback:)(v18, 0, 0);
    (*(v16 + 8))(v18, v26);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v30 = qword_1002B1CF0;
    sub_1001898EC(v113, v29);
    v31 = v112;
    v32 = *(v112 + 16);
    v98 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
    v33 = v108;
    v34 = v110;
    v100 = v112 + 16;
    v99 = v32;
    v32(v108, &v25[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v110);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Connected!  Attempting raw write to velocity characteristic.", v37, 2u);
    }

    v38 = *(v31 + 8);
    v112 = v31 + 8;
    v102 = v38;
    v38(v33, v34);
    v101 = v30;
    v39 = *(v30 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v107 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v40 = *&v39[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v108 = v39;
    v41 = v39;
    v42 = v40;
    OS_dispatch_semaphore.wait()();

    v43 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v109 = v41;
    v18 = *&v41[v43];
    v44 = *(v18 + 2);

    if (!v44)
    {
      break;
    }

    v45 = 0;
    v46 = (v18 + 32);
    v16 = v105 + 8;
    while (v45 < *(v18 + 2))
    {
      sub_1000A097C(v46, v114);
      v47 = *(*sub_1000A09E0(v114, v114[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v47) = static UUID.== infix(_:_:)();
      v48 = *v16;
      (*v16)(v8, v5);
      v48(v10, v5);
      if (v47)
      {

        v55 = *&v108[v107];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v114, &v115);
        sub_100095808(v114);
        goto LABEL_18;
      }

      ++v45;
      sub_100095808(v114);
      v46 += 40;
      if (v44 == v45)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_13:

  v49 = *&v108[v107];
  OS_dispatch_semaphore.signal()();

  v117 = 0;
  v115 = 0u;
  v116 = 0u;
LABEL_18:

  v56 = v106;
  if (!*(&v116 + 1))
  {
    sub_100095C84(&v115, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v57 = v114[0];
  v58 = *(v114[0] + 32);
  if (!v58)
  {
    goto LABEL_37;
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {
    goto LABEL_37;
  }

  v60 = v59;
  v61 = v58;
  [v60 tryEstablishSecuritySession];
  if ([v60 isSecuritySessionOpen])
  {
    v62 = v113;
    sub_100189054(v113);
    v63 = type metadata accessor for TaskPriority();
    v64 = *(*(v63 - 8) + 56);
    v65 = v104;
    v64(v104, 1, 1, v63);
    v66 = swift_allocObject();
    v66[2] = 0;
    v66[3] = 0;
    v66[4] = v62;
    v66[5] = v57;
    v67 = v62;

    sub_1001B6410(0, 0, v65, &unk_10023C990, v66);

    if (v103 == 2)
    {
      type metadata accessor for DockCoreManager();
      if (static DockCoreManager.ignoreStartupValidation.getter())
      {
        goto LABEL_31;
      }

LABEL_30:
      *(v57 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) = 1;
      sub_1001A68A4(0.0);
      v72 = v104;
      v64(v104, 1, 1, v63);
      v73 = swift_allocObject();
      v73[2] = 0;
      v73[3] = 0;
      v73[4] = v57;

      sub_1001B6410(0, 0, v72, &unk_10023C9A8, v73);

      v74 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
      v75 = v97;
      swift_beginAccess();
      v76 = *(v75 + v74);
      v77 = swift_allocObject();
      v78 = v111;
      *(v77 + 16) = v111;
      *(v77 + 24) = v67;
      v79 = v67;
      v80 = v76;
      v81 = v78;
      MotionValidator.start(timedOutCallback:)(sub_1000E3AD8, v77);

      v64(v72, 1, 1, v63);
      v82 = swift_allocObject();
      v82[2] = 0;
      v82[3] = 0;
      v82[4] = v81;
      v82[5] = v57;

      v83 = v81;
      sub_1001B6410(0, 0, v72, &unk_10023C9B8, v82);
    }

    else if (v103)
    {
      goto LABEL_30;
    }

LABEL_31:
    *(v57 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_connectedForTracking) = 1;
    v84 = *(v57 + 16);
    if (v84)
    {
      v85 = objc_opt_self();
      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v86 = swift_allocObject();
      v113 = xmmword_10023C170;
      *(v86 + 16) = xmmword_10023C170;
      *(v86 + 56) = &type metadata for UInt32;
      *(v86 + 64) = &protocol witness table for UInt32;
      *(v86 + 32) = 512;
      v87 = v84;
      String.init(format:_:)();
      v88 = String._bridgeToObjectiveC()();

      v89 = [v85 UUIDWithString:v88];

      v90 = sub_10013EF7C(v89);
      if (v90)
      {
        v91 = *(v57 + 16);
        if (v91 && (v92 = swift_allocObject(), *(v92 + 16) = v113, *(v92 + 56) = &type metadata for UInt32, *(v92 + 64) = &protocol witness table for UInt32, *(v92 + 32) = 260, v93 = v91, String.init(format:_:)(), v94 = String._bridgeToObjectiveC()(), , v95 = [v85 UUIDWithString:v94], v94, v96 = sub_10013F1B8(v95, v90), v93, v95, v96))
        {
          sub_1001A38B4(&off_100274C88, &off_100274CB8, 256, v96);
        }

        else
        {
        }

        return;
      }
    }

LABEL_37:

    return;
  }

  v68 = v110;
  v99(v56, &v111[v98], v110);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "Accessory does not contain a velocity characteristic!", v71, 2u);
  }

  else
  {
  }

  v102(v56, v68);
}

uint64_t sub_1000DCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return (_swift_task_switch)(sub_1000DCE50, 0, 0);
}

uint64_t sub_1000DCE50()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v1 = sub_1001884E4(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    v3 = dispatch thunk of DockCoreAccessory.needsMigration.getter();
  }

  else
  {
    v3 = 0;
  }

  sub_1001A761C(v3 & 1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DCF1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1001A50B4(v1, v2);
}

uint64_t sub_1000DCFAC(char a1, char *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = *&a2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v22 = v12;
    v23 = result;
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = sub_1000E3BE8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_1002768D8;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v19 = a2;
    v20 = a3;
    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    (*(v22 + 8))(v14, v23);
  }

  return result;
}

void sub_1000DD298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Startup validation timed out, disconnecting", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  sub_1000DD72C(a2, 0);
}

uint64_t sub_1000DD40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000DD4CC, 0, 0);
}

uint64_t sub_1000DD4CC()
{
  (*(v0[5] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v0[4]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Startup validation started. Starting motion feedback.", v3, 2u);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1000DD61C;

  return sub_1001A456C(v7, v8);
}

uint64_t sub_1000DD61C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1000DD72C(uint64_t a1, int a2)
{
  v70 = a2;
  v83 = a1;
  v3 = type metadata accessor for DockStatus();
  v82 = *(v3 - 8);
  __chkstk_darwin(v3);
  v80 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = type metadata accessor for Logger();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UUID();
  v74 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v69[-v10];
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    goto LABEL_32;
  }

  v79 = v3;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v78 = qword_1002B1CF0;
    v19 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v75 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v20 = *&v19[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v76 = v19;
    v21 = v19;
    v22 = v20;
    OS_dispatch_semaphore.wait()();

    v23 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v77 = v21;
    v24 = *(v21 + v23);
    v25 = *(v24 + 16);

    if (!v25)
    {
      break;
    }

    v26 = 0;
    v27 = v24 + 32;
    v28 = (v74 + 8);
    while (v26 < *(v24 + 16))
    {
      sub_1000A097C(v27, v85);
      v29 = *(*sub_1000A09E0(v85, v85[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v29) = static UUID.== infix(_:_:)();
      v30 = *v28;
      (*v28)(v9, v6);
      v30(v11, v6);
      if (v29)
      {

        v32 = *&v76[v75];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v85, &v86);
        sub_100095808(v85);
        goto LABEL_10;
      }

      ++v26;
      sub_100095808(v85);
      v27 += 40;
      if (v25 == v26)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_8:

  v31 = *&v76[v75];
  OS_dispatch_semaphore.signal()();

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
LABEL_10:

  v33 = v79;
  v34 = v81;
  if (*(&v87 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    if (swift_dynamicCast())
    {
      v36 = v85[0];
      v37 = *(v85[0] + 16);
      if (!v37)
      {
        goto LABEL_29;
      }

      v38 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral;
      v39 = *&v37[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (!v39)
      {
        goto LABEL_29;
      }

      v40 = v37;
      if ([v39 state] == 2)
      {
        (*(v72 + 16))(v71, v34 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v73);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();
        v77 = v36;

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v76 = v40;
          v45 = v44;
          *v43 = 138412290;
          v46 = v77[3];
          *(v43 + 4) = v46;
          *v44 = v46;
          v47 = v46;
          _os_log_impl(&_mh_execute_header, v41, v42, "Disconnecting %@", v43, 0xCu);
          sub_100095C84(v45, &unk_1002A6F60, &unk_10023C4E0);
          v40 = v76;
        }

        (*(v72 + 8))(v71, v73);
        if (*&v37[v38])
        {
          if (qword_1002A67A0 != -1)
          {
            swift_once();
          }

          v48 = qword_1002B1EB8;
          v49 = swift_allocObject();
          *(v49 + 16) = v48;
          *(v49 + 24) = v37;
          v50 = v40;
          v51 = v48;
          sub_1001D5444(sub_1000E4DF8, v49);
        }

        v52 = v40;
        if ((v70 & 1) == 0)
        {
          v53 = sub_10013EC8C();
          if (v54 >> 60 != 15)
          {
            v55 = v53;
            v56 = v54;
            sub_1000A0CD8(v53, v54);
            sub_1001B1B24(v55, v56, &v86);
            v57 = *(&v86 + 1);
            if (*(&v86 + 1))
            {
              v76 = v86;
              v58 = v77[3];
              DockCoreInfo.identifier.getter();

              v59 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockSetupIdMap;
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v84 = *(v34 + v59);
              *(v34 + v59) = 0x8000000000000000;
              sub_1001EBE2C(v76, v57, v11, isUniquelyReferenced_nonNull_native);
              (*(v74 + 8))(v11, v6);
              *(v34 + v59) = v84;
              swift_endAccess();
              v61 = v56;
              v36 = v77;
              sub_1000A452C(v55, v61);
              sub_100095C84(&v86, &unk_1002A7AA0, &unk_10023C978);

LABEL_29:
              *(v36 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_connectedForTracking) = 0;
              sub_100118354(v83);

              goto LABEL_30;
            }

            sub_1000A452C(v55, v56);
          }
        }

        v36 = v77;
        v62 = v77[3];
        DockCoreInfo.identifier.getter();

        swift_beginAccess();
        sub_1001B6CB4(v11);
        (*(v74 + 8))(v11, v6);
        swift_endAccess();

        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  else
  {
    sub_100095C84(&v86, &unk_1002A6F40, &unk_10023BE90);
  }

LABEL_30:
  sub_1001898EC(0, v35);
  sub_100189054(0);
  v63 = v82;
  v64 = v80;
  (*(v82 + 104))(v80, enum case for DockStatus.Undocked(_:), v33);
  v65 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
  swift_beginAccess();
  (*(v63 + 40))(v34 + v65, v64, v33);
  swift_endAccess();
  v66 = *(v34 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);
  (*(v63 + 16))(v64, v34 + v65, v33);
  DockDetector.newStatus(_:monitorJarvisCallback:)(v64, 0, 0);
  (*(v63 + 8))(v64, v33);
  v67 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v68 = *(v66 + v67);
  MotionValidator.stop()();
}

void sub_1000DE17C(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for DockStatus();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  DockCoreInfo.identifier.getter();
  swift_beginAccess();
  sub_1001B6CB4(v9);
  (*(v7 + 8))(v9, v22);
  swift_endAccess();

  if (qword_1002A6780 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1001898EC(0, v16);
  sub_100189054(0);
  (*(v4 + 104))(v6, enum case for DockStatus.Undocked(_:), v3);
  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v17, v6, v3);
  swift_endAccess();
  v18 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);
  (*(v4 + 16))(v6, v2 + v17, v3);
  DockDetector.newStatus(_:monitorJarvisCallback:)(v6, 0, 0);
  (*(v4 + 8))(v6, v3);
  v19 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v20 = *(v18 + v19);
  MotionValidator.stop()();
}

id sub_1000DE534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryManager(uint64_t a1)
{
  result = qword_1002A7A78;
  if (!qword_1002A7A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DE78C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    sub_1000DE918(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for DockStatus();
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000DE918(uint64_t a1)
{
  if (!qword_1002A7A88)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002A7A88);
    }
  }
}

uint64_t sub_1000DE9B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000025 && 0x8000000100230960 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {

    sub_1000F2B90(v3, v4);
  }

  return result;
}

uint64_t sub_1000DEA48(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = __chkstk_darwin(v11);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v66 = &v58 - v14;
  v15 = type metadata accessor for Date();
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v68 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  swift_beginAccess();
  v18 = *&v1[v17];
  v65 = v3;
  v64 = v4;
  v63 = v7;
  v62 = v6;
  v61 = v8;
  v60 = v10;
  v67 = v17;
  if (v18 >> 62)
  {
LABEL_31:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v1;

  if (!v19)
  {
  }

  for (i = 0; ; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_13:
        __break(1u);
      }
    }

    else
    {
      if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_31;
      }

      v21 = *(v18 + 8 * i + 32);

      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_13;
      }
    }

    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    if (v22 == v19)
    {
    }
  }

  v24 = v68;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v26 = v25;
  (*(v69 + 8))(v24, v70);
  v29.n128_u64[0] = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_timestamp);
  v27.n128_f64[0] = v26 - v29.n128_f64[0];
  v28 = v26 < v29.n128_f64[0];
  v29.n128_u64[0] = 0x4072C00000000000;
  if (!v28 && v27.n128_f64[0] <= 300.0)
  {
    v43 = v72;
    v42 = v73;
    v44 = v71;
    if (*(v21 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) == 1)
    {
      v45 = *&v73[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v46 = swift_allocObject();
      *(v46 + 16) = v42;
      *(v46 + 24) = v21;
      aBlock[4] = sub_1000E30C8;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100276770;
      v47 = _Block_copy(aBlock);
      v48 = v45;
      v49 = v42;

      v50 = v60;
      static DispatchQoS.unspecified.getter();
      v74 = _swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
      v51 = v62;
      v52 = v65;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v64 + 8))(v51, v52);
      (*(v61 + 8))(v50, v63);
    }

    else
    {
      v53 = v59;
      (*(v71 + 16))(v59, &v73[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v72, v29, v27);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Waiting for user to authorize pair-setup.", v56, 2u);
      }

      else
      {
      }

      return (*(v44 + 8))(v53, v43);
    }
  }

  else
  {
    v32 = v71;
    v31 = v72;
    v33 = v73;
    v34 = v66;
    (*(v71 + 16))(v66, &v73[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v72, v29, v27);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Removing stale pairing token, pairing not accepted within allowed timeout.", v37, 2u);
    }

    v38 = (*(v32 + 8))(v34, v31);
    __chkstk_darwin(v38);
    *(&v58 - 2) = a1;
    v39 = v67;
    swift_beginAccess();
    result = sub_1000E1620(sub_1000E30D0, (&v58 - 4));
    v40 = *&v33[v39];
    if (v40 >> 62)
    {
      v57 = result;
      v41 = _CocoaArrayWrapper.endIndex.getter();
      result = v57;
      if (v41 >= v57)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41 >= result)
      {
LABEL_23:
        sub_1001A11BC(result, v41);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1000DF27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  result = __chkstk_darwin(v5);
  v10 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard))
  {
    return result;
  }

  v55 = &v54 - v7;
  v56 = v9;
  v60 = v8;
  v59 = result;
  v11 = a2 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
  v12 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
  v13 = *(v11 + 40);
  sub_1000A0CD8(v12, v13);
  v14 = sub_10014025C(v12, v13);
  v16 = v15;
  sub_1000A0D2C(v12, v13);
  v61 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v17 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v18 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_16:
    v32 = *(a1 + v61);
    OS_dispatch_semaphore.signal()();

    v65 = 0;
    v63 = 0u;
    v64 = 0u;

    if (!*(&v64 + 1))
    {
      return sub_100095C84(&v63, &unk_1002A6F40, &unk_10023BE90);
    }

LABEL_17:
    sub_1000A0D80(&v63, v66);
    v33 = *(*sub_1000A09E0(v66, v66[3]) + 32);
    if (!v33)
    {
      return sub_100095808(v66);
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return sub_100095808(v66);
    }

    v34 = *(a1 + v10);
    if (v34)
    {
      v35 = result;
      v36 = *(v60 + 16);
      if ((*(v34 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth) & 1) == 0)
      {
        v43 = v59;
        v36(v55, a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v59);
        v44 = v33;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "User authorized uncertified accessory", v47, 2u);
        }

        (*(v60 + 8))(v55, v43);
        result = [v35 identifier];
        if (result)
        {
          v48 = result;
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52 = sub_1001F29A8(_swiftEmptyArrayStorage);
          if (*(a1 + v10))
          {
            *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 5;
            v53 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
            sub_100156798(v49, v51, 2, v52, 0);
          }

          [v35 continuePairingAfterAuthPrompt];
          goto LABEL_36;
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v37 = v10;
      v36(v56, a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v59);
      v38 = v33;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Continuing with SW auth", v41, 2u);
      }

      (*(v60 + 8))(v56, v59);
      result = [v35 identifier];
      if (result)
      {

        sub_1001F29A8(_swiftEmptyArrayStorage);

        if (*(a1 + v37))
        {
          *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 4;
        }

        [v35 continueAuthAfterValidation:1];
LABEL_36:

        return sub_100095808(v66);
      }
    }

    else
    {
LABEL_40:
      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v57 = v10;
  v58 = a1;
  v21 = v19 + 32;

  v22 = 0;
  while (1)
  {
    if (v22 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1000A097C(v21, v62);
    v23 = *(*sub_1000A09E0(v62, v62[3]) + 32);
    if (v23)
    {
      break;
    }

LABEL_5:
    ++v22;
    result = sub_100095808(v62);
    v21 += 40;
    if (v20 == v22)
    {

      a1 = v58;
      v10 = v57;
      goto LABEL_16;
    }
  }

  v24 = v23;
  v25 = [v24 identifier];
  if (!v25)
  {
LABEL_4:

    goto LABEL_5;
  }

  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 != v14 || v29 != v16)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_28;
    }

    goto LABEL_4;
  }

LABEL_28:

  a1 = v58;
  v42 = *(v58 + v61);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v62, &v63);
  sub_100095808(v62);

  v10 = v57;
  if (*(&v64 + 1))
  {
    goto LABEL_17;
  }

  return sub_100095C84(&v63, &unk_1002A6F40, &unk_10023BE90);
}

uint64_t sub_1000DF8C4(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v36 = type metadata accessor for Logger();
  v3 = *(v36 - 8);
  v4 = __chkstk_darwin(v36);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v32 - v7;
  v8 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  swift_beginAccess();
  v9 = *&v2[v8];
  if (v9 >> 62)
  {
LABEL_26:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v6;
  v35 = v3;

  if (!v10)
  {
LABEL_14:

    return sub_1000DEA48(v37);
  }

  v11 = 0;
  v6 = (v9 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v12 = *(v9 + 8 * v11 + 32);

      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_13;
      }
    }

    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v11;
    if (v3 == v10)
    {
      goto LABEL_14;
    }
  }

  if (*(v12 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) != 1)
  {
    *(v12 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) = 1;
    v21 = v34;
    v20 = v35;
    v22 = *(v35 + 16);
    v33 = v2;
    v23 = v36;
    v22(v34, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v36);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      v32 = v24;
      v28 = UUID.uuidString.getter();
      v30 = sub_1000952D4(v28, v29, &v38);

      *(v26 + 4) = v30;
      v31 = v32;
      _os_log_impl(&_mh_execute_header, v32, v25, "User authorized pair setup for accessory token: %s.", v26, 0xCu);
      sub_100095808(v27);
    }

    else
    {
    }

    (*(v20 + 8))(v21, v23);
    return sub_1000DEA48(v37);
  }

  v15 = v35;
  v14 = v36;
  v16 = v33;
  (*(v35 + 16))(v33, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v36);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Ignoring duplicate user authorization request", v19, 2u);
  }

  else
  {
  }

  return (*(v15 + 8))(v16, v14);
}

uint64_t sub_1000DFCFC(uint64_t a1)
{
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 16);
  v65 = v1;
  v63 = v18;
  v17(v16, &v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger]);
  v19 = *(v8 + 16);
  v64 = v7;
  v53 = v8 + 16;
  v52 = v19;
  v19(v12, a1, v7);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v60 = v5;
  v61 = v3;
  v56 = v8;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v23 = 136315138;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v27 = *(v8 + 8);
    v28 = v64;
    v27(v12, v64);
    v29 = sub_1000952D4(v24, v26, aBlock);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Request to cancel pairing for token %s", v23, 0xCu);
    sub_100095808(v51);
  }

  else
  {

    v30 = *(v8 + 8);
    v28 = v64;
    v30(v12, v64);
  }

  (*(v14 + 8))(v16, v63);
  v31 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  v32 = v65;
  swift_beginAccess();
  v33 = *&v32[v31];
  if (v33 >> 62)
  {
LABEL_21:
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34)
  {
    v35 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_16:
          __break(1u);
        }
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v36 = *(v33 + 8 * v35 + 32);

        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_16;
        }
      }

      if (static UUID.== infix(_:_:)())
      {

        v39 = v65;
        v40 = *&v65[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
        v41 = v55;
        v52(v55, a1, v28);
        v42 = v56;
        v43 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = v36;
        *(v44 + 24) = v39;
        (*(v42 + 32))(v44 + v43, v41, v28);
        aBlock[4] = sub_1000E1448;
        aBlock[5] = v44;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100147FC8;
        aBlock[3] = &unk_1002766D0;
        v45 = _Block_copy(aBlock);
        v46 = v40;

        v47 = v39;
        v48 = v57;
        static DispatchQoS.unspecified.getter();
        v66 = _swiftEmptyArrayStorage;
        sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
        v49 = v59;
        v50 = v62;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v45);

        (*(v61 + 8))(v49, v50);
        (*(v58 + 8))(v48, v60);
      }

      ++v35;
    }

    while (v37 != v34);
  }
}

void sub_1000E0424(uint64_t a1, unint64_t a2, char *a3)
{
  v6 = type metadata accessor for Logger();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
  v9 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
  v10 = *(v8 + 40);
  sub_1000A0CD8(v9, v10);
  v11 = sub_10014025C(v9, v10);
  v13 = v12;
  sub_1000A0D2C(v9, v10);
  v14 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v15 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v16 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v17 = *(a2 + v16);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_15:
    v28 = *(a2 + v14);
    OS_dispatch_semaphore.signal()();

    v70 = 0;
    v68 = 0u;
    v69 = 0u;

    if (!*(&v69 + 1))
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v64 = v14;
  v65 = a3;
  v66 = a2;
  v19 = v17 + 32;

  a2 = 0;
  while (1)
  {
    if (a2 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1000A097C(v19, v67);
    v20 = *(*sub_1000A09E0(v67, v67[3]) + 32);
    if (!v20)
    {
      goto LABEL_4;
    }

    v21 = v20;
    v22 = [v21 identifier];
    if (v22)
    {
      break;
    }

LABEL_3:

LABEL_4:
    ++a2;
    sub_100095808(v67);
    v19 += 40;
    if (v18 == a2)
    {

      a3 = v65;
      a2 = v66;
      v14 = v64;
      goto LABEL_15;
    }
  }

  v23 = v22;
  a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (a3 != v11 || v25 != v13)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_30;
    }

    goto LABEL_3;
  }

LABEL_30:

  a2 = v66;
  v44 = *(v66 + v64);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v67, &v68);
  sub_100095808(v67);

  a3 = v65;
  if (!*(&v69 + 1))
  {
LABEL_31:
    sub_100095C84(&v68, &unk_1002A6F40, &unk_10023BE90);
LABEL_32:
    if (qword_1002A67A0 == -1)
    {
LABEL_33:
      v45 = qword_1002B1EB8;
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      v47 = v45;
      sub_1001D5444(sub_1000E1618, v46);

      __chkstk_darwin(v48);
      *(&v60 - 2) = a3;
      a3 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
      swift_beginAccess();
      v49 = sub_1000E1620(sub_1000E4DDC, (&v60 - 4));
      v50 = *&a3[a2];
      if (v50 >> 62)
      {
        v57 = v49;
        v51 = _CocoaArrayWrapper.endIndex.getter();
        v49 = v57;
        if (v51 < v57)
        {
          goto LABEL_42;
        }

LABEL_35:
        sub_1001A11BC(v49, v51);
        swift_endAccess();
        return;
      }

      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51 >= v49)
      {
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_19:
      v29 = qword_1002B1EB8;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      v31 = v29;
      sub_1001D5444(sub_1000E4DF8, v30);

      __chkstk_darwin(v32);
      *(&v60 - 2) = a3;
      v33 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
      swift_beginAccess();
      v34 = sub_1000E1620(sub_1000E4DDC, (&v60 - 4));
      v35 = *(a2 + v33);
      if (!(v35 >> 62))
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36 >= v34)
        {
          goto LABEL_21;
        }

LABEL_45:
        __break(1u);
LABEL_46:
        v59 = v34;
        v56 = _CocoaArrayWrapper.endIndex.getter();
        v34 = v59;
        if (v56 < v59)
        {
LABEL_47:
          __break(1u);
        }

LABEL_38:
        sub_1001A11BC(v34, v56);
        swift_endAccess();

        return;
      }

      v58 = v34;
      v36 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v58;
      if (v36 < v58)
      {
        goto LABEL_45;
      }

LABEL_21:
      sub_1001A11BC(v34, v36);
      swift_endAccess();
LABEL_28:

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_33;
  }

LABEL_16:
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v67[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
  {
    if (qword_1002A67A0 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_19;
  }

  v37 = *(v67[0] + 32);
  if (!v37)
  {
    goto LABEL_28;
  }

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {
    goto LABEL_28;
  }

  v39 = v38;
  (*(v62 + 16))(v61, a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v63);
  v11 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "User canceled in-progress pairing.", v42, 2u);
  }

  (*(v62 + 8))(v61, v63);
  *&v68 = 0;
  if (![v39 stopPairingWithError:&v68])
  {
    v52 = v68;
    _convertNSErrorToError(_:)();

    v53 = swift_willThrow();
    __chkstk_darwin(v53);
    *(&v60 - 2) = a3;
    v54 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    swift_beginAccess();
    v34 = sub_1000E1620(sub_1000E4DDC, (&v60 - 4));
    v55 = *(a2 + v54);
    if (v55 >> 62)
    {
      goto LABEL_46;
    }

    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56 < v34)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  v43 = v68;
}

void sub_1000E0C3C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v59 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v11 = qword_1002B1CF0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v13 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(v11 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  v15 = *(v11 + v12);
  v16 = v14;

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v17 = *&v58[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
    v18 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v53 = v18;
    v54 = v17;
    v19 = *(v17 + v18);
    v20 = *&v19[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer];
    v51 = v1;
    v52 = v0;
    v49 = v3;
    v50 = v4;
    if (v20 && (v19[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator_type] & 1) == 0)
    {
      v22 = v19;
      v21 = sub_100149A98();
    }

    else
    {
      v21 = 1;
    }

    v23 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
    v24 = *(v59 + 16);
    v24(v10, &v58[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v6);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v48 = v6;
      *v27 = 67109120;
      *(v27 + 4) = v21 & 1;
      _os_log_impl(&_mh_execute_header, v25, v26, "startup motion is valid %{BOOL}d", v27, 8u);
      v6 = v48;
    }

    v28 = *(v59 + 8);
    v59 += 8;
    v28(v10, v6);
    if (v21)
    {

      sub_1000EC468(1);
    }

    else
    {
      v48 = v28;
      v24(v57, &v58[v23], v6);
      v29 = v16;
      v30 = v16;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        v35 = dispatch thunk of DockCoreAccessory.info.getter();
        *(v33 + 4) = v35;
        *v34 = v35;
        _os_log_impl(&_mh_execute_header, v31, v32, "startup motion is not valid, disconnecting %@", v33, 0xCu);
        sub_100095C84(v34, &unk_1002A6F60, &unk_10023C4E0);
      }

      v48(v57, v6);
      v36 = v58;
      v37 = *&v58[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      *(v38 + 24) = v30;
      aBlock[4] = sub_1000E3154;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002767C0;
      v39 = _Block_copy(aBlock);
      v40 = v30;
      v41 = v37;
      v42 = v36;
      v43 = v55;
      static DispatchQoS.unspecified.getter();
      v60 = _swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
      v44 = v49;
      v45 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      (*(v51 + 8))(v44, v45);
      (*(v56 + 8))(v43, v50);

      v16 = v29;
    }

    v46 = *(v54 + v53);
    MotionValidator.stop()();
  }
}

void sub_1000E1328(uint64_t a1)
{
  v1 = dispatch thunk of DockCoreAccessory.info.getter();
  sub_1000DD72C(v1, 0);
}

uint64_t sub_1000E137C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000E1448()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  sub_1000E0424(v2, v3, v4);
}

uint64_t sub_1000E14AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000E14C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithContentsOfURL:v6 options:a2 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

uint64_t sub_1000E1620(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_1000E18A4(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1001A347C();
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1001A347C();
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_1000E18A4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

Swift::Int sub_1000E19C0(id **a1)
{
  v2 = *(type metadata accessor for BTDiscoveredDevice(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001DA0BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000E1A68(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000E1A68(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BTDiscoveredDevice(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BTDiscoveredDevice(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000E1DB4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000E1B94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E1B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BTDiscoveredDevice(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v31 - v17;
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v38 = *a4;
    v32 = v19;
    v23 = v38 + v19 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v23;
    v35 = v22;
    v24 = v22;
    v25 = v20;
    while (1)
    {
      sub_1000E40C4(v23, v18);
      sub_1000E40C4(v25, v14);
      Date.timeIntervalSince1970.getter();
      v27 = v26;
      Date.timeIntervalSince1970.getter();
      v29 = v28;
      sub_1000E4128(v14);
      result = sub_1000E4128(v18);
      if (v29 >= v27)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v22 = v35 - 1;
        v23 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_1000E45C8(v23, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000E45C8(v11, v25);
      v25 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E1DB4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v107 = a1;
  v7 = type metadata accessor for BTDiscoveredDevice(0);
  v115 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v109 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v119 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v104 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v104 - v16;
  v117 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    v4 = *v107;
    if (!*v107)
    {
      goto LABEL_135;
    }

    a3 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v118;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a3;
    }

    else
    {
LABEL_129:
      result = sub_1001D99BC(a3);
    }

    v120 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v117)
      {
        v100 = *(result + 16 * a3);
        v101 = result;
        v102 = *(result + 16 * (a3 - 1) + 40);
        sub_1000E2644(*v117 + *(v115 + 72) * v100, *v117 + *(v115 + 72) * *(result + 16 * (a3 - 1) + 32), *v117 + *(v115 + 72) * v102, v4);
        if (v14)
        {
        }

        if (v102 < v100)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1001D99BC(v101);
        }

        if (a3 - 2 >= v101[2])
        {
          goto LABEL_123;
        }

        v103 = &v101[2 * a3];
        *v103 = v100;
        v103[1] = v102;
        v120 = v101;
        sub_1001D9930(a3 - 1);
        result = v120;
        a3 = *(v120 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v106 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v110 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v117;
      v25 = *(v115 + 72);
      v4 = *v117 + v25 * v22;
      sub_1000E40C4(v4, v17);
      sub_1000E40C4(v24 + v25 * v23, v14);
      Date.timeIntervalSince1970.getter();
      v27 = v26;
      Date.timeIntervalSince1970.getter();
      v29 = v28;
      sub_1000E4128(v14);
      result = sub_1000E4128(v17);
      v105 = v23;
      a3 = v23 + 2;
      v116 = v25;
      v30 = v24 + v25 * a3;
      while (v18 != a3)
      {
        sub_1000E40C4(v30, v17);
        sub_1000E40C4(v4, v14);
        Date.timeIntervalSince1970.getter();
        v32 = v31;
        Date.timeIntervalSince1970.getter();
        v34 = v33;
        sub_1000E4128(v14);
        result = sub_1000E4128(v17);
        ++a3;
        v30 += v116;
        v4 += v116;
        if (v29 < v27 == v34 >= v32)
        {
          v18 = a3 - 1;
          break;
        }
      }

      v21 = v105;
      a4 = v106;
      if (v29 < v27)
      {
        if (v18 < v105)
        {
          goto LABEL_126;
        }

        if (v105 < v18)
        {
          v4 = v116 * (v18 - 1);
          v35 = v18 * v116;
          v114 = v18;
          v36 = v105;
          a3 = v105 * v116;
          do
          {
            if (v36 != --v18)
            {
              v113 = v18;
              v37 = *v117;
              if (!*v117)
              {
                goto LABEL_132;
              }

              sub_1000E45C8(v37 + a3, v109);
              if (a3 < v4 || v37 + a3 >= v37 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
                v18 = v113;
              }

              else
              {
                v18 = v113;
                if (a3 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_1000E45C8(v109, v37 + v4);
            }

            ++v36;
            v4 -= v116;
            v35 -= v116;
            a3 += v116;
          }

          while (v36 < v18);
          v21 = v105;
          a4 = v106;
          v18 = v114;
        }
      }
    }

    v38 = v117[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if (v21 + a4 >= v38)
        {
          v4 = v117[1];
        }

        else
        {
          v4 = v21 + a4;
        }

        if (v4 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v4)
        {
          break;
        }
      }
    }

    v4 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v110;
    }

    else
    {
      result = sub_100102974(0, v110[2] + 1, 1, v110);
      v20 = result;
    }

    a3 = v20[2];
    v39 = v20[3];
    v40 = a3 + 1;
    if (a3 >= v39 >> 1)
    {
      result = sub_100102974((v39 > 1), a3 + 1, 1, v20);
      v20 = result;
    }

    v20[2] = v40;
    v41 = &v20[2 * a3];
    v41[4] = v21;
    v41[5] = v4;
    v42 = *v107;
    if (!*v107)
    {
      goto LABEL_134;
    }

    v111 = v4;
    if (a3)
    {
      while (1)
      {
        v4 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = v20[4];
          v44 = v20[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_113;
          }

          v59 = &v20[2 * v40];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_116;
          }

          v65 = &v20[2 * v4 + 4];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_120;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v4 = v40 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v20[2 * v40];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_115;
        }

        v72 = &v20[2 * v4];
        v74 = v72[4];
        v73 = v72[5];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v4 - 1;
        if (v4 - 1 >= v40)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_128;
        }

        if (!*v117)
        {
          goto LABEL_131;
        }

        v80 = v20;
        v81 = v20[2 * a3 + 4];
        v82 = v20[2 * v4 + 5];
        v83 = v118;
        sub_1000E2644(*v117 + *(v115 + 72) * v81, *v117 + *(v115 + 72) * v20[2 * v4 + 4], *v117 + *(v115 + 72) * v82, v42);
        v118 = v83;
        if (v83)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1001D99BC(v80);
        }

        if (a3 >= v80[2])
        {
          goto LABEL_110;
        }

        v84 = &v80[2 * a3];
        v84[4] = v81;
        v84[5] = v82;
        v120 = v80;
        result = sub_1001D9930(v4);
        v20 = v120;
        v40 = *(v120 + 16);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v20[2 * v40 + 4];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_111;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_112;
      }

      v54 = &v20[2 * v40];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_114;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_117;
      }

      if (v58 >= v50)
      {
        v76 = &v20[2 * v4 + 4];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_121;
        }

        if (v45 < v79)
        {
          v4 = v40 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v117[1];
    v19 = v111;
    a4 = v106;
    if (v111 >= v18)
    {
      goto LABEL_96;
    }
  }

  a3 = *v117;
  v85 = *(v115 + 72);
  v86 = *v117 + v85 * (v18 - 1);
  v87 = -v85;
  v105 = v21;
  v88 = v21 - v18;
  v108 = v85;
  v89 = a3 + v18 * v85;
  v111 = v4;
LABEL_85:
  v113 = v88;
  v114 = v18;
  v112 = v89;
  v90 = v89;
  v91 = v88;
  v116 = v86;
  v92 = v86;
  while (1)
  {
    sub_1000E40C4(v90, v17);
    sub_1000E40C4(v92, v14);
    Date.timeIntervalSince1970.getter();
    v94 = v93;
    Date.timeIntervalSince1970.getter();
    v96 = v95;
    sub_1000E4128(v14);
    result = sub_1000E4128(v17);
    if (v96 >= v94)
    {
LABEL_84:
      v18 = v114 + 1;
      v86 = v116 + v108;
      v88 = v113 - 1;
      v4 = v111;
      v89 = v112 + v108;
      if (v114 + 1 != v111)
      {
        goto LABEL_85;
      }

      v21 = v105;
      if (v111 < v105)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a3)
    {
      break;
    }

    v97 = v119;
    sub_1000E45C8(v90, v119);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000E45C8(v97, v92);
    v92 += v87;
    v90 += v87;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1000E2644(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for BTDiscoveredDevice(0);
  v9 = __chkstk_darwin(v8);
  v50 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v42 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_59;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v16 = (a2 - a1) / v14;
  v53 = a1;
  v52 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = a4 + v18;
      v45 = v27;
      v46 = a1;
      v44 = v8;
      do
      {
        v42 = v26;
        v29 = a2 + v27;
        v47 = a2;
        v48 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v53 = a2;
            v51 = v42;
            goto LABEL_57;
          }

          v43 = v26;
          v31 = a3 + v27;
          v32 = v28 + v27;
          v33 = v49;
          v34 = v28;
          sub_1000E40C4(v32, v49);
          v35 = v50;
          sub_1000E40C4(v29, v50);
          Date.timeIntervalSince1970.getter();
          v37 = v36;
          Date.timeIntervalSince1970.getter();
          v39 = v38;
          sub_1000E4128(v35);
          sub_1000E4128(v33);
          if (v39 < v37)
          {
            break;
          }

          v26 = v32;
          if (a3 < v34 || v31 >= v34)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v46;
          }

          else
          {
            v40 = a3 == v34;
            a3 = v31;
            a1 = v46;
            if (!v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v30 = v32 > a4;
          a2 = v47;
          v29 = v48;
          v27 = v45;
          if (!v30)
          {
            goto LABEL_55;
          }
        }

        v41 = v34;
        if (a3 < v47 || v31 >= v47)
        {
          a3 = v31;
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v45;
          a1 = v46;
          v26 = v43;
        }

        else
        {
          v40 = a3 == v47;
          a3 = v31;
          v26 = v43;
          a2 = v48;
          v27 = v45;
          a1 = v46;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v41;
      }

      while (v41 > a4);
    }

LABEL_55:
    v53 = a2;
    v51 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v51 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v49;
        sub_1000E40C4(a2, v49);
        v21 = v50;
        sub_1000E40C4(a4, v50);
        Date.timeIntervalSince1970.getter();
        v23 = v22;
        Date.timeIntervalSince1970.getter();
        v25 = v24;
        sub_1000E4128(v21);
        sub_1000E4128(v20);
        if (v25 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v53 = a1;
      }

      while (a4 < v48 && a2 < a3);
    }
  }

LABEL_57:
  sub_1001D99D0(&v53, &v52, &v51);
  return 1;
}

BOOL sub_1000E2B14()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v0 = qword_1002B1CF0;
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v2 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v4 = *(v0 + v1);
  v5 = v3;

  os_unfair_lock_unlock(v4 + 4);

  if (v3)
  {

    return 1;
  }

  else
  {
    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    return (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) & 0xFE) == 2;
  }
}

uint64_t sub_1000E2C2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v38 = *a1 >> 62;
  if (v38)
  {
    goto LABEL_71;
  }

  v41 = v2 & 0xFFFFFFFFFFFFFF8;
  v44 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v43 = a2 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
  v40 = v2 & 0xC000000000000001;
  while (v44 != v3)
  {
    if (v40)
    {
      v4 = v2;
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v41 + 16))
      {
        goto LABEL_67;
      }

      v4 = v2;
      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v7 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    sub_1000A0CD8(v6, v7);
    v8 = sub_10014025C(v6, v7);
    v10 = v9;
    sub_1000A0D2C(v6, v7);
    v2 = *(v43 + 32);
    v11 = *(v43 + 40);
    sub_1000A0CD8(v2, v11);
    v12 = sub_10014025C(v2, v11);
    v14 = v13;
    sub_1000A0D2C(v2, v11);
    if (v8 == v12 && v10 == v14)
    {

LABEL_21:
      v19 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      while (2)
      {
        if (v4 >> 62)
        {
          if (v19 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v3;
          }
        }

        else if (v19 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v3;
        }

        v44 = v4;
        v42 = v4 & 0xC000000000000001;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v41 = v2 & 0xFFFFFFFFFFFFFF8;
            v36 = a2;
            v37 = _CocoaArrayWrapper.endIndex.getter();
            a2 = v36;
            v44 = v37;
            goto LABEL_3;
          }

          if (v19 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v20 = *(v4 + 8 * v19 + 32);
        }

        v21 = *(v20 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
        v22 = *(v20 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
        sub_1000A0CD8(v21, v22);
        v23 = sub_10014025C(v21, v22);
        v25 = v24;
        sub_1000A0D2C(v21, v22);
        v26 = *(v43 + 32);
        v2 = *(v43 + 40);
        sub_1000A0CD8(v26, v2);
        v27 = sub_10014025C(v26, v2);
        v29 = v28;
        sub_1000A0D2C(v26, v2);
        if (v23 == v27 && v25 == v29)
        {
LABEL_24:
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            v4 = v44;
            if (v3 != v19)
            {
              if (v42)
              {
                v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_73:
                  __break(1u);
LABEL_74:
                  __break(1u);
                  return result;
                }

                v34 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v3 >= v34)
                {
                  goto LABEL_73;
                }

                if (v19 >= v34)
                {
                  goto LABEL_74;
                }

                v32 = *(v44 + 32 + 8 * v3);
                v33 = *(v44 + 32 + 8 * v19);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
              {
                v4 = sub_1001A347C();
                v2 = (v4 >> 62) & 1;
              }

              else
              {
                v2 = 0;
              }

              v35 = v4 & 0xFFFFFFFFFFFFFF8;
              *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v33;

              if ((v4 & 0x8000000000000000) != 0 || v2)
              {
                v4 = sub_1001A347C();
                v35 = v4 & 0xFFFFFFFFFFFFFF8;
                if ((v19 & 0x8000000000000000) != 0)
                {
LABEL_62:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v19 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              if (v19 >= *(v35 + 16))
              {
                goto LABEL_70;
              }

              *(v35 + 8 * v19 + 32) = v32;

              *a1 = v4;
            }

            v17 = __OFADD__(v3++, 1);
            if (v17)
            {
              goto LABEL_69;
            }

            goto LABEL_26;
          }
        }

        v4 = v44;
LABEL_26:
        v17 = __OFADD__(v19++, 1);
        if (v17)
        {
          goto LABEL_66;
        }

        continue;
      }
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_21;
    }

    v17 = __OFADD__(v3++, 1);
    v2 = v4;
    if (v17)
    {
      goto LABEL_68;
    }
  }

  if (v38)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v41 + 16);
}

uint64_t sub_1000E3114()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000E315C(uint64_t *a1, uint64_t a2)
{
  v31 = a2;
  v30 = type metadata accessor for UUID();
  v3 = __chkstk_darwin(v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v8 = &v25 - v7;
  v26 = a1;
  v35 = *a1;
  v9 = (v35 + 16);
  v28 = *(v35 + 16);
  if (!v28)
  {
    return *v9;
  }

  v10 = 0;
  v29 = (v6 + 8);
  for (i = 56; ; i += 40)
  {
    v12 = *(*sub_1000A09E0((v35 + i - 24), *(v35 + i)) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v12) = static UUID.== infix(_:_:)();
    v13 = v30;
    v14 = *v29;
    (*v29)(v5, v30);
    result = (v14)(v8, v13);
    if (v12)
    {
      break;
    }

    if (v28 == ++v10)
    {
      return *v9;
    }
  }

  v16 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_28;
  }

  v17 = *v9;
  if (v16 == *v9)
  {
    return v10;
  }

  v18 = i + 16;
  v19 = v35;
  v27 = v8;
  while (v16 < v17)
  {
    v35 = v19;
    v28 = v18;
    sub_1000A097C(v19 + v18, &v33);
    v21 = *(*sub_1000A09E0(&v33, v34) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v21) = static UUID.== infix(_:_:)();
    v22 = v30;
    v14(v5, v30);
    v14(v8, v22);
    result = sub_100095808(&v33);
    if (v21)
    {
      v19 = v35;
      v8 = v27;
      v20 = v28;
    }

    else if (v16 == v10)
    {
      v19 = v35;
      v8 = v27;
      v20 = v28;
      ++v10;
    }

    else
    {
      v19 = v35;
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v23 = *v9;
      if (v10 >= *v9)
      {
        goto LABEL_25;
      }

      result = sub_1000A097C(v35 + 32 + 40 * v10, &v33);
      if (v16 >= v23)
      {
        goto LABEL_26;
      }

      v20 = v28;
      sub_1000A097C(v19 + v28, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10019F76C(v19);
      }

      v8 = v27;
      v24 = &v19[5 * v10];
      sub_100095808(v24 + 4);
      result = sub_1000A0D80(v32, (v24 + 4));
      if (v16 >= v19[2])
      {
        goto LABEL_27;
      }

      sub_100095808((v19 + v20));
      result = sub_1000A0D80(&v33, v19 + v20);
      *v26 = v19;
      ++v10;
    }

    ++v16;
    v9 = v19 + 2;
    v17 = v19[2];
    v18 = v20 + 40;
    if (v16 == v17)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000E34CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, id **a6)
{
  result = __DataStorage._bytes.getter();
  v13 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v13 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  result = sub_1001B1A44(v13, a4, a5, a6, &v14);
  if (!v6)
  {
    return v14;
  }

  return result;
}

id sub_1000E3590(uint64_t *a1, uint64_t a2)
{
  v33 = a2;
  v32 = type metadata accessor for UUID();
  v3 = __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v8 = &v27 - v7;
  v28 = a1;
  v37 = *a1;
  v9 = (v37 + 16);
  v30 = *(v37 + 16);
  if (!v30)
  {
    return *v9;
  }

  v10 = 0;
  v31 = (v6 + 8);
  for (i = 56; ; i += 40)
  {
    v12 = *(*sub_1000A09E0((v37 + i - 24), *(v37 + i)) + 24);
    DockCoreInfo.identifier.getter();

    v13 = *(v33 + 24);
    DockCoreInfo.identifier.getter();

    LOBYTE(v13) = static UUID.== infix(_:_:)();
    v14 = v32;
    v15 = *v31;
    (*v31)(v5, v32);
    result = (v15)(v8, v14);
    if (v13)
    {
      break;
    }

    if (v30 == ++v10)
    {
      return *v9;
    }
  }

  v17 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_28;
  }

  v18 = *v9;
  if (v17 == *v9)
  {
    return v10;
  }

  v19 = i + 16;
  v20 = v37;
  v29 = v8;
  while (v17 < v18)
  {
    v37 = v20;
    v30 = v19;
    sub_1000A097C(v20 + v19, &v35);
    v22 = *(*sub_1000A09E0(&v35, v36) + 24);
    DockCoreInfo.identifier.getter();

    v23 = *(v33 + 24);
    DockCoreInfo.identifier.getter();

    LOBYTE(v23) = static UUID.== infix(_:_:)();
    v24 = v32;
    v15(v5, v32);
    v15(v8, v24);
    result = sub_100095808(&v35);
    if (v23)
    {
      v20 = v37;
      v8 = v29;
      v21 = v30;
    }

    else if (v17 == v10)
    {
      v20 = v37;
      v8 = v29;
      v21 = v30;
      ++v10;
    }

    else
    {
      v20 = v37;
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v25 = *v9;
      if (v10 >= *v9)
      {
        goto LABEL_25;
      }

      result = sub_1000A097C(v37 + 32 + 40 * v10, &v35);
      if (v17 >= v25)
      {
        goto LABEL_26;
      }

      v21 = v30;
      sub_1000A097C(v20 + v30, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10019F76C(v20);
      }

      v8 = v29;
      v26 = &v20[5 * v10];
      sub_100095808(v26 + 4);
      result = sub_1000A0D80(v34, (v26 + 4));
      if (v17 >= v20[2])
      {
        goto LABEL_27;
      }

      sub_100095808((v20 + v21));
      result = sub_1000A0D80(&v35, v20 + v21);
      *v28 = v20;
      ++v10;
    }

    ++v17;
    v9 = v20 + 2;
    v18 = v20[2];
    v19 = v21 + 40;
    if (v17 == v18)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000E3924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_1000DCE30(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E39E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E3A24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1000DCF1C();
}

uint64_t sub_1000E3AE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E3B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_1000DD40C(a1, v4, v5, v7, v6);
}

unint64_t sub_1000E3C10()
{
  result = qword_1002A7AC0;
  if (!qword_1002A7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7AC0);
  }

  return result;
}

uint64_t sub_1000E3CC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000E3D28(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v6 = static UUID.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1000E3E3C(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  result = sub_1000E3D28(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v10 = static UUID.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v13)
          {
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            goto LABEL_46;
          }

          v11 = *(v4 + 32 + 8 * v7);
          v12 = *(v4 + 32 + 8 * v8);
        }

        v14 = v3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1001A347C();
          v15 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v12;

        if ((v4 & 0x8000000000000000) != 0 || v15)
        {
          v4 = sub_1001A347C();
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_43;
        }

        v3 = v14;
        *(v16 + 8 * v8 + 32) = v11;

        *v14 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000E40C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDiscoveredDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4128(uint64_t a1)
{
  v2 = type metadata accessor for BTDiscoveredDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000E4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1000A0CD8(a5, a6);
  }
}

void sub_1000E41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1000A0D2C(a5, a6);
  }
}

uint64_t sub_1000E4270()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E42E8()
{

  sub_1000A0D2C(*(v0 + 72), *(v0 + 80));

  if (*(v0 + 96))
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000E43EC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000E442C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000A139C;

  return sub_1000D4CEC(a1, a2, v6, v7, v8);
}

uint64_t sub_1000E454C()
{

  sub_1000A0D2C(*(v0 + 64), *(v0 + 72));

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000E45C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDiscoveredDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E462C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000E468C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E46D8()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E4764()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000E47B8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if (a4 != 2)
  {
    sub_1000A0D2C(a2, a3);

    sub_1000A0D2C(a5, a6);
  }
}

uint64_t sub_1000E4814()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E485C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E48A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4984(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000E49D4(const char *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

void *sub_1000E4B34(uint64_t a1, unint64_t a2, const char *a3, ...)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v7);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_4;
  }

  v13 = a3;
  v14 = swift_slowAlloc();
  result = swift_slowAlloc();
  v18 = result;
  *v14 = 136315138;
  if (a2)
  {
    v16 = result;
    *(v14 + 4) = sub_1000952D4(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, v13, v14, 0xCu);
    sub_100095808(v16);

LABEL_4:

    return (*(v8 + 8))(v10, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E4D54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E4E98()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_shouldScan] = 0;
  v9 = *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000E524C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276F40;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_1000E5288();
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E5128()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
  {

    sub_1000F5AB8();
  }

  v2 = (v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match);
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match);
  if (v3)
  {
    v4 = v2[1];

    v3(0);
    sub_1000BAA84(v3, v4);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1000BAA84(v5, v6);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_filter;
  swift_beginAccess();
  sub_1000E52E0(v9, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_1000E5214()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E5270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000E5288()
{
  result = qword_1002A7150;
  if (!qword_1002A7150)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7150);
  }

  return result;
}

uint64_t sub_1000E52E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7B30, &qword_10023CA08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5368(uint64_t a1)
{
  v2 = sub_1000E70F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E53A4(uint64_t a1)
{
  v2 = sub_1000E70F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E54C0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1000E54FC(uint64_t a1)
{
  v2 = sub_1000E7144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E5538(uint64_t a1)
{
  v2 = sub_1000E7144();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E55B8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100095274(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_1000A09E0(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000E56D8()
{
  v1[2] = v0;
  v2 = type metadata accessor for ActivityPresentationOptions();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v1[6] = swift_task_alloc();
  v3 = sub_100095274(&qword_1002A7C78, &qword_10023CBF8);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_1000E586C, v5, v4);
}

uint64_t sub_1000E586C()
{
  v1 = v0[6];

  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1000E6F94();
  sub_1000E6FEC();
  sub_1000E7044();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_100095274(&qword_1002A7C90, &unk_10023CC18);
  v3 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10023C170;
  (*(v4 + 104))(v6 + v5, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v3);
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  sub_100095274(&qword_1002A7C80, &qword_10023CC00);
  v7 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[2];
  v14 = v0[3];
  *(v13 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity) = v7;

  sub_1000E5B80();
  (*(v12 + 8))(v11, v14);
  (*(v9 + 8))(v8, v10);
  *(v13 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal) = 1;

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000E5B80()
{
  v1 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  result = __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity);
  if (v5)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v7[5] = v0;

    *(v0 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask) = sub_1001B6410(0, 0, v4, &unk_10023CC30, v7);
  }

  return result;
}

uint64_t sub_1000E5CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for ActivityState();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  sub_100095274(&qword_1002A7C98, &qword_10023CC38);
  v5[11] = swift_task_alloc();
  v7 = sub_100095274(&qword_1002A7CA0, &qword_10023CC40);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_100095274(&qword_1002A7CA8, &unk_10023CC48);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000E5EA0, 0, 0);
}

uint64_t sub_1000E5EA0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal;
  *(v0 + 144) = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_logger;
  *(v0 + 152) = v4;
  LODWORD(v4) = enum case for ActivityState.active(_:);
  *(v0 + 176) = enum case for ActivityState.pending(_:);
  *(v0 + 180) = v4;
  LODWORD(v4) = enum case for ActivityState.dismissed(_:);
  *(v0 + 184) = enum case for ActivityState.ended(_:);
  *(v0 + 188) = v4;
  *(v0 + 192) = enum case for ActivityState.stale(_:);
  v5 = sub_1000E7308();
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_1000E5FF8;
  v7 = *(v0 + 120);
  v8 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v7, v5);
}

uint64_t sub_1000E5FF8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1000E6630;
  }

  else
  {
    v2 = sub_1000E610C;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000E6128()
{
  v41 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v4 = *(v0 + 8);

    return v4();
  }

  (*(v3 + 32))(*(v0 + 80), v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 48) + 8))(*(v0 + 80), *(v0 + 40));
    goto LABEL_4;
  }

  v6 = *(*(v0 + 48) + 16);
  v6(*(v0 + 72), *(v0 + 80), *(v0 + 40));
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 72);
  if (v9)
  {
    v11 = *(v0 + 64);
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v39 = v6;
    v17 = v16;
    v18 = v13;
    v19 = *(v12 + 8);
    v19(v10, v18);
    v20 = sub_1000952D4(v15, v17, &v40);
    v6 = v39;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "activity state updated to %s", v14, 0xCu);
    sub_100095808(v38);
  }

  else
  {
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);

    v19 = *(v22 + 8);
    v19(v10, v21);
  }

  v24 = *(v0 + 180);
  v23 = *(v0 + 184);
  v25 = *(v0 + 176);
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);
  v28 = *(v0 + 40);
  v6(v26, *(v0 + 80), v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 != v25 && v29 != v24 && v29 != v23)
  {
    if (v29 == *(v0 + 188))
    {
      if ((*(*(v0 + 32) + *(v0 + 152)) & 1) == 0)
      {
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v30 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlOnNotification);
        DeviceNotification.state.setter();

        v31 = [objc_opt_self() sharedInstance];
        v32 = String._bridgeToObjectiveC()();
        v33 = String._bridgeToObjectiveC()();
        [v31 reloadControlsForExtension:v32 kind:0 reason:v33];
      }
    }

    else if (v29 != *(v0 + 192))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  v19(*(v0 + 80), *(v0 + 40));
  v34 = sub_1000E7308();
  v35 = swift_task_alloc();
  *(v0 + 160) = v35;
  *v35 = v0;
  v35[1] = sub_1000E5FF8;
  v36 = *(v0 + 120);
  v37 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v37, v36, v34);
}

uint64_t sub_1000E6630()
{
  *(v0 + 16) = *(v0 + 168);
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E66BC(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 104) = a1;
  v3 = type metadata accessor for ActivityUIDismissalPolicy();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  sub_100095274(&qword_1002A7C70, &qword_10023CBF0);
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 64) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;

  return (_swift_task_switch)(sub_1000E67EC, v5, v4);
}

uint64_t sub_1000E67EC()
{
  v18 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity);
  *(v0 + 88) = v1;
  if (v1)
  {
    swift_retain_n();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      *(v0 + 16) = v1;

      sub_100095274(&qword_1002A7C80, &qword_10023CC00);
      v6 = String.init<A>(describing:)();
      v8 = sub_1000952D4(v6, v7, &v17);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Ending activity %s", v4, 0xCu);
      sub_100095808(v5);
    }

    v9 = *(v0 + 56);
    *(*(v0 + 24) + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal) = *(v0 + 104);
    dispatch thunk of Activity.content.getter();
    v10 = sub_100095274(&qword_1002A7C78, &qword_10023CBF8);
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    static ActivityUIDismissalPolicy.immediate.getter();
    v16 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *v11 = v0;
    v11[1] = sub_1000E6A98;
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);

    return v16(v13, v12);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000E6A98()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);

  (*(v4 + 8))(v3, v5);
  sub_1000E7198(v2);
  v6 = *(v1 + 80);
  v7 = *(v1 + 72);

  return (_swift_task_switch)(sub_1000E6C38, v7, v6);
}

uint64_t sub_1000E6C38()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask;
  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask))
  {

    Task.cancel()();
  }

  *(v1 + v2) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000E6D08(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackingActivity(uint64_t a1)
{
  result = qword_1002A7B78;
  if (!qword_1002A7B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E6E28(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000E6EE4()
{
  result = qword_1002A7C20;
  if (!qword_1002A7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C20);
  }

  return result;
}

unint64_t sub_1000E6F3C()
{
  result = qword_1002A7C28;
  if (!qword_1002A7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C28);
  }

  return result;
}

unint64_t sub_1000E6F94()
{
  result = qword_1002A7C30;
  if (!qword_1002A7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C30);
  }

  return result;
}

unint64_t sub_1000E6FEC()
{
  result = qword_1002A7C38;
  if (!qword_1002A7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C38);
  }

  return result;
}

unint64_t sub_1000E7044()
{
  result = qword_1002A7C40;
  if (!qword_1002A7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C40);
  }

  return result;
}

unint64_t sub_1000E709C()
{
  result = qword_1002A7C48;
  if (!qword_1002A7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C48);
  }

  return result;
}

unint64_t sub_1000E70F0()
{
  result = qword_1002A7C58;
  if (!qword_1002A7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C58);
  }

  return result;
}

unint64_t sub_1000E7144()
{
  result = qword_1002A7C68;
  if (!qword_1002A7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C68);
  }

  return result;
}

uint64_t sub_1000E7198(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A7C70, &qword_10023CBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E7200()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E7248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009862C;

  return sub_1000E5CB4(a1, v4, v5, v7, v6);
}

unint64_t sub_1000E7308()
{
  result = qword_1002A7CB0;
  if (!qword_1002A7CB0)
  {
    sub_10009589C(&qword_1002A7CA8, &unk_10023CC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CB0);
  }

  return result;
}

unint64_t sub_1000E73A0()
{
  result = qword_1002A7CB8;
  if (!qword_1002A7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CB8);
  }

  return result;
}

unint64_t sub_1000E73F8()
{
  result = qword_1002A7CC0;
  if (!qword_1002A7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CC0);
  }

  return result;
}

unint64_t sub_1000E7450()
{
  result = qword_1002A7CC8;
  if (!qword_1002A7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CC8);
  }

  return result;
}

unint64_t sub_1000E74A8()
{
  result = qword_1002A7CD0;
  if (!qword_1002A7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CD0);
  }

  return result;
}

uint64_t sub_1000E751C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000E75AC;

  return sub_1000E7998(v2, v3);
}

uint64_t sub_1000E75AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v5 = v4[1];

    __asm { BRAA            X2, X16 }
  }

  return (_swift_task_switch)(sub_1000E76E4, 0, 0);
}

uint64_t sub_1000E76E4()
{
  sub_10013B46C(v0[4], v0[5]);
  v1 = String.uppercased()();

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);
    v5 = v4;
    v6 = v2;

    if (!v4)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = [v5 identifier];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = v2;
  }

  v12 = 0;
  v11 = 0xE000000000000000;
LABEL_9:
  v14 = sub_1001762B8(v12, v11, 1);
  v15 = v14;
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_23:
    v26 = v0[4];
    v25 = v0[5];

    v23 = v26;
    v24 = v25;
    goto LABEL_24;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v16 = *(v15 + 32);

LABEL_14:

  v18 = *(v16 + 136);
  v17 = *(v16 + 144);

  if (v17)
  {
    v20 = v0[4];
    v19 = v0[5];
    if (v1._countAndFlagsBits == v18 && v17 == v1._object)
    {

      sub_1000A0D2C(v20, v19);

      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000A0D2C(v20, v19);
    }

    goto LABEL_25;
  }

  v23 = v0[4];
  v24 = v0[5];
LABEL_24:
  sub_1000A0D2C(v23, v24);
  v22 = 0;
LABEL_25:
  v27 = v0[1];

  return v27(v22 & 1, v1._countAndFlagsBits, v1._object);
}

uint64_t sub_1000E7998(uint64_t a1, uint64_t a2)
{
  v3[4] = v2;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000E7A58, 0, 0);
}

uint64_t sub_1000E7A58()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(Strong + 32);
  v0[8] = v2;
  v3 = v2;

  if (!v2)
  {
    goto LABEL_17;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

LABEL_17:
    v29 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v30 = 0;
    v30[1] = 0xE000000000000000;
    (*(*(v29 - 8) + 104))(v30, enum case for Errors.AccessoryServerNil(_:), v29);
    swift_willThrow();
    goto LABEL_18;
  }

  v5 = v4;
  v6 = [v4 primaryAccessory];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    sub_100095274(&unk_1002A73A0, &qword_10023C670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10023C170;
    *(v9 + 56) = &type metadata for UInt32;
    *(v9 + 64) = &protocol witness table for UInt32;
    *(v9 + 32) = 262;
    String.init(format:_:)();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v8 UUIDWithString:v10];

    v12 = [v11 UUIDString];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10023C170;
    *(v13 + 56) = &type metadata for UInt32;
    *(v13 + 64) = &protocol witness table for UInt32;
    *(v13 + 32) = 256;
    String.init(format:_:)();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v8 UUIDWithString:v14];

    v16 = [v15 UUIDString];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    v17 = [v7 characteristicOfType:v12 serviceType:{v16, 1, 2}];
    v0[9] = v17;

    if (v17)
    {
      (*(v0[6] + 16))(v0[7], v0[4] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger, v0[5]);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Reading Accessory Description hash...", v20, 2u);
      }

      v22 = v0[6];
      v21 = v0[7];
      v24 = v0[4];
      v23 = v0[5];

      (*(v22 + 8))(v21, v23);
      v25 = swift_task_alloc();
      v0[10] = v25;
      v25[2] = v5;
      v25[3] = v17;
      v25[4] = v24;
      v26 = swift_task_alloc();
      v0[11] = v26;
      *v26 = v0;
      v26[1] = sub_1000E8038;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001ELL, 0x8000000100230C60, sub_1000EBEE8, v25, &type metadata for Data);
    }
  }

  v27 = type metadata accessor for Errors();
  sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  swift_allocError();
  *v28 = 0xD000000000000033;
  v28[1] = 0x8000000100230C20;
  (*(*(v27 - 8) + 104))(v28, enum case for Errors.NotFound(_:), v27);
  swift_willThrow();

LABEL_18:

  v31 = v0[1];

  return v31();
}

uint64_t sub_1000E8038()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000E81DC;
  }

  else
  {

    v2 = sub_1000E8154;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000E8154()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1000E81DC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000E8258(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10023BDA0;
  *(v12 + 32) = a3;
  sub_1000EBEF4(0, v13);
  v14 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = *(a4 + 24);
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_1000EBFD4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_100277060;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  [a2 readCharacteristicValues:isa timeout:v20 completionQueue:v19 completionHandler:10.0];
  _Block_release(v19);
}

uint64_t sub_1000E8498(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *&v14[0] = a2;
    swift_errorRetain();
  }

  else
  {
    if (result)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v2 = *(result + 32);
      }

      v3 = v2;
      v4 = [v2 value];

      if (v4)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14[0] = v12;
      v14[1] = v13;
      if (*(&v13 + 1))
      {
        if (swift_dynamicCast())
        {
          v14[0] = v11;
          sub_100095274(&qword_1002A7E48, &unk_10023CE50);
          return CheckedContinuation.resume(returning:)();
        }
      }

      else
      {
        sub_100095C84(v14, &qword_1002A9210, &unk_10023BE70);
      }

      v5 = type metadata accessor for Errors();
      sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v7 = swift_allocError();
      v8 = v6;
      v9 = 0x8000000100230CD0;
      v10 = 0xD00000000000002CLL;
    }

    else
    {
      v5 = type metadata accessor for Errors();
      sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v7 = swift_allocError();
      v8 = v6;
      v9 = 0x8000000100230C80;
      v10 = 0xD000000000000048;
    }

    *v6 = v10;
    v6[1] = v9;
    (*(*(v5 - 8) + 104))(v8, enum case for Errors.CharacteristicReadWriteFailure(_:), v5);
    *&v14[0] = v7;
  }

  sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1000E871C()
{
  v1[19] = v0;
  v2 = type metadata accessor for SHA512();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for SHA512Digest();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[33] = v5;
  *v5 = v1;
  v5[1] = sub_1000E88F0;

  return sub_1000E7998(v5, v6);
}

uint64_t sub_1000E88F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;

  if (v2)
  {

    v5 = v4[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000E8A8C, 0, 0);
}

uint64_t sub_1000E8A8C()
{
  v28 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 152);
  sub_10013B46C(*(v0 + 272), *(v0 + 280));
  v5 = String.uppercased()();

  *(v0 + 288) = v5;
  v6 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  *(v0 + 304) = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v7 = *(v3 + 16);
  *(v0 + 312) = v7;
  *(v0 + 320) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 256);
  v12 = *(v0 + 224);
  v26 = *(v0 + 216);
  if (v10)
  {
    v25 = v4;
    v13 = swift_slowAlloc();
    v24 = v11;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000952D4(v5._countAndFlagsBits, v5._object, &v27);
    _os_log_impl(&_mh_execute_header, v8, v9, "read Accessory Description hash 0x%s", v13, 0xCu);
    sub_100095808(v14);

    v4 = v25;

    v15 = *(v12 + 8);
    v15(v24, v26);
  }

  else
  {

    v15 = *(v12 + 8);
    v15(v11, v26);
  }

  *(v0 + 328) = v15;
  v7(*(v0 + 248), v4 + v6, *(v0 + 216));
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Initiating Accessory Description transfer...", v18, 2u);
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 216);

  v15(v19, v20);
  v21 = swift_task_alloc();
  *(v0 + 336) = v21;
  *v21 = v0;
  v21[1] = sub_1000E8D54;

  return sub_1000EA5B0(v21, v22);
}

uint64_t sub_1000E8D54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {

    v4[48] = v2;
    v5 = sub_1000EA0FC;
  }

  else
  {
    v5 = sub_1000E8E84;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_1000E8E84()
{
  v78 = v0;
  v1 = *(v0 + 152);
  v2 = *(v1 + 32);
  *(v0 + 368) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    *v3 = v0;
    v3[1] = sub_1000E9778;

    return sub_1001D1410(v3, v4);
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 344);
  *(v1 + 32) = 0;
  sub_1000A0CD8(v7, v6);
  v8 = sub_10016282C(v7, v6);
  v10 = v9;
  v11 = *(v0 + 344);
  v12 = *(v0 + 352);
  if (v10)
  {
    v71 = v8;
    v72 = v10;
LABEL_13:
    sub_1000A0D2C(v11, v12);
    goto LABEL_14;
  }

  *(v0 + 96) = v11;
  *(v0 + 104) = v12;
  sub_1000A0CD8(v11, v12);
  sub_100095274(&unk_1002A9C00, &unk_10023BED0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_100095C84(v0 + 56, &unk_1002A6F70, &unk_10023CE60);
LABEL_12:
    v13 = *(v0 + 344);
    v14 = *(v0 + 352);
    v71 = sub_100162514(v13, v14);
    v72 = v15;
    v11 = v13;
    v12 = v14;
    goto LABEL_13;
  }

  sub_1000A0D80((v0 + 56), v0 + 16);
  sub_1000A09E0((v0 + 16), *(v0 + 40));
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_100095808((v0 + 16));
    goto LABEL_12;
  }

  sub_1000A0D2C(*(v0 + 344), *(v0 + 352));
  sub_1000A09E0((v0 + 16), *(v0 + 40));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v71 = *(v0 + 128);
  v72 = *(v0 + 136);
  sub_100095808((v0 + 16));
LABEL_14:
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v76 = *(v0 + 200);
  v18 = *(v0 + 192);
  v73 = *(v0 + 208);
  v74 = *(v0 + 184);
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 160);
  sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  dispatch thunk of HashFunction.init()();
  sub_1000A0CD8(v17, v16);
  sub_1000EBB7C(v17, v16, v19);
  sub_1000A0D2C(v17, v16);
  dispatch thunk of HashFunction.finalize()();
  (*(v20 + 8))(v19, v21);
  (*(v18 + 16))(v76, v73, v74);
  sub_1000EBE3C(&qword_1002A7E58, &type metadata accessor for SHA512Digest, &protocol conformance descriptor for SHA512Digest);
  isUniquelyReferenced_nonNull_native = dispatch thunk of Sequence.makeIterator()();
  v26 = *(v0 + 112);
  v25 = *(v0 + 120);
  v27 = *(v26 + 16);
  if (v25 == v27)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_16:
    v29 = *(v0 + 312);
    v30 = *(v0 + 304);
    v31 = *(v0 + 240);
    v32 = *(v0 + 216);
    v33 = *(v0 + 152);

    *(v0 + 144) = v28;
    sub_100095274(&qword_1002A7E60, &unk_10023CE70);
    sub_1000EBE84();
    BidirectionalCollection<>.joined(separator:)();

    v34 = String.uppercased()();

    v29(v31, v33 + v30, v32);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 328);
    v39 = *(v0 + 240);
    v40 = *(v0 + 216);
    if (v37)
    {
      v75 = *(v0 + 328);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v77 = v42;
      *v41 = 136315138;
      v43 = sub_1000952D4(v71, v72, &v77);

      *(v41 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Accessory Description is %s", v41, 0xCu);
      sub_100095808(v42);

      v75(v39, v40);
    }

    else
    {

      v38(v39, v40);
    }

    v52 = sub_1000EA454(*(v0 + 288), *(v0 + 296), v34._countAndFlagsBits, v34._object);

    if (v52)
    {
      (*(v0 + 312))(*(v0 + 232), *(v0 + 152) + *(v0 + 304), *(v0 + 216));
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Accessory Description hash match succeeded!!", v55, 2u);
      }

      v56 = *(v0 + 328);
      v57 = *(v0 + 232);
      v58 = *(v0 + 216);
      v59 = *(v0 + 208);
      v61 = *(v0 + 184);
      v60 = *(v0 + 192);
      sub_1000A0D2C(*(v0 + 272), *(v0 + 280));

      v56(v57, v58);
      (*(v60 + 8))(v59, v61);

      v62 = *(v0 + 8);

      __asm { BRAA            X3, X16 }
    }

    v64 = *(v0 + 344);
    v63 = *(v0 + 352);
    v65 = *(v0 + 208);
    v66 = *(v0 + 184);
    v67 = *(v0 + 192);
    v68 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v69 = swift_allocError();
    *v70 = 0xD000000000000029;
    v70[1] = 0x8000000100230BF0;
    (*(*(v68 - 8) + 104))(v70, enum case for Errors.CommunicationFailure(_:), v68);
    swift_willThrow();
    sub_1000A0D2C(v64, v63);
    (*(v67 + 8))(v65, v66);
    *(v0 + 384) = v69;
    isUniquelyReferenced_nonNull_native = sub_1000EA0FC;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    if ((v25 & 0x8000000000000000) == 0)
    {
      v28 = _swiftEmptyArrayStorage;
      while (v25 < *(v26 + 16))
      {
        v44 = *(v26 + 32 + v25);
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_10023C170;
        *(v45 + 56) = &type metadata for UInt8;
        *(v45 + 64) = &protocol witness table for UInt8;
        *(v45 + 32) = v44;
        v46 = String.init(format:_:)();
        v48 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844(0, v28[2] + 1, 1, v28);
          v28 = isUniquelyReferenced_nonNull_native;
        }

        v50 = v28[2];
        v49 = v28[3];
        if (v50 >= v49 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844((v49 > 1), v50 + 1, 1, v28);
          v28 = isUniquelyReferenced_nonNull_native;
        }

        ++v25;
        v28[2] = (v50 + 1);
        v51 = &v28[2 * v50];
        v51[4] = v46;
        v51[5] = v48;
        if (v27 == v25)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return (_swift_task_switch)(isUniquelyReferenced_nonNull_native, v23, v24);
}

uint64_t sub_1000E9778()
{

  return (_swift_task_switch)(sub_1000E9890, 0, 0);
}

uint64_t sub_1000E9890()
{
  v79 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  *(*(v0 + 152) + 32) = 0;

  sub_1000A0CD8(v2, v1);
  v3 = sub_10016282C(v2, v1);
  v5 = v4;
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  if (v5)
  {
    v72 = v3;
    v73 = v5;
  }

  else
  {
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    sub_1000A0CD8(v6, v7);
    sub_100095274(&unk_1002A9C00, &unk_10023BED0);
    if (swift_dynamicCast())
    {
      sub_1000A0D80((v0 + 56), v0 + 16);
      sub_1000A09E0((v0 + 16), *(v0 + 40));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_1000A0D2C(*(v0 + 344), *(v0 + 352));
        sub_1000A09E0((v0 + 16), *(v0 + 40));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v72 = *(v0 + 128);
        v73 = *(v0 + 136);
        sub_100095808((v0 + 16));
        goto LABEL_10;
      }

      sub_100095808((v0 + 16));
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_100095C84(v0 + 56, &unk_1002A6F70, &unk_10023CE60);
    }

    v8 = *(v0 + 344);
    v9 = *(v0 + 352);
    v72 = sub_100162514(v8, v9);
    v73 = v10;
    v6 = v8;
    v7 = v9;
  }

  sub_1000A0D2C(v6, v7);
LABEL_10:
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  v77 = *(v0 + 200);
  v13 = *(v0 + 192);
  v74 = *(v0 + 208);
  v75 = *(v0 + 184);
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  dispatch thunk of HashFunction.init()();
  sub_1000A0CD8(v12, v11);
  sub_1000EBB7C(v12, v11, v14);
  sub_1000A0D2C(v12, v11);
  dispatch thunk of HashFunction.finalize()();
  (*(v15 + 8))(v14, v16);
  (*(v13 + 16))(v77, v74, v75);
  sub_1000EBE3C(&qword_1002A7E58, &type metadata accessor for SHA512Digest, &protocol conformance descriptor for SHA512Digest);
  isUniquelyReferenced_nonNull_native = dispatch thunk of Sequence.makeIterator()();
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v76 = v0;
  v22 = *(v21 + 16);
  if (v20 == v22)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_12:
    v24 = v76[39];
    v25 = v76[38];
    v26 = v76[30];
    v27 = v76[27];
    v28 = v76[19];

    v76[18] = v23;
    sub_100095274(&qword_1002A7E60, &unk_10023CE70);
    sub_1000EBE84();
    BidirectionalCollection<>.joined(separator:)();

    v29 = String.uppercased()();
    v30 = v76;

    v24(v26, v28 + v25, v27);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v76[41];
    v35 = v76[30];
    v36 = v76[27];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78 = v38;
      *v37 = 136315138;
      v39 = sub_1000952D4(v72, v73, &v78);

      *(v37 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Accessory Description is %s", v37, 0xCu);
      sub_100095808(v38);
      v30 = v76;
    }

    else
    {
    }

    v34(v35, v36);
    v48 = sub_1000EA454(v30[36], v30[37], v29._countAndFlagsBits, v29._object);

    if (v48)
    {
      (v30[39])(v30[29], v30[19] + v30[38], v30[27]);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Accessory Description hash match succeeded!!", v51, 2u);
      }

      v52 = v30[41];
      v53 = v30[34];
      v54 = v30[35];
      v55 = v30[29];
      v56 = v30[27];
      v57 = v30[26];
      v58 = v30;
      v59 = v30[24];
      v60 = v58[23];
      sub_1000A0D2C(v53, v54);

      v52(v55, v56);
      (*(v59 + 8))(v57, v60);

      v61 = v58[1];

      __asm { BRAA            X3, X16 }
    }

    v62 = v30;
    v63 = v30[44];
    v64 = v62[43];
    v65 = v62[26];
    v66 = v62[23];
    v67 = v62[24];
    v68 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v69 = swift_allocError();
    *v70 = 0xD000000000000029;
    v70[1] = 0x8000000100230BF0;
    (*(*(v68 - 8) + 104))(v70, enum case for Errors.CommunicationFailure(_:), v68);
    swift_willThrow();
    sub_1000A0D2C(v64, v63);
    (*(v67 + 8))(v65, v66);
    v62[48] = v69;
    isUniquelyReferenced_nonNull_native = sub_1000EA0FC;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      v23 = _swiftEmptyArrayStorage;
      while (v20 < *(v21 + 16))
      {
        v40 = *(v21 + 32 + v20);
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_10023C170;
        *(v41 + 56) = &type metadata for UInt8;
        *(v41 + 64) = &protocol witness table for UInt8;
        *(v41 + 32) = v40;
        v42 = String.init(format:_:)();
        v44 = v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844(0, v23[2] + 1, 1, v23);
          v23 = isUniquelyReferenced_nonNull_native;
        }

        v46 = v23[2];
        v45 = v23[3];
        if (v46 >= v45 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844((v45 > 1), v46 + 1, 1, v23);
          v23 = isUniquelyReferenced_nonNull_native;
        }

        ++v20;
        v23[2] = (v46 + 1);
        v47 = &v23[2 * v46];
        v47[4] = v42;
        v47[5] = v44;
        if (v22 == v20)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return (_swift_task_switch)(isUniquelyReferenced_nonNull_native, v18, v19);
}

uint64_t sub_1000EA0FC(uint64_t a1)
{
  v2 = v1[19];
  v3 = *(v2 + 32);
  v1[49] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v1[50] = v4;
    *v4 = v1;
    v4[1] = sub_1000EA25C;

    return sub_1001D1410(v4, v5);
  }

  else
  {
    v7 = v1[34];
    v8 = v1[35];
    *(v2 + 32) = 0;
    swift_willThrow();
    sub_1000A0D2C(v7, v8);

    v9 = v1[1];

    return v9();
  }
}

uint64_t sub_1000EA25C()
{

  return (_swift_task_switch)(sub_1000EA374, 0, 0);
}

uint64_t sub_1000EA374()
{
  v1 = v0[34];
  v2 = v0[35];
  *(v0[19] + 32) = 0;

  swift_willThrow();
  sub_1000A0D2C(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000EA454(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1000EA5B0(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v4 = type metadata accessor for Logger();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000EA688, 0, 0);
}

uint64_t sub_1000EA688()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v0[8] = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v6 = *(v3 + 16);
  v0[9] = v6;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47 = v4;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling Accessory Description transfer request", v9, 2u);
  }

  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[4];

  v13 = *(v12 + 8);
  v0[11] = v13;
  v13(v10, v11);
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {
    v31 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v32 = 0xD000000000000010;
    v32[1] = 0x8000000100230B70;
    (*(*(v31 - 8) + 104))(v32, enum case for Errors.AccessoryServerNil(_:), v31);
    swift_willThrow();
    goto LABEL_12;
  }

  v15 = Strong;
  v16 = *(Strong + 32);
  if (!v16 || ([v16 isReachable] & 1) == 0)
  {
    v22 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v24 = v23;
    _StringGuts.grow(_:)(19);
    v25 = *(v15 + 24);
    v26 = [v25 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = 0xD000000000000011;
    v30._object = 0x8000000100230580;
    String.append(_:)(v30);
    *v24 = v27;
    v24[1] = v29;
    (*(*(v22 - 8) + 104))(v24, enum case for Errors.AccessoryNotReachable(_:), v22);
    goto LABEL_10;
  }

  v17 = v0[2];
  if (*(v17 + 32))
  {
    v18 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v20 = v19;
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x8000000100230630;
    v21 = &enum case for Errors.OperationInProgress(_:);
LABEL_8:
    (*(*(v18 - 8) + 104))(v20, *v21, v18);
LABEL_10:
    swift_willThrow();

LABEL_12:

    v33 = v0[1];

    return v33();
  }

  v35 = v0[6];
  v46 = v0[3];
  v36 = *(v17 + 24);
  type metadata accessor for AccessoryDescriptionSession(0);
  swift_allocObject();

  v37 = sub_1001D2E70(v15, v36);

  *(v17 + 32) = v37;

  v6(v35, v47 + v5, v46);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Setting up a Accessory Description transfer session", v40, 2u);
  }

  v41 = v0[6];
  v42 = v0[3];

  v13(v41, v42);
  v43 = *(v17 + 32);
  v0[13] = v43;
  if (!v43)
  {
    v18 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v20 = v45;
    *v45 = 0xD000000000000053;
    v45[1] = 0x8000000100230B90;
    v21 = &enum case for Errors.CommunicationFailure(_:);
    goto LABEL_8;
  }

  v44 = swift_task_alloc();
  v0[14] = v44;
  *v44 = v0;
  v44[1] = sub_1000EACDC;

  return sub_1001D1970();
}

uint64_t sub_1000EACDC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000EAF3C;
  }

  else
  {
    v2 = sub_1000EADF0;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000EADF0()
{
  (*(v0 + 72))(*(v0 + 40), *(v0 + 16) + *(v0 + 64), *(v0 + 24));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Accessory Description transfer session was setup successfully", v3, 2u);
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  v4(v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1000EAFCC;

  return sub_1000EB228(v7, v8);
}

uint64_t sub_1000EAF3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EAFCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1000EB198;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1000EB100;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_1000EB100()
{

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_1000EB198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EB228(uint64_t a1, uint64_t a2)
{
  v3[5] = v2;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000EB2E8, 0, 0);
}

uint64_t sub_1000EB2E8()
{
  v22 = v0;
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger, v0[6]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v0[4] = *(v5 + 32);
    sub_100095274(&qword_1002A7E40, &qword_10023CE48);
    v9 = Optional.debugDescription.getter();
    v11 = sub_1000952D4(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Read Accessory Description data for session %s", v7, 0xCu);
    sub_100095808(v8);

    (*(v4 + 8))(v3, v6);
  }

  else
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0[5] + 32);
  v0[9] = v15;
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_1000CA61C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x746144646165725FLL, 0xEB00000000292861, sub_1000EBADC, v15, &type metadata for Data);
  }

  else
  {
    v17 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v18 = 0xD000000000000024;
    v18[1] = 0x8000000100230B20;
    (*(*(v17 - 8) + 104))(v18, enum case for Errors.CommunicationFailure(_:), v17);
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000EB664(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  (*(v3 + 16))(v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1001D2490(sub_1000EBAE8, v7);
}

uint64_t sub_1000EB7CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
  }

  else
  {
    if (a3 >> 60 != 15)
    {
      sub_1000A0CD8(a2, a3);
      sub_100095274(&qword_1002A7E48, &unk_10023CE50);
      return CheckedContinuation.resume(returning:)();
    }

    v3 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v4 = 0xD000000000000019;
    v4[1] = 0x8000000100230B50;
    (*(*(v3 - 8) + 104))(v4, enum case for Errors.CommunicationFailure(_:), v3);
  }

  sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1000EB920()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDescriptionManager(uint64_t a1)
{
  result = qword_1002A7D00;
  if (!qword_1002A7D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EBA28(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EBAE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100095274(&qword_1002A7E48, &unk_10023CE50);

  return sub_1000EB7CC(a1, a2, a3);
}

uint64_t sub_1000EBB7C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA512();
      sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000EBD5C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000EBD5C(v5, v6);
  }

  type metadata accessor for SHA512();
  sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000EBD5C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA512();
      sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EBE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000EBE84()
{
  result = qword_1002A7E68;
  if (!qword_1002A7E68)
  {
    sub_10009589C(&qword_1002A7E60, &unk_10023CE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7E68);
  }

  return result;
}

unint64_t sub_1000EBEF4(uint64_t a1, uint64_t a2)
{
  result = qword_1002A92F0;
  if (!qword_1002A92F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A92F0);
  }

  return result;
}