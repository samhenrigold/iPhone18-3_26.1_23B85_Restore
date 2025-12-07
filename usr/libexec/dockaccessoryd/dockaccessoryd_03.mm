uint64_t sub_1000BA9E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BAA28(uint64_t a1)
{
  v2 = type metadata accessor for DKXPCClientApplication(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BAA84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000BAA94(uint64_t a1, uint64_t a2)
{
  result = qword_1002A7270;
  if (!qword_1002A7270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7270);
  }

  return result;
}

uint64_t sub_1000BAAE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000BAB30()
{
  result = qword_1002A7160;
  if (!qword_1002A7160)
  {
    sub_10009589C(&unk_1002A6B60, qword_10023AE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7160);
  }

  return result;
}

char *sub_1000BABD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_txn;
  type metadata accessor for Transaction(0);
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 80) = 0;
  *(v8 + 88) = 1;
  Logger.init(subsystem:category:)();
  *(v8 + 64) = 0xD000000000000027;
  *(v8 + 72) = 0x800000010022FFC0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x403E000000000000;
  swift_unknownObjectWeakAssign();
  *&v3[v7] = v8;
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_busy] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket] = 0;
  v9 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v10 = swift_allocObject();
  *&v3[v9] = v10;
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_dataStreamOpenInProgress] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_maxSocketIdleDuration] = 0x404E000000000000;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer] = 0;
  *(v10 + 16) = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_assetID] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID] = 0;
  v11 = &v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile;
  *&v3[v12] = [objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateProfile(0)) init];
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable] = 0;
  v13 = &v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent];
  *v13 = 0;
  v13[8] = 1;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent] = 0;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval] = 0xBFF0000000000000;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] = a1;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory] = a2;
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] = a3;
  v14 = *(a1 + 40);
  *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue] = v14;
  v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 0;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for AccessoryFirmwareUpdateSession(0);
  v15 = v14;
  v16 = objc_msgSendSuper2(&v18, "init");
  *(*&v16[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_txn] + 48) = &off_100276238;
  swift_unknownObjectWeakAssign();
  return v16;
}

id sub_1000BAEB4()
{
  v1 = *&v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket];
  if (v1)
  {
    [v1 close];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccessoryFirmwareUpdateSession(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateSession(uint64_t a1)
{
  result = qword_1002A72F8;
  if (!qword_1002A72F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BB108()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
  swift_beginAccess();
  sub_1000C41E0(&v1[v8], aBlock);
  if (v25)
  {
    sub_1000A097C(aBlock, v21);
    sub_100095C84(aBlock, &unk_1002A7380, &qword_10023E970);
    v9 = v22;
    v10 = v23;
    sub_1000A09E0(v21, v22);
    (*(v10 + 16))(0, v9, v10);
    sub_100095808(v21);
  }

  else
  {
    sub_100095C84(aBlock, &unk_1002A7380, &qword_10023E970);
  }

  v11 = *(*&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  v12 = *&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v1;
  v26 = sub_1000C452C;
  v27 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  v25 = &unk_100276570;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v16 = v12;
  v1;
  static DispatchQoS.unspecified.getter();
  v21[0] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);

  sub_1000A1168();
  v17 = swift_allocError();
  *v18 = 0xD000000000000033;
  *(v18 + 8) = 0x8000000100230280;
  *(v18 + 16) = 6;
  sub_1000BBD88(v17);
}

uint64_t sub_1000BB4EC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 accessoryUnreachable:*(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory)];
  if ((result & 1) == 0)
  {
    (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "UARP accessoryUnreachable failed", v11, 2u);
    }

    result = (*(v5 + 8))(v7, v4);
  }

  *(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable) = 0;
  if (*(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
  {
    *(a2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) = 0;
  }

  return result;
}

uint64_t sub_1000BB690(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile];
  sub_10013A508(a1, v12);

  v13 = *&v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  aBlock[4] = sub_1000C43F0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_1002764F8;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v19);
}

uint64_t sub_1000BB970(_BYTE *a1)
{
  v2 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  result = sub_1000BBC14(0, 2, 0);
  if (result != 5)
  {
    a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = result;
    if (result > 2u)
    {
      if (result != 3)
      {
        if (result != 4)
        {
          return result;
        }

        goto LABEL_8;
      }

      sub_1000A1168();
      v9 = swift_allocError();
      *v10 = 0xD00000000000002CLL;
      *(v10 + 8) = 0x8000000100230220;
      v11 = 9;
    }

    else
    {
      if (result != 1)
      {
        if (result != 2)
        {
          return result;
        }

LABEL_8:
        v6 = type metadata accessor for TaskPriority();
        (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
        v7 = swift_allocObject();
        v7[2] = 0;
        v7[3] = 0;
        v7[4] = a1;
        v8 = a1;
        sub_1001B6A08(0, 0, v4, &unk_10023C698, v7);
      }

      sub_1000A1168();
      v9 = swift_allocError();
      *v10 = 0xD00000000000002DLL;
      *(v10 + 8) = 0x8000000100230250;
      v11 = 8;
    }

    *(v10 + 16) = v11;
    sub_1000BBD88(v9);
  }

  return result;
}

uint64_t sub_1000BBB84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1000BC228();
}

uint64_t sub_1000BBC14(char a1, char a2, char a3)
{
  if (a3)
  {
    goto LABEL_13;
  }

  if (a2 != 2)
  {
    *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable) = a2 & 1;
LABEL_13:
    if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  if ((*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons);
    v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
    if (v9 == 4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    if (v9 == 3)
    {
      v7 = 5;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_22;
  }

  if (a1 == 1)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons);
    v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
    if (v5 == 2)
    {
      v6 = 5;
    }

    else
    {
      v6 = 2;
    }

    if (v5 == 1)
    {
      v7 = 5;
    }

    else
    {
      v7 = 1;
    }

LABEL_22:
    if (v4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  result = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
  if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) > 2u)
  {
    if (result == 3 || result == 4)
    {
      v10 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons) == 0;
      v11 = 3;
LABEL_32:
      if (v10)
      {
        return v11 + 1;
      }

      else
      {
        return v11;
      }
    }
  }

  else if (result == 1 || result == 2)
  {
    v10 = *(*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons) == 0;
    v11 = 1;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1000BBD88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v4 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket);
  if (v5)
  {
    [v5 close];
  }

  v6 = *(v1 + v3);

  os_unfair_lock_unlock(v6 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
  if (a1 && (*(v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8) & 1) == 0)
  {
    swift_errorRetain();
    sub_1000BD3D0(0, 0, a1, 0);

    v8 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
  }

  v9 = v1 + v8;
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_1000BBE5C(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v4 = type metadata accessor for Logger();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_1000BBF48;

  return sub_1000BC228();
}

uint64_t sub_1000BBF48()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000BC084, 0, 0);
}

uint64_t sub_1000BC084()
{
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v0[3]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Registering accessory failed with error %@", v3, 0xCu);
    sub_100095C84(v4, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000BC228()
{
  v1[26] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000BC3AC, 0, 0);
}

uint64_t sub_1000BC3AC()
{
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v0[37] = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v3 = *(v1 + v2);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket;
  v0[38] = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket;
  v5 = *(v1 + v4);
  v0[39] = v5;
  v6 = *(v1 + v2);
  swift_unknownObjectRetain();

  os_unfair_lock_unlock(v6 + 4);

  if (v5 && ![v5 isClosed])
  {
    swift_unknownObjectRelease();

    v24 = v0[1];
  }

  else
  {
    v7 = v0[26];
    v8 = *(*(v7 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory) + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
    v0[40] = v8;
    if (v8)
    {
      v9 = v0[36];
      v10 = v0[33];
      v11 = v0[34];
      v12 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
      v0[41] = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
      v13 = *(v11 + 16);
      v0[42] = v13;
      v0[43] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v13(v9, v7 + v12, v10);
      v14 = v8;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Opening HDS connection to accessory", v17, 2u);
      }

      v18 = v0[36];
      v19 = v0[33];
      v20 = v0[34];

      v21 = *(v20 + 8);
      v0[44] = v21;
      v21(v18, v19);
      v22 = String._bridgeToObjectiveC()();
      v0[45] = v22;
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_1000BC7E0;
      v23 = swift_continuation_init();
      v0[17] = sub_100095274(&unk_1002A73B0, &qword_10023C678);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1000BCD44;
      v0[13] = &unk_100276458;
      v0[14] = v23;
      [v14 openStreamSocketWithApplicationProtocol:v22 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v25 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    v26[1] = 0x80000001002301D0;
    (*(*(v25 - 8) + 104))(v26, enum case for Errors.CommunicationFailure(_:), v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_willThrow();

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_1000BC7E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_1000BCC80;
  }

  else
  {
    v2 = sub_1000BC8F0;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000BC8F0()
{
  v1 = v0[42];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[26];
  v8 = v0[24];

  [v8 setDelegate:v7];
  v9 = *(v7 + v4);
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v9 + 4);

  *(v7 + v3) = v8;
  swift_unknownObjectRelease();
  v10 = *(v7 + v4);

  os_unfair_lock_unlock(v10 + 4);

  v1(v5, v7 + v2, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Opened HDS connection to accessory", v13, 2u);
  }

  v14 = v0[44];
  v15 = v0[35];
  v16 = v0[33];
  v27 = v0[32];
  v28 = v0[40];
  v30 = v0[31];
  v31 = v0[30];
  v17 = v0[29];
  v29 = v0[28];
  v19 = v0[26];
  v18 = v0[27];

  v14(v15, v16);
  v20 = *&v19[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v0[22] = sub_1000C43E8;
  v0[23] = v21;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100147FC8;
  v0[21] = &unk_1002764A8;
  v22 = _Block_copy(v0 + 18);
  v23 = v20;
  v24 = v19;
  static DispatchQoS.unspecified.getter();
  v0[25] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v29 + 8))(v17, v18);
  (*(v30 + 8))(v27, v31);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000BCC80(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[40];
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1000BCD44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000A09E0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000BCE20(_BYTE *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  sub_1000BD260();
  v13 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory;
  v14 = *&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory];
  v15 = *(*&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  if ([v15 accessoryReachable:v14])
  {
    a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable] = 1;
    if (a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state])
    {
      a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 0;
    }

    v16 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
    if (*(*&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion + 8))
    {

      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    v21 = [v15 updateProperty:4 value:v17 forAccessory:*&a1[v13]];

    v22 = *(v4 + 16);
    if (v21)
    {
      v22(v7, &a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v3);
      v18 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v18, v23))
      {
        v12 = v7;
        goto LABEL_15;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v23, "Notified UARP accessory is reachable", v24, 2u);
      v12 = v7;
    }

    else
    {
      v22(v10, &a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v3);
      v25 = a1;
      v18 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v18, v26))
      {
        v12 = v10;
        goto LABEL_15;
      }

      v27 = swift_slowAlloc();
      v36 = v16;
      v28 = v27;
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      v30 = *&a1[v13];
      *(v28 + 4) = v30;
      *v29 = v30;
      *(v28 + 12) = 2112;
      v31 = *(*&a1[v36] + 24);
      *(v28 + 14) = v31;
      v29[1] = v31;
      v32 = v30;
      v33 = v31;
      _os_log_impl(&_mh_execute_header, v18, v26, "Failed to update UARP accessory firmware version property for accessory %@ for dock accessory %@", v28, 0x16u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();

      v12 = v10;
    }

    goto LABEL_14;
  }

  (*(v4 + 16))(v12, &a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "UARP accessoryReachable failed", v20, 2u);
LABEL_14:
  }

LABEL_15:

  return (*(v4 + 8))(v12, v3);
}

id sub_1000BD260()
{
  v1 = [objc_allocWithZone(HMFTimer) initWithTimeInterval:1 options:*(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_maxSocketIdleDuration)];
  v2 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer;
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer);
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer) = v1;
  v4 = v1;

  if (v4)
  {
    [v4 setDelegate:v0];
  }

  v5 = *(v0 + v2);
  if (v5)
  {
    [v5 setDelegateQueue:*(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue)];
    v5 = *(v0 + v2);
  }

  return [v5 resume];
}

uint64_t sub_1000BD32C()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer;
  [*(v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer) suspend];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1000A1168();
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  *(v4 + 8) = 0x80000001002301B0;
  *(v4 + 16) = 7;
  sub_1000BBD88(v3);
}

void sub_1000BD3D0(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v47 = a1;
  updated = type metadata accessor for DKFirmwareUpdateMetric();
  v52 = *(updated - 8);
  v53 = updated;
  __chkstk_darwin(updated);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
  v16 = *(v10 + 16);
  v54 = v4;
  v16(&v42 - v13, &v4[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending firmware update metrics...", v19, 2u);
  }

  v45 = *(v10 + 8);
  v45(v14, v9);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v20 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
  v21 = v54;
  v22 = *(*(v54 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory) + 24);
  v23 = sub_1001884E4(v22);

  if (v23)
  {
    v24 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval;
    v25 = 0.0;
    if (*&v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval] > 0.0)
    {
      v26 = v42;
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      (*(v43 + 8))(v26, v44);
    }

    if (!v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8])
    {
      v25 = *&v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent];
    }

    if ((v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8] & 1) != 0 || (*&v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      if (v25 > -1.0)
      {
        if (v25 < 1.84467441e19)
        {
          v27 = *&v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent];
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v27 > -1.0)
            {
              if (v27 < 1.84467441e19)
              {
                v28 = (*&v21[v20] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
                v29 = v28[1];
                v46 = v24;
                if (v29)
                {
                  v44 = *v28;
                  v45 = v29;
                  v43 = v29;
                }

                else
                {
                  v44 = 0x6E776F6E6B6E55;
                  v45 = 0xE000000000000000;
                  v43 = 0xE700000000000000;
                }

                swift_bridgeObjectRetain_n();

                v40 = dispatch thunk of DockCoreAccessory.info.getter();
                DockCoreInfo.name.getter();

                dispatch thunk of DockCoreAccessory.model.getter();
                if (v49)
                {
                  swift_getErrorValue();
                  Error.localizedDescription.getter();
                }

                v41 = v51;
                DKFirmwareUpdateMetric.init(duration:startPercent:endPercent:fromFirmwareVersion:toFirmwareVersion:hardwareVersion:make:hardwareModel:success:error:)();
                DKFirmwareUpdateMetric.send()();

                (*(v52 + 8))(v41, v53);
                *&v46[v54] = 0xBFF0000000000000;
                return;
              }

LABEL_31:
              __break(1u);
              return;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  v30 = &v21[v15];
  v31 = v46;
  v16(v46, v30, v9);
  v32 = v21;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v21;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = *(*&v35[v20] + 24);
    *(v36 + 4) = v38;
    *v37 = v38;
    v39 = v38;
    _os_log_impl(&_mh_execute_header, v33, v34, "No DockAccessory found in database with info %@", v36, 0xCu);
    sub_100095C84(v37, &unk_1002A6F60, &unk_10023C4E0);
  }

  v45(v31, v9);
}

uint64_t sub_1000BDA60(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000BDBA8(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  v14 = *(v10 + 16);
  v35 = v2;
  v14(v12, &v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v9);
  v15 = a2;
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v9;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v5;
    *v20 = 138412802;
    *(v20 + 4) = v16;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v15;
    *v21 = v16;
    v21[1] = v15;
    *(v20 + 22) = 2048;
    v22 = v16;
    *(v20 + 24) = [v15 updateAvailabilityStatus];

    _os_log_impl(&_mh_execute_header, v17, v18, "assetAvailablityUpdate for %@ %@ status is %ld", v20, 0x20u);
    sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
    swift_arrayDestroy();
    v5 = v34;

    v9 = v19;
  }

  else
  {

    v17 = v15;
  }

  (*(v10 + 8))(v12, v9);
  v23 = v35;
  v24 = *&v35[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v15;
  v25[4] = v13;
  v25[5] = v16;
  aBlock[4] = sub_1000C43B0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276430;
  v26 = _Block_copy(aBlock);
  v27 = v15;
  v28 = v16;
  v29 = v24;
  v30 = v23;

  v31 = v36;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v32 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v40 + 8))(v32, v5);
  (*(v37 + 8))(v31, v38);
}

