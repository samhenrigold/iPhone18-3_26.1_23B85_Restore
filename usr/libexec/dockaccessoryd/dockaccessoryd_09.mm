void sub_10014D378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v8 = type metadata accessor for Logger();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  v12 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = [a1 uuid];
  v14 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
  swift_beginAccess();
  v15 = *(v4 + v14);

  v16 = sub_1001A359C(v13, v15);

  v17 = *(v4 + v11);

  os_unfair_lock_unlock(v17 + 4);

  if (v16)
  {
    [v16 firmwareStagingProgress:a1 assetID:a2 bytesSent:a3 bytesTotal:v28];
  }

  else
  {
    v18 = v27;
    (*(v27 + 16))(v10, v4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v8);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = v8;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "UARP session not found for %@", v23, 0xCu);
      sub_100095C84(v24, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v18 + 8))(v10, v22);
  }
}

void sub_10014D6B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  v11 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = [a1 uuid];
  v13 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
  swift_beginAccess();
  v14 = *(v3 + v13);

  v15 = sub_1001A359C(v12, v14);

  v16 = *(v3 + v10);

  os_unfair_lock_unlock(v16 + 4);

  if (v15)
  {
    [v15 firmwareStagingComplete:a1 assetID:a2 withStatus:a3];
  }

  else
  {
    v17 = v24;
    (*(v24 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v7);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "UARP session not found for %@", v21, 0xCu);
      sub_100095C84(v22, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v17 + 8))(v9, v7);
  }
}

void sub_10014D9DC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  v10 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = [a1 uuid];
  v12 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
  swift_beginAccess();
  v13 = *(v2 + v12);

  v14 = sub_1001A359C(v11, v13);

  v15 = *(v2 + v9);

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    [v14 stagedFirmwareApplicationComplete:a1 withStatus:a2];
  }

  else
  {
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v5);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "UARP session not found for %@", v19, 0xCu);
      sub_100095C84(v20, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10014DCDC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  v5 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = [a1 uuid];
  swift_beginAccess();
  v7 = sub_1001E4AB0(v6);
  swift_endAccess();

  v8 = *(v2 + v4);

  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_10014DDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v86 = a2;
  v5 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v77 - v8;
  v10 = type metadata accessor for Logger();
  v89 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v77 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v77 - v18;
  __chkstk_darwin(v17);
  v21 = v77 - v20;
  v22 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  swift_beginAccess();
  v23 = *(v3 + v22);

  v24 = sub_1001A34D4(a1, v23);

  if (v24)
  {

    v26 = v89;
    (*(v89 + 16))(v21, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v10);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = *(a1 + 24);
      *(v29 + 4) = v31;
      *v30 = v31;
      v32 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Accessory %@ is already registered", v29, 0xCu);
      sub_100095C84(v30, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v26 + 8))(v21, v10);
    return 1;
  }

  else
  {
    v35 = v87;
    v34 = v88;
    v81 = v19;
    v82 = v16;
    v84 = v9;
    v85 = v10;
    v36 = sub_10014F580(a1, v25);
    v80 = a1;
    v37 = v3;
    v83 = v36;
    if (v36)
    {
      v38 = v34;
      if (v34)
      {

        v39 = v84;
        URL.init(string:)();

        v40 = type metadata accessor for URL();
        v41 = (*(*(v40 - 8) + 48))(v39, 1, v40) == 1;
      }

      else
      {
        v40 = type metadata accessor for URL();
        v41 = 1;
        v39 = v84;
        (*(*(v40 - 8) + 56))(v84, 1, 1, v40);
      }

      sub_1000B5150(v39, v35, &qword_1002A6B70, &unk_10023C9C0);
      type metadata accessor for URL();
      v47 = *(v40 - 8);
      v49 = 0;
      if ((*(v47 + 48))(v35, 1, v40) != 1)
      {
        URL._bridgeToObjectiveC()(v48);
        v49 = v50;
        (*(v47 + 8))(v35, v40);
      }

      v87 = [objc_allocWithZone(UARPAssetID) initWithLocationType:v41 remoteURL:v49];

      v51 = v89;
      v53 = v89 + 16;
      v52 = *(v89 + 16);
      v78 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger;
      v79 = v52;
      v54 = v81;
      v55 = v85;
      v52(v81, v37 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v85);

      v56 = v83;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v77[0] = v37;
        v61 = v90;
        *v59 = 138412546;
        *(v59 + 4) = v56;
        *v60 = v83;
        *(v59 + 12) = 2080;
        v77[1] = v53;
        v62 = v54;
        if (v38)
        {
          v63 = v86;
        }

        else
        {
          v63 = 7104878;
        }

        if (!v38)
        {
          v38 = 0xE300000000000000;
        }

        v64 = v56;
        v65 = sub_1000952D4(v63, v38, &v90);

        *(v59 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v57, v58, "registering accessory %@, filepath is %s", v59, 0x16u);
        sub_100095C84(v60, &unk_1002A6F60, &unk_10023C4E0);

        sub_100095808(v61);
        v37 = v77[0];

        v55 = v85;

        v66 = *(v51 + 8);
        v66(v62, v55);
      }

      else
      {

        v66 = *(v51 + 8);
        v66(v54, v55);
      }

      v67 = v82;
      v68 = v87;
      if ([*(v37 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController) addAccessory:v56 assetID:v87])
      {

        sub_100095C84(v84, &qword_1002A6B70, &unk_10023C9C0);
        return 1;
      }

      v79(v67, v37 + v78, v55);

      v69 = v56;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412546;
        *(v72 + 4) = v69;
        *(v72 + 12) = 2112;
        v74 = *(v80 + 24);
        *(v72 + 14) = v74;
        *v73 = v83;
        v73[1] = v74;
        v75 = v69;
        v76 = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "Failed to register uarp accessory %@ for dock accessory %@", v72, 0x16u);
        sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
        swift_arrayDestroy();

        v67 = v82;

        v69 = v68;
      }

      else
      {
        v75 = v70;
        v70 = v68;
      }

      v66(v67, v55);
      sub_100095C84(v84, &qword_1002A6B70, &unk_10023C9C0);
    }

    else
    {
      v42 = v89;
      v43 = v85;
      (*(v89 + 16))(v13, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v85);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Error retreiving uarp accessory", v46, 2u);
      }

      (*(v42 + 8))(v13, v43);
    }

    return 0;
  }
}

void sub_10014E6B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10014F580(a1, v9);
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v13 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v13 + 4);

    v14 = [v11 uuid];
    v15 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v16 = *(v3 + v15);

    v17 = sub_1001A359C(v14, v16);

    v18 = *(v3 + v12);

    os_unfair_lock_unlock(v18 + 4);

    if (v17)
    {
      sub_1000BB108();
    }

    sub_10014DCDC(v11);
    swift_beginAccess();
    v19 = sub_1001E4958(a1);
    swift_endAccess();

    [*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController) removeAccessory:v11];
  }

  else
  {
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v5);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error retreiving uarp accessory", v22, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_10014E948(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for Logger();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v19 = &v55 - v18;
  if (a2)
  {
    sub_10014E6B8(a1, v17);
    if ((sub_10014DDA8(a1, a3, a4) & 1) == 0)
    {
      sub_1000A1168();
      swift_allocError();
      *v43 = 0xD00000000000002BLL;
      *(v43 + 8) = 0x80000001002334E0;
      *(v43 + 16) = 0;
      swift_willThrow();
      return;
    }
  }

  v56 = v12;
  v20 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  swift_beginAccess();
  v21 = *(v5 + v20);

  v22 = sub_1001A34D4(a1, v21);

  if (v22)
  {
    v55 = v16;
    v23 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v24 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v24 + 4);

    v25 = [v22 uuid];
    v26 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v27 = *(v5 + v26);

    v28 = sub_1001A359C(v25, v27);

    v29 = v28;

    v30 = *(v5 + v23);

    os_unfair_lock_unlock(v30 + 4);

    if (!v28)
    {
      v53 = v59;
      v54 = sub_10014F178(v22);
      if (v53)
      {
        swift_willThrow();

        return;
      }

      v29 = v54;
    }

    v31 = *(v57 + 16);
    v32 = v55;
    if (a2)
    {
      v31(v19, v5 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v58);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = v29;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = *(a1 + 24);
        *(v36 + 4) = v38;
        *v37 = v38;
        v39 = v38;
        _os_log_impl(&_mh_execute_header, v33, v34, "Marking accessory reachable: %@", v36, 0xCu);
        sub_100095C84(v37, &unk_1002A6F60, &unk_10023C4E0);

        v29 = v35;
      }

      (*(v57 + 8))(v19, v58);
      v40 = type metadata accessor for TaskPriority();
      v41 = v56;
      (*(*(v40 - 8) + 56))(v56, 1, 1, v40);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v29;
      sub_1001B6410(0, 0, v41, &unk_10023E968, v42);
    }

    else
    {
      v31(v55, v5 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v58);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = v22;
        v47 = v29;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = *(a1 + 24);
        *(v48 + 4) = v50;
        *v49 = v50;
        v51 = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "Marking accessory un-reachable: %@", v48, 0xCu);
        sub_100095C84(v49, &unk_1002A6F60, &unk_10023C4E0);

        v29 = v47;
        v32 = v55;
        v22 = v46;
      }

      (*(v57 + 8))(v32, v58);
      sub_10014E6B8(a1, v52);
    }
  }
}

uint64_t sub_10014EF2C()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
  swift_beginAccess();
  sub_1000B5150(v1 + v2, (v0 + 2), &unk_1002A7380, &qword_10023E970);
  if (v0[5])
  {
    sub_1000A097C((v0 + 2), (v0 + 7));
    sub_100095C84((v0 + 2), &unk_1002A7380, &qword_10023E970);
    v3 = v0[10];
    v4 = v0[11];
    sub_1000A09E0(v0 + 7, v3);
    (*(v4 + 16))(1, v3, v4);
    sub_100095808(v0 + 7);
  }

  else
  {
    sub_100095C84((v0 + 2), &unk_1002A7380, &qword_10023E970);
  }

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10014F084;

  return sub_1000BBE5C(v5, v6);
}

uint64_t sub_10014F084()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_10014F178(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  v5 = *&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock];

  os_unfair_lock_lock(v5 + 4);

  v6 = [a1 uuid];
  v7 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
  swift_beginAccess();
  v8 = *&v2[v7];

  v9 = sub_1001A359C(v6, v8);

  v10 = *&v2[v4];

  os_unfair_lock_unlock(v10 + 4);

  if (v9)
  {

    v11 = type metadata accessor for Errors();
    sub_1001519DC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v12 = 0xD00000000000001BLL;
    v12[1] = 0x80000001002334C0;
    (*(*(v11 - 8) + 104))(v12, enum case for Errors.AlreadyDone(_:), v11);
LABEL_3:
    swift_willThrow();
    return a1;
  }

  sub_10014FAE8(a1);
  if (!v13)
  {
    v23 = type metadata accessor for Errors();
    sub_1001519DC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v25 = v24;
    _StringGuts.grow(_:)(49);

    v26 = [a1 description];
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29._countAndFlagsBits = a1;
    v29._object = v28;
    String.append(_:)(v29);

    *v25 = 0xD00000000000002FLL;
    v25[1] = 0x8000000100233490;
    (*(*(v23 - 8) + 104))(v25, enum case for Errors.NotFound(_:), v23);
    goto LABEL_3;
  }

  v14 = v13;
  v15 = objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateSession(0));

  v16 = a1;
  a1 = sub_1000BABD8(v14, v16, v2);
  v17 = *&v2[v4];

  os_unfair_lock_lock(v17 + 4);

  v18 = [v16 uuid];
  swift_beginAccess();
  v19 = *&v2[v7];
  if ((v19 & 0xC000000000000001) == 0)
  {
    v30 = a1;
    goto LABEL_13;
  }

  if (v19 < 0)
  {
    v20 = *&v2[v7];
  }

  else
  {
    v20 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = a1;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *&v2[v7] = sub_1001517A8(v20, (result + 1));
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *&v2[v7];
    sub_1001EB6AC(a1, v18, isUniquelyReferenced_nonNull_native);
    *&v2[v7] = v33;

    swift_endAccess();
    v32 = *&v2[v4];

    os_unfair_lock_unlock(v32 + 4);

    return a1;
  }

  __break(1u);
  return result;
}

id sub_10014F580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v51 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = type metadata accessor for UUID();
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  swift_beginAccess();
  v14 = *(v2 + v13);

  v15 = sub_1001A34D4(a1, v14);

  if (v15)
  {
    return v15;
  }

  v47 = v12;
  v48 = v13;
  v49 = v10;
  v16 = a1;
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup + 8))
  {
    v33 = v51;
    v17 = v7;
    (*(v51 + 16))(v7, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v4);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = *(v16 + 24);
      *(v36 + 4) = v38;
      *v37 = v38;
      v39 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error reading product group for accessory %@, PG is nil", v36, 0xCu);
      sub_100095C84(v37, &unk_1002A6F60, &unk_10023C4E0);

LABEL_14:
    }

LABEL_15:

    (*(v33 + 8))(v17, v4);
    return 0;
  }

  v17 = v9;
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber + 8))
  {
    v33 = v51;
    (*(v51 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v4);

    v34 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = *(a1 + 24);
      *(v41 + 4) = v43;
      *v42 = v43;
      v44 = v43;
      _os_log_impl(&_mh_execute_header, v34, v40, "Error reading product number for accessory %@, PN is nil", v41, 0xCu);
      sub_100095C84(v42, &unk_1002A6F60, &unk_10023C4E0);

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v18 = a1;
  v19 = *(a1 + 24);

  v20 = v19;
  v21 = v47;
  v51 = v2;
  DockCoreInfo.identifier.getter();

  v22 = objc_allocWithZone(UARPAccessory);
  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v25.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = v51;
  isa = v25.super.isa;
  v15 = [v22 initWithProductGroup:v23 productNumber:v24 uuid:v25.super.isa];

  (*(v50 + 8))(v21, v49);
  v28 = v48;
  swift_beginAccess();
  v29 = *(v26 + v28);
  if ((v29 & 0xC000000000000001) == 0)
  {
    v45 = v15;
    goto LABEL_17;
  }

  if (v29 < 0)
  {
    v30 = *(v26 + v28);
  }

  else
  {
    v30 = v29 & 0xFFFFFFFFFFFFFF8;
  }

  v31 = v15;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(v26 + v28) = sub_10015154C(v30, result + 1);
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v26 + v28);
    sub_1001EB550(v15, v18, isUniquelyReferenced_nonNull_native);
    *(v26 + v28) = v52;
    swift_endAccess();

    return v15;
  }

  __break(1u);
  return result;
}

void sub_10014FAE8(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v27 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v4 + 32);
    v6 = ~v8;
    v5 = v4 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v4 + 64);
    v27 = v4;
  }

  v11 = 0;
  v12 = (v6 + 64) >> 6;
  v13 = v27;
  while (v13 < 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()() || (type metadata accessor for DaemonAccessory(0), swift_dynamicCast(), v16 = v29, v28 = v7, !v29))
    {
LABEL_27:
      sub_1000C7084(v13);
      return;
    }

LABEL_19:
    v17 = *(v2 + v3);
    if ((v17 & 0xC000000000000001) != 0)
    {

      v18 = __CocoaDictionary.lookup(_:)();

      if (!v18)
      {
        goto LABEL_9;
      }

      sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
      swift_dynamicCast();
      v19 = v29;
      if (!v29)
      {
        goto LABEL_9;
      }

LABEL_26:
      sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
      v22 = v3;
      v23 = v2;
      v24 = a1;
      v25 = static NSObject.== infix(_:_:)();

      v2 = v23;
      v3 = v22;
      v13 = v27;

      if (v25)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    if (*(v17 + 16))
    {

      v20 = sub_10016D780(v16);
      if ((v21 & 1) == 0)
      {

        goto LABEL_9;
      }

      v19 = *(*(v17 + 56) + 8 * v20);

      if (v19)
      {
        goto LABEL_26;
      }
    }

LABEL_9:

    v7 = v28;
  }

  v14 = v11;
  v15 = v7;
  if (v7)
  {
LABEL_15:
    v28 = (v15 - 1) & v15;
    v16 = *(*(v13 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_27;
    }

    v15 = *(v5 + 8 * v11);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_10014FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v73 = a2;
  v72 = a1;
  v5 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v5 - 8);
  v71 = &v63 - v6;
  v66 = type metadata accessor for Logger();
  v77 = *(v66 - 8);
  __chkstk_darwin(v66);
  v76 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v75 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - v17;
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  v21 = [objc_opt_self() defaultManager];
  static URL.temporaryDirectory.getter();
  v83[0] = a3;
  v83[1] = v78;
  v22 = *(v9 + 104);
  v68 = v9 + 104;
  v67 = v22;
  v22(v11, enum case for URL.DirectoryHint.isDirectory(_:), v8);
  sub_1000E3C10();
  URL.appending<A>(component:directoryHint:)();
  v24 = *(v9 + 8);
  countAndFlagsBits = (v9 + 8);
  v69 = v11;
  v70 = v8;
  v24(v11, v8);
  v25 = *(v13 + 40);
  v78 = v12;
  v25(v20, v18, v12);
  v81 = 0;
  URL.path(percentEncoded:)(1);
  v26 = String._bridgeToObjectiveC()();

  LOBYTE(v18) = [v21 fileExistsAtPath:v26 isDirectory:&v81];

  if ((v18 & 1) == 0)
  {
    v63 = v21;
    v64 = v13;
    sub_100095274(&qword_1002A7B20, &unk_10023E940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10023C170;
    *(inited + 32) = NSFilePosixPermissions;
    *(inited + 40) = 457;
    v28 = NSFilePosixPermissions;
    v29 = sub_1001F237C(inited);
    swift_setDeallocating();
    sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
    v30 = v66;
    (*(v77 + 16))(v76, v65 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v66);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      countAndFlagsBits = swift_slowAlloc();
      v83[0] = countAndFlagsBits;
      *v33 = 136315138;
      swift_beginAccess();
      v34 = URL.path.getter();
      v36 = sub_1000952D4(v34, v35, v83);

      *(v33 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "creating firmware directory ar %s", v33, 0xCu);
      sub_100095808(countAndFlagsBits);
    }

    (*(v77 + 8))(v76, v30);
    swift_beginAccess();
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    sub_1001DAF74(v29);

    type metadata accessor for FileAttributeKey(0);
    sub_1001519DC(&qword_1002A6D80, type metadata accessor for FileAttributeKey, &unk_10023BBA8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v82[0] = 0;
    v21 = v63;
    v41 = [v63 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:isa error:v82];

    v13 = v64;
    if (!v41)
    {
      v56 = v82[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_14:
      (*(v13 + 8))(v20, v78);
      return countAndFlagsBits;
    }

    v42 = v82[0];
  }

  swift_beginAccess();
  v43 = URL.path(percentEncoded:)(1);
  v80[0] = 0xD000000000000010;
  v80[1] = 0x8000000100233470;
  v79 = v43;
  v79._countAndFlagsBits = String.init<A>(_:)();
  v79._object = v44;
  String.append<A>(contentsOf:)();
  countAndFlagsBits = v79._countAndFlagsBits;
  v45 = String._bridgeToObjectiveC()();
  v46 = [v21 fileExistsAtPath:v45];

  v47 = v21;
  v48 = v75;
  if (!v46)
  {
    goto LABEL_9;
  }

  v49 = String._bridgeToObjectiveC()();
  v80[0] = 0;
  v50 = [v21 removeItemAtPath:v49 error:v80];

  if (!v50)
  {
    countAndFlagsBits = v80[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_14;
  }

  v51 = v80[0];
LABEL_9:
  (*(v13 + 56))(v71, 1, 1, v78);
  v67(v69, enum case for URL.DirectoryHint.inferFromPath(_:), v70);

  URL.init(filePath:directoryHint:relativeTo:)();
  v52 = v74;
  v53 = Data.init(contentsOf:options:)();
  if (v52)
  {
    v55 = *(v13 + 8);
    countAndFlagsBits = v78;
    v55(v48, v78);

    v55(v20, countAndFlagsBits);
  }

  else
  {
    v77 = *(v13 + 8);
    v76 = v53;
    v57 = v48;
    v58 = v54;
    (v77)(v57, v78);
    v59 = String._bridgeToObjectiveC()();
    v60 = v47;
    v61 = Data._bridgeToObjectiveC()().super.isa;
    [v60 createFileAtPath:v59 contents:v61 attributes:0];

    sub_1000A0D2C(v76, v58);
    (v77)(v20, v78);
  }

  return countAndFlagsBits;
}

uint64_t sub_10015079C(uint64_t a1, void *a2)
{
  v79._object = a2;
  v79._countAndFlagsBits = a1;
  v2 = type metadata accessor for Logger();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = __chkstk_darwin(v2);
  v72 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v80 = &v70 - v5;
  v78 = type metadata accessor for UUID();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Date();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = [objc_opt_self() defaultManager];
  v20 = [v19 URLsForDirectory:13 inDomains:1];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v21 + 16))
  {

    return 0;
  }

  v13[2](v16, v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

  v13[4](v18, v16, v12);
  (*(v9 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v8);
  sub_1000E3C10();
  URL.append<A>(components:directoryHint:)();
  (*(v9 + 8))(v11, v8);
  v84 = 0;
  URL.path(percentEncoded:)(1);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v19 fileExistsAtPath:v22 isDirectory:&v84];

  v24 = v83;
  if (v23)
  {
    goto LABEL_5;
  }

  sub_100095274(&qword_1002A7B20, &unk_10023E940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  v26 = NSFilePosixPermissions;
  v27 = sub_1001F237C(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  sub_1001DAF74(v27);

  type metadata accessor for FileAttributeKey(0);
  sub_1001519DC(&qword_1002A6D80, type metadata accessor for FileAttributeKey, &unk_10023BBA8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v86 = 0;
  v32 = [v19 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:isa error:&v86];

  if (!v32)
  {
    v56 = v18;
    v57 = v86;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v58 = v82;
    v59 = v72;
    (*(v82 + 16))(v72, v81 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v24);
    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v70 = v12;
      v71 = v19;
      v63 = v62;
      v85._countAndFlagsBits = swift_slowAlloc();
      *v63 = 136315394;
      v64 = v56;
      swift_beginAccess();
      v65 = URL.path(percentEncoded:)(1);
      v66 = sub_1000952D4(v65._countAndFlagsBits, v65._object, &v85._countAndFlagsBits);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      swift_getErrorValue();
      v67 = Error.localizedDescription.getter();
      v69 = sub_1000952D4(v67, v68, &v85._countAndFlagsBits);

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unable to create file storage directory %s: %s", v63, 0x16u);
      swift_arrayDestroy();

      (*(v58 + 8))(v72, v83);
      (v13[1])(v64, v70);
    }

    else
    {

      (*(v58 + 8))(v59, v83);
      (v13[1])(v56, v12);
    }

    return 0;
  }

  v33 = v86;
LABEL_5:
  v71 = v19;
  v72 = v13;
  v70 = v12;
  v34 = URL.path(percentEncoded:)(1);
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v86 = 0x6574616470557766;
  v87 = 0xE90000000000005FLL;
  v35 = v73;
  Date.init()();
  v36 = Date.description.getter();
  v38 = v37;
  (*(v74 + 8))(v35, v75);
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 95;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  v41 = v76;
  UUID.init()();
  sub_1001519DC(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v42 = v78;
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  (*(v77 + 8))(v41, v42);
  String.append(_:)(v79);
  v85 = v34;
  v85._countAndFlagsBits = String.init<A>(_:)();
  v85._object = v44;
  String.append<A>(contentsOf:)();

  countAndFlagsBits = v85._countAndFlagsBits;
  object = v85._object;
  v47 = v82;
  v48 = v80;
  (*(v82 + 16))(v80, v81 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v24);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v18;
    v53 = v24;
    v54 = swift_slowAlloc();
    v86 = v54;
    *v51 = 136315138;
    *(v51 + 4) = sub_1000952D4(countAndFlagsBits, object, &v86);
    _os_log_impl(&_mh_execute_header, v49, v50, "packet capture file at %s", v51, 0xCu);
    sub_100095808(v54);

    (*(v47 + 8))(v48, v53);
    (*(v72 + 1))(v52, v70);
  }

  else
  {

    (*(v47 + 8))(v48, v24);
    (*(v72 + 1))(v18, v70);
  }

  return countAndFlagsBits;
}

id sub_100151330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryFirmwareUpdateManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateManager(uint64_t a1)
{
  result = qword_1002A9A60;
  if (!qword_1002A9A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100151478(uint64_t a1, uint64_t a2)
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

Swift::Int sub_10015154C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100095274(&unk_1002A9A70, &unk_100240120);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for DaemonAccessory(0);
      do
      {
        swift_dynamicCast();
        sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1001E5CF4(v10 + 1, 1);
        }

        v2 = v17;
        Hasher.init(_seed:)();
        v3 = *(v16 + 24);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v5 = v17 + 64;
        v6 = -1 << *(v17 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v17 + 48) + 8 * v9) = v16;
        *(*(v17 + 56) + 8 * v9) = v15;
        ++*(v17 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_1001517A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100095274(&qword_1002A9A80, &unk_10023E950);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100095B94(0, &qword_1002A9A88, NSUUID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for AccessoryFirmwareUpdateSession(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1001E5F94(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1001519DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100151A24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100151A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_10014EF0C(a1, v4, v5, v6);
}

uint64_t sub_100151B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A7380, &qword_10023E970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100151B88()
{
  type metadata accessor for FileSystem(0);
  v0 = swift_allocObject();
  Logger.init(subsystem:category:)();
  v1 = OBJC_IVAR____TtC14dockaccessoryd10FileSystem_cachePath;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_libraryPath, 1, 1, v2);
  result = [objc_opt_self() defaultManager];
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system) = result;
  qword_1002B1C20 = v0;
  return result;
}

id sub_100151CB0()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v21[-v10 - 8];
  v20 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
  v12 = [v20 URLsForDirectory:5 inDomains:1];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v13 + 16))
  {
    (*(v6 + 16))(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    (*(v6 + 32))(v11, v9, v5);
    strcpy(v21, "dockaccessoryd");
    v21[15] = -18;
    (*(v2 + 104))(v4, enum case for URL.DirectoryHint.isDirectory(_:), v1);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v2 + 8))(v4, v1);
    v21[0] = 0;
    URL.path(percentEncoded:)(1);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v20 fileExistsAtPath:v14 isDirectory:v21];

    (*(v6 + 8))(v11, v5);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to locate Library directory!", v18, 2u);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_100152034@<X0>(uint64_t a1@<X8>)
{

  return sub_10015210C(&OBJC_IVAR____TtC14dockaccessoryd10FileSystem_libraryPath, 5, "Unable to locate Library directory!", a1);
}

uint64_t sub_1001520A0@<X0>(uint64_t a1@<X8>)
{

  return sub_10015210C(&OBJC_IVAR____TtC14dockaccessoryd10FileSystem_cachePath, 13, "Unable to locate Caches directory!", a1);
}

uint64_t sub_10015210C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v65 = a2;
  v63 = type metadata accessor for URL.DirectoryHint();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v56 - v13;
  v14 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v15 = __chkstk_darwin(v14 - 8);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = *a1;
  swift_beginAccess();
  sub_1000E48A4(v4 + v19, v18);
  v66 = v9;
  LODWORD(a1) = (*(v9 + 48))(v18, 1, v8);
  sub_100095C84(v18, &qword_1002A6B70, &unk_10023C9C0);
  if (a1 != 1)
  {
    return sub_1000E48A4(v4 + v19, a4);
  }

  v57 = v19;
  v58 = a4;
  v20 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
  v21 = [v20 URLsForDirectory:v65 inDomains:1];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v22 + 16))
  {
    v65 = v4;
    v23 = v8;
    v24 = v66;
    v25 = *(v66 + 16);
    v25(v12, v22 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v23);

    v26 = v64;
    (*(v24 + 32))(v64, v12, v23);
    strcpy(v68, "dockaccessoryd");
    HIBYTE(v68[1]) = -18;
    v27 = v62;
    v28 = v61;
    v29 = v63;
    (*(v62 + 104))(v61, enum case for URL.DirectoryHint.isDirectory(_:), v63);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v27 + 8))(v28, v29);
    v67 = 0;
    URL.path(percentEncoded:)(1);
    v30 = String._bridgeToObjectiveC()();

    LOBYTE(v29) = [v20 fileExistsAtPath:v30 isDirectory:&v67];

    if (v29)
    {
LABEL_6:
      v41 = v60;
      v25(v60, v26, v23);
      (*(v24 + 56))(v41, 0, 1, v23);
      v4 = v65;
      v19 = v57;
      swift_beginAccess();
      sub_1000E4914(v41, v4 + v19);
      swift_endAccess();
      (*(v24 + 8))(v26, v23);
      a4 = v58;
      return sub_1000E48A4(v4 + v19, a4);
    }

    v31 = v23;
    sub_100095274(&qword_1002A7B20, &unk_10023E940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10023C170;
    *(inited + 32) = NSFilePosixPermissions;
    *(inited + 40) = 448;
    v33 = NSFilePosixPermissions;
    v34 = sub_1001F237C(inited);
    swift_setDeallocating();
    sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    sub_1001DAF74(v34);

    type metadata accessor for FileAttributeKey(0);
    sub_100152B9C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v68[0] = 0;
    v39 = [v20 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:isa error:v68];

    if (v39)
    {
      v40 = v68[0];
      v23 = v31;
      goto LABEL_6;
    }

    v46 = v68[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v49 = 136315394;
      swift_beginAccess();
      v50 = URL.path(percentEncoded:)(1);
      v51 = sub_1000952D4(v50._countAndFlagsBits, v50._object, &v69);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      swift_getErrorValue();
      v52 = Error.localizedDescription.getter();
      v54 = sub_1000952D4(v52, v53, &v69);

      *(v49 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to create file storage directory %s: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v55 = v66;
    (*(v66 + 56))(v58, 1, 1, v31);
    return (*(v55 + 8))(v26, v31);
  }

  else
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, v59, v45, 2u);
    }

    return (*(v66 + 56))(v58, 1, 1, v8);
  }
}

uint64_t sub_100152978(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd10FileSystem_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_100095C84(v2 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_cachePath, &qword_1002A6B70, &unk_10023C9C0);
  sub_100095C84(v2 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_libraryPath, &qword_1002A6B70, &unk_10023C9C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileSystem(uint64_t a1)
{
  result = qword_1002A9AD0;
  if (!qword_1002A9AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100152AC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    sub_1000DE918(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100152B9C()
{
  result = qword_1002A6D80;
  if (!qword_1002A6D80)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6D80);
  }

  return result;
}

uint64_t sub_100152BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v35 - v8;
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v35 - v17;
  UUID.init(uuidString:)();
  result = (*(v13 + 48))(v18, 1, v12);
  if (result == 1)
  {
    goto LABEL_17;
  }

  v20 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
  v21 = DockCoreInfo.init(type:name:identifier:)();
  DockCoreInfo.identifier.getter();

  v22 = objc_allocWithZone(type metadata accessor for AccessoryDescriptionParser(0));
  v23 = sub_1001E2F8C(v15);
  sub_1001E31B4(0xD0000000000002EDLL, 0x8000000100232F60);
  v25 = v24;

  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
  }

LABEL_4:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v26 = *(v25 + 32);
LABEL_7:
  v37 = v26;

  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v36 = *(v5 + 16);
  v36(v11, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "adding debug mock", v30, 2u);
  }

  v31 = *(v5 + 8);
  v31(v11, v4);

  v36(v9, v3 + v27, v4);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed retrieving mock accessory", v34, 2u);
  }

  return (v31)(v9, v4);
}

uint64_t sub_10015319C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1001AC908(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1001AC8A4(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_1000A0D2C(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100153394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10023C170;
  *(v6 + 56) = &type metadata for UInt32;
  *(v6 + 64) = &protocol witness table for UInt32;
  *(v6 + 32) = v4;
  String.init(format:_:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 UUIDWithString:v7];

  *a3 = v8;
}

id sub_100153470(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v81 = &v72 - v12;
  __chkstk_darwin(v11);
  v14 = &v72 - v13;
  v15 = *(v7 + 16);
  v82 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v83 = v15;
  v84 = v7 + 16;
  v15(&v72 - v13, v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v6);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Accessory requested setup password.", v18, 2u);
  }

  v21 = *(v7 + 8);
  v20 = v7 + 8;
  v19 = v21;
  result = (v21)(v14, v6);
  if (a2 != 1)
  {
    return result;
  }

  v23 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (!v23)
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    goto LABEL_29;
  }

  if (!a1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v79 = v3;
  v78 = v10;
  v80 = v19;
  v24 = v23;
  result = [a1 identifier];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v76 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v29 = *&v24[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v30 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v77 = v24;
  v31 = *&v24[v30];
  v32 = *(v31 + 16);
  v75 = a1;
  v74 = v20;
  if (!v32)
  {
LABEL_22:
    v44 = v77;
    v45 = *&v77[v76];
    OS_dispatch_semaphore.signal()();

    v88 = 0;
    v86 = 0u;
    v87 = 0u;

    goto LABEL_25;
  }

  v73 = v6;
  v33 = v31 + 32;

  v34 = 0;
  while (1)
  {
    if (v34 >= *(v31 + 16))
    {
      __break(1u);
    }

    sub_1000A097C(v33, v85);
    v35 = *(*sub_1000A09E0(v85, v85[3]) + 32);
    if (!v35)
    {
      goto LABEL_10;
    }

    v36 = v35;
    v37 = [v36 identifier];
    if (v37)
    {
      break;
    }

LABEL_9:

LABEL_10:
    ++v34;
    sub_100095808(v85);
    v33 += 40;
    if (v32 == v34)
    {

      a1 = v75;
      v6 = v73;
      goto LABEL_22;
    }
  }

  v38 = v37;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (v39 != v26 || v41 != v28)
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

LABEL_24:

  v46 = v77;
  v47 = *&v77[v76];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v85, &v86);
  sub_100095808(v85);

  a1 = v75;
  v6 = v73;
LABEL_25:
  v3 = v79;
  v19 = v80;
  v10 = v78;
  if (!*(&v87 + 1))
  {
LABEL_29:
    sub_100095C84(&v86, &unk_1002A6F40, &unk_10023BE90);
LABEL_30:
    v83(v10, v3 + v82, v6);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No setup code available for pairing!", v58, 2u);
    }

    result = (v19)(v10, v6);
    if (a1)
    {
      *&v86 = 0;
      v59 = [a1 stopPairingWithError:&v86];
      v60 = v86;
      if (v59)
      {

        return v60;
      }

      else
      {
        v84 = v86;
        v61 = v86;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v48 = v85[0];
  v49 = *(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  v50 = *(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8);
  v52 = *(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 16);
  v51 = *(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24);
  v54 = *(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 32);
  v53 = *(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 40);
  v55 = *(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 48);
  sub_1001693B8(v49, v50, v52, v51, v54, v53, v55, sub_1000A0CD8);
  if (v51 == 2)
  {

    sub_1001693B8(v49, v50, v52, v51, v54, v53, v55, sub_1000A0D2C);
    a1 = v75;
    v19 = v80;
    v10 = v78;
    v3 = v79;
    goto LABEL_30;
  }

  v78 = v48;
  sub_1000A0CD8(v50, v52);
  sub_1001693B8(v49, v50, v52, v51, v54, v53, v55, sub_1000A0D2C);
  v62 = v81;
  v83(v81, v79 + v82, v6);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v75;
  if (v65)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Using setup code from setup payload.", v67, 2u);
  }

  v80(v62, v6);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v86 = 0;
  v69 = [v66 tryPairingPassword:isa error:&v86];

  if (v69)
  {
    v70 = v86;
    sub_1000A0D2C(v50, v52);
  }

  else
  {
    v71 = v86;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000A0D2C(v50, v52);
  }
}

uint64_t sub_100153E88(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v37 = a1;
  v3 = type metadata accessor for DKPairingMetric();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v41 = v2;
  v13(v12, v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Sending pairing metrics...", v16, 2u);
  }

  (*(v10 + 8))(v12, v9);
  v17 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_pairingInterval;
  if (*(v41 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_pairingInterval) > 0.0)
  {
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v18 = qword_1002B1CF0;
  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v20 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v20 + 4);

  v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v22 = *(v18 + v21);
  v23 = *(v18 + v19);

  os_unfair_lock_unlock(v23 + 4);

  v36 = v17;
  if (v22 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();

    if (v34 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v24 = v37;
  if (v35)
  {
    swift_getErrorValue();
    v37 = Error.localizedDescription.getter();
  }

  else
  {
    v37 = 0;
  }

  if (v24)
  {
    v25 = [v24 firmwareVersion];
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v27 = [v24 model];
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v29 = [v24 manufacturer];
    if (v29)
    {
      v30 = v29;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v31 = v36;
  v32 = v38;
  DKPairingMetric.init(activePairings:duration:error:firmwareVersion:hardwareVersion:hardwareMake:)();
  DKPairingMetric.send()();
  result = (*(v39 + 8))(v32, v40);
  *(v41 + v31) = 0xBFF0000000000000;
  return result;
}

void sub_1001543AC(id a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v19 = &v201 - v15;
  if (!a2)
  {
    v46 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
    if (v46)
    {
      v208 = v17;
      v210 = v4;
      if (a1)
      {
        v202 = v9;
        v206 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
        v203 = v16;
        v207 = v10;
        v47 = v46;
        v48 = [a1 identifier];
        if (v48)
        {
          v49 = v48;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v204 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v53 = *&v47[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          OS_dispatch_semaphore.wait()();

          v54 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v205 = v47;
          v55 = *&v47[v54];
          v56 = *(v55 + 16);
          if (v56)
          {
            v209 = a1;
            *&v211 = v11;
            v57 = v55 + 32;

            v58 = 0;
            while (v58 < *(v55 + 16))
            {
              sub_1000A097C(v57, v214);
              v59 = *(*sub_1000A09E0(v214, v214[3]) + 32);
              if (v59)
              {
                v60 = v59;
                v61 = [v60 identifier];
                if (v61)
                {
                  v62 = v61;
                  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v54 = v63;

                  if (v3 == v50 && v54 == v52)
                  {

LABEL_39:

                    v75 = v205;
                    v76 = *(v205 + v204);
                    OS_dispatch_semaphore.signal()();

                    sub_1000A097C(v214, &v215);
                    sub_100095808(v214);

                    v69 = v207;
                    v11 = v211;
                    a1 = v209;
                    goto LABEL_40;
                  }

                  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v65)
                  {
                    goto LABEL_39;
                  }
                }
              }

              ++v58;
              sub_100095808(v214);
              v57 += 40;
              if (v56 == v58)
              {

                v11 = v211;
                a1 = v209;
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

LABEL_33:
          v67 = v205;
          v68 = *(v205 + v204);
          OS_dispatch_semaphore.signal()();

          v217 = 0;
          v216 = 0u;
          v215 = 0u;

          v69 = v207;
LABEL_40:
          v77 = v206;
          if (*(&v216 + 1))
          {
            sub_1000A0D80(&v215, &v218);
            sub_1000A097C(&v218, &v215);
            sub_100095274(&unk_1002A7A90, &unk_10023C960);
            type metadata accessor for DaemonAccessory(0);
            if (swift_dynamicCast())
            {
              *(v214[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 1;

              v78 = v210;
              v79 = *&v77[v210];
              if (!v79)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v80 = *(*sub_1000A09E0(&v218, v219) + 24);
              DockCoreInfo.type.getter();

              v81 = [a1 primaryAccessory];
              if (v81 && (v82 = v81, v83 = [v81 name], v82, v83))
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              else
              {
                v83 = *(*sub_1000A09E0(&v218, v219) + 24);
                DockCoreInfo.name.getter();
              }

              v84 = *(*sub_1000A09E0(&v218, v219) + 24);
              DockCoreInfo.identifier.getter();

              v85 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
              v86 = DockCoreInfo.init(type:name:identifier:)();
              if (qword_1002A6780 != -1)
              {
                swift_once();
              }

              v87 = objc_allocWithZone(type metadata accessor for DockCoreAccessory());
              v88 = v86;
              v89 = DockCoreAccessory.init(info:systems:)();
              v90 = sub_10018F07C(v89, 0);

              v78 = v210;
              v79 = *&v77[v210];
              if (!v79)
              {
                goto LABEL_56;
              }
            }

            v91 = v11;
            v92 = v79;
            v93 = a1;
            v94 = [a1 identifier];
            if (!v94)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            v95 = v94;
            v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v98 = v97;

            v99 = sub_1001F29A8(_swiftEmptyArrayStorage);
            if (*&v92[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
            {
              v92[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 6;
              v100 = *&v92[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
              sub_100156798(v96, v98, 3, v99, 0);
            }

            v11 = v91;
            v78 = v210;
            a1 = v93;
LABEL_56:
            v102 = (v11 + 16);
            v101 = *(v11 + 16);
            v205 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
            v206 = v101;
            (v101)(v208, &v78[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v69);
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              *v105 = 0;
              _os_log_impl(&_mh_execute_header, v103, v104, "Pair key exchange completed.", v105, 2u);
            }

            v107 = *(v11 + 8);
            v106 = v11 + 8;
            v108 = v208;
            v208 = v107;
            v107(v108, v69);
            v109 = v210;
            v110 = *&v77[v210];
            if (!v110)
            {
LABEL_86:
              v144 = *(*sub_1000A09E0(&v218, v219) + 32);
              if (v144)
              {
                objc_opt_self();
                v145 = swift_dynamicCastObjCClass();
                if (v145)
                {
                  v210 = v145;
                  (v206)(v203, &v109[v205], v69);
                  v209 = v144;
                  v146 = Logger.logObject.getter();
                  v147 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v146, v147))
                  {
                    v148 = swift_slowAlloc();
                    *v148 = 0;
                    _os_log_impl(&_mh_execute_header, v146, v147, "Initiating characteristic discovery for newly paired accessory...", v148, 2u);
                  }

                  v208(v203, v69);
                  sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
                  v149 = swift_allocObject();
                  *(v149 + 16) = xmmword_10023E990;
                  v150 = objc_opt_self();
                  sub_100095274(&unk_1002A73A0, &qword_10023C670);
                  v151 = swift_allocObject();
                  v211 = xmmword_10023C170;
                  *(v151 + 16) = xmmword_10023C170;
                  *(v151 + 56) = &type metadata for UInt32;
                  *(v151 + 64) = &protocol witness table for UInt32;
                  *(v151 + 32) = 35;
                  String.init(format:_:)();
                  v152 = String._bridgeToObjectiveC()();

                  v153 = [v150 UUIDWithString:v152];

                  v154 = [v153 UUIDString];
                  v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v157 = v156;

                  *(v149 + 32) = v155;
                  *(v149 + 40) = v157;
                  v158 = swift_allocObject();
                  *(v158 + 16) = v211;
                  *(v158 + 56) = &type metadata for UInt32;
                  *(v158 + 64) = &protocol witness table for UInt32;
                  *(v158 + 32) = 33;
                  String.init(format:_:)();
                  v159 = String._bridgeToObjectiveC()();

                  v160 = [v150 UUIDWithString:v159];

                  v161 = [v160 UUIDString];
                  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v164 = v163;

                  *(v149 + 48) = v162;
                  *(v149 + 56) = v164;
                  v165 = swift_allocObject();
                  *(v165 + 16) = v211;
                  *(v165 + 56) = &type metadata for UInt32;
                  *(v165 + 64) = &protocol witness table for UInt32;
                  *(v165 + 32) = 32;
                  String.init(format:_:)();
                  v166 = String._bridgeToObjectiveC()();

                  v167 = [v150 UUIDWithString:v166];

                  v168 = [v167 UUIDString];
                  v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v171 = v170;

                  *(v149 + 64) = v169;
                  *(v149 + 72) = v171;
                  v172 = swift_allocObject();
                  *(v172 + 16) = v211;
                  *(v172 + 56) = &type metadata for UInt32;
                  *(v172 + 64) = &protocol witness table for UInt32;
                  *(v172 + 32) = 48;
                  String.init(format:_:)();
                  v173 = String._bridgeToObjectiveC()();

                  v174 = [v150 UUIDWithString:v173];

                  v175 = [v174 UUIDString];
                  v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v178 = v177;

                  *(v149 + 80) = v176;
                  *(v149 + 88) = v178;
                  v179 = swift_allocObject();
                  *(v179 + 16) = v211;
                  *(v179 + 56) = &type metadata for UInt32;
                  *(v179 + 64) = &protocol witness table for UInt32;
                  *(v179 + 32) = 82;
                  String.init(format:_:)();
                  v180 = String._bridgeToObjectiveC()();

                  v181 = [v150 UUIDWithString:v180];

                  v182 = [v181 UUIDString];
                  v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v185 = v184;

                  *(v149 + 96) = v183;
                  *(v149 + 104) = v185;
                  v186 = swift_allocObject();
                  *(v186 + 16) = v211;
                  *(v186 + 56) = &type metadata for UInt32;
                  *(v186 + 64) = &protocol witness table for UInt32;
                  *(v186 + 32) = 544;
                  String.init(format:_:)();
                  v187 = String._bridgeToObjectiveC()();

                  v188 = [v150 UUIDWithString:v187];

                  v189 = [v188 UUIDString];
                  v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v192 = v191;

                  *(v149 + 112) = v190;
                  *(v149 + 120) = v192;
                  v193 = swift_allocObject();
                  *(v193 + 16) = v211;
                  *(v193 + 56) = &type metadata for UInt32;
                  *(v193 + 64) = &protocol witness table for UInt32;
                  *(v193 + 32) = 304;
                  String.init(format:_:)();
                  v194 = String._bridgeToObjectiveC()();

                  v195 = [v150 UUIDWithString:v194];

                  v196 = [v195 UUIDString];
                  v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v199 = v198;

                  *(v149 + 128) = v197;
                  *(v149 + 136) = v199;
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v210 discoverAccessoriesAndReadCharacteristicTypes:isa];
                }
              }

              sub_100095808(&v218);
              return;
            }

            v202 = v102;
            v111 = v110;
            v112 = [a1 identifier];
            if (!v112)
            {
LABEL_104:
              __break(1u);
              __break(1u);
LABEL_105:
              __break(1u);
              return;
            }

            v113 = v112;
            v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v3 = v114;

            v115 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
            swift_beginAccess();
            v54 = *&v111[v115];
            v212 = v54;
            *&v211 = v106;
            v201 = v111;
            if (!(v54 >> 62))
            {
              v209 = (v54 & 0xFFFFFFFFFFFFFF8);
              v116 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_62;
            }

LABEL_99:
            v209 = (v54 & 0xFFFFFFFFFFFFFF8);
            v116 = _CocoaArrayWrapper.endIndex.getter();
LABEL_62:

            v117 = v54 & 0xC000000000000001;
            v204 = v54;
            v118 = v54 + 32;
            while (1)
            {
              if (!v116)
              {

                v69 = v207;
                goto LABEL_82;
              }

              if (__OFSUB__(v116--, 1))
              {
                goto LABEL_96;
              }

              if (v117)
              {
                v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v116 & 0x8000000000000000) != 0)
                {
                  goto LABEL_97;
                }

                if (v116 >= *(v209 + 2))
                {
                  goto LABEL_98;
                }

                v120 = *(v118 + 8 * v116);
              }

              v121 = *(v120 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
              v122 = *(v120 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
              sub_1000A0CD8(v121, v122);
              v123 = sub_10014025C(v121, v122);
              v125 = v124;
              sub_1000A0D2C(v121, v122);
              if (v123 == v55 && v125 == v3)
              {
                break;
              }

              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v54)
              {
                goto LABEL_81;
              }
            }

LABEL_81:

            __chkstk_darwin(v141);
            *(&v201 - 2) = &v212;
            v213 = v116;
            sub_100169AE8(&v213, v214);
            v69 = v207;
            v116 = v214[0];
LABEL_82:

            v109 = v210;
            if (v116)
            {
              if (qword_1002A6780 != -1)
              {
                swift_once();
              }

              v142 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
              v143 = sub_1001F29A8(_swiftEmptyArrayStorage);
              sub_100196830(v116 + v142, 3, v143, 0);

              v109 = v210;
            }

            goto LABEL_86;
          }

LABEL_44:
          sub_100095C84(&v215, &unk_1002A6F40, &unk_10023BE90);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v217 = 0;
    v216 = 0u;
    v215 = 0u;
    goto LABEL_44;
  }

  v208 = v18;
  v20 = *(v11 + 16);
  v205 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v207 = v11 + 16;
  v206 = v20;
  (v20)(&v201 - v15, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v10);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v209 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    *&v211 = v11;
    v26 = v10;
    v27 = v25;
    v218 = v25;
    *v24 = 136315138;
    swift_getErrorValue();
    v28 = Error.localizedDescription.getter();
    v30 = sub_1000952D4(v28, v29, &v218);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Error during pair setup: %s", v24, 0xCu);
    sub_100095808(v27);
    v10 = v26;
    v11 = v211;

    a1 = v209;
  }

  v31 = *(v11 + 8);
  v31(v19, v10);
  if (a1)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
      *&v211 = v31;
      if (!v34)
      {
        v66 = a1;
LABEL_29:
        sub_100153E88(0, a2);
        if ([v33 pendingRemovePairing] == 1 || objc_msgSend(v33, "connectReason") == 7)
        {

          return;
        }

        v70 = v4;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v71 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
        v72 = [a1 identifier];
        v218 = 0;
        v73 = [v71 removeAccessoryKeyForName:v72 error:&v218];

        if (v73)
        {
          v74 = v218;

          return;
        }

        v127 = v218;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v128 = v208;
        (v206)(v208, &v70[v205], v10);
        v129 = a1;
        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v130, v131))
        {

          v139 = v128;
          v140 = v10;
          goto LABEL_94;
        }

        v207 = v10;
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v218 = v133;
        *v132 = 136315138;
        v134 = [v129 identifier];

        if (v134)
        {
          v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v137 = v136;

          v138 = sub_1000952D4(v135, v137, &v218);

          *(v132 + 4) = v138;
          _os_log_impl(&_mh_execute_header, v130, v131, "Failed to remove keychain entry for accessory: %s", v132, 0xCu);
          sub_100095808(v133);

          v139 = v208;
          v140 = v207;
LABEL_94:
          (v211)(v139, v140);
          return;
        }

        goto LABEL_105;
      }

      v210 = v4;
      v35 = v10;
      v36 = v34;
      v37 = a1;
      v38 = a1;
      v39 = [v33 identifier];
      if (v39)
      {
        v40 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_1001F29A8(_swiftEmptyArrayStorage);
        if (*&v36[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
        {
          v36[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          v45 = *&v36[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          sub_100156798(v41, v43, 6, v44, a2);
        }

        v10 = v35;
        v4 = v210;
        a1 = v37;
        goto LABEL_29;
      }

      goto LABEL_102;
    }
  }
}

void sub_100155BC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  if (a1)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v47 = v2;
      v13 = a1;
      v14 = [v12 primaryAccessory];
      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = v14;
      v45 = v12;
      v46 = v13;
      v16 = objc_opt_self();
      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v17 = swift_allocObject();
      v43 = xmmword_10023C170;
      *(v17 + 16) = xmmword_10023C170;
      *(v17 + 56) = &type metadata for UInt32;
      *(v17 + 64) = &protocol witness table for UInt32;
      *(v17 + 32) = 21;
      String.init(format:_:)();
      v18 = String._bridgeToObjectiveC()();

      v44 = v16;
      v19 = [v16 UUIDWithString:v18];

      v20 = [v19 UUIDString];
      if (!v20)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = String._bridgeToObjectiveC()();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = v43;
      *(v21 + 56) = &type metadata for UInt32;
      *(v21 + 64) = &protocol witness table for UInt32;
      *(v21 + 32) = 16;
      String.init(format:_:)();
      v22 = String._bridgeToObjectiveC()();

      v23 = [v44 UUIDWithString:v22];

      v24 = [v23 UUIDString];
      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v25 = [v15 characteristicOfType:v20 serviceType:v24];

      v26 = v45;
      v13 = v46;
      if (v25)
      {
        v27 = v47;
        (*(v5 + 16))(v10, &v47[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v4);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Reading Pairing State Number...", v30, 2u);
        }

        (*(v5 + 8))(v10, v4);
        sub_100095274(&qword_1002A7390, &qword_10023BEF0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_10023BDA0;
        *(v31 + 32) = v25;
        sub_100095B94(0, &qword_1002A92F0, off_100271C60);
        v32 = v25;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v34 = *&v27[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue];
        v35 = swift_allocObject();
        *(v35 + 16) = v27;
        *(v35 + 24) = v26;
        aBlock[4] = sub_100169474;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001A37EC;
        aBlock[3] = &unk_100279408;
        v36 = _Block_copy(aBlock);
        v37 = v13;
        v38 = v34;
        v39 = v27;

        [v26 readCharacteristicValues:isa timeout:v38 completionQueue:v36 completionHandler:10.0];

        _Block_release(v36);
      }

      else
      {
LABEL_12:
        (*(v5 + 16))(v8, &v47[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v4);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "Accessory does not contain a Pairing State Number characteristic!", v42, 2u);
        }

        else
        {
        }

        (*(v5 + 8))(v8, v4);
      }
    }
  }
}

void sub_1001561C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v46 - v14;
  __chkstk_darwin(v13);
  v18 = &v46 - v16;
  if (a2)
  {
    (*(v9 + 16))(&v46 - v16, a3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v60[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1000952D4(v23, v24, v60);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error reading Pairing State Number characteristic: %s", v21, 0xCu);
      sub_100095808(v22);
    }

    (*(v9 + 8))(v18, v8);
  }

  else
  {
    v55 = a4;
    v56 = v8;
    if (a1)
    {
      v47 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        v54 = a3;
        if (!v26)
        {
          return;
        }
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v54 = a3;
        if (!v26)
        {
          return;
        }
      }

      v27 = 0;
      v52 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
      v53 = a1 & 0xC000000000000001;
      v50 = (v9 + 8);
      v51 = (v9 + 16);
      *&v17 = 33554688;
      v48 = v17;
      v49 = a1;
      while (1)
      {
        if (v53)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a3 = v54;
          a1 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          a3 = v54;
          if (v27 >= *(v47 + 16))
          {
            goto LABEL_35;
          }

          v28 = *(a1 + 8 * v27 + 32);
          a1 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }
        }

        if ([v28 value])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = 0u;
          v59 = 0u;
        }

        v60[0] = v58;
        v60[1] = v59;
        if (!*(&v59 + 1))
        {

          sub_100095C84(v60, &qword_1002A9210, &unk_10023BE70);
          return;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v9 = v57;
        v29 = a3 + v52;
        v30 = v56;
        (*v51)(v12, v29, v56);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = v48;
          *(v33 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v31, v32, "Updating Pairing State Number to %hu", v33, 6u);
        }

        (*v50)(v12, v30);
        v34 = v55;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v35 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
        v36 = [v34 identifier];
        if (!v36)
        {
          break;
        }

        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        sub_100172148(v9, v38, v40);

        ++v27;
        v41 = a1 == v26;
        a1 = v49;
        if (v41)
        {
          return;
        }
      }

      __break(1u);
    }

    else
    {
      v42 = v56;
      (*(v9 + 16))(v15, a3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v56);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Error reading Pairing State Number characteristic: no results returned!", v45, 2u);
      }

      (*(v9 + 8))(v15, v42);
    }
  }
}

uint64_t sub_100156798(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v88 = a3;
  v11 = type metadata accessor for Logger();
  v12 = __chkstk_darwin(v11);
  v13 = __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v77 - v17;
  v89 = v19;
  v90 = a2;
  v20 = *(v19 + 16);
  v91 = a1;
  v86 = v21;
  v87 = v16;
  v82 = a4;
  v85 = v19 + 16;
  v84 = v20;
  v22 = v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  if (a5)
  {
    v20(&v77 - v17, v22, v11);

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v25 = 136315650;
      *(v25 + 4) = sub_1000952D4(v91, a2, v95);
      *(v25 + 12) = 2048;
      *(v25 + 14) = PairingRequestState.rawValue.getter();
      *(v25 + 22) = 2080;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = sub_1000952D4(v26, v27, v95);

      *(v25 + 24) = v28;
      a2 = v90;
      _os_log_impl(&_mh_execute_header, v23, v24, "Attempting to update prox card for %s with status %ld due to error: %s", v25, 0x20u);
      swift_arrayDestroy();

      a1 = v91;
    }

    v29 = *(v89 + 8);
    v30 = v18;
  }

  else
  {
    v20(v15, v22, v11);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v95[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1000952D4(a1, a2, v95);
      *(v33 + 12) = 2048;
      *(v33 + 14) = PairingRequestState.rawValue.getter();
      _os_log_impl(&_mh_execute_header, v31, v32, "Attempting to update prox card for %s with status %ld", v33, 0x16u);
      sub_100095808(v34);
    }

    v29 = *(v89 + 8);
    v30 = v15;
  }

  v83 = v29;
  v29(v30, v11);
  v81 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v35 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v35)
  {
    v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    swift_beginAccess();
    v37 = *(v35 + v36);
    v92 = v37;
    v79 = v6;
    v78 = a5;
    v38 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v37 >> 62)
    {
LABEL_51:
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v37 & 0xC000000000000001;
    v41 = v37 + 32;

    v77 = v35;
    v80 = v37;

    while (1)
    {
      if (!v39)
      {

        v6 = v79;
        v50 = v78;
        v51 = v88;
        goto LABEL_28;
      }

      if (__OFSUB__(v39--, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v40)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v39 >= *(v38 + 16))
        {
          goto LABEL_50;
        }

        v37 = *(v41 + 8 * v39);
      }

      v43 = *(v37 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
      v44 = *(v37 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
      sub_1000A0CD8(v43, v44);
      v45 = sub_10014025C(v43, v44);
      v47 = v46;
      sub_1000A0D2C(v43, v44);
      v48 = v45;
      a2 = v90;
      a1 = v91;
      if (v48 == v91 && v47 == v90)
      {
        break;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        goto LABEL_27;
      }
    }

LABEL_27:

    __chkstk_darwin(v52);
    *(&v77 - 2) = &v92;
    v93 = v39;
    sub_100147978(&v93, v94);
    v6 = v79;
    v50 = v78;
    v51 = v88;
    v39 = v94[0];
LABEL_28:

    if (v39)
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      sub_100196830(v39 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id, v51, v82, v50);
      v53 = PairingRequestState.rawValue.getter();
      if (v53 != PairingRequestState.rawValue.getter())
      {
        v54 = PairingRequestState.rawValue.getter();
        if (v54 != PairingRequestState.rawValue.getter())
        {
          goto LABEL_37;
        }
      }

      v55 = *(v6 + v81);
      if (!v55)
      {
        goto LABEL_37;
      }

      v56 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
      swift_beginAccess();

      v57 = v55;
      v58 = sub_100162AE0(&v55[v56], a1, a2);

      v59 = *&v55[v56];
      if (v59 >> 62)
      {
        v60 = _CocoaArrayWrapper.endIndex.getter();
        if (v60 >= v58)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v60 >= v58)
        {
LABEL_36:
          sub_1001A11BC(v58, v60);
          swift_endAccess();

LABEL_37:
          v61 = PairingRequestState.rawValue.getter();
          if (v61 == PairingRequestState.rawValue.getter())
          {
            sub_100153E88(0, v50);
            v62 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth;
            v63 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth);
            if (v63)
            {
              v64 = *(v63 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
              v94[0] = 0;
              if ([v64 stopPairingWithError:v94])
              {
                v65 = v94[0];
              }

              else
              {
                v76 = v94[0];
                _convertNSErrorToError(_:)();

                swift_willThrow();
              }

              *(v6 + v62) = 0;
            }
          }
        }
      }

      __break(1u);
    }
  }

  v67 = v86;
  v66 = v87;
  v84(v86, v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v87);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v94[0] = v71;
    *v70 = 136315138;
    *(v70 + 4) = sub_1000952D4(a1, a2, v94);
    _os_log_impl(&_mh_execute_header, v68, v69, "Cannot find token for accessory %s", v70, 0xCu);
    sub_100095808(v71);
  }

  v83(v67, v66);
  v72 = type metadata accessor for Errors();
  sub_10016947C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  v73 = swift_allocError();
  *v74 = 0xD00000000000001FLL;
  v74[1] = 0x8000000100233710;
  (*(*(v72 - 8) + 104))(v74, enum case for Errors.PairingError(_:), v72);
  sub_100153E88(0, v73);
}

uint64_t sub_1001571A0(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v69 = a2;
  v70 = a1;
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v3 - 8);
  v68 = &v65 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v65 - v9;
  v11 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v12 = *(v6 + 16);
  v12(&v65 - v9, &v2[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Finished discovery of accessory.  Device successfully paired!", v15, 2u);
  }

  v16 = *(v6 + 8);
  v16(v10, v5);
  v17 = &v2[v11];
  v18 = v2;
  v19 = v71;
  v12(v71, v17, v5);
  v20 = v69;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v69 = v16;
    v67 = v5;
    v23 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v72 = v66;
    *v23 = 136316162;
    v24 = [v20 name];
    if (v24)
    {
      v25 = v24;
      v26 = v22;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v26 = v22;
      v29 = 0xE300000000000000;
      v27 = 4144959;
    }

    v32 = sub_1000952D4(v27, v29, &v72);

    *(v23 + 4) = v32;
    *(v23 + 12) = 2080;
    v33 = [v20 manufacturer];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 4144959;
    }

    v38 = sub_1000952D4(v35, v37, &v72);

    *(v23 + 14) = v38;
    *(v23 + 22) = 2080;
    v39 = [v20 model];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v43 = 0xE300000000000000;
      v41 = 4144959;
    }

    v44 = sub_1000952D4(v41, v43, &v72);

    *(v23 + 24) = v44;
    *(v23 + 32) = 2080;
    v45 = [v20 serialNumber];
    if (v45)
    {
      v46 = v45;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 4144959;
    }

    v50 = 4144959;
    v51 = sub_1000952D4(v47, v49, &v72);

    *(v23 + 34) = v51;
    *(v23 + 42) = 2080;
    v52 = [v20 firmwareVersion];
    if (v52)
    {
      v53 = v52;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {
      v55 = 0xE300000000000000;
    }

    v31 = v70;
    v56 = sub_1000952D4(v50, v55, &v72);

    *(v23 + 44) = v56;
    _os_log_impl(&_mh_execute_header, v21, v26, "Accessory [name: %s, manufacturer: %s, model: %s, serial number: %s, firmware version: %s]", v23, 0x34u);
    swift_arrayDestroy();

    result = (v69)(v71, v67);
  }

  else
  {

    result = (v16)(v19, v5);
    v31 = v70;
  }

  *(v31 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 2;
  v57 = *(v31 + 32);
  if (v57)
  {
    v58 = v57;
    sub_100155BC0(v57, v59);

    v60 = type metadata accessor for TaskPriority();
    v61 = v68;
    (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v31;
    v62[5] = v18;
    v62[6] = v20;
    v63 = v20;

    v64 = v18;
    sub_1001B6410(0, 0, v61, &unk_10023EA10, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100157798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v6[14] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[21] = v8;
  *v8 = v6;
  v8[1] = sub_1001578EC;

  return sub_1000FAC78();
}

uint64_t sub_1001578EC()
{

  return (_swift_task_switch)(sub_1001579E8, 0, 0);
}

uint64_t sub_1001579E8()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController;
  [*(v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController) deRegisterFromNotifications];
  [*(v1 + v2) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  sub_1000A470C();
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_100157AB8;

  return sub_1000FA6C8(v4, v5);
}

uint64_t sub_100157AB8()
{

  return (_swift_task_switch)(sub_100157BB4, 0, 0);
}

uint64_t sub_100157BB4()
{
  v1 = v0[12];
  sub_1001A761C(1);
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_100157CAC;
  v8 = v0[10];

  return sub_10015B0F4(v8, v4, v6, 1);
}

uint64_t sub_100157CAC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100158CD8;
  }

  else
  {

    v2 = sub_100157DC8;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

id sub_100157DC8()
{
  v173 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 80);
  sub_1000F9E38(0);
  v3 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  *v3 = v4;
  v3[1] = v5;

  sub_1000F9E44(0, v6);
  v7 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  *v7 = v8;
  v7[1] = v9;

  sub_1000FA184(0);
  v10 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  *v10 = v11;
  v10[1] = v12;

  sub_1000FA384(0);
  v13 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  *v13 = v14;
  v13[1] = v15;

  if (qword_1002A6780 != -1)
  {
LABEL_67:
    swift_once();
  }

  v16 = *(v0 + 96);
  v17 = *(v0 + 80);
  v18 = qword_1002B1CF0;
  v19 = *(v17 + 24);
  v20 = [v16 firmwareVersion];
  if (v20)
  {
    v21 = v20;
    v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v159 = 0;
    v23 = 0;
  }

  v158 = v18;
  v24 = [*(v0 + 96) serialNumber];
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v169 = v27;
  v28 = [*(v0 + 96) model];
  v164 = v19;
  v149 = v17;
  v155 = v1;
  v162 = v23;
  if (v28)
  {
    v29 = v28;
    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v166 = v30;
  }

  else
  {
    v156 = 0;
    v166 = 0;
  }

  v31 = *(v0 + 88);
  v32 = *(v0 + 80) + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload;
  v34 = *v32;
  v33 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 32);
  v37 = *(v32 + 40);
  v38 = *(v32 + 48);
  v39 = *(v32 + 26) << 16;
  v40 = *(v32 + 24);
  sub_1001693B8(*v32, v33, v35, *(v32 + 24), v36, v37, v38, sub_1000A0CD8);
  sub_1001693B8(v34, v33, v35, v40 | v39, v36, v37, v38, sub_1000A0D2C);
  v41 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v154 = v31;
  v43 = v162;
  v42 = v164;
  if (*(v31 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager))
  {
    v44 = v158;
    v45 = v166;
    v46 = v169;
  }

  else
  {
    v45 = v166;
    v46 = v169;
    v44 = v158;
  }

  v47 = sub_1001884E4(v164);
  if (v47)
  {
    v48 = v47;
    v153 = v41;
    v147 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v148 = *(*(v0 + 128) + 16);
    v148(*(v0 + 160), v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 120));

    v49 = v164;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 128);
    v150 = *(v0 + 120);
    v151 = *(v0 + 160);
    if (v52)
    {
      v54 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v172[0] = swift_slowAlloc();
      *v54 = 138412802;
      *(v54 + 4) = v49;
      *v146 = v49;
      *(v54 + 12) = 2080;
      *(v0 + 40) = v159;
      *(v0 + 48) = v162;
      v55 = v49;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v56 = String.init<A>(describing:)();
      v58 = sub_1000952D4(v56, v57, v172);

      *(v54 + 14) = v58;
      v43 = v162;
      v45 = v166;
      *(v54 + 22) = 2080;
      *(v0 + 56) = v156;
      *(v0 + 64) = v166;

      v59 = String.init<A>(describing:)();
      v61 = sub_1000952D4(v59, v60, v172);

      *(v54 + 24) = v61;
      v42 = v164;
      _os_log_impl(&_mh_execute_header, v50, v51, "Updating accessory information for %@: firmware %s, model %s", v54, 0x20u);
      sub_100095C84(v146, &unk_1002A6F60, &unk_10023C4E0);

      swift_arrayDestroy();

      v46 = v169;
    }

    v62 = v151;
    v152 = *(v53 + 8);
    v152(v62, v150);
    v41 = v153;
    if (!v43)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v46)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v45)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    v1 = v155;
    sub_10018F7CC(v48, v63);
    if (v155)
    {
      v148(*(v0 + 152), v158 + v147, *(v0 + 120));
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 152);
      v160 = *(v0 + 120);
      if (v66)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v172[0] = v69;
        *v68 = 136315138;
        swift_getErrorValue();
        v70 = Error.localizedDescription.getter();
        v72 = sub_1000952D4(v70, v71, v172);

        *(v68 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v64, v65, "Unable to update dock accessory: %s", v68, 0xCu);
        sub_100095808(v69);
        v42 = v164;

        v41 = v153;
      }

      else
      {
      }

      v152(v67, v160);

      v1 = 0;
    }

    else
    {
    }
  }

  else
  {

    v1 = v155;
  }

  v73 = *(v0 + 96);

  result = sub_100153E88(v73, 0);
  v75 = *(v154 + v41);
  if (!v75)
  {
    goto LABEL_36;
  }

  v76 = *(*(v0 + 80) + 32);
  if (!v76)
  {
    __break(1u);
    goto LABEL_69;
  }

  v77 = v75;
  result = [v76 identifier];
  if (!result)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v78 = result;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = sub_1001F29A8(_swiftEmptyArrayStorage);
  if (*&v77[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
  {
    v77[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
    v83 = *&v77[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    sub_100156798(v79, v81, 4, v82, 0);
  }

LABEL_36:
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v163 = *(v0 + 112);
  v161 = *(v0 + 104);
  v84 = *(v0 + 80);
  v157 = qword_1002B1EB8;
  v85 = sub_1001D5DDC();

  v86 = sub_100163528(v85, v84);

  v87 = v86 + 64;
  v88 = -1;
  v89 = -1 << *(v86 + 32);
  if (-v89 < 64)
  {
    v88 = ~(-1 << -v89);
  }

  v90 = v88 & *(v86 + 64);
  v91 = (63 - v89) >> 6;
  v165 = v86;

  v92 = 0;
  if (v90)
  {
    while (1)
    {
      v167 = v1;
      v93 = v92;
LABEL_46:
      v94 = *(v0 + 112);
      v170 = *(v0 + 88);
      v95 = __clz(__rbit64(v90)) | (v93 << 6);
      v96 = v0;
      v97 = *(v165 + 56);
      v98 = (*(v165 + 48) + 16 * v95);
      v99 = *v98;
      v100 = v98[1];
      v101 = v97 + *(*(type metadata accessor for BTDiscoveredDevice(0) - 8) + 72) * v95;
      v0 = v96;
      sub_1000E40C4(v101, v94 + *(v161 + 48));
      *v94 = v99;
      *(v163 + 8) = v100;

      v1 = v167;
      sub_100159CF8(v94, v170);
      if (v167)
      {
        break;
      }

      v90 &= v90 - 1;
      sub_100095C84(*(v0 + 112), &qword_1002A98D0, &unk_10023FFF0);
      v92 = v93;
      if (!v90)
      {
        goto LABEL_42;
      }
    }

    v145 = *(v0 + 112);

    return sub_100095C84(v145, &qword_1002A98D0, &unk_10023FFF0);
  }

  else
  {
    while (1)
    {
LABEL_42:
      v93 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        __break(1u);
        goto LABEL_67;
      }

      if (v93 >= v91)
      {
        break;
      }

      v90 = *(v87 + 8 * v93);
      ++v92;
      if (v90)
      {
        v167 = v1;
        goto LABEL_46;
      }
    }

    v102 = *(v0 + 80);

    v103 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
    v104 = *(*(v158 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
    v105 = *(v102 + 16);
    if (v105 && (v106 = *&v105[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
    {
      v107 = v104;
      v108 = v105;
      if ([v106 state] == 2)
      {
        v168 = v108;
        v171 = v104;
        (*(*(v0 + 128) + 16))(*(v0 + 144), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 120));

        v109 = v107;
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *v112 = 138412546;
          v114 = *(v149 + 24);
          *(v112 + 4) = v114;
          *v113 = v114;
          *(v112 + 12) = 2048;
          *(v112 + 14) = 0x404E000000000000;
          v115 = v114;
          _os_log_impl(&_mh_execute_header, v110, v111, "Setting accessory reachable %@ after %f secs", v112, 0x16u);
          sub_100095C84(v113, &unk_1002A6F60, &unk_10023C4E0);
        }

        v116 = *(v0 + 144);
        v117 = v0;
        v118 = *(v0 + 128);
        v119 = *(v117 + 120);
        v120 = v117;
        v121 = *(v117 + 80);

        (*(v118 + 8))(v116, v119);
        type metadata accessor for DockCoreManager();
        v122 = static DockCoreManager.localFirmwarePath.getter();
        v124 = v123;
        v125 = *(v121 + 40);
        v126 = swift_allocObject();
        *(v126 + 16) = v109;
        *(v126 + 24) = v121;
        *(v126 + 32) = 1;
        *(v126 + 40) = v122;
        *(v126 + 48) = v124;
        v127 = objc_allocWithZone(type metadata accessor for RepeatingTimer());

        v128 = v109;
        v129 = v125;
        v130 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

        v131 = *&v128[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
        *&v128[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v130;

        v104 = v171;
      }

      else
      {
        v120 = v0;
      }
    }

    else
    {
      v120 = v0;
      v132 = v104;
    }

    v133 = *(v158 + v103);
    v134 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
    v135 = *&v133[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock];
    v136 = v133;

    os_unfair_lock_lock(v135 + 4);

    *&v136[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;

    v137 = *&v133[v134];

    os_unfair_lock_unlock(v137 + 4);

    v138 = *(v102 + 16);
    if (v138)
    {
      v139 = v120;
      if (*&v138[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
      {
        v140 = swift_allocObject();
        *(v140 + 16) = v157;
        *(v140 + 24) = v138;
        v141 = v138;
        v142 = v157;
        sub_1001D5444(sub_1000E1618, v140);
      }

      else
      {
        v143 = v138;
      }
    }

    else
    {

      v139 = v120;
    }

    v144 = *(v139 + 8);

    return v144();
  }
}

id sub_100158CD8()
{
  v163 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);

  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accessory Description transfer request failed with %@", v7, 0xCu);
    sub_100095C84(v8, &unk_1002A6F60, &unk_10023C4E0);
  }

  v151 = *(v0 + 200);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 120);

  (*(v11 + 8))(v10, v12);
  v13 = *(v0 + 80);
  sub_1000F9E38(0);
  v14 = (v13 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  *v14 = v15;
  v14[1] = v16;

  sub_1000F9E44(0, v17);
  v18 = (v13 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  *v18 = v19;
  v18[1] = v20;

  sub_1000FA184(0);
  v21 = (v13 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  *v21 = v22;
  v21[1] = v23;

  sub_1000FA384(0);
  v24 = (v13 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  *v24 = v25;
  v24[1] = v26;

  if (qword_1002A6780 != -1)
  {
LABEL_61:
    swift_once();
  }

  v27 = *(v0 + 96);
  v28 = *(v0 + 80);
  v29 = qword_1002B1CF0;
  v30 = *(v28 + 24);
  v31 = [v27 firmwareVersion];
  if (v31)
  {
    v32 = v31;
    v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v149 = 0;
    v34 = 0;
  }

  v35 = [*(v0 + 96) serialNumber];
  if (v35)
  {
    v36 = v35;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v157 = v37;
  }

  else
  {
    v157 = 0;
  }

  v38 = [*(v0 + 96) model];
  v152 = v29;
  v155 = v30;
  v143 = v28;
  v153 = v34;
  if (v38)
  {
    v39 = v38;
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v160 = v40;
  }

  else
  {
    v148 = 0;
    v160 = 0;
  }

  v41 = *(v0 + 88);
  v159 = v0;
  v42 = *(v0 + 80) + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload;
  v44 = *v42;
  v43 = *(v42 + 8);
  v45 = *(v42 + 16);
  v46 = *(v42 + 32);
  v47 = *(v42 + 40);
  v48 = *(v42 + 48);
  v49 = *(v42 + 26) << 16;
  v50 = *(v42 + 24);
  sub_1001693B8(*v42, v43, v45, *(v42 + 24), v46, v47, v48, sub_1000A0CD8);
  sub_1001693B8(v44, v43, v45, v50 | v49, v46, v47, v48, sub_1000A0D2C);
  v51 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v147 = v41;
  v52 = v153;
  v53 = v155;
  v54 = sub_1001884E4(v155);
  if (v54)
  {
    v55 = v54;
    v146 = v51;
    (*(*(v0 + 128) + 16))(*(v0 + 160), v152 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 120));
    v56 = v160;

    v57 = v155;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 128);
    v144 = *(v0 + 120);
    v145 = *(v0 + 160);
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v162[0] = v142;
      *v62 = 138412802;
      *(v62 + 4) = v57;
      *v63 = v57;
      *(v62 + 12) = 2080;
      *(v0 + 40) = v149;
      *(v0 + 48) = v153;
      v64 = v57;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v65 = String.init<A>(describing:)();
      v67 = sub_1000952D4(v65, v66, v162);

      *(v62 + 14) = v67;
      v52 = v153;
      *(v62 + 22) = 2080;
      *(v0 + 56) = v148;
      *(v0 + 64) = v160;

      v68 = String.init<A>(describing:)();
      v70 = sub_1000952D4(v68, v69, v162);

      *(v62 + 24) = v70;
      v53 = v155;
      _os_log_impl(&_mh_execute_header, v58, v59, "Updating accessory information for %@: firmware %s, model %s", v62, 0x20u);
      sub_100095C84(v63, &unk_1002A6F60, &unk_10023C4E0);

      swift_arrayDestroy();

      v56 = v160;
    }

    (*(v61 + 8))(v145, v144);
    if (!v52)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v157)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v56)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    sub_10018F7CC(v55, v71);

    v51 = v146;
  }

  else
  {
  }

  v72 = *(v0 + 96);

  result = sub_100153E88(v72, v151);
  v74 = *(v147 + v51);
  if (!v74)
  {
    goto LABEL_33;
  }

  v75 = *(*(v0 + 80) + 32);
  if (!v75)
  {
    __break(1u);
    goto LABEL_63;
  }

  v76 = v74;
  result = [v75 identifier];
  if (!result)
  {
LABEL_63:
    __break(1u);
    return result;
  }

  v77 = result;
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v81 = sub_1001F29A8(_swiftEmptyArrayStorage);
  if (*&v76[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
  {
    v76[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
    if (v151)
    {
      v82 = 6;
    }

    else
    {
      v82 = 4;
    }

    v83 = *&v76[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    sub_100156798(v78, v80, v82, v81, v151);
  }

LABEL_33:
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v156 = *(v0 + 112);
  v154 = *(v0 + 104);
  v84 = *(v0 + 80);
  v150 = qword_1002B1EB8;
  v85 = sub_1001D5DDC();

  v86 = sub_100163528(v85, v84);

  v87 = v86 + 64;
  v88 = -1;
  v89 = -1 << *(v86 + 32);
  if (-v89 < 64)
  {
    v88 = ~(-1 << -v89);
  }

  v90 = v88 & *(v86 + 64);
  v91 = (63 - v89) >> 6;
  v158 = v86;

  v92 = 0;
  if (v90)
  {
    while (1)
    {
      v93 = v92;
LABEL_42:
      v94 = *(v0 + 112);
      v95 = *(v0 + 88);
      v96 = __clz(__rbit64(v90)) | (v93 << 6);
      v97 = *(v158 + 56);
      v98 = (*(v158 + 48) + 16 * v96);
      v99 = *v98;
      v100 = v98[1];
      v101 = type metadata accessor for BTDiscoveredDevice(0);
      sub_1000E40C4(v97 + *(*(v101 - 8) + 72) * v96, v94 + *(v154 + 48));
      *v94 = v99;
      *(v156 + 8) = v100;
      v0 = v159;

      sub_100159CF8(v94, v95);
      v90 &= v90 - 1;
      sub_100095C84(*(v159 + 112), &qword_1002A98D0, &unk_10023FFF0);
      v92 = v93;
      if (!v90)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v93 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v93 >= v91)
    {
      break;
    }

    v90 = *(v87 + 8 * v93);
    ++v92;
    if (v90)
    {
      goto LABEL_42;
    }
  }

  v102 = *(v0 + 80);

  v103 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
  v104 = *(*(v152 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
  v105 = *(v102 + 16);
  if (v105 && (v106 = *&v105[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
  {
    v107 = v104;
    v108 = v105;
    if ([v106 state] == 2)
    {
      v161 = v108;
      (*(*(v0 + 128) + 16))(*(v0 + 144), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 120));

      v109 = v107;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *v112 = 138412546;
        v114 = *(v143 + 24);
        *(v112 + 4) = v114;
        *v113 = v114;
        *(v112 + 12) = 2048;
        *(v112 + 14) = 0x404E000000000000;
        v115 = v114;
        _os_log_impl(&_mh_execute_header, v110, v111, "Setting accessory reachable %@ after %f secs", v112, 0x16u);
        sub_100095C84(v113, &unk_1002A6F60, &unk_10023C4E0);
      }

      v116 = *(v0 + 144);
      v117 = *(v0 + 120);
      v118 = *(v0 + 128);
      v119 = *(v0 + 80);

      (*(v118 + 8))(v116, v117);
      type metadata accessor for DockCoreManager();
      v120 = static DockCoreManager.localFirmwarePath.getter();
      v122 = v121;
      v123 = *(v119 + 40);
      v124 = swift_allocObject();
      *(v124 + 16) = v109;
      *(v124 + 24) = v119;
      *(v124 + 32) = 1;
      *(v124 + 40) = v120;
      *(v124 + 48) = v122;
      v125 = objc_allocWithZone(type metadata accessor for RepeatingTimer());

      v126 = v109;
      v127 = v123;
      v0 = v159;
      v128 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

      v129 = *&v126[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
      *&v126[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v128;
    }

    else
    {
    }
  }

  else
  {
    v130 = v104;
  }

  v131 = *(v152 + v103);
  v132 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
  v133 = *&v131[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock];
  v134 = v131;

  os_unfair_lock_lock(v133 + 4);

  *&v134[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;

  v135 = *&v131[v132];

  os_unfair_lock_unlock(v135 + 4);

  v136 = *(v102 + 16);
  if (v136)
  {
    if (*&v136[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
    {
      v137 = swift_allocObject();
      *(v137 + 16) = v150;
      *(v137 + 24) = v136;
      v138 = v136;
      v139 = v150;
      sub_1001D5444(sub_1000E1618, v137);
    }

    else
    {
      v140 = v136;
    }
  }

  else
  {
  }

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_100159CF8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  __chkstk_darwin(v5 - 8);
  v38 = v33 - v6;
  v34 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v7 = __chkstk_darwin(v34);
  v9 = (v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = v33 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 16);
  v35 = v17;
  v16(v15, a2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger);
  v36 = a1;
  sub_1000B5150(a1, v11, &qword_1002A98D0, &unk_10023FFF0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37[0] = v21;
    *v20 = 136315138;
    sub_10014775C(v11, v9);
    v33[1] = v2;
    v23 = *v9;
    v22 = v9[1];
    sub_1000E4128(v9 + *(v34 + 48));
    v24 = sub_1000952D4(v23, v22, v37);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Removing discovered device after successful pairing: %s", v20, 0xCu);
    sub_100095808(v21);
  }

  else
  {

    sub_100095C84(v11, &qword_1002A98D0, &unk_10023FFF0);
  }

  (*(v13 + 8))(v15, v35);
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v25 = qword_1002B1EB8;
  v26 = *v36;
  v27 = v36[1];
  v28 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v29 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v29 + 4);

  swift_beginAccess();
  v30 = v38;
  sub_1001E4E78(v26, v27, v38);
  sub_100095C84(v30, &unk_1002A9C20, &qword_10023D210);
  swift_endAccess();
  v31 = *(v25 + v28);

  os_unfair_lock_unlock(v31 + 4);
}

uint64_t sub_10015A0C8(uint64_t a1, uint64_t a2)
{
  v3[15] = a1;
  v3[16] = v2;
  v4 = type metadata accessor for Logger();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for String.Encoding();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();

  return (_swift_task_switch)(sub_10015A21C, 0, 0);
}

uint64_t sub_10015A21C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[15] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v2[24] = v3;
  if (v3)
  {
    type metadata accessor for AccessoryDiagnosticsOptions(0, a2);
    v4 = swift_allocObject();
    v2[25] = v4;
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    *(v4 + 32) = 0;
    *(v4 + 40) = 1;
    *(v4 + 48) = 2;
    *(v4 + 56) = 256;

    v5 = swift_task_alloc();
    v2[26] = v5;
    *v5 = v2;
    v5[1] = sub_10015A464;

    return sub_1000C7C54(v4, v6);
  }

  else
  {
    v8 = type metadata accessor for Errors();
    sub_10016947C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v9 = 0xD00000000000001ALL;
    v9[1] = 0x800000010022F210;
    (*(*(v8 - 8) + 104))(v9, enum case for Errors.NotFound(_:), v8);
    swift_willThrow();

    v10 = v2[1];

    return v10();
  }
}

uint64_t sub_10015A464(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 216) = v2;

  if (v2)
  {
    v7 = sub_10015B038;
  }

  else
  {
    *(v6 + 224) = a2;
    *(v6 + 232) = a1;
    v7 = sub_10015A5C0;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_10015A5C0(uint64_t a1)
{
  v97 = v1;
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v4 = *(v1 + 168);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;

  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {

    goto LABEL_97;
  }

  v8 = *(v1 + 152);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  v11 = *(v1 + 128);
  *(v1 + 104) = v5;
  *(v1 + 112) = v7;
  Logger.init(subsystem:category:)();
  (*(v10 + 16))(v8, v11 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_14;
  }

  v14 = swift_slowAlloc();
  *v14 = 134217984;
  swift_beginAccess();
  v15 = *(v1 + 104);
  v16 = *(v1 + 112);
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    v18 = 0;
    if (v17 != 2)
    {
      goto LABEL_13;
    }

    v20 = v15 + 16;
    v15 = *(v15 + 16);
    v19 = *(v20 + 8);
    v21 = __OFSUB__(v19, v15);
    v18 = v19 - v15;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    v21 = __OFSUB__(HIDWORD(v15), v15);
    v22 = HIDWORD(v15) - v15;
    if (v21)
    {
      goto LABEL_112;
    }

    v18 = v22;
    goto LABEL_13;
  }

  if (v17)
  {
    goto LABEL_11;
  }

  v18 = BYTE6(v16);
LABEL_13:
  *(v14 + 4) = v18;
  _os_log_impl(&_mh_execute_header, v12, v13, "dumping accessory logs of size %ld bytes", v14, 0xCu);

LABEL_14:

  v92 = *(*(v1 + 144) + 8);
  v92(*(v1 + 152), *(v1 + 136));
  swift_beginAccess();
  while (1)
  {
    v23 = *(v1 + 104);
    v24 = *(v1 + 112);
    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 != 2)
      {
        break;
      }

      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      v21 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v21)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v24 >> 62 != 1)
      {
        break;
      }

      LODWORD(v26) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_105;
      }

      v26 = v26;
    }

    if (v26 < 30001)
    {
      break;
    }

    if (v25 == 2)
    {
      v29 = *(v23 + 16);
      v30 = *(v23 + 24);
      sub_1000A0CD8(*(v1 + 104), *(v1 + 112));
      if (v30 < v29)
      {
        goto LABEL_100;
      }

      v31 = *(v23 + 16);
      v32 = *(v23 + 24);
    }

    else
    {
      v29 = v23;
      v30 = v23 >> 32;
      sub_1000A0CD8(*(v1 + 104), *(v1 + 112));
      if (v23 >> 32 < v23)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
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
      }

      v32 = v23 >> 32;
      v31 = v23;
    }

    if (v32 < v30 || v30 < v31)
    {
      goto LABEL_102;
    }

    if (__OFSUB__(v30, v29))
    {
      goto LABEL_103;
    }

    if ((v30 - v29) >> 4 < 0x753)
    {
      if (v25 == 2)
      {
        v33 = *(v23 + 16);
        v34 = *(v23 + 24);
        goto LABEL_43;
      }

      v34 = v23 >> 32;
      goto LABEL_42;
    }

    v34 = v29 + 30000;
    if (__OFADD__(v29, 30000))
    {
      goto LABEL_106;
    }

    if (v25 != 2)
    {
      if (v34 > v23 >> 32 || v34 < v23)
      {
        goto LABEL_107;
      }

LABEL_42:
      v33 = v23;
      goto LABEL_43;
    }

    if (*(v23 + 24) < v34 || v34 < *(v23 + 16))
    {
      goto LABEL_107;
    }

    v33 = *(v23 + 16);
LABEL_43:
    if (v34 < v33)
    {
      goto LABEL_101;
    }

    v35 = Data._Representation.subscript.getter();
    v37 = v36;
    sub_1000A0D2C(v23, v24);
    v38 = *(v1 + 104);
    v39 = *(v1 + 112);
    if ((v39 >> 62) > 1)
    {
      if (v39 >> 62 != 2)
      {
        goto LABEL_113;
      }

      v40 = *(v38 + 24);
    }

    else
    {
      if (v39 >> 62 != 1)
      {
        goto LABEL_113;
      }

      v40 = v38 >> 32;
    }

    sub_1000A0CD8(*(v1 + 104), *(v1 + 112));
    if (v40 < 30000)
    {
      goto LABEL_113;
    }

    v41 = Data._Representation.subscript.getter();
    v43 = v42;
    sub_1000A0D2C(v38, v39);
    *(v1 + 40) = &type metadata for Data;
    *(v1 + 48) = &protocol witness table for Data;
    *(v1 + 16) = v41;
    *(v1 + 24) = v43;
    v44 = sub_1000A09E0((v1 + 16), &type metadata for Data);
    v45 = *v44;
    v46 = v44[1];
    v47 = v46 >> 62;
    if ((v46 >> 62) > 1)
    {
      if (v47 == 2)
      {
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v51 = v50;
          v52 = __DataStorage._offset.getter();
          if (__OFSUB__(v48, v52))
          {
            goto LABEL_110;
          }

          v53 = (v48 - v52 + v51);
          v21 = __OFSUB__(v49, v48);
          v54 = v49 - v48;
          if (v21)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v53 = 0;
          v21 = __OFSUB__(v49, v48);
          v54 = v49 - v48;
          if (v21)
          {
            goto LABEL_109;
          }
        }

        v60 = __DataStorage._length.getter();
        v45 = 0;
        v61 = v60 >= v54 ? v54 : v60;
        v46 = 0xC000000000000000;
        if (v53)
        {
          if (v61)
          {
            if (v61 < 15)
            {
              memset(__dst, 0, sizeof(__dst));
              v96 = v61;
              memcpy(__dst, v53, v61);
              v45 = *__dst;
              v46 = v90 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v96 << 16)) << 32);
              v90 = v46;
              goto LABEL_86;
            }

            goto LABEL_81;
          }
        }
      }
    }

    else
    {
      if (!v47)
      {
        *(v1 + 240) = v45;
        *(v1 + 248) = v46;
        *(v1 + 250) = BYTE2(v46);
        *(v1 + 251) = BYTE3(v46);
        *(v1 + 252) = BYTE4(v46);
        *(v1 + 253) = BYTE5(v46);
        if (BYTE6(v46))
        {
          if (BYTE6(v46) <= 0xEuLL)
          {
            memset(__dst, 0, sizeof(__dst));
            v96 = BYTE6(v46);
            memcpy(__dst, (v1 + 240), BYTE6(v46));
            v45 = *__dst;
            v46 = v93 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v96 << 16)) << 32);
            v93 = v46;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v45 = BYTE6(v46) << 32;
            v46 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
          }
        }

        else
        {
          v45 = 0;
          v46 = 0xC000000000000000;
        }

        goto LABEL_86;
      }

      v55 = (v45 >> 32) - v45;
      if (v45 >> 32 < v45)
      {
        goto LABEL_108;
      }

      v56 = __DataStorage._bytes.getter();
      if (v56)
      {
        v57 = v56;
        v58 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v58))
        {
          goto LABEL_111;
        }

        v59 = (v45 - v58 + v57);
      }

      else
      {
        v59 = 0;
      }

      v62 = __DataStorage._length.getter();
      v45 = 0;
      if (v62 >= v55)
      {
        v61 = v55;
      }

      else
      {
        v61 = v62;
      }

      v46 = 0xC000000000000000;
      if (v59 && v61)
      {
        if (v61 < 15)
        {
          memset(__dst, 0, sizeof(__dst));
          v96 = v61;
          memcpy(__dst, v59, v61);
          v45 = *__dst;
          v46 = v91 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v96 << 16)) << 32);
          v91 = v46;
          goto LABEL_86;
        }

LABEL_81:
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v63 = __DataStorage.init(bytes:length:)();
        v64 = v63;
        if (v61 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v45 = swift_allocObject();
          *(v45 + 16) = 0;
          *(v45 + 24) = v61;
          v46 = v64 | 0x8000000000000000;
        }

        else
        {
          v45 = v61 << 32;
          v46 = v63 | 0x4000000000000000;
        }
      }
    }

LABEL_86:
    sub_100095808((v1 + 16));
    v65 = *(v1 + 104);
    v66 = *(v1 + 112);
    *(v1 + 104) = v45;
    *(v1 + 112) = v46;
    sub_1000A0D2C(v65, v66);
    static String.Encoding.utf8.getter();
    v67 = String.init(data:encoding:)();
    if (v68)
    {
      v69 = v68;
      v70 = v67;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *__dst = v74;
        *v73 = 136446210;
        v75 = sub_1000952D4(v70, v69, __dst);

        *(v73 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v71, v72, "%{public}s", v73, 0xCu);
        sub_100095808(v74);

        sub_1000A0D2C(v35, v37);
      }

      else
      {
        sub_1000A0D2C(v35, v37);
      }
    }

    else
    {
      sub_1000A0D2C(v35, v37);
    }
  }

  sub_1000A0CD8(*(v1 + 104), *(v1 + 112));
  static String.Encoding.utf8.getter();
  v76 = String.init(data:encoding:)();
  v78 = v77;
  sub_1000A0D2C(v23, v24);
  if (v78)
  {

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    v81 = os_log_type_enabled(v79, v80);
    v82 = *(v1 + 160);
    v83 = *(v1 + 136);
    if (v81)
    {
      v84 = swift_slowAlloc();
      v94 = v82;
      v85 = swift_slowAlloc();
      *__dst = v85;
      *v84 = 136446210;
      v86 = sub_1000952D4(v76, v78, __dst);

      *(v84 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v79, v80, "%{public}s", v84, 0xCu);
      sub_100095808(v85);

      v87 = v94;
    }

    else
    {

      v87 = v82;
    }

    v92(v87, v83);
  }

  else
  {
    v92(*(v1 + 160), *(v1 + 136));
  }

  sub_1000A0D2C(*(v1 + 104), *(v1 + 112));
LABEL_97:

  v88 = *(v1 + 8);

  return v88();
}

uint64_t sub_10015B038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015B0F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 328) = a4;
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  v6 = type metadata accessor for CharacterSet();
  *(v5 + 176) = v6;
  *(v5 + 184) = *(v6 - 8);
  *(v5 + 192) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v5 + 200) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 208) = v7;
  *(v5 + 216) = *(v7 - 8);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();

  return (_swift_task_switch)(sub_10015B250, 0, 0);
}

uint64_t sub_10015B250()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager);
  v0[30] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_10015B42C;

    return sub_1000E751C();
  }

  else
  {
    v4 = type metadata accessor for Errors();
    sub_10016947C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v5 = 0xD000000000000024;
    v5[1] = 0x80000001002336E0;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.NotFound(_:), v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10015B42C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  *(v6 + 256) = a2;
  *(v6 + 264) = a3;
  *(v6 + 272) = v3;

  if (v3)
  {
    v7 = sub_10015BED8;
  }

  else
  {
    *(v6 + 329) = a1 & 1;
    v7 = sub_10015B55C;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_10015B55C()
{
  if (*(v0 + 329) != 1 || (*(v0 + 328) & 1) != 0)
  {
    v12 = *(v0 + 144);
    v13 = *(v12 + 24);
    if (*(v0 + 160))
    {
      v14 = v13;

      DockCoreInfo.type.getter();
      v15 = *(v12 + 24);
      DockCoreInfo.identifier.getter();

      v16 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
      v17 = DockCoreInfo.init(type:name:identifier:)();
    }

    else
    {
      v17 = v13;
    }

    *(v0 + 280) = v17;
    v20 = swift_task_alloc();
    *(v0 + 288) = v20;
    *v20 = v0;
    v20[1] = sub_10015B7E0;

    return sub_1000E871C();
  }

  else
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = *(v0 + 168);

    (*(v3 + 16))(v1, v4 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 232);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Accessory description hash matched, no need to read description", v11, 2u);
    }

    else
    {
    }

    (*(v10 + 8))(v8, v9);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10015B7E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {

    v5 = sub_10015BF68;
  }

  else
  {
    v5 = sub_10015B900;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_10015B900(uint64_t a1)
{
  v2 = *(v1 + 304);
  v3 = *(v1 + 312);
  v4 = *(v1 + 296);
  v5 = *(v1 + 200);
  v6 = *(v1 + 168);
  DockCoreInfo.identifier.getter();
  v7 = objc_allocWithZone(type metadata accessor for AccessoryDescriptionParser(0));
  v8 = sub_1001E2F8C(v5);
  v9 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser;
  v10 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser);
  *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser) = v8;

  sub_1000A0CD8(v4, v2);
  v11 = sub_10016282C(v4, v2);
  v13 = v12;
  v14 = *(v1 + 296);
  v15 = *(v1 + 304);
  if (!v13)
  {
    *(v1 + 96) = v14;
    *(v1 + 104) = v15;
    sub_1000A0CD8(v14, v15);
    sub_100095274(&unk_1002A9C00, &unk_10023BED0);
    if (swift_dynamicCast())
    {
      sub_1000A0D80((v1 + 56), v1 + 16);
      sub_1000A09E0((v1 + 16), *(v1 + 40));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_1000A0D2C(*(v1 + 296), *(v1 + 304));
        sub_1000A09E0((v1 + 16), *(v1 + 40));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v11 = *(v1 + 128);
        v13 = *(v1 + 136);
        sub_100095808((v1 + 16));
        goto LABEL_9;
      }

      sub_100095808((v1 + 16));
    }

    else
    {
      *(v1 + 88) = 0;
      *(v1 + 72) = 0u;
      *(v1 + 56) = 0u;
      sub_100095C84(v1 + 56, &unk_1002A6F70, &unk_10023CE60);
    }

    v17 = *(v1 + 296);
    v16 = *(v1 + 304);
    v11 = sub_100162514(v17, v16);
    v13 = v18;
    v14 = v17;
    v15 = v16;
  }

  sub_1000A0D2C(v14, v15);
LABEL_9:
  v20 = *(v1 + 184);
  v19 = *(v1 + 192);
  v21 = *(v1 + 176);
  *(v1 + 112) = v11;
  *(v1 + 120) = v13;
  sub_10016947C(&unk_1002A9C10, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
  dispatch thunk of SetAlgebra.init()();
  *(v1 + 324) = 0;
  dispatch thunk of SetAlgebra.insert(_:)();
  sub_1000E3C10();
  v22 = StringProtocol.trimmingCharacters(in:)();
  v24 = v23;
  (*(v20 + 8))(v19, v21);

  v26 = *(v6 + v9);
  if (!v26)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v27 = v26;
  sub_1001E31B4(v22, v24);
  if (v3)
  {
    v29 = *(v1 + 280);
    sub_1000A0D2C(*(v1 + 296), *(v1 + 304));

    v30 = *(v1 + 8);
    goto LABEL_30;
  }

  v31 = v28;

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:

    v33 = 0;
    goto LABEL_20;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v31 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_37;
  }

  for (i = *(v31 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v33 = i;

LABEL_20:
    (*(*(v1 + 216) + 16))(*(v1 + 224), *(v1 + 168) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v1 + 208));
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Accessory Description parsed, adding accessory to DataBase", v36, 2u);
    }

    v38 = *(v1 + 216);
    v37 = *(v1 + 224);
    v39 = *(v1 + 208);

    (*(v38 + 8))(v37, v39);
    if (qword_1002A6780 != -1)
    {
      break;
    }

    if (v33)
    {
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  swift_once();
  if (!v33)
  {
    goto LABEL_34;
  }

LABEL_24:
  v40 = *(v1 + 144);
  v41 = qword_1002B1CF0;
  v42 = v33;

  v43 = sub_10018F07C(v42, 1);

  v44 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  v45 = *(v40 + 32);
  v57 = v9;
  if (v45)
  {
    v46 = v44;
    v47 = [v45 identifier];
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      goto LABEL_29;
    }
  }

  else
  {
    v52 = v44;
  }

  v49 = 0;
  v51 = 0xE000000000000000;
LABEL_29:
  v54 = *(v1 + 296);
  v53 = *(v1 + 304);
  v55 = *(v1 + 280);
  sub_1001725C4(*(v1 + 256), *(v1 + 264), v49, v51);

  sub_1000A0D2C(v54, v53);

  v56 = *(v6 + v57);
  *(v6 + v57) = 0;

  v30 = *(v1 + 8);
LABEL_30:

  return v30();
}

uint64_t sub_10015BED8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015BF68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015C004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v4);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000952D4(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to remove pairing: %s", v11, 0xCu);
      sub_100095808(v12);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_10015C1F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10015C264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for Logger();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[23] = v8;
  *v8 = v6;
  v8[1] = sub_10015C3AC;

  return sub_1000FAC78();
}

uint64_t sub_10015C3AC()
{

  return (_swift_task_switch)(sub_10015C4A8, 0, 0);
}

uint64_t sub_10015C4A8()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController;
  [*(v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController) deRegisterFromNotifications];
  [*(v1 + v2) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  sub_1000A470C();
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_10015C578;

  return sub_1000FA6C8(v4, v5);
}

uint64_t sub_10015C578()
{

  return (_swift_task_switch)(sub_10015C674, 0, 0);
}

uint64_t sub_10015C674()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  *(v0 + 200) = qword_1002B1CF0;
  v2 = *(v1 + 24);
  v3 = sub_1001884E4(v2);

  if (v3)
  {
    v4 = dispatch thunk of DockCoreAccessory.isMagSafe.getter();
    v5 = dispatch thunk of DockCoreAccessory.certified.getter();
    v6 = dispatch thunk of DockCoreAccessory.needsMigration.getter();
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
  }

  *(v0 + 297) = v4 & 1;
  *(v0 + 296) = v5 & 1;
  v7 = *(*(v0 + 80) + 32);
  if (v7 && (v8 = [v7 name]) != 0)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v0 + 208) = v12;
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_10015C7FC;
  v14 = *(v0 + 80);

  return sub_10015B0F4(v14, v10, v12, v6 & 1);
}

uint64_t sub_10015C7FC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10015E0F0;
  }

  else
  {

    v2 = sub_10015C918;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_10015C918()
{
  v111 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  *(v0 + 232) = type metadata accessor for DockCoreManager();
  v4 = static DockCoreManager.diagnosticsCollectionEnabled.getter();
  v5 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  *(v0 + 240) = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v6 = *(v2 + 16);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = *(v0 + 104);
  if (v4)
  {
    v6(*(v0 + 176), v3 + v5, v7);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Diagnostics collection is enabled, initiating.", v10, 2u);
    }

    v11 = *(v0 + 176);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);

    v14 = *(v13 + 8);
    *(v0 + 264) = v14;
    v14(v11, v12);
    v15 = swift_task_alloc();
    *(v0 + 272) = v15;
    *v15 = v0;
    v15[1] = sub_10015D450;

    return sub_1000F77BC(v15, v16);
  }

  else
  {
    v6(*(v0 + 160), v3 + v5, v7);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 160);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Diagnostics collection is not enabled, ignoring.", v24, 2u);
    }

    v25 = *(v23 + 8);
    v25(v21, v22);
    v26 = *(v0 + 96);
    v27 = *(*(v0 + 80) + 24);
    v28 = [v26 firmwareVersion];
    if (v28)
    {
      v29 = v28;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v109 = 0;
      v31 = 0;
    }

    v32 = [*(v0 + 96) serialNumber];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = [*(v0 + 96) model];
    if (v36)
    {
      v37 = v36;
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v108 = 0;
      v39 = 0;
    }

    v40 = sub_1001884E4(v27);
    if (v40)
    {
      v41 = v40;
      v104 = v1;
      v106 = v35;
      v100 = *(v0 + 200);
      v99 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
      (*(v0 + 248))(*(v0 + 152), v100 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

      v105 = v27;
      v42 = v27;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 152);
      v103 = *(v0 + 104);
      if (v45)
      {
        v101 = v25;
        v47 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v110[0] = swift_slowAlloc();
        *v47 = 138412802;
        *(v47 + 4) = v42;
        *v97 = v42;
        *(v47 + 12) = 2080;
        *(v0 + 40) = v109;
        *(v0 + 48) = v31;
        v48 = v42;

        sub_100095274(&unk_1002A6F20, &unk_10023C660);
        v49 = String.init<A>(describing:)();
        v98 = v46;
        v51 = v31;
        v52 = sub_1000952D4(v49, v50, v110);

        *(v47 + 14) = v52;
        v31 = v51;
        *(v47 + 22) = 2080;
        *(v0 + 56) = v108;
        *(v0 + 64) = v39;

        v53 = String.init<A>(describing:)();
        v55 = sub_1000952D4(v53, v54, v110);

        *(v47 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v43, v44, "Updating accessory information for %@: firmware %s, model %s", v47, 0x20u);
        sub_100095C84(v97, &unk_1002A6F60, &unk_10023C4E0);

        swift_arrayDestroy();

        v25 = v101;

        v56 = v98;
      }

      else
      {

        v56 = v46;
      }

      v25(v56, v103);
      if (!v31)
      {
        dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
      }

      dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
      if (!v106)
      {
        dispatch thunk of DockCoreAccessory.serialNumber.getter();
      }

      dispatch thunk of DockCoreAccessory.serialNumber.setter();
      if (!v39)
      {
        dispatch thunk of DockCoreAccessory.model.getter();
      }

      dispatch thunk of DockCoreAccessory.model.setter();
      dispatch thunk of DockCoreAccessory.certified.setter();
      dispatch thunk of DockCoreAccessory.isMagSafe.setter();
      sub_10018F7CC(v41, v57);
      if (v104)
      {
        (*(v0 + 248))(*(v0 + 144), v100 + v99, *(v0 + 104));
        swift_errorRetain();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        v60 = os_log_type_enabled(v58, v59);
        v61 = *(v0 + 144);
        v62 = *(v0 + 104);
        if (v60)
        {
          v102 = v25;
          v63 = swift_slowAlloc();
          v107 = v62;
          v64 = swift_slowAlloc();
          v110[0] = v64;
          *v63 = 136315138;
          swift_getErrorValue();
          v65 = Error.localizedDescription.getter();
          v67 = sub_1000952D4(v65, v66, v110);

          *(v63 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v58, v59, "Unable to update dock accessory: %s", v63, 0xCu);
          sub_100095808(v64);

          v25 = v102;

          v102(v61, v107);
        }

        else
        {

          v25(v61, v62);
        }
      }

      else
      {
      }

      v27 = v105;
    }

    else
    {
    }

    v68 = *(v0 + 80);

    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = *(v0 + 200);
      v71 = v69;
      sub_1000F7FF0(0);

      v72 = *(v68 + 16);
      if (v72)
      {
        v73 = *&v72[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
        if (v73)
        {
          v74 = *(*(v70 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
          v75 = v72;
          if ([v73 state] == 2)
          {
            (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 104));
            v76 = v74;

            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = *(v0 + 80);
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              *v80 = 138412546;
              v82 = *(v79 + 24);
              *(v80 + 4) = v82;
              *v81 = v82;
              *(v80 + 12) = 2048;
              *(v80 + 14) = 0x404E000000000000;
              v83 = v82;
              _os_log_impl(&_mh_execute_header, v77, v78, "Setting accessory reachable %@ after %f secs", v80, 0x16u);
              sub_100095C84(v81, &unk_1002A6F60, &unk_10023C4E0);
            }

            v84 = *(v0 + 136);
            v85 = *(v0 + 104);
            v86 = *(v0 + 80);

            v25(v84, v85);
            v87 = static DockCoreManager.localFirmwarePath.getter();
            v89 = v88;
            v90 = *(v86 + 40);
            v91 = swift_allocObject();
            *(v91 + 16) = v76;
            *(v91 + 24) = v86;
            *(v91 + 32) = 1;
            *(v91 + 40) = v87;
            *(v91 + 48) = v89;
            v92 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
            v93 = v76;

            v94 = v90;
            v95 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

            v74 = *&v93[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v93[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v95;
          }

          else
          {
          }
        }
      }
    }

    v96 = *(v0 + 8);

    return v96();
  }
}

uint64_t sub_10015D450()
{

  return (_swift_task_switch)(sub_10015D54C, 0, 0);
}

uint64_t sub_10015D54C()
{
  (*(v0 + 248))(*(v0 + 168), *(v0 + 88) + *(v0 + 240), *(v0 + 104));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "collecting diagnostics and dumping to sys logs", v3, 2u);
  }

  v4 = *(v0 + 264);
  v5 = *(v0 + 168);
  v6 = *(v0 + 104);

  v4(v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_10015D6A0;
  v9 = *(v0 + 80);

  return sub_10015A0C8(v9, v8);
}

uint64_t sub_10015D6A0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_10015ED74;
  }

  else
  {
    v2 = sub_10015D7B4;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_10015D7B4()
{
  v90 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 96);
  v4 = *(*(v0 + 80) + 24);
  v5 = [v3 firmwareVersion];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [*(v0 + 96) serialNumber];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(v0 + 96) model];
  if (v14)
  {
    v15 = v14;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v88 = 0;
    v17 = 0;
  }

  v18 = sub_1001884E4(v4);
  if (v18)
  {
    v19 = v18;
    v87 = v7;
    v85 = v13;
    v79 = *(v0 + 200);
    v78 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    (*(v0 + 248))(*(v0 + 152), v79 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

    v84 = v4;
    v20 = v4;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 152);
    v82 = *(v0 + 104);
    v83 = v1;
    if (v23)
    {
      v80 = v2;
      v25 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      *v25 = 138412802;
      *(v25 + 4) = v20;
      *v76 = v20;
      *(v25 + 12) = 2080;
      *(v0 + 40) = v87;
      *(v0 + 48) = v9;
      v26 = v20;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v27 = String.init<A>(describing:)();
      v77 = v24;
      v29 = v9;
      v30 = sub_1000952D4(v27, v28, v89);

      *(v25 + 14) = v30;
      v9 = v29;
      *(v25 + 22) = 2080;
      *(v0 + 56) = v88;
      *(v0 + 64) = v17;

      v31 = String.init<A>(describing:)();
      v33 = sub_1000952D4(v31, v32, v89);

      *(v25 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "Updating accessory information for %@: firmware %s, model %s", v25, 0x20u);
      sub_100095C84(v76, &unk_1002A6F60, &unk_10023C4E0);

      swift_arrayDestroy();

      v2 = v80;

      v34 = v77;
    }

    else
    {

      v34 = v24;
    }

    v2(v34, v82);
    if (!v9)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v85)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v17)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    sub_10018F7CC(v19, v35);
    if (v83)
    {
      (*(v0 + 248))(*(v0 + 144), v79 + v78, *(v0 + 104));
      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 144);
      v40 = *(v0 + 104);
      if (v38)
      {
        v81 = v2;
        v41 = swift_slowAlloc();
        v86 = v40;
        v42 = swift_slowAlloc();
        v89[0] = v42;
        *v41 = 136315138;
        swift_getErrorValue();
        v43 = Error.localizedDescription.getter();
        v45 = sub_1000952D4(v43, v44, v89);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to update dock accessory: %s", v41, 0xCu);
        sub_100095808(v42);

        v2 = v81;

        v81(v39, v86);
      }

      else
      {

        v2(v39, v40);
      }
    }

    else
    {
    }

    v4 = v84;
  }

  else
  {
  }

  v46 = *(v0 + 80);

  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = *(v0 + 200);
    v49 = v47;
    sub_1000F7FF0(0);

    v50 = *(v46 + 16);
    if (v50)
    {
      v51 = *&v50[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (v51)
      {
        v52 = *(*(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        v53 = v50;
        if ([v51 state] == 2)
        {
          (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 104));
          v54 = v52;

          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = *(v0 + 80);
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            *v58 = 138412546;
            v60 = *(v57 + 24);
            *(v58 + 4) = v60;
            *v59 = v60;
            *(v58 + 12) = 2048;
            *(v58 + 14) = 0x404E000000000000;
            v61 = v60;
            _os_log_impl(&_mh_execute_header, v55, v56, "Setting accessory reachable %@ after %f secs", v58, 0x16u);
            sub_100095C84(v59, &unk_1002A6F60, &unk_10023C4E0);
          }

          v62 = *(v0 + 136);
          v63 = *(v0 + 104);
          v64 = *(v0 + 80);

          v2(v62, v63);
          v65 = static DockCoreManager.localFirmwarePath.getter();
          v67 = v66;
          v68 = *(v64 + 40);
          v69 = swift_allocObject();
          *(v69 + 16) = v54;
          *(v69 + 24) = v64;
          *(v69 + 32) = 1;
          *(v69 + 40) = v65;
          *(v69 + 48) = v67;
          v70 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
          v71 = v54;

          v72 = v68;
          v73 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

          v52 = *&v71[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
          *&v71[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v73;
        }

        else
        {
        }
      }
    }
  }

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_10015E0F0()
{
  v107 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);

  v5 = &unk_1002B1000;
  (*(v3 + 16))(v1, v4 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Accessory description read failed with error: %@", v8, 0xCu);
    sub_100095C84(v9, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }

  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  v11 = *(v0 + 112);
  v12 = *(v0 + 88);
  *(v0 + 232) = type metadata accessor for DockCoreManager();
  v13 = static DockCoreManager.diagnosticsCollectionEnabled.getter();
  v14 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  *(v0 + 240) = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v15 = *(v11 + 16);
  *(v0 + 248) = v15;
  *(v0 + 256) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = *(v0 + 104);
  if (v13)
  {
    v15(*(v0 + 176), v12 + v14, v16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Diagnostics collection is enabled, initiating.", v19, 2u);
    }

    v20 = *(v0 + 176);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);

    v23 = *(v22 + 8);
    *(v0 + 264) = v23;
    v23(v20, v21);
    v24 = swift_task_alloc();
    *(v0 + 272) = v24;
    *v24 = v0;
    v24[1] = sub_10015D450;

    return sub_1000F77BC(v24, v25);
  }

  else
  {
    v15(*(v0 + 160), v12 + v14, v16);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 160);
    v31 = *(v0 + 104);
    v32 = *(v0 + 112);
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Diagnostics collection is not enabled, ignoring.", v33, 2u);
    }

    v34 = *(v32 + 8);
    v34(v30, v31);
    v35 = *(v0 + 96);
    v36 = *(*(v0 + 80) + 24);
    v37 = [v35 firmwareVersion];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = [*(v0 + 96) serialNumber];
    if (v42)
    {
      v43 = v42;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v46 = [*(v0 + 96) model];
    if (v46)
    {
      v47 = v46;
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v105 = 0;
      v49 = 0;
    }

    v50 = sub_1001884E4(v36);
    if (v50)
    {
      v51 = v50;
      v104 = v39;
      v102 = v45;
      (*(v0 + 248))(*(v0 + 152), *(v0 + 200) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

      v101 = v36;
      v52 = v36;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 152);
      v100 = *(v0 + 104);
      v103 = v41;
      if (v55)
      {
        v99 = *(v0 + 152);
        v57 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v106[0] = swift_slowAlloc();
        *v57 = 138412802;
        *(v57 + 4) = v52;
        *v98 = v52;
        *(v57 + 12) = 2080;
        *(v0 + 40) = v104;
        *(v0 + 48) = v41;
        v58 = v52;

        sub_100095274(&unk_1002A6F20, &unk_10023C660);
        v59 = String.init<A>(describing:)();
        v61 = v34;
        v62 = sub_1000952D4(v59, v60, v106);

        *(v57 + 14) = v62;
        v34 = v61;
        *(v57 + 22) = 2080;
        *(v0 + 56) = v105;
        *(v0 + 64) = v49;

        v63 = String.init<A>(describing:)();
        v65 = sub_1000952D4(v63, v64, v106);

        *(v57 + 24) = v65;
        v41 = v103;
        _os_log_impl(&_mh_execute_header, v53, v54, "Updating accessory information for %@: firmware %s, model %s", v57, 0x20u);
        sub_100095C84(v98, &unk_1002A6F60, &unk_10023C4E0);
        v5 = &unk_1002B1000;

        swift_arrayDestroy();

        v66 = v99;
      }

      else
      {

        v66 = v56;
      }

      v34(v66, v100);
      if (!v41)
      {
        dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
      }

      dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
      if (!v102)
      {
        dispatch thunk of DockCoreAccessory.serialNumber.getter();
      }

      dispatch thunk of DockCoreAccessory.serialNumber.setter();
      if (!v49)
      {
        dispatch thunk of DockCoreAccessory.model.getter();
      }

      dispatch thunk of DockCoreAccessory.model.setter();
      dispatch thunk of DockCoreAccessory.certified.setter();
      dispatch thunk of DockCoreAccessory.isMagSafe.setter();
      sub_10018F7CC(v51, v67);

      v36 = v101;
    }

    else
    {
    }

    v68 = *(v0 + 80);

    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = *(v0 + 200);
      v71 = v69;
      sub_1000F7FF0(0);

      v72 = *(v68 + 16);
      if (v72)
      {
        v73 = *&v72[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
        if (v73)
        {
          v74 = *(*(v70 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
          v75 = v72;
          if ([v73 state] == 2)
          {
            v76 = v34;
            (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + v5[401], *(v0 + 104));
            v77 = v74;

            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = *(v0 + 80);
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              *v81 = 138412546;
              v83 = *(v80 + 24);
              *(v81 + 4) = v83;
              *v82 = v83;
              *(v81 + 12) = 2048;
              *(v81 + 14) = 0x404E000000000000;
              v84 = v83;
              _os_log_impl(&_mh_execute_header, v78, v79, "Setting accessory reachable %@ after %f secs", v81, 0x16u);
              sub_100095C84(v82, &unk_1002A6F60, &unk_10023C4E0);
            }

            v85 = *(v0 + 136);
            v86 = *(v0 + 104);
            v87 = *(v0 + 80);

            v76(v85, v86);
            v88 = static DockCoreManager.localFirmwarePath.getter();
            v90 = v89;
            v91 = *(v87 + 40);
            v92 = swift_allocObject();
            *(v92 + 16) = v77;
            *(v92 + 24) = v87;
            *(v92 + 32) = 1;
            *(v92 + 40) = v88;
            *(v92 + 48) = v90;
            v93 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
            v94 = v77;

            v95 = v91;
            v96 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

            v74 = *&v94[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v94[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v96;
          }

          else
          {
          }
        }
      }
    }

    v97 = *(v0 + 8);

    return v97();
  }
}

uint64_t sub_10015ED74()
{
  v78 = v0;
  (*(v0 + 248))(*(v0 + 120), *(v0 + 88) + *(v0 + 240), *(v0 + 104));
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Diagnostics transfer request failed with %@", v3, 0xCu);
    sub_100095C84(v4, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }

  (*(v0 + 264))(*(v0 + 120), *(v0 + 104));
  v6 = *(v0 + 264);
  v7 = *(v0 + 96);
  v8 = *(*(v0 + 80) + 24);
  v9 = [v7 firmwareVersion];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [*(v0 + 96) serialNumber];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [*(v0 + 96) model];
  if (v18)
  {
    v19 = v18;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v76 = 0;
    v21 = 0;
  }

  v22 = sub_1001884E4(v8);
  if (v22)
  {
    v23 = v22;
    v75 = v17;
    (*(v0 + 248))(*(v0 + 152), *(v0 + 200) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

    v74 = v8;
    v24 = v8;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 152);
    v73 = *(v0 + 104);
    if (v27)
    {
      v71 = *(v0 + 152);
      v29 = swift_slowAlloc();
      v72 = v6;
      v70 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v29 = 138412802;
      *(v29 + 4) = v24;
      *v70 = v24;
      *(v29 + 12) = 2080;
      *(v0 + 40) = v11;
      *(v0 + 48) = v13;
      v30 = v24;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v31 = String.init<A>(describing:)();
      v33 = v13;
      v34 = sub_1000952D4(v31, v32, v77);

      *(v29 + 14) = v34;
      v13 = v33;
      *(v29 + 22) = 2080;
      *(v0 + 56) = v76;
      *(v0 + 64) = v21;

      v35 = String.init<A>(describing:)();
      v37 = sub_1000952D4(v35, v36, v77);

      *(v29 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Updating accessory information for %@: firmware %s, model %s", v29, 0x20u);
      sub_100095C84(v70, &unk_1002A6F60, &unk_10023C4E0);
      v6 = v72;

      swift_arrayDestroy();

      v38 = v71;
    }

    else
    {

      v38 = v28;
    }

    v6(v38, v73);
    if (!v13)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v75)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v21)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    sub_10018F7CC(v23, v39);

    v8 = v74;
  }

  else
  {
  }

  v40 = *(v0 + 80);

  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v0 + 200);
    v43 = v41;
    sub_1000F7FF0(0);

    v44 = *(v40 + 16);
    if (v44)
    {
      v45 = *&v44[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (v45)
      {
        v46 = *(*(v42 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        v47 = v44;
        if ([v45 state] == 2)
        {
          (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 104));
          v48 = v46;

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = *(v0 + 80);
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            *v52 = 138412546;
            v54 = *(v51 + 24);
            *(v52 + 4) = v54;
            *v53 = v54;
            *(v52 + 12) = 2048;
            *(v52 + 14) = 0x404E000000000000;
            v55 = v54;
            _os_log_impl(&_mh_execute_header, v49, v50, "Setting accessory reachable %@ after %f secs", v52, 0x16u);
            sub_100095C84(v53, &unk_1002A6F60, &unk_10023C4E0);
          }

          v56 = *(v0 + 136);
          v57 = *(v0 + 104);
          v58 = *(v0 + 80);

          v6(v56, v57);
          v59 = static DockCoreManager.localFirmwarePath.getter();
          v61 = v60;
          v62 = *(v58 + 40);
          v63 = swift_allocObject();
          *(v63 + 16) = v48;
          *(v63 + 24) = v58;
          *(v63 + 32) = 1;
          *(v63 + 40) = v59;
          *(v63 + 48) = v61;
          v64 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
          v65 = v48;

          v66 = v62;
          v67 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

          v46 = *&v65[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
          *&v65[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v67;
        }

        else
        {
        }
      }
    }
  }

  v68 = *(v0 + 8);

  return v68();
}

void sub_10015F948(Class a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = (&v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    return;
  }

  v13 = [a2 cbCharacteristic];
  if (!v13)
  {
    return;
  }

  if (!a1)
  {

    return;
  }

  v117 = v13;
  v14 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
  v114 = v12;
  v116 = a4;
  if (!v14)
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    v35 = a1;
    goto LABEL_31;
  }

  v115 = v4;
  v15 = v14;
  v16 = [(objc_class *)a1 identifier];
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v118 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v21 = *&v15[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v22 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v23 = *&v15[v22];
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_24:
    v36 = *&v15[v118];
    OS_dispatch_semaphore.signal()();

    v122 = 0;
    v120 = 0u;
    v121 = 0u;

    goto LABEL_27;
  }

  v109 = v15;
  v110 = a3;
  v111 = v10;
  v112 = v9;
  v113 = a1;
  v25 = v23 + 32;

  v26 = 0;
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      __break(1u);
LABEL_85:

LABEL_86:
      v107 = *(a1 + v116);

      os_unfair_lock_unlock(v107 + 4);

      sub_100187818();

      return;
    }

    sub_1000A097C(v25, v119);
    v27 = *(*sub_1000A09E0(v119, v119[3]) + 32);
    if (!v27)
    {
      goto LABEL_9;
    }

    v28 = v27;
    v29 = [v28 identifier];
    if (v29)
    {
      break;
    }

LABEL_8:

LABEL_9:
    v26 = (v26 + 1);
    sub_100095808(v119);
    v25 += 40;
    if (v24 == v26)
    {

      a1 = v113;
      v9 = v112;
      v10 = v111;
      a3 = v110;
      v15 = v109;
      goto LABEL_24;
    }
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a1 = v32;

  if (v31 != v18 || a1 != v20)
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

LABEL_26:

  v37 = v109;
  v38 = *&v109[v118];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v119, &v120);
  sub_100095808(v119);

  a1 = v113;
  v9 = v112;
  v10 = v111;
  a3 = v110;
LABEL_27:
  v4 = v115;
  if (!*(&v121 + 1))
  {
LABEL_31:
    v39 = a3;
    sub_100095C84(&v120, &unk_1002A6F40, &unk_10023BE90);
    v118 = 0;
    goto LABEL_32;
  }

  v39 = a3;
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  v40 = swift_dynamicCast();
  v41 = v119[0];
  if (!v40)
  {
    v41 = 0;
  }

  v118 = v41;
LABEL_32:
  v42 = v4;
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  v24 = v117;
  v43 = &stru_10029A000;
  v44 = [(objc_class *)v24 UUID];
  if (qword_1002A6718 != -1)
  {
    swift_once();
  }

  v45 = static NSObject.== infix(_:_:)();

  if ((v45 & 1) == 0)
  {
    v46 = [(objc_class *)v24 UUID];
    if (qword_1002A6720 != -1)
    {
      swift_once();
    }

    v47 = static NSObject.== infix(_:_:)();

    if ((v47 & 1) == 0)
    {
      v48 = [(objc_class *)v24 UUID];
      if (qword_1002A6740 != -1)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v49 = static NSObject.== infix(_:_:)();

        if ((v49 & 1) == 0)
        {
          break;
        }

        if (!v118)
        {

          goto LABEL_47;
        }

        v50 = *(v118 + 24);
        v117 = type metadata accessor for AccessorySystemEvent();
        v51 = objc_allocWithZone(v117);
        v52 = v50;
        sub_1000A0CD8(v39, v116);
        v53 = AccessorySystemEvent.init(data:name:)();
        if (!v53)
        {

          goto LABEL_47;
        }

        v54 = v53;
        v115 = v52;
        v113 = a1;
        v55 = v114;
        (v10)[2](v114, v42 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v9);
        v56 = v54;
        v57 = v116;
        sub_1000A0CD8(v39, v116);
        v58 = v56;
        v59 = v9;
        v60 = v10;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        sub_1000A0D2C(v39, v57);
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *&v120 = v112;
          *v63 = 136315394;
          v64 = sub_10013B46C(v39, v57);
          v65 = v59;
          v67 = sub_1000952D4(v64, v66, &v120);

          *(v63 + 4) = v67;
          *(v63 + 12) = 256;
          v68 = AccessorySystemEvent.header.getter();

          *(v63 + 14) = v68;
          _os_log_impl(&_mh_execute_header, v61, v62, "Got accessory event: %s -> %hhu", v63, 0xFu);
          sub_100095808(v112);

          (v60[1])(v55, v65);
        }

        else
        {

          (v60[1])(v55, v59);
        }

        v20 = v58;
        v70 = AccessorySystemEvent.header.getter();
        v71 = static AccessorySystemEvent.kHeaderCameraShutter.getter();
        v18 = v113;
        v43 = v115;
        if (v70 == v71)
        {
          v72 = AccessorySystemEvent.payload.getter();
          if (v72 == static AccessorySystemEvent.kHeaderEventRelease.getter())
          {
            if (qword_1002A6780 != -1)
            {
              swift_once();
            }

            v43 = qword_1002B1CF0;
            a1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
            v73 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

            os_unfair_lock_lock(v73 + 4);

            v74 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
            v75 = *(v74 + 16);
            v116 = v43;
            if (v75)
            {
              v114 = a1;
              v76 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

              swift_beginAccess();
              v77 = 0;
              v78 = (v74 + 40);
              while (v77 < *(v74 + 16))
              {
                if (*(*(v43 + v76) + 16))
                {
                  v80 = *(v78 - 1);
                  v79 = *v78;

                  sub_10016D4D0(v80, v79);
                  LOBYTE(v80) = v81;

                  v43 = v116;

                  if (v80)
                  {

                    v18 = v113;
                    a1 = v114;
                    goto LABEL_66;
                  }
                }

                ++v77;
                v78 += 2;
                if (v75 == v77)
                {

                  v18 = v113;
                  a1 = v114;
                  goto LABEL_64;
                }
              }

              __break(1u);
LABEL_90:
              swift_once();
              goto LABEL_69;
            }

LABEL_64:
            v82 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
            swift_beginAccess();
            v83 = *(v43 + v82);

            v84 = cameracaptureIdentifier.getter();
            if (!*(v83 + 16))
            {
              goto LABEL_85;
            }

            sub_10016D4D0(v84, v85);
            v87 = v86;

            if ((v87 & 1) == 0)
            {
              goto LABEL_86;
            }

LABEL_66:
            v88 = *(a1 + v116);

            os_unfair_lock_unlock(v88 + 4);

            v43 = v115;
          }
        }

        v89 = AccessorySystemEvent.header.getter();
        if (v89 != static AccessorySystemEvent.kHeaderCameraFlip.getter())
        {
          goto LABEL_83;
        }

        v117 = v20;
        if (qword_1002A6780 != -1)
        {
          goto LABEL_90;
        }

LABEL_69:
        v90 = qword_1002B1CF0;
        v91 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v92 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v92 + 4);

        v48 = *(v90 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
        v10 = v48[2];
        v39 = v90;
        if (!v10)
        {
LABEL_77:
          v96 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
          swift_beginAccess();
          v97 = *(v90 + v96);

          v98 = cameracaptureIdentifier.getter();
          if (*(v97 + 16))
          {
            sub_10016D4D0(v98, v99);
            v101 = v100;

            v18 = v113;
            if (v101)
            {
LABEL_79:
              v102 = *(v39 + v91);

              os_unfair_lock_unlock(v102 + 4);

              v103 = *(v39 + v91);

              os_unfair_lock_lock(v103 + 4);

              v104 = sub_1001F3BB8(_swiftEmptyArrayStorage);
              v105 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
              swift_beginAccess();
              *(v39 + v105) = v104;
              goto LABEL_81;
            }
          }

          else
          {

            v18 = v113;
LABEL_81:
          }

          v106 = *(v39 + v91);

          os_unfair_lock_unlock(v106 + 4);

          v20 = v117;
LABEL_83:
          sub_1001688C0(v43, v20);

          goto LABEL_47;
        }

        v116 = v91;
        v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

        swift_beginAccess();
        a1 = 0;
        v42 = v48 + 5;
        while (a1 < v48[2])
        {
          if (*(*(v9 + v90) + 16))
          {
            v94 = *(v42 - 1);
            v93 = *v42;

            sub_10016D4D0(v94, v93);
            v43 = v95;

            v90 = v39;

            if (v43)
            {

              v18 = v113;
              v43 = v115;
              v91 = v116;
              goto LABEL_79;
            }
          }

          a1 = (a1 + 1);
          v42 += 2;
          if (v10 == a1)
          {

            v43 = v115;
            v91 = v116;
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_88:
        swift_once();
      }
    }
  }

  if (v118)
  {

    v69 = [v24 *(v43 + 2560)];

    sub_1001A43DC(v69, v39, v116, 0);
  }

  else
  {
  }

LABEL_47:
}

void sub_100160974(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a5;
  v85 = a6;
  v89 = a3;
  v87 = a1;
  v88 = type metadata accessor for Logger();
  v9 = *(v88 - 8);
  __chkstk_darwin(v88);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v77 - v13;
  v15 = type metadata accessor for UUID();
  v16 = __chkstk_darwin(v15);
  v86 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v77 - v19;
  __chkstk_darwin(v18);
  v22 = &v77 - v21;
  v23 = a2;
  v25 = v24;
  v27 = v26;
  sub_1000B5150(v23, v14, &qword_1002A7AF0, &qword_10023C9D0);
  if ((*(v27 + 48))(v14, 1, v25) == 1)
  {
    sub_100095C84(v14, &qword_1002A7AF0, &qword_10023C9D0);
    return;
  }

  (*(v27 + 32))(v22, v14, v25);
  if (a4 >> 60 == 15)
  {
    (*(v27 + 8))(v22, v25);
    return;
  }

  v28 = v9;
  v29 = *(v9 + 16);
  v81 = v6;
  v30 = v88;
  v29(v11, &v6[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v88);
  v31 = *(v27 + 16);
  v83 = v22;
  v80 = v31;
  (v31)(v20, v22, v25);
  v82 = a4;
  sub_1000A0CD8(v89, a4);
  v32 = v25;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v79 = v27;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v90[0] = v77;
    *v36 = 136315138;
    sub_10016947C(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v27;
    v40 = v39;
    v78 = *(v38 + 8);
    v78(v20, v32);
    v41 = sub_1000952D4(v37, v40, v90);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Request to validate SW token: %s", v36, 0xCu);
    sub_100095808(v77);

    (*(v28 + 8))(v11, v88);
  }

  else
  {

    v78 = *(v27 + 8);
    v78(v20, v32);
    (*(v28 + 8))(v11, v30);
  }

  v42 = v81;
  v43 = v87;
  if (!v87)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v86;
  v80(v86, v83);
  v45 = type metadata accessor for AccessoryServer(0);
  v90[3] = v45;
  v90[4] = &off_1002792F0;
  v90[0] = v42;
  type metadata accessor for DockAccessorySWAuth(0);
  v46 = swift_allocObject();
  v47 = sub_1000E4984(v90, v45);
  __chkstk_darwin(v47);
  v49 = (&v77 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v49;
  v52 = v89;
  v53 = v82;
  sub_1000B4F20(v89, v82);
  v54 = v43;
  v55 = v42;
  v56 = sub_100168E8C(v51, v54, v44, v52, v53, v46);
  sub_1000A452C(v52, v53);

  sub_100095808(v90);
  v57 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth;
  *&v55[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth] = v56;

  v58 = objc_opt_self();
  v59 = *(v56 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v60 = *(v56 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
  sub_1000A0CD8(v59, v60);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v59, v60);
  LODWORD(v58) = [v58 isTokenValidForFeatures:32 token:isa];

  if (!v58)
  {
    sub_1000B346C();
    v64 = swift_allocError();
    *v65 = 5;
    sub_100153E88(0, v64);

    v66 = *&v55[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
    if (v66)
    {
      v67 = v66;
      v68 = [v54 identifier];
      if (!v68)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v69 = v68;
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v73 = swift_allocError();
      *v74 = 5;
      v75 = sub_1001F29A8(_swiftEmptyArrayStorage);
      if (!*&v67[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
      {
        sub_1000A452C(v89, v82);

        v78(v83, v32);

        return;
      }

      v67[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
      v76 = *&v67[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
      sub_100156798(v70, v72, 6, v75, v73);
    }

    sub_1000A452C(v89, v82);
    goto LABEL_18;
  }

  if (!*&v55[v57])
  {
    goto LABEL_22;
  }

  v62 = v82;
  v63 = v85;
  if (!v85)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1001B26B8(v84, v63);

  sub_1000A452C(v89, v62);
LABEL_18:
  v78(v83, v32);
}

id sub_100161618(void *a1, char *a2, id a3, unint64_t a4)
{
  v30 = a3;
  v11 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth))
  {
    v14 = a4 >> 60 == 15;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v5 = type metadata accessor for UUID();
    v6 = *(v5 - 8);
    v7 = *(v6 + 48);
    if (v7(a2, 1, v5) != 1)
    {
LABEL_13:
      sub_1000B5150(a2, v13, &qword_1002A7AF0, &qword_10023C9D0);
      result = v7(v13, 1, v5);
      if (result != 1)
      {

        sub_1001B46E0(v30, a4, v13);

        return (*(v6 + 8))(v13, v5);
      }

      goto LABEL_23;
    }
  }

  sub_1000B346C();
  a4 = swift_allocError();
  *v15 = 7;
  sub_100153E88(0, a4);

  v17 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (!v17)
  {
    if (a1)
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  result = [a1 identifier];
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = swift_allocError();
  *v24 = 7;
  v25 = sub_1001F29A8(_swiftEmptyArrayStorage);
  if (*&v18[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
  {
    v18[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
    v26 = *&v18[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    sub_100156798(v20, v22, 6, v25, v23);
  }

  else
  {
  }

LABEL_16:
  v31 = 0;
  v27 = [a1 stopPairingWithError:{&v31, v30}];
  v28 = v31;
  if (v27)
  {

    return v28;
  }

  else
  {
    v30 = v31;
    v29 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100161B78(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth) = 0;

  if (a2)
  {
    sub_100153E88(0, a2);
    v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
    if (!v6)
    {
      if (a1)
      {
LABEL_15:
        v24 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
        aBlock[4] = MotionFeedback.init(positions:velocities:);
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10015C1F8;
        aBlock[3] = &unk_100279340;
        v25 = _Block_copy(aBlock);
        v26 = v24;
        [a1 removePairingForCurrentControllerOnQueue:v26 completion:v25];
        _Block_release(v25);

        return;
      }

      goto LABEL_23;
    }

    if (a1)
    {
      v7 = v6;
      v8 = [a1 identifier];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = sub_1001F29A8(_swiftEmptyArrayStorage);
        if (*&v7[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
        {
          v7[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          v14 = *&v7[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          sub_100156798(v10, v12, 6, v13, a2);
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = [objc_allocWithZone(HAPAccessoryPairingRequest) init];
  [v27 setRequiresUserConsent:0];
  [v27 setPairingIdentity:0];
  v15 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v15)
  {
    if (!a1)
    {
      goto LABEL_22;
    }

    v16 = v15;
    v17 = [a1 identifier];
    if (!v17)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_1001F29A8(_swiftEmptyArrayStorage);
    if (*&v16[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
    {
      v16[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 5;
      v23 = *&v16[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
      sub_100156798(v19, v21, 2, v22, 0);
    }
  }

  else if (!a1)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [a1 tearDownSessionOnAuthCompletion];
  [a1 startPairingWithRequest:v27];
}

id sub_100161FBC()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager] = 0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue;
  v7 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v11[1] = "Cannot find token for accessory";
  v11[2] = v7;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_10016947C(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser] = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_pairingInterval] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth] = 0;
  v8 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_virtualEventService;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for VirtualEventService(0)) init];
  v9 = type metadata accessor for AccessoryServer(0);
  v14.receiver = v1;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_100162310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryServer(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryServer(uint64_t a1)
{
  result = qword_1002A9BE8;
  if (!qword_1002A9BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100162458(uint64_t a1, uint64_t a2)
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

uint64_t sub_100162514(uint64_t a1, unint64_t a2)
{
  sub_1000A0CD8(a1, a2);
  sub_1001626B0(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_100162580@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_1001625BC(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t *sub_100162614(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
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

    v8 = sub_100163140(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

id *sub_1001626B0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1000A0D2C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1001F7A30();
      v14 = Data._copyContents(initializing:)();
      sub_1000A0D2C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10016282C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

unint64_t sub_1001629D8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100162A44(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_100162AE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v33 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v33)
  {
    goto LABEL_70;
  }

  v35 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v36 = a2;
  v37 = a3;
  v5 = 0;
  while (v35 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v4 + 16))
      {
        goto LABEL_66;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v8 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    sub_1000A0CD8(v7, v8);
    v9 = sub_10014025C(v7, v8);
    v11 = v10;
    sub_1000A0D2C(v7, v8);
    if (v9 == v36 && v11 == v37)
    {

LABEL_21:
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      while (1)
      {
        if (v3 >> 62)
        {
          if (v16 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v5;
          }
        }

        else if (v16 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v5;
        }

        v4 = v3 & 0xC000000000000001;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_64:
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
            v30 = a3;
            v31 = a2;
            v32 = _CocoaArrayWrapper.endIndex.getter();
            a2 = v31;
            a3 = v30;
            v35 = v32;
            goto LABEL_3;
          }

          if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v17 = *(v3 + 8 * v16 + 32);
        }

        v18 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
        v19 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
        sub_1000A0CD8(v18, v19);
        v20 = sub_10014025C(v18, v19);
        v22 = v21;
        sub_1000A0D2C(v18, v19);
        if (v20 == v36 && v22 == v37)
        {
LABEL_24:
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            if (v5 != v16)
            {
              if (v4)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v5 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  return result;
                }

                v27 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v5 >= v27)
                {
                  goto LABEL_72;
                }

                if (v16 >= v27)
                {
                  goto LABEL_73;
                }

                v25 = *(v3 + 32 + 8 * v5);
                v26 = *(v3 + 32 + 8 * v16);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1001A347C();
                v28 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v28) = 0;
              }

              v29 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v26;

              if ((v3 & 0x8000000000000000) != 0 || v28)
              {
                v3 = sub_1001A347C();
                v29 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v16 & 0x8000000000000000) != 0)
                {
LABEL_61:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v16 & 0x8000000000000000) != 0)
              {
                goto LABEL_61;
              }

              if (v16 >= *(v29 + 16))
              {
                goto LABEL_69;
              }

              *(v29 + 8 * v16 + 32) = v25;

              *a1 = v3;
            }

            v14 = __OFADD__(v5++, 1);
            if (v14)
            {
              goto LABEL_68;
            }
          }
        }

        v14 = __OFADD__(v16++, 1);
        if (v14)
        {
          goto LABEL_65;
        }
      }
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_21;
    }

    v14 = __OFADD__(v5++, 1);
    if (v14)
    {
      goto LABEL_67;
    }
  }

  if (v33)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v4 + 16);
}

void sub_100162EB0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Accessory uncertified, requesting user permission.", v12, 2u);
    }

    (*(v7 + 8))(v9, v6);
    v13 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
      if (*&v13[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
      {
        if (a1)
        {
          v15 = v13;
          v16 = [a1 identifier];
          if (v16)
          {
            v17 = v16;
            v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v19;

            v21 = sub_1001F29A8(&off_100274E90);
            sub_100095C84(&unk_100274EB0, &unk_1002A9C60, &qword_10023FEF0);
            if (*&v13[v14])
            {
              v15[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 3;
              v22 = *&v15[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
              sub_100156798(v18, v20, 1, v21, 0);
            }

            v23 = *&v13[v14];
            if (v23)
            {
              v24 = v23;

              v24[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth] = 0;
              return;
            }

            goto LABEL_15;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_15:
        __break(1u);
      }
    }
  }
}

uint64_t sub_100163140(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a2;
  v51 = a4;
  v44 = a1;
  v5 = &qword_1002A98D0;
  v50 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v6 = __chkstk_darwin(v50);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = (&v43 - v8);
  v9 = type metadata accessor for BTDiscoveredDevice(0);
  v48 = *(v9 - 8);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v13 = 0;
  v52 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v47 = v12;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v53 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v52[7];
    v26 = (v52[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v48 + 72);
    v46 = v24;
    sub_1000E40C4(v25 + v29 * v24, v12);
    v30 = v54;
    *v54 = v27;
    v30[1] = v28;
    v31 = v50;
    sub_1000E40C4(v12, v30 + *(v50 + 48));
    v32 = v30;
    v33 = v49;
    v34 = v5;
    sub_1000B5150(v32, v49, v5, &unk_10023FFF0);
    swift_bridgeObjectRetain_n();

    v35 = v33 + *(v31 + 48);
    v36 = *(v35 + 8);
    v37 = v36;
    sub_1000E4128(v35);
    v38 = *(v51 + 16);
    if (v38)
    {
      v39 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
      v40 = v39;
      if (v36)
      {
        if (!v39)
        {
          goto LABEL_17;
        }

        sub_100095B94(0, &unk_1002A98E0, CBPeripheral_ptr);
        v41 = static NSObject.== infix(_:_:)();
        v5 = v34;
        sub_100095C84(v54, v34, &unk_10023FFF0);

        v12 = v47;
        sub_1000E4128(v47);

        v19 = v53;
        if (v41)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v5 = v34;
        sub_100095C84(v54, v34, &unk_10023FFF0);
        if (!v39)
        {
          goto LABEL_21;
        }

LABEL_19:

        v12 = v47;
        sub_1000E4128(v47);

        v19 = v53;
      }
    }

    else
    {
      if (v36)
      {
LABEL_17:
        v5 = v34;
        sub_100095C84(v54, v34, &unk_10023FFF0);
        v40 = v37;
        goto LABEL_19;
      }

      v5 = v34;
      sub_100095C84(v54, v34, &unk_10023FFF0);
LABEL_21:
      v12 = v47;
      sub_1000E4128(v47);

      v19 = v53;
LABEL_22:
      *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
        return sub_1001CA268(v44, v43, v45, v52);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_1001CA268(v44, v43, v45, v52);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v53 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100163528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_100162614(v13, v8, a1, a2);

      return v11;
    }
  }

  __chkstk_darwin(v10);
  bzero(&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_100163140((&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

void *sub_1001636E8(void *result)
{
  v50 = result;
  v1 = result[2];
  if (v1)
  {
    result = *(v1 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
    if (result)
    {
      result = [result services];
      if (result)
      {
        v2 = result;
        sub_100095B94(0, &qword_1002A9840, CBService_ptr);
        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = v3;
        if (v3 >> 62)
        {
          goto LABEL_62;
        }

        for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v5 = 0;
          v46 = v47 + 32;
          while ((v47 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v7 = __OFADD__(v5, 1);
            v8 = v5 + 1;
            if (v7)
            {
              goto LABEL_59;
            }

LABEL_14:
            v48 = v6;
            v49 = v8;
            v9 = [v6 characteristics];
            if (v9)
            {
              v10 = v9;
              sub_100095B94(0, &unk_1002A9830, CBCharacteristic_ptr);
              v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v11 >> 62))
              {
                goto LABEL_16;
              }
            }

            else
            {
              v11 = _swiftEmptyArrayStorage;
              if (!(_swiftEmptyArrayStorage >> 62))
              {
LABEL_16:
                v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v12)
                {
                  goto LABEL_7;
                }

                goto LABEL_17;
              }
            }

            v12 = _CocoaArrayWrapper.endIndex.getter();
            if (!v12)
            {
              goto LABEL_7;
            }

LABEL_17:
            sub_100095B94(0, &unk_1002A9C50, CBUUID_ptr);
            if (v12 < 1)
            {
              goto LABEL_60;
            }

            for (j = 0; j != v12; ++j)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v14 = *(v11 + 8 * j + 32);
              }

              v15 = v14;
              v16 = [v14 UUID];
              if (qword_1002A6718 != -1)
              {
                swift_once();
              }

              v17 = qword_1002B1C30;
              v18 = static NSObject.== infix(_:_:)();

              if (v18)
              {
                goto LABEL_68;
              }

              v19 = [v15 UUID];
              if (qword_1002A6720 != -1)
              {
                swift_once();
              }

              v20 = qword_1002B1C38;
              v21 = static NSObject.== infix(_:_:)();

              if (v21)
              {
                goto LABEL_68;
              }

              v22 = [v15 UUID];
              if (qword_1002A6728 != -1)
              {
                swift_once();
              }

              v23 = qword_1002B1C40;
              v24 = static NSObject.== infix(_:_:)();

              if (v24)
              {
                goto LABEL_68;
              }

              v25 = [v15 UUID];
              if (qword_1002A6748 != -1)
              {
                swift_once();
              }

              v26 = qword_1002B1C60;
              v27 = static NSObject.== infix(_:_:)();

              if (v27)
              {
                goto LABEL_68;
              }

              v28 = [v15 UUID];
              if (qword_1002A6750 != -1)
              {
                swift_once();
              }

              v29 = qword_1002B1C68;
              v30 = static NSObject.== infix(_:_:)();

              if (v30)
              {
                goto LABEL_68;
              }

              v31 = [v15 UUID];
              if (qword_1002A6730 != -1)
              {
                swift_once();
              }

              v32 = qword_1002B1C48;
              v33 = static NSObject.== infix(_:_:)();

              if (v33)
              {
                goto LABEL_68;
              }

              v34 = [v15 UUID];
              if (qword_1002A6738 != -1)
              {
                swift_once();
              }

              v35 = qword_1002B1C50;
              v36 = static NSObject.== infix(_:_:)();

              if (v36)
              {
                goto LABEL_68;
              }

              v37 = [v15 UUID];
              if (qword_1002A6740 != -1)
              {
                swift_once();
              }

              v38 = qword_1002B1C58;
              v39 = static NSObject.== infix(_:_:)();

              if (v39)
              {
                goto LABEL_68;
              }

              v40 = [v15 UUID];
              if (qword_1002A6760 != -1)
              {
                swift_once();
              }

              v41 = qword_1002B1C78;
              v42 = static NSObject.== infix(_:_:)();

              if (v42)
              {
LABEL_68:
                if (([v15 properties] & 0x10) != 0 || (objc_msgSend(v15, "properties") & 0x20) != 0)
                {
                  v43 = v50[2];
                  if (v43)
                  {
                    v44 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
                    if (v44)
                    {
                      v45 = v44;
                      [v45 setNotifyValue:1 forCharacteristic:v15];
                    }
                  }
                }
              }
            }

LABEL_7:

            v5 = v49;
            if (v49 == i)
            {
              goto LABEL_63;
            }
          }

          if (v5 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v6 = *(v46 + 8 * v5);
          v7 = __OFADD__(v5, 1);
          v8 = v5 + 1;
          if (!v7)
          {
            goto LABEL_14;
          }

LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          ;
        }

LABEL_63:
      }
    }
  }

  return result;
}

void sub_100163DF8(char *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v8 - 8);
  v10 = &v134 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v17 = &v134 - v16;
  v18 = __chkstk_darwin(v15);
  __chkstk_darwin(v18);
  v23 = &v134 - v19;
  if (!a3)
  {
    if (a2)
    {
      v39 = a2 >> 62;
      if (a2 >> 62)
      {
        goto LABEL_87;
      }

      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

LABEL_88:
      v12[2](v17, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v11);
      v125 = Logger.logObject.getter();
      v126 = v12;
      v127 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v125, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&_mh_execute_header, v125, v127, "Error while discoverying accessory: No accessories.", v128, 2u);
      }

      (v126[1])(v17, v11);
      return;
    }

    goto LABEL_104;
  }

  v140 = v20;
  v144 = a1;
  v24 = v12[2];
  v136 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v138 = (v12 + 2);
  v137 = v24;
  (v24)(&v134 - v19, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v11);
  swift_errorRetain();
  v25 = v12;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  v28 = os_log_type_enabled(v26, v27);
  v145 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v4;
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v29 = 136315138;
    swift_getErrorValue();
    v32 = Error.localizedDescription.getter();
    v34 = sub_1000952D4(v32, v33, &aBlock);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error while discoverying accessory: %s", v29, 0xCu);
    sub_100095808(v31);
    v4 = v30;

    v11 = v145;
  }

  v139 = v25[1];
  (v139)(v23, v11);
  v143 = v25;
  swift_getErrorValue();
  v35 = dispatch thunk of Error._domain.getter();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {

LABEL_27:
    swift_getErrorValue();
    dispatch thunk of Error._code.getter();
    goto LABEL_28;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_27;
  }

LABEL_28:
  v12 = _convertErrorToNSError(_:)();
  [v12 isHAPError];
  v55 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
  v56 = v144;
  if (!v55)
  {

    v148 = 0;
    aBlock = 0u;
    v147 = 0u;
LABEL_57:
    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  if (!v144)
  {
    goto LABEL_102;
  }

  v57 = v55;
  v58 = [v56 identifier];
  if (!v58)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v59 = v58;
  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v60;

  v142 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v61 = *(v57 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  a1 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v17 = *&a1[v57];
  v11 = *(v17 + 2);
  if (!v11)
  {
    goto LABEL_46;
  }

  v134 = v57;
  v135 = v12;
  v141 = v4;
  v62 = (v17 + 32);

  v4 = 0;
  while (v4 < *(v17 + 2))
  {
    sub_1000A097C(v62, &v150);
    v63 = *(*sub_1000A09E0(&v150, v151) + 32);
    if (v63)
    {
      v12 = v63;
      v64 = [v12 identifier];
      if (v64)
      {
        v65 = v64;
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a1 = v67;

        if (v66 == a2 && a1 == v10)
        {

LABEL_55:

          v85 = v134;
          v86 = *&v134[v142];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(&v150, &aBlock);
          sub_100095808(&v150);

          v71 = v145;
          v4 = v141;
          v12 = v135;
          if (!*(&v147 + 1))
          {
LABEL_56:

            goto LABEL_57;
          }

LABEL_47:
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory(0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          if (*(v150 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 1)
          {
            v135 = v12;
            *(v150 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 0;
            v72 = v140;
            (v137)(v140, &v4[v136], v71);
            v73 = v144;
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              *&aBlock = v77;
              *v76 = 136315138;
              v78 = [v73 identifier];

              if (v78)
              {
                v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v81 = v80;

                v82 = sub_1000952D4(v79, v81, &aBlock);

                *(v76 + 4) = v82;
                _os_log_impl(&_mh_execute_header, v74, v75, "Attempting to remove pairing for undiscovered accessory %s", v76, 0xCu);
                sub_100095808(v77);

                v83 = v140;
                v84 = v145;
                goto LABEL_69;
              }

LABEL_107:
              __break(1u);
              return;
            }

            v83 = v72;
            v84 = v71;
LABEL_69:
            (v139)(v83, v84);
            v109 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue];
            v110 = swift_allocObject();
            *(v110 + 16) = v4;
            v148 = sub_100169A5C;
            v149 = v110;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v147 = sub_10015C1F8;
            *(&v147 + 1) = &unk_1002794A8;
            v111 = _Block_copy(&aBlock);
            v12 = v109;
            v112 = v4;

            [v73 removePairingForCurrentControllerOnQueue:v12 completion:v111];

            _Block_release(v111);
          }

          return;
        }

        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v69)
        {
          goto LABEL_55;
        }
      }
    }

    ++v4;
    sub_100095808(&v150);
    v62 += 40;
    if (v11 == v4)
    {

      v4 = v141;
      v12 = v135;
      v57 = v134;
LABEL_46:
      v70 = *(v57 + v142);
      OS_dispatch_semaphore.signal()();

      v148 = 0;
      aBlock = 0u;
      v147 = 0u;

      v71 = v145;
      if (!*(&v147 + 1))
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_87:
    v121 = v21;
    v122 = v22;
    v123 = v39;
    v124 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v123;
    v22 = v122;
    v21 = v121;
    if (!v124)
    {
      goto LABEL_88;
    }

LABEL_10:
    v40 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
    v142 = v22;
    if (!v40)
    {
      v148 = 0;
      aBlock = 0u;
      v147 = 0u;
LABEL_80:
      sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
      goto LABEL_81;
    }

    v138 = v39;
    v135 = v21;
    if (!a1)
    {
      goto LABEL_105;
    }

    v141 = v4;
    v41 = v40;
    v144 = a1;
    v42 = [a1 identifier];
    if (!v42)
    {
      goto LABEL_106;
    }

    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v139 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v47 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
    OS_dispatch_semaphore.wait()();

    a1 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v140 = v41;
    v17 = *&a1[v41];
    v4 = *(v17 + 2);
    if (!v4)
    {
      break;
    }

    v136 = a2;
    v137 = v10;
    v143 = v12;
    v145 = v11;
    v12 = (v17 + 32);

    a2 = 0;
    while (a2 < *(v17 + 2))
    {
      sub_1000A097C(v12, &v150);
      v48 = *(*sub_1000A09E0(&v150, v151) + 32);
      if (v48)
      {
        a1 = v48;
        v49 = [a1 identifier];
        if (v49)
        {
          v10 = v49;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          if (v50 == v44 && v52 == v46)
          {

LABEL_79:

            v115 = v140;
            v116 = *(v139 + v140);
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(&v150, &aBlock);
            sub_100095808(&v150);

            v11 = v145;
            v4 = v141;
            v12 = v143;
            v10 = v137;
            a2 = v136;
            if (*(&v147 + 1))
            {
              goto LABEL_60;
            }

            goto LABEL_80;
          }

          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            goto LABEL_79;
          }
        }
      }

      ++a2;
      sub_100095808(&v150);
      v12 += 5;
      if (v4 == a2)
      {

        v11 = v145;
        v12 = v143;
        v10 = v137;
        a2 = v136;
        goto LABEL_59;
      }
    }
  }

LABEL_59:
  v87 = v140;
  v88 = *(v139 + v140);
  OS_dispatch_semaphore.signal()();

  v148 = 0;
  aBlock = 0u;
  v147 = 0u;

  v4 = v141;
  if (!*(&v147 + 1))
  {
    goto LABEL_80;
  }

LABEL_60:
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_81:
    v117 = v142;
    v12[2](v142, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v11);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "No record for discovered accessory!", v120, 2u);
    }

    (v12[1])(v117, v11);
    return;
  }

  v89 = v150;
  sub_1001636E8(v150);
  if (*(v89 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {
    if (v138)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_77;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_77;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v113 = *(a2 + 32);
    }

    v114 = v113;
    sub_1001571A0(v89, v113);

LABEL_77:

    return;
  }

  v90 = v144;
  sub_1000F9E38(v144);
  v91 = (v89 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  *v91 = v92;
  v91[1] = v93;

  sub_1000F9E44(v90, v94);
  v95 = (v89 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  *v95 = v96;
  v95[1] = v97;

  sub_1000FA184(v90);
  v98 = (v89 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  *v98 = v99;
  v98[1] = v100;

  sub_1000FA384(v90);
  v101 = (v89 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  *v101 = v102;
  v101[1] = v103;

  if (v138)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_92;
    }

LABEL_64:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_67;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v104 = *(a2 + 32);
LABEL_67:
      v105 = v104;
      v106 = type metadata accessor for TaskPriority();
      (*(*(v106 - 8) + 56))(v10, 1, 1, v106);
      v107 = swift_allocObject();
      v107[2] = 0;
      v107[3] = 0;
      v107[4] = v89;
      v107[5] = v4;
      v107[6] = v105;
      v108 = v4;

      sub_1001B6410(0, 0, v10, &unk_10023EA20, v107);

      return;
    }

    __break(1u);
    goto LABEL_101;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

LABEL_92:
  v129 = &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger];
  v130 = v135;
  v12[2](v135, v129, v11);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&_mh_execute_header, v131, v132, "No accessories paired", v133, 2u);
  }

  else
  {
  }

  (v12[1])(v130, v11);
}