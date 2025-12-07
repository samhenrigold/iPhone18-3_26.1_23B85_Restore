uint64_t sub_10018F7CC(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v2 = type metadata accessor for Logger();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v69 = &v63 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v68 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v70 = &v63 - v21;
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  sub_100152034(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100095C84(v16, &qword_1002A6B70, &unk_10023C9C0);
    v23 = v71;
    v22 = v72;
    (*(v71 + 16))(v5, v75 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v72);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to save paired accessory: Unable to get library path", v26, 2u);
    }

    return (*(v23 + 8))(v5, v22);
  }

  else
  {
    v64 = v18;
    v65 = v17;
    (*(v18 + 32))(v70, v16, v17);
    v28 = dispatch thunk of DockCoreAccessory.info.getter();
    DockCoreInfo.identifier.getter();

    v29 = UUID.uuidString.getter();
    v31 = v30;
    (*(v11 + 8))(v13, v10);
    v76[0] = v29;
    v76[1] = v31;
    v33 = v66;
    v32 = v67;
    (*(v66 + 104))(v9, enum case for URL.DirectoryHint.notDirectory(_:), v67);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v33 + 8))(v9, v32);

    v34 = v71;
    v35 = v72;
    v36 = v69;
    (*(v71 + 16))(v69, v75 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v72);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v76[0] = v40;
      *v39 = 136315138;
      swift_beginAccess();
      v41 = URL.path(percentEncoded:)(1);
      v42 = sub_1000952D4(v41._countAndFlagsBits, v41._object, v76);

      *(v39 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "Attempting to save paired accessory to disk at %s", v39, 0xCu);
      sub_100095808(v40);

      (*(v34 + 8))(v69, v35);
    }

    else
    {

      (*(v34 + 8))(v36, v35);
    }

    v44 = v73;
    v43 = v74;
    v45 = v68;
    dispatch thunk of DockCoreAccessory.prepForPersistence()();
    v46 = objc_opt_self();
    v76[0] = 0;
    v47 = [v46 archivedDataWithRootObject:v44 requiringSecureCoding:1 error:v76];
    v48 = v76[0];
    if (v47)
    {
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = v70;
      swift_beginAccess();
      v54 = v64;
      v53 = v65;
      (*(v64 + 16))(v45, v52, v65);
      Data.write(to:options:)();
      if (v43)
      {
        v55 = *(v54 + 8);
        v55(v45, v53);
        sub_1000A0D2C(v49, v51);
        return (v55)(v52, v53);
      }

      else
      {
        v57 = *(v54 + 8);
        v57(v45, v53);
        v58 = *(v75 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
        if (v58)
        {
          v59 = v53;
          v60 = v58;
          sub_1001B93D0(v44);
          sub_1000A0D2C(v49, v51);

          v61 = v52;
          v62 = v59;
        }

        else
        {
          sub_1000A0D2C(v49, v51);
          v61 = v52;
          v62 = v53;
        }

        return (v57)(v61, v62);
      }
    }

    else
    {
      v56 = v48;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v64 + 8))(v70, v65);
    }
  }
}

uint64_t sub_10018FFB8(int a1, id *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v17 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v17 + 4);

  v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera;
  v18 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera);
  v19 = *(v18 + 16);
  v20 = (v18 + 32);
  if (a4)
  {
    while (v19)
    {
      v21 = *v20++;
      --v19;
      if (v21 == a1)
      {
        goto LABEL_28;
      }
    }

    (*(v11 + 16))(v16, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55 = a3;
      v56 = v51;
      *v40 = 67109378;
      *(v40 + 4) = a1;
      *(v40 + 8) = 2080;
      v54 = a2;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v41 = String.init<A>(describing:)();
      v43 = sub_1000952D4(v41, v42, &v56);

      *(v40 + 10) = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "caching %d [%s] authorized for camera permission", v40, 0x12u);
      sub_100095808(v51);
    }

    (*(v11 + 8))(v16, v10);
    v44 = v52;
    v45 = *(v5 + v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v44) = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_100102DE4(0, v45[2] + 1, 1, v45);
      *(v5 + v44) = v45;
    }

    v48 = v45[2];
    v47 = v45[3];
    if (v48 >= v47 >> 1)
    {
      v45 = sub_100102DE4((v47 > 1), (v48 + 1), 1, v45);
    }

    v45[2] = v48 + 1;
    *(v45 + v48 + 8) = a1;
    *(v5 + v44) = v45;
  }

  else
  {
    while (v19)
    {
      v22 = *v20++;
      --v19;
      if (v22 == a1)
      {
        (*(v11 + 16))(v14, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55 = a3;
          v56 = v51;
          *v25 = 67109378;
          *(v25 + 4) = a1;
          *(v25 + 8) = 2080;
          v54 = a2;

          sub_100095274(&unk_1002A6F20, &unk_10023C660);
          v26 = String.init<A>(describing:)();
          v28 = sub_1000952D4(v26, v27, &v56);

          *(v25 + 10) = v28;
          _os_log_impl(&_mh_execute_header, v23, v24, "Clearing TCC cached authorization value for %d [%s]", v25, 0x12u);
          sub_100095808(v51);
        }

        (*(v11 + 8))(v14, v10);
        v29 = v52;
        v30 = *(v5 + v52);
        v31 = *(v30 + 16);
        if (v31)
        {

          v32 = _swiftEmptyArrayStorage;
          v33 = 32;
          do
          {
            v36 = *(v30 + v33);
            if (v36 != a1)
            {
              v37 = swift_isUniquelyReferenced_nonNull_native();
              v54 = v32;
              if ((v37 & 1) == 0)
              {
                sub_1001D7188(0, v32[2] + 1, 1);
                v32 = v54;
              }

              v35 = v32[2];
              v34 = v32[3];
              if (v35 >= v34 >> 1)
              {
                sub_1001D7188((v34 > 1), (v35 + 1), 1);
                v32 = v54;
              }

              v32[2] = v35 + 1;
              *(v32 + v35 + 8) = v36;
            }

            v33 += 4;
            --v31;
          }

          while (v31);
        }

        else
        {
          v32 = _swiftEmptyArrayStorage;
        }

        *(v5 + v29) = v32;

        break;
      }
    }
  }

LABEL_28:
  v49 = *(v5 + v53);

  os_unfair_lock_unlock(v49 + 4);
}

void sub_10019051C()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  v5 = __OFADD__(v2, v4);
  v6 = v2 + v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  swift_beginAccess();
  v8 = *(*(v0 + v7) + 16);
  v5 = __OFADD__(v6, v8);
  v9 = v6 + v8;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
  swift_beginAccess();
  v11 = *(*(v0 + v10) + 16);
  v5 = __OFADD__(v9, v11);
  v12 = v9 + v11;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  swift_beginAccess();
  v14 = *(*(v0 + v13) + 16);
  v5 = __OFADD__(v12, v14);
  v15 = v12 + v14;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v17 = *(*(v0 + v16) + 16);
  v5 = __OFADD__(v15, v17);
  v18 = v15 + v17;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  if (__OFADD__(v18, *(*(v0 + v19) + 16)))
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_10019068C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  swift_beginAccess();
  v12 = a2;
  sub_1001DAB74(a2, a1);
  swift_endAccess();
  sub_10019051C();
  v14 = v13;
  v15 = *(v3 + v10);

  os_unfair_lock_unlock(v15 + 4);

  if (v14 == 1)
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "added first event client, taking transaction", v18, 2u);
    }

    (*(v7 + 8))(v9, v6);
    sub_10019A4F0(1);
  }

  return 1;
}

uint64_t sub_100190898(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v13 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v15 = a2;
  v16 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_1001ECC94(a2, v16, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + v14) = v30;
  swift_endAccess();
  sub_10019051C();
  v19 = v18;
  v20 = *(v4 + v12);

  os_unfair_lock_unlock(v20 + 4);

  if (v19 == 1)
  {
    (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "added first battery client, taking transaction", v23, 2u);
    }

    (*(v9 + 8))(v11, v8);
    sub_10019A4F0(1);
  }

  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer;
  if (!*(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v4;
    *(v25 + 24) = v16;
    objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v26 = v16;

    v27 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v28 = *(v4 + v24);
    *(v4 + v24) = v27;
  }

  return 1;
}

uint64_t sub_100190B64(uint64_t a1, void *a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  v9 = a2;
  sub_1001B6410(0, 0, v6, &unk_10023F040, v8);
}

uint64_t sub_100190C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[28] = v10;
  *v10 = v5;
  v10[1] = sub_100190E28;

  return sub_10019951C(a5, v11);
}

uint64_t sub_100190E28(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return (_swift_task_switch)(sub_100190F28, 0, 0);
}

void sub_100190F28()
{
  v1 = v0[29];
  if (!v1)
  {
    (*(v0[26] + 16))(v0[27], v0[17] + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v0[25]);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v40 = v0[26];
    v39 = v0[27];
    v41 = v0[25];
    if (v38)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error reading battery data", v42, 2u);
    }

    (*(v40 + 8))(v39, v41);
LABEL_35:

    v43 = v0[1];

    v43();
    return;
  }

  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  sub_1001F1EF0(_swiftEmptyArrayStorage);

  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v6 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = *(v4 + v5);

  os_unfair_lock_unlock(v9 + 4);

  v10 = 0;
  v11 = v8 + 64;
  v12 = -1;
  v13 = -1 << *(v8 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v8 + 64);
  v15 = (63 - v13) >> 6;
  v51 = (v3 + 8);
  v50 = (v2 + 8);
  v54 = v8;
  while (v14)
  {
LABEL_11:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = *(v8 + 56) + ((v10 << 10) | (16 * v17));
    if (*v18)
    {
      v19 = *(v18 + 8);
      v20 = *v18;
      v21 = v19;
      v22 = [v20 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F8, &qword_10023F050);
      if (swift_dynamicCast())
      {
        v55 = v20;
        v23 = v0[15];
        sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
        v24 = v21;
        v25 = static NSObject.== infix(_:_:)();

        if (v25)
        {
          v52 = v24;
          if (qword_1002A6780 != -1)
          {
            swift_once();
          }

          v26 = qword_1002B1CF0;
          v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
          v27 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

          os_unfair_lock_lock(v27 + 4);

          v28 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn);
          if (v28)
          {
            v29 = *(v28 + 24);
            if (v29)
            {
              v46 = v0[22];
              v47 = v0[21];
              v48 = v0[19];
              v49 = v0[24];
              v0[6] = sub_1000BAAE0;
              v0[7] = v28;
              v0[2] = _NSConcreteStackBlock;
              v0[3] = 1107296256;
              v0[4] = sub_100147FC8;
              v0[5] = &unk_100279BF8;
              v45 = _Block_copy(v0 + 2);
              swift_retain_n();
              v44 = v29;
              static DispatchQoS.unspecified.getter();
              v0[16] = _swiftEmptyArrayStorage;
              sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v45);

              (*v51)(v47, v48);
              (*v50)(v49, v46);
            }
          }

          v30 = *(v26 + v53);

          os_unfair_lock_unlock(v30 + 4);

          if (v1 >> 62)
          {
            v31 = _CocoaArrayWrapper.endIndex.getter();
            v8 = v54;
            v32 = v55;
            if (!v31)
            {
              goto LABEL_30;
            }

LABEL_21:
            if (v31 < 1)
            {
              goto LABEL_39;
            }

            for (i = 0; i != v31; ++i)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v34 = *(v1 + 8 * i + 32);
              }

              v35 = v34;
              [v23 batteryStateDataWithInfo:v0[18] data:v34];
            }

            swift_unknownObjectRelease();

            v8 = v54;
          }

          else
          {
            v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v8 = v54;
            v32 = v55;
            if (v31)
            {
              goto LABEL_21;
            }

LABEL_30:
            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
          v8 = v54;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      goto LABEL_35;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1001915E4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v13 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  v15 = a2;
  v16 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_1001ECCA8(a2, v16, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + v14) = v25;
  swift_endAccess();
  sub_10019051C();
  v19 = v18;
  v20 = *(v4 + v12);

  os_unfair_lock_unlock(v20 + 4);

  if (v19 == 1)
  {
    (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "added first tracking state client, taking transaction", v23, 2u);
    }

    (*(v9 + 8))(v11, v8);
    sub_10019A4F0(1);
  }

  return 1;
}