void sub_1000BE098(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v180 = a4;
  v179 = type metadata accessor for Date();
  v177 = *(v179 - 1);
  __chkstk_darwin(v179);
  v8 = (&v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = type metadata accessor for Logger();
  v182 = *(v181 - 8);
  v9 = __chkstk_darwin(v181);
  v11 = (&v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = &v172 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v172 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v172 - v19;
  __chkstk_darwin(v18);
  v183 = &v172 - v21;
  v22 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_assetID);
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_assetID) = a2;
  v23 = a2;

  v24 = *(*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  v25 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile;
  v26 = *(*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons);
  if (v26)
  {
    v187 = 0;
    v188 = 0xE000000000000000;
    v179 = v24;
    v27 = v26;
    _StringGuts.grow(_:)(29);

    v187 = 0xD00000000000001BLL;
    v188 = 0x80000001002300F0;
    v180 = v27;
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33 = v187;
    v34 = v188;
    swift_beginAccess();
    *(a3 + 16) = v33;
    *(a3 + 24) = v34;

    v35 = v182;
    v36 = v181;
    (*(v182 + 16))(v183, a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v181);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = a1;
    v178 = a3;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v187 = v42;
      *v41 = 136315138;
      swift_beginAccess();
      v44 = *(a3 + 16);
      v43 = *(a3 + 24);

      v45 = sub_1000952D4(v44, v43, &v187);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s", v41, 0xCu);
      sub_100095808(v42);
    }

    (*(v35 + 8))(v183, v36);
    v46 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    swift_beginAccess();
    sub_1000C41E0(v40 + v46, &v187);
    if (v189)
    {
      sub_1000A097C(&v187, v184);
      sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
      v47 = v185;
      v48 = v186;
      sub_1000A09E0(v184, v185);
      v49 = v178;
      swift_beginAccess();
      v51 = *(v49 + 16);
      v50 = *(v49 + 24);
      sub_1000A1168();
      v52 = swift_allocError();
      *v53 = v51;
      *(v53 + 8) = v50;
      *(v53 + 16) = 6;
      v54 = *(v48 + 8);
      swift_bridgeObjectRetain_n();
      v54(v51, v50, 1, v52, v47, v48);

LABEL_6:

      sub_100095808(v184);
      return;
    }

    goto LABEL_13;
  }

  v173 = v14;
  v175 = v11;
  v174 = v8;
  v176 = v17;
  v183 = v24;
  v55 = [v23 updateAvailabilityStatus];
  v56 = a1;
  v57 = a3;
  if (v55 == 1)
  {
LABEL_10:
    v179 = v23;
    swift_beginAccess();
    *(a3 + 16) = 0xD00000000000002BLL;
    *(a3 + 24) = 0x8000000100230140;

    v58 = v182;
    v59 = *(v182 + 16);
    v173 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
    v60 = a1;
    v61 = v181;
    v177 = v182 + 16;
    v175 = v59;
    v59(v20, a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v181);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = v61;
      v66 = swift_slowAlloc();
      v187 = v66;
      *v64 = 136315138;
      swift_beginAccess();
      v68 = *(v57 + 16);
      v67 = *(v57 + 24);

      v69 = sub_1000952D4(v68, v67, &v187);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "%s", v64, 0xCu);
      sub_100095808(v66);
      v61 = v65;

      v70 = *(v182 + 8);
      v71 = v20;
      v72 = v65;
    }

    else
    {

      v70 = *(v58 + 8);
      v71 = v20;
      v72 = v61;
    }

    v174 = v70;
    v70(v71, v72);
    v77 = v57;
    v78 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    swift_beginAccess();
    sub_1000C41E0(v60 + v78, &v187);
    if (v189)
    {
      sub_1000A097C(&v187, v184);
      sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
      v79 = v185;
      v80 = v186;
      sub_1000A09E0(v184, v185);
      swift_beginAccess();
      v81 = *(v57 + 16);
      v82 = *(v57 + 24);
      v83 = v60;
      v84 = *(v80 + 8);

      v84(v81, v82, 0, 0, v79, v80);
      v60 = v83;
      v61 = v181;

      sub_100095808(v184);
    }

    else
    {
      sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
    }

    v85 = v180;
    v86 = v179;
    if ([v183 downloadAvailableFirmwareUpdate:v180 assetID:v179 withUserIntent:0])
    {
LABEL_27:

      return;
    }

    v187 = 0;
    v188 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v87._countAndFlagsBits = 0xD000000000000035;
    v87._object = 0x8000000100230170;
    String.append(_:)(v87);
    v88 = [v85 description];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92._countAndFlagsBits = v89;
    v92._object = v91;
    String.append(_:)(v92);

    v93._countAndFlagsBits = 0x4449746573736120;
    v93._object = 0xE90000000000003ALL;
    String.append(_:)(v93);
    v94 = [v86 description];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98._countAndFlagsBits = v95;
    v98._object = v97;
    String.append(_:)(v98);

    v99 = v187;
    v100 = v188;
    swift_beginAccess();
    *(v77 + 16) = v99;
    *(v77 + 24) = v100;

    v101 = v176;
    v175(v176, v60 + v173, v61);

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v187 = v105;
      *v104 = 136315138;
      swift_beginAccess();
      v106 = *(v77 + 16);
      v107 = *(v77 + 24);

      v108 = sub_1000952D4(v106, v107, &v187);

      *(v104 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v102, v103, "%s", v104, 0xCu);
      sub_100095808(v105);

      v109 = v101;
      v110 = v181;
    }

    else
    {

      v109 = v101;
      v110 = v61;
    }

    v174(v109, v110);
    sub_1000C41E0(v60 + v78, &v187);
    if (v189)
    {
      sub_1000A097C(&v187, v184);
      sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
      v116 = v185;
      v117 = v186;
      sub_1000A09E0(v184, v185);
      swift_beginAccess();
      v119 = *(v77 + 16);
      v118 = *(v77 + 24);
      sub_1000A1168();
      v121 = swift_allocError();
      *v120 = v119;
      *(v120 + 8) = v118;
      v122 = 3;
LABEL_48:
      *(v120 + 16) = v122;
      v163 = *(v117 + 8);
      swift_bridgeObjectRetain_n();
      v163(v119, v118, 1, v121, v116, v117);

      goto LABEL_6;
    }

    goto LABEL_49;
  }

  if (v55 == 3)
  {
    if (*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable))
    {
      v73 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state;
      v74 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state);
      v75 = v183;
      if (!*(*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons))
      {
        if (v74 != 2)
        {
          v123 = a1;
          *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) = 2;

          sub_100105518();

          swift_beginAccess();
          *(a3 + 16) = 0xD000000000000023;
          *(a3 + 24) = 0x8000000100230110;

          v124 = a3;
          v125 = v182;
          v126 = v173;
          v127 = v181;
          (*(v182 + 16))(v173, a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v181);

          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.default.getter();

          v130 = os_log_type_enabled(v128, v129);
          v178 = v124;
          if (v130)
          {
            v131 = swift_slowAlloc();
            LODWORD(v176) = v129;
            v132 = v131;
            v133 = swift_slowAlloc();
            v187 = v133;
            *v132 = 136315138;
            swift_beginAccess();
            v135 = *(v124 + 16);
            v134 = *(v124 + 24);

            v136 = sub_1000952D4(v135, v134, &v187);

            *(v132 + 4) = v136;
            _os_log_impl(&_mh_execute_header, v128, v176, "%s", v132, 0xCu);
            sub_100095808(v133);
          }

          (*(v125 + 8))(v126, v127);
          v137 = v179;
          v138 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
          swift_beginAccess();
          sub_1000C41E0(v123 + v138, &v187);
          v139 = v180;
          if (v189)
          {
            sub_1000A097C(&v187, v184);
            sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
            v140 = v185;
            v141 = v186;
            sub_1000A09E0(v184, v185);
            v142 = v178;
            swift_beginAccess();
            v144 = *(v142 + 16);
            v143 = *(v142 + 24);
            v145 = *(v141 + 8);

            v145(v144, v143, 0, 0, v140, v141);

            sub_100095808(v184);
          }

          else
          {
            sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
          }

          v164 = v123 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
          *v164 = 0;
          *(v164 + 8) = 1;
          v165 = v174;
          static Date.now.getter();
          Date.timeIntervalSince1970.getter();
          v167 = v166;
          (*(v177 + 8))(v165, v137);
          *(v123 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_firmwareUpdateInterval) = v167;
          sub_100095274(&qword_1002A7390, &qword_10023BEF0);
          v168 = swift_allocObject();
          *(v168 + 16) = xmmword_10023BDA0;
          *(v168 + 32) = v139;
          sub_1000C42B0(0, v169);
          v170 = v139;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v183 stageFirmwareUpdateOnAccessoryList:isa withUserIntent:1];

          goto LABEL_27;
        }

        goto LABEL_22;
      }

      if (v74 == 1)
      {
        goto LABEL_22;
      }

      v76 = 1;
    }

    else
    {
      v73 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state;
      v75 = v183;
      if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
      {
        goto LABEL_22;
      }

      v76 = 0;
    }

    v178 = a3;
    *(a1 + v73) = v76;
    v187 = 0;
    v188 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v187 = 0xD00000000000001BLL;
    v188 = 0x80000001002300F0;
    v111 = *(*(a1 + v25) + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons);
    if (v111)
    {
      v112 = [v111 description];
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;
    }

    else
    {
      v115 = 0xE700000000000000;
      v113 = 0x6E776F6E6B6E55;
    }

    v146 = v181;
    v147 = v182;
    v148._countAndFlagsBits = v113;
    v148._object = v115;
    String.append(_:)(v148);

    v149 = v187;
    v150 = v188;
    v151 = v178;
    swift_beginAccess();
    *(v151 + 16) = v149;
    *(v151 + 24) = v150;

    v152 = v175;
    (*(v147 + 16))(v175, v56 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v146);

    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v187 = v156;
      *v155 = 136315138;
      swift_beginAccess();
      v157 = v56;
      v158 = *(v151 + 16);
      v159 = *(v151 + 24);

      v160 = sub_1000952D4(v158, v159, &v187);

      *(v155 + 4) = v160;
      _os_log_impl(&_mh_execute_header, v153, v154, "%s", v155, 0xCu);
      sub_100095808(v156);

      (*(v147 + 8))(v175, v146);
    }

    else
    {

      (*(v147 + 8))(v152, v146);
      v157 = v56;
    }

    v161 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    swift_beginAccess();
    sub_1000C41E0(v157 + v161, &v187);
    if (v189)
    {
      sub_1000A097C(&v187, v184);
      sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
      v116 = v185;
      v117 = v186;
      sub_1000A09E0(v184, v185);
      v162 = v178;
      swift_beginAccess();
      v119 = *(v162 + 16);
      v118 = *(v162 + 24);
      sub_1000A1168();
      v121 = swift_allocError();
      *v120 = v119;
      *(v120 + 8) = v118;
      v122 = 6;
      goto LABEL_48;
    }

LABEL_49:

LABEL_13:
    sub_100095C84(&v187, &unk_1002A7380, &qword_10023E970);
    return;
  }

  if (v55 == 4)
  {
    goto LABEL_10;
  }

  v75 = v183;
LABEL_22:
}

uint64_t sub_1000BF4E8(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 16);
  v55 = v17;
  v16(v15, &v5[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger]);
  v18 = a1;
  sub_1000A0CD8(a2, a3);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  sub_1000A0D2C(a2, a3);
  v21 = os_log_type_enabled(v19, v20);
  v54 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v47 = v4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v46 = v5;
    v25 = v24;
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v23 = 138412546;
    *(v23 + 4) = v18;
    *v25 = v18;
    *(v23 + 12) = 2080;
    v26 = v18;
    v27 = Data.base64EncodedString(options:)(0);
    v28 = sub_1000952D4(v27._countAndFlagsBits, v27._object, aBlock);

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "sendMessage: %@ msg is %s", v23, 0x16u);
    sub_100095C84(v25, &unk_1002A6F60, &unk_10023C4E0);
    v5 = v46;

    sub_100095808(v45);
  }

  (*(v13 + 8))(v15, v55);
  v29 = *&v5[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket];
  if (!v29)
  {
    goto LABEL_6;
  }

  if ([swift_unknownObjectRetain() isClosed])
  {
    swift_unknownObjectRelease();
LABEL_6:
    v30 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v31 = 0xD000000000000027;
    v31[1] = 0x80000001002300C0;
    (*(*(v30 - 8) + 104))(v31, enum case for Errors.CommunicationFailure(_:), v30);
    swift_willThrow();
    return swift_willThrow();
  }

  v33 = *&v5[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v34 = swift_allocObject();
  v34[2] = v5;
  aBlock[4] = sub_1000C4344;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_1002763E0;
  v35 = _Block_copy(aBlock);
  v55 = v33;
  v36 = v5;
  v37 = v48;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v38 = v50;
  v39 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v55;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v52 + 8))(v38, v39);
  (*(v49 + 8))(v37, v51);

  isa = Data._bridgeToObjectiveC()().super.isa;
  aBlock[0] = 0;
  LOBYTE(v40) = [v29 writeData:isa error:aBlock];

  if ((v40 & 1) == 0)
  {
    v43 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_willThrow();
  }

  v42 = aBlock[0];
  return swift_unknownObjectRelease();
}

uint64_t sub_1000BFCD0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0xE000000000000000;
  (*(v11 + 16))(v13, &v4[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v10);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v6;
    v20 = v19;
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "firmwareStagingProgress: %@", v18, 0xCu);
    sub_100095C84(v20, &unk_1002A6F60, &unk_10023C4E0);
    v6 = v34;
  }

  (*(v11 + 8))(v13, v10);
  v22 = *&v4[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v23 = swift_allocObject();
  v24 = v36;
  v23[2] = v35;
  v23[3] = v4;
  v23[4] = v15;
  v23[5] = v24;
  v23[6] = v14;
  aBlock[4] = sub_1000C42A0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276390;
  v25 = _Block_copy(aBlock);
  v26 = v15;
  v27 = v22;
  v28 = v4;
  v29 = v24;

  v30 = v37;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v31 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v41 + 8))(v31, v6);
  (*(v38 + 8))(v30, v39);
}

void sub_1000C0164(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v20 = &v128 - v17;
  v136 = a1;
  if (a1)
  {
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v140 = 0xD000000000000019;
    v141 = 0x8000000100230040;
    v21 = [a3 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v10;
    v23 = a2;
    v24 = v22;
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0x207465737361202CLL;
    v28._object = 0xE800000000000000;
    String.append(_:)(v28);
    v29 = [a4 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x20727265202CLL;
    v34._object = 0xE600000000000000;
    String.append(_:)(v34);
    v137[0] = v136;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36 = v140;
    v37 = v141;
    swift_beginAccess();
    *(a5 + 16) = v36;
    *(a5 + 24) = v37;
    v133 = a5;

    v38 = *(v11 + 16);
    v135 = v23;
    v39 = &v23[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger];
    v40 = v134;
    v38(v14, v39, v134);
    v41 = a3;
    v42 = a4;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412802;
      *(v45 + 4) = v41;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v42;
      *v46 = v41;
      v46[1] = v42;
      *(v45 + 22) = 2048;
      *(v45 + 24) = v136;
      v47 = v41;
      v48 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "Firmware staging failed: %@, asset %@, err %lu", v45, 0x20u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v14, v40);
    v49 = v133;
    swift_beginAccess();
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    v53 = v135;
    swift_beginAccess();
    sub_1000C41E0(&v53[v52], &v140);
    if (v142)
    {
      sub_1000A097C(&v140, v137);

      sub_100095C84(&v140, &unk_1002A7380, &qword_10023E970);
      v54 = v138;
      v55 = v139;
      sub_1000A09E0(v137, v138);
      swift_beginAccess();
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      sub_1000A1168();
      v58 = swift_allocError();
      *v59 = v50;
      *(v59 + 8) = v51;
      *(v59 + 16) = 4;
      v60 = *(v55 + 8);

      v60(v57, v56, 1, v58, v54, v55);

      sub_100095808(v137);
    }

    else
    {

      sub_100095C84(&v140, &unk_1002A7380, &qword_10023E970);
    }

    sub_1000A1168();
    v73 = swift_allocError();
    *v74 = v50;
    *(v74 + 8) = v51;
    *(v74 + 16) = 4;

    sub_1000BBD88(v73);

    v75 = swift_allocError();
    *v76 = v50;
    *(v76 + 8) = v51;
    *(v76 + 16) = 4;
    sub_1000BD3D0(0, 0, v75, 0);
  }

  else
  {
    v129 = v19;
    v131 = v18;
    v61 = a5;
    v136 = v11;
    v62 = *(v11 + 16);
    v132 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
    v135 = v62;
    (v62)(&v128 - v17, &a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v10);
    v63 = a3;
    v64 = a4;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    v67 = os_log_type_enabled(v65, v66);
    v130 = v63;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v133 = v61;
      v134 = v10;
      *v68 = 138412546;
      *(v68 + 4) = v63;
      *(v68 + 12) = 2112;
      *(v68 + 14) = v64;
      *v69 = v63;
      v69[1] = v64;
      v70 = v63;
      v71 = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Firmware staging complete: %@, asset %@", v68, 0x16u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();
      v10 = v134;
      v72 = v133;
    }

    else
    {

      v72 = v61;
    }

    v77 = *(v136 + 8);
    v136 += 8;
    v77(v20, v10);
    v78 = *&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID];
    *&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID] = v64;
    v79 = v64;

    if (a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable])
    {
      v80 = a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state];
      if (*(*&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons))
      {
        if (v80 != 3)
        {
          a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 3;
          swift_beginAccess();
          *(v72 + 16) = 0xD00000000000001CLL;
          *(v72 + 24) = 0x8000000100230060;

          v81 = v131;
          (v135)(v131, &a2[v132], v10);

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v134 = v10;
            v86 = a2;
            v87 = v85;
            v140 = v85;
            *v84 = 136315138;
            swift_beginAccess();
            v88 = *(v72 + 16);
            v89 = *(v72 + 24);

            v90 = sub_1000952D4(v88, v89, &v140);

            *(v84 + 4) = v90;
            _os_log_impl(&_mh_execute_header, v82, v83, "%s", v84, 0xCu);
            sub_100095808(v87);
            a2 = v86;

            v91 = v81;
            v92 = v134;
          }

          else
          {

            v91 = v81;
            v92 = v10;
          }

          v77(v91, v92);
          v105 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
          swift_beginAccess();
          sub_1000C41E0(&a2[v105], &v140);
          if (v142)
          {
            sub_1000A097C(&v140, v137);
            sub_100095C84(&v140, &unk_1002A7380, &qword_10023E970);
            v106 = v138;
            v107 = v139;
            sub_1000A09E0(v137, v138);
            swift_beginAccess();
            v109 = *(v72 + 16);
            v108 = *(v72 + 24);
            sub_1000A1168();
            v110 = swift_allocError();
            *v111 = v109;
            *(v111 + 8) = v108;
            *(v111 + 16) = 6;
            v112 = *(v107 + 8);
            swift_bridgeObjectRetain_n();
            v112(v109, v108, 1, v110, v106, v107);

            sub_100095808(v137);
          }

          else
          {
            sub_100095C84(&v140, &unk_1002A7380, &qword_10023E970);
          }

          sub_1001059EC();
        }
      }

      else if (v80 != 4)
      {
        a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 4;
        swift_beginAccess();
        *(v72 + 16) = 0xD00000000000001CLL;
        *(v72 + 24) = 0x8000000100230080;

        v93 = v129;
        (v135)(v129, &a2[v132], v10);

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v134 = v10;
          v98 = a2;
          v99 = v97;
          v140 = v97;
          *v96 = 136315138;
          swift_beginAccess();
          v100 = *(v72 + 16);
          v101 = *(v72 + 24);

          v102 = sub_1000952D4(v100, v101, &v140);

          *(v96 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v94, v95, "%s", v96, 0xCu);
          sub_100095808(v99);
          a2 = v98;

          v103 = v93;
          v104 = v134;
        }

        else
        {

          v103 = v93;
          v104 = v10;
        }

        v77(v103, v104);
        v113 = v130;
        v114 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
        swift_beginAccess();
        sub_1000C41E0(&a2[v114], &v140);
        if (v142)
        {
          sub_1000A097C(&v140, v137);
          sub_100095C84(&v140, &unk_1002A7380, &qword_10023E970);
          v115 = a2;
          v116 = v138;
          v117 = v139;
          sub_1000A09E0(v137, v138);
          swift_beginAccess();
          v119 = *(v72 + 16);
          v118 = *(v72 + 24);
          v120 = *(v117 + 8);

          v121 = v116;
          a2 = v115;
          v120(v119, v118, 0, 0, v121, v117);

          sub_100095808(v137);
        }

        else
        {
          sub_100095C84(&v140, &unk_1002A7380, &qword_10023E970);
        }

        v122 = *(*&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
        sub_100095274(&qword_1002A7390, &qword_10023BEF0);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_10023BDA0;
        *(v123 + 32) = v113;
        sub_1000C42B0(0, v124);
        v125 = v113;
        v126 = v122;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v126 applyStagedFirmwareOnAccessoryList:isa withUserIntent:1];
      }
    }

    else if (a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state])
    {
      a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 0;
    }
  }
}

uint64_t sub_1000C0FFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  (*(v10 + 16))(v12, &v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v9);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v5;
    v19 = v18;
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "firmwareStagingProgress: %@)", v17, 0xCu);
    sub_100095C84(v19, &unk_1002A6F60, &unk_10023C4E0);
    v5 = v30;
  }

  (*(v10 + 8))(v12, v9);

  sub_1001059EC();

  v21 = *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v22 = swift_allocObject();
  v22[2] = v31;
  v22[3] = v13;
  v22[4] = v14;
  v22[5] = v3;
  aBlock[4] = sub_1000C41D4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276340;
  v23 = _Block_copy(aBlock);
  v24 = v14;
  v25 = v21;

  v26 = v3;
  v27 = v32;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v28 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v36 + 8))(v28, v5);
  (*(v33 + 8))(v27, v34);
}

