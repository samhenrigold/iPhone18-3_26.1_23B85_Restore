uint64_t sub_100B18780(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v117 = a2;
  v115 = type metadata accessor for BeaconStoreFileRecord(0);
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v97 - v12;
  v121 = type metadata accessor for UUID();
  v118 = *(v121 - 1);
  v13 = __chkstk_darwin(v121);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v109 = &v97 - v16;
  __chkstk_darwin(v15);
  v101 = &v97 - v17;
  v99 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v99);
  v100 = &v97 - v18;
  v19 = type metadata accessor for LeashRecord(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v108 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v97 - v23;
  v25 = swift_allocObject();
  v111 = a3;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v116 = v25;

  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C380;
  v104 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  v103 = xmmword_101385D80;
  *(v28 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v24, type metadata accessor for LeashRecord);
  v107 = v24;
  v120 = v19;
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v105 = sub_100008C00();
  *(v28 + 64) = v105;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v106 = v27;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Attempting to remove: %@", 24, 2, v28);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C218;
  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 isInternalBuild];

  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
    v34 = [v32 BOOLForKey:v35];
  }

  v36 = v120;
  v37 = v11;
  v38 = [objc_opt_self() defaultStore];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 aa_primaryAppleAccount];

    v119 = a1;
    if (v40 && (v40, (v34 & 1) == 0))
    {
      v111 = v21;
      v120 = v20;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v53 = *(v36 + 5);
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v57 = v117;
      v58 = *(v117 + 160);
      v59._countAndFlagsBits = v54;
      v59._object = v56;
      isa = CKRecordID.init(recordName:zoneID:)(v59, v58).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v108 = isa;
      v110 = sub_100FDB020(isa);

      v109 = swift_allocBox();
      v61 = *(v112 + 56);
      v99 = v62;
      v63 = a1;
      v64 = v115;
      v112 += 56;
      v98 = v61;
      (v61)(v62, 1, 1, v115);
      v65 = *(v57 + 168);
      v66 = v118;
      v67 = v101;
      (*(v118 + 2))(v101, v63 + v53, v121);
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v68 = v114;
      v69 = sub_1000076D4(v114, qword_10177CDB8);
      v70 = v113;
      v71 = v102;
      v72 = (*(v113 + 16))(v102, v69, v68);
      __chkstk_darwin(v72);
      *(&v97 - 4) = v65;
      *(&v97 - 3) = v67;
      *(&v97 - 2) = v71;
      v73 = v100;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v70 + 8))(v71, v68);
      (*(v66 + 1))(v67, v121);
      (v98)(v73, 0, 1, v64);
      sub_10002311C(v73, v99, &qword_1016B53E0, &unk_1013D65D0);
      v76 = v105;
      v75 = v106;
      v77 = v111;
      v78 = v108;
      v79 = static os_log_type_t.default.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = v103;
      v81 = v78;
      v121 = v81;
      v82 = [v81 description];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = v76;
      *(v80 + 32) = v83;
      *(v80 + 40) = v85;
      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v75, "cloudBacked item deleted from disk: %@", 38, 2, v80);

      v118 = type metadata accessor for LeashRecord;
      v86 = v107;
      sub_100022A54(v119, v107, type metadata accessor for LeashRecord);
      v87 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v88 = (v77 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      v90 = v109;
      v91 = v117;
      *(v89 + 16) = v109;
      *(v89 + 24) = v91;
      v120 = type metadata accessor for LeashRecord;
      sub_10002911C(v86, v89 + v87, type metadata accessor for LeashRecord);
      v92 = (v89 + v88);
      v115 = sub_100B27FFC;
      v93 = v116;
      *v92 = sub_100B27FFC;
      v92[1] = v93;

      Future.addSuccess(block:)();

      sub_100022A54(v119, v86, v118);
      v94 = swift_allocObject();
      *(v94 + 16) = v90;
      *(v94 + 24) = v91;
      sub_10002911C(v86, v94 + v87, v120);
      v95 = (v94 + v88);
      *v95 = v115;
      v95[1] = v93;

      Future.addFailure(block:)();
    }

    else
    {
      v112 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177BA08);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109376;
        *(v44 + 4) = v34;
        *(v44 + 8) = 1024;
        *(v44 + 10) = v40 != 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v44, 0xEu);
      }

      v45 = v113;

      v46 = *(v117 + 168);
      v47 = v119 + *(v120 + 5);
      v48 = v109;
      v107 = *(v118 + 2);
      v107(v109, v47, v121);
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v49 = v114;
      v50 = sub_1000076D4(v114, qword_10177CDB8);
      v51 = (*(v45 + 16))(v37, v50, v49);
      __chkstk_darwin(v51);
      *(&v97 - 4) = v46;
      *(&v97 - 3) = v48;
      *(&v97 - 2) = v37;
      v52 = v110;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v45 + 8))(v37, v49);
      (*(v118 + 1))(v48, v121);
      sub_100B39D8C(v52);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v74 = sub_100A8306C(9u);
      sub_100A8375C(v74);
      v111(1);
      sub_100022C40(v52, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1982C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v39);
  v11 = &v39 - v10;
  v12 = type metadata accessor for LeashRecord(0);
  __chkstk_darwin(v12 - 8);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v40 = a4;
  v41 = v14;
  v15 = qword_101694BE8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = a1;
  v42 = a3;
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177BA08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Saving record. Disk First? %{BOOL}d", v20, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C218;
  v22 = [objc_opt_self() sharedInstance];
  v23 = [v22 isInternalBuild];

  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
    v23 = [v21 BOOLForKey:v24];
  }

  v25 = [objc_opt_self() defaultStore];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v23) & 1) == 0))
    {
      sub_1006E62EC(v16, sub_100B27620, v41);
    }

    else
    {
      v28 = v43;
      sub_100022A54(v16, v43, type metadata accessor for LeashRecord);
      sub_1009F074C(v28);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Saved LocalStorageBacked record. Calling completion.", v32, 2u);
      }

      sub_100022A54(v16, v11, type metadata accessor for LeashRecord);
      swift_storeEnumTagMultiPayload();
      sub_1009E6CD8(v11, v40, a5);
      sub_10000B3A8(v11, &qword_1016A78E0, &qword_1013B6888);
      if (((v27 != 0) & ~v23) != 0)
      {
        v37 = type metadata accessor for Transaction();
        __chkstk_darwin(v37);
        v38 = v43;
        *(&v39 - 4) = v42;
        *(&v39 - 3) = v16;
        *(&v39 - 2) = v38;
        static Transaction.named<A>(_:with:)();
        v36 = v38;
      }

      else
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 67109376;
          *(v35 + 4) = v23;
          *(v35 + 8) = 1024;
          *(v35 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v35, 0xEu);
        }

        v36 = v43;
      }

      sub_100022C40(v36, type metadata accessor for LeashRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B19F38(uint64_t *a1, int a2, char *a3, uint64_t a4, void *a5)
{
  v42 = a3;
  v43 = a1;
  v40 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v40);
  v9 = &v39 - v8;
  v10 = type metadata accessor for LeashRecord(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = qword_101694BE8;

  v41 = a5;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BA08);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Saving record. Disk First? %{BOOL}d", v18, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C218;
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 isInternalBuild];

  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
    v21 = [v19 BOOLForKey:v22];
  }

  v23 = [objc_opt_self() defaultStore];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v21) & 1) == 0))
    {
      sub_1006E62EC(v43, sub_100B24CB4, v13);
    }

    else
    {
      sub_100022A54(v43, v12, type metadata accessor for LeashRecord);
      sub_1009F074C(v12);
      v39 = v12;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Saved LocalStorageBacked record. Calling completion.", v29, 2u);
      }

      v30 = v43;
      sub_100022A54(v43, v9, type metadata accessor for LeashRecord);
      swift_storeEnumTagMultiPayload();
      sub_1009E9304(v9, a4, v41);
      sub_10000B3A8(v9, &qword_1016A78E0, &qword_1013B6888);
      if (((v25 != 0) & ~v21) != 0)
      {
        v37 = type metadata accessor for Transaction();
        __chkstk_darwin(v37);
        *(&v39 - 4) = v42;
        *(&v39 - 3) = v30;
        v38 = v39;
        *(&v39 - 2) = v39;
        static Transaction.named<A>(_:with:)();
        v36 = v38;
      }

      else
      {
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        v33 = os_log_type_enabled(v31, v32);
        v34 = v39;
        if (v33)
        {
          v35 = swift_slowAlloc();
          *v35 = 67109376;
          *(v35 + 4) = v21;
          *(v35 + 8) = 1024;
          *(v35 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v35, 0xEu);
        }

        v36 = v34;
      }

      sub_100022C40(v36, type metadata accessor for LeashRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1A674()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 setInteger:28 forKey:v1];

  v2 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = 28;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "BeaconStore persistence set to %lu.", v6);
}

uint64_t sub_100B1A7C4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v27 = a2;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v11 = aBlock[0];
  v12 = swift_allocObject();
  v12[2] = sub_100B24A40;
  v12[3] = v10;
  v12[4] = a1;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v13 = LOBYTE(aBlock[0]);
  v14 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = &type metadata for Bool;
  *(v16 + 64) = &protocol witness table for Bool;
  *(v16 + 32) = v13;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "localAvailable: %d", v27);

  v17 = static os_log_type_t.default.getter();
  if (v13)
  {
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v15, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v18 = static os_log_type_t.default.getter();
    if (qword_101694A20 != -1)
    {
      v26 = v18;
      swift_once();
      v18 = v26;
    }

    v19 = os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10177B550, "beaconStore became available", 28, 2, _swiftEmptyArrayStorage);
    v27(v19);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v15, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v15, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v21 = swift_allocObject();
    v21[2] = v11;
    v21[3] = sub_100B24A48;
    v21[4] = v12;
    aBlock[4] = sub_100B24A78;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647118;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v23 = v29;
    v24 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v31 + 8))(v23, v24);
    (*(v28 + 8))(v9, v30);
  }
}

uint64_t sub_100B1AD94(uint64_t a1)
{
  v1 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v20 - v6;
  static SystemInfo.lockState.getter();
  (*(v2 + 104))(v5, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v1);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  if (v21 == v20[2])
  {
    v9 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v10 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v12 = sub_100B07CF0(v11);
    *(v11 + 56) = &type metadata for Bool;
    *(v11 + 64) = &protocol witness table for Bool;
    *(v11 + 32) = v12 & 1;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Init beaconFindMyAccessoryAssociated whenAvailable beforeFirstUnlock", 68, 2, v11);
  }

  else
  {
    v13 = sub_100AB035C() > 0;
    sub_100B07FD8(v13);
    v14 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v17 = sub_100B07CF0(v16);
    *(v16 + 56) = &type metadata for Bool;
    *(v16 + 64) = &protocol witness table for Bool;
    *(v16 + 32) = v17 & 1;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Init beaconFindMyAccessoryAssociated whenAvailable %{public}d - SEND", 68, 2, v16);

    LOBYTE(v21) = sub_100B07CF0(v18) & 1;
    CurrentValueSubject.send(_:)();
  }

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(5u);
  sub_100A907FC();

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100B1B1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v10 = aBlock[0];
  v11 = swift_allocObject();
  v11[2] = sub_100B26970;
  v11[3] = a2;
  v11[4] = a1;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v12 = LOBYTE(aBlock[0]);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 56) = &type metadata for Bool;
  *(v15 + 64) = &protocol witness table for Bool;
  *(v15 + 32) = v12;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "localAvailable: %d", v22);

  v16 = static os_log_type_t.default.getter();
  if (v12)
  {
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v14, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    sub_100B1AD94(a2);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v14, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v14, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v23 = *(v10 + 72);
    v18 = swift_allocObject();
    v18[2] = v10;
    v18[3] = sub_100B27E44;
    v18[4] = v11;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647E38;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v20 = v27;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v26 + 8))(v6, v20);
    (*(v24 + 8))(v9, v25);
  }
}

uint64_t sub_100B1B6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v8 = aBlock[0];
  v9 = swift_allocObject();
  v9[2] = sub_100B275C4;
  v9[3] = a2;
  v9[4] = a1;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v10 = LOBYTE(aBlock[0]);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  *(v13 + 56) = &type metadata for Bool;
  *(v13 + 64) = &protocol witness table for Bool;
  *(v13 + 32) = v10;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "localAvailable: %d", v21);

  v14 = static os_log_type_t.default.getter();
  if (v10)
  {
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v12, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v12, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v12, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v21 = *(v8 + 72);
    v16 = swift_allocObject();
    v16[2] = v8;
    v16[3] = sub_100B27E44;
    v16[4] = v9;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016484A0;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v18 = v23;
    v19 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v25 + 8))(v18, v19);
    (*(v22 + 8))(v7, v24);
  }
}

uint64_t sub_100B1BC50()
{
  v0 = sub_1000BC4D4(&qword_1016B55E0, &qword_1013D6BB8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - v2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  if (qword_101694C30 != -1)
  {
    swift_once();
  }

  v14 = sub_1000076D4(v0, qword_1016B4938);
  swift_beginAccess();
  (*(v1 + 16))(v3, v14, v0);
  ManagedDefault.wrappedValue.getter();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    return 1;
  }

  (*(v8 + 32))(v13, v6, v7);
  Date.init()();
  if (qword_101694C20 != -1)
  {
    swift_once();
  }

  v15 = (Duration.milliseconds.getter() / 1000);
  Date.timeIntervalSinceReferenceDate.getter();
  v17 = v16;
  Date.timeIntervalSinceReferenceDate.getter();
  v19 = v17 - v18;
  if (v19 > v15)
  {
    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v13, v7);
    return 1;
  }

  if (qword_101694BF0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177BA20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v19;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v23, v24, "Not publishing metrics: duration %f < threshold %f", v25, 0x16u);
  }

  v26 = *(v8 + 8);
  v26(v11, v7);
  v26(v13, v7);
  return 0;
}