id *sub_10019182C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id *a5, char a6)
{
  v7 = v6;
  v64 = a3;
  v65 = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = DockCoreInfo.description.getter();
  v16 = v15;
  if (a6)
  {
    v17 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v17 + 4);
  }

  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  v19 = *(v7 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_16;
  }

  sub_10016D548(a1);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  v21 = sub_10016D548(a1);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!*(*(*(v19 + 56) + 8 * v21) + 16))
  {
LABEL_16:

    v68 = 0;
    v69 = 0;
    v36 = 0;
    v67 = 0;
    a5 = 0;
LABEL_17:
    swift_beginAccess();
    v37 = sub_1001E4BFC(a1);
    swift_endAccess();

    swift_beginAccess();
    sub_1001E5254(a1);
    swift_endAccess();

    goto LABEL_18;
  }

  sub_10016D4D0(v66, v16);
  if ((v23 & 1) == 0)
  {

    goto LABEL_16;
  }

  v63 = v12;

  v12 = *(v7 + v18);
  if (!*(v12 + 16))
  {
    goto LABEL_44;
  }

  v24 = sub_10016D548(a1);
  if ((v25 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v26 = *(*(v12 + 56) + 8 * v24);
  if (!*(v26 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v62 = v11;

  v27 = sub_10016D4D0(v66, v16);
  if ((v28 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = (*(v26 + 56) + 32 * v27);
  v30 = v29[1];
  v61 = *v29;
  v31 = v29[2];
  v68 = v29[3];
  v69 = v30;

  swift_bridgeObjectRetain_n();

  v32 = sub_1001A1FDC(v31);
  v67 = v31;

  v34 = sub_1001A1FDC(v33);

  if (*(v34 + 16) > v32[2] >> 3)
  {
    v12 = sub_1001A07F0(v34, v32);

    v35 = *(v12 + 16);
    if (v35)
    {
      goto LABEL_14;
    }

LABEL_27:

    a5 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v72 = v32;
  sub_1001A06C4(v34);

  v12 = v72;
  v35 = v72[2];
  if (!v35)
  {
    goto LABEL_27;
  }

LABEL_14:
  a5 = sub_1001E3AA4(v35, 0);
  v11 = sub_1001F1134(&v72, a5 + 4, v35, v12);
  sub_1000C7084(v72);
  if (v11 != v35)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_28:
  v11 = v62;
  v12 = v63;
  if (!a5[2])
  {

    v36 = v61;
    goto LABEL_17;
  }

  v47 = v68;
  if (!v69)
  {
    v47 = 1;
  }

  v60 = v47;
  swift_beginAccess();

  LODWORD(v62) = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v7 + v18);
  v48 = v71;
  *(v7 + v18) = 0x8000000000000000;
  v59 = sub_10016D548(a1);
  v50 = *(v48 + 16);
  v51 = (v49 & 1) == 0;
  v52 = v50 + v51;
  if (__OFADD__(v50, v51))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  LOBYTE(v12) = v49;
  if (*(v48 + 24) >= v52)
  {
    if ((v62 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_37;
  }

  sub_1001E8904(v52, v62);
  v53 = sub_10016D548(a1);
  if ((v12 & 1) != (v54 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v55 = v53;
  while ((v12 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    sub_1001EF990();
LABEL_37:
    v55 = v59;
  }

  v56 = *(*(v71 + 56) + 8 * v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v56;
  sub_1001ECA80(v64, v65, a5, v60, v66, v16, isUniquelyReferenced_nonNull_native);

  v58 = v71;
  if (v70)
  {
    *(*(v71 + 56) + 8 * v55) = v70;
  }

  else
  {
    sub_1001F7A38(v55, v71);
  }

  v12 = v63;
  v36 = v61;
  *(v7 + v18) = v58;
  swift_endAccess();
LABEL_18:
  sub_10019051C();
  v39 = v38;
  if (a6)
  {
    v40 = v36;
    v41 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_unlock(v41 + 4);
    v36 = v40;
  }

  if (!v39)
  {
    v42 = v36;
    (*(v12 + 16))(v14, v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v11);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "no more sensor or actuation clients, releasing transaction", v45, 2u);
    }

    (*(v12 + 8))(v14, v11);
    sub_10019AE80();
    v36 = v42;
  }

  sub_1001A28A8(v36, v69, v67);
  return a5;
}

uint64_t sub_100191E3C(uint64_t a1)
{
  v3 = v1;
  v5 = DockCoreInfo.description.getter();
  v7 = v6;
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  if (!*(*(v3 + v10) + 16) || (sub_10016D548(a1), (v11 & 1) == 0))
  {
LABEL_14:

    v26 = *(v3 + v8);

    os_unfair_lock_unlock(v26 + 4);

    return 1;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + v10);
  v29 = v13;
  *(v3 + v10) = 0x8000000000000000;
  v15 = sub_10016D548(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v14)
      {
LABEL_10:
        v28 = *(v13[7] + 8 * v15);
        v21 = sub_1001E517C(v5, v7);
        v23 = v22;
        v25 = v24;
        if (v28)
        {
          *(*(v29 + 56) + 8 * v15) = v28;
        }

        else
        {
          sub_1001F7A38(v15, v29);
        }

        *(v3 + v10) = v29;
        swift_endAccess();
        sub_1001A28A8(v21, v23, v25);
        goto LABEL_14;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    sub_1001EF990();
    if (v2)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  sub_1001E8904(v18, isUniquelyReferenced_nonNull_native);
  v19 = sub_10016D548(a1);
  if ((v2 & 1) == (v20 & 1))
  {
    v15 = v19;
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100192048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v11 = *(v3 + v10);
  v12 = *(v11 + 64);
  v69 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v74 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;

  v73 = v16;
  v17 = v5;
  swift_beginAccess();
  v18 = v15;
  v19 = a1;
  v20 = 0;
  v21 = (v13 + 63) >> 6;
  v72 = (v6 + 16);
  v75 = (v6 + 8);
  *&v22 = 136315394;
  v65 = v22;
  v76 = v5;
  v79 = v8;
  v67 = v3;
  v66 = a1;
  v70 = v21;
  v71 = v11;
  while (1)
  {
    do
    {
      if (!v18)
      {
        do
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_52;
          }

          if (v23 >= v21)
          {

            v62 = *(v3 + v64);

            os_unfair_lock_unlock(v62 + 4);

            return;
          }

          v18 = *(v69 + 8 * v23);
          ++v20;
        }

        while (!v18);
        v20 = v23;
      }

      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v20 << 6);
      v26 = *(*(v11 + 56) + 8 * v25);
    }

    while (*(v26 + 16) != v19);
    v78 = v18;
    v27 = (*(v11 + 48) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    (*v72)(v8, v3 + v74, v17);
    swift_bridgeObjectRetain_n();
    v77 = v26;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v81 = v28;
    v82 = v29;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = v65;

      v35 = v19;
      v36 = sub_1000952D4(v28, v29, &v83);

      *(v33 + 4) = v36;
      v19 = v35;
      *(v33 + 12) = 1024;
      *(v33 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "Stopping animator for device %s, client %d disconnected", v33, 0x12u);
      sub_100095808(v34);

      v8 = v79;

      (*v75)(v8, v76);
    }

    else
    {

      (*v75)(v8, v17);
    }

    v37 = *(v3 + v73);
    v83 = _swiftEmptyArrayStorage;
    v38 = v37 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v38)
    {
      break;
    }

    v49 = _swiftEmptyArrayStorage;
LABEL_31:

    if ((v49 & 0x8000000000000000) != 0 || (v49 & 0x4000000000000000) != 0)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v76;
      if (v61)
      {
LABEL_34:
        if ((v49 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v50 = v49[2];

          if (!v50)
          {
            goto LABEL_53;
          }
        }

        v52 = *(v3 + v68);
        if (v52)
        {
          v53 = v52;
          v54 = dispatch thunk of DockCoreAccessory.info.getter();
          v55 = DockCoreInfo.description.getter();
          v57 = v56;

          if (v55 == v81 && v57 == v82)
          {

            goto LABEL_41;
          }

          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v58)
          {
LABEL_41:
            v59 = *(v3 + v68);
            v60 = v59;
            sub_10018A9DC(0, v59);

            v53 = v60;
          }

          v8 = v79;
        }

        sub_1000C53C8(1, v51, 0.0);

        goto LABEL_47;
      }
    }

    else
    {
      v17 = v76;
      if (v49[2])
      {
        goto LABEL_34;
      }
    }

LABEL_47:
    v21 = v70;
    v11 = v71;
    v18 = v78;
  }

  v39 = 0;
  v80 = v37 & 0xC000000000000001;
  while (1)
  {
    if (v80)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v40 = *(v37 + 8 * v39 + 32);
    }

    v41 = v40;
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v43 = v38;
    v44 = dispatch thunk of DockCoreAccessory.info.getter();
    v45 = DockCoreInfo.description.getter();
    v47 = v46;

    if (v45 == v81 && v47 == v82)
    {
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0)
      {

        goto LABEL_19;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_19:
    ++v39;
    v38 = v43;
    if (v42 == v43)
    {
      v49 = v83;
      v3 = v67;
      v19 = v66;
      v8 = v79;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_1001926C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  v185 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v184 = &v181 - v8;
  v9 = __chkstk_darwin(v7);
  *&v187 = &v181 - v10;
  v11 = __chkstk_darwin(v9);
  v188 = &v181 - v12;
  v13 = __chkstk_darwin(v11);
  v189 = &v181 - v14;
  v15 = __chkstk_darwin(v13);
  v190 = &v181 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v181 - v18;
  __chkstk_darwin(v17);
  v21 = &v181 - v20;
  v23 = v22;
  v24 = *(v22 + 16);
  v196 = v22 + 16;
  v197 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v195 = v24;
  v24(&v181 - v20, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v193 = v4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "removing all clients", v28, 2u);
    v4 = v193;
  }

  v29 = *(v23 + 8);
  v198 = v23 + 8;
  v194 = v29;
  v29(v21, v4);
  v181 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v30 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v30 + 4);

  v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v182 = v31;
  v32 = *(v3 + v31);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;
  v186 = v32;

  v38 = 0;
  *&v39 = 138412290;
  v191 = v39;
  v192 = v3;
  v183 = v19;
  while (v36)
  {
LABEL_12:
    v41 = *(v186[7] + ((v38 << 9) | (8 * __clz(__rbit64(v36)))));
    v195(v19, v3 + v197, v4);
    v42 = v41;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = v191;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "forcibly removing act client %@", v45, 0xCu);
      sub_100095C84(v46, &unk_1002A6F60, &unk_10023C4E0);
      v19 = v183;

      v3 = v192;
    }

    v36 &= v36 - 1;

    v4 = v193;
    v194(v19, v193);
    [v42 invalidate];
  }

  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v40 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v40);
    ++v38;
    if (v36)
    {
      v38 = v40;
      goto LABEL_12;
    }
  }

  v48 = sub_1001F1BBC(_swiftEmptyArrayStorage);
  *(v3 + v182) = v48;

  v49 = sub_1001F1CC0(_swiftEmptyArrayStorage);
  v50 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  *(v3 + v50) = v49;

  v51 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  swift_beginAccess();
  v183 = v51;
  v52 = *(v3 + v51);
  v55 = *(v52 + 64);
  v54 = v52 + 64;
  v53 = v55;
  v56 = 1 << *(*(v3 + v51) + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v53;
  v59 = (v56 + 63) >> 6;
  v186 = *(v3 + v51);

  v60 = 0;
  while (v58)
  {
LABEL_23:
    v62 = *(v186[7] + ((v60 << 9) | (8 * __clz(__rbit64(v58)))));
    v195(v190, v3 + v197, v4);
    v63 = v62;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = v191;
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&_mh_execute_header, v64, v65, "forcibly removing sens client %@", v66, 0xCu);
      sub_100095C84(v67, &unk_1002A6F60, &unk_10023C4E0);
      v3 = v192;

      v4 = v193;
    }

    v58 &= v58 - 1;

    v194(v190, v4);
    [v63 invalidate];
  }

  while (1)
  {
    v61 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v61 >= v59)
    {

      v69 = sub_1001F1BBC(_swiftEmptyArrayStorage);
      *&v183[v3] = v69;

      v70 = sub_1001F1DC8(_swiftEmptyArrayStorage);
      v71 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
      swift_beginAccess();
      *(v3 + v71) = v70;

      v72 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
      swift_beginAccess();
      v186 = v72;
      v73 = *(v72 + v3);
      v76 = *(v73 + 64);
      v75 = v73 + 64;
      v74 = v76;
      v77 = 1 << *(*(v72 + v3) + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v79 = v78 & v74;
      v80 = (v77 + 63) >> 6;
      v190 = *(v72 + v3);

      v81 = 0;
      while (v79)
      {
LABEL_34:
        v83 = *(*(v190 + 7) + ((v81 << 9) | (8 * __clz(__rbit64(v79)))));
        v195(v189, v3 + v197, v4);
        v84 = v83;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *v87 = v191;
          *(v87 + 4) = v84;
          *v88 = v84;
          v89 = v84;
          _os_log_impl(&_mh_execute_header, v85, v86, "forcibly removing pairing client %@", v87, 0xCu);
          sub_100095C84(v88, &unk_1002A6F60, &unk_10023C4E0);
          v3 = v192;

          v4 = v193;
        }

        v79 &= v79 - 1;

        v194(v189, v4);
        [v84 invalidate];
      }

      while (1)
      {
        v82 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_89;
        }

        if (v82 >= v80)
        {

          v90 = sub_1001F1BBC(_swiftEmptyArrayStorage);
          *(v186 + v3) = v90;

          v91 = sub_1001F1DDC(_swiftEmptyArrayStorage);
          v92 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
          swift_beginAccess();
          *(v3 + v92) = v91;

          v93 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
          swift_beginAccess();
          v189 = v93;
          v94 = *&v93[v3];
          v95 = v94 + 64;
          v96 = 1 << v94[32];
          v97 = -1;
          if (v96 < 64)
          {
            v97 = ~(-1 << v96);
          }

          v98 = v97 & *(v94 + 8);
          v99 = (v96 + 63) >> 6;

          v100 = 0;
          v190 = v94;
          while (v98)
          {
LABEL_45:
            v102 = *(*(v94 + 7) + ((v100 << 9) | (8 * __clz(__rbit64(v98)))));
            v195(v188, v3 + v197, v4);
            v103 = v102;
            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              *v106 = v191;
              *(v106 + 4) = v103;
              *v107 = v103;
              v108 = v103;
              _os_log_impl(&_mh_execute_header, v104, v105, "forcibly removing trajectory client %@", v106, 0xCu);
              sub_100095C84(v107, &unk_1002A6F60, &unk_10023C4E0);
              v94 = v190;

              v4 = v193;
            }

            v98 &= v98 - 1;

            v194(v188, v4);
            [v103 invalidate];

            v3 = v192;
          }

          while (1)
          {
            v101 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              goto LABEL_90;
            }

            if (v101 >= v99)
            {

              v109 = sub_1001F1BBC(_swiftEmptyArrayStorage);
              *&v189[v3] = v109;

              v110 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
              swift_beginAccess();
              v111 = *&v110[v3];
              v112 = v111 + 64;
              v113 = 1 << *(v111 + 32);
              v114 = -1;
              if (v113 < 64)
              {
                v114 = ~(-1 << v113);
              }

              v115 = v114 & *(v111 + 64);
              v116 = (v113 + 63) >> 6;
              v189 = v110;
              v190 = v111;

              v117 = 0;
              while (v115)
              {
LABEL_56:
                v119 = *(*(v190 + 7) + ((v117 << 9) | (8 * __clz(__rbit64(v115)))));
                v195(v187, v3 + v197, v4);
                v120 = v119;
                v121 = Logger.logObject.getter();
                v122 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v121, v122))
                {
                  v123 = swift_slowAlloc();
                  v124 = swift_slowAlloc();
                  *v123 = v191;
                  *(v123 + 4) = v120;
                  *v124 = v120;
                  v125 = v120;
                  _os_log_impl(&_mh_execute_header, v121, v122, "forcibly removing event client %@", v123, 0xCu);
                  sub_100095C84(v124, &unk_1002A6F60, &unk_10023C4E0);
                  v3 = v192;

                  v4 = v193;
                }

                v115 &= v115 - 1;

                v194(v187, v4);
                [v120 invalidate];
              }

              while (1)
              {
                v118 = v117 + 1;
                if (__OFADD__(v117, 1))
                {
                  goto LABEL_91;
                }

                if (v118 >= v116)
                {

                  v126 = sub_1001F1BBC(_swiftEmptyArrayStorage);
                  *&v189[v3] = v126;

                  v127 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
                  swift_beginAccess();
                  v183 = v127;
                  v128 = *(v3 + v127);
                  v129 = v128 + 64;
                  v130 = 1 << v128[32];
                  v131 = -1;
                  if (v130 < 64)
                  {
                    v131 = ~(-1 << v130);
                  }

                  v132 = v131 & *(v128 + 8);
                  v133 = (v130 + 63) >> 6;
                  v188 = v128;

                  v134 = 0;
                  *&v135 = 136315138;
                  v187 = v135;
                  v136 = v184;
                  while (v132)
                  {
LABEL_67:
                    v138 = *(v188 + 7) + ((v134 << 10) | (16 * __clz(__rbit64(v132))));
                    v140 = *v138;
                    v139 = *(v138 + 8);
                    v195(v136, v3 + v197, v4);
                    *&v191 = v140;
                    v141 = v140;
                    v190 = v139;
                    v142 = Logger.logObject.getter();
                    v143 = static os_log_type_t.default.getter();

                    v144 = os_log_type_enabled(v142, v143);
                    v189 = v141;
                    if (v144)
                    {
                      v145 = swift_slowAlloc();
                      v186 = swift_slowAlloc();
                      v200[0] = v186;
                      *v145 = v187;
                      v201[0] = v191;
                      v146 = v141;
                      sub_100095274(&qword_1002AB468, &unk_10023F028);
                      v147 = String.init<A>(describing:)();
                      v149 = sub_1000952D4(v147, v148, v200);

                      *(v145 + 4) = v149;
                      v136 = v184;
                      _os_log_impl(&_mh_execute_header, v142, v143, "forcibly removing battery client %s", v145, 0xCu);
                      sub_100095808(v186);

                      v3 = v192;
                    }

                    v4 = v193;
                    v194(v136, v193);
                    if (v191)
                    {
                      v150 = v189;
                      [v189 invalidate];
                    }

                    v132 &= v132 - 1;
                  }

                  while (1)
                  {
                    v137 = v134 + 1;
                    if (__OFADD__(v134, 1))
                    {
                      goto LABEL_92;
                    }

                    if (v137 >= v133)
                    {

                      v151 = sub_1001F1EF0(_swiftEmptyArrayStorage);
                      *&v183[v3] = v151;

                      v152 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer;
                      v153 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer);
                      if (v153)
                      {
                        v154 = v153;
                        dispatch thunk of RepeatingTimer.cancel()();

                        v153 = *(v3 + v152);
                      }

                      v155 = v185;
                      *(v3 + v152) = 0;

                      v156 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
                      swift_beginAccess();
                      v184 = v156;
                      v157 = *(v3 + v156);
                      v158 = v157 + 64;
                      v159 = 1 << v157[32];
                      v160 = -1;
                      if (v159 < 64)
                      {
                        v160 = ~(-1 << v159);
                      }

                      v161 = v160 & *(v157 + 8);
                      v162 = (v159 + 63) >> 6;
                      v188 = v157;

                      v163 = 0;
                      while (v161)
                      {
LABEL_82:
                        v165 = *(v188 + 7) + ((v163 << 10) | (16 * __clz(__rbit64(v161))));
                        v167 = *v165;
                        v166 = *(v165 + 8);
                        v195(v155, v3 + v197, v4);
                        *&v191 = v167;
                        v168 = v167;
                        v190 = v166;
                        v169 = Logger.logObject.getter();
                        v170 = v168;
                        v171 = static os_log_type_t.default.getter();

                        v172 = os_log_type_enabled(v169, v171);
                        v189 = v170;
                        if (v172)
                        {
                          v173 = swift_slowAlloc();
                          v186 = swift_slowAlloc();
                          v201[0] = v186;
                          *v173 = v187;
                          v199 = v191;
                          v174 = v170;
                          sub_100095274(&qword_1002AB468, &unk_10023F028);
                          v175 = String.init<A>(describing:)();
                          v177 = sub_1000952D4(v175, v176, v201);
                          v3 = v192;

                          *(v173 + 4) = v177;
                          _os_log_impl(&_mh_execute_header, v169, v171, "forcibly removing tracking summary client %s", v173, 0xCu);
                          sub_100095808(v186);

                          v4 = v193;
                        }

                        v155 = v185;
                        v194(v185, v4);
                        if (v191)
                        {
                          v178 = v189;
                          [v189 invalidate];
                        }

                        v161 &= v161 - 1;
                      }

                      while (1)
                      {
                        v164 = v163 + 1;
                        if (__OFADD__(v163, 1))
                        {
                          goto LABEL_93;
                        }

                        if (v164 >= v162)
                        {

                          v179 = sub_1001F1F04(_swiftEmptyArrayStorage);
                          *&v184[v3] = v179;

                          v180 = *(v3 + v181);

                          os_unfair_lock_unlock(v180 + 4);

                          return;
                        }

                        v161 = *&v158[8 * v164];
                        ++v163;
                        if (v161)
                        {
                          v163 = v164;
                          goto LABEL_82;
                        }
                      }
                    }

                    v132 = *&v129[8 * v137];
                    ++v134;
                    if (v132)
                    {
                      v134 = v137;
                      goto LABEL_67;
                    }
                  }
                }

                v115 = *(v112 + 8 * v118);
                ++v117;
                if (v115)
                {
                  v117 = v118;
                  goto LABEL_56;
                }
              }
            }

            v98 = *&v95[8 * v101];
            ++v100;
            if (v98)
            {
              v100 = v101;
              goto LABEL_45;
            }
          }
        }

        v79 = *(v75 + 8 * v82);
        ++v81;
        if (v79)
        {
          v81 = v82;
          goto LABEL_34;
        }
      }
    }

    v58 = *(v54 + 8 * v61);
    ++v60;
    if (v58)
    {
      v60 = v61;
      goto LABEL_23;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void sub_100193938(uint64_t a1, char *a2)
{
  v3 = v2;
  v75 = type metadata accessor for Logger();
  v6 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v63 - v9;
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  v15 = sub_10016D548(a1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
  v18 = v17;
  v19 = a2;
  v20 = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {

LABEL_9:
    LODWORD(a2) = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  v21 = sub_1001E4BFC(a1);
  swift_endAccess();

  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  v23 = *(v3 + v22);
  if (*(v23 + 16) && (v24 = sub_10016D548(a1), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
  }

  else
  {
    v26 = 0;
  }

  swift_beginAccess();
  sub_1001E5254(a1);
  swift_endAccess();

  LODWORD(a2) = 1;
LABEL_11:
  sub_10019051C();
  v28 = v27;
  v29 = *(v3 + v11);

  os_unfair_lock_unlock(v29 + 4);

  if (a2 && !v28)
  {
    v30 = v75;
    (*(v6 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v75);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "no more sensor or actuation clients, releasing transaction", v33, 2u);
      v30 = v75;
    }

    (*(v6 + 8))(v10, v30);
    sub_10019AE80();
  }

  if (v26)
  {
    v70 = a1;
    v77 = v3;
    v34 = v26 + 64;
    v35 = 1 << *(v26 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v26 + 64);
    v38 = (v35 + 63) >> 6;
    v67 = (v6 + 16);
    v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v66 = (v6 + 8);

    v39 = 0;
    *&v40 = 67109378;
    v65 = v40;
    v72 = v26;
    while (v37)
    {
LABEL_26:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v39 << 6);
      v44 = (*(v26 + 48) + 16 * v43);
      v45 = *v44;
      v46 = v44[1];
      v47 = *(*(v26 + 56) + 32 * v43 + 8);
      v48 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
      swift_bridgeObjectRetain_n();

      v76 = v45;
      v49 = DockCoreInfo.init(uuidString:)();
      if (v49)
      {
        v50 = v49;
        v51 = sub_1001884E4(v49);
        if (v51)
        {
          v73 = v47;
          v74 = v50;
          if (qword_1002A6780 != -1)
          {
            v62 = v51;
            swift_once();
            v51 = v62;
          }

          v52 = v51;
          v53 = dispatch thunk of DockCoreAccessory.info.getter();

          v54 = sub_100197C80(v53);
          if (v54)
          {
            v69 = v52;
            v55 = v74;
            if (*(v54 + 16) == v70)
            {
              (*v67)(v71, v77 + v68, v75);

              v56 = Logger.logObject.getter();
              v57 = static os_log_type_t.default.getter();

              v64 = v57;
              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v78[0] = v63;
                *v58 = v65;
                *(v58 + 4) = v70;
                *(v58 + 8) = 2080;

                v59 = sub_1000952D4(v76, v46, v78);

                *(v58 + 10) = v59;
                _os_log_impl(&_mh_execute_header, v56, v64, "Client %d disconnected while animator active for %s, stopping velocity", v58, 0x12u);
                sub_100095808(v63);

                v60 = v74;

                (*v66)(v71, v75);
              }

              else
              {

                (*v66)(v71, v75);
                v60 = v74;
              }

              sub_10018A5D0(0);

              sub_1000C53C8(1, v61, 0.0);

              v26 = v72;
            }

            else
            {

              v26 = v72;
            }
          }

          else
          {

            v26 = v72;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v38)
      {

        return;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_26;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001940D4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16) || (v14 = sub_10016D548(a1), (v15 & 1) == 0))
  {
LABEL_8:
    LODWORD(a2) = 0;
    goto LABEL_9;
  }

  v16 = *(v13 + 56) + 16 * v14;
  v17 = *v16;
  v18 = *(v16 + 8);
  if (!*v16)
  {
    if (!a2)
    {
      v31 = v18;
      v38 = 0;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v37 = sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v36 = v18;
    v19 = v17;
    v20 = a2;
    v38 = v19;
    LOBYTE(v19) = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      LODWORD(a2) = 0;
      v18 = v36;
LABEL_19:

      goto LABEL_9;
    }

LABEL_18:
    swift_beginAccess();
    v32 = sub_1001E5308(a1);
    v34 = v33;
    swift_endAccess();
    sub_1001A2868(v32, v34);
    LODWORD(a2) = 1;
    goto LABEL_19;
  }

LABEL_9:
  sub_10019051C();
  v22 = v21;
  v23 = *(v3 + v10);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v9, v6);
    v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer;
    v28 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer);
    if (v28)
    {
      v29 = v28;
      dispatch thunk of RepeatingTimer.cancel()();

      v28 = *(v3 + v27);
    }

    *(v3 + v27) = 0;

    sub_10019AE80();
  }

  return 1;
}

uint64_t sub_1001943E0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16) || (v14 = sub_10016D548(a1), (v15 & 1) == 0))
  {
LABEL_8:
    LODWORD(a2) = 0;
    goto LABEL_9;
  }

  v16 = *(v13 + 56) + 16 * v14;
  v17 = *v16;
  v18 = *(v16 + 8);
  if (!*v16)
  {
    if (!a2)
    {
      v28 = v18;
      v35 = 0;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v34 = sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v33 = v18;
    v19 = v17;
    v20 = a2;
    v35 = v19;
    LOBYTE(v19) = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      LODWORD(a2) = 0;
      v18 = v33;
LABEL_17:

      goto LABEL_9;
    }

LABEL_16:
    swift_beginAccess();
    v29 = sub_1001E531C(a1);
    v31 = v30;
    swift_endAccess();
    sub_1001A2868(v29, v31);
    LODWORD(a2) = 1;
    goto LABEL_17;
  }