uint64_t sub_1000C14A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v10 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v165 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v22 = &v139 - v21;
  v164 = a4;
  if (a1)
  {
    v169 = 0;
    v170 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v169 = 0xD00000000000001ELL;
    v170 = 0x800000010022FFF0;
    v166 = a1;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25 = [a3 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30 = v169;
    v31 = v170;
    swift_beginAccess();
    *(a2 + 16) = v30;
    *(a2 + 24) = v31;

    v32 = v165;
    (*(v165 + 16))(v14, a4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v11);
    v33 = a3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = v32;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 134218242;
      *(v37 + 4) = a1;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v33;
      *v38 = v33;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "Firmware apply failed: status %lu %@", v37, 0x16u);
      sub_100095C84(v38, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v36 + 8))(v14, v11);
    swift_beginAccess();
    v41 = *(a2 + 16);
    v40 = *(a2 + 24);
    sub_1000A1168();
    v42 = swift_allocError();
    *v43 = v41;
    *(v43 + 8) = v40;
    *(v43 + 16) = 5;
    v44 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    v45 = v164;
    swift_beginAccess();
    sub_1000C41E0(v45 + v44, &v169);
    if (v171)
    {
      sub_1000A097C(&v169, &v166);

      sub_100095C84(&v169, &unk_1002A7380, &qword_10023E970);
      v46 = v167;
      v47 = v168;
      sub_1000A09E0(&v166, v167);
      swift_beginAccess();
      v49 = *(a2 + 16);
      v48 = *(a2 + 24);
      v50 = *(v47 + 8);

      v50(v49, v48, 1, v42, v46, v47);

      sub_100095808(&v166);
    }

    else
    {

      sub_100095C84(&v169, &unk_1002A7380, &qword_10023E970);
    }
  }

  else
  {
    v159 = v20;
    v156 = v10;
    v157 = v19;
    v150 = v18;
    v169 = 0;
    v170 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v169 = 0xD00000000000002FLL;
    v170 = 0x8000000100230010;
    v51 = [a3 description];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55._countAndFlagsBits = v52;
    v55._object = v54;
    String.append(_:)(v55);

    v56 = v169;
    v57 = v170;
    swift_beginAccess();
    *(a2 + 16) = v56;
    *(a2 + 24) = v57;

    v58 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
    v59 = v165;
    v60 = *(v165 + 16);
    v162 = v165 + 16;
    v161 = v60;
    v60(v22, a4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v11);
    v61 = a3;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v58;
      v65 = swift_slowAlloc();
      v66 = v59;
      v67 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v61;
      *v67 = v61;
      v68 = v61;
      _os_log_impl(&_mh_execute_header, v62, v63, "Firmware apply successful, firmware is updated %@", v65, 0xCu);
      sub_100095C84(v67, &unk_1002A6F60, &unk_10023C4E0);
      v59 = v66;

      v58 = v64;
    }

    v69 = *(v59 + 8);
    v163 = v11;
    v165 = v59 + 8;
    v69(v22, v11);
    v70 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    v45 = v164;
    swift_beginAccess();
    sub_1000C41E0(v45 + v70, &v169);
    if (v171)
    {
      sub_1000A097C(&v169, &v166);
      sub_100095C84(&v169, &unk_1002A7380, &qword_10023E970);
      v71 = v167;
      v72 = v168;
      sub_1000A09E0(&v166, v167);
      swift_beginAccess();
      v73 = *(a2 + 16);
      v74 = *(a2 + 24);
      v75 = *(v72 + 8);

      v75(v73, v74, 1, 0, v71, v72);

      sub_100095808(&v166);
    }

    else
    {
      sub_100095C84(&v169, &unk_1002A7380, &qword_10023E970);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v76 = qword_1002B1CF0;
    v77 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
    v78 = *(*(v45 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory) + 24);
    v158 = v76;
    v79 = sub_1001884E4(v78);

    v80 = v163;
    v160 = v79;
    if (v79)
    {
      v161(v159, v45 + v58, v163);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Updating accessory firmware version", v83, 2u);
        v80 = v163;
      }

      v69(v159, v80);
      v84 = *(*(v45 + v77) + 24);
      v85 = v156;
      DockCoreInfo.identifier.getter();

      v86 = sub_1001408A0(v85);
      v153 = v87;
      v88 = *(*(v45 + v77) + 24);
      v152 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID;
      v89 = *(v45 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID);
      v154 = v69;
      if (v89)
      {
        v90 = v88;
        v91 = [v89 assetVersion];
        v92 = v158;
        v93 = v80;
        if (v91)
        {
          v94 = v91;
          v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v159 = v95;
        }

        else
        {
          v155 = 0;
          v159 = 0;
        }
      }

      else
      {
        v93 = v80;
        v96 = v88;
        v155 = 0;
        v159 = 0;
        v92 = v158;
      }

      v146 = dispatch thunk of DockCoreAccessory.serialNumber.getter();
      v98 = v97;
      v156 = dispatch thunk of DockCoreAccessory.model.getter();
      v100 = v99;
      v148 = dispatch thunk of DockCoreAccessory.isMagSafe.getter();
      v147 = dispatch thunk of DockCoreAccessory.certified.getter();
      v101 = sub_1001884E4(v88);
      v102 = v88;
      v151 = v88;
      if (v101)
      {
        v103 = v101;
        v145 = v98;
        v149 = v86;
        v142 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
        v104 = v93;
        v161(v157, v92 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v93);

        v105 = v102;
        v106 = v159;

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();

        v141 = v108;
        v143 = v107;
        v109 = os_log_type_enabled(v107, v108);
        v144 = v100;
        if (v109)
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v140 = v111;
          v166 = swift_slowAlloc();
          *v110 = 138412802;
          *(v110 + 4) = v105;
          *v111 = v105;
          *(v110 + 12) = 2080;
          v169 = v155;
          v170 = v106;
          v112 = v105;

          sub_100095274(&unk_1002A6F20, &unk_10023C660);
          v113 = String.init<A>(describing:)();
          v115 = sub_1000952D4(v113, v114, &v166);

          *(v110 + 14) = v115;
          v106 = v159;
          *(v110 + 22) = 2080;
          v169 = v156;
          v170 = v100;

          v116 = String.init<A>(describing:)();
          v118 = sub_1000952D4(v116, v117, &v166);
          v119 = v163;

          *(v110 + 24) = v118;
          v104 = v119;
          v120 = v143;
          _os_log_impl(&_mh_execute_header, v143, v141, "Updating accessory information for %@: firmware %s, model %s", v110, 0x20u);
          sub_100095C84(v140, &unk_1002A6F60, &unk_10023C4E0);

          swift_arrayDestroy();

          v92 = v158;
        }

        else
        {
        }

        v154(v157, v104);
        v121 = v149;
        v122 = v145;
        if (!v106)
        {
          v155 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
        }

        dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
        v123 = v144;
        if (!v122)
        {
          dispatch thunk of DockCoreAccessory.serialNumber.getter();
        }

        dispatch thunk of DockCoreAccessory.serialNumber.setter();
        if (!v123)
        {
          v156 = dispatch thunk of DockCoreAccessory.model.getter();
        }

        dispatch thunk of DockCoreAccessory.model.setter();
        dispatch thunk of DockCoreAccessory.certified.setter();
        dispatch thunk of DockCoreAccessory.isMagSafe.setter();
        sub_10018F7CC(v103, v124);
      }

      else
      {

        v121 = v86;
      }

      *(*(v45 + v77) + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer) = 1;
      v125 = *(v92 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v126 = v153;
      v127 = sub_10014025C(v121, v153);
      sub_1000D9F2C(v127, v128);

      v129 = *(v45 + v77);

      v130 = sub_1001F2F38(_swiftEmptyArrayStorage);
      v131 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
      swift_beginAccess();
      *(v129 + v131) = v130;

      *(v45 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent) = 0x4059000000000000;
      v132 = *(v45 + v152);
      if (v132 && (v132 = [v132 assetVersion]) != 0)
      {
        v133 = v132;
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v135;

        v132 = v134;
      }

      else
      {
        v136 = 0;
      }

      sub_1000BD3D0(v132, v136, 0, 1);

      sub_1000A0D2C(v121, v126);
    }

    v137 = *(v45 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID);
    *(v45 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID) = 0;

    v42 = 0;
  }

  if (*(v45 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
  {
    *(v45 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) = 0;
  }

  sub_1000BBD88(v42);
}

uint64_t sub_1000C27BC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000C414C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_1002762C8;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v1;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void sub_1000C2A74(char *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v76 = &v63 - v9;
  __chkstk_darwin(v8);
  v11 = &v63 - v10;
  v12 = *(*&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  v81 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
  v75 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory;
  v66 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
  v13 = v12;
  v79 = a2;
  v14 = [a2 readData];
  if (!v14)
  {
    goto LABEL_27;
  }

  v16 = v14;
  v80 = (v5 + 16);
  v17 = (v5 + 8);
  *&v15 = 134218242;
  v71 = v15;
  *&v15 = 138412802;
  v65 = v15;
  v69 = v4;
  v70 = a1;
  v72 = (v5 + 8);
  v73 = v13;
  v78 = v11;
  while (1)
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v77 = *v80;
    v77(v11, &a1[v81], v4);
    sub_1000A0CD8(v19, v21);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v82 = v25;
      *v24 = v71;
      v26 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        if (v26 == 2)
        {
          v30 = *(v19 + 16);
          v29 = *(v19 + 24);
          v31 = __OFSUB__(v29, v30);
          v27 = v29 - v30;
          if (v31)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else if (v26)
      {
        LODWORD(v27) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          __break(1u);
LABEL_29:
          __break(1u);
        }

        v27 = v27;
      }

      else
      {
        v27 = BYTE6(v21);
      }

      *(v24 + 4) = v27;
      sub_1000A0D2C(v19, v21);
      *(v24 + 12) = 2080;
      v32 = sub_10013B46C(v19, v21);
      v34 = sub_1000952D4(v32, v33, &v82);

      *(v24 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "HDS socket received data of size %ld data is %s", v24, 0x16u);
      sub_100095808(v25);

      v17 = v72;
      v28 = *v72;
      (*v72)(v78, v4);
      v13 = v73;
    }

    else
    {
      sub_1000A0D2C(v19, v21);

      v28 = *v17;
      (*v17)(v11, v4);
    }

    v35 = *&a1[v75];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v82 = 0;
    v37 = [v13 recvDataFromAccessory:v35 data:isa error:&v82];

    if (!v37)
    {
      break;
    }

    v18 = v82;
    sub_1000A0D2C(v19, v21);
    v11 = v78;
LABEL_4:
    v16 = [v79 readData];
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  v74 = v28;
  v38 = v82;
  v39 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v77(v76, &a1[v81], v4);
  v40 = v13;
  v41 = a1;
  swift_errorRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  v68 = v41;

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v82 = v67;
    *v44 = v65;
    v46 = *(*&a1[v66] + 24);
    *(v44 + 4) = v46;
    *v45 = v46;
    *(v44 + 12) = 2080;
    v47 = v46;
    v48 = [v40 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = sub_1000952D4(v49, v51, &v82);

    *(v44 + 14) = v52;
    *(v44 + 22) = 2112;
    swift_errorRetain();
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 24) = v53;
    v45[1] = v53;
    _os_log_impl(&_mh_execute_header, v42, v43, "Couldn't send data from accessory %@ to controller: %s: error: %@", v44, 0x20u);
    sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
    swift_arrayDestroy();

    sub_100095808(v67);

    v17 = v72;
    v13 = v73;
  }

  v4 = v69;
  v54 = v74;
  v74(v76, v69);
  v11 = v78;
  if (![v79 isClosed])
  {
    sub_1000A0D2C(v19, v21);

    a1 = v70;
    goto LABEL_4;
  }

  v79 = v39;
  v55 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v56 = v68;
  v57 = *&v68[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock];

  os_unfair_lock_lock(v57 + 4);

  *&v56[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket] = 0;
  swift_unknownObjectRelease();
  v58 = *&v56[v55];

  os_unfair_lock_unlock(v58 + 4);

  a1 = v70;
  v77(v64, &v70[v81], v4);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Socket closed", v61, 2u);

    sub_1000A0D2C(v19, v21);
  }

  else
  {
    sub_1000A0D2C(v19, v21);
  }

  v54(v64, v4);
LABEL_27:
  v62 = *&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer];
  [v62 resume];
}

uint64_t getEnumTagSinglePayload for BTDeviceDiscoveryMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BTDeviceDiscoveryMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C3454()
{
  result = qword_1002A7368;
  if (!qword_1002A7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7368);
  }

  return result;
}

uint64_t sub_1000C34A8(const char *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v4);
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

uint64_t sub_1000C3608(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a1 / a2 * 100.0;
    v11 = v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
    if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8) == 1 && v10 > 0.05)
    {
      *v11 = v10;
      *(v11 + 8) = 0;
    }
  }

  else
  {
    v10 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent) = v10;
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v29 = 0xD000000000000010;
  v30 = 0x80000001002300A0;
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10023C170;
  *(v12 + 56) = &type metadata for Double;
  *(v12 + 64) = &protocol witness table for Double;
  *(v12 + 32) = v10;
  v13._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x656E6F6420;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v16 = v29;
  v15 = v30;
  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v6);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000952D4(v16, v15, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s", v19, 0xCu);
    sub_100095808(v20);
  }

  (*(v7 + 8))(v9, v6);
  v21 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
  swift_beginAccess();
  sub_1000C41E0(v3 + v21, &v29);
  if (v31)
  {
    sub_1000A097C(&v29, v26);
    sub_100095C84(&v29, &unk_1002A7380, &qword_10023E970);
    v22 = v27;
    v23 = v28;
    sub_1000A09E0(v26, v27);
    (*(v23 + 8))(v16, v15, 0, 0, v22, v23);

    return sub_100095808(v26);
  }

  else
  {

    return sub_100095C84(&v29, &unk_1002A7380, &qword_10023E970);
  }
}

uint64_t sub_1000C39C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v3);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = *(*&v7[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] + 24);
    *(v10 + 4) = v12;
    *v11 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "HDS socket closed for accessory %@", v10, 0xCu);
    sub_100095C84(v11, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v4 + 8))(v6, v3);
  v14 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v15 = *&v7[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock];

  os_unfair_lock_lock(v15 + 4);

  *&v7[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket] = 0;
  swift_unknownObjectRelease();
  v16 = *&v7[v14];

  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_1000C3BDC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v3);
  v7 = v2;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = *(*&v7[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] + 24);
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = v12;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "HDS socket failed for accessory %@ with error %@", v10, 0x16u);
    sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
    swift_arrayDestroy();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000C3DEC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000C40D0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276278;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C4098()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C40F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C410C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C4154()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C418C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C41E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A7380, &qword_10023E970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C4250()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000C42B0(uint64_t a1, uint64_t a2)
{
  result = qword_1002A7398;
  if (!qword_1002A7398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7398);
  }

  return result;
}

uint64_t sub_1000C42FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C4360()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C43F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C4438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1000BBB84();
}

uint64_t sub_1000C44EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000C4580()
{
  _StringGuts.grow(_:)(44);

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 23328;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x657269707865205DLL;
  v6._object = 0xEA00000000003D64;
  String.append(_:)(v6);
  if (*(v0 + 40))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  return 0xD00000000000001ALL;
}

uint64_t sub_1000C46B4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v62 = sub_1001E3B28(*(v2 + 16), 0);
  v4 = sub_1001F0CB4(&v65, v62 + 4, v3, v2);
  v5 = v65;

  sub_1000C7084(v5);
  if (v4 != v3)
  {
    __break(1u);
LABEL_4:
    v62 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v6 = *(v1 + 88);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v63 = v6;
  while (v10)
  {
    v13 = v10;
LABEL_15:
    v10 = (v13 - 1) & v13;
    v15 = *(v1 + 80);
    if (*(v15 + 16))
    {
      v16 = __clz(__rbit64(v13)) | (v12 << 6);
      v17 = (*(v6 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v6 + 56) + 8 * v16);

      v21 = sub_10016D4D0(v19, v18);
      if (v22)
      {
        v23 = *(*(v15 + 56) + 8 * v21);

        if (v23 != v20)
        {
          v24 = *(v1 + 96);
          if (v24 != 0.0)
          {
            v25 = v24 / *(v1 + 64);
            if (v20 * v23 < 0.0 || v20 == 0.0)
            {
              v25 = v25 + v25;
            }

            if (v23 >= v20)
            {
              v27 = v23 - v25;
              v28 = v27 < v20;
            }

            else
            {
              v27 = v23 + v25;
              v28 = v20 < v27;
            }

            if (v28)
            {
              v23 = v20;
            }

            else
            {
              v23 = v27;
            }
          }
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v1 + 80);
        v64 = v30;
        *(v1 + 80) = 0x8000000000000000;
        v31 = sub_10016D4D0(v19, v18);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v35 = __OFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          goto LABEL_61;
        }

        v37 = v32;
        if (v30[3] < v36)
        {
          sub_1001E6D20(v36, isUniquelyReferenced_nonNull_native);
          v31 = sub_10016D4D0(v19, v18);
          if ((v37 & 1) != (v38 & 1))
          {
            goto LABEL_63;
          }

LABEL_35:
          if (v37)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_35;
        }

        v41 = v31;
        sub_1001EE880();
        v31 = v41;
        if (v37)
        {
LABEL_36:
          v39 = v31;

          v40 = v64;
          *(v64[7] + 8 * v39) = v23;
          goto LABEL_40;
        }

LABEL_38:
        v40 = v30;
        v30[(v31 >> 6) + 8] |= 1 << v31;
        v42 = (v30[6] + 16 * v31);
        *v42 = v19;
        v42[1] = v18;
        *(v30[7] + 8 * v31) = v23;
        v43 = v30[2];
        v35 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v35)
        {
          goto LABEL_62;
        }

        v30[2] = v44;
LABEL_40:
        *(v1 + 80) = v40;
        swift_endAccess();
        v6 = v63;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v45 = *(v1 + 80);
      v46 = *(v45 + 16);
      if (!v46)
      {
        goto LABEL_44;
      }

      v47 = sub_1001E3B28(*(v45 + 16), 0);
      v48 = sub_1001F0CB4(&v65, v47 + 4, v46, v45);
      v49 = v65;

      sub_1000C7084(v49);
      if (v48 != v46)
      {
        __break(1u);
LABEL_44:
        v47 = _swiftEmptyArrayStorage;
      }

      v50 = sub_1000F00B4(v62, v47);

      if ((v50 & 1) == 0)
      {
        return 1;
      }

      v51 = *(v1 + 80);
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = sub_1001E3B28(*(v51 + 16), 0);
        v54 = sub_1001F0CB4(&v65, v53 + 4, v52, v51);
        v55 = v65;

        sub_1000C7084(v55);
        if (v54 != v52)
        {
          __break(1u);
          return 1;
        }
      }

      else
      {
        v53 = _swiftEmptyArrayStorage;
      }

      v57 = v53[2];
      v58 = 4;
      do
      {
        v59 = v57-- != 0;
        v56 = v59;
        if (!v59)
        {
          break;
        }

        v60 = *&v53[v58++];
      }

      while (v60 == 0.0);

      return v56;
    }

    v13 = *(v7 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000C4B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 72);
  OS_dispatch_semaphore.wait()();

  if (*(v3 + 170) == 1)
  {
LABEL_2:
    v19 = *(v3 + 72);
    OS_dispatch_semaphore.signal()();
    v9 = v19;

    return;
  }

  if (sub_1000C46B4() & 1) != 0 || (*(v3 + 169))
  {
    *(v3 + 169) = 0;
  }

  else
  {
    if (*(v3 + 168) != 1 || (*(v3 + 40) & 1) != 0)
    {
      goto LABEL_2;
    }

    (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v4);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "stable, expiring", v12, 2u);
    }

    (*(v5 + 8))(v7, v4);
    *(v3 + 40) = 1;
    v13 = *(v3 + 120);
    if (v13)
    {
      v14 = *(v3 + 128);

      v13(v3);
      sub_1000BAA84(v13, v14);
    }
  }

  v15 = *(v3 + 72);
  OS_dispatch_semaphore.signal()();

  v16 = *(v3 + 104);
  if (v16)
  {
    v17 = *(v3 + 112);
    swift_beginAccess();
    sub_1000C6F30(v16, v17);

    v16(v18);

    sub_1000BAA84(v16, v17);
  }
}