uint64_t sub_100B1C0B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a4;
  v31 = a3;
  v28 = a2;
  v29 = a1;
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v33);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v24[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v25 = "r.defaultClientQueue";
  v34 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v26 = *(v7 + 104);
  v27 = v7 + 104;
  v26(v9);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  v10 = sub_10000768C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v11 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v12 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  v24[2] = v11;
  v24[3] = v10;
  v24[4] = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a5 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = "oudKitCoordinator.serialQueue";
  v13 = v26;
  (v26)(v9, v34, v32);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a5 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a5 + 64) = dispatch_semaphore_create(0);
  v25 = "tor.notificationQueue";
  (v13)(v9, v34, v32);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a5 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a5 + 80) = 0;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
  *(a5 + 136) = 0;
  sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  swift_allocObject();
  *(a5 + 160) = PassthroughSubject.init()();
  *(a5 + 168) = 0;
  sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  swift_allocObject();
  *(a5 + 176) = PassthroughSubject.init()();
  *(a5 + 184) = _swiftEmptyArrayStorage;
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 208) = 0;
  *(a5 + 216) = 0x2D65746176697270;
  *(a5 + 224) = 0xEF7365676E616863;
  *(a5 + 232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(a5 + 240) = v14;
  *(a5 + 256) = 0;
  *(a5 + 264) = 0;
  *(a5 + 248) = 0;
  *(a5 + 280) = dispatch_semaphore_create(1);
  v15 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v23 = v15;
    swift_once();
    v15 = v23;
  }

  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10177C388, "CloudKitCoordinator init", 24, 2, _swiftEmptyArrayStorage);
  *(a5 + 272) = v29;
  *(a5 + 24) = &off_10160F6C8;
  swift_unknownObjectWeakAssign();
  v16 = v30;
  *(a5 + 48) = v30;
  type metadata accessor for CloudKitUpdateEligibility();
  swift_allocObject();

  v17 = v16;

  v19 = sub_10047B8D4(v18);

  *(a5 + 128) = v19;
  v20 = *(a5 + 32);
  type metadata accessor for QueueSynchronizer();
  swift_allocObject();
  v21 = v20;
  *(a5 + 40) = QueueSynchronizer.init(queue:)();
  sub_100FD0494();
  return a5;
}

uint64_t sub_100B1C6E4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, void (*a9)(char *, uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11)
{
  v53 = a1;
  v46 = a11;
  v47 = a8;
  v45 = a10;
  v49 = a9;
  v48 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v48);
  v17 = &v45 - v16;
  v18 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v50 = a5;
  v51 = a4;
  v21[4] = a6;
  v22 = qword_101694BE8;

  v52 = a6;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177BA08);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v24, v25, "Saving record. Disk First? %{BOOL}d", v26, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C218;
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 isInternalBuild];

  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();
    v31 = [v27 BOOLForKey:v30];
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_opt_self() defaultStore];
  v33 = v53;
  if (v32)
  {
    v34 = v32;
    v35 = [v32 aa_primaryAppleAccount];

    if (v35 && (v35, ((a2 | v31) & 1) == 0))
    {
      sub_1006E5E1C(v33, v46, v21);
    }

    else
    {
      sub_100022A54(v33, v20, type metadata accessor for SharedBeaconRecord);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_1009F1368(v20);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v47 = v20;
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Saved LocalStorageBacked record. Calling completion.", v39, 2u);
        v20 = v47;
      }

      v40 = v53;
      sub_100022A54(v53, v17, type metadata accessor for SharedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v49(v17, v51, v50, v52);
      sub_10000B3A8(v17, &qword_101699BC8, &qword_1013926D8);
      if (((v35 != 0) & ~v31) != 0)
      {
        v44 = type metadata accessor for Transaction();
        __chkstk_darwin(v44);
        *(&v45 - 4) = a3;
        *(&v45 - 3) = v40;
        *(&v45 - 2) = v20;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 67109376;
          *(v43 + 4) = v31;
          *(v43 + 8) = 1024;
          *(v43 + 10) = v35 != 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v43, 0xEu);
        }
      }

      sub_100022C40(v20, type metadata accessor for SharedBeaconRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1CE90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v117 = a2;
  v115 = type metadata accessor for BeaconStoreFileRecord(0);
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v97 - v12;
  v121 = type metadata accessor for UUID();
  v118 = *(v121 - 1);
  v13 = __chkstk_darwin(v121);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v109 = &v97 - v16;
  __chkstk_darwin(v15);
  v101 = &v97 - v17;
  v99 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v99);
  v100 = &v97 - v18;
  v19 = type metadata accessor for OwnedBeaconGroup(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v108 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v97 - v23;
  v25 = swift_allocObject();
  v111 = a3;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v116 = v25;

  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C380;
  v104 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  v103 = xmmword_101385D80;
  *(v28 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v24, type metadata accessor for OwnedBeaconGroup);
  v107 = v24;
  v120 = v19;
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v105 = sub_100008C00();
  *(v28 + 64) = v105;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v106 = v27;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Attempting to remove: %@", 24, 2, v28);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C218;
  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 isInternalBuild];

  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
    v34 = [v32 BOOLForKey:v35];
  }

  v36 = v120;
  v37 = v11;
  v38 = [objc_opt_self() defaultStore];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 aa_primaryAppleAccount];

    v119 = a1;
    if (v40 && (v40, (v34 & 1) == 0))
    {
      v111 = v21;
      v120 = v20;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v53 = *(v36 + 6);
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v57 = v117;
      v58 = *(v117 + 160);
      v59._countAndFlagsBits = v54;
      v59._object = v56;
      isa = CKRecordID.init(recordName:zoneID:)(v59, v58).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v108 = isa;
      v110 = sub_100FDB020(isa);

      v109 = swift_allocBox();
      v61 = *(v112 + 56);
      v99 = v62;
      v63 = a1;
      v64 = v115;
      v112 += 56;
      v98 = v61;
      (v61)(v62, 1, 1, v115);
      v65 = *(v57 + 168);
      v66 = v118;
      v67 = v101;
      (*(v118 + 2))(v101, v63 + v53, v121);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v68 = v114;
      v69 = sub_1000076D4(v114, qword_10177AEF8);
      v70 = v113;
      v71 = v102;
      v72 = (*(v113 + 16))(v102, v69, v68);
      __chkstk_darwin(v72);
      *(&v97 - 4) = v65;
      *(&v97 - 3) = v67;
      *(&v97 - 2) = v71;
      v73 = v100;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v70 + 8))(v71, v68);
      (*(v66 + 1))(v67, v121);
      (v98)(v73, 0, 1, v64);
      sub_10002311C(v73, v99, &qword_1016B53E0, &unk_1013D65D0);
      v76 = v105;
      v75 = v106;
      v77 = v111;
      v78 = v108;
      v79 = static os_log_type_t.default.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = v103;
      v81 = v78;
      v121 = v81;
      v82 = [v81 description];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = v76;
      *(v80 + 32) = v83;
      *(v80 + 40) = v85;
      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v75, "cloudBacked item deleted from disk: %@", 38, 2, v80);

      v118 = type metadata accessor for OwnedBeaconGroup;
      v86 = v107;
      sub_100022A54(v119, v107, type metadata accessor for OwnedBeaconGroup);
      v87 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v88 = (v77 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      v90 = v109;
      v91 = v117;
      *(v89 + 16) = v109;
      *(v89 + 24) = v91;
      v120 = type metadata accessor for OwnedBeaconGroup;
      sub_10002911C(v86, v89 + v87, type metadata accessor for OwnedBeaconGroup);
      v92 = (v89 + v88);
      v115 = sub_100B27FFC;
      v93 = v116;
      *v92 = sub_100B27FFC;
      v92[1] = v93;

      Future.addSuccess(block:)();

      sub_100022A54(v119, v86, v118);
      v94 = swift_allocObject();
      *(v94 + 16) = v90;
      *(v94 + 24) = v91;
      sub_10002911C(v86, v94 + v87, v120);
      v95 = (v94 + v88);
      *v95 = v115;
      v95[1] = v93;

      Future.addFailure(block:)();
    }

    else
    {
      v112 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177BA08);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109376;
        *(v44 + 4) = v34;
        *(v44 + 8) = 1024;
        *(v44 + 10) = v40 != 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v44, 0xEu);
      }

      v45 = v113;

      v46 = *(v117 + 168);
      v47 = v119 + *(v120 + 6);
      v48 = v109;
      v107 = *(v118 + 2);
      v107(v109, v47, v121);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v49 = v114;
      v50 = sub_1000076D4(v114, qword_10177AEF8);
      v51 = (*(v45 + 16))(v37, v50, v49);
      __chkstk_darwin(v51);
      *(&v97 - 4) = v46;
      *(&v97 - 3) = v48;
      *(&v97 - 2) = v37;
      v52 = v110;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v45 + 8))(v37, v49);
      (*(v118 + 1))(v48, v121);
      sub_100B39D8C(v52);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v74 = sub_100A8306C(9u);
      sub_100A8375C(v74);
      v111(1);
      sub_100022C40(v52, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1DF3C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v118 = a2;
  v116 = type metadata accessor for BeaconStoreFileRecord(0);
  v112 = *(v116 - 1);
  __chkstk_darwin(v116);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v114 = v8;
  v115 = v9;
  v10 = __chkstk_darwin(v8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v99 = &v96 - v12;
  v13 = type metadata accessor for UUID();
  v121 = *(v13 - 1);
  v14 = __chkstk_darwin(v13);
  v96 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v96 - v17;
  __chkstk_darwin(v16);
  v98 = &v96 - v18;
  v19 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v19);
  v97 = &v96 - v20;
  v21 = type metadata accessor for KeyAlignmentRecord(0);
  v104 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v107 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v23;
  __chkstk_darwin(v22);
  v25 = &v96 - v24;
  v26 = swift_allocObject();
  v111 = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;

  v27 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C380;
  v101 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  v100 = xmmword_101385D80;
  *(v29 + 16) = xmmword_101385D80;
  v119 = a1;
  sub_100022A54(a1, v25, type metadata accessor for KeyAlignmentRecord);
  v106 = v25;
  v117 = v21;
  v30 = String.init<A>(describing:)();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v102 = sub_100008C00();
  *(v29 + 64) = v102;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v103 = v28;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Attempting to remove: %@", 24, 2, v29);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C218;
  v34 = [objc_opt_self() sharedInstance];
  v35 = [v34 isInternalBuild];

  if (v35)
  {
    v36 = String._bridgeToObjectiveC()();
    v37 = [v33 BOOLForKey:v36];
  }

  else
  {
    v37 = 0;
  }

  v38 = v117;
  v39 = [objc_opt_self() defaultStore];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 aa_primaryAppleAccount];

    v113 = v26;
    v120 = v13;
    if (v41 && (v41, (v37 & 1) == 0))
    {
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v55 = *(v38 + 20);
      v56 = v119;
      v57 = UUID.uuidString.getter();
      v59 = v58;
      v60 = v13;
      v61 = v118;
      v62 = *(v118 + 160);
      v63._countAndFlagsBits = v57;
      v63._object = v59;
      isa = CKRecordID.init(recordName:zoneID:)(v63, v62).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v110 = isa;
      v117 = sub_100FDB020(isa);

      v111 = swift_allocBox();
      v108 = *(v112 + 56);
      v109 = v65;
      v66 = v116;
      v112 += 56;
      (v108)(v65, 1, 1, v116);
      v67 = *(v61 + 168);
      v68 = v98;
      (v121)[2](v98, v56 + v55, v60);
      v69 = objc_autoreleasePoolPush();
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v70 = v114;
      sub_1000076D4(v114, qword_10177A500);
      UUID.uuidString.getter();
      v71 = v99;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v69);
      __chkstk_darwin(v72);
      *(&v96 - 4) = v67;
      *(&v96 - 3) = v68;
      *(&v96 - 2) = v71;
      v73 = v97;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v115 + 8))(v71, v70);
      (v121[1])(v68, v120);
      (v108)(v73, 0, 1, v66);
      sub_10002311C(v73, v109, &qword_1016B53E0, &unk_1013D65D0);
      v75 = v103;
      v76 = v102;
      v77 = v110;
      v78 = static os_log_type_t.default.getter();
      v79 = swift_allocObject();
      *(v79 + 16) = v100;
      v80 = v77;
      v121 = v80;
      v81 = [v80 description];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = v76;
      *(v79 + 32) = v82;
      *(v79 + 40) = v84;
      os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v75, "cloudBacked item deleted from disk: %@", 38, 2, v79);

      v120 = type metadata accessor for KeyAlignmentRecord;
      v85 = v106;
      sub_100022A54(v119, v106, type metadata accessor for KeyAlignmentRecord);
      v86 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v87 = (v105 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      v89 = v111;
      v90 = v118;
      *(v88 + 16) = v111;
      *(v88 + 24) = v90;
      v116 = type metadata accessor for KeyAlignmentRecord;
      sub_10002911C(v85, v88 + v86, type metadata accessor for KeyAlignmentRecord);
      v91 = (v88 + v87);
      v92 = v113;
      *v91 = sub_100B27FFC;
      v91[1] = v92;

      Future.addSuccess(block:)();

      sub_100022A54(v119, v85, v120);
      v93 = swift_allocObject();
      *(v93 + 16) = v89;
      *(v93 + 24) = v90;
      sub_10002911C(v85, v93 + v86, v116);
      v94 = (v93 + v87);
      *v94 = sub_100B27FFC;
      v94[1] = v92;

      Future.addFailure(block:)();
    }

    else
    {
      v112 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      v106 = sub_1000076D4(v42, qword_10177BA08);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v108;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v41 != 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = *(v118 + 168);
      v49 = v119 + *(v38 + 20);
      v105 = v121[2];
      v105(v46, v49, v120);
      v50 = objc_autoreleasePoolPush();
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v51 = v114;
      sub_1000076D4(v114, qword_10177A500);
      UUID.uuidString.getter();
      v52 = v109;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v50);
      __chkstk_darwin(v53);
      *(&v96 - 4) = v48;
      *(&v96 - 3) = v46;
      *(&v96 - 2) = v52;
      v54 = v110;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v115 + 8))(v52, v51);
      (v121[1])(v46, v120);
      sub_100B39D8C(v54);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v74 = sub_100A8306C(9u);
      sub_100A8375C(v74);
      v111(1);
      sub_100022C40(v54, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1F028(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v118 = a2;
  v116 = type metadata accessor for BeaconStoreFileRecord(0);
  v112 = *(v116 - 1);
  __chkstk_darwin(v116);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v114 = v8;
  v115 = v9;
  v10 = __chkstk_darwin(v8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v99 = &v96 - v12;
  v13 = type metadata accessor for UUID();
  v121 = *(v13 - 1);
  v14 = __chkstk_darwin(v13);
  v96 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v96 - v17;
  __chkstk_darwin(v16);
  v98 = &v96 - v18;
  v19 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v19);
  v97 = &v96 - v20;
  v21 = type metadata accessor for BeaconEstimatedLocation(0);
  v104 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v107 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v23;
  __chkstk_darwin(v22);
  v25 = &v96 - v24;
  v26 = swift_allocObject();
  v111 = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;

  v27 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C380;
  v101 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  v100 = xmmword_101385D80;
  *(v29 + 16) = xmmword_101385D80;
  v119 = a1;
  sub_100022A54(a1, v25, type metadata accessor for BeaconEstimatedLocation);
  v106 = v25;
  v117 = v21;
  v30 = String.init<A>(describing:)();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v102 = sub_100008C00();
  *(v29 + 64) = v102;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v103 = v28;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Attempting to remove: %@", 24, 2, v29);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C218;
  v34 = [objc_opt_self() sharedInstance];
  v35 = [v34 isInternalBuild];

  if (v35)
  {
    v36 = String._bridgeToObjectiveC()();
    v37 = [v33 BOOLForKey:v36];
  }

  else
  {
    v37 = 0;
  }

  v38 = v117;
  v39 = [objc_opt_self() defaultStore];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 aa_primaryAppleAccount];

    v113 = v26;
    v120 = v13;
    if (v41 && (v41, (v37 & 1) == 0))
    {
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v55 = *(v38 + 20);
      v56 = v119;
      v57 = UUID.uuidString.getter();
      v59 = v58;
      v60 = v13;
      v61 = v118;
      v62 = *(v118 + 160);
      v63._countAndFlagsBits = v57;
      v63._object = v59;
      isa = CKRecordID.init(recordName:zoneID:)(v63, v62).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v110 = isa;
      v117 = sub_100FDB020(isa);

      v111 = swift_allocBox();
      v108 = *(v112 + 56);
      v109 = v65;
      v66 = v116;
      v112 += 56;
      (v108)(v65, 1, 1, v116);
      v67 = *(v61 + 168);
      v68 = v98;
      (v121)[2](v98, v56 + v55, v60);
      v69 = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v70 = v114;
      sub_1000076D4(v114, qword_10177BF38);
      UUID.uuidString.getter();
      v71 = v99;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v69);
      __chkstk_darwin(v72);
      *(&v96 - 4) = v67;
      *(&v96 - 3) = v68;
      *(&v96 - 2) = v71;
      v73 = v97;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v115 + 8))(v71, v70);
      (v121[1])(v68, v120);
      (v108)(v73, 0, 1, v66);
      sub_10002311C(v73, v109, &qword_1016B53E0, &unk_1013D65D0);
      v75 = v103;
      v76 = v102;
      v77 = v110;
      v78 = static os_log_type_t.default.getter();
      v79 = swift_allocObject();
      *(v79 + 16) = v100;
      v80 = v77;
      v121 = v80;
      v81 = [v80 description];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = v76;
      *(v79 + 32) = v82;
      *(v79 + 40) = v84;
      os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v75, "cloudBacked item deleted from disk: %@", 38, 2, v79);

      v120 = type metadata accessor for BeaconEstimatedLocation;
      v85 = v106;
      sub_100022A54(v119, v106, type metadata accessor for BeaconEstimatedLocation);
      v86 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v87 = (v105 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      v89 = v111;
      v90 = v118;
      *(v88 + 16) = v111;
      *(v88 + 24) = v90;
      v116 = type metadata accessor for BeaconEstimatedLocation;
      sub_10002911C(v85, v88 + v86, type metadata accessor for BeaconEstimatedLocation);
      v91 = (v88 + v87);
      v92 = v113;
      *v91 = sub_100B23178;
      v91[1] = v92;

      Future.addSuccess(block:)();

      sub_100022A54(v119, v85, v120);
      v93 = swift_allocObject();
      *(v93 + 16) = v89;
      *(v93 + 24) = v90;
      sub_10002911C(v85, v93 + v86, v116);
      v94 = (v93 + v87);
      *v94 = sub_100B23178;
      v94[1] = v92;

      Future.addFailure(block:)();
    }

    else
    {
      v112 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      v106 = sub_1000076D4(v42, qword_10177BA08);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v108;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v41 != 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = *(v118 + 168);
      v49 = v119 + *(v38 + 20);
      v105 = v121[2];
      v105(v46, v49, v120);
      v50 = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v51 = v114;
      sub_1000076D4(v114, qword_10177BF38);
      UUID.uuidString.getter();
      v52 = v109;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v50);
      __chkstk_darwin(v53);
      *(&v96 - 4) = v48;
      *(&v96 - 3) = v46;
      *(&v96 - 2) = v52;
      v54 = v110;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v115 + 8))(v52, v51);
      (v121[1])(v46, v120);
      sub_100B39D8C(v54);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v74 = sub_100A8306C(9u);
      sub_100A8375C(v74);
      v111(1);
      sub_100022C40(v54, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B20114(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v25 = a2;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v11 = aBlock[0];
  v12 = swift_allocObject();
  v12[2] = sub_100B2531C;
  v12[3] = v10;
  v12[4] = a1;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v13 = LOBYTE(aBlock[0]);
  v14 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = &type metadata for Bool;
  *(v16 + 64) = &protocol witness table for Bool;
  *(v16 + 32) = v13;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "localAvailable: %d", v25);

  v17 = static os_log_type_t.default.getter();
  if (v13)
  {
    v18 = os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v15, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v25(v18);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v15, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v15, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v25 = *(v11 + 72);
    v20 = swift_allocObject();
    v20[2] = v11;
    v20[3] = sub_100B27E44;
    v20[4] = v12;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016476B8;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v22 = v27;
    v23 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v29 + 8))(v22, v23);
    (*(v26 + 8))(v9, v28);
  }
}

uint64_t sub_100B2067C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for UUID();
  v43 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconObservation(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v46 = a1;
  v44 = qword_10177B2E8;
  v19 = sub_100035730(a1, sub_100AC8058, 0);
  sub_1012BB138(v19, v18);

  sub_1000D2A70(v18, v16, &qword_1016A42E0, &qword_1013B0010);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    sub_10000B3A8(v18, &qword_1016A42E0, &qword_1013B0010);
    v18 = v16;
  }

  else
  {
    sub_10002911C(v16, v12, type metadata accessor for BeaconObservation);
    if (v12[*(v6 + 24)] == 41)
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_10177BA08);
      v21 = v43;
      v42 = *(v43 + 16);
      v42(v5, v46, v3);
      v22 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v41))
      {
        v23 = swift_slowAlloc();
        v40 = v7;
        v24 = v21;
        v25 = v23;
        v39 = swift_slowAlloc();
        v47 = v39;
        *v25 = 141558275;
        *(v25 + 4) = 1752392040;
        *(v25 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = v22;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        (*(v24 + 8))(v5, v3);
        v7 = v40;
        v28 = sub_1000136BC(v37, v27, &v47);

        *(v25 + 14) = v28;
        v29 = v38;
        _os_log_impl(&_mh_execute_header, v38, v41, "Marking beacon %{private,mask.hash}s as reunited", v25, 0x16u);
        sub_100007BAC(v39);
      }

      else
      {

        (*(v21 + 8))(v5, v3);
      }

      v42(v10, v46, v3);
      v31 = *(v6 + 20);
      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 16))(&v10[v31], v45, v32);
      v10[*(v6 + 24)] = 42;
      sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
      v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_101385D80;
      sub_100022A54(v10, v34 + v33, type metadata accessor for BeaconObservation);
      v35 = type metadata accessor for Transaction();
      __chkstk_darwin(v35);
      *(&v37 - 4) = v44;
      *(&v37 - 3) = v34;
      *(&v37 - 2) = 0;
      *(&v37 - 1) = 0;
      static Transaction.named<A>(_:with:)();

      sub_100022C40(v10, type metadata accessor for BeaconObservation);
      v30 = v12;
    }

    else
    {
      v30 = v12;
    }

    sub_100022C40(v30, type metadata accessor for BeaconObservation);
  }

  return sub_10000B3A8(v18, &qword_1016A42E0, &qword_1013B0010);
}

char *sub_100B20CDC(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier(0);
  v64 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v62 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = v60 - v5;
  v63 = 0;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = __chkstk_darwin(v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v13 = v60 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v60[1] = v2;
    v15 = *(v10 + 24);
    v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v17 = a1 + v16;
    v65 = *(v11 + 72);
    v66 = v16;
    v18 = _swiftEmptyDictionarySingleton;
    v67 = v15;
    v68 = v9;
    while (1)
    {
      sub_100022A54(v17, v13, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v13, v9, type metadata accessor for OwnedBeaconRecord);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v18;
      v21 = sub_100772BF4(&v13[v15]);
      v22 = v18[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_36;
      }

      v25 = v20;
      if (v18[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = v18;
          if ((v20 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_10100CB68();
          v26 = v69;
          if ((v25 & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_100FF54E0(v24, isUniquelyReferenced_nonNull_native);
        v26 = v69;
        v27 = sub_100772BF4(&v13[v15]);
        if ((v25 & 1) != (v28 & 1))
        {
          goto LABEL_39;
        }

        v21 = v27;
        if ((v25 & 1) == 0)
        {
LABEL_10:
          v26[(v21 >> 6) + 8] |= 1 << v21;
          sub_100022A54(&v13[v15], v26[6] + *(v64 + 72) * v21, type metadata accessor for StableIdentifier);
          *(v26[7] + 8 * v21) = _swiftEmptyArrayStorage;
          v29 = v26[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_37;
          }

          v26[2] = v31;
        }
      }

      v32 = v26[7];
      v33 = *(v32 + 8 * v21);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v21) = v33;
      if ((v34 & 1) == 0)
      {
        v33 = sub_100A5C050(0, v33[2] + 1, 1, v33);
        *(v32 + 8 * v21) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        *(v32 + 8 * v21) = sub_100A5C050((v35 > 1), v36 + 1, 1, v33);
      }

      sub_100022C40(v13, type metadata accessor for OwnedBeaconRecord);
      v37 = *(v32 + 8 * v21);
      *(v37 + 16) = v36 + 1;
      v38 = v65;
      v9 = v68;
      sub_10002911C(v68, v37 + v66 + v36 * v65, type metadata accessor for OwnedBeaconRecord);
      v17 += v38;
      v18 = v26;
      --v14;
      v15 = v67;
      if (!v14)
      {
        goto LABEL_21;
      }
    }
  }

  v26 = _swiftEmptyDictionarySingleton;
LABEL_21:
  sub_1000BC4D4(&unk_1016C2CB0, &qword_1013D6748);
  v39 = static _DictionaryStorage.copy(original:)();
  v40 = 0;
  v41 = 1 << *(v26 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v26[8];
  v44 = (v41 + 63) >> 6;
  v67 = v39 + 64;
  v68 = v39;
  if (v43)
  {
    while (1)
    {
      v45 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
LABEL_30:
      v48 = v45 | (v40 << 6);
      v49 = *(v64 + 72) * v48;
      v50 = v61;
      sub_100022A54(v26[6] + v49, v61, type metadata accessor for StableIdentifier);
      v51 = *(v26[7] + 8 * v48);
      v52 = v50;
      v53 = v62;
      sub_10002911C(v52, v62, type metadata accessor for StableIdentifier);
      v69 = v51;
      swift_bridgeObjectRetain_n();
      v54 = v63;
      sub_100A8ABA4(&v69);
      v63 = v54;
      if (v54)
      {
        break;
      }

      v55 = v69;
      v56 = v68;
      *(v67 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      sub_10002911C(v53, v56[6] + v49, type metadata accessor for StableIdentifier);
      *(v56[7] + 8 * v48) = v55;
      v57 = v56[2];
      v30 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v30)
      {
        goto LABEL_38;
      }

      *(v68 + 2) = v58;
      if (!v43)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v46 = v40;
    while (1)
    {
      v40 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v40 >= v44)
      {

        return v68;
      }

      v47 = v26[v40 + 8];
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v43 = (v47 - 1) & v47;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100B2128C(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v2)
  {
    center = v2;
    v3 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v4 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Posting %{public}@ Darwin notification", 38, 2, v5);

    CFNotificationCenterPostNotification(center, a1, 0, 0, 1u);
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      v11 = v9;
      swift_once();
      v9 = v11;
    }

    v10 = qword_10177C380;

    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "CFNotificationCenterGetDarwinNotifyCenter return nil!", 53, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100B2145C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v73 = &v59 - v3;
  v75 = type metadata accessor for URL();
  v4 = *(v75 - 8);
  __chkstk_darwin(v75 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for BeaconStoreFileRecord(0);
  v66 = *(v71 - 8);
  v7 = __chkstk_darwin(v71);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v59 - v10;
  v11 = sub_1000BC4D4(&qword_1016B53E8, &qword_1013D65E0);
  v12 = __chkstk_darwin(v11 - 8);
  v74 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = (&v59 - v14);
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v69 = (v4 + 48);
  v62 = (v4 + 8);
  v63 = (v4 + 32);
  v67 = a1;

  v20 = 0;
  v60 = 0;
  v61 = xmmword_101385D80;
  v70 = a1 + 64;
  v64 = v6;
  while (1)
  {
    if (v18)
    {
      v21 = v20;
      v22 = v74;
LABEL_17:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v21 << 6);
      v27 = *(*(v67 + 48) + 8 * v26);
      v28 = v65;
      sub_100022A54(*(v67 + 56) + *(v66 + 72) * v26, v65, type metadata accessor for BeaconStoreFileRecord);
      v29 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
      v30 = *(v29 + 48);
      *v22 = v27;
      sub_10002911C(v28, v22 + v30, type metadata accessor for BeaconStoreFileRecord);
      (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
      v31 = v27;
    }

    else
    {
      v23 = v19 <= v20 + 1 ? v20 + 1 : v19;
      v24 = v23 - 1;
      v22 = v74;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
        }

        if (v21 >= v19)
        {
          break;
        }

        v18 = *(v15 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_17;
        }
      }

      v57 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
      (*(*(v57 - 8) + 56))(v22, 1, 1, v57);
      v18 = 0;
      v20 = v24;
    }

    v32 = v72;
    sub_1000D2AD8(v22, v72, &qword_1016B53E8, &qword_1013D65E0);
    v33 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    v35 = v73;
    if (v34 == 1)
    {
    }

    v36 = *v32;
    sub_10002911C(v32 + *(v33 + 48), v9, type metadata accessor for BeaconStoreFileRecord);
    sub_1000D2A70(&v9[*(v71 + 20)], v35, &unk_101696AC0, &qword_101390A60);
    v37 = v9;
    v38 = v75;
    if ((*v69)(v35, 1, v75) == 1)
    {

      sub_100022C40(v37, type metadata accessor for BeaconStoreFileRecord);
      sub_10000B3A8(v35, &unk_101696AC0, &qword_101390A60);
LABEL_5:
      v9 = v37;
      goto LABEL_6;
    }

    v68 = v36;
    v39 = v64;
    (*v63)(v64, v35, v38);
    v40 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v41);
    v43 = v42;
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    v76 = 0;
    v47 = [v40 moveItemAtURL:v43 toURL:v45 error:&v76];

    if (v47)
    {
      v48 = v76;

      (*v62)(v39, v38);
      sub_100022C40(v37, type metadata accessor for BeaconStoreFileRecord);
      goto LABEL_5;
    }

    v49 = v76;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v51 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v52 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v53 = swift_allocObject();
    *(v53 + 16) = v61;
    v76 = v50;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v54 = String.init<A>(describing:)();
    v56 = v55;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = sub_100008C00();
    *(v53 + 32) = v54;
    *(v53 + 40) = v56;
    os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "Could not restore record %@", 27, 2, v53);

    (*v62)(v64, v75);
    v9 = v37;
    sub_100022C40(v37, type metadata accessor for BeaconStoreFileRecord);
    v60 = 0;
LABEL_6:
    v15 = v70;
  }
}

uint64_t sub_100B21C10(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100B21C1C(uint64_t a1)
{
  v2 = &unk_101696AC0;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v3 - 8);
  v72 = &v61 - v4;
  v74 = type metadata accessor for URL();
  v5 = *(v74 - 8);
  __chkstk_darwin(v74 - 8);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BeaconStoreFileRecord(0);
  v68 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v75 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v61 - v10;
  v11 = sub_1000BC4D4(&qword_1016B53E8, &qword_1013D65E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v61 - v15;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v69 = a1;
  v70 = (v5 + 48);
  v64 = (v5 + 8);
  v65 = (v5 + 32);

  v21 = 0;
  v62 = 0;
  v63 = xmmword_101385D80;
  v76 = v14;
  v71 = v7;
  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_7:
  v22 = v21;
LABEL_16:
  v26 = v2;
  v27 = __clz(__rbit64(v19));
  v19 &= v19 - 1;
  v28 = v27 | (v22 << 6);
  v29 = *(*(v69 + 48) + 8 * v28);
  v30 = v67;
  sub_100022A54(*(v69 + 56) + *(v68 + 72) * v28, v67, type metadata accessor for BeaconStoreFileRecord);
  v31 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
  v32 = *(v31 + 48);
  v33 = v76;
  *v76 = v29;
  v34 = v30;
  v14 = v33;
  sub_10002911C(v34, &v33[v32], type metadata accessor for BeaconStoreFileRecord);
  (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
  v35 = v29;
  v25 = v73;
  while (1)
  {
    sub_1000D2AD8(v14, v25, &qword_1016B53E8, &qword_1013D65E0);
    v36 = v25;
    v37 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v72;
    if (v38 == 1)
    {
    }

    v40 = v36 + *(v37 + 48);
    v41 = v75;
    sub_10002911C(v40, v75, type metadata accessor for BeaconStoreFileRecord);
    v2 = v26;
    sub_1000D2A70(v41 + *(v71 + 20), v39, v26, &qword_101390A60);
    v42 = v74;
    if ((*v70)(v39, 1, v74) == 1)
    {
      sub_100022C40(v41, type metadata accessor for BeaconStoreFileRecord);
      sub_10000B3A8(v39, v26, &qword_101390A60);
      goto LABEL_6;
    }

    v43 = v66;
    (*v65)(v66, v39, v42);
    v44 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    v77 = 0;
    v48 = [v44 removeItemAtURL:v46 error:&v77];

    if (v48)
    {
      v49 = *v64;
      v50 = v77;
      v49(v43, v42);
      sub_100022C40(v75, type metadata accessor for BeaconStoreFileRecord);
      v2 = &unk_101696AC0;
LABEL_6:
      v14 = v76;
      if (v19)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v51 = v77;
    v52 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v53 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v54 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v55 = swift_allocObject();
    *(v55 + 16) = v63;
    v77 = v52;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    *(v55 + 56) = &type metadata for String;
    *(v55 + 64) = sub_100008C00();
    *(v55 + 32) = v56;
    *(v55 + 40) = v58;
    os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "Could not delete tombstoned record %@", 37, 2, v55);

    (*v64)(v66, v74);
    sub_100022C40(v75, type metadata accessor for BeaconStoreFileRecord);
    v62 = 0;
    v2 = &unk_101696AC0;
    v14 = v76;
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v20 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    v25 = v73;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
      }

      if (v22 >= v20)
      {
        break;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_16;
      }
    }

    v26 = v2;
    v59 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
    (*(*(v59 - 8) + 56))(v14, 1, 1, v59);
    v19 = 0;
    v21 = v24;
  }
}

id sub_100B223D0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100B2242C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100ACD84C();
}

uint64_t sub_100B224D8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100ACD22C(v2);
}

uint64_t sub_100B2256C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10094E68C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100B22634(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B4B064(a1, v1);
}

void sub_100B226E0(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100AF110C(a1, v5, v1 + v4, v6);
}

uint64_t sub_100B227B8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

BOOL sub_100B22BD8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for SafeLocation(0);
  return sub_1005C8A30(v3, *(a1 + *(v4 + 52)));
}

uint64_t sub_100B22C54()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1009E2A6C(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_100B22CF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AE6D3C(a1, v4, v1 + 24);
}

uint64_t sub_100B22DA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100AE7214(a1, v1 + 16);
}

void sub_100B22E3C(char a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  sub_100AE6740(a1, v6, v1 + v5, v7);
}

void sub_100B22EDC(int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_100AE63DC(a1, v9, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_100B23010(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  QueueSynchronizer.conditionalSync<A>(_:)();
  return v4(a1);
}

void sub_100B23104(char a1)
{
  type metadata accessor for UUID();

  sub_100AE6074(a1);
}

uint64_t sub_100B231D4()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100B233E8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100AAEEB8(a1, *(v3 + 16), *(v3 + 24), v3 + v7, *v8, *(v8 + 8), a3);
}

uint64_t sub_100B234C0()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B23690()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B23864(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100AAEBC0(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_100B23934()
{
  v1 = (type metadata accessor for OwnedDeviceKeyRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  sub_100016590(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B23B40(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100ABCE7C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B23C44()
{
  v1 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100ABD1C8(v2, v3);
}

uint64_t sub_100B23CF0()
{
  v1 = type metadata accessor for ShareRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100B23F44()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v16 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100B2420C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100A952A8(v0);
}

void sub_100B242D0(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyAlignmentRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for KeySyncMetadata(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100AD111C(a1, v11, v12, v1 + v4, v1 + v7, v1 + v10, v13);
}

uint64_t sub_100B24438()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100AD2E7C(v5, v6, v7, v0 + v2, v8);
}

void sub_100B245B0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OwnedDeviceKeyRecord(0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_100AD26E8(a1, v7, v1 + v4, v8);
}

uint64_t sub_100B24688(uint64_t a1)
{
  type metadata accessor for KeyAlignmentRecord(0);

  return sub_100AD19A0(a1);
}

uint64_t sub_100B246FC(uint64_t a1)
{
  v4 = *(type metadata accessor for KeySyncMetadata(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100AD1C58(a1, v6, v7, v1 + v5);
}

uint64_t sub_100B247F4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B24988(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v7, v3 + v6, v8);
}

uint64_t sub_100B24B38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100ADFAF8(a1, v4, v1 + 24, v5);
}

uint64_t sub_100B24BEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100AE23E4(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_100B24CF0()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B24E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100AF2410(a1, v4, v5, v6);
}

uint64_t sub_100B24F0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100AF3DB0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100B25078()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100AF409C(v5, v0 + v2, v6);
}

uint64_t sub_100B25184()
{

  return _swift_deallocObject(v0, 32);
}

Swift::Int sub_100B251CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B54C0, &unk_1013D6900);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = qword_1013D6F68[v10];
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (qword_1013D6F68[*(v18 + v14)] != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B25340()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100AC7A98(v4, v0 + v3);
}

uint64_t sub_100B255F4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100ABFA34(a1, v6, v1 + v5);
}

uint64_t sub_100B25720(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

void sub_100B257A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for KeyAlignmentRecord(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_100AC0234(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_100B259B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AB927C(a1, v4, v1 + 24);
}

uint64_t sub_100B25A64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AB9700(a1, v4, v1 + 24);
}

uint64_t sub_100B25B10(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100AB9B88(a1, v1 + 16);
}

uint64_t sub_100B25C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B25CD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100AA79B4(a1, v4, v5, v7, v6);
}

uint64_t sub_100B25DC0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords) = *(v0 + 24);
}

uint64_t sub_100B25E48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = a2(0);
  return a3(a1 + *(v7 + 24), v6) & 1;
}

uint64_t sub_100B25F90()
{
  v1 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_100A9E100(v0 + v2, v6, v7, v8);
}

uint64_t sub_100B26114()
{
  v1 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100AA213C(v3, v0 + v2, v4);
}

uint64_t sub_100B261E4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = (v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a3(v10, v3 + v6, v3 + v9, v12, v13);
}

uint64_t sub_100B26308()
{
  v1 = *(type metadata accessor for SessionTokenRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100A9C5BC(v3, v0 + v2, v5, v6);
}

uint64_t sub_100B26418(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A99424(a1, v1);
}

uint64_t sub_100B264B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100AC8778(v0);
}

uint64_t sub_100B26554()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v6 = (v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);

  v8(v0 + v6 + v5[11], v1);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100B266B8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100AC7468(v5, v0 + v2, v6);
}

uint64_t sub_100B26794(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A99A48(a1, v1);
}

uint64_t sub_100B2682C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1002ECF7C();
}

uint64_t sub_100B268E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100AC8778(v0);
}

uint64_t sub_100B26994()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100A98F8C(v0);
}

uint64_t sub_100B26A7C(unsigned __int8 *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  Transaction.capture()();
  return v2(v3 == 1);
}

void sub_100B26AC8(char a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100AEC050(a1, v1 + v4, v7, v8, v9);
}

void sub_100B26BB8(uint64_t a1, char a2)
{
  type metadata accessor for UUID();

  sub_100AEC3A0(a1, a2 & 1);
}

unint64_t sub_100B26C84()
{
  result = qword_1016B55D0;
  if (!qword_1016B55D0)
  {
    sub_1000BC580(&qword_1016A5880, &unk_1013B3270);
    sub_10000768C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100B26D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B55D0);
  }

  return result;
}

unint64_t sub_100B26D40()
{
  result = qword_1016B55D8;
  if (!qword_1016B55D8)
  {
    sub_1000BC580(&qword_101696970, &qword_10138C490);
    sub_10000768C(&qword_1016BA0B0, type metadata accessor for BeaconEstimatedLocation, &unk_1013E4120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B55D8);
  }

  return result;
}

uint64_t sub_100B26DF4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100A92198(v7, a1, v4, v5, v6);
}

uint64_t sub_100B26EB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A947AC(a1, v4, v5, v6);
}

uint64_t sub_100B26F6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100A92B74(a1, a2, v6);
}

uint64_t sub_100B2701C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100A93070(a1, a2, v2);
}

uint64_t sub_100B270C4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100A955E8(a1, a2, v2);
}

uint64_t sub_100B271CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100B27284(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

id sub_100B27360()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100AD7D6C(v0 + v2, v4, v6, v7);
}

uint64_t sub_100B27408(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_100AD8568(a1, v4, v5, v6, v7);
}

uint64_t sub_100B275CC(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100B27654()
{
  v1 = (type metadata accessor for LeashRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B277B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100B27804(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *a1;

  return a3(v12, v7, v8, v3 + v6, v10, v11);
}

uint64_t sub_100B278C0()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B27A34(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100B27A84(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2);
}

unint64_t sub_100B27AD8()
{
  result = qword_1016B55F8;
  if (!qword_1016B55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B55F8);
  }

  return result;
}

unint64_t sub_100B27B2C()
{
  result = qword_1016B5600;
  if (!qword_1016B5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5600);
  }

  return result;
}

uint64_t sub_100B27B98(uint64_t a1)
{

  sub_100ACBF00(sub_100B27BE8, a1);
}

unint64_t sub_100B27C00()
{
  result = qword_1016B5658;
  if (!qword_1016B5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5658);
  }

  return result;
}

unint64_t sub_100B27C78()
{
  result = qword_1016B5660;
  if (!qword_1016B5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5660);
  }

  return result;
}

unint64_t sub_100B27CD0()
{
  result = qword_1016B5668;
  if (!qword_1016B5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5668);
  }

  return result;
}

unint64_t sub_100B28010(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000045;
    if (a1 != 2)
    {
      v4 = 0xD000000000000049;
    }

    v5 = 0xD000000000000047;
    if (!a1)
    {
      v5 = 0xD000000000000044;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 == 6)
    {
      v1 = 0xD00000000000004BLL;
    }

    else
    {
      v1 = 0xD000000000000036;
    }

    v2 = 0xD000000000000049;
    if (a1 != 4)
    {
      v2 = 0xD00000000000004BLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100B28108(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v53[-v10];
  ObjectType = swift_getObjectType();
  v13 = *(a2 + 56);
  v57 = 0x66u >> a3;
  v14 = v13((0x66u >> a3) & 1, (0x2Bu >> a3) & 1, ObjectType, a2);
  v15 = v14;
  (*(a2 + 80))(v14, ObjectType, a2);
  v16 = v11;
  Date.timeIntervalSinceNow.getter();
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v17 < 9.22337204e18)
  {
    v56 = 0x2Bu >> a3;
    v16 = v17;
    if (qword_101694420 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_5:
  v58 = v16 & ~(v16 >> 63);
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177A470);
  (*(v6 + 16))(v9, v11, v5);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v54 = v15;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v59 = v22;
    *v21 = 136447490;
    v55 = v22;
    if (a3 <= 3u)
    {
      v33 = 0xE800000000000000;
      v34 = 0x7265776F50776F6CLL;
      v35 = 0xE900000000000072;
      v36 = 0x65776F5068676968;
      if (a3 != 2)
      {
        v36 = 0x4F7265776F506E6FLL;
        v35 = 0xED0000694669576ELL;
      }

      if (a3)
      {
        v34 = 0x6F506D756964656DLL;
        v33 = 0xEB00000000726577;
      }

      if (a3 <= 1u)
      {
        v29 = v34;
      }

      else
      {
        v29 = v36;
      }

      if (a3 <= 1u)
      {
        v30 = v33;
      }

      else
      {
        v30 = v35;
      }
    }

    else
    {
      v23 = 0xEF6C6C65436E4F79;
      v24 = 0x7265747461426E6FLL;
      v25 = 0xEF79627261654E6ELL;
      v26 = 0x6F696E61706D6F63;
      if (a3 != 7)
      {
        v26 = 0x6857796669746F6ELL;
        v25 = 0xEF646E756F466E65;
      }

      if (a3 != 6)
      {
        v24 = v26;
        v23 = v25;
      }

      v27 = 0xED00006C6C65436ELL;
      v28 = 0x4F7265776F506E6FLL;
      if (a3 != 4)
      {
        v28 = 0x7265747461426E6FLL;
        v27 = 0xEF694669576E4F79;
      }

      if (a3 <= 5u)
      {
        v29 = v28;
      }

      else
      {
        v29 = v24;
      }

      if (a3 <= 5u)
      {
        v30 = v27;
      }

      else
      {
        v30 = v23;
      }
    }

    v37 = sub_1000136BC(v29, v30, &v59);

    *(v21 + 4) = v37;
    *(v21 + 12) = 1024;
    v38 = v56 & 1;
    v39 = v54;
    *(v21 + 14) = v57 & 1;
    *(v21 + 18) = 1024;
    *(v21 + 20) = v38;
    *(v21 + 24) = 2080;
    v40 = 0x4669577265776F70;
    v41 = 0xEB00000000694669;
    v42 = 0x5779726574746162;
    if (v39 != 2)
    {
      v42 = 0x4379726574746162;
      v41 = 0xEB000000006C6C65;
    }

    v43 = 0xE90000000000006CLL;
    if (v39)
    {
      v40 = 0x6C65437265776F70;
    }

    else
    {
      v43 = 0xE900000000000069;
    }

    if (v39 <= 1)
    {
      v44 = v40;
    }

    else
    {
      v44 = v42;
    }

    if (v39 <= 1)
    {
      v45 = v43;
    }

    else
    {
      v45 = v41;
    }

    v46 = sub_1000136BC(v44, v45, &v59);

    *(v21 + 26) = v46;
    *(v21 + 34) = 2082;
    sub_100B286F8();
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = *(v6 + 8);
    v50(v9, v5);
    v51 = sub_1000136BC(v47, v49, &v59);

    *(v21 + 36) = v51;
    *(v21 + 44) = 2048;
    v32 = v58;
    *(v21 + 46) = v58;
    _os_log_impl(&_mh_execute_header, v19, v20, "Publish delay: policy:%{public}s onBattery: %{BOOL}d, onWiFi: %{BOOL}d, powerMode: %s, next publish date: %{public}s, delay: %lld.", v21, 0x36u);
    swift_arrayDestroy();

    v50(v11, v5);
  }

  else
  {

    v31 = *(v6 + 8);
    v31(v9, v5);
    v31(v11, v5);
    return v58;
  }

  return v32;
}

unint64_t sub_100B286F8()
{
  result = qword_1016969A0;
  if (!qword_1016969A0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016969A0);
  }

  return result;
}

uint64_t sub_100B28750()
{
  if (qword_101694940 != -1)
  {
LABEL_14:
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v0 = sub_101073B8C(v14);

  v1 = 0;
  v2 = *(v0 + 16);
  v3 = _swiftEmptyArrayStorage;
LABEL_3:
  v4 = (v0 + 40 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v1;
    v5 = v4 + 2;
    v6 = *(v4 - 1);
    v7 = *v4;

    v8._countAndFlagsBits = v6;
    v8._object = v7;
    v9 = _findStringSwitchCase(cases:string:)(&off_1016074D0, v8);

    v4 = v5;
    if (v9 < 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100A5B6E4(0, *(v3 + 2) + 1, 1, v3);
      }

      v11 = *(v3 + 2);
      v10 = *(v3 + 3);
      if (v11 >= v10 >> 1)
      {
        v3 = sub_100A5B6E4((v10 > 1), v11 + 1, 1, v3);
      }

      *(v3 + 2) = v11 + 1;
      v3[v11 + 32] = v9;
      goto LABEL_3;
    }
  }

  v12 = sub_1011298FC(v3);

  return v12;
}

unint64_t sub_100B28924()
{
  result = qword_1016B5670;
  if (!qword_1016B5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5670);
  }

  return result;
}

uint64_t sub_100B28A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MemberSharingCircle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100B28B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MemberSharingCircle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100B28C14(uint64_t a1)
{
  result = type metadata accessor for MemberSharingCircle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100B28C94(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = sub_1010E09D0(*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8), 0);
  *(inited + 40) = v8;
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.itemSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v9 = String.init(format:arguments:)();

  return v9;
}

uint64_t sub_100B28E4C(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = sub_1010E09D0(*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8), 0);
  *(inited + 40) = v8;
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.itemSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v9 = String.init(format:arguments:)();

  return v9;
}

uint64_t sub_100B29004()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v6 = type metadata accessor for ItemShareInviteReceivedAirTagUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(v6 + 24)), *(v0 + *(v6 + 24) + 8), 0);
  *(inited + 40) = v7;
  v8 = (v0 + *(v6 + 28));
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != 0x676154726941 || v10 != 0xE600000000000000)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v9 == 0x676154726961 && v10 == 0xE600000000000000;
    if ((v12 & 1) == 0 && !v14)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v15 = String.init(format:arguments:)();

  return v15;
}

uint64_t sub_100B29280()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v6 = type metadata accessor for ItemShareInviteReceivedAirTagWithBlockedMembersUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(v6 + 24)), *(v0 + *(v6 + 24) + 8), 0);
  *(inited + 40) = v7;
  v8 = (v0 + *(v6 + 28));
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != 0x676154726941 || v10 != 0xE600000000000000)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v9 == 0x676154726961 && v10 == 0xE600000000000000;
    if ((v12 & 1) == 0 && !v14)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v15 = String.init(format:arguments:)();

  return v15;
}

uint64_t sub_100B294F8(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v8 = (v1 + *(a1 + 20));
  v9 = v8[1];
  *(inited + 32) = *v8;
  *(inited + 40) = v9;
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.itemSharing(_:), v3);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v10 = String.init(format:arguments:)();

  return v10;
}

unint64_t sub_100B296B4()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6564496572616873;
  *(inited + 40) = 0xEF7265696669746ELL;
  type metadata accessor for MemberSharingCircle(0);
  v1 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v3;
}

uint64_t sub_100B2979C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B2984C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100B297C8(uint64_t a1)
{
  *(a1 + 8) = sub_100B297F8();
  result = sub_10030FE78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B297F8()
{
  result = qword_1016B58D8;
  if (!qword_1016B58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B58D8);
  }

  return result;
}

uint64_t sub_100B2984C(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryDecodingError.decodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

Swift::Int sub_100B29A1C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32228(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[5];
          if (v12[1] >= v13)
          {
            break;
          }

          v14 = v12[4];
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12[1] = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1000BC4D4(&qword_1016B5C98, &qword_1013D7318);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_100B31648(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100B29B78()
{
  v0 = sub_100B11100(&off_10160D020);
  result = sub_1002FFC04(&unk_10160D040);
  off_1016B58E0 = v0;
  return result;
}

void *sub_100B29BB8(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100024980(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = 0;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v1[5] = PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016B5D30, &qword_1013D7460);
  swift_allocObject();
  v1[6] = PassthroughSubject.init()();
  v1[8] = 0;
  v1[9] = _swiftEmptyDictionarySingleton;
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    v19 = v12;
    swift_once();
    v12 = v19;
  }

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C380, "BeaconStoreFileManager init.", 28, 2, _swiftEmptyArrayStorage);
  v2[3] = v25;
  v13 = v2[6];
  sub_1000BC4D4(&qword_1016B5D38, &qword_1013D7468);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v2[7] = v14;
  aBlock[4] = sub_100B3B26C;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648D98;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100024980(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v16 = v23;
  v17 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v16, v17);
  (*(v21 + 8))(v7, v22);

  return v2;
}

void sub_100B2A17C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v1 = [objc_opt_self() defaultManager];
    if (qword_101694E78 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for URL();
  sub_1000076D4(v7, qword_10177C070);
  v8 = NSFileManager.entryCount(directory:)();
  if (qword_101695470 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177CD50);
  v9 = NSFileManager.entryCount(directory:)();
  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177C0C0);
  v10 = NSFileManager.entryCount(directory:)();
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BA08);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218496;
    *(v14 + 4) = v8;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v9;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "RecordCount: OwnedBeaconRecord: %ld OwnedBeaconRecord: %ld BeaconNamingRecord: %ld", v14, 0x20u);
  }
}

uint64_t sub_100B2A4C0@<X0>(void (*a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v68 = a2;
  v65 = a3;
  v66 = a1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v62 - v11;
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v69 = v4;
  v16 = *(v4 + 8);
  v16(v12, v3);
  objc_autoreleasePoolPop(v15);
  v17 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v68 = v3;
  v18 = v3;
  v19 = v9;
  v66 = v16;
  v16(v12, v18);
  objc_autoreleasePoolPop(v17);
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v70 = 0;
  LODWORD(v9) = [v21 moveItemAtURL:v24 toURL:v26 error:&v70];

  if (v9)
  {
    v63 = v19;
    v28 = v70;
    v29 = v14;
  }

  else
  {
    v30 = v70;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v31 = [v20 defaultManager];
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    v70 = 0;
    v38 = [v31 replaceItemAtURL:v34 withItemAtURL:v36 backupItemName:0 options:1 resultingItemURL:0 error:&v70];

    v29 = v14;
    if ((v38 & 1) == 0)
    {
      v59 = v70;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v60 = v68;
      v61 = v66;
      v66(v19, v68);
      return (v61)(v14, v60);
    }

    v63 = v19;
    v39 = v70;

    v67 = 0;
  }

  v40 = v68;
  v41 = v64;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000076D4(v42, qword_10177BA08);
  v43 = v29;
  (*(v69 + 16))(v41, v29, v40);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v70 = v47;
    *v46 = 136315138;
    sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v41;
    v50 = v40;
    v52 = v51;
    v66(v49, v50);
    v53 = sub_1000136BC(v48, v52, &v70);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "Tombstoned record %s", v46, 0xCu);
    sub_100007BAC(v47);
  }

  else
  {

    v66(v41, v40);
    v50 = v40;
  }

  v54 = v69;
  v55 = *(v69 + 32);
  v56 = v65;
  v55(v65, v43, v50);
  v57 = *(type metadata accessor for BeaconStoreFileRecord(0) + 20);
  v55(v56 + v57, v63, v50);
  return (*(v54 + 56))(v56 + v57, 0, 1, v50);
}

uint64_t sub_100B2AABC@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v30 = *(v2 + 8);
  v30(v5, v1);
  objc_autoreleasePoolPop(v8);
  v9 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v32 = 0;
  LODWORD(v5) = [v9 removeItemAtURL:v11 error:&v32];

  if (v5)
  {
    v13 = v32;
    v14 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Deleted record %@", 17, 2, v16);

    v20 = 1;
  }

  else
  {
    v21 = v32;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v32 = v22;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Could not delete record %@", 26, 2, v25);

    v20 = 0;
  }

  result = (v30)(v7, v1);
  *v31 = v20;
  return result;
}

uint64_t sub_100B2AEE8@<X0>(uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v57 = a3;
  v64 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for UUID();
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v69 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v14 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v56 = type metadata accessor for DirectorySequence();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = objc_opt_self();
  v19 = [v53 defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v72 = *(v9 + 48);
  v73 = v9 + 48;
  if (v72(v16, 1, v8) == 1)
  {
    LOBYTE(v20) = 0;
    goto LABEL_24;
  }

  v20 = 0;
  v21 = v9 + 32;
  v71 = *(v9 + 32);
  v22 = (v9 + 8);
  v66 = (v70 + 48);
  v59 = (v70 + 8);
  v60 = (v70 + 32);
  v63 = xmmword_101385D80;
  v61 = v6;
  v62 = v5;
  v67 = v21;
  v68 = v18;
  do
  {
    v54 = v20;
    while (1)
    {
      v71(v13, v16, v8);
      if ((URL.hasDirectoryPath.getter() & 1) == 0)
      {
        break;
      }

      (*v22)(v13, v8);
LABEL_6:
      DirectorySequence.next()();
      if (v72(v16, 1, v8) == 1)
      {
        LOBYTE(v20) = v54;
        goto LABEL_24;
      }
    }

    v23 = v69;
    URL.deletingPathExtension()();
    URL.lastPathComponent.getter();
    v70 = *v22;
    v70(v23, v8);
    UUID.init(uuidString:)();

    if ((*v66)(v5, 1, v6) == 1)
    {
      sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
      v24 = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v25 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = v63;
      sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_100008C00();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Skipping file with unexpected name: %@", 38, 2, v26);

      v70(v13, v8);
      v6 = v61;
      v5 = v62;
      v18 = v68;
      goto LABEL_6;
    }

    v30 = v65;
    (*v60)(v65, v5, v6);
    v31 = static UUID.== infix(_:_:)();
    v18 = v68;
    if ((v31 & 1) == 0)
    {
      (*v59)(v30, v6);
      v70(v13, v8);
      goto LABEL_6;
    }

    v32 = [v53 defaultManager];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v74 = 0;
    LODWORD(v52) = [v32 removeItemAtURL:v34 error:&v74];

    if (v52)
    {
      v36 = v74;
      v54 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v52 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v37 = swift_allocObject();
      *(v37 + 16) = v63;
      sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v39;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_100008C00();
      v40 = v51;
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v52, "Deleted record %@", 17, 2, v37);

      v54 = 1;
      v41 = v65;
    }

    else
    {
      v42 = v74;
      v43 = _convertNSErrorToError(_:)();

      swift_willThrow();
      LODWORD(v58) = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v44 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v45 = swift_allocObject();
      *(v45 + 16) = v63;
      v74 = v43;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_100008C00();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v44, "Could not delete record %@", 26, 2, v45);

      v58 = 0;
      v6 = v61;
      v5 = v62;
      v41 = v65;
      v18 = v68;
    }

    (*v59)(v41, v6);
    v70(v13, v8);
    DirectorySequence.next()();
    v49 = v72(v16, 1, v8);
    v20 = v54;
  }

  while (v49 != 1);
LABEL_24:
  result = (*(v55 + 8))(v18, v56);
  *v57 = v20 & 1;
  return result;
}

void sub_100B2B870(void x0_0, uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v15 = objc_autoreleasePoolPush();
  v11 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  objc_autoreleasePoolPop(v11);
  v13 = objc_autoreleasePoolPush();
  v16 = v10;
  v17 = v2;
  v18 = a1;
  sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v13);
  v12(v10, v4);
  objc_autoreleasePoolPop(v15);
}

uint64_t sub_100B2BA38@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v105 = a2;
  v106 = a4;
  v5 = type metadata accessor for CryptoError();
  v102 = *(v5 - 8);
  v103 = v5;
  v6 = __chkstk_darwin(v5);
  v98 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v101 = &v85 - v9;
  __chkstk_darwin(v8);
  v100 = &v85 - v10;
  v93 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v93);
  v95 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v94);
  v96 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v99 = *(v13 - 8);
  __chkstk_darwin(v13);
  v104 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v85 - v20;
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_100024980(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v22(v21, v15);
  if (aBlock == v113)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v84 = v23;
      swift_once();
      v23 = v84;
    }

    result = os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "record call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
    v25 = v106;
    *(v106 + 32) = 0;
    *v25 = 0u;
    v25[1] = 0u;
    return result;
  }

  v26 = Data.init(contentsOf:options:)();
  if (v4)
  {

    v28 = v106;
    *(v106 + 32) = 0;
    *v28 = 0u;
    v28[1] = 0u;
    return result;
  }

  v29 = v27;
  v30 = v26;
  v92 = 0;
  v31 = static os_log_type_t.info.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C380;
  v88 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  v89 = xmmword_101385D80;
  *(v33 + 16) = xmmword_101385D80;
  v87 = sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  v90 = sub_100008C00();
  *(v33 + 64) = v90;
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Reading from record file: %@", 28, 2, v33);

  v37 = *(v105 + 24);
  v38 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100B3B27C;
  *(v39 + 24) = v37;
  v111 = sub_10040B9F8;
  v112 = v39;
  aBlock = _NSConcreteStackBlock;
  v108 = 1107296256;
  v109 = sub_10013FE14;
  v110 = &unk_101648D70;
  v40 = _Block_copy(&aBlock);

  dispatch_sync(v38, v40);
  _Block_release(v40);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  __chkstk_darwin(v41);
  *(&v85 - 4) = v37;
  *(&v85 - 3) = v30;
  v91 = v30;
  *(&v85 - 2) = v29;
  v42 = v92;
  OS_dispatch_queue.sync<A>(execute:)();
  v39 = v104;
  if (v42)
  {
    v43 = v32;
    v104 = v29;
    v44 = v42;
    goto LABEL_21;
  }

  v92 = 0;
  v30 = aBlock;
  v86 = v108;
  (*(v99 + 16))(v104, v97, v13);
  if (qword_101694E78 != -1)
  {
    goto LABEL_32;
  }

LABEL_13:
  sub_1000076D4(v13, qword_10177C070);
  sub_100024980(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v99 + 8))(v39, v13);
    v45 = objc_autoreleasePoolPush();
    v46 = v96;
    v47 = v30;
    v48 = v86;
    v49 = v92;
    sub_1012C2DF4();
    v50 = v49;
    if (!v49)
    {
      objc_autoreleasePoolPop(v45);
      v51 = v106;
      *(v106 + 24) = v94;
      v51[4] = sub_100024980(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
      v52 = sub_1000280DC(v51);
      v53 = type metadata accessor for OwnedBeaconRecord;
LABEL_30:
      sub_100029420(v46, v52, v53);
      sub_100016590(v47, v48);
      return sub_100016590(v91, v29);
    }
  }

  else
  {
    if (qword_101695470 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v13, qword_10177CD50);
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v99 + 8))(v39, v13);
    if ((v54 & 1) == 0)
    {
      v78 = static os_log_type_t.error.getter();
      v79 = swift_allocObject();
      *(v79 + 16) = v89;
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v90;
      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = v81;
      *(v79 + 32) = v80;
      *(v79 + 40) = v82;
      os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v32, "Unsupported baseURL: %@", 23, 2, v79);
      sub_100016590(v30, v86);
      v74 = v91;
      v75 = v29;
      goto LABEL_25;
    }

    v45 = objc_autoreleasePoolPush();
    v46 = v95;
    v47 = v30;
    v48 = v86;
    v55 = v92;
    sub_1012C2C18();
    v50 = v55;
    if (!v55)
    {
      objc_autoreleasePoolPop(v45);
      v83 = v106;
      *(v106 + 24) = v93;
      v83[4] = sub_100024980(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
      v52 = sub_1000280DC(v83);
      v53 = type metadata accessor for SharedBeaconRecord;
      goto LABEL_30;
    }
  }

  v43 = v32;
  v104 = v29;
  objc_autoreleasePoolPop(v45);
  sub_100016590(v47, v48);
  v44 = v50;
LABEL_21:
  v92 = 0;
  aBlock = v44;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v56 = v100;
  v57 = v103;
  v58 = swift_dynamicCast();
  v60 = v101;
  v59 = v102;
  if (!v58)
  {

    v69 = static os_log_type_t.error.getter();
    v70 = swift_allocObject();
    *(v70 + 16) = v89;
    aBlock = v44;
    swift_errorRetain();
    v71 = String.init<A>(describing:)();
    v72 = v90;
    *(v70 + 56) = &type metadata for String;
    *(v70 + 64) = v72;
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v43, "Error reading BeaconRecord: %@", 30, 2, v70);

    v74 = v91;
    v75 = v104;
LABEL_25:
    sub_100016590(v74, v75);

    v76 = v106;
    *(v106 + 32) = 0;
    *v76 = 0u;
    v76[1] = 0u;
    return result;
  }

  (*(v59 + 32))(v60, v56, v57);
  v61 = static os_log_type_t.error.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = v89;
  v63 = *(v59 + 16);
  v63(v98, v60, v57);
  v64 = String.init<A>(describing:)();
  v65 = v90;
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v65;
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v43, "Error decrypting BeaconRecord: %@", 33, 2, v62);

  if (*(v105 + 32))
  {
    sub_100024980(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    v67 = swift_allocError();
    v63(v68, v60, v57);

    sub_101042538(v67);
    sub_100016590(v91, v104);

    (*(v59 + 8))(v60, v57);
  }

  else
  {
    sub_100016590(v91, v104);
    (*(v59 + 8))(v60, v57);
  }

  v77 = v106;
  *(v106 + 32) = 0;
  *v77 = 0u;
  v77[1] = 0u;
}

uint64_t sub_100B2C7A8()
{
  v5._object = 0x800000010135B5A0;
  v5._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v5);
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v6 = objc_autoreleasePoolPush();
  type metadata accessor for Optional();
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_100B2C8A0@<X0>(void *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v101 = a5;
  v90 = a6;
  v94 = a3;
  v95 = a4;
  v96 = a1;
  v97 = a2;
  v100 = a7;
  v92 = type metadata accessor for CryptoError();
  v89 = *(v92 - 8);
  v7 = __chkstk_darwin(v92);
  v88 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v93 = &v82 - v10;
  __chkstk_darwin(v9);
  v91 = &v82 - v11;
  v99 = type metadata accessor for URL();
  v12 = *(v99 - 8);
  v13 = __chkstk_darwin(v99);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = &v82 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v82 - v22;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v21, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100024980(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v18 + 8);
  v24(v21, v17);
  v24(v23, v17);
  if (aBlock == v111)
  {
    v25 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v81 = v25;
      swift_once();
      v25 = v81;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C380, "record(for uuid:) call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
    return (*(*(v101 - 8) + 56))(v100, 1, 1);
  }

  v27 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v28 = v98;
  URL.appendingPathExtension(_:)();
  v31 = *(v12 + 8);
  v29 = v12 + 8;
  v30 = v31;
  v32 = v99;
  v31(v15, v99);
  objc_autoreleasePoolPop(v27);
  v33 = v102;
  v34 = Data.init(contentsOf:options:)();
  if (v33)
  {

    v30(v28, v32);
    return (*(*(v101 - 8) + 56))(v100, 1, 1);
  }

  v87 = v34;
  v97 = v35;
  v86 = v29;
  v36 = static os_log_type_t.debug.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v37 = qword_10177C380;
  v83 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v38 = swift_allocObject();
  v82 = xmmword_101385D80;
  *(v38 + 16) = xmmword_101385D80;
  sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  v41 = v40;
  *(v38 + 56) = &type metadata for String;
  v84 = sub_100008C00();
  *(v38 + 64) = v84;
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  v85 = v37;
  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v37, "Reading from LocalStorageBacked file: %@", 40, 2, v38);

  v42 = v96;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111 = v42[9];
  v44 = v111;
  v42[9] = 0x8000000000000000;
  v46 = sub_100771D58(v94, v95);
  v47 = v44[2];
  v48 = (v45 & 1) == 0;
  v49 = v47 + v48;
  if (__OFADD__(v47, v48))
  {
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v41) = v45;
  if (v44[3] >= v49)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_38;
    }

    v42[9] = v44;
    if ((v45 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_17:
    while (1)
    {
      v52 = v44[7];
      v53 = v52[v46];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        break;
      }

      v52[v46] = v55;
      swift_endAccess();
      v56 = v42[8];
      v54 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v54)
      {
        goto LABEL_36;
      }

      v42[8] = v57;
      if (__ROR8__(0x1CAC083126E978D5 * v57 + 0x10624DD2F1A9FB8, 3) <= 0x4189374BC6A7EEuLL)
      {
        v46 = sub_100B2D828(v42);
        v59 = v58;

        v61 = sub_1012BB02C(v60);
        v63 = v62;

        if ((v63 & 1) != 0 || v61 < 10001)
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          sub_1000076D4(v67, qword_10177BA08);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.info.getter();
        }

        else
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          sub_1000076D4(v64, qword_10177BA08);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();
        }

        v68 = v66;

        if (os_log_type_enabled(v65, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock = v70;
          *v69 = 136446210;
          v46 = sub_1000136BC(v46, v59, &aBlock);

          *(v69 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v65, v68, "readStatistics:\n%{public}s", v69, 0xCu);
          sub_100007BAC(v70);
        }

        else
        {
        }

        v42 = v96;
      }

      v42 = v42[3];
      v71 = v42[9];
      v72 = swift_allocObject();
      *(v72 + 16) = sub_10088FFBC;
      *(v72 + 24) = v42;
      v109 = sub_10040B9F8;
      v110 = v72;
      aBlock = _NSConcreteStackBlock;
      v106 = 1107296256;
      v107 = sub_10013FE14;
      v108 = &unk_101648D20;
      v41 = _Block_copy(&aBlock);

      dispatch_sync(v71, v41);
      _Block_release(v41);
      LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

      if ((v71 & 1) == 0)
      {
        __chkstk_darwin(v73);
        v74 = v87;
        *(&v82 - 4) = v42;
        *(&v82 - 3) = v74;
        *(&v82 - 2) = v97;
        OS_dispatch_queue.sync<A>(execute:)();
        v75 = aBlock;
        v76 = v106;
        v77 = type metadata accessor for Optional();
        v78 = v90;
        v104 = *(v90 + 8);
        WitnessTable = swift_getWitnessTable();
        v103 = *(v78 + 16);
        v80 = swift_getWitnessTable();
        sub_100B2F330(v75, v76, v77, WitnessTable, v80);
        v30(v98, v99);
        sub_100016590(v75, v76);
        return sub_100016590(v87, v97);
      }

LABEL_37:
      __break(1u);
LABEL_38:
      sub_101006344();
      v44 = v111;
      v42[9] = v111;
      if ((v41 & 1) == 0)
      {
LABEL_16:
        sub_1000464E0(&v111);
        sub_1010036DC(v46, v94, v95, v111, v44);
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_100FE8BB4(v49, isUniquelyReferenced_nonNull_native);
  v44 = v111;
  v50 = sub_100771D58(v94, v95);
  if ((v41 & 1) == (v51 & 1))
  {
    v46 = v50;
    v42[9] = v44;
    if ((v41 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B2D828(uint64_t a1)
{
  swift_beginAccess();

  sub_100B37820(v1);
  v16 = v2;
  sub_100B29A1C(&v16);

  v3 = *(v16 + 16);
  if (v3)
  {
    v4 = v16 + 56;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v4 - 8);
      v16 = *(v4 - 16);
      v17 = v6;
      swift_bridgeObjectRetain_n();
      v7._countAndFlagsBits = 8250;
      v7._object = 0xE200000000000000;
      String.append(_:)(v7);
      v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v8);

      v9 = v16;
      v10 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100A5B2CC(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100A5B2CC((v11 > 1), v12 + 1, 1, v5);
      }

      v4 += 32;
      *(v5 + 2) = v12 + 1;
      v13 = &v5[16 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v16 = v5;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
  v14 = BidirectionalCollection<>.joined(separator:)();

  return v14;
}

uint64_t sub_100B2DA4C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for DirectorySequence();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = objc_autoreleasePoolPush();
  if (qword_101694460 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177A500);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v14);
  v44 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  v15 = [objc_opt_self() defaultManager];
  v39 = v13;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v16 = v6;
  DirectorySequence.next()();
  v41 = v8;
  v17 = *(v8 + 48);
  if (v17(v3, 1, v7) != 1)
  {
    v42 = *(v41 + 32);
    v18 = (v41 + 8);
    do
    {
      v42(v11, v3, v7);
      v19 = v17;
      v20 = objc_autoreleasePoolPush();
      sub_1005FEDCC(v11, v43, &v45, &v44);
      v21 = v20;
      v17 = v19;
      objc_autoreleasePoolPop(v21);
      (*v18)(v11, v7);
      DirectorySequence.next()();
    }

    while (v19(v3, 1, v7) != 1);
  }

  (*(v37 + 8))(v16, v38);
  v22 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138BBE0;
  v25 = v45;
  v26 = v45[2];
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = v26;
  sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v27 = v39;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = sub_100008C00();
  *(v24 + 72) = v28;
  *(v24 + 80) = v30;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Found %i records at %@", 22, 2, v24);

  if (v25[2])
  {
    v31 = type metadata accessor for KeyAlignmentRecord(0);
    v32 = *(v31 - 8);
    v33 = v40;
    sub_100034F3C(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v40, type metadata accessor for KeyAlignmentRecord);

    (*(v41 + 8))(v27, v7);
    return (*(v32 + 56))(v33, 0, 1, v31);
  }

  else
  {

    (*(v41 + 8))(v27, v7);
    v35 = type metadata accessor for KeyAlignmentRecord(0);
    return (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
  }
}

uint64_t sub_100B2DFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v40 = a2;
  v2 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v54 = type metadata accessor for UUID();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016B5D00, &qword_1013D7408);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  if (qword_1016947A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v13 = type metadata accessor for URL();
    v14 = sub_1000076D4(v13, qword_10177AEC8);
    v15 = sub_100AF4F94(v14);
    v16 = 0;
    v17 = 0;
    v18 = v15[8];
    v42 = v15 + 8;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v41 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v44 = v5 + 16;
    v48 = v5;
    v49 = v4;
    v50 = v15;
    v51 = (v5 + 8);
    v47 = v12;
    v45 = v10;
    if ((v20 & v18) != 0)
    {
      break;
    }

LABEL_6:
    if (v41 <= v16 + 1)
    {
      v23 = v16 + 1;
    }

    else
    {
      v23 = v41;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v41)
      {
        v36 = sub_1000BC4D4(&qword_1016B5D08, &unk_1013D7410);
        (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
        v21 = 0;
        goto LABEL_15;
      }

      v21 = v42[v22];
      ++v16;
      if (v21)
      {
        v53 = v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  while (1)
  {
    v53 = v17;
    v22 = v16;
LABEL_14:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v50;
    v28 = v48;
    (*(v48 + 16))(v46, v50[6] + *(v48 + 72) * v26, v54);
    v29 = *(v27[7] + 8 * v26);
    v30 = sub_1000BC4D4(&qword_1016B5D08, &unk_1013D7410);
    v31 = *(v30 + 48);
    v10 = v45;
    (*(v28 + 32))();
    *&v10[v31] = v29;
    (*(*(v30 - 8) + 56))(v10, 0, 1, v30);

    v24 = v22;
    v4 = v49;
    v12 = v47;
    v17 = v53;
LABEL_15:
    sub_1000D2AD8(v10, v12, &qword_1016B5D00, &qword_1013D7408);
    v32 = sub_1000BC4D4(&qword_1016B5D08, &unk_1013D7410);
    v33 = (*(*(v32 - 8) + 48))(v12, 1, v32);
    if (v33 == 1)
    {

      found = type metadata accessor for NotifyWhenFoundRecord(0);
      return (*(*(found - 8) + 56))(v40, 1, 1, found);
    }

    v34 = *&v12[*(v32 + 48)];
    __chkstk_darwin(v33);
    *(&v40 - 2) = v52;
    sub_1012BC72C(sub_100B3B198, v34, v4);

    v5 = type metadata accessor for NotifyWhenFoundRecord(0);
    v35 = *(v5 - 8);
    if ((*(v35 + 48))(v4, 1, v5) != 1)
    {
      break;
    }

    sub_10000B3A8(v4, &qword_10169E328, &unk_10139D740);
    (*v51)(v12, v54);
    v16 = v24;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  v39 = v40;
  sub_100029420(v4, v40, type metadata accessor for NotifyWhenFoundRecord);
  (*(v35 + 56))(v39, 0, 1, v5);
  return (*v51)(v12, v54);
}

void *sub_100B2E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  v27 = v15;
  v28 = v16;
  v29 = v3;
  v30 = v12;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v4)
  {
    v26 = a3;
    v31[6] = 0;
    v25 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    v23 = *(v8 + 16);
    v23(v11, a1, a2);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v24, "Publishing record changed: %@", 29, 2, v18);

    v31[3] = a2;
    v31[4] = v26;
    v22 = sub_1000280DC(v31);
    v23(v22, v14, a2);
    PassthroughSubject.send(_:)();
    (*(v8 + 8))(v14, a2);
    return sub_100007BAC(v31);
  }

  return result;
}

void sub_100B2E838(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a3;
  isa = a1;
  v76 = a5;
  v7 = type metadata accessor for URLResourceValues();
  v83 = *(v7 - 8);
  v84 = v7;
  __chkstk_darwin(v7);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v80 = type metadata accessor for UUID();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v87 = *(v82 - 8);
  v10 = __chkstk_darwin(v82);
  v77 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v85 = &v72 - v13;
  __chkstk_darwin(v12);
  v15 = &v72 - v14;
  v16 = type metadata accessor for SystemInfo.DeviceLockState();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v72 - v21;
  static SystemInfo.lockState.getter();
  (*(v17 + 104))(v20, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v16);
  sub_100024980(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v23 = *(v17 + 8);
  v23(v20, v16);
  v23(v22, v16);
  if (v91 == v90)
  {
    v24 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v71 = v24;
      swift_once();
      v24 = v71;
    }

    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  else
  {
    v26 = v88;
    v27 = v89;
    sub_100B3AD54(a2, v89, a4[1], a4[2]);
    if (!v26)
    {
      v30 = v28;
      v31 = v29;
      v32 = sub_1010B6FB0(v28, v29, 0);
      v74 = v30;
      v75 = v31;
      v33 = v32;
      v35 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v33, v35);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v73 = a4[5];
      v73(v27, a4);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = a4;
      v37 = v87 + 8;
      v88 = *(v87 + 8);
      v38 = v27;
      v39 = a2;
      v40 = v82;
      v88(v15, v82);
      v41 = v78;
      (v36[4])(v38, v36);
      v72 = v39;
      v73(v38, v36);
      v42 = v37;
      v43 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      v44 = v77;
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v45 = v88;
      v88(v44, v40);
      objc_autoreleasePoolPop(v43);
      v46 = v15;
      v47 = v40;
      v87 = v42;
      v45(v46, v40);
      (*(v79 + 8))(v41, v80);
      v48 = v81;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v49 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      [(objc_class *)isa writeToURL:v51 atomically:1];

      objc_autoreleasePoolPop(v49);
      v53 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v54 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v55 = swift_allocObject();
      v80 = xmmword_101385D80;
      *(v55 + 16) = xmmword_101385D80;
      sub_100024980(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = sub_100008C00();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      v59 = v85;
      os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "Writing to file: %@", 19, 2, v55);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v80;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v61 = NSFileProtectionKey;
      v62 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v64 = [objc_opt_self() defaultManager];
      sub_100695108(v63);

      type metadata accessor for FileAttributeKey(0);
      sub_100024980(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v65 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v66 = String._bridgeToObjectiveC()();

      v91 = 0;
      LODWORD(v58) = [v64 setAttributes:v65 ofItemAtPath:v66 error:&v91];

      if (v58)
      {
        v67 = v91;
        URL.setResourceValues(_:)();
        v68 = v75;
        v69 = v74;
        (*(v83 + 8))(v48, v84);

        sub_100016590(v69, v68);
        (*(*(v89 - 8) + 16))(v76, v72);
      }

      else
      {
        v70 = v91;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v74, v75);
        (*(v83 + 8))(v48, v84);
      }

      v88(v59, v47);
    }
  }
}

uint64_t sub_100B2F280@<X0>(void *a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v9;

  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = v8;
    a5[1] = v10;
  }

  return result;
}

void sub_100B2F330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_autoreleasePoolPush();
  sub_100B2F3D4(v5, a1, a2, a3, a4, a5, &v12);
  objc_autoreleasePoolPop(v11);
}

void *sub_100B2F3D4(void x0_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void x5_0, void *a5)
{
  result = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v6)
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v10 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10138BBE0;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    v15 = sub_100008C00();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v15;
    *(v11 + 72) = v16;
    *(v11 + 80) = v17;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Error decoding %@: %@", 21, 2, v11);

    result = swift_willThrow();
    *a5 = v6;
  }

  return result;
}

uint64_t sub_100B2F54C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(v1 + 16));
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  static NSFileManager.removeDirectory(url:)();
  return 0;
}

void sub_100B2F70C(uint64_t a1)
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error purging storage %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }
}

void sub_100B2F860(uint64_t a1)
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purging all cache storage", v4, 2u);
  }

  type metadata accessor for Transaction();
  swift_allocObject();
  v5 = swift_weakInit();
  __chkstk_darwin(v5);
  static Transaction.named<A>(_:with:)();

  sub_100B2FA24();
}

void sub_100B2FA24()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v32 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (qword_101694BE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BA08);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Purging local cache storage", v18, 2u);
  }

  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v2, qword_10177BA58);
  v32[0] = *(v3 + 16);
  v32[1] = v3 + 16;
  (v32[0])(v6, v19, v2);
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = *(v3 + 8);
  v20(v6, v2);
  sub_100B2F54C(v8);
  v20(v8, v2);
  if (qword_101694550 != -1)
  {
    swift_once();
  }

  v21 = sub_1000076D4(v2, qword_10177A8D0);
  sub_100B2F54C(v21);

  if (qword_101694970 != -1)
  {
    swift_once();
  }

  v22 = sub_1000076D4(v2, qword_10177B398);
  sub_100B2F54C(v22);

  if (qword_101694928 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v2, qword_10177B2F0);
  sub_100B2F54C(v23);

  sub_100F4CE88();
  URL.appendingPathComponent(_:isDirectory:)();
  v20(v6, v2);
  sub_100B2F54C(v8);

  v20(v8, v2);
  if (qword_1016951F0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000076D4(v2, qword_10177C590);
  sub_100B2F54C(v24);

  if (qword_101694C40 != -1)
  {
    swift_once();
  }

  v25 = sub_1000076D4(v2, qword_1016B58E8);
  sub_100B2F54C(v25);

  if (qword_101694CD0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000076D4(v2, qword_10177BC20);
  sub_100B2F54C(v26);

  if (qword_101694C48 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v2, qword_1016B5900);
  sub_100B2F54C(v27);

  if (qword_101694858 != -1)
  {
    swift_once();
  }

  v28 = sub_1000076D4(v2, qword_10177B0A8);
  (v32[0])(v8, v28, v2);
  v29 = sub_100B2F54C(v8);

  v20(v8, v2);
  swift_errorRetain();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v30 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    v31 = v30;
    swift_once();
    v30 = v31;
  }

  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10177C3D0, "ConfigurationCoordinator resetting by overriding saved config on disk.", 70, 2, _swiftEmptyArrayStorage);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100B3ADEC();
  if (v29)
  {
    swift_willThrow();
  }
}

uint64_t sub_100B301AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v22 = *(a1 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100B3AD30;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101648CA8;
  v13 = _Block_copy(aBlock);
  a2;

  dispatch_sync(v22, v13);
  _Block_release(v13);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
LABEL_9:
    v19 = v14;
    swift_once();
    v14 = v19;
    goto LABEL_7;
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = OS_dispatch_group.wait(timeout:)();
  v15(v10, v4);
  if (v16)
  {
    v17 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      v20 = v17;
      swift_once();
      v17 = v20;
    }

    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C380, "Timed out purging CloudKitData", 30, 2, _swiftEmptyArrayStorage);
  }

  v14 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C388, "Done purging local CloudKit state", 33, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100B304E8(NSObject *a1)
{
  v101 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v98 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v98 - v10;
  __chkstk_darwin(v9);
  v13 = &v98 - v12;
  v14 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    v96 = v14;
    swift_once();
    v14 = v96;
  }

  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C380, "Purging cloud backed storage", 28, 2, _swiftEmptyArrayStorage);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v15 = sub_1000076D4(v1, qword_10177BA58);
  v102 = *(v2 + 16);
  v103 = v15;
  v102(v11);
  URL.appendingPathComponent(_:isDirectory:)();
  v104 = *(v2 + 8);
  v104(v11, v1);
  v16 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v97 = v16;
    swift_once();
    v16 = v97;
  }

  v99 = qword_10177C388;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C388, "Purging local CloudKit state", 28, 2, _swiftEmptyArrayStorage);
  v100 = v13;
  v17 = sub_100B2F54C(v13);
  if (qword_101694E78 != -1)
  {
    swift_once();
  }

  v18 = sub_1000076D4(v1, qword_10177C070);
  v19 = sub_100B2F54C(v18);
  if (v19)
  {
    v20 = v19;

    v17 = v20;
  }

  if (qword_101695470 != -1)
  {
    swift_once();
  }

  v21 = sub_1000076D4(v1, qword_10177CD50);
  v22 = sub_100B2F54C(v21);
  if (v22)
  {
    v23 = v22;

    v17 = v23;
  }

  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000076D4(v1, qword_10177C0C0);
  v25 = sub_100B2F54C(v24);
  if (v25)
  {
    v26 = v25;

    v17 = v26;
  }

  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v1, qword_10177A518);
  v28 = sub_100B2F54C(v27);
  if (v28)
  {
    v29 = v28;

    v17 = v29;
  }

  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v30 = sub_1000076D4(v1, qword_10177BF38);
  v31 = sub_100B2F54C(v30);
  if (v31)
  {
    v32 = v31;

    v17 = v32;
  }

  if (qword_101694928 != -1)
  {
    swift_once();
  }

  v33 = sub_1000076D4(v1, qword_10177B2F0);
  v34 = sub_100B2F54C(v33);
  if (v34)
  {
    v35 = v34;

    v17 = v35;
  }

  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  v36 = sub_1000076D4(v1, qword_10177AEC8);
  v37 = sub_100B2F54C(v36);
  if (v37)
  {
    v38 = v37;

    v17 = v38;
  }

  if (qword_1016947B8 != -1)
  {
    swift_once();
  }

  v39 = sub_1000076D4(v1, qword_10177AEF8);
  v40 = sub_100B2F54C(v39);
  if (v40)
  {
    v41 = v40;

    v17 = v41;
  }

  (v102)(v11, v103, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v104(v11, v1);
  v42 = sub_100B2F54C(v8);
  if (v42)
  {
    v43 = v42;

    v17 = v43;
  }

  (v102)(v5, v103, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v44 = v104;
  v104(v5, v1);
  v45 = sub_100B2F54C(v11);
  v44(v11, v1);
  v46 = v8;
  if (v45)
  {

    v17 = v45;
  }

  (v102)(v5, v103, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v47 = v104;
  v104(v5, v1);
  v48 = sub_100B2F54C(v11);
  v47(v11, v1);
  if (v48)
  {

    v17 = v48;
  }

  (v102)(v5, v103, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v49 = v104;
  v104(v5, v1);
  v50 = sub_100B2F54C(v11);
  v49(v11, v1);
  v51 = v46;
  if (v50)
  {

    v17 = v50;
  }

  (v102)(v5, v103, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v52 = v104;
  v104(v5, v1);
  v53 = sub_100B2F54C(v11);
  v52(v11, v1);
  if (v53)
  {

    v17 = v53;
  }

  (v102)(v5, v103, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v54 = v104;
  v104(v5, v1);
  v55 = sub_100B2F54C(v11);
  v54(v11, v1);
  if (v55)
  {

    v17 = v55;
  }

  if (qword_1016954B8 != -1)
  {
    swift_once();
  }

  v56 = sub_1000076D4(v1, qword_10177CDB8);
  v57 = sub_100B2F54C(v56);
  if (v57)
  {
    v58 = v57;

    v17 = v58;
  }

  if (qword_101694F88 != -1)
  {
    swift_once();
  }

  v59 = sub_1000076D4(v1, qword_10177C268);
  v60 = sub_100B2F54C(v59);
  if (v60)
  {
    v61 = v60;

    v17 = v61;
  }

  if (qword_101694460 != -1)
  {
    swift_once();
  }

  v62 = sub_1000076D4(v1, qword_10177A500);
  v63 = sub_100B2F54C(v62);
  if (v63)
  {
    v64 = v63;

    v17 = v64;
  }

  if (qword_101694430 != -1)
  {
    swift_once();
  }

  v65 = sub_1000076D4(v1, qword_10177A4A0);
  v66 = sub_100B2F54C(v65);
  if (v66)
  {
    v67 = v66;

    v17 = v67;
  }

  if (qword_101694EF8 != -1)
  {
    swift_once();
  }

  v68 = sub_1000076D4(v1, qword_10177C140);
  v69 = sub_100B2F54C(v68);
  if (v69)
  {
    v70 = v69;

    v17 = v70;
  }

  if (qword_101695268 != -1)
  {
    swift_once();
  }

  v71 = sub_1000076D4(v1, qword_10177C680);
  v72 = sub_100B2F54C(v71);
  if (v72)
  {
    v73 = v72;

    v17 = v73;
  }

  if (qword_101694568 != -1)
  {
    swift_once();
  }

  v74 = sub_1000076D4(v1, qword_10177A918);
  v75 = sub_100B2F54C(v74);
  if (v75)
  {
    v76 = v75;

    v17 = v76;
  }

  if (qword_101694F30 != -1)
  {
    swift_once();
  }

  v77 = sub_1000076D4(v1, qword_10177C1D0);
  v78 = sub_100B2F54C(v77);
  if (v78)
  {
    v79 = v78;

    v17 = v79;
  }

  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v80 = sub_1000076D4(v1, qword_10177C0D8);
  v81 = sub_100B2F54C(v80);
  if (v81)
  {
    v82 = v81;

    v17 = v82;
  }

  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v83 = sub_1000076D4(v1, qword_10177AC60);
  v84 = sub_100B2F54C(v83);
  if (v84)
  {
    v85 = v84;

    v17 = v85;
  }

  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  v86 = sub_1000076D4(v1, qword_10177C090);
  v87 = sub_100B2F54C(v86);
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    if (!v17)
    {
      goto LABEL_98;
    }

    swift_errorRetain();
    v88 = v17;
  }

  swift_errorRetain();
  v89 = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_101385D80;
  v105 = v88;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v91 = String.init<A>(describing:)();
  v93 = v92;
  *(v90 + 56) = &type metadata for String;
  *(v90 + 64) = sub_100008C00();
  *(v90 + 32) = v91;
  *(v90 + 40) = v93;
  os_log(_:dso:log:_:_:)(v89, &_mh_execute_header, v99, "Error deleting local state: %{public}@", 38, 2, v90);

LABEL_98:
  v94 = v104;
  v104(v51, v1);
  v94(v100, v1);
  dispatch_group_leave(v101);
}

uint64_t sub_100B312E8()
{

  return v0;
}

uint64_t sub_100B31338()
{
  sub_100B312E8();

  return swift_deallocClassInstance();
}

uint64_t sub_100B31390()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_1016B58E8);
  sub_1000076D4(v0, qword_1016B58E8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100B314EC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_1016B5900);
  sub_1000076D4(v0, qword_1016B5900);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100B31648(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v85 = v8 + 2;
    v86 = v8[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100B31BD8((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *(v22 + 2);
            v25 = *(v22 + 3);
            v26 = *v22;
            v27 = v23[1];
            *v22 = *v23;
            v22[1] = v27;
            *v23 = v26;
            *(v23 + 2) = v24;
            *(v23 + 3) = v25;
          }

          ++v21;
          v19 -= 32;
          v11 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v39 = v8[3];
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_100A5B430((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v40;
    v41 = v8 + 4;
    v42 = &v8[2 * v5 + 4];
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = v8[4];
          v44 = v8[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v8[2 * v40];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v41[2 * v5];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v8[2 * v40];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v41[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v41[2 * v5 - 2];
        v81 = *v80;
        v82 = &v41[2 * v5];
        v83 = v82[1];
        sub_100B31BD8((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v8[2];
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove(&v41[2 * v5], v82 + 2, 16 * (v84 - 1 - v5));
        v8[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[2 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v8[2 * v40];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v41[2 * v5];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 24);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(v34 - 8) >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 16);
    v36 = *v34;
    v37 = *(v34 - 16);
    *v34 = *(v34 - 32);
    *(v34 + 16) = v37;
    *(v34 - 16) = v35;
    *(v34 - 8) = v32;
    *(v34 - 32) = v36;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100B31BD8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 3) < *(v6 + 3))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_100B31DDC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100B31E68(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100B31E7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3A38, &qword_1013D7320);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100B322A0(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5D20, &qword_1013D7438);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5D28, &unk_1013D7440);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016B5590, &qword_1013D6A88);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5578, &unk_1013D6A70);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for OwnedBeaconRecord(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016B5580, &unk_1013D7450);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016B5580, &unk_1013D7450);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016B5590, &qword_1013D6A88);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016B5590, &qword_1013D6A88);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &unk_1013D7440;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016B5578, &unk_1013D6A70);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016B5578, &unk_1013D6A70);
        sub_10000B3A8(v12, &qword_1016B5D20, &qword_1013D7438);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016B5590, &qword_1013D6A88);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C3188(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5D20, &qword_1013D7438);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5D28, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5D28, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5D28, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016B5578, &unk_1013D6A70);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for OwnedBeaconRecord);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for OwnedBeaconRecord);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_1016B3A78, &qword_1013D4820);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for OwnedBeaconRecord);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016B5590, &qword_1013D6A88);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016B5580, &unk_1013D7450);
  result = sub_10000B3A8(v57, &unk_1016A9A20, &qword_10138B280);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_100B33054(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5D10, &unk_1013D7420);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5D18, &qword_101410E50);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016B54F0, &qword_1013D7430);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016B54E0, &qword_1013D6938);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for SharedBeaconRecord(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016B54E8, &unk_1013D6940);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016B54E8, &unk_1013D6940);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016B54F0, &qword_1013D7430);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016B54F0, &qword_1013D7430);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &qword_101410E50;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016B54E0, &qword_1013D6938);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016B54E0, &qword_1013D6938);
        sub_10000B3A8(v12, &qword_1016B5D10, &unk_1013D7420);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016B54F0, &qword_1013D7430);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C322C(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5D10, &unk_1013D7420);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5D18, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5D18, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5D18, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016B54E0, &qword_1013D6938);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for SharedBeaconRecord);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for SharedBeaconRecord);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_10169EFB8, &unk_1013B12F0);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for SharedBeaconRecord);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016B54F0, &qword_1013D7430);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016B54E8, &unk_1013D6940);
  result = sub_10000B3A8(v57, &unk_101698C30, &unk_101392630);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_100B33E08(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5CB0, &unk_1013D7350);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5CB8, &unk_1013EB240);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016A5988, &qword_1013B3490);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for MemberSharingCircle(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016A5980, &unk_1013B3480);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016A5988, &qword_1013B3490);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016A5988, &qword_1013B3490);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &unk_1013EB240;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016A5978, &qword_101410D20);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016A5978, &qword_101410D20);
        sub_10000B3A8(v12, &qword_1016B5CB0, &unk_1013D7350);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016A5988, &qword_1013B3490);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C4440(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5CB0, &unk_1013D7350);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5CB8, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5CB8, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5CB8, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016A5978, &qword_101410D20);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for MemberSharingCircle);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for MemberSharingCircle);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_1016B3CB0, &unk_1013D7360);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for MemberSharingCircle);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016A5988, &qword_1013B3490);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016A5980, &unk_1013B3480);
  result = sub_10000B3A8(v57, &unk_101698BC0, &qword_10138C440);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_100B34BBC(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5CA0, &qword_1013D7328);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5CA8, &unk_1013D7330);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016A7838, &unk_1013EB250);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for OwnerSharingCircle(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016A7830, &unk_1013D69E0);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016A7838, &unk_1013EB250);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016A7838, &unk_1013EB250);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &unk_1013D7330;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016A7828, &unk_1013D7340);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016A7828, &unk_1013D7340);
        sub_10000B3A8(v12, &qword_1016B5CA0, &qword_1013D7328);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016A7838, &unk_1013EB250);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C44E4(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5CA0, &qword_1013D7328);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5CA8, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5CA8, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5CA8, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016A7828, &unk_1013D7340);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for OwnerSharingCircle);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for OwnerSharingCircle);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for OwnerSharingCircle);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016A7838, &unk_1013EB250);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016A7830, &unk_1013D69E0);
  result = sub_10000B3A8(v57, &unk_1016AFA00, &qword_10138C4D0);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_100B35970()
{
  v0 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v3 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v8 = *(v4 + 48);
  v35 = v4 + 48;
  v37 = v8;
  v9 = _swiftEmptyArrayStorage;
  if (v8(v2, 1, v3) != 1)
  {
    v10 = 0;
    v33 = v4;
    v34 = v7;
    v36 = (v7 + 32) & ~v7;
    v16 = _swiftEmptyArrayStorage + v36;
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = sub_100029420(v2, v6, type metadata accessor for LocalFindableAccessoryRecord);
      if (v10)
      {
        v9 = v17;
        v14 = __OFSUB__(v10--, 1);
        if (v14)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v18 = v17[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        sub_1000BC4D4(&qword_1016B3A80, &qword_1013D4828);
        v21 = *(v4 + 72);
        v22 = v36;
        v9 = swift_allocObject();
        result = j__malloc_size(v9);
        if (!v21)
        {
          goto LABEL_34;
        }

        v23 = result - v22;
        if ((result - v22) == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_35;
        }

        v25 = v3;
        v26 = v23 / v21;
        v9[2] = v20;
        v9[3] = 2 * (v23 / v21);
        v27 = v9 + v22;
        v28 = v17[3] >> 1;
        v29 = v28 * v21;
        if (v17[2])
        {
          if (v9 < v17 || v27 >= v17 + v36 + v29)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v16 = &v27[v29];
        v31 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v3 = v25;
        v4 = v33;
        v14 = __OFSUB__(v31, 1);
        v10 = v31 - 1;
        if (v14)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_100029420(v6, v16, type metadata accessor for LocalFindableAccessoryRecord);
      v16 += *(v4 + 72);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v17 = v9;
      if (v37(v2, 1, v3) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v10 = 0;
LABEL_3:
  result = sub_10000B3A8(v2, &qword_1016A9A30, &unk_1013BD120);
  v12 = v9[3];
  if (v12 >= 2)
  {
    v13 = v12 >> 1;
    v14 = __OFSUB__(v13, v10);
    v15 = v13 - v10;
    if (v14)
    {
      goto LABEL_36;
    }

    v9[2] = v15;
  }

  return v9;
}

void *sub_100B35CB8(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5CE0, &unk_1013D73C0);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5CE8, &qword_101410DA0);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016B5550, &qword_1013D73D0);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5540, &qword_1013EB270);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for OwnerPeerTrust(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016B5548, &unk_1013D6A20);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016B5548, &unk_1013D6A20);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016B5550, &qword_1013D73D0);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016B5550, &qword_1013D73D0);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &qword_101410DA0;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016B5540, &qword_1013EB270);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016B5540, &qword_1013EB270);
        sub_10000B3A8(v12, &qword_1016B5CE0, &unk_1013D73C0);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016B5550, &qword_1013D73D0);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C4588(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5CE0, &unk_1013D73C0);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5CE8, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5CE8, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5CE8, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016B5540, &qword_1013EB270);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for OwnerPeerTrust);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for OwnerPeerTrust);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_10169EF80, &qword_10139FCC0);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for OwnerPeerTrust);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016B5550, &qword_1013D73D0);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016B5548, &unk_1013D6A20);
  result = sub_10000B3A8(v57, &qword_101697798, &unk_10138C4F0);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_100B36A6C(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5CF0, &qword_1013D73D8);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5CF8, &unk_1013D73E0);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016B5568, &unk_1013D6A40);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5558, &unk_1013D6A30);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for MemberPeerTrust(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016B5560, &unk_1013D73F0);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016B5560, &unk_1013D73F0);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016B5568, &unk_1013D6A40);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016B5568, &unk_1013D6A40);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &unk_1013D73E0;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016B5558, &unk_1013D6A30);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016B5558, &unk_1013D6A30);
        sub_10000B3A8(v12, &qword_1016B5CF0, &qword_1013D73D8);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016B5568, &unk_1013D6A40);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C462C(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5CF0, &qword_1013D73D8);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5CF8, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5CF8, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5CF8, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016B5558, &unk_1013D6A30);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for MemberPeerTrust);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for MemberPeerTrust);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_1016B3BF8, &qword_1013D4988);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for MemberPeerTrust);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016B5568, &unk_1013D6A40);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016B5560, &unk_1013D73F0);
  result = sub_10000B3A8(v57, &qword_101698C10, &unk_10138C1E0);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}