LABEL_9:
  sub_10019051C();
  v22 = v21;
  v23 = *(v3 + v10);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v9, v6);
    sub_10019AE80();
  }

  return 1;
}

void sub_1001946C0(uint64_t a1, id **a2)
{
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1001DF7DC(*(*(v7 + 48) + ((v13 << 8) | (4 * v14))), a2);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v15 = *(a1 + v4);

      os_unfair_lock_unlock(v15 + 4);

      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t (*sub_100194808(uint64_t a1, uint64_t a2))()
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_10016D4D0(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v15 = *(*(v9 + 56) + 16 * v10);

  *(swift_allocObject() + 16) = v15;
  v12 = sub_1001A34D0;
LABEL_6:
  v13 = *(v3 + v6);

  os_unfair_lock_unlock(v13 + 4);

  return v12;
}

uint64_t (*sub_100194938(uint64_t a1, uint64_t a2))()
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_10016D4D0(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v15 = *(*(v9 + 56) + 16 * v10);

  *(swift_allocObject() + 16) = v15;
  v12 = sub_1001A2824;
LABEL_6:
  v13 = *(v3 + v6);

  os_unfair_lock_unlock(v13 + 4);

  return v12;
}

id *sub_100194A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id *a5)
{
  v6 = v5;
  v65 = a3;
  v10 = type metadata accessor for Logger();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = DockCoreInfo.description.getter();
  v14 = v13;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v16 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  swift_beginAccess();
  v18 = *(v6 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_12;
  }

  sub_10016D548(a1);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = sub_10016D548(a1);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (!*(*(*(v18 + 56) + 8 * v20) + 16))
  {
LABEL_12:

    v36 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    a5 = 0;
LABEL_13:
    swift_beginAccess();
    v37 = sub_1001E4BFC(a1);
    swift_endAccess();

    swift_beginAccess();
    sub_1001E5168(a1);
    swift_endAccess();

    goto LABEL_14;
  }

  sub_10016D4D0(v66, v14);
  if ((v22 & 1) == 0)
  {

    goto LABEL_12;
  }

  v64 = a4;

  a4 = *(v6 + v17);
  if (!*(a4 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v23 = sub_10016D548(a1);
  if ((v24 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = *(*(a4 + 56) + 8 * v23);
  if (!*(v25 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v62 = v10;

  v26 = sub_10016D4D0(v66, v14);
  if ((v27 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v28 = (*(v25 + 56) + 32 * v26);
  v30 = *v28;
  v29 = v28[1];
  v32 = v28[2];
  v31 = v28[3];
  v69 = v30;
  v70 = v31;
  v63 = v29;

  swift_bridgeObjectRetain_n();

  v33 = sub_1001A1FDC(v32);
  v68 = v32;

  v35 = sub_1001A1FDC(v34);

  if (*(v35 + 16) <= v33[2] >> 3)
  {
    v73 = v33;
    sub_1001A06C4(v35);

    a4 = v73;
  }

  else
  {
    a4 = sub_1001A07F0(v35, v33);
  }

  v45 = *(a4 + 16);
  v10 = v62;
  if (v45)
  {
    a5 = sub_1001E3AA4(*(a4 + 16), 0);
    a4 = sub_1001F1134(&v73, a5 + 4, v45, a4);
    sub_1000C7084(v73);
    if (a4 == v45)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  a5 = _swiftEmptyArrayStorage;
LABEL_25:
  if (!a5[2])
  {

    v36 = v63;
    goto LABEL_13;
  }

  v46 = v70;
  if (!v63)
  {
    v46 = 1;
  }

  v60 = v46;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v6 + v17);
  v47 = v72;
  *(v6 + v17) = 0x8000000000000000;
  v59 = sub_10016D548(a1);
  v49 = *(v47 + 16);
  v50 = (v48 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    goto LABEL_45;
  }

  LOBYTE(a4) = v48;
  if (*(v47 + 24) >= v51)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  sub_1001E8624(v51, isUniquelyReferenced_nonNull_native);
  v52 = sub_10016D548(a1);
  if ((a4 & 1) != (v53 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v54 = v52;
  while ((a4 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1001EF7F8();
LABEL_34:
    v54 = v59;
  }

  v55 = *(*(v72 + 56) + 8 * v54);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v55;
  sub_1001EC8B4(v65, v64, a5, v60, v66, v14, v56);

  v57 = v72;
  if (v71)
  {
    *(*(v72 + 56) + 8 * v54) = v71;
  }

  else
  {
    sub_1001F7A38(v54, v72);
  }

  v36 = v63;
  *(v6 + v17) = v57;
  swift_endAccess();
LABEL_14:
  sub_10019051C();
  v39 = v38;
  v40 = *(v6 + v15);

  os_unfair_lock_unlock(v40 + 4);

  if (!v39)
  {
    (*(v67 + 16))(v12, v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "no more sensor or actuation clients, releasing transaction", v43, 2u);
    }

    (*(v67 + 8))(v12, v10);
    sub_10019AE80();
  }

  sub_1001A28A8(v69, v36, v68);
  return a5;
}

uint64_t sub_10019506C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_7;
  }

  v14 = sub_10016D548(a1);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v17 = v16;
    v18 = a2;
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      swift_beginAccess();
      v20 = sub_1001E4BFC(a1);
      swift_endAccess();

      swift_beginAccess();
      sub_1001E5168(a1);
      swift_endAccess();

      LODWORD(a2) = 1;
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(a2) = 0;
  }

LABEL_8:
  sub_10019051C();
  v22 = v21;
  v23 = *(v3 + v10);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more sensor or actuation clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v9, v6);
    sub_10019AE80();
  }

  return 1;
}

uint64_t sub_100195354(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v13 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *a3;
  swift_beginAccess();
  v15 = *(v5 + v14);
  if (*(v15 + 16) && (v16 = sub_10016D548(a1), (v17 & 1) != 0))
  {
    if (a2)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      v29 = sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
      v19 = v18;
      v20 = a2;
      v30 = v19;
      LOBYTE(a2) = static NSObject.== infix(_:_:)();

      if (a2)
      {
        swift_beginAccess();
        v21 = sub_1001E4BFC(a1);
        swift_endAccess();
      }

      else
      {
        v21 = v30;
      }
    }
  }

  else
  {
    LOBYTE(a2) = 0;
  }

  sub_10019051C();
  v23 = v22;
  v24 = *(v5 + v12);

  os_unfair_lock_unlock(v24 + 4);

  if ((a2 & 1) != 0 && !v23)
  {
    (*(v9 + 16))(v11, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "no more clients, releasing transaction", v27, 2u);
    }

    (*(v9 + 8))(v11, v8);
    sub_10019AE80();
  }

  return 1;
}

void sub_100195600(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), char a3, uint64_t a4)
{
  LODWORD(v5) = a4;
  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v10 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
  if (a3)
  {
    v12 = swift_beginAccess();
    v13 = *(v11 + v4);
    v69 = a1;
    v70 = a2;
    __chkstk_darwin(v12);
    v62 = &v69;

    v14 = sub_10019EE0C(sub_10017EA54, v61, v13);

    v65 = v9;
    v63 = v11;
    if ((v14 & 1) == 0)
    {
LABEL_39:
      v22 = *(v11 + v4);
      v48 = *(v22 + 16);

      if (v48)
      {
        v49 = 0;
        v50 = v22 + 40;
        v64 = v48 - 1;
        v11 = _swiftEmptyArrayStorage;
        v66 = v22 + 40;
        do
        {
          v51 = (v50 + 16 * v49);
          v9 = v49;
          while (1)
          {
            if (v9 >= *(v22 + 16))
            {
              __break(1u);
              goto LABEL_63;
            }

            v52 = *(v51 - 1);
            v5 = *v51;
            v53 = v52 == a1 && v5 == a2;
            if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            ++v9;
            v51 += 2;
            if (v48 == v9)
            {
              v9 = v65;
              goto LABEL_59;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v4;
          v68 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001D71A8(0, v11[2] + 1, 1);
            v11 = v68;
          }

          v56 = v11[2];
          v55 = v11[3];
          v57 = (v56 + 1);
          if (v56 >= v55 >> 1)
          {
            sub_1001D71A8((v55 > 1), v56 + 1, 1);
            v57 = (v56 + 1);
            v11 = v68;
          }

          v49 = v9 + 1;
          v11[2] = v57;
          v58 = &v11[2 * v56];
          v58[4] = v52;
          v58[5] = v5;
          v29 = v64 == v9;
          v50 = v66;
          v4 = v67;
          v9 = v65;
        }

        while (!v29);
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
      }

LABEL_59:

      *(v63 + v4) = v11;
      goto LABEL_60;
    }

    sub_100195C58(a1, a2, v5);
    v9 = cameracaptureIdentifier.getter();
    v16 = v15;
    v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
    swift_beginAccess();
    v67 = v4;
    v18 = *(v4 + v17);
    v19 = v16;
    v5 = (v18 + 64);
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    v64 = v18;

    v24 = 0;
    v66 = v19;
    while (v22)
    {
LABEL_13:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = *(*(v64 + 56) + 8 * (v27 | (v24 << 6)));
      v29 = *(v28 + 24) == v9 && *(v28 + 32) == v19;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = *(v28 + 16);

        sub_100195C58(v9, v66, v25);
        v19 = v66;
      }
    }

    v4 = v67;
    v11 = v63;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        v9 = v65;
        goto LABEL_39;
      }

      v22 = *(v5 + v26);
      ++v24;
      if (v22)
      {
        v24 = v26;
        v19 = v66;
        goto LABEL_13;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v30 = swift_beginAccess();
  v31 = *(v11 + v4);
  v69 = a1;
  v70 = a2;
  __chkstk_darwin(v30);
  v62 = &v69;

  v32 = sub_10019EE0C(sub_10017E860, v61, v31);

  if ((v32 & 1) == 0)
  {
    swift_beginAccess();
    v22 = *(v11 + v4);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v4) = v22;
    if (v33)
    {
LABEL_21:
      v35 = *(v22 + 16);
      v34 = *(v22 + 24);
      v65 = v9;
      if (v35 >= v34 >> 1)
      {
        v22 = sub_100102844((v34 > 1), v35 + 1, 1, v22);
      }

      *(v22 + 16) = v35 + 1;
      v36 = v22 + 16 * v35;
      *(v36 + 32) = a1;
      *(v36 + 40) = a2;
      *(v11 + v4) = v22;
      swift_endAccess();
      sub_100195C58(a1, a2, v5);
      a2 = cameracaptureIdentifier.getter();
      v22 = v37;
      v38 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
      swift_beginAccess();
      v67 = v4;
      a1 = *(v4 + v38);
      v11 = (a1 + 64);
      v39 = 1 << *(a1 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v41 = v40 & *(a1 + 64);
      v42 = (v39 + 63) >> 6;

      v9 = 0;
      while (v41)
      {
LABEL_32:
        v46 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v5 = *(*(a1 + 56) + 8 * (v46 | (v9 << 6)));
        v47 = *(v5 + 3) == a2 && *(v5 + 4) == v22;
        if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v43 = *(v5 + 4);

          v44 = v43;
          v4 = v67;
          sub_100195C58(a2, v22, v44);
        }
      }

      while (1)
      {
        v45 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_64;
        }

        if (v45 >= v42)
        {
          break;
        }

        v41 = v11[v45];
        ++v9;
        if (v41)
        {
          v9 = v45;
          goto LABEL_32;
        }
      }

      v4 = v67;
      v9 = v65;
LABEL_60:

      goto LABEL_61;
    }

LABEL_65:
    v22 = sub_100102844(0, *(v22 + 16) + 1, 1, v22);
    *(v11 + v4) = v22;
    goto LABEL_21;
  }

LABEL_61:
  v59 = *(v4 + v9);

  os_unfair_lock_unlock(v59 + 4);

  v60 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingEnableNotification);
  DeviceNotification.state.getter();
  DeviceNotification.state.setter();
}

void sub_100195C58(void (*a1)(char *, uint64_t, uint64_t), unint64_t a2, int a3)
{
  v98 = a2;
  v95 = a1;
  v93 = type metadata accessor for Logger();
  v5 = *(v93 - 8);
  v6 = __chkstk_darwin(v93);
  v97 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v102 = (&v85 - v9);
  __chkstk_darwin(v8);
  v96 = &v85 - v10;
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v92 = v3;
  v12 = *(v3 + v11);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  v100 = (v5 + 16);
  v101 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v99 = (v5 + 8);

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  *&v19 = 136315650;
LABEL_4:
  v90 = v18;
  while (v15)
  {
LABEL_5:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v17 << 6);
    v22 = *(*(v12 + 56) + 8 * v21);
    if (*(v22 + 16) == a3)
    {
      v91 = v19;
      v24 = (*(v12 + 48) + 16 * v21);
      v25 = v24[1];
      *&v89 = *v24;
      v94 = v25;
      (*v100)(v96, v92 + v101, v93);
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      LODWORD(v88) = v27;
      v28 = v27;
      v29 = v26;
      if (os_log_type_enabled(v26, v28))
      {
        v30 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v104[0] = v86;
        *v30 = v91;

        v87 = v29;
        v85 = sub_1000C4580();
        v32 = v31;

        v85 = sub_1000952D4(v85, v32, v104);

        *(v30 + 4) = v85;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_1000952D4(v95, v98, v104);
        *(v30 + 22) = 1024;
        *(v30 + 24) = a3;
        _os_log_impl(&_mh_execute_header, v87, v88, "expiring animator %s, owner %s [pid %d] re-enabling system tracking", v30, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*v99)(v96, v93);
      v33 = *(v22 + 144);
      if (v33)
      {
        v34 = v33;
        dispatch thunk of RepeatingTimer.suspend()();

        v33 = *(v22 + 144);
      }

      *(v22 + 144) = 0;

      sub_1000C6664(v35, v36);

      v37 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_100102844(0, v37[2] + 1, 1, v37);
      }

      v90 = v37;
      v39 = v37[2];
      v38 = v37[3];
      v88 = (v39 + 1);
      if (v39 >= v38 >> 1)
      {
        v90 = sub_100102844((v38 > 1), v39 + 1, 1, v90);
      }

      v40 = v94;

      v18 = v90;
      v90[2] = v88;
      v41 = &v18[2 * v39];
      v41[4] = v89;
      v41[5] = v40;
      v19 = v91;
      goto LABEL_4;
    }
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v23 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v23);
    ++v17;
    if (v15)
    {
      v17 = v23;
      goto LABEL_5;
    }
  }

  v42 = v18[2];
  v43 = v92;
  if (v42)
  {
    v44 = (v90 + 5);
    do
    {
      v46 = *(v44 - 1);
      v45 = *v44;
      swift_beginAccess();

      v47 = sub_10016D4D0(v46, v45);
      if (v48)
      {
        v49 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = *(v43 + v11);
        v103 = v51;
        *(v43 + v11) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1001EF2A8();
          v51 = v103;
        }

        sub_1001F7A34(v49, v51);
        *(v43 + v11) = v51;
      }

      swift_endAccess();

      v44 += 2;
      --v42;
    }

    while (v42);
  }

  v52 = v102;
  v53 = v93;
  v95 = *v100;
  v95(v102, v43 + v101, v93);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "remaining animators:", v56, 2u);
  }

  v94 = *v99;
  v94(v52, v53);
  v88 = v11;
  v57 = *(v43 + v11);
  v58 = v57 + 64;
  v59 = 1 << v57[32];
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 8);
  v62 = (v59 + 63) >> 6;
  v96 = v57;

  v63 = 0;
  *&v64 = 136315138;
  v89 = v64;
  v65 = v97;
  if (v61)
  {
    goto LABEL_35;
  }

LABEL_36:
  while (1)
  {
    v66 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v66 >= v62)
    {

      if (!*(*&v88[v43] + 16) && !*(v43 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator))
      {
        v83 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v84 = v83;
        sub_10018A9DC(1, v83);
      }

      return;
    }

    v61 = *&v58[8 * v66];
    ++v63;
    if (v61)
    {
      while (1)
      {
        v67 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
        v68 = v67 | (v66 << 6);
        v69 = *(v96 + 7);
        v70 = (*(v96 + 6) + 16 * v68);
        v71 = v70[1];
        v98 = *v70;
        v72 = *(v69 + 8 * v68);
        v95(v65, v43 + v101, v53);
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v73 = v53;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        v102 = v74;
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v91 = v77;
          *v76 = v89;
          v103 = v77;
          v104[0] = v98;
          v104[1] = v71;
          v104[2] = v72;

          sub_100095274(&qword_1002AB448, &unk_10023F008);
          v78 = String.init<A>(describing:)();
          v80 = sub_1000952D4(v78, v79, &v103);

          *(v76 + 4) = v80;
          v53 = v93;
          v81 = v75;
          v82 = v102;
          _os_log_impl(&_mh_execute_header, v102, v81, "    animator: %s", v76, 0xCu);
          sub_100095808(v91);

          v43 = v92;

          v65 = v97;
          v94(v97, v53);
          v63 = v66;
          if (!v61)
          {
            goto LABEL_36;
          }
        }

        else
        {

          v65 = v97;
          v94(v97, v73);
          v63 = v66;
          v53 = v73;
          if (!v61)
          {
            goto LABEL_36;
          }
        }

LABEL_35:
        v66 = v63;
      }
    }
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_1001965B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v15 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v15 + 4);

  swift_beginAccess();
  v16 = a2;
  sub_1001DAB74(a2, a1);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v5 + v17);
  *(v5 + v17) = 0x8000000000000000;
  sub_1001EB828(a3, a4, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + v17) = v26;
  swift_endAccess();
  sub_10019051C();
  v20 = v19;
  v21 = *(v5 + v14);

  os_unfair_lock_unlock(v21 + 4);

  if (v20 == 1)
  {
    (*(v11 + 16))(v13, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "added first pairing client, taking transaction", v24, 2u);
    }

    (*(v11 + 8))(v13, v10);
    sub_10019A4F0(1);
  }

  return 1;
}

void sub_100196830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v63 = a3;
  v64 = a4;
  v67 = a2;
  v71 = a1;
  v66 = type metadata accessor for UUID();
  v6 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Logger();
  v8 = *(v65 - 8);
  __chkstk_darwin(v65);
  v68 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1DDC(_swiftEmptyArrayStorage);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v11 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
  swift_beginAccess();
  v13 = *(v4 + v12);
  v14 = *(v5 + v10);

  os_unfair_lock_unlock(v14 + 4);

  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v15 = *(v5 + v10);

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  swift_beginAccess();
  v17 = *(v5 + v16);
  v18 = *(v5 + v10);

  os_unfair_lock_unlock(v18 + 4);

  v20 = 0;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v17 + 64);
  v62 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v24 = (v21 + 63) >> 6;
  v61 = (v8 + 16);
  v60 = (v6 + 16);
  v59 = (v6 + 8);
  v58 = (v8 + 8);
  *&v19 = 136315394;
  v57 = v19;
  v70 = v13;
  while (v23)
  {
    v25 = v23;
LABEL_10:
    v23 = (v25 - 1) & v25;
    if (*(v13 + 16))
    {
      v27 = __clz(__rbit64(v25)) | (v20 << 6);
      v28 = *(*(v17 + 56) + 8 * v27);
      v29 = sub_10016D548(*(*(v17 + 48) + 4 * v27));
      if (v30)
      {
        v31 = (*(v13 + 56) + 16 * v29);
        v33 = *v31;
        v32 = v31[1];
        v34 = v28;

        if (v33 == UUID.uuidString.getter() && v32 == v35)
        {

LABEL_19:
          v34 = v34;
          v38 = [v34 remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100095274(&qword_1002AB458, &qword_10023F018);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_23;
          }

          v55 = v34;
          v54 = v72;
          v39 = *v61;
          v56 = v5;
          v40 = v65;
          v39(v68, v5 + v62, v65);
          v41 = v66;
          (*v60)(v69, v71, v66);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v73[0] = v53;
            *v44 = v57;
            v45 = UUID.uuidString.getter();
            v47 = v46;
            (*v59)(v69, v66);
            v48 = sub_1000952D4(v45, v47, v73);

            *(v44 + 4) = v48;
            *(v44 + 12) = 2048;
            *(v44 + 14) = PairingRequestState.rawValue.getter();
            _os_log_impl(&_mh_execute_header, v42, v43, "Notifying prox card %s of state change %ld", v44, 0x16u);
            sub_100095808(v53);

            (*v58)(v68, v65);
          }

          else
          {

            (*v59)(v69, v41);
            (*v58)(v68, v40);
          }

          UUID.uuidString.getter();
          v49 = String._bridgeToObjectiveC()();

          v50.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          v51 = v55;
          if (v64)
          {
            v52 = _convertErrorToNSError(_:)();
          }

          else
          {
            v52 = 0;
          }

          [v54 pairingStatusWithInfo:v49 state:v67 metadata:v50.super.isa error:v52];
          swift_unknownObjectRelease();

          v5 = v56;
          v13 = v70;
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_19;
          }

LABEL_23:

          v13 = v70;
        }
      }
    }
  }

  while (1)
  {
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      return;
    }

    v25 = *(v17 + 64 + 8 * v26);
    ++v20;
    if (v25)
    {
      v20 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_100196ED8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_7;
  }

  v14 = sub_10016D548(a1);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v17 = v16;
    v18 = a2;
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      swift_beginAccess();
      v20 = sub_1001E4BFC(a1);
      swift_endAccess();

      swift_beginAccess();
      sub_1001E4C84(a1);
      swift_endAccess();

      LODWORD(a2) = 1;
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(a2) = 0;
  }

LABEL_8:
  sub_10019051C();
  v22 = v21;
  v23 = *(v3 + v10);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more long running clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v9, v6);
    sub_10019AE80();
  }

  return 1;
}

uint64_t sub_1001971B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a5;
  v55 = a6;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v49);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = DockCoreInfo.description.getter();
  v61 = v19;
  v20 = getpid();
  v56 = a2;
  v57 = a3;
  if (v20 == a2)
  {
    if (a3 == 0xD000000000000018 && 0x800000010022E6B0 == a4)
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v21 = 0;
  }

  v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v22 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v22 + 4);

  v23 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v48 = v23;
  v24 = *(v7 + v23);
  v25 = *(v24 + 16);
  v58 = a4;
  if (v25)
  {

    v26 = sub_10016D4D0(v60, v61);
    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v26);
    }

    else
    {
      v28 = 0;
    }

    if (v21)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v28 = 0;
    if (v21)
    {
LABEL_14:

      v28 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator);
    }
  }

  if (v28)
  {
    if (*(v28 + 56) && *(v28 + 48) && *(v28 + 40) != 1)
    {

      goto LABEL_27;
    }

    *(v28 + 40) = 1;
    (*(v16 + 16))(v18, v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v15);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Removing previously expired animator", v31, 2u);
    }

    (*(v16 + 8))(v18, v15);
    v32 = *(v28 + 144);
    if (v32)
    {
      v33 = v32;
      dispatch thunk of RepeatingTimer.suspend()();

      v32 = *(v28 + 144);
    }

    *(v28 + 144) = 0;

    sub_1000C6664(v34, v35);
  }

  type metadata accessor for VelocityAnimator(0);
  v28 = swift_allocObject();
  *(v28 + 40) = 0;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  *(v28 + 64) = 20;

  *(v28 + 72) = dispatch_semaphore_create(1);
  *(v28 + 80) = sub_1001F2278(_swiftEmptyArrayStorage);
  *(v28 + 88) = sub_1001F2278(_swiftEmptyArrayStorage);
  *(v28 + 96) = 0x4018000000000000;
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  *(v28 + 104) = 0u;
  *(v28 + 120) = 0u;
  *(v28 + 136) = 0u;
  static DispatchQoS.unspecified.getter();
  v63 = _swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v52 + 104))(v51, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v53);
  *(v28 + 152) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v28 + 160) = 0x4000000000000000;
  *(v28 + 168) = 0;
  *(v28 + 170) = 0;
  Logger.init(subsystem:category:)();
  v36 = *(v28 + 104);
  v37 = *(v28 + 112);
  v38 = v55;
  *(v28 + 104) = v54;
  *(v28 + 112) = v38;

  sub_1000BAA84(v36, v37);
  v39 = *(v28 + 120);
  v40 = *(v28 + 128);
  *(v28 + 120) = sub_1001A27C8;
  *(v28 + 128) = v7;

  sub_1000BAA84(v39, v40);
  *(v28 + 16) = v56;
  v41 = v58;
  *(v28 + 24) = v57;
  *(v28 + 32) = v41;

  sub_1000C6028(v42, v43);
  sub_1000C59C0();

  if (v21)
  {

    *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator) = v28;
  }

  else
  {
    v44 = v48;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v7 + v44);
    *(v7 + v44) = 0x8000000000000000;
    sub_1001EC338(v28, v60, v61, isUniquelyReferenced_nonNull_native);

    *(v7 + v44) = v62;
    swift_endAccess();
  }

LABEL_27:
  v46 = *(v7 + v59);

  os_unfair_lock_unlock(v46 + 4);

  return v28;
}

uint64_t sub_1001978F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v20 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v18[1] = *(a2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_queue);
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v13, v9);
  aBlock[4] = sub_1001A27D0;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279B30;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);
  (*(v23 + 8))(v5, v3);
  (*(v21 + 8))(v8, v22);
  v19(v15, v20);
}

uint64_t sub_100197C80(uint64_t a1)
{
  v2 = v1;
  v3 = DockCoreInfo.description.getter();
  v5 = v4;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16) && (, v10 = sub_10016D4D0(v3, v5), v12 = v11, , (v12 & 1) != 0))
  {
    v13 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {

    v13 = 0;
  }

  v14 = *(v2 + v6);

  os_unfair_lock_unlock(v14 + 4);

  return v13;
}

uint64_t sub_100197D90(uint64_t a1)
{
  v2 = v1;
  v3 = DockCoreInfo.description.getter();
  v5 = v4;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  if (*(*(v2 + v8) + 16))
  {

    sub_10016D4D0(v3, v5);
    if (v9)
    {

      if (*(*(v2 + v8) + 16))
      {

        sub_10016D4D0(v3, v5);
        if (v10)
        {

          sub_1000C6664(v11, v12);
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_1001DAA7C(0, v3, v5);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
  }

  v13 = *(v2 + v6);

  os_unfair_lock_unlock(v13 + 4);
}

void sub_100197F10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  v124 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v125 = &v124 - v8;
  v9 = __chkstk_darwin(v7);
  v133 = (&v124 - v10);
  v11 = __chkstk_darwin(v9);
  v127 = &v124 - v12;
  v13 = __chkstk_darwin(v11);
  v136 = (&v124 - v14);
  __chkstk_darwin(v13);
  v16 = &v124 - v15;
  v18 = v17;
  v19 = *(v17 + 16);
  v137 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v138 = v19;
  v139 = v17 + 16;
  v19((&v124 - v15), v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v131 = v4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Cleaning up stale animators", v23, 2u);
    v4 = v131;
  }

  v140 = *(v18 + 8);
  v141 = v18 + 8;
  v140(v16, v4);
  v126 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v24 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v24 + 4);

  v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v135 = v3;
  v128 = v25;
  v26 = *(v3 + v25);
  v29 = *(v26 + 64);
  v28 = v26 + 64;
  v27 = v29;
  v30 = 1 << *(*(v3 + v25) + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v134 = *(v3 + v25);

  v34 = 0;
  *&v35 = 136315138;
  v130 = v35;
  while (v32)
  {
LABEL_13:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = v38 | (v34 << 6);
    v40 = (*(v134 + 48) + 16 * v39);
    v41 = *v40;
    v42 = v40[1];
    v43 = *(*(v134 + 56) + 8 * v39);
    if (!*(v43 + 56) || !*(v43 + 48) || *(v43 + 40) == 1)
    {
      *(v43 + 40) = 1;
      v44 = *(v43 + 144);

      if (v44)
      {
        v45 = v44;
        dispatch thunk of RepeatingTimer.suspend()();

        v46 = *(v43 + 144);
      }

      else
      {
        v46 = 0;
      }

      *(v43 + 144) = 0;

      sub_1000C6664(v47, v48);
      v138(v136, v135 + v137, v4);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      LODWORD(v132) = v50;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v144 = v43;
        v145 = v129;
        *v51 = v130;
        v142 = v41;
        v143 = v42;

        sub_100095274(&qword_1002AB448, &unk_10023F008);
        v52 = String.init<A>(describing:)();
        v54 = sub_1000952D4(v52, v53, &v145);

        *(v51 + 4) = v54;
        v55 = v136;
        _os_log_impl(&_mh_execute_header, v49, v132, "   expired: %s", v51, 0xCu);
        sub_100095808(v129);

        v4 = v131;

        v36 = v55;
      }

      else
      {

        v36 = v136;
      }

      v140(v36, v4);
    }
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v37 >= v33)
    {
      break;
    }

    v32 = *(v28 + 8 * v37);
    ++v34;
    if (v32)
    {
      v34 = v37;
      goto LABEL_13;
    }
  }

  v56 = v135;
  v57 = v128;

  v59 = sub_10019F820(v58);

  *(v56 + v57) = v59;

  v60 = v127;
  v138(v127, v56 + v137, v4);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "remaining animators:", v63, 2u);
  }

  v140(v60, v4);
  v64 = *(v56 + v128);
  v67 = *(v64 + 64);
  v66 = v64 + 64;
  v65 = v67;
  v68 = 1 << *(*(v56 + v128) + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & v65;
  v71 = (v68 + 63) >> 6;
  v132 = *(v56 + v128);

  v72 = 0;
  v73 = v133;
  if (v70)
  {
    goto LABEL_28;
  }

LABEL_29:
  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v71)
    {

      v90 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator;
      v91 = *(v56 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator);
      if (v91)
      {
        if (*(v91 + 56) && *(v91 + 48) && *(v91 + 40) != 1)
        {
          v112 = v124;
          v113 = v131;
          v138(v124, v56 + v137, v131);
          swift_retain_n();
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v117 = v112;
            v118 = swift_slowAlloc();
            v142 = v118;
            *v116 = v130;

            v119 = sub_1000C4580();
            v121 = v120;

            v122 = sub_1000952D4(v119, v121, &v142);

            *(v116 + 4) = v122;
            _os_log_impl(&_mh_execute_header, v114, v115, "    animator: %s", v116, 0xCu);
            sub_100095808(v118);

            v56 = v135;

            v123 = v117;
          }

          else
          {

            v123 = v112;
          }

          v140(v123, v113);
        }

        else
        {
          *(v91 + 40) = 1;
          v92 = *(v91 + 144);

          if (v92)
          {
            v93 = v92;
            dispatch thunk of RepeatingTimer.suspend()();

            v94 = *(v91 + 144);
          }

          else
          {
            v94 = 0;
          }

          *(v91 + 144) = 0;

          sub_1000C6664(v95, v96);
          v97 = v125;
          v98 = v131;
          v138(v125, v56 + v137, v131);

          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = v97;
            v103 = swift_slowAlloc();
            v142 = v103;
            *v101 = v130;

            v104 = sub_1000C4580();
            v106 = v105;

            v107 = sub_1000952D4(v104, v106, &v142);

            *(v101 + 4) = v107;
            _os_log_impl(&_mh_execute_header, v99, v100, "   expired: %s", v101, 0xCu);
            sub_100095808(v103);

            v56 = v135;

            v108 = v102;
          }

          else
          {

            v108 = v97;
          }

          v140(v108, v98);
          *(v56 + v90) = 0;
        }
      }

      if (!*(*(v56 + v128) + 16) && !*(v56 + v90))
      {
        v109 = *(v56 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v110 = v109;
        sub_10018A9DC(1, v109);
      }

      v111 = *(v56 + v126);

      os_unfair_lock_unlock(v111 + 4);

      return;
    }

    v70 = *(v66 + 8 * v74);
    ++v72;
    if (v70)
    {
      while (1)
      {
        v75 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v76 = v75 | (v74 << 6);
        v77 = *(v132 + 56);
        v78 = (*(v132 + 48) + 16 * v76);
        v79 = v78[1];
        v134 = *v78;
        v80 = *(v77 + 8 * v76);
        v81 = v56;
        v138(v73, v56 + v137, v4);
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        v136 = v82;
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v144 = v80;
          v145 = v129;
          *v84 = v130;
          v142 = v134;
          v143 = v79;

          sub_100095274(&qword_1002AB448, &unk_10023F008);
          v85 = String.init<A>(describing:)();
          v87 = sub_1000952D4(v85, v86, &v145);

          *(v84 + 4) = v87;
          v88 = v83;
          v56 = v135;
          v89 = v136;
          _os_log_impl(&_mh_execute_header, v136, v88, "    animator: %s", v84, 0xCu);
          sub_100095808(v129);

          v4 = v131;

          v73 = v133;
          v140(v133, v4);
          v72 = v74;
          if (!v70)
          {
            goto LABEL_29;
          }
        }

        else
        {

          v73 = v133;
          v140(v133, v4);
          v72 = v74;
          v56 = v81;
          if (!v70)
          {
            goto LABEL_29;
          }
        }

LABEL_28:
        v74 = v72;
      }
    }
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_100198B58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask;
  if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) && *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId + 8))
  {
    (*(v5 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Cancelling previous return to base task", v12, 2u);
    }

    (*(v5 + 8))(v8, v4);
    Task.cancel()();

    *(v3 + v9) = 0;
  }

  return result;
}

uint64_t sub_100198D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = DockState.rawValue.getter();
  if (v4 == DockState.rawValue.getter())
  {
    v5 = dispatch thunk of DockCoreAccessory.info.getter();
    v7 = v5;
    goto LABEL_6;
  }

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  v11 = *(v3 + v8);
  v7 = v10;

  os_unfair_lock_unlock(v11 + 4);

  if (v10)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v12 = dispatch thunk of DockCoreAccessory.info.getter();
    v13 = dispatch thunk of DockCoreAccessory.info.getter();
    v14 = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
LABEL_7:

      return 1;
    }

    v5 = 0;
LABEL_6:
    sub_1001898EC(v5, v6);
    goto LABEL_7;
  }

  return 1;
}

void sub_100198E44(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v37 - v12;
  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v15 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

  os_unfair_lock_lock(v15 + 4);

  v42 = v2;
  if (*(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
  {

    sub_100105E6C();
  }

  v16 = *(v42 + v14);

  os_unfair_lock_unlock(v16 + 4);

  if (a1)
  {
    v37[2] = v7;
    v37[4] = v5;
    v37[3] = v4;
    v17 = qword_1002A6780;
    v37[1] = a1;
    v18 = a1;
    if (v17 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v19 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v38 = v18;
      v43 = dispatch thunk of DockCoreAccessory.info.getter();
      v39 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v20 = *&v19[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      v18 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v40 = v19;
      v21 = *&v19[v18];
      v22 = *(v21 + 16);

      if (!v22)
      {
        break;
      }

      v23 = 0;
      v24 = v21 + 32;
      v25 = (v41 + 8);
      while (v23 < *(v21 + 16))
      {
        sub_1000A097C(v24, v44);
        v26 = *(*sub_1000A09E0(v44, v44[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        v18 = static UUID.== infix(_:_:)();
        v27 = *v25;
        (*v25)(v11, v8);
        v27(v13, v8);
        if (v18)
        {

          v28 = v40;
          v30 = *&v40[v39];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v44, &v45);
          sub_100095808(v44);
          goto LABEL_12;
        }

        ++v23;
        sub_100095808(v44);
        v24 += 40;
        if (v22 == v23)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

LABEL_10:

    v28 = v40;
    v29 = *&v40[v39];
    OS_dispatch_semaphore.signal()();

    v47 = 0;
    v45 = 0u;
    v46 = 0u;
LABEL_12:

    if (*(&v46 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      if (swift_dynamicCast())
      {
        v31 = v44[0];
        v32 = *(v44[0] + 16);
        if (v32)
        {
          v33 = *&v32[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
          if (v33)
          {
            v34 = v32;
            if ([v33 state] == 2)
            {
              v35 = *&v28[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager];
              sub_10014E948(v31, 0, 0, 0);

              v36 = *&v35[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
              *&v35[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_100095C84(&v45, &unk_1002A6F40, &unk_10023BE90);
    }
  }
}

uint64_t sub_10019951C(uint64_t a1, uint64_t a2)
{
  v3[22] = a1;
  v3[23] = v2;
  v4 = type metadata accessor for Logger();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for ComponentType();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001996B8, 0, 0);
}

uint64_t sub_1001996B8()
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v77 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v80 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v1 = *&v80[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v2 = v80;
    v3 = v1;
    OS_dispatch_semaphore.wait()();

    v4 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v82 = v2;
    v5 = *&v2[v4];
    v6 = *(v5 + 16);

    v83 = v6;
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      v9 = (*(v0 + 264) + 8);
      while (v7 < *(v5 + 16))
      {
        v11 = *(v0 + 272);
        v10 = *(v0 + 280);
        v12 = *(v0 + 256);
        sub_1000A097C(v8, v0 + 56);
        v13 = *(*sub_1000A09E0((v0 + 56), *(v0 + 80)) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v13) = static UUID.== infix(_:_:)();
        v14 = *v9;
        (*v9)(v11, v12);
        v14(v10, v12);
        if (v13)
        {

          v16 = *&v80[v77];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v0 + 56, v0 + 16);
          sub_100095808((v0 + 56));
          goto LABEL_9;
        }

        ++v7;
        sub_100095808((v0 + 56));
        v8 += 40;
        if (v83 == v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_7:

    v15 = *&v80[v77];
    OS_dispatch_semaphore.signal()();

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:

    if (!*(v0 + 40))
    {
      break;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 232);
    v20 = *(v0 + 168);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1001F365C(_swiftEmptyArrayStorage);
    (*(v18 + 104))(v17, enum case for ComponentType.Battery(_:), v19);
    v22 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
    swift_beginAccess();
    v84 = v20;
    v23 = *&v20[v22];
    if (!*(v23 + 16))
    {
      goto LABEL_24;
    }

    v24 = *(v0 + 248);

    v25 = sub_10016D8E0(v24);
    if ((v26 & 1) == 0)
    {

LABEL_24:
      v47 = *(v0 + 216);
      v49 = *(v0 + 192);
      v48 = *(v0 + 200);
      v50 = *(v0 + 184);
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      (*(v48 + 16))(v47, v50 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v49);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 216);
      v56 = *(v0 + 192);
      v55 = *(v0 + 200);
      if (v53)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        v58 = "Accessory does not have a battery service, cannot read";
        goto LABEL_26;
      }

LABEL_45:

LABEL_46:
      (*(v55 + 8))(v54, v56);

      goto LABEL_47;
    }

    v78 = v21 + 16;
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    v29 = *(*(v23 + 56) + 8 * v25);
    v30 = *(*(v0 + 240) + 8);

    v30(v27, v28);

    v31 = *(v29 + 16);
    if (v31)
    {
      v32 = (v29 + 48);
      do
      {
        v34 = *(v32 - 2);
        v33 = *(v32 - 1);
        v35 = *v32;
        v36 = qword_1002A6760;
        swift_bridgeObjectRetain_n();
        v37 = v35;
        if (v36 != -1)
        {
          swift_once();
        }

        v38 = *(v0 + 184);
        v39 = qword_1002B1C78;

        sub_1001AF6D8(v39, v37, v84, v38, v21, v34, v33);
        swift_bridgeObjectRelease_n();

        v32 += 3;
        --v31;
      }

      while (v31);
    }

    swift_beginAccess();
    v59 = *v78;
    if (!*(*v78 + 16))
    {
      (*(*(v0 + 200) + 16))(*(v0 + 224), *(v0 + 184) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 192));
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      v74 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 224);
      v56 = *(v0 + 192);
      v55 = *(v0 + 200);
      if (!v74)
      {
        goto LABEL_45;
      }

      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = "Battery Data is empty";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v51, v52, v58, v57, 2u);

      goto LABEL_46;
    }

    v60 = v59 + 64;
    v61 = -1;
    v62 = -1 << *(v59 + 32);
    if (-v62 < 64)
    {
      v61 = ~(-1 << -v62);
    }

    v63 = v61 & *(v59 + 64);
    v64 = (63 - v62) >> 6;

    v65 = 0;
    v79 = v59 + 64;
    v81 = v59;
LABEL_31:
    v66 = v65;
    if (!v63)
    {
      goto LABEL_33;
    }

    do
    {
      v65 = v66;
LABEL_36:
      v67 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v68 = (*(v59 + 56) + ((v65 << 10) | (16 * v67)));
      v69 = *v68;
      v70 = v68[1];
      objc_allocWithZone(type metadata accessor for AccessoryBatteryState());

      sub_1000A0CD8(v69, v70);

      sub_1000A0CD8(v69, v70);
      v71 = AccessoryBatteryState.init(data:name:)();
      if (v71)
      {
        v72 = v71;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_1000A0D2C(v69, v70);

        v60 = v79;
        v59 = v81;
        goto LABEL_31;
      }

      sub_1000A0D2C(v69, v70);
      v66 = v65;
      v60 = v79;
      v59 = v81;
    }

    while (v63);
LABEL_33:
    while (1)
    {
      v65 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v65 >= v64)
      {

        v73 = _swiftEmptyArrayStorage;
        goto LABEL_48;
      }

      v63 = *(v60 + 8 * v65);
      ++v66;
      if (v63)
      {
        goto LABEL_36;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  sub_100095C84(v0 + 16, &unk_1002A6F40, &unk_10023BE90);
LABEL_20:
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 184) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 192));
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v42 = os_log_type_enabled(v40, v41);
  v44 = *(v0 + 200);
  v43 = *(v0 + 208);
  v45 = *(v0 + 192);
  if (v42)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Accessory not found", v46, 2u);
  }

  (*(v44 + 8))(v43, v45);
LABEL_47:
  v73 = 0;
LABEL_48:

  v75 = *(v0 + 8);

  return v75(v73);
}

void sub_100199F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a2 || !a1)
  {
    (*(v13 + 16))(&v55 - v17, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v12);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v61[0] = v38;
      *v37 = 136315138;
      *&v59 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v39 = String.init<A>(describing:)();
      v41 = sub_1000952D4(v39, v40, v61);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to read characteristic: %s", v37, 0xCu);
      sub_100095808(v38);
    }

    v42 = *(v13 + 8);
    v43 = v18;
LABEL_14:
    v42(v43, v12);
    return;
  }

  v19 = [a1 metadata];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 format];

    if (v21)
    {
      v56 = v16;
      v22 = a5;
      v23 = a4;
      v24 = a6;
      v25 = v12;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == 1635017060 && v28 == 0xE400000000000000)
      {

        v12 = v25;
        v31 = v24;
        v32 = v23;
        v33 = v22;
        v34 = v56;
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v25;
        v31 = v24;
        v32 = v23;
        v33 = v22;
        v34 = v56;
        if ((v30 & 1) == 0)
        {
          return;
        }
      }

      if ([a1 value])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0u;
        v60 = 0u;
      }

      v61[0] = v59;
      v61[1] = v60;
      if (!*(&v60 + 1))
      {
        sub_100095C84(v61, &qword_1002A9210, &unk_10023BE70);
        return;
      }

      if (swift_dynamicCast())
      {
        v44 = v57;
        v45 = v58;
        swift_beginAccess();

        sub_1000A0CD8(v44, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = *(v32 + 16);
        *(v32 + 16) = 0x8000000000000000;
        sub_1001ECE58(v44, v45, v33, v31, isUniquelyReferenced_nonNull_native);

        *(v32 + 16) = v59;
        swift_endAccess();
        (*(v13 + 16))(v34, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v12);
        sub_1000A0CD8(v44, v45);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        sub_1000A0D2C(v44, v45);
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *&v61[0] = v50;
          *v49 = 136315138;
          v51 = sub_10013B46C(v44, v45);
          v53 = sub_1000952D4(v51, v52, v61);
          v56 = v12;
          v54 = v53;

          *(v49 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v47, v48, "Battery Data: %s", v49, 0xCu);
          sub_100095808(v50);

          sub_1000A0D2C(v44, v45);
          (*(v13 + 8))(v34, v56);
          return;
        }

        sub_1000A0D2C(v44, v45);

        v42 = *(v13 + 8);
        v43 = v34;
        goto LABEL_14;
      }
    }
  }
}

void sub_10019A4F0(int a1)
{
  LODWORD(v67) = a1;
  v2 = type metadata accessor for UUID();
  v65 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v57 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v57 - v13;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v16 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

  os_unfair_lock_lock(v16 + 4);

  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
  {
    v17 = *(v1 + v15);

    os_unfair_lock_unlock(v17 + 4);
  }

  else
  {
    v61 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
    v62 = v15;
    v66 = v2;
    v60 = v12;
    v18 = *(v9 + 16);
    v64 = v1;
    v57[1] = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v19 = v8;
    v57[3] = v9 + 16;
    v57[2] = v18;
    v18(v14, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v63 = v9;
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "starting keep-alive transaction", v22, 2u);
      v19 = v8;
      v9 = v63;
    }

    v23 = *(v9 + 8);
    v63 = v9 + 8;
    v57[4] = v23;
    v23(v14, v19);
    if (v67)
    {
      v24 = 10.0;
    }

    else
    {
      v24 = 0.0;
    }

    type metadata accessor for Transaction(0);
    v25 = swift_allocObject();
    *(v25 + 48) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v25 + 80) = 0;
    *(v25 + 88) = 1;
    Logger.init(subsystem:category:)();
    *(v25 + 64) = 0xD000000000000022;
    *(v25 + 72) = 0x8000000100234760;
    *(v25 + 56) = v24;
    *(v25 + 48) = &off_10027A7E0;
    v26 = v64;
    swift_unknownObjectWeakAssign();
    *(v26 + v61) = v25;

    sub_100105518();

    v27 = *&v62[v26];

    os_unfair_lock_unlock(v27 + 4);

    v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v29 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v29 + 4);

    v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
    v31 = *(*(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
    v32 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v33 = *(v26 + v28);
    v34 = v32;
    v35 = v31;

    os_unfair_lock_unlock(v33 + 4);

    if (!v32)
    {

      return;
    }

    v62 = v35;
    v57[0] = v19;
    v36 = *(v26 + v30);
    v67 = dispatch thunk of DockCoreAccessory.info.getter();
    v58 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v37 = *&v36[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v38 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v61 = v36;
    v39 = *&v36[v38];
    v40 = *(v39 + 16);

    v59 = v34;
    if (v40)
    {
      v41 = 0;
      v42 = v39 + 32;
      v43 = (v65 + 8);
      while (v41 < *(v39 + 16))
      {
        sub_1000A097C(v42, v68);
        v44 = *(*sub_1000A09E0(v68, v68[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v44) = static UUID.== infix(_:_:)();
        v45 = *v43;
        v46 = v66;
        (*v43)(v5, v66);
        v45(v7, v46);
        if (v44)
        {

          v47 = v61;
          v49 = *(v61 + v58);
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v68, &v69);
          sub_100095808(v68);
          goto LABEL_19;
        }

        ++v41;
        sub_100095808(v68);
        v42 += 40;
        if (v40 == v41)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:

      v47 = v61;
      v48 = *(v61 + v58);
      OS_dispatch_semaphore.signal()();

      v71 = 0;
      v69 = 0u;
      v70 = 0u;
LABEL_19:

      v50 = v62;
      if (*(&v70 + 1))
      {
        v51 = v59;
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        if (swift_dynamicCast())
        {
          v52 = v68[0];
          v53 = *(v68[0] + 16);
          if (v53)
          {
            v54 = *&v53[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
            if (v54)
            {
              v55 = v53;
              if ([v54 state] == 2)
              {
                sub_10014E948(v52, 0, 0, 0);

                v56 = *&v50[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
                *&v50[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;

                return;
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {

        sub_100095C84(&v69, &unk_1002A6F40, &unk_10023BE90);
      }
    }
  }
}

void sub_10019AE80()
{
  v1 = type metadata accessor for UUID();
  v97 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v85 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v94 = &v85 - v12;
  __chkstk_darwin(v11);
  v14 = &v85 - v13;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v16 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
  {
    v98 = v0;
    v99 = v15;
    v18 = *(v8 + 16);
    v85 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v87 = v8 + 16;
    v86 = v18;
    v18(v14, v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v96 = v8;
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "no more elegible clients, tearing down os_transaction", v21, 2u);
      v8 = v96;
    }

    v23 = *(v8 + 8);
    v22 = v8 + 8;
    v88 = v23;
    v23(v14, v7);
    v24 = v98;
    v25 = *(v98 + v17);
    v93 = v7;
    if (v25)
    {

      sub_1001059EC();
    }

    v27 = v99;
    *(v24 + v17) = 0;

    v28 = *&v27[v24];

    os_unfair_lock_unlock(v28 + 4);

    v29 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v30 = *(v24 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v30 + 4);

    v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
    v32 = *(*(v24 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
    v33 = v24;
    v34 = *(v24 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v35 = *(v33 + v29);
    v36 = v34;
    v37 = v32;

    os_unfair_lock_unlock(v35 + 4);

    if (!v34)
    {

      return;
    }

    v92 = v37;
    v96 = v22;
    v38 = *(v33 + v31);
    v39 = v36;
    v40 = v38;
    v91 = v39;
    v99 = dispatch thunk of DockCoreAccessory.info.getter();
    v89 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v41 = *&v40[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v42 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v90 = v40;
    v43 = *&v40[v42];
    v44 = *(v43 + 16);

    if (!v44)
    {
LABEL_15:

      v50 = v90;
      v51 = *&v90[v89];
      OS_dispatch_semaphore.signal()();

      v103 = 0;
      v101 = 0u;
      v102 = 0u;
LABEL_18:

      v53 = v93;
      v54 = v98;
      if (!*(&v102 + 1))
      {
        v60 = v91;

        sub_100095C84(&v101, &unk_1002A6F40, &unk_10023BE90);
        return;
      }

      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      if (swift_dynamicCast())
      {
        v55 = v100[0];
        v56 = *(v100[0] + 16);
        if (!v56)
        {

          v61 = v91;
          return;
        }

        v57 = *&v56[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
        if (v57)
        {
          v58 = v56;
          if ([v57 state] == 2)
          {
            v59 = v92;
            sub_10014E948(v55, 0, 0, 0);
            v64 = *&v59[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v59[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;

            v65 = v54 + v85;
            v66 = v53;
            v86(v95, v65, v53);
            v67 = v59;
            v68 = v91;
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v69, v70))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              *v72 = 138412546;
              v74 = dispatch thunk of DockCoreAccessory.info.getter();
              *(v72 + 4) = v74;
              *v73 = v74;
              *(v72 + 12) = 2048;
              *(v72 + 14) = 0x404E000000000000;
              _os_log_impl(&_mh_execute_header, v69, v70, "Setting accessory reachable %@ after %f secs", v72, 0x16u);
              sub_100095C84(v73, &unk_1002A6F60, &unk_10023C4E0);
            }

            v88(v95, v66);
            type metadata accessor for DockCoreManager();
            v75 = static DockCoreManager.localFirmwarePath.getter();
            v77 = v76;
            v78 = *(v55 + 40);
            v79 = swift_allocObject();
            *(v79 + 16) = v67;
            *(v79 + 24) = v55;
            *(v79 + 32) = 1;
            *(v79 + 40) = v75;
            *(v79 + 48) = v77;
            v80 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
            v81 = v67;
            v82 = v78;
            v83 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

            v84 = *&v81[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v81[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v83;
          }

          else
          {

            v63 = v91;
          }

          return;
        }
      }

      v62 = v91;

      return;
    }

    v45 = 0;
    v46 = v43 + 32;
    v47 = (v97 + 8);
    while (v45 < *(v43 + 16))
    {
      sub_1000A097C(v46, v100);
      v48 = *(*sub_1000A09E0(v100, v100[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v48) = static UUID.== infix(_:_:)();
      v49 = *v47;
      (*v47)(v4, v1);
      v49(v6, v1);
      if (v48)
      {

        v50 = v90;
        v52 = *&v90[v89];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v100, &v101);
        sub_100095808(v100);
        goto LABEL_18;
      }

      ++v45;
      sub_100095808(v100);
      v46 += 40;
      if (v44 == v45)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = *&v15[v0];

    os_unfair_lock_unlock(v26 + 4);
  }
}

uint64_t sub_10019B91C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &token - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &token - v9;
  [a1 auditToken];
  v11 = SecTaskCreateWithAuditToken(0, &token);
  if (!v11)
  {
    (*(v5 + 16))(v10, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create audit token task for bundle identifier", v21, 2u);
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_13;
  }

  v12 = v11;
  *token.val = 0;
  v13 = SecTaskCopySigningIdentifier(v11, &token);
  if (!v13)
  {
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed fetching signing identifier for new connection", v24, 2u);
    }

    (*(v5 + 8))(v8, v4);
LABEL_13:

    return 0;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000017 && 0x8000000100234720 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0xD000000000000012;
  }

  else
  {

    return v15;
  }
}

unint64_t sub_10019BC70(uint64_t a1, char a2)
{
  v4 = v2;
  if (a2)
  {
    v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
    swift_beginAccess();
    if (!*(*(v2 + v6) + 16))
    {
      goto LABEL_14;
    }

    sub_10016D548(a1);
    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + v6);
    v32 = *(v4 + v6);
    *(v4 + v6) = 0x8000000000000000;
    result = sub_10016D548(a1);
    v12 = *(v9 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (!v14)
    {
      v3 = v11;
      if (*(v9 + 24) >= v15)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1001E83BC(v15, isUniquelyReferenced_nonNull_native);
        result = sub_10016D548(a1);
        if ((v3 & 1) != (v16 & 1))
        {
LABEL_13:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_14:
          swift_beginAccess();
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v33 = *(v4 + v6);
          *(v4 + v6) = 0x8000000000000000;
          sub_1001EC790(1, a1, v24);
          v25 = v33;
LABEL_24:
          *(v4 + v6) = v25;
          return swift_endAccess();
        }
      }

      if ((v3 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
  swift_beginAccess();
  if (!*(*(v2 + v6) + 16))
  {
    goto LABEL_14;
  }

  sub_10016D548(a1);
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v2 + v6);
  v32 = *(v4 + v6);
  *(v4 + v6) = 0x8000000000000000;
  result = sub_10016D548(a1);
  v20 = *(v18 + 16);
  v21 = (v19 & 1) == 0;
  v14 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v14)
  {
    goto LABEL_26;
  }

  v3 = v19;
  if (*(v18 + 24) >= v22)
  {
    goto LABEL_20;
  }

  sub_1001E83BC(v22, isUniquelyReferenced_nonNull_native);
  result = sub_10016D548(a1);
  if ((v3 & 1) != (v23 & 1))
  {
    goto LABEL_13;
  }

LABEL_21:
  if (v3)
  {
    while (1)
    {
      v25 = v32;
      v26 = *(v32 + 56);
      v29 = *(v26 + 8 * result);
      v14 = __OFADD__(v29, 1);
      v28 = v29 + 1;
      if (!v14)
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      v30 = result;
      sub_1001EF6AC();
      result = v30;
      if (v3)
      {
LABEL_17:
        v25 = v32;
        v26 = *(v32 + 56);
        v27 = *(v26 + 8 * result);
        v14 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (!v14)
        {
          break;
        }

        __break(1u);
LABEL_20:
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_29:
        __break(1u);
      }

      v31 = result;
      sub_1001EF6AC();
      result = v31;
      if ((v3 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    *(v26 + 8 * result) = v28;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10019BF0C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  if (a2)
  {
    v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
    swift_beginAccess();
    if (!*(*(v3 + v8) + 16))
    {
      goto LABEL_14;
    }

    sub_10016D548(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + v8);
    v35 = v11;
    *(v3 + v8) = 0x8000000000000000;
    result = sub_10016D548(a1);
    v14 = *(v11 + 16);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (!v16)
    {
      LOBYTE(v7) = v13;
      if (*(v11 + 24) >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1001E83BC(v17, isUniquelyReferenced_nonNull_native);
        result = sub_10016D548(a1);
        if ((v7 & 1) != (v18 & 1))
        {
LABEL_13:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_14:
          swift_beginAccess();
          v26 = swift_isUniquelyReferenced_nonNull_native();
          v36 = *(v3 + v8);
          *(v3 + v8) = 0x8000000000000000;
          sub_1001EC790(0, a1, v26);
          v27 = v36;
LABEL_24:
          *(v3 + v8) = v27;
          swift_endAccess();
          v32 = *(v3 + v6);

          os_unfair_lock_unlock(v32 + 4);
        }
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
  swift_beginAccess();
  if (!*(*(v3 + v8) + 16))
  {
    goto LABEL_14;
  }

  sub_10016D548(a1);
  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v3 + v8);
  v35 = v20;
  *(v3 + v8) = 0x8000000000000000;
  result = sub_10016D548(a1);
  v22 = *(v20 + 16);
  v23 = (v21 & 1) == 0;
  v16 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v16)
  {
    goto LABEL_26;
  }

  LOBYTE(v7) = v21;
  if (*(v20 + 24) >= v24)
  {
    goto LABEL_20;
  }

  sub_1001E83BC(v24, isUniquelyReferenced_nonNull_native);
  result = sub_10016D548(a1);
  if ((v7 & 1) != (v25 & 1))
  {
    goto LABEL_13;
  }

LABEL_21:
  if (v7)
  {
    while (1)
    {
      v27 = v35;
      v28 = *(v35 + 56);
      v31 = *(v28 + 8 * result);
      v16 = __OFSUB__(v31, 1);
      v30 = v31 - 1;
      if (!v16)
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      v33 = result;
      sub_1001EF6AC();
      result = v33;
      if (v7)
      {
LABEL_17:
        v27 = v35;
        v28 = *(v35 + 56);
        v29 = *(v28 + 8 * result);
        v16 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (!v16)
        {
          break;
        }

        __break(1u);
LABEL_20:
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_29:
        __break(1u);
      }

      v34 = result;
      sub_1001EF6AC();
      result = v34;
      if ((v7 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    *(v28 + 8 * result) = v30;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10019C1F4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a1;
  v7 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v8 = __chkstk_darwin(v7 - 8);
  v81 = (v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = v76 - v10;
  v12 = type metadata accessor for Logger();
  v80 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v83 = v15;
  v84 = v16;
  v17 = __chkstk_darwin(v15);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v76 - v21;
  __chkstk_darwin(v20);
  v24 = v76 - v23;
  v25 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitConfiguration);
  if (!*(v25 + 16))
  {
    return 0;
  }

  v79 = a2;
  v26 = sub_10016D4D0(a2, a3);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  v77 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v78 = a3;
  v29 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v29 + 4);

  v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitXPCTrackingClients;
  swift_beginAccess();
  v31 = *(v4 + v30);
  v32 = v82;
  if (*(v31 + 16) && (sub_10016D548(v82), (v33 & 1) != 0))
  {
    v34 = sub_10016D548(v32);
    if ((v35 & 1) == 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v36 = *(*(v31 + 56) + 8 * v34);
    if (*(v36 + 16))
    {

      v37 = sub_10016D4D0(v79, v78);
      if (v38)
      {
        v39 = v84;
        v40 = *(v36 + 56) + *(v84 + 72) * v37;
        v76[0] = *(v84 + 16);
        v76[1] = v84 + 16;
        (v76[0])(v24, v40, v83);

        Date.timeIntervalSinceNow.getter();
        if (fabs(v41) < 1.0 / v28)
        {
          v42 = v80;
          (*(v80 + 16))(v14, v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v12);
          (v76[0])(v22, v24, v83);
          v43 = v78;

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v88[0] = v81;
            *v46 = 136315906;
            *(v46 + 4) = sub_1000952D4(v79, v43, v88);
            *(v46 + 12) = 1024;
            *(v46 + 14) = v82;
            *(v46 + 18) = 1024;
            v47 = 1;
            *(v46 + 20) = 1;
            *(v46 + 24) = 2048;
            v82 = v45;
            Date.timeIntervalSinceNow.getter();
            v49 = v48;
            v50 = v44;
            v51 = *(v84 + 8);
            v51(v22, v83);
            *(v46 + 26) = v49;
            _os_log_impl(&_mh_execute_header, v50, v82, "rateLimit: %s %d %{BOOL}d %f", v46, 0x22u);
            sub_100095808(v81);

            (*(v80 + 8))(v14, v12);
            v51(v24, v83);
          }

          else
          {

            v73 = *(v84 + 8);
            v74 = v22;
            v75 = v83;
            v73(v74, v83);
            (*(v42 + 8))(v14, v12);
            v73(v24, v75);
            v47 = 1;
          }

          v70 = v77;
LABEL_27:
          v72 = *(v4 + v70);

          os_unfair_lock_unlock(v72 + 4);

          return v47;
        }

        (*(v39 + 8))(v24, v83);
        v32 = v82;
      }

      else
      {
      }
    }
  }

  else
  {
    v53 = sub_1001F3330(_swiftEmptyArrayStorage);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v4 + v30);
    *(v4 + v30) = 0x8000000000000000;
    sub_1001EC634(v53, v32, isUniquelyReferenced_nonNull_native);
    *(v4 + v30) = v87;
    swift_endAccess();
  }

  Date.init()();
  v55 = v83;
  (*(v84 + 56))(v11, 0, 1, v83);
  swift_beginAccess();
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *(v4 + v30);
  v57 = v87;
  *(v4 + v30) = 0x8000000000000000;
  v59 = sub_10016D548(v32);
  v60 = *(v57 + 16);
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    __break(1u);
    goto LABEL_33;
  }

  LOBYTE(v14) = v58;
  if (*(v57 + 24) >= v62)
  {
    goto LABEL_18;
  }

  sub_1001E83A8(v62, v56);
  v63 = sub_10016D548(v32);
  v32 = v79;
  if ((v14 & 1) == (v64 & 1))
  {
    v59 = v63;
    while ((v14 & 1) == 0)
    {
      while (1)
      {
        __break(1u);
LABEL_18:
        v32 = v79;
        if ((v56 & 1) == 0)
        {
          break;
        }

        if (v14)
        {
          goto LABEL_20;
        }
      }

LABEL_33:
      sub_1001EF698();
    }

LABEL_20:
    v86 = *(*(v87 + 56) + 8 * v59);
    v65 = v84;
    if ((*(v84 + 48))(v11, 1, v55) == 1)
    {
      sub_100095C84(v11, &qword_1002A7C88, &qword_10023CC10);
      v66 = v81;
      sub_1001E4FE4(v32, v78, v81);
      sub_100095C84(v66, &qword_1002A7C88, &qword_10023CC10);
      v67 = v86;
    }

    else
    {
      (*(v65 + 32))(v19, v11, v55);
      v68 = v86;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v68;
      sub_1001EC4B4(v19, v32, v78, v69);
      v67 = v85;
    }

    v70 = v77;
    v71 = v87;
    if (v67)
    {
      *(*(v87 + 56) + 8 * v59) = v67;
    }

    else
    {
      sub_1001F7A38(v59, v87);
    }

    *(v4 + v30) = v71;
    swift_endAccess();
    v47 = 0;
    goto LABEL_27;
  }

LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10019C9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v10 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitXPCTrackingClients;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (*(v12 + 16))
  {
    v13 = sub_10016D548(a1);
    if (v14)
    {
      if (*(*(*(v12 + 56) + 8 * v13) + 16))
      {
        (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 67109120;
          *(v17 + 4) = a1;
          _os_log_impl(&_mh_execute_header, v15, v16, "Cleaning rate-limiting tracking for %d", v17, 8u);
        }

        (*(v6 + 8))(v8, v5);
        v18 = sub_1001F3330(_swiftEmptyArrayStorage);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v3 + v11);
        *(v3 + v11) = 0x8000000000000000;
        sub_1001EC634(v18, a1, isUniquelyReferenced_nonNull_native);
        *(v3 + v11) = v23;
        swift_endAccess();
      }
    }
  }

  v20 = *(v3 + v9);

  os_unfair_lock_unlock(v20 + 4);
}

uint64_t sub_10019CC30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019CC7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019CCE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019CD28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_10019CD88(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = __chkstk_darwin(v4);
  v6 = __chkstk_darwin(v5);
  v8 = &v42 - v7;
  __chkstk_darwin(v6);
  v46 = &v42 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  (*(v11 + 16))(&v42 - v13, a1, v10);
  v15 = objc_allocWithZone(NSData);
  v16 = sub_1000E14C4(v14, 2);
  v17 = v47;
  v18 = v48;
  v19 = v8;
  v20 = v49;
  v21 = v16;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_100095B94(0, &qword_1002A7AE0, NSKeyedUnarchiver_ptr);
  type metadata accessor for DockCoreAccessory();
  v25 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v25)
  {
    v26 = v25;
    (*(v18 + 16))(v19, v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v20);
    v47 = v26;
    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = v19;
      v31 = v30;
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136315138;
      v33 = dispatch thunk of DockCoreAccessory.info.getter();
      v34 = v43;
      DockCoreInfo.identifier.getter();

      sub_1001A2FAC(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = v22;
      v36 = v45;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v44 + 8))(v34, v36);
      v40 = sub_1000952D4(v37, v39, &v50);

      *(v31 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "Loaded paired accessory for %s.", v31, 0xCu);
      sub_100095808(v32);

      sub_1000A0D2C(v35, v24);

      (*(v48 + 8))(v46, v49);
    }

    else
    {
      sub_1000A0D2C(v22, v24);

      (*(v18 + 8))(v19, v49);
    }

    return v47;
  }

  else
  {
    sub_1000A0D2C(v22, v24);
    return 0;
  }
}

uint64_t sub_10019D5B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1001A2FAC(&qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10019DFA4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10019D898(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10019E248(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10019D9E8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100095274(&qword_1002AB4B0, &unk_10023F0C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_10019DD44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100095274(&qword_1002AB460, &qword_10023F020);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10019DFA4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10019D9E8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10019E3C8();
      goto LABEL_12;
    }

    sub_10019E75C(v10 + 1);
  }

  v12 = *v3;
  sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1001A2FAC(&qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10019E248(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10019DD44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10019E600();
      goto LABEL_16;
    }

    sub_10019EA78(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10019E3C8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095274(&qword_1002AB4B0, &unk_10023F0C8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_10019E600()
{
  v1 = v0;
  sub_100095274(&qword_1002AB460, &qword_10023F020);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

uint64_t sub_10019E75C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100095274(&qword_1002AB4B0, &unk_10023F0C8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_10019EA78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100095274(&qword_1002AB460, &qword_10023F020);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

unint64_t sub_10019ECB0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_10019ED6C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10019EE0C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

uint64_t sub_10019EEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1001A2FAC(&qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10019E3C8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10019F29C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10019F160(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019E600();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10019F5A4(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10019F29C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_10019F5A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10019F794(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

Swift::Int sub_10019F820(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v21 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_13:
      v16 = *(*(v1 + 56) + 8 * v13);
      if (*(v16 + 56) && *(v16 + 48) && (*(v16 + 40) & 1) == 0)
      {
        *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_1001CA578(v5, v3, v6, v1);
        }
      }

      else
      {
        *(v16 + 40) = 1;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_1001CA578(v5, v3, v6, v1);
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_10019FA3C(v19, v3, v1);

  return v20;
}

char *sub_10019FA3C(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_15:
      v16 = *(*(a3 + 56) + 8 * v13);
      if (*(v16 + 56) && *(v16 + 48) && (*(v16 + 40) & 1) == 0)
      {
        *&result[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_21:
          v18 = sub_1001CA578(result, a2, v6, a3);

          return v18;
        }
      }

      else
      {
        *(v16 + 40) = 1;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_21;
      }

      v15 = *(a3 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10019FB84(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1001A0668(v7);
  v7[9] = sub_10019FDE4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1001A34C4;
}

uint64_t (*sub_10019FC30(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1001A0668(v5);
  v5[9] = sub_10019FF68(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1001A34C4;
}

uint64_t (*sub_10019FCD4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1001A0690(v7);
  v7[9] = sub_1001A0444(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10019FD80;
}

void sub_10019FD84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10019FDE4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10016D4D0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1001EE308();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001E6468(v18, a4 & 1);
    v13 = sub_10016D4D0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_10019FF3C;
}

void (*sub_10019FF68(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  *(v8 + 80) = a2;
  v10 = type metadata accessor for DKAPIUsageMetric();
  *(v9 + 8) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v9 + 16) = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 24) = swift_coroFrameAlloc();
    *(v9 + 32) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 24) = malloc(*(v11 + 64));
    *(v9 + 32) = malloc(v13);
    v14 = malloc(v13);
  }

  *(v9 + 40) = v14;
  v15 = *(*(sub_100095274(&unk_1002AC8D0, &qword_10023F088) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 48) = swift_coroFrameAlloc();
    *(v9 + 56) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 48) = malloc(v15);
    *(v9 + 56) = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  *(v9 + 64) = v16;
  v18 = *v4;
  v19 = sub_10016D898(a2);
  *(v9 + 81) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_1001EE604();
      v19 = v27;
      goto LABEL_17;
    }

    sub_1001E69BC(v24, a3 & 1);
    v19 = sub_10016D898(a2);
    if ((v25 & 1) == (v28 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  *(v9 + 72) = v19;
  if (v25)
  {
    (*(v12 + 32))(v17, *(*v4 + 56) + *(v12 + 72) * v19, v10);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v12 + 56))(v17, v29, 1, v10);
  return sub_1001A0224;
}

void sub_1001A0224(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*(*a1 + 16) + 48);
  v5 = *(*a1 + 64);
  if (a2)
  {
    v6 = *(v2 + 48);
    sub_1000B5150(v5, v6, &unk_1002AC8D0, &qword_10023F088);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 48);
    if (v7 != 1)
    {
      v10 = *v2;
      v11 = *(*(v2 + 16) + 32);
      v11(*(v2 + 32), *(v2 + 48), *(v2 + 8));
      v12 = *v10;
      v13 = *(v2 + 72);
      v14 = *(v2 + 32);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 24);
        v16 = *(v2 + 80);
        v11(v15, v14, *(v2 + 8));
        sub_1001ED724(v13, v16, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 56);
    sub_1000B5150(v5, v17, &unk_1002AC8D0, &qword_10023F088);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 56);
    if (v18 != 1)
    {
      v19 = *v2;
      v11 = *(*(v2 + 16) + 32);
      v11(*(v2 + 40), *(v2 + 56), *(v2 + 8));
      v12 = *v19;
      v13 = *(v2 + 72);
      v14 = *(v2 + 40);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 16) + 72) * v13, v14, *(v2 + 8));
      goto LABEL_10;
    }
  }

  sub_100095C84(v9, &unk_1002AC8D0, &qword_10023F088);
  if (v8)
  {
    sub_1001EA6B8(*(v2 + 72), **v2);
  }

LABEL_10:
  v20 = *(v2 + 56);
  v21 = *(v2 + 64);
  v23 = *(v2 + 40);
  v22 = *(v2 + 48);
  v25 = *(v2 + 24);
  v24 = *(v2 + 32);
  sub_100095C84(v21, &unk_1002AC8D0, &qword_10023F088);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

void (*sub_1001A0444(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10016D4D0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1001EE86C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001E6D0C(v18, a4 & 1);
    v13 = sub_10016D4D0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_10019FF3C;
}

void sub_1001A059C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_1001A2B28(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

uint64_t (*sub_1001A0668(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001A3470;
}

uint64_t (*sub_1001A0690(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001A06B8;
}

void sub_1001A06C4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10019F160(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

_BYTE *sub_1001A07F0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1001A0F98(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1001A0D60(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1000C7084(v13);
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001A0D60(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1001A0F98(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_1001A0F98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100095274(&qword_1002AB460, &qword_10023F020);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1001A11D4(unint64_t a1, uint64_t a2)
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
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v8 = dispatch thunk of DockCoreAccessory.info.getter();
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1001A12F4(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_1001A11D4(*a1, a2);
  v7 = v5;
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

  v25 = a1;
  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_8;
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
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v10 = *(v4 + 8 * v8 + 32);
LABEL_16:
    v11 = v10;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v12 = dispatch thunk of DockCoreAccessory.info.getter();
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v16)
          {
            goto LABEL_46;
          }

          if (v8 >= v16)
          {
            goto LABEL_47;
          }

          v17 = *(v4 + 32 + 8 * v8);
          v14 = *(v4 + 32 + 8 * v7);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_10019F794(v4);
          v19 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v4 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

        if ((v4 & 0x8000000000000000) != 0 || v19)
        {
          v4 = sub_10019F794(v4);
          v20 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v8 >= *(v20 + 16))
        {
          goto LABEL_44;
        }

        v22 = v20 + 8 * v8;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *v25 = v4;
      }

LABEL_8:
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_43;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_42;
    }
  }

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

uint64_t sub_1001A1578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}