void sub_1000C4E14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 72);
  OS_dispatch_semaphore.wait()();

  *(v4 + 169) = 1;
  if (a3)
  {
    (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v66 = a2;
      v17 = v16;
      v69[0] = v16;
      *v15 = 136315394;
      v67 = a1;
      v19 = *(v4 + 24);
      v18 = *(v4 + 32);

      v20 = sub_1000952D4(v19, v18, v69);
      a1 = v67;

      *(v15 + 4) = v20;
      *(v15 + 12) = 1024;
      *(v15 + 14) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v13, v14, "setting expireWhenStable true for animator owned by %s[%d]", v15, 0x12u);
      sub_100095808(v17);
      a2 = v66;
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
    *(v4 + 168) = 1;
  }

  v21 = *(a1 + 16);
  if (!v21)
  {
LABEL_35:
    v61 = *(v4 + 72);
    OS_dispatch_semaphore.signal()();

    v62 = [objc_allocWithZone(NSDate) init];
    [v62 timeIntervalSince1970];
    v64 = v63;

    *(v4 + 136) = v64;
    if (!*(v4 + 144))
    {
      sub_1000C59C0();
    }

    return;
  }

  v22 = (a2 + 32);
  v23 = *(a2 + 16);
  swift_beginAccess();
  v24 = (a1 + 40);
  while (v23)
  {
    v27 = *v22;
    if ((*v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v29 = *(v24 - 1);
    v28 = *v24;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v4 + 88);
    v31 = v68;
    *(v4 + 88) = 0x8000000000000000;
    v32 = sub_10016D4D0(v29, v28);
    v34 = v31[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      goto LABEL_39;
    }

    v38 = v33;
    if (v31[3] < v37)
    {
      sub_1001E6D20(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_10016D4D0(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_43;
      }

LABEL_18:
      if (v38)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v42 = v32;
    sub_1001EE880();
    v32 = v42;
    if (v38)
    {
LABEL_19:
      v40 = v32;

      v41 = v68;
      *(v68[7] + 8 * v40) = v27;
      goto LABEL_23;
    }

LABEL_21:
    v41 = v68;
    v68[(v32 >> 6) + 8] |= 1 << v32;
    v43 = (v41[6] + 16 * v32);
    *v43 = v29;
    v43[1] = v28;
    *(v41[7] + 8 * v32) = v27;
    v44 = v41[2];
    v36 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v36)
    {
      goto LABEL_41;
    }

    v41[2] = v45;
LABEL_23:
    *(v4 + 88) = v41;
    swift_endAccess();
    if (*(*(v4 + 80) + 16))
    {

      sub_10016D4D0(v29, v28);
      v47 = v46;

      if (v47)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();

    v48 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v4 + 80);
    v49 = v68;
    *(v4 + 80) = 0x8000000000000000;
    v50 = sub_10016D4D0(v29, v28);
    v52 = v49[2];
    v53 = (v51 & 1) == 0;
    v36 = __OFADD__(v52, v53);
    v54 = v52 + v53;
    if (v36)
    {
      goto LABEL_40;
    }

    v55 = v51;
    if (v49[3] < v54)
    {
      sub_1001E6D20(v54, v48);
      v50 = sub_10016D4D0(v29, v28);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_43;
      }

LABEL_30:
      if ((v55 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if (v48)
    {
      goto LABEL_30;
    }

    v60 = v50;
    sub_1001EE880();
    v50 = v60;
    if ((v55 & 1) == 0)
    {
LABEL_31:
      v26 = v68;
      v68[(v50 >> 6) + 8] |= 1 << v50;
      v57 = (v26[6] + 16 * v50);
      *v57 = v29;
      v57[1] = v28;
      *(v26[7] + 8 * v50) = 0;
      v58 = v26[2];
      v36 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v36)
      {
        goto LABEL_42;
      }

      v26[2] = v59;
      goto LABEL_9;
    }

LABEL_8:
    v25 = v50;

    v26 = v68;
    *(v68[7] + 8 * v25) = 0;
LABEL_9:
    *(v4 + 80) = v26;
    swift_endAccess();
LABEL_10:
    --v23;
    ++v22;
    v24 += 2;
    if (!--v21)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C53C8(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 72);
  OS_dispatch_semaphore.wait()();

  *(v4 + 169) = 1;
  if (a1)
  {
    (*(v8 + 16))(v10, v4 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v7);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v71[0] = v15;
      *v14 = 136315394;
      v16 = *(v4 + 24);
      v17 = *(v4 + 32);

      v18 = sub_1000952D4(v16, v17, v71);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1024;
      *(v14 + 14) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v12, v13, "setting expireWhenStable true for animator owned by %s[%d]", v14, 0x12u);
      sub_100095808(v15);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    *(v4 + 168) = 1;
  }

  swift_beginAccess();
  v19 = *(v4 + 88);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v4 + 88) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v69 = *(v4 + 88);

  swift_beginAccess();
  v26 = 0;
  v27 = (v23 + 63) >> 6;
  if (!v25)
  {
    while (1)
    {
LABEL_12:
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v30 >= v27)
      {
        break;
      }

      v25 = *(v21 + 8 * v30);
      ++v26;
      if (v25)
      {
        v26 = v30;
        goto LABEL_16;
      }
    }

    v64 = *(v4 + 72);
    OS_dispatch_semaphore.signal()();

    v65 = [objc_allocWithZone(NSDate) init];
    [v65 timeIntervalSince1970];
    v67 = v66;

    *(v4 + 136) = v67;
    if (!*(v4 + 144))
    {
      sub_1000C59C0();
    }

    return;
  }

LABEL_16:
  while (1)
  {
    v31 = (*(v69 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v25)))));
    v33 = *v31;
    v32 = v31[1];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v4 + 88);
    v35 = v70;
    *(v4 + 88) = 0x8000000000000000;
    v36 = sub_10016D4D0(v33, v32);
    v38 = v35[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      break;
    }

    v42 = v37;
    if (v35[3] < v41)
    {
      sub_1001E6D20(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_10016D4D0(v33, v32);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_48;
      }

LABEL_21:
      v44 = v70;
      if ((v42 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v45 = v36;
    sub_1001EE880();
    v36 = v45;
    v44 = v70;
    if ((v42 & 1) == 0)
    {
LABEL_24:
      v44[(v36 >> 6) + 8] |= 1 << v36;
      v46 = (v44[6] + 16 * v36);
      *v46 = v33;
      v46[1] = v32;
      *(v44[7] + 8 * v36) = a3;
      v47 = v44[2];
      v40 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v40)
      {
        goto LABEL_46;
      }

      v44[2] = v48;

      goto LABEL_26;
    }

LABEL_22:
    *(v44[7] + 8 * v36) = a3;
LABEL_26:
    v25 &= v25 - 1;
    *(v4 + 88) = v44;
    swift_endAccess();
    if (*(*(v4 + 80) + 16) && (, sub_10016D4D0(v33, v32), v50 = v49, , (v50 & 1) != 0))
    {

      if (!v25)
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v70 = *(v4 + 80);
      v52 = v70;
      *(v4 + 80) = 0x8000000000000000;
      v53 = sub_10016D4D0(v33, v32);
      v55 = v52[2];
      v56 = (v54 & 1) == 0;
      v40 = __OFADD__(v55, v56);
      v57 = v55 + v56;
      if (v40)
      {
        goto LABEL_45;
      }

      v58 = v54;
      if (v52[3] < v57)
      {
        sub_1001E6D20(v57, v51);
        v53 = sub_10016D4D0(v33, v32);
        if ((v58 & 1) != (v59 & 1))
        {
          goto LABEL_48;
        }

LABEL_35:
        if (v58)
        {
          goto LABEL_10;
        }

        goto LABEL_36;
      }

      if (v51)
      {
        goto LABEL_35;
      }

      v63 = v53;
      sub_1001EE880();
      v53 = v63;
      if (v58)
      {
LABEL_10:
        v28 = v53;

        v29 = v70;
        *(v70[7] + 8 * v28) = 0;
        goto LABEL_11;
      }

LABEL_36:
      v29 = v70;
      v70[(v53 >> 6) + 8] |= 1 << v53;
      v60 = (v29[6] + 16 * v53);
      *v60 = v33;
      v60[1] = v32;
      *(v29[7] + 8 * v53) = 0;
      v61 = v29[2];
      v40 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v40)
      {
        goto LABEL_47;
      }

      v29[2] = v62;
LABEL_11:
      *(v4 + 80) = v29;
      swift_endAccess();
      if (!v25)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C59C0()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = *(v0 + 152);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
  v6 = v3;

  v7 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
  v8 = *(v1 + 144);
  *(v1 + 144) = v7;
}

void sub_1000C5AC8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSDate) init];
  [v7 timeIntervalSince1970];
  v9 = v8;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 136);
  }

  else
  {
    v12 = [objc_allocWithZone(NSDate) init];
    [v12 timeIntervalSince1970];
    v11 = v13;
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + 160);
  }

  else
  {
    v15 = INFINITY;
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (!v16)
  {
    return;
  }

  v17 = *(v16 + 136);

  if (v17 == 0.0)
  {
    return;
  }

  v18 = v9 - v11;
  if (v15 >= v18)
  {
    return;
  }

  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    (*(v4 + 16))(v6, v19 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v3);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136315650;
      v46 = v4;
      v47[0] = v23;
      v25 = *(a2 + 24);
      v24 = *(a2 + 32);

      v26 = sub_1000952D4(v25, v24, v47);

      *(v22 + 4) = v26;
      *(v22 + 12) = 1024;
      *(v22 + 14) = *(a2 + 16);

      *(v22 + 18) = 2048;
      *(v22 + 20) = v18;
      _os_log_impl(&_mh_execute_header, v20, v21, "animator owned by %s[%d] hasn't received commands in %f sec, stopping actuators & expiring", v22, 0x1Cu);
      sub_100095808(v45);

      (v46[1])(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  swift_beginAccess();
  v27 = swift_weakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_beginAccess();
    v29 = *(v28 + 80);

    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (!v30)
    {
      goto LABEL_24;
    }

    v31 = v30;
    swift_beginAccess();
    v32 = *(v31 + 80);

    v33 = *(v32 + 16);

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_24;
    }

    v34 = *(v29 + 16);
    if (v34)
    {
      v44 = sub_1001E3AA4(*(v29 + 16), 0);
      v35 = sub_1001F0DB4(v47, v44 + 4, v34, v29);
      v36 = v47[0];
      v45 = v47[4];
      v46 = v35;

      sub_1000C7084(v36);
      if (v46 != v34)
      {
        __break(1u);
        return;
      }

      v37 = v44;
      if (v33)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
      if (v33)
      {
LABEL_20:
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v38[2] = v33;
        bzero(v38 + 4, 8 * v33);
LABEL_23:
        sub_1000C4E14(v37, v38, 1);

LABEL_24:

        goto LABEL_25;
      }
    }

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_25:
  swift_beginAccess();
  v39 = swift_weakLoadStrong();
  if (v39)
  {
    v40 = *(v39 + 144);
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      dispatch thunk of RepeatingTimer.suspend()();

      v39 = v41;
      v43 = *(v41 + 144);
    }

    else
    {
      v43 = 0;
    }

    *(v39 + 144) = 0;
  }
}

uint64_t sub_1000C6028(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = v44 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1001F2278(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2[10] = v14;

  v15 = sub_1001F2278(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2[11] = v15;

  if (v2[6])
  {
    v18 = v46;
    v17 = v47;
    (*(v46 + 16))(v6, v2 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v47);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = v22;
      *v21 = 136315138;
      v23 = sub_1000C4580();
      v25 = sub_1000952D4(v23, v24, &v48);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "animator loop already running: %s", v21, 0xCu);
      sub_100095808(v22);
    }

    return (*(v18 + 8))(v6, v17);
  }

  else
  {
    v44[1] = sub_1000B3420(0, v16);
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_1000C6F40();
    sub_100095274(&unk_1002A6830, &unk_10023AB20);
    sub_1000C6F98();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
    v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v28 = v2[6];
    v2[6] = v27;

    swift_allocObject();
    swift_weakInit();
    v29 = v2[6];
    v30 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v31 = v29;

    v32 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v33 = v2[7];
    v2[7] = v32;

    v35 = v45;
    v34 = v46;
    v36 = v47;
    (*(v46 + 16))(v45, v2 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v47);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v39 = 136315138;
      v41 = sub_1000C4580();
      v43 = sub_1000952D4(v41, v42, &v48);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "animator loop started: %s", v39, 0xCu);
      sub_100095808(v40);
    }

    (*(v34 + 8))(v35, v36);
  }
}

uint64_t sub_1000C660C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000C4B7C(result, v2);
  }

  return result;
}

uint64_t sub_1000C6664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  if (*(v2 + 48))
  {
    v11 = *(v2 + 56);
    if (v11)
    {
      v12 = v11;
      dispatch thunk of RepeatingTimer.suspend()();

      v11 = *(v3 + 56);
    }

    *(v3 + 56) = 0;

    v13 = *(v3 + 48);
    *(v3 + 48) = 0;

    (*(v5 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v4);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v18 = sub_1000C4580();
      v20 = sub_1000952D4(v18, v19, &v30);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "animator stopped: %s", v16, 0xCu);
      sub_100095808(v17);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v4);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      v26 = sub_1000C4580();
      v28 = sub_1000952D4(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "animator not running: %s", v24, 0xCu);
      sub_100095808(v25);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_1000C69A0()
{
  v1 = v0;
  v2 = *(v0 + 72);
  OS_dispatch_semaphore.wait()();

  v3 = *(v1 + 144);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of RepeatingTimer.suspend()();

    v3 = *(v1 + 144);
  }

  *(v1 + 144) = 0;

  *(v1 + 170) = 1;
  swift_beginAccess();
  v5 = *(v1 + 80);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v1 + 80) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v36 = *(v1 + 80);
  swift_bridgeObjectRetain_n();
  v13 = 0;
  while (v11)
  {
LABEL_13:
    v15 = (*(v36 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v1 + 80);
    *(v1 + 80) = 0x8000000000000000;
    v20 = sub_10016D4D0(v17, v16);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v26 = v21;
    if (v19[3] < v25)
    {
      sub_1001E6D20(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_10016D4D0(v17, v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_29;
      }

LABEL_18:
      if (v26)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v31 = v20;
    sub_1001EE880();
    v20 = v31;
    if (v26)
    {
LABEL_6:
      *(v19[7] + 8 * v20) = 0;
      goto LABEL_7;
    }

LABEL_19:
    v19[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v19[6] + 16 * v20);
    *v28 = v17;
    v28[1] = v16;
    *(v19[7] + 8 * v20) = 0;
    v29 = v19[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_28;
    }

    v19[2] = v30;

LABEL_7:
    v11 &= v11 - 1;
    *(v1 + 80) = v19;
    swift_endAccess();
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  v32 = *(v1 + 72);
  OS_dispatch_semaphore.signal()();

  v33 = *(v1 + 104);
  if (v33)
  {
    v34 = *(v1 + 112);
    sub_1000C6F30(v33, v34);

    v33(v35);
    sub_1000BAA84(v33, v34);
  }
}

uint64_t sub_1000C6C7C()
{
  v1 = v0;
  v2 = *(v0 + 144);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of RepeatingTimer.suspend()();

    v2 = *(v1 + 144);
  }

  *(v1 + 144) = 0;

  sub_1000C6664(v4, v5);

  sub_1000BAA84(*(v1 + 104), *(v1 + 112));
  sub_1000BAA84(*(v1 + 120), *(v1 + 128));

  v6 = OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

uint64_t sub_1000C6D5C()
{
  sub_1000C6C7C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VelocityAnimator(uint64_t a1)
{
  result = qword_1002A73F8;
  if (!qword_1002A73F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C6E08(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000C6F30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000C6F40()
{
  result = qword_1002A7110;
  if (!qword_1002A7110)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7110);
  }

  return result;
}

unint64_t sub_1000C6F98()
{
  result = qword_1002A7120;
  if (!qword_1002A7120)
  {
    sub_10009589C(&unk_1002A6830, &unk_10023AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7120);
  }

  return result;
}

uint64_t sub_1000C6FFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C703C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C708C(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v4 = type metadata accessor for Logger();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000C714C, 0, 0);
}

uint64_t sub_1000C714C()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(Strong + 32);
  v0[7] = v2;
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
    v30 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    (*(*(v30 - 8) + 104))(v31, enum case for Errors.AccessoryServerNil(_:), v30);
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
    *(v9 + 32) = 568;
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
    *(v13 + 32) = 567;
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
    v0[8] = v17;

    if (v17)
    {
      (*(v0[5] + 16))(v0[6], v0[3] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v0[4]);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Reading supported diagnostics snapshot...", v20, 2u);
      }

      v22 = v0[5];
      v21 = v0[6];
      v24 = v0[3];
      v23 = v0[4];

      (*(v22 + 8))(v21, v23);
      v25 = swift_task_alloc();
      v0[9] = v25;
      v25[2] = v5;
      v25[3] = v17;
      v25[4] = v24;
      v26 = swift_task_alloc();
      v0[10] = v26;
      v27 = sub_100095274(&qword_1002A7918, &qword_10023C8A0);
      *v26 = v0;
      v26[1] = sub_1000C76DC;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x8000000100230680, sub_1000CADA0, v25, v27);
    }
  }

  v28 = type metadata accessor for Errors();
  sub_1000A5514();
  swift_allocError();
  *v29 = 0xD00000000000002DLL;
  v29[1] = 0x8000000100230650;
  (*(*(v28 - 8) + 104))(v29, enum case for Errors.NotFound(_:), v28);
  swift_willThrow();

LABEL_18:

  v32 = v0[1];

  return v32();
}

uint64_t sub_1000C76DC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000C7874;
  }

  else
  {

    v2 = sub_1000C77F8;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000C77F8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000C7874()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000C78F0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_100095274(&unk_1002A7920, &qword_10023C8A8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10023BDA0;
  *(v12 + 32) = a3;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v13 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = *(a4 + 24);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v11, v8);
  aBlock[4] = sub_1000CAE44;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_100276638;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  [a2 readCharacteristicValues:isa timeout:v19 completionQueue:v18 completionHandler:0.0];
  _Block_release(v18);
}

uint64_t sub_1000C7B40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_100095274(&unk_1002A7920, &qword_10023C8A8);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v3 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v4 = 0xD000000000000038;
    v4[1] = 0x80000001002306C0;
    (*(*(v3 - 8) + 104))(v4, enum case for Errors.CharacteristicReadWriteFailure(_:), v3);
    goto LABEL_3;
  }

  sub_100095274(&unk_1002A7920, &qword_10023C8A8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000C7C54(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = v2;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_1000C7D40;

  return sub_1000C708C(v5, v6);
}

uint64_t sub_1000C7D40(uint64_t a1)
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
    *(v4 + 96) = a1;
    v8 = swift_task_alloc();
    *(v4 + 104) = v8;
    *v8 = v5;
    v8[1] = sub_1000C7EC4;

    return sub_1000C9BA4(a1);
  }
}

uint64_t sub_1000C7EC4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000C802C, 0, 0);
}

uint64_t sub_1000C802C()
{
  (*(v0[9] + 16))(v0[10], v0[7] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v0[8]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Initiating Diagnostics transfer...", v3, 2u);
  }

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000C817C;
  v9 = v0[6];

  return sub_1000C87C8(v9, v8);
}

uint64_t sub_1000C817C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[15] = v2;

  if (v2)
  {
    v5 = sub_1000C8530;
  }

  else
  {
    v5 = sub_1000C8298;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_1000C8298()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v0[16] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1000C838C;

    return sub_100169B04(v3, v4);
  }

  else
  {
    v7 = v0[3];
    v6 = v0[4];
    *(v1 + 32) = 0;

    v8 = v0[1];

    return v8(v7, v6);
  }
}

uint64_t sub_1000C838C()
{

  return (_swift_task_switch)(sub_1000C84A4, 0, 0);
}

uint64_t sub_1000C84A4()
{
  v2 = v0[3];
  v1 = v0[4];
  *(v0[7] + 32) = 0;

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1000C8530(uint64_t a1)
{
  v2 = v1[7];
  v3 = *(v2 + 32);
  v1[18] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v1[19] = v4;
    *v4 = v1;
    v4[1] = sub_1000C862C;

    return sub_100169B04(v4, v5);
  }

  else
  {
    *(v2 + 32) = 0;
    swift_willThrow();

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_1000C862C()
{

  return (_swift_task_switch)(sub_1000C8744, 0, 0);
}

uint64_t sub_1000C8744()
{
  *(*(v0 + 56) + 32) = 0;

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C87C8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = type metadata accessor for Logger();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000C88AC, 0, 0);
}

uint64_t sub_1000C88AC()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger;
  v0[10] = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59 = v4;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling Diagnostics transfer request", v9, 2u);
  }

  v10 = v0[9];
  v11 = v0[4];
  v12 = v0[5];

  v13 = *(v12 + 8);
  v0[13] = v13;
  v13(v10, v11);
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v33 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v34 = 0xD000000000000010;
    v34[1] = 0x8000000100230560;
    (*(*(v33 - 8) + 104))(v34, enum case for Errors.AccessoryServerNil(_:), v33);
    swift_willThrow();
LABEL_16:

    v41 = v0[1];

    return v41();
  }

  v15 = Strong;
  v16 = *(Strong + 32);
  if (!v16 || ([v16 isReachable] & 1) == 0)
  {
    v24 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v26 = v25;
    _StringGuts.grow(_:)(19);
    v27 = *(v15 + 24);
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = 0xD000000000000011;
    v32._object = 0x8000000100230580;
    String.append(_:)(v32);
    *v26 = v29;
    v26[1] = v31;
    (*(*(v24 - 8) + 104))(v26, enum case for Errors.AccessoryNotReachable(_:), v24);
LABEL_15:
    swift_willThrow();

    goto LABEL_16;
  }

  result = sub_1000C9510(v0[2], v17);
  if ((result & 1) == 0)
  {
    v6(v0[8], v59 + v5, v0[4]);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Diagnostics transfer failed as the request is not supported.", v37, 2u);
    }

    v38 = v0[8];
    v39 = v0[4];

    v13(v38, v39);
    v20 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v22 = v40;
    *v40 = 0xD00000000000003CLL;
    v40[1] = 0x80000001002305A0;
    v23 = &enum case for Errors.OperationNotSupported(_:);
    goto LABEL_14;
  }

  v19 = v0[3];
  if (v19[4])
  {
    v20 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v22 = v21;
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x8000000100230630;
    v23 = &enum case for Errors.OperationInProgress(_:);
LABEL_14:
    (*(*(v20 - 8) + 104))(v22, *v23, v20);
    goto LABEL_15;
  }

  v42 = v19[5];
  if (!v42)
  {
    __break(1u);
    return result;
  }

  v43 = v0[7];
  v58 = v0[4];
  v44 = v19[3];
  type metadata accessor for AccessoryDiagnosticsSession(0);
  swift_allocObject();
  v45 = v44;
  v46 = v42;

  v48 = sub_10016E1F8(v47, v45, v46);

  v19[4] = v48;

  v6(v43, v59 + v5, v58);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Setting up a Diagnostics transfer session", v51, 2u);
  }

  v52 = v0[7];
  v53 = v0[4];

  v13(v52, v53);
  v54 = v19[4];
  v0[15] = v54;
  if (!v54)
  {
    v20 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v22 = v57;
    *v57 = 0xD000000000000049;
    v57[1] = 0x80000001002305E0;
    v23 = &enum case for Errors.CommunicationFailure(_:);
    goto LABEL_14;
  }

  v54[17] = v0[2];

  v54[18] = 0;
  v54[19] = 0xE000000000000000;

  v55 = swift_task_alloc();
  v0[16] = v55;
  *v55 = v0;
  v55[1] = sub_1000C8FA4;
  v56 = v0[2];

  return sub_10016A660(v56);
}

uint64_t sub_1000C8FA4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000C9204;
  }

  else
  {
    v2 = sub_1000C90B8;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000C90B8()
{
  (*(v0 + 88))(*(v0 + 48), *(v0 + 24) + *(v0 + 80), *(v0 + 32));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Diagnostics transfer session was setup successfully", v3, 2u);
  }

  v4 = *(v0 + 104);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  v4(v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1000C929C;

  return sub_1000CA210(v7, v8);
}

uint64_t sub_1000C9204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C929C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = sub_1000C9478;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = sub_1000C93D0;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_1000C93D0()
{

  v1 = v0[1];
  v3 = v0[20];
  v2 = v0[21];

  return v1(v2, v3);
}

uint64_t sub_1000C9478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C9510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v57 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v57 - v13;
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = *(v2 + 40);
  if (!v17)
  {
    (*(v5 + 16))(&v57 - v15, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v4);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Diagnostic settings not configured yet", v33, 2u);
    }

    (*(v5 + 8))(v16, v4);
    return 0;
  }

  v18 = *(a1 + 24);
  v19 = v17;
  v20 = v19;
  if ((v18 & 1) != 0 || (v21 = [v19 options]) == 0)
  {
LABEL_12:
    if ((*(a1 + 40) & 1) == 0)
    {
      v34 = [v20 options];
      if (v34)
      {
        v35 = v34;
        if (([v34 value] & 1) == 0)
        {
          (*(v5 + 16))(v11, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v4);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = 138412290;
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v41 = *(Strong + 24);
              v58 = Strong;
              v42 = v41;

              v43 = v42;
            }

            else
            {
              v42 = 0;
              v43 = 0;
            }

            *(v38 + 4) = v42;
            *v39 = v43;
            _os_log_impl(&_mh_execute_header, v36, v37, "Delay requested, but not supported on the accessory %@", v38, 0xCu);
            sub_100095C84(v39, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v5 + 8))(v11, v4);
          return 0;
        }
      }
    }

    v44 = [v20 type];
    if (!v44)
    {
LABEL_28:

      return 1;
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      v45 = *(a1 + 48);
      if (v45 == 1)
      {
        v46 = v44;
        if ([v44 value])
        {
          (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v4);

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v51 = 138412290;
            v53 = swift_weakLoadStrong();
            if (v53)
            {
              v54 = *(v53 + 24);
              v58 = v53;
              v55 = v54;

              v56 = v55;
            }

            else
            {
              v55 = 0;
              v56 = 0;
            }

            *(v51 + 4) = v55;
            *v52 = v56;
            _os_log_impl(&_mh_execute_header, v49, v50, "Manufacturer snapshot requested, but not supported on the accessory %@", v51, 0xCu);
            sub_100095C84(v52, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v5 + 8))(v8, v4);
          return 0;
        }

        v44 = v46;
        if (*(a1 + 56))
        {
          goto LABEL_27;
        }

        v45 = *(a1 + 48);
      }

      if (v45 == 2)
      {
        v47 = v44;
        [v44 value];

        goto LABEL_28;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v22 = v21;
  if (([v21 value] & 2) != 0)
  {

    goto LABEL_12;
  }

  (*(v5 + 16))(v14, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v4);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      v28 = *(v27 + 24);
      v58 = v27;
      v29 = v28;

      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v25 + 4) = v29;
    *v26 = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Custom max log size requested, but not supported on the accessory %@", v25, 0xCu);
    sub_100095C84(v26, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v5 + 8))(v14, v4);
  return 0;
}

uint64_t sub_1000C9BA4(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;

  return (_swift_task_switch)(sub_1000C9C34, 0, 0);
}

uint64_t sub_1000C9C34()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    goto LABEL_15;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v1 + 32);
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
    v29 = 0u;
    v30 = 0u;
  }

  *(v0 + 16) = v29;
  *(v0 + 32) = v30;
  if (!*(v0 + 40))
  {
    sub_100095C84(v0 + 16, &qword_1002A9210, &unk_10023BE70);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v17 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v18 = 0xD000000000000025;
    v18[1] = 0x8000000100230530;
    (*(*(v17 - 8) + 104))(v18, enum case for Errors.CommunicationFailure(_:), v17);
    swift_willThrow();
LABEL_16:
    v19 = *(v0 + 8);
LABEL_17:

    return v19();
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  *(v0 + 88) = v5;
  *(v0 + 96) = v6;
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 64) = 0;
  v9 = [v7 parsedFromData:isa error:v0 + 64];
  *(v0 + 104) = v9;

  v10 = *(v0 + 64);
  if (!v9)
  {
    v21 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000A0D2C(v5, v6);
    goto LABEL_16;
  }

  v11 = *(v0 + 80);
  v12 = *(v11 + 40);
  if (v12)
  {
    sub_100095B94(0, &qword_1002A7910, &off_100271C80);
    v13 = v10;
    v14 = v9;
    v15 = v12;
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      sub_1000A0D2C(v5, v6);
LABEL_28:

      v19 = *(v0 + 8);
      goto LABEL_17;
    }

    v11 = *(v0 + 80);
  }

  else
  {
    v22 = v10;
  }

  v23 = *(v11 + 32);
  *(v0 + 112) = v23;
  if (!v23)
  {
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    *(v11 + 32) = 0;
    sub_1000A0D2C(v28, v26);
    v14 = *(v11 + 40);
    *(v11 + 40) = v27;
    goto LABEL_28;
  }

  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_1000CA008;

  return sub_100169B04(v24, v25);
}

uint64_t sub_1000CA008()
{

  return (_swift_task_switch)(sub_1000CA14C, 0, 0);
}

uint64_t sub_1000CA14C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  *(v2 + 32) = 0;

  sub_1000A0D2C(v1, v3);
  v5 = *(v2 + 40);
  *(v2 + 40) = v4;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000CA210(uint64_t a1, uint64_t a2)
{
  v3[5] = v2;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000CA2D0, 0, 0);
}

uint64_t sub_1000CA2D0()
{
  v22 = v0;
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v0[6]);

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
    sub_100095274(&qword_1002A7900, &qword_10023C888);
    v9 = Optional.debugDescription.getter();
    v11 = sub_1000952D4(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Read Diagnostics data for session %s", v7, 0xCu);
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

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x746144646165725FLL, 0xEB00000000292861, sub_1000CACF0, v15, &type metadata for String);
  }

  else
  {
    v17 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v18 = 0xD00000000000001ALL;
    v18[1] = 0x8000000100230510;
    (*(*(v17 - 8) + 104))(v18, enum case for Errors.CommunicationFailure(_:), v17);
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000CA61C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000CA7B0;
  }

  else
  {
    v2 = sub_1000CA730;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000CA730()
{

  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1000CA7B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CA81C(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A7908, &unk_10023C890);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  (*(v3 + 16))(v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_10016B16C(sub_1000CAD0C, v7);
}

uint64_t sub_1000CA984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
LABEL_3:
    sub_100095274(&qword_1002A7908, &unk_10023C890);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a3)
  {
    v4 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v5 = 0x68746150206C696ELL;
    v5[1] = 0xE800000000000000;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.CommunicationFailure(_:), v4);
    goto LABEL_3;
  }

  sub_100095274(&qword_1002A7908, &unk_10023C890);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000CAA98()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDiagnosticsManager(uint64_t a1)
{
  result = qword_1002A7798;
  if (!qword_1002A7798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CABA8(uint64_t a1, uint64_t a2)
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

void *sub_1000CAC5C(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  v2[4] = 0;
  v2[5] = 0;
  Logger.init(subsystem:category:)();
  swift_weakAssign();
  v2[3] = a2;
  return v2;
}

uint64_t sub_1000CAD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100095274(&qword_1002A7908, &unk_10023C890);

  return sub_1000CA984(a1, a2, a3);
}

uint64_t sub_1000CADC0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100095274(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000CAE44(uint64_t a1, uint64_t a2)
{
  sub_100095274(&unk_1002A7920, &qword_10023C8A8);

  return sub_1000C7B40(a1, a2);
}

uint64_t sub_1000CAED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_1000CAEE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, id **a5)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v11 = sub_1000E34CC(v9, v10, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a5);
    sub_1000A0D2C(a3, a4);
    return v11;
  }

  if (v8 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001B1A44(v13, a3, a4, a5, &v14);
  v11 = v5;
  sub_1000A0D2C(a3, a4);
  if (!v5)
  {
    return v14;
  }

  return v11;
}

char *sub_1000CB080()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard] = 0;
  Logger.init(subsystem:category:)();
  v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan] = 0;
  v6 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_cachePath;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server;
  *&v0[v8] = [objc_allocWithZone(type metadata accessor for AccessoryServer(0)) init];
  v32 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue;
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v32;
  *&v0[v32] = v9;
  v11 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  *&v1[v11] = dispatch_semaphore_create(1);
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiThreshold] = -70;
  v12 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager;
  *&v1[v12] = [objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateManager(0)) init];
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_disconnectTimeout] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_disconnectCheckRate] = 0x3FC999999999999ALL;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_disconnectTimer] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;
  v13 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v14 = swift_allocObject();
  *&v1[v13] = v14;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_discoverDockTimeout] = 0x4008000000000000;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_discoverDockInterval] = 0x3FC999999999999ALL;
  v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
  *(v14 + 16) = 0;
  v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
  v16 = enum case for DockStatus.Undocked(_:);
  v17 = type metadata accessor for DockStatus();
  (*(*(v17 - 8) + 104))(&v1[v15], v16, v17);
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingSetup] = 0;
  v18 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockSetupIdMap;
  *&v1[v18] = sub_1001F27B8(_swiftEmptyArrayStorage);
  v19 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn;
  type metadata accessor for RSSITransaction(0, v20);
  v21 = swift_allocObject();
  v21[2] = &_swiftEmptySetSingleton;
  v21[3] = 0;
  v21[4] = 0;
  v21[5] = 0;
  *&v1[v19] = v21;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimeout] = 0x4014000000000000;
  v22 = *&v1[v10];
  v23 = objc_allocWithZone(type metadata accessor for DockDetector(0));
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector] = DockDetector.init(workQueue:)(v22);
  v24 = type metadata accessor for AccessoryManager(0);
  v36.receiver = v1;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, "init");
  v26 = swift_allocObject();
  v26[2] = &_swiftEmptySetSingleton;
  v26[3] = 0;
  v26[4] = v25;
  v26[5] = &off_100276660;
  *&v25[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn] = v26;
  v27 = v25;

  v28 = *&v27[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];

  v29 = *&v28[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
  *&v28[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager] = v25;

  return v27;
}

void sub_1000CB678(uint64_t a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v6 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v7 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();

  v8 = 0;
  v9 = sub_1000E3590((v3 + v7), a1);

  v10 = *(*(v3 + v7) + 16);
  if (v10 < v9)
  {
    __break(1u);
  }

  else
  {
    sub_1001A1844(v9, v10);
    v8 = type metadata accessor for DaemonAccessory(0);
    v2 = &off_10027A0F0;
    v23[3] = v8;
    v23[4] = &off_10027A0F0;
    v23[0] = a1;
    v9 = *(v3 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v7) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_1001026FC(0, v9[2] + 1, 1, v9);
  *(v3 + v7) = v9;
LABEL_3:
  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12 >> 1)
  {
    v9 = sub_1001026FC((v12 > 1), v13 + 1, 1, v9);
    *(v3 + v7) = v9;
  }

  v14 = sub_1000E4984(v23, v8);
  __chkstk_darwin(v14);
  v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v21 = v8;
  v22 = v2;
  *&v20 = v18;
  v9[2] = (v13 + 1);
  sub_1000A0D80(&v20, &v9[5 * v13 + 4]);
  sub_100095808(v23);
  *(v3 + v7) = v9;
  swift_endAccess();
  v19 = *(v3 + v5);
  OS_dispatch_semaphore.signal()();
}

void sub_1000CB8B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v38 = &v32 - v11;
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  if (!a1)
  {
    goto LABEL_12;
  }

  v14 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v15 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  v39 = a1;
  v16 = v15;
  OS_dispatch_semaphore.wait()();

  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v18 = *(v3 + v17);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_11:
    v30 = *(v3 + v14);
    OS_dispatch_semaphore.signal()();

LABEL_12:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v33 = v14;
  v34 = v3;
  v20 = v18 + 32;
  v35 = a2;
  v36 = (v7 + 32);
  v21 = (v7 + 8);

  v22 = 0;
  while (v22 < *(v18 + 16))
  {
    sub_1000A097C(v20, v40);
    v23 = *(*sub_1000A09E0(v40, v40[3]) + 16);
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
      if (v24)
      {
        v25 = [v24 identifier];
        v26 = v38;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v36)(v13, v26, v6);
        v27 = [v39 identifier];
        v28 = v37;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v27) = static UUID.== infix(_:_:)();
        v29 = *v21;
        (*v21)(v28, v6);
        if (v27)
        {

          v31 = *(v34 + v33);
          OS_dispatch_semaphore.signal()();

          v29(v13, v6);
          sub_1000A097C(v40, v35);
          sub_100095808(v40);
          return;
        }

        v29(v13, v6);
      }
    }

    ++v22;
    sub_100095808(v40);
    v20 += 40;
    if (v19 == v22)
    {

      v3 = v34;
      a2 = v35;
      v14 = v33;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000CBBDC@<X0>(uint64_t a2@<X8>)
{
  v64 = a2;
  v57 = type metadata accessor for Logger();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for URL.DirectoryHint();
  v60 = *(v61 - 1);
  __chkstk_darwin(v61);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v9 = __chkstk_darwin(v8 - 8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_cachePath;
  swift_beginAccess();
  sub_1000E48A4(v2 + v16, v15);
  v63 = v6;
  v17 = *(v6 + 48);
  v18 = v5;
  LODWORD(v5) = v17(v15, 1, v5);
  sub_100095C84(v15, &qword_1002A6B70, &unk_10023C9C0);
  v19 = v64;
  if (v5 != 1)
  {
    return sub_1000E48A4(v2 + v16, v19);
  }

  v20 = v2;
  v21 = [objc_opt_self() defaultManager];
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  sub_1001520A0(v13);
  v22 = v18;
  if (v17(v13, 1, v18) == 1)
  {

    sub_100095C84(v13, &qword_1002A6B70, &unk_10023C9C0);
    return (*(v63 + 56))(v64, 1, 1, v18);
  }

  v24 = v63;
  v25 = v62;
  (*(v63 + 32))(v62, v13, v22);
  v66[0] = 1701606498;
  v66[1] = 0xE400000000000000;
  v26 = v60;
  v27 = v59;
  v28 = v61;
  (*(v60 + 104))(v59, enum case for URL.DirectoryHint.isDirectory(_:), v61);
  sub_1000E3C10();
  URL.append<A>(component:directoryHint:)();
  (*(v26 + 8))(v27, v28);
  v65 = 0;
  URL.path(percentEncoded:)(1);
  v29 = String._bridgeToObjectiveC()();

  LOBYTE(v28) = [v21 fileExistsAtPath:v29 isDirectory:&v65];

  v30 = v20;
  if (v28)
  {
LABEL_9:

    v40 = v58;
    (*(v24 + 16))(v58, v25, v22);
    (*(v24 + 56))(v40, 0, 1, v22);
    swift_beginAccess();
    sub_1000E4914(v40, v30 + v16);
    swift_endAccess();
    (*(v24 + 8))(v25, v22);
    v19 = v64;
    v2 = v30;
    return sub_1000E48A4(v2 + v16, v19);
  }

  sub_100095274(&qword_1002A7B20, &unk_10023E940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  v32 = NSFilePosixPermissions;
  v33 = sub_1001F237C(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  sub_1001DAF74(v33);

  type metadata accessor for FileAttributeKey(0);
  sub_1000E4D0C(&qword_1002A6D80, type metadata accessor for FileAttributeKey, &unk_10023BBA8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v66[0] = 0;
  v38 = [v21 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:isa error:v66];

  if (v38)
  {
    v39 = v66[0];
    goto LABEL_9;
  }

  v61 = v21;
  v41 = v66[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v42 = v56;
  v43 = v30 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
  v44 = v55;
  v45 = v57;
  (*(v56 + 16))(v55, v43, v57);
  swift_errorRetain();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v48 = 136315394;
    swift_beginAccess();
    v49 = URL.path(percentEncoded:)(1);
    v50 = sub_1000952D4(v49._countAndFlagsBits, v49._object, &v67);

    *(v48 + 4) = v50;
    *(v48 + 12) = 2080;
    swift_getErrorValue();
    v51 = Error.localizedDescription.getter();
    v53 = sub_1000952D4(v51, v52, &v67);

    *(v48 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v46, v47, "Unable to create file storage directory %s: %s", v48, 0x16u);
    swift_arrayDestroy();
    v25 = v62;

    v24 = v63;

    (*(v42 + 8))(v44, v57);
  }

  else
  {

    (*(v42 + 8))(v44, v45);
  }

  (*(v24 + 56))(v64, 1, 1, v22);
  return (*(v24 + 8))(v25, v22);
}

uint64_t sub_1000CC4F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Re-pairing accessory...", v16, 2u);
  }

  (*(v11 + 8))(v13, v10);
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 0;
  v17 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v2;
  aBlock[4] = sub_1000E489C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276EF0;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  v21 = v2;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v6, v22);
  (*(v25 + 8))(v9, v26);
}

void sub_1000CC914(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) && *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24) != 2)
  {
    v2 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
    v3 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock);

    os_unfair_lock_lock(v3 + 4);

    *(a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing) = a1;

    v6 = *(a2 + v2);

    os_unfair_lock_unlock(v6 + 4);

    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v7;
      sub_10013E7E0(0, 0);
    }
  }
}

void sub_1000CCA20(objc_class *a1, uint64_t a2, Class a3, char *a4, objc_class *a5, char *a6, unint64_t a7)
{
  v235 = a5;
  v234 = a4;
  v10 = *(a3 + 1);
  v228 = *a3;
  v229 = v10;
  v11 = *(a3 + 3);
  v230 = *(a3 + 2);
  v231 = v11;
  v12 = *(a3 + 5);
  v232 = *(a3 + 4);
  v233 = v12;
  v237 = a3;
  v13 = *(a3 + 6);
  v224 = type metadata accessor for DispatchWorkItemFlags();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v221 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for DispatchQoS();
  v220 = *(v222 - 8);
  __chkstk_darwin(v222);
  v219 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for Logger();
  v16 = *(v238 - 1);
  v17 = __chkstk_darwin(v238);
  v227 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v218 = &v201 - v20;
  __chkstk_darwin(v19);
  v22 = &v201 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v226 = (&v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v29 = &v201 - v28;
  __chkstk_darwin(v27);
  v31 = &v201 - v30;
  v236 = a1;
  v32 = sub_1000F9498(a6, a7);
  if (!v32)
  {
    return;
  }

  v239 = v32;

  v33 = sub_100140998(a6, a7);
  if (v34 >> 60 == 15)
  {
    v35 = v239;

    return;
  }

  v36 = v33;
  v225 = v31;
  v37 = v34;
  sub_1001404A0(v33, v34, v29);
  sub_1000A452C(v36, v37);
  (*(v24 + 32))(v225, v29, v23);
  v38 = *(v16 + 16);
  v213 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
  v39 = v238;
  v215 = v16 + 16;
  v214 = v38;
  v38(v22, (v240 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger), v238);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v217 = v24;
  v212 = v13;
  v211 = v16;
  if (v42)
  {
    v43 = v39;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_1000952D4(a6, a7, &aBlock);
    _os_log_impl(&_mh_execute_header, v40, v41, "Discovered pairable accessory with identifier %s.", v44, 0xCu);
    sub_100095808(v45);

    v48 = *(v16 + 8);
    v47 = (v16 + 8);
    v46 = v48;
    v49 = v22;
    v50 = v43;
  }

  else
  {

    v51 = *(v16 + 8);
    v47 = (v16 + 8);
    v46 = v51;
    v49 = v22;
    v50 = v39;
  }

  v210 = v46;
  v46(v49, v50);
  v52 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v53 = v240;
  v54 = *(v240 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v55 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v56 = *&v53[v55];
  v57 = *(v56 + 16);
  v58 = &selRef__sendControlPacket_forRequest_completionHandler_;
  v216 = v23;
  if (!v57)
  {
LABEL_23:
    v47 = v240;
    v70 = *&v52[v240];
    OS_dispatch_semaphore.signal()();

    v243 = 0;
    aBlock = 0u;
    v242 = 0u;
    v71 = v217;
LABEL_24:
    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_25;
  }

  v209 = v52;
  v59 = v56 + 32;

  v61 = 0;
  while (1)
  {
    if (v61 >= *(v56 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_1000A097C(v59, v245);
    v62 = *(*sub_1000A09E0(v245, v245[3]) + 32);
    if (v62)
    {
      break;
    }

LABEL_12:
    ++v61;
    v60 = sub_100095808(v245);
    v59 += 40;
    if (v57 == v61)
    {

      v23 = v216;
      v52 = v209;
      goto LABEL_23;
    }
  }

  v63 = v62;
  v64 = [v63 v58[446]];
  if (!v64)
  {
LABEL_11:

    goto LABEL_12;
  }

  v65 = v64;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  if (v47 != a6 || v67 != a7)
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v58 = &selRef__sendControlPacket_forRequest_completionHandler_;
    if (v69)
    {
      goto LABEL_39;
    }

    goto LABEL_11;
  }

LABEL_39:

  v47 = v240;
  v136 = *&v209[v240];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v245, &aBlock);
  sub_100095808(v245);
  v23 = v216;
  v71 = v217;
  v137 = v236;
  if (!*(&v242 + 1))
  {
    goto LABEL_24;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if (swift_dynamicCast())
  {
    v138 = v245[0];
    v139 = v218;
    v140 = v238;
    v214(v218, &v47[v213], v238);
    v141 = v239;
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();

    v144 = os_log_type_enabled(v142, v143);
    v227 = v138;
    if (v144)
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *&aBlock = v146;
      *v145 = 136315138;
      v147 = [(objc_class *)v141 identifier];
      v239 = v141;
      v148 = v147;
      v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v151 = v150;

      v152 = sub_1000952D4(v149, v151, &aBlock);

      *(v145 + 4) = v152;
      _os_log_impl(&_mh_execute_header, v142, v143, "Updating existing accessory %s.", v145, 0xCu);
      sub_100095808(v146);

      v138 = v227;

      v153 = v140;
      v154 = v239;
      v210(v139, v153);
    }

    else
    {

      v210(v139, v140);
      v154 = v141;
    }

    v155 = *(v138 + 2);
    *(v138 + 2) = v137;
    v156 = v137;

    v157 = &v138[OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload];
    v158 = *&v138[OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload];
    v159 = *&v138[OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8];
    v160 = *(v157 + 2);
    v161 = *(v157 + 3);
    v162 = *(v157 + 4);
    v163 = *(v157 + 5);
    v164 = v229;
    *v157 = v228;
    *(v157 + 1) = v164;
    v165 = v231;
    *(v157 + 2) = v230;
    *(v157 + 3) = v165;
    v166 = v233;
    *(v157 + 4) = v232;
    *(v157 + 5) = v166;
    *(v157 + 6) = v212;
    sub_1000E3C64(v237, &aBlock);
    sub_1000E47B8(v158, v159, v160, v161, v162, v163);
    v233 = sub_10013EE04();
    v232 = v167;
    sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v169 = [(objc_class *)v154 identifier];
    v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = v154;
    v173 = v172;

    v174 = v240;
    sub_1000D9F2C(v170, v173);

    v175 = [(objc_class *)v171 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v237 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v238 = isa;
    v236 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v239 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v176 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
    v231 = objc_allocWithZone(_HAPAccessoryServerBTLE200);
    v177 = v171;
    v178 = v176;
    v229 = v178;
    v179 = v174;
    v180 = v234;
    v181 = v235;
    sub_1000A0CD8(v234, v235);
    v182 = String._bridgeToObjectiveC()();
    v230 = v182;

    v183 = String._bridgeToObjectiveC()();
    v233 = v183;

    v184 = Data._bridgeToObjectiveC()().super.isa;
    v185 = String._bridgeToObjectiveC()();
    v200 = v178;
    LOBYTE(v199) = 0;
    v186 = v239;
    v187 = v236;
    LOBYTE(v198) = 7;
    v188 = v182;
    v189 = v183;
    v190 = v237;
    v191 = v238;
    v240 = [v231 initWithPeripheral:v177 name:v188 pairingUsername:v189 statusFlags:v237 stateNumber:v238 enhancedEncryption:1 connectReason:v198 configNumber:v236 category:v239 setupHash:v184 connectionIdleTime:v199 browser:v179 keyStore:v200 whbStableIdentifier:v185];

    sub_1000A0D2C(v180, v181);
    v192 = *&v179[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    v193 = *(v192 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
    v194 = v240;
    [v194 setDelegate:v192 queue:v193];

    v195 = v227;
    v196 = *(v227 + 4);
    *(v227 + 4) = v194;

    sub_1000CC4F8(v195);

LABEL_35:
    (*(v217 + 8))(v225, v216);
    return;
  }

LABEL_25:
  sub_10013EE04();
  (*(v71 + 16))(v226, v225, v23);
  v72 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
  v60 = DockCoreInfo.init(type:name:identifier:)();
  if (qword_1002A6780 != -1)
  {
LABEL_48:
    v197 = v60;
    swift_once();
    v60 = v197;
  }

  v73 = qword_1002B1CF0;
  v201 = v60;
  v74 = sub_1001884E4(v60);
  v209 = sub_10013EE04();
  v205 = v75;
  v202 = v74;
  if (v74)
  {
    v76 = 7;
  }

  else
  {
    v76 = 6;
  }

  LODWORD(v218) = v76;
  sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
  v77 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v78 = [(objc_class *)v239 identifier];
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  sub_1000D9F2C(v79, v81);

  v82 = [(objc_class *)v239 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v206 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v208 = v77;
  v207 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v226 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v83 = *(v73 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  v204 = objc_allocWithZone(_HAPAccessoryServerBTLE200);
  v84 = v239;
  v85 = v47;
  v86 = v234;
  v87 = v235;
  sub_1000A0CD8(v234, v235);
  v88 = v83;
  v89 = String._bridgeToObjectiveC()();
  v203 = v89;

  v90 = String._bridgeToObjectiveC()();
  v209 = v90;

  v91 = Data._bridgeToObjectiveC()().super.isa;
  v92 = String._bridgeToObjectiveC()();
  LOBYTE(v199) = 0;
  v93 = v207;
  LOBYTE(v198) = v218;
  v94 = v89;
  v95 = v90;
  v96 = v206;
  v97 = v208;
  v239 = [v204 initWithPeripheral:v84 name:v94 pairingUsername:v95 statusFlags:v206 stateNumber:v208 enhancedEncryption:1 connectReason:v198 configNumber:v207 category:v226 setupHash:v91 connectionIdleTime:v199 browser:v85 keyStore:v88 whbStableIdentifier:v92];

  sub_1000A0D2C(v86, v87);
  v235 = v84;

  v234 = v85;
  v98 = *&v85[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
  v99 = *(v98 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
  v100 = v239;
  [(objc_class *)v100 setDelegate:v98 queue:v99];

  v101 = v227;
  v102 = v238;
  v214(v227, (v240 + v213), v238);
  v103 = v100;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&aBlock = v107;
    *v106 = 136315138;
    v108 = [(objc_class *)v103 identifier];

    if (!v108)
    {
      __break(1u);
      return;
    }

    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;

    v112 = sub_1000952D4(v109, v111, &aBlock);

    *(v106 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v104, v105, "Creating new accessory %s.", v106, 0xCu);
    sub_100095808(v107);
  }

  else
  {
  }

  v210(v101, v102);
  type metadata accessor for DaemonAccessory(0);
  swift_allocObject();
  v113 = v236;
  v114 = v236;
  v240 = v201;
  v115 = sub_1001AD95C(v113, v240, v103);

  v116 = (v115 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  v117 = *(v115 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  v118 = *(v115 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8);
  v119 = *(v115 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 16);
  v120 = *(v115 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24);
  v121 = *(v115 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 32);
  v122 = *(v115 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 40);
  v123 = v229;
  *v116 = v228;
  v116[1] = v123;
  v124 = v231;
  v116[2] = v230;
  v116[3] = v124;
  v125 = v233;
  v116[4] = v232;
  v116[5] = v125;
  v116[6] = v212;
  sub_1000E3C64(v237, &aBlock);
  sub_1000E47B8(v117, v118, v119, v120, v121, v122);
  v126 = v202;
  if (v202)
  {
    sub_1000CB678(v115);
    sub_1000CC4F8(v115);

    goto LABEL_35;
  }

  v127 = v234;
  v128 = *&v234[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  v129 = swift_allocObject();
  *(v129 + 16) = v127;
  *(v129 + 24) = v115;
  v243 = sub_1000E4854;
  v244 = v129;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v242 = sub_100147FC8;
  *(&v242 + 1) = &unk_100276EA0;
  v130 = _Block_copy(&aBlock);
  v131 = v127;
  v132 = v128;

  v133 = v219;
  static DispatchQoS.unspecified.getter();
  v245[0] = _swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
  v134 = v221;
  v135 = v224;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v130);

  (*(v223 + 8))(v134, v135);
  (*(v220 + 8))(v133, v222);
  (*(v217 + 8))(v225, v216);
}

void sub_1000CDFA4(uint64_t a1, uint64_t a2)
{
  sub_1000CB678(a2);
  if (!*(a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) && *(a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24) != 2)
  {
    v4 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
    v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock);

    os_unfair_lock_lock(v5 + 4);

    *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing) = a2;

    v6 = *(a1 + v4);

    os_unfair_lock_unlock(v6 + 4);

    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = v7;
      sub_10013E7E0(0, 0);
    }
  }
}

uint64_t sub_1000CE0B8(void *a1)
{
  v2 = v1;
  v94 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v95 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v83 - v10;
  v99 = a1;
  DockCoreInfo.identifier.getter();
  v96 = sub_1001408A0(v11);
  v97 = v12;
  if (qword_1002A6780 != -1)
  {
LABEL_29:
    swift_once();
  }

  v13 = qword_1002B1CF0;
  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v15 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v15 + 4);

  v16 = *(v13 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v17 = *(v13 + v14);
  v18 = v13;
  v19 = v16;

  os_unfair_lock_unlock(v17 + 4);

  if (v16)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v20 = v19;
    v21 = dispatch thunk of DockCoreAccessory.info.getter();
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      v88 = v20;
      v23 = *(v13 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
      *&aBlock = 0;
      v24 = [v23 getLocalPairingIdentity:&aBlock];
      if (!v24)
      {
        v57 = aBlock;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v54 = v96;
        v55 = v97;
        return sub_1000A0D2C(v54, v55);
      }

      v85 = v24;
      v87 = v13;
      v84 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v25 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v26 = aBlock;
      v27 = v25;
      OS_dispatch_semaphore.wait()();

      v28 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v86 = v2;
      v29 = *&v2[v28];
      v30 = *(v29 + 16);

      v98 = v30;
      if (v30)
      {
        v2 = 0;
        v31 = v29 + 32;
        v32 = v95 + 1;
        while (1)
        {
          if (v2 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_29;
          }

          sub_1000A097C(v31, v104);
          v33 = *(*sub_1000A09E0(v104, v104[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v33) = static UUID.== infix(_:_:)();
          v34 = *v32;
          (*v32)(v9, v6);
          v34(v11, v6);
          if (v33)
          {
            break;
          }

          ++v2;
          sub_100095808(v104);
          v31 += 40;
          if (v98 == v2)
          {
            goto LABEL_10;
          }
        }

        v2 = v86;
        v58 = *&v86[v84];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v104, &aBlock);
        sub_100095808(v104);
        if (!*(&v101 + 1))
        {
          goto LABEL_11;
        }

        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        v59 = swift_dynamicCast();
        v18 = v87;
        v60 = v88;
        if ((v59 & 1) == 0)
        {

          goto LABEL_14;
        }

        v61 = v104[0];
        v62 = *(v104[0] + 32);
        if (v62 && (objc_opt_self(), (v63 = swift_dynamicCastObjCClass()) != 0))
        {
          v64 = v63;
          v65 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
          v66 = swift_allocObject();
          v67 = v99;
          v66[2] = v2;
          v66[3] = v67;
          v66[4] = v61;
          v102 = sub_1000E47AC;
          v103 = v66;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v101 = sub_10015C1F8;
          *(&v101 + 1) = &unk_100276E00;
          v68 = _Block_copy(&aBlock);
          v98 = v62;
          v69 = v85;
          v70 = v65;
          v71 = v2;
          v72 = v67;

          [v64 removePairing:v69 completionQueue:v70 completionHandler:v68];

          _Block_release(v68);
        }

        else
        {
          v73 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
          v74 = swift_allocObject();
          v75 = v99;
          v74[2] = v2;
          v74[3] = v75;
          v74[4] = v61;
          v102 = sub_1000E4758;
          v103 = v74;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v101 = sub_100147FC8;
          *(&v101 + 1) = &unk_100276DB0;
          v98 = _Block_copy(&aBlock);
          v76 = v2;
          v77 = v75;

          v95 = v73;
          v78 = v89;
          static DispatchQoS.unspecified.getter();
          v104[0] = _swiftEmptyArrayStorage;
          sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100095274(&unk_1002A6B60, qword_10023AE10);
          sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
          v79 = v91;
          v80 = v94;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v81 = v98;
          v82 = v95;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v81);

          (*(v93 + 8))(v79, v80);
          (*(v90 + 8))(v78, v92);
        }
      }

      else
      {
LABEL_10:

        v2 = v86;
        v35 = *&v86[v84];
        OS_dispatch_semaphore.signal()();

        v102 = 0;
        aBlock = 0u;
        v101 = 0u;
LABEL_11:

        sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
      }

      v18 = v87;
    }

    else
    {
    }
  }

LABEL_14:
  v36 = *(v18 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  v38 = v96;
  v37 = v97;
  sub_10014025C(v96, v97);
  v39 = String._bridgeToObjectiveC()();

  *&aBlock = 0;
  v40 = [v36 removeAccessoryKeyForName:v39 error:&aBlock];

  if (v40)
  {
    v41 = aBlock;
  }

  else
  {
    v43 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v44 = v99;
  sub_100188738(v99, v42);
  v45 = sub_10014025C(v38, v37);
  sub_1000D9F2C(v45, v46);

  v47 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v48 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v49 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v50 = v44;
  v51 = sub_1000E315C(&v2[v49], v50);

  v52 = *(*&v2[v49] + 16);
  if (v52 < v51)
  {
    __break(1u);
  }

  sub_1001A1844(v51, v52);
  swift_endAccess();
  v53 = *&v2[v47];
  OS_dispatch_semaphore.signal()();

  v54 = v38;
  v55 = v37;
  return sub_1000A0D2C(v54, v55);
}

void sub_1000CEB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000DE17C(a3);
  v5 = *(a4 + 16);
  if (v5 && *&v5[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
  {
    v6 = qword_1002A67A0;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_1002B1EB8;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v5;
    v11 = v7;
    v10 = v8;
    sub_1001D5444(sub_1000E4DF8, v9);
  }
}

void sub_1000CEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000DE17C(a2);
  v4 = *(a3 + 16);
  if (v4 && *&v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
  {
    v5 = qword_1002A67A0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_1002B1EB8;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v10 = v6;
    v9 = v7;
    sub_1001D5444(sub_1000E4DF8, v8);
  }
}

uint64_t sub_1000CED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1000E4728;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276D60;
  v15 = _Block_copy(aBlock);

  v16 = v13;
  v17 = v3;
  sub_1000C6F30(a2, a3);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);
}

uint64_t sub_1000CF088(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v208 = a5;
  v201 = a4;
  v207 = type metadata accessor for DispatchWorkItemFlags();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v203 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for DispatchQoS();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v202 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for Logger();
  v217 = *(v216 - 8);
  v10 = __chkstk_darwin(v216);
  v212 = (&v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v195 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v195 - v16;
  v18 = __chkstk_darwin(v15);
  v209 = &v195 - v19;
  v20 = __chkstk_darwin(v18);
  v200 = &v195 - v21;
  __chkstk_darwin(v20);
  v23 = (&v195 - v22);
  v199 = type metadata accessor for UUID();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v25 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = a3;
  DockCoreInfo.identifier.getter();
  v26 = sub_1001408A0(v25);
  v28 = v27;
  v29 = sub_10014025C(v26, v27);
  v210 = a1;
  v31 = sub_1000F9498(v29, v30);
  v214 = v31;

  if (v31)
  {
    v213 = v26;
    v215 = v28;
    v32 = *(a2 + 20);
    v33 = v32 | (*(a2 + 24) << 32);
    if (v32 == 2)
    {
      v34 = v217;
      v35 = v216;
      (*(v217 + 16))(v14, v218 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v216);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v213;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to parse Pairing Refresh Number!", v40, 2u);

        sub_1000A0D2C(v39, v215);
      }

      else
      {
        sub_1000A0D2C(v213, v215);
      }

      (*(v34 + 8))(v14, v35);
      return 0;
    }

    v41 = v213;
    if (qword_1002A6780 != -1)
    {
LABEL_61:
      swift_once();
    }

    v197 = qword_1002B1CF0;
    v196 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore;
    v42 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
    v43 = sub_10014025C(v41, v215);
    v45 = sub_1001762B8(v43, v44, 1);
    v46 = v45;
    if (v45 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v46 & 0xC000000000000001) != 0)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_70:
            swift_once();
LABEL_38:
            sub_1000E4E98();
            sub_1000A0D2C(v41, v215);

            return 0;
          }

          v47 = *(v46 + 32);
        }

        v48 = HIDWORD(v33);

        v49 = *(v47 + 128);

        if (v49 > v48 && (v49 - v48) < 0x19u)
        {
          v17 = sub_10014025C(v41, v215);
          v51 = v50;
          v23 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v33 = v218;
          v52 = *(v218 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
          OS_dispatch_semaphore.wait()();

          v53 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v212 = *(v33 + v53);
          v54 = *(v212 + 2);
          v55 = &selRef__sendControlPacket_forRequest_completionHandler_;
          if (v54)
          {
            v199 = v23;
            v56 = v212 + 32;

            v41 = 0;
            while (1)
            {
              if (v41 >= *(v212 + 2))
              {
                __break(1u);
                goto LABEL_61;
              }

              sub_1000A097C(v56, v223);
              v57 = *(*sub_1000A09E0(v223, v223[3]) + 32);
              if (v57)
              {
                v58 = v57;
                v59 = [v58 v55[446]];
                if (v59)
                {
                  v23 = v55;
                  v60 = v59;
                  v61 = v17;
                  v62 = v51;
                  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v65 = v64;

                  v66 = v63;
                  v51 = v62;
                  if (v66 == v61 && v65 == v62)
                  {

                    v55 = v23;
LABEL_40:
                    v79 = *(v218 + v199);
                    OS_dispatch_semaphore.signal()();

                    sub_1000A097C(v223, &aBlock);
                    sub_100095808(v223);

                    v41 = v213;
                    if (*(&v220 + 1))
                    {
                      goto LABEL_34;
                    }

LABEL_41:
                    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
                    goto LABEL_42;
                  }

                  v17 = v61;
                  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v55 = v23;
                  if (v33)
                  {

                    goto LABEL_40;
                  }
                }
              }

              ++v41;
              sub_100095808(v223);
              v56 += 40;
              if (v54 == v41)
              {

                v41 = v213;
                v23 = v199;
                break;
              }
            }
          }

          v72 = *(v23 + v218);
          OS_dispatch_semaphore.signal()();

          v221 = 0;
          aBlock = 0u;
          v220 = 0u;

          if (!*(&v220 + 1))
          {
            goto LABEL_41;
          }

LABEL_34:
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory(0);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_42:
            sub_10013EE04();
            sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
            isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v81 = v214;
            v82 = [v214 v55[446]];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v212 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v200 = isa;
            v199 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v83 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v84 = *&v196[v197];
            v85 = objc_allocWithZone(_HAPAccessoryServerBTLE200);
            v86 = v81;
            v87 = v218;
            v88 = v84;
            v214 = v88;
            v89 = String._bridgeToObjectiveC()();

            v90 = String._bridgeToObjectiveC()();

            v91 = Data._bridgeToObjectiveC()().super.isa;
            v92 = String._bridgeToObjectiveC()();
            v193 = v88;
            LOBYTE(v192) = 0;
            v190 = v83;
            v93 = v83;
            v94 = v199;
            LOBYTE(v189) = 8;
            v95 = v85;
            v96 = v212;
            v97 = v200;
            v198 = [v95 initWithPeripheral:v86 name:v89 pairingUsername:v90 statusFlags:v212 stateNumber:v200 enhancedEncryption:1 connectReason:v189 configNumber:v199 category:v190 setupHash:v91 connectionIdleTime:v192 browser:v87 keyStore:v193 whbStableIdentifier:v92];
            v218 = v86;

            v98 = v87;
            v99 = *&v87[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
            v100 = *(v99 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
            v101 = v198;
            [(objc_class *)v101 setDelegate:v99 queue:v100];

            v102 = v217;
            v103 = v209;
            v104 = v216;
            (*(v217 + 16))(v209, &v87[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v216);
            v105 = v213;
            v106 = v215;
            sub_1000A0CD8(v213, v215);
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.default.getter();
            sub_1000A0D2C(v105, v106);
            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              *&aBlock = v110;
              *v109 = 136315138;
              v111 = sub_10014025C(v105, v106);
              v113 = v101;
              v114 = v98;
              v115 = sub_1000952D4(v111, v112, &aBlock);

              *(v109 + 4) = v115;
              v98 = v114;
              v101 = v113;
              _os_log_impl(&_mh_execute_header, v107, v108, "Creating new record for accessory %s.", v109, 0xCu);
              sub_100095808(v110);

              (*(v102 + 8))(v209, v216);
            }

            else
            {

              (*(v102 + 8))(v103, v104);
            }

            v116 = v208;
            v117 = v201;
            type metadata accessor for DaemonAccessory(0);
            swift_allocObject();
            v118 = v210;
            v119 = v210;
            v120 = sub_1001AD95C(v118, v211, v101);

            *(v120 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 2;
            v121 = *&v98[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
            v122 = swift_allocObject();
            v122[2] = v98;
            v122[3] = v120;
            v122[4] = v119;
            v122[5] = v117;
            v122[6] = v116;
            v221 = sub_1000E467C;
            v222 = v122;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v220 = sub_100147FC8;
            *(&v220 + 1) = &unk_100276CC0;
            v123 = _Block_copy(&aBlock);
            v124 = v98;
            v125 = v119;

            v126 = v121;

            v127 = v202;
            static DispatchQoS.unspecified.getter();
            v223[0] = _swiftEmptyArrayStorage;
            sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_100095274(&unk_1002A6B60, qword_10023AE10);
            sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
            v128 = v203;
            v129 = v207;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v123);

            sub_1000A0D2C(v213, v215);

            (*(v206 + 8))(v128, v129);
            (*(v204 + 8))(v127, v205);
LABEL_57:

            return 1;
          }

          v73 = v223[0];
          v74 = sub_1001884E4(v211);
          v75 = v215;
          v76 = v216;
          if (v74)
          {
            v77 = v74;
            v78 = dispatch thunk of DockCoreAccessory.needsMigration.getter();
          }

          else
          {
            v78 = 0;
          }

          v130 = *(v73 + 4);
          p_cache = HAPCharacteristicValueRange.cache;
          v212 = v73;
          if (v130 && (objc_opt_self(), (v132 = swift_dynamicCastObjCClass()) != 0))
          {
            v133 = v132;
            v134 = v73 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer;
            v135 = *(v73 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer);
            v136 = v130;
            v211 = v133;
            if (v135)
            {
              v137 = v134;
              p_cache = (HAPCharacteristicValueRange + 16);
            }

            else
            {
              v183 = [v133 connectReason] != 8;
              v159 = v210;
              v137 = v134;
              p_cache = (HAPCharacteristicValueRange + 16);
              if (((v183 | v78) & 1) == 0)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
            v211 = 0;
            v137 = v73 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer;
          }

          v209 = v137;
          sub_10013EE04();
          sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
          v138 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v139 = v214;
          v140 = [v214 v55[446]];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v199 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v198 = v138;
          v195 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v141 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v142 = *&v196[v197];
          v197 = objc_allocWithZone((p_cache + 268));
          v143 = v139;
          v144 = v142;
          v196 = v144;
          v145 = v218;
          v146 = String._bridgeToObjectiveC()();

          v147 = String._bridgeToObjectiveC()();

          v148 = Data._bridgeToObjectiveC()().super.isa;
          v149 = String._bridgeToObjectiveC()();
          v194 = v144;
          LOBYTE(v192) = 0;
          v191 = v141;
          v150 = v141;
          v151 = v195;
          LOBYTE(v189) = 8;
          v152 = v199;
          v153 = v198;
          v197 = [v197 initWithPeripheral:v143 name:v146 pairingUsername:v147 statusFlags:v199 stateNumber:v198 enhancedEncryption:1 connectReason:v189 configNumber:v195 category:v191 setupHash:v148 connectionIdleTime:v192 browser:v145 keyStore:v194 whbStableIdentifier:v149];

          v41 = v213;
          v73 = v212;

          v154 = v153;
          v75 = v215;

          v76 = v216;
          v155 = *&v145[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          v156 = *(v155 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
          v157 = v197;
          [v157 setDelegate:v155 queue:v156];

          v158 = *(v73 + 4);
          *(v73 + 4) = v157;

          v159 = v210;
          *v209 = 0;
LABEL_53:
          v160 = *(v73 + 2);
          *(v73 + 2) = v159;
          v161 = v159;

          v162 = v217;
          v163 = v200;
          (*(v217 + 16))(v200, v218 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v76);
          sub_1000A0CD8(v41, v75);
          v164 = Logger.logObject.getter();
          v165 = static os_log_type_t.default.getter();
          sub_1000A0D2C(v41, v75);
          if (os_log_type_enabled(v164, v165))
          {
            v166 = swift_slowAlloc();
            v167 = swift_slowAlloc();
            *&aBlock = v167;
            *v166 = 136315138;
            v168 = sub_10014025C(v41, v75);
            v170 = sub_1000952D4(v168, v169, &aBlock);

            *(v166 + 4) = v170;
            v41 = v213;
            _os_log_impl(&_mh_execute_header, v164, v165, "Found existing record for accessory %s.", v166, 0xCu);
            sub_100095808(v167);

            (*(v162 + 8))(v200, v76);
          }

          else
          {

            (*(v162 + 8))(v163, v76);
          }

          v171 = v208;
          v172 = v75;
          v173 = *(v218 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
          v174 = swift_allocObject();
          v175 = v201;
          v174[2] = v161;
          v174[3] = v175;
          v174[4] = v171;
          v221 = sub_1000E46CC;
          v222 = v174;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v220 = sub_100147FC8;
          *(&v220 + 1) = &unk_100276D10;
          v176 = _Block_copy(&aBlock);
          v177 = v161;
          v178 = v173;

          v179 = v202;
          static DispatchQoS.unspecified.getter();
          v223[0] = _swiftEmptyArrayStorage;
          sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100095274(&unk_1002A6B60, qword_10023AE10);
          sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
          v180 = v203;
          v181 = v207;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v176);

          sub_1000A0D2C(v41, v172);
          (*(v206 + 8))(v180, v181);
          (*(v204 + 8))(v179, v205);
          goto LABEL_57;
        }

        (*(v217 + 16))(v23, v218 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v216);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Pairing refresh outdates pairing state, we should unpair!", v70, 2u);
        }

        v71 = *(v217 + 8);
        v217 += 8;
        v71(v23, v216);
        sub_1000CE0B8(v211);
        if (qword_1002A67A0 == -1)
        {
          goto LABEL_38;
        }

        goto LABEL_70;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    v184 = v217;
    v185 = v216;
    (*(v217 + 16))(v17, v218 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v216);
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      *v188 = 0;
      _os_log_impl(&_mh_execute_header, v186, v187, "Unable to load Pairing State Number!", v188, 2u);

      sub_1000A0D2C(v41, v215);
    }

    else
    {
      sub_1000A0D2C(v41, v215);
    }

    (*(v184 + 8))(v17, v185);
    return 0;
  }

  sub_1000A0D2C(v26, v28);
  return 0;
}

void sub_1000D0A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  sub_1000E4E98();
  sub_10013E7E0(a2, a3);
}

void sub_1000D0AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CB678(a2);
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  sub_1000E4E98();
  sub_10013E7E0(a4, a5);
}

uint64_t sub_1000D0B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v299 = a2;
  v300 = a3;
  v338 = a1;
  v340 = type metadata accessor for UUID();
  v310 = *(v340 - 8);
  v3 = __chkstk_darwin(v340);
  v302 = v281 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v301 = v281 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = v281 - v8;
  __chkstk_darwin(v7);
  v331 = v281 - v10;
  v11 = type metadata accessor for Date();
  v304 = *(v11 - 8);
  v305 = v11;
  __chkstk_darwin(v11);
  v303 = v281 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = type metadata accessor for String.Encoding();
  v346 = *(v342 - 8);
  __chkstk_darwin(v342);
  v341 = v281 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BTDiscoveredDevice(0);
  v321 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v281 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v325 = (v281 - v18);
  v320 = type metadata accessor for Logger();
  v317 = *(v320 - 8);
  v19 = __chkstk_darwin(v320);
  v309 = v281 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v312 = v281 - v22;
  v23 = __chkstk_darwin(v21);
  v311 = v281 - v24;
  v25 = __chkstk_darwin(v23);
  v307 = v281 - v26;
  v27 = __chkstk_darwin(v25);
  v308 = v281 - v28;
  v29 = __chkstk_darwin(v27);
  v306 = v281 - v30;
  __chkstk_darwin(v29);
  v32 = v281 - v31;
  v33 = type metadata accessor for DockStatus();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = v281 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = v281 - v38;
  if (sub_1000E2B14() || (v40 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus, v41 = v324, swift_beginAccess(), v42 = v34[2], v291 = v34 + 2, v292 = v40, v290 = v42, v42(v39, &v41[v40], v33), v288 = v34[13], v289 = v34 + 13, v288(v37, enum case for DockStatus.Undocked(_:), v33), sub_1000E4D0C(&unk_1002A7B00, &type metadata accessor for DockStatus, &protocol conformance descriptor for DockStatus), LOBYTE(v40) = dispatch thunk of static Comparable.< infix(_:_:)(), v344 = v9, v330 = v17, v43 = v34[1], v43(v37, v33), v293 = v43, v294 = v34 + 1, v43(v39, v33), v44 = v330, v45 = v344, (v40 & 1) != 0))
  {
    v46 = v317;
    v47 = v320;
    (*(v317 + 16))(v32, &v324[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v320);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Ignoring newly discovered bt device, already connected or trying to connect", v50, 2u);
    }

    return (*(v46 + 8))(v32, v47);
  }

  v285 = v33;
  v286 = v34;
  v284 = v39;
  v52 = v338;
  if (v338)
  {

    v53 = v340;
    goto LABEL_21;
  }

  v53 = v340;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v54 = qword_1002B1CF0;
  v55 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v56 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v56 + 4);

  v57 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v58 = *(v54 + v57);
  v59 = *(v54 + v55);

  os_unfair_lock_unlock(v59 + 4);

  if (v58 >> 62)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
    if (v60)
    {
      goto LABEL_12;
    }

LABEL_20:

    v52 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v60)
  {
    goto LABEL_20;
  }

LABEL_12:
  *&v353 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v60 < 0)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v61 = 0;
  do
  {
    if ((v58 & 0xC000000000000001) != 0)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v62 = *(v58 + 8 * v61 + 32);
    }

    v63 = v62;
    ++v61;
    dispatch thunk of DockCoreAccessory.info.getter();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v45 = v344;
  }

  while (v60 != v61);

  v52 = v353;
LABEL_21:
  v349 = &_swiftEmptySetSingleton;
  if (qword_1002A67A0 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v55 = qword_1002B1EB8;
    v64 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
    v65 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

    os_unfair_lock_lock(v65 + 4);

    v66 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
    swift_beginAccess();
    v67 = *(v55 + v66);
    v60 = v67[2];
    v338 = v52;
    if (!v60)
    {

      v58 = _swiftEmptyArrayStorage;
      goto LABEL_26;
    }

    *(&v343 + 1) = v64;
    v58 = sub_1001E3BAC(v60, 0);
    v345 = sub_1001F0F0C(&v353, v58 + ((*(v321 + 80) + 32) & ~*(v321 + 80)), v60, v67);
    v39 = v353;
    v52 = v355;
    swift_bridgeObjectRetain_n();
    sub_1000C7084(v39);
    if (v345 != v60)
    {
      __break(1u);
      goto LABEL_166;
    }

    v53 = v340;
    v45 = v344;
    v44 = v330;
    v52 = v338;
    v64 = *(&v343 + 1);
LABEL_26:
    *&v353 = v58;
    v68 = 0;
    sub_1000E19C0(&v353);

    v69 = v353;
    v70 = *(v55 + v64);

    os_unfair_lock_unlock(v70 + 4);

    v314 = *(v69 + 16);
    if (!v314)
    {
LABEL_121:

      v188 = v320;

      v189 = v317;
      v190 = v309;
      (*(v317 + 16))(v309, &v324[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v188);
      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = 0;
        _os_log_impl(&_mh_execute_header, v191, v192, "Unable to find matching discovered device.", v193, 2u);
      }

      return (*(v189 + 8))(v190, v320);
    }

    v71 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    v296 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
    v287 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn;
    v315 = v69 + ((*(v321 + 80) + 32) & ~*(v321 + 80));
    v316 = v69;
    v283 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockSetupIdMap;
    swift_beginAccess();
    v298 = v71;
    swift_beginAccess();
    v73 = 0;
    v74 = v52 & 0xFFFFFFFFFFFFFF8;
    v337 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v52 < 0)
    {
      v74 = v52;
    }

    v281[1] = v74;
    v334 = v52 & 0xC000000000000001;
    v336 = (v310 + 8);
    v339 = (v346 + 8);
    v295 = (v317 + 16);
    v297 = (v317 + 8);
    *&v72 = 16777728;
    v282 = v72;
    v333 = xmmword_10023C8B0;
    v75 = v331;
LABEL_32:
    if (v73 < *(v316 + 16))
    {
      break;
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

  v78 = *(v321 + 72);
  v322 = v73;
  v79 = v315 + v78 * v73;
  v76 = v325;
  sub_1000E40C4(v79, v325);
  v80 = v76[3];
  if (!v80)
  {
    goto LABEL_31;
  }

  v81 = v76[2];
  v82 = v76[4];
  v83 = v76[5];
  v84 = v76[6];
  v85 = v76[7];
  *(&v87 + 1) = v83;
  *&v87 = v82;
  v86 = v87 >> 32;
  *&v350 = v81;
  *(&v350 + 1) = v80;
  *&v351 = v82;
  WORD4(v351) = WORD2(v86);
  BYTE10(v351) = BYTE2(v83) & 1;
  *&v352 = v84;
  *(&v352 + 1) = v85;
  *(&v343 + 1) = v80;
  if ((v83 & 0x10000) != 0)
  {
    v329 = v86;
    *&v343 = v81;
    v332 = v82;
    v313 = v83;
    v318 = v85;
    v319 = v84;
    v347 = _swiftEmptyArrayStorage;
    if (v52 >> 62)
    {
      v108 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v108 = *(v337 + 16);
    }

    sub_1000A0CD8(v319, v318);
    if (v108)
    {
      v44 = 0;
      v335 = v108;
      do
      {
        if (v334)
        {
          v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v110 = (v44 + 1);
          if (__OFADD__(v44, 1))
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (v44 >= *(v337 + 16))
          {
            goto LABEL_140;
          }

          v109 = *(v52 + 8 * v44 + 32);
          v110 = (v44 + 1);
          if (__OFADD__(v44, 1))
          {
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:

            (v52)(v45, v53);
            v105 = v286;
LABEL_143:
            LODWORD(v124) = v329;
            v245 = [v346 name];
            v44 = v284;
            v53 = v285;
            if (v245)
            {
              v246 = v245;
              v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v249 = v248;

LABEL_150:

              v250 = v325[1];
              v251 = v250;
              [v346 rssi];
              isa = Int8._bridgeToObjectiveC()().super.super.isa;
              v253 = objc_allocWithZone(type metadata accessor for BTDevice(0));
              v254 = sub_10013F90C(v247, v249, v250, isa);

              v346 = v254;
              sub_10013EB28(&v350);
              v288(v44, enum case for DockStatus.DockedRSSI(_:), v53);
              v255 = v324;
              v68 = v292;
              swift_beginAccess();
              (v105[5])(&v68[v255], v44, v53);
              swift_endAccess();
              v256 = *(v255 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer);
              *(v255 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer) = 0;

              v88 = swift_allocObject();
              swift_unknownObjectWeakInit();
              if (v124 != 2 && (v124 & 0x10000) != 0)
              {
                type metadata accessor for DockCoreManager();
                if ((static DockCoreManager.ignoreStartupValidation.getter() & 1) == 0)
                {
LABEL_156:
                  v272 = v324;
                  v344 = *&v324[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
                  v290(v44, &v68[v324], v53);
                  v273 = swift_allocObject();
                  *(v273 + 16) = v88;
                  *(v273 + 24) = v272;
                  v274 = v346;
                  *(v273 + 32) = v346;
                  v275 = v351;
                  *(v273 + 40) = v350;
                  *(v273 + 56) = v275;
                  *(v273 + 72) = v352;
                  v276 = v345;
                  v278 = v299;
                  v277 = v300;
                  *(v273 + 88) = v345;
                  *(v273 + 96) = v278;
                  *(v273 + 104) = v277;
                  sub_1000E4184(v343, *(&v343 + 1), v332, v313, v319, v318);

                  v279 = v272;
                  v346 = v274;
                  v280 = v276;
                  sub_1000C6F30(v278, v277);
                  DockDetector.newStatus(_:monitorJarvisCallback:)(v44, sub_1000E42C4, v273);

                  sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);

                  v293(v44, v53);
                  sub_1000E4128(v325);
                }
              }

              v257 = v324;
              v258 = *&v324[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
              v290(v44, &v68[v324], v53);
              DockDetector.newStatus(_:monitorJarvisCallback:)(v44, 0, 0);
              v293(v44, v53);
              v259 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
              swift_beginAccess();
              v260 = *(v258 + v259);
              v55 = swift_allocObject();
              *(v55 + 16) = v88;
              *(v55 + 24) = v257;
              v261 = v346;
              *(v55 + 32) = v346;
              v262 = v351;
              *(v55 + 40) = v350;
              *(v55 + 56) = v262;
              *(v55 + 72) = v352;
              v263 = v345;
              v265 = v299;
              v264 = v300;
              *(v55 + 88) = v345;
              *(v55 + 96) = v265;
              *(v55 + 104) = v264;
              v58 = v318;
              sub_1000E4184(v343, *(&v343 + 1), v332, v313, v319, v318);
              v344 = v88;

              v266 = v257;
              v52 = v261;
              v60 = v263;
              sub_1000C6F30(v265, v264);
              v267 = qword_1002A6780;
              v39 = v260;
              if (v267 == -1)
              {
LABEL_154:
                v268 = [v39 description];
                v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v271 = v270;

                sub_100185F9C(v269, v271, sub_1000E42AC, v55);

                sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v58);
                sub_1000E4128(v325);
              }

LABEL_167:
              swift_once();
              goto LABEL_154;
            }

LABEL_149:
            v247 = 0;
            v249 = 0xE000000000000000;
            goto LABEL_150;
          }
        }

        v346 = v110;
        v345 = v109;
        DockCoreInfo.identifier.getter();
        sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
        v111 = swift_allocObject();
        *(v111 + 16) = v333;
        UUID.uuid.getter();
        *(v111 + 32) = v112;
        UUID.uuid.getter();
        *(v111 + 33) = v113;
        UUID.uuid.getter();
        *(v111 + 34) = v114;
        UUID.uuid.getter();
        *(v111 + 35) = v115;
        UUID.uuid.getter();
        *(v111 + 36) = v116;
        UUID.uuid.getter();
        *(v111 + 37) = v117;
        v118 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
        *(&v354 + 1) = v118;
        *&v355 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0, &protocol conformance descriptor for <A> [A]);
        *&v353 = v111;
        v119 = sub_1000A09E0(&v353, v118);
        v120 = (*v119 + 32);
        v121 = *(*v119 + 16);

        sub_1001AC450(v120, &v120[v121], v348);
        if (v68)
        {

          __break(1u);

          __break(1u);
          return result;
        }

        v122 = v53;
        (*v336)(v45, v53);

        v123 = v348[0];
        v124 = v348[1];
        sub_100095808(&v353);
        v125 = sub_10014025C(v123, v124);
        v127 = v126;
        v353 = v343;

        v128._countAndFlagsBits = v125;
        v128._object = v127;
        String.append(_:)(v128);

        v105 = *(&v353 + 1);
        v129 = v341;
        static String.Encoding.utf8.getter();
        v130 = String.data(using:allowLossyConversion:)();
        v132 = v131;

        (*v339)(v129, v342);
        if (v132 >> 60 == 15)
        {

          sub_1000A0D2C(v123, v124);
          v45 = v344;
          v52 = v338;
          v53 = v122;
        }

        else
        {
          v133 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v133 + 16) = 64;
          *(v133 + 32) = 0u;
          *(v133 + 48) = 0u;
          *(v133 + 64) = 0u;
          *(v133 + 80) = 0u;
          *&v353 = v133;
          sub_1000A0CD8(v130, v132);
          sub_1000CAEE8(v130, v132, v130, v132, &v353);
          v53 = v353;
          v134 = *(v353 + 16);
          if (!v134)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (v134 == 1)
          {
            goto LABEL_146;
          }

          if (v134 < 3)
          {
            goto LABEL_147;
          }

          if (v134 == 3)
          {
            goto LABEL_148;
          }

          v135 = *(v353 + 32);
          sub_1000A0D2C(v123, v124);
          sub_1000A452C(v130, v132);

          if (bswap32(v135) == v332)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v53 = v340;
          v45 = v344;
          v52 = v338;
        }

        ++v44;
      }

      while (v346 != v335);
      v136 = v347;
      v44 = v330;
      v75 = v331;
      if ((v347 & 0x8000000000000000) != 0)
      {
LABEL_108:
        v177 = v136;
        v178 = _CocoaArrayWrapper.endIndex.getter();
        v136 = v177;
        if (v178 != 1)
        {
          v137 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_110;
        }

LABEL_83:
        if ((v136 & 0xC000000000000001) != 0)
        {
          v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v136 + 16))
          {
            goto LABEL_163;
          }

          v138 = *(v136 + 32);
        }

        v139 = v138;

        v140 = v325;
        v141 = *v325;
        if ([*v325 rssi] >= -70)
        {
          v346 = v141;

          DockCoreInfo.identifier.getter();
          sub_1000F27AC(v75);

          v52 = *v336;
          (*v336)(v75, v53);
          v150 = v349;
          DockCoreInfo.identifier.getter();
          v151 = sub_1000F1DB8(v75, v150);
          (v52)(v75, v53);
          if (v151)
          {
            (*v295)(v308, &v324[v296], v320);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              *v154 = 0;
              _os_log_impl(&_mh_execute_header, v152, v153, "Ignoring newly discovered bt device, old adv data", v154, 2u);

              sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
            }

            else
            {

              sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
            }

            v52 = v338;
            v44 = v330;
            (*v297)(v308, v320);
          }

          else
          {
            v155 = v301;
            DockCoreInfo.identifier.getter();
            sub_10019D5B8(v75, v155);
            (v52)(v75, v53);
            v45 = v302;
            v345 = v139;
            DockCoreInfo.identifier.getter();
            v156 = *&v324[v283];
            v157 = *(v156 + 16);

            if (!v157)
            {
              goto LABEL_142;
            }

            v158 = sub_10016D5D4(v45);
            if ((v159 & 1) == 0)
            {
              goto LABEL_142;
            }

            v160 = (*(v156 + 56) + 16 * v158);
            v161 = v52;
            v163 = *v160;
            v162 = v160[1];

            v161(v45, v53);

            if (v343 == __PAIR128__(v162, v163))
            {

              v44 = v330;
              v164 = v345;
            }

            else
            {
              v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v105 = v286;
              v44 = v330;
              v164 = v345;
              if ((v165 & 1) == 0)
              {
LABEL_161:

                goto LABEL_143;
              }
            }

            (*v295)(v307, &v324[v296], v320);
            v166 = Logger.logObject.getter();
            v167 = static os_log_type_t.default.getter();
            v168 = os_log_type_enabled(v166, v167);
            v52 = v338;
            if (v168)
            {
              v169 = swift_slowAlloc();
              *v169 = 0;
              _os_log_impl(&_mh_execute_header, v166, v167, "Ignoring newly discovered bt device, adv data rejected as invalid due to startup validation failure", v169, 2u);

              sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
            }

            else
            {

              sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
            }

            v45 = v344;
            v75 = v331;
            (*v297)(v307, v320);
          }
        }

        else
        {
          v142 = v324;
          (*v295)(v311, &v324[v296], v320);
          sub_1000E40C4(v140, v44);
          v143 = v142;
          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v144, v145))
          {
            v146 = swift_slowAlloc();
            *v146 = v282;
            v147 = [*v44 rssi];
            v346 = v143;
            v148 = v139;
            v149 = v147;
            sub_1000E4128(v44);
            *(v146 + 4) = v149;
            v139 = v148;
            *(v146 + 5) = 2048;
            *(v146 + 7) = -70;

            _os_log_impl(&_mh_execute_header, v144, v145, "Ignoring newly discovered bt device, RSSI: %hhd is < %ld", v146, 0xFu);
            v52 = v338;
          }

          else
          {
            sub_1000E4128(v44);

            v144 = v143;
          }

          (*v297)(v311, v320);

          v75 = v331;
          DockCoreInfo.identifier.getter();
          sub_1000F2140(v75);

          sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
          (*v336)(v75, v53);
        }

        goto LABEL_116;
      }
    }

    else
    {
      v136 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_108;
      }
    }

    if ((v136 & 0x4000000000000000) != 0)
    {
      goto LABEL_108;
    }

    v137 = *(v136 + 16);
    if (v137 == 1)
    {
      goto LABEL_83;
    }

LABEL_110:

    if (v137)
    {
      (*v295)(v312, &v324[v296], v320);
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        *v181 = 0;
        _os_log_impl(&_mh_execute_header, v179, v180, "Setup hash does not match with a unique setup payload, ignoring.", v181, 2u);

        sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
      }

      else
      {
        sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
      }

      (*v297)(v312, v320);
    }

    else
    {
      sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
    }

LABEL_116:
    v76 = v325;
    goto LABEL_31;
  }

  v345 = *&v324[v298];
  v88 = v345;
  if (!(v345 >> 62))
  {
    v89 = *((v345 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v89)
    {
      goto LABEL_37;
    }

LABEL_31:
    v77 = v76;
    v73 = v322 + 1;
    sub_1000E4128(v77);
    if (v73 == v314)
    {
      goto LABEL_121;
    }

    goto LABEL_32;
  }

  v170 = v85;
  v171 = v84;
  v172 = v75;
  v173 = v83;
  v174 = v82;
  v175 = v81;
  v176 = _CocoaArrayWrapper.endIndex.getter();
  v81 = v175;
  v80 = *(&v343 + 1);
  v82 = v174;
  v52 = v338;
  v83 = v173;
  v75 = v172;
  v44 = v330;
  v84 = v171;
  v88 = v345;
  v85 = v170;
  v89 = v176;
  v76 = v325;
  if (!v176)
  {
    goto LABEL_31;
  }

LABEL_37:
  v90 = v88 & 0xC000000000000001;
  *&v343 = v81;
  v332 = v82;
  v313 = v83;
  v318 = v85;
  v319 = v84;
  sub_1000E4184(v81, v80, v82, v83, v84, v85);
  v323 = v88 & 0xFFFFFFFFFFFFFF8;

  v52 = 0;
  v335 = v89;
  v329 = v88 & 0xC000000000000001;
  while (2)
  {
    if (v90)
    {
      v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (v52 >= *(v323 + 16))
      {
        __break(1u);
        goto LABEL_156;
      }

      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_141;
      }
    }

    if (*(v92 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_inUse))
    {

      goto LABEL_39;
    }

    v327 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_inUse;
    v346 = v68;
    v93 = v92;
    v95 = *(v92 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v94 = *(v92 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    v328 = v92 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
    sub_1000A0CD8(v95, v94);
    v96 = sub_10014025C(v95, v94);
    v98 = v97;
    v353 = v343;

    v99._countAndFlagsBits = v96;
    v99._object = v98;
    String.append(_:)(v99);

    v100 = v341;
    static String.Encoding.utf8.getter();
    v101 = String.data(using:allowLossyConversion:)();
    v103 = v102;

    (*v339)(v100, v342);
    if (v103 >> 60 == 15)
    {

      sub_1000A0D2C(v95, v94);
      v44 = v330;
      v75 = v331;
      v45 = v344;
      v68 = v346;
      goto LABEL_55;
    }

    v326 = v93;
    v104 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v104 + 16) = 64;
    *(v104 + 32) = 0u;
    *(v104 + 48) = 0u;
    *(v104 + 64) = 0u;
    *(v104 + 80) = 0u;
    *&v353 = v104;
    sub_1000A0CD8(v101, v103);
    v68 = v346;
    sub_1000CAEE8(v101, v103, v101, v103, &v353);
    v105 = v353;
    v106 = *(v353 + 16);
    if (!v106)
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v106 == 1)
    {
      goto LABEL_158;
    }

    if (v106 < 3)
    {
      goto LABEL_159;
    }

    if (v106 == 3)
    {
      goto LABEL_160;
    }

    v107 = *(v353 + 32);
    sub_1000A0D2C(v95, v94);
    sub_1000A452C(v101, v103);

    if (bswap32(v107) != v332)
    {

      v44 = v330;
      v75 = v331;
      v45 = v344;
LABEL_55:
      v88 = v345;
      v89 = v335;
      v90 = v329;
LABEL_39:
      ++v52;
      v91 = v53 == v89;
      v53 = v340;
      if (v91)
      {

        sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
        v76 = v325;
        v52 = v338;
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  v182 = *v325;
  v183 = [*v325 name];
  if (v183)
  {
    v184 = v183;
    v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v186;
  }

  else
  {
    v185 = 0;
    v187 = 0xE000000000000000;
  }

  v194 = v305;
  v195 = v306;
  v197 = v303;
  v196 = v304;
  v198 = v325[1];
  v199 = v198;
  [v182 rssi];
  v200 = Int8._bridgeToObjectiveC()().super.super.isa;
  v201 = objc_allocWithZone(type metadata accessor for BTDevice(0));
  v202 = sub_10013F90C(v185, v187, v198, v200);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v204 = v203;
  (*(v196 + 8))(v197, v194);
  v205 = v328;
  v206 = *(v328 + 48);
  if (v206 <= v204)
  {
    v207 = v204 - v206;

    v208 = v326;
    if (v207 >= 300.0)
    {

      sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
    }

    else
    {
      *(v326 + v327) = 1;
      v209 = v320;
      (*v295)(v195, &v324[v296], v320);

      v210 = Logger.logObject.getter();
      v211 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        v346 = swift_slowAlloc();
        *&v353 = v346;
        *v212 = 136315394;
        v213 = v310 + 16;
        v214 = v208 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
        v215 = v331;
        v216 = v340;
        (*(v310 + 16))(v331, v214, v340);
        sub_1000E4D0C(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v217 = dispatch thunk of CustomStringConvertible.description.getter();
        v219 = v218;
        (*(v213 - 8))(v215, v216);
        v220 = v217;
        v205 = v328;
        v221 = sub_1000952D4(v220, v219, &v353);

        *(v212 + 4) = v221;
        *(v212 + 12) = 2080;
        v222 = *(v205 + 32);
        v223 = *(v205 + 40);
        sub_1000A0CD8(v222, v223);
        v224 = sub_10014025C(v222, v223);
        v226 = v225;
        sub_1000A0D2C(v222, v223);
        v227 = sub_1000952D4(v224, v226, &v353);

        *(v212 + 14) = v227;
        _os_log_impl(&_mh_execute_header, v210, v211, "Using token %s for accessory %s", v212, 0x16u);
        swift_arrayDestroy();

        (*v297)(v306, v320);
      }

      else
      {

        (*v297)(v195, v209);
      }

      v228 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
      if (*&v324[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
      {

        sub_1001059EC();
      }

      v229 = *(v205 + 32);
      v230 = *(v205 + 40);
      sub_1000A0CD8(v229, v230);
      sub_10014025C(v229, v230);

      sub_1000A0D2C(v229, v230);
      sub_1001F29A8(_swiftEmptyArrayStorage);

      if (*&v324[v228])
      {
        v324[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 2;
      }

      v231 = *v205;
      v232 = *(v205 + 16);
      v233 = *(v205 + 32);
      v356 = *(v205 + 48);
      v354 = v232;
      v355 = v233;
      v353 = v231;
      sub_1000E3C64(&v353, v348);
      v234 = v332;
      v235 = sub_10013B630(v332);
      v237 = v236;
      v238 = v205;
      v239 = *(v205 + 32);
      v240 = *(v238 + 40);
      sub_1000A0CD8(v239, v240);
      v241 = sub_10014025C(v239, v240);
      v243 = v242;
      sub_1000A0D2C(v239, v240);
      sub_1000CCA20(v202, v244, &v353, v235, v237, v241, v243);

      sub_1000A0D2C(v235, v237);
      sub_1000E421C(&v353);

      sub_1000E41D0(v343, *(&v343 + 1), v234, v313, v319, v318);
    }
  }

  else
  {

    sub_1000E41D0(v343, *(&v343 + 1), v332, v313, v319, v318);
  }

  return sub_1000E4128(v325);
}

void sub_1000D2F28(char a1, uint64_t a2, void *a3, void *a4, _OWORD *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v48 = a7;
  v15 = type metadata accessor for DockStatus();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = a8;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v22 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
      v23 = swift_allocObject();
      *(v23 + 16) = a2;
      *(v23 + 24) = a3;
      v24 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
      v25 = v22;

      v26 = a3;
      v27 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
      v28 = *&v20[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer];
      *&v20[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = v27;

      a8 = v21;
    }

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = a8;
      v32 = *(v29 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

      v33 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
      swift_beginAccess();
      v34 = *&v32[v33];

      v35 = swift_allocObject();
      *(v35 + 16) = a2;
      *(v35 + 24) = a3;
      *(v35 + 32) = a4;
      v36 = a5[1];
      *(v35 + 40) = *a5;
      *(v35 + 56) = v36;
      *(v35 + 72) = a5[2];
      v37 = v48;
      *(v35 + 88) = a6;
      *(v35 + 96) = v37;
      *(v35 + 104) = v31;

      v38 = a3;
      v39 = a4;
      sub_1000E4390(a5, v49);
      v40 = a6;
      sub_1000C6F30(v37, v31);
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v41 = [v34 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      sub_100185F9C(v42, v44, sub_1000E4358, v35);
    }
  }

  else
  {
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      (*(v16 + 104))(v18, enum case for DockStatus.Undocked(_:), v15);
      v47 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
      swift_beginAccess();
      (*(v16 + 40))(&v46[v47], v18, v15);
      swift_endAccess();
    }
  }
}