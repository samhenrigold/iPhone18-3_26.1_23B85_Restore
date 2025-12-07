void sub_1000C0B38(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v4 = a4;
  LODWORD(v83) = a2;
  v77 = *a4;
  v7 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v7 - 8);
  v81 = v73 - v8;
  v9 = type metadata accessor for Credentials(0);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = __chkstk_darwin(v9);
  v78 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v73 - v12;
  v14 = type metadata accessor for SecureLocation(0);
  v15 = __chkstk_darwin(v14);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v73 - v18;
  v20 = qword_1005A7EE8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000A6F0(v21, qword_1005DFB98);
  sub_1000CA264(a1, v19, type metadata accessor for SecureLocation);
  sub_1000CA264(a1, v17, type metadata accessor for SecureLocation);
  v82 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v76 = v13;
    v26 = v25;
    v27 = swift_slowAlloc();
    v75 = v4;
    v73[1] = v27;
    v84 = v27;
    *v26 = 136446466;
    v28 = sub_10008AEA8(*&v19[*(v14 + 60)]);
    v29 = v14;
    v30 = a1;
    v32 = v31;
    v74 = a3;
    sub_1000CA2CC(v19, type metadata accessor for SecureLocation);
    v33 = sub_10000D01C(v28, v32, &v84);
    a1 = v30;
    v14 = v29;

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    v34 = sub_10008BC88();
    v36 = v35;
    a3 = v74;
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    v37 = sub_10000D01C(v34, v36, &v84);

    *(v26 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v23, v24, "publishLocation with reason %{public}s location: %s", v26, 0x16u);
    swift_arrayDestroy();
    v4 = v75;

    v13 = v76;
  }

  else
  {

    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v19, type metadata accessor for SecureLocation);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v38 = sub_100021BB4();

  if ((v38 & 1) == 0 && (v83 & 1) == 0)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Not a location publishing device. Not publishing location", v41, 2u);
    }

    sub_1000BEB1C();
    v42 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:12 userInfo:0];
LABEL_13:
    v43 = v42;
    Transaction.capture()();

    return;
  }

  if (*(a1 + *(v14 + 60)) == 8)
  {
    v44 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer;
    if (*(a3 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer))
    {

      DispatchTimer.cancel()();

      *(a3 + v44) = 0;
    }

    sub_10010BEB0(a1);
    Transaction.capture()();
    goto LABEL_33;
  }

  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v45 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v46 = sub_10000A6F0(v45, qword_1005AF7C0);
  os_unfair_lock_lock(v46);
  v47 = v46 + *(v45 + 28);
  v48 = v81;
  sub_100005F04(v47, v81, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v46);
  if ((*(v79 + 48))(v48, 1, v80) == 1)
  {
    sub_100002CE0(v48, &qword_1005A9DA8, &unk_1004D1130);
    v84 = 0;
    v85 = 0;
    v86 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Unable to get credentials for server SubscribeAndFetch", v51, 2u);
    }

    v42 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    goto LABEL_13;
  }

  v52 = v78;
  sub_1000C9DE8(v48, v78, type metadata accessor for Credentials);
  sub_1000C9DE8(v52, v13, type metadata accessor for Credentials);
  v53 = [objc_opt_self() currentDevice];
  if (!v53 || (v54 = v53, v55 = [v53 uniqueDeviceIdentifier], v54, !v55))
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Unable to get device identifier for server SubscribeAndFetch", v67, 2u);
    }

    v68 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    goto LABEL_31;
  }

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OS_dispatch_queue.sync<A>(execute:)();
  v59 = v85;
  if (!v85)
  {

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "No APS token. Not proceeding", v72, 2u);
    }

    v68 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:13 userInfo:0];
LABEL_31:
    v69 = v68;
    Transaction.capture()();

    goto LABEL_32;
  }

  v82 = v84;
  v60 = swift_allocBox();
  v62 = v61;
  sub_1000CA264(a1, v61, type metadata accessor for SecureLocation);
  v83 = 0;
  *v62 = v56;
  v62[1] = v58;

  __chkstk_darwin(v63);
  v73[-10] = a3;
  v73[-9] = v60;
  v73[-8] = j_j___s10FindMyBase11TransactionC7captureyyF;
  v73[-7] = v4;
  v64 = v82;
  v73[-6] = a1;
  v73[-5] = v64;
  v73[-4] = v59;
  v73[-3] = v56;
  v73[-2] = v58;
  v73[-1] = v13;
  static Transaction.named<A>(_:with:)();

LABEL_32:
  sub_1000CA2CC(v13, type metadata accessor for Credentials);
LABEL_33:
}

uint64_t sub_1000C1590(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005A98B8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v13 = 136446978;
    *(v13 + 4) = sub_10000D01C(0xD000000000000043, 0x80000001004DF550, v23);
    *(v13 + 12) = 2082;
    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    v22 = a5;
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = sub_10000D01C(v14, v15, v23);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2082;
    if (a4)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0;
    }

    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v19 = sub_10000D01C(v17, v18, v23);

    *(v13 + 24) = v19;
    *(v13 + 32) = 1024;
    *(v13 + 34) = v22 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s findmyId: %{public}s policy: %{public}s stopMonitoringActivePolicy: %{BOOL}d.", v13, 0x26u);
    swift_arrayDestroy();
  }

  v20 = type metadata accessor for Transaction();
  __chkstk_darwin(v20);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1000C1830(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v11 - 8);
  v13 = &v62[-v12];
  v74 = type metadata accessor for Credentials(0);
  v14 = *(v74 - 8);
  v15 = __chkstk_darwin(v74);
  v17 = &v62[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = v16;
  __chkstk_darwin(v15);
  v68 = &v62[-v18];
  v19 = qword_1005A7EE8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10000A6F0(v20, qword_1005DFB98);

  v22 = a2;
  v76 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v75 = v14;
  v66 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v65 = v8;
    v27 = v26;
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v27 = 134218242;
    *(v27 + 4) = *(a1 + 16);

    *(v27 + 12) = 2080;
    v28 = [v22 clientApp];
    v63 = v24;
    v29 = a3;
    v30 = v28;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v13;
    v33 = v17;
    v34 = a1;
    v35 = a4;
    v37 = v36;

    a3 = v29;
    v38 = sub_10000D01C(v31, v37, &aBlock);
    a4 = v35;
    a1 = v34;
    v17 = v33;
    v13 = v32;

    *(v27 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v23, v63, "Unsubscribe for %ld IDs for clientApp %s", v27, 0x16u);
    sub_100004984(v64);

    v8 = v65;

    if (*(a1 + 16))
    {
LABEL_5:
      if (qword_1005A8098 != -1)
      {
        swift_once();
      }

      v39 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
      v40 = sub_10000A6F0(v39, qword_1005AF7C0);
      os_unfair_lock_lock(v40);
      sub_100005F04(v40 + *(v39 + 28), v13, &qword_1005A9DA8, &unk_1004D1130);
      os_unfair_lock_unlock(v40);
      v41 = v75;
      if ((*(v75 + 48))(v13, 1, v74) == 1)
      {
        sub_100002CE0(v13, &qword_1005A9DA8, &unk_1004D1130);
        aBlock = 0;
        v78 = 0;
        LOBYTE(v79) = 2;
        sub_1000C7488();
        swift_willThrowTypedImpl();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v83 = v45;
          *v44 = 136315138;
          aBlock = 0;
          v78 = 0;
          LOBYTE(v79) = 2;
          v46 = String.init<A>(describing:)();
          v48 = sub_10000D01C(v46, v47, &v83);

          *(v44 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v42, v43, "Unsubscribe - failed to get credentials error %s", v44, 0xCu);
          sub_100004984(v45);
        }

        Transaction.capture()();
      }

      else
      {
        v53 = v13;
        v54 = v68;
        sub_1000C9DE8(v53, v68, type metadata accessor for Credentials);
        v76 = *(a3 + 320);
        sub_1000CA264(v54, v17, type metadata accessor for Credentials);
        v55 = (*(v41 + 80) + 56) & ~*(v41 + 80);
        v56 = swift_allocObject();
        v56[2] = a1;
        v56[3] = a3;
        v57 = v66;
        v56[4] = v66;
        v56[5] = j___s10FindMyBase11TransactionC7captureyyF;
        v56[6] = a4;
        sub_1000C9DE8(v17, v56 + v55, type metadata accessor for Credentials);
        v81 = sub_1000C8B9C;
        v82 = v56;
        aBlock = _NSConcreteStackBlock;
        v78 = 1107296256;
        v79 = sub_100020828;
        v80 = &unk_10058D760;
        v58 = _Block_copy(&aBlock);

        v59 = v57;

        v60 = v70;
        static DispatchQoS.unspecified.getter();
        v83 = _swiftEmptyArrayStorage;
        sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10004B564(&unk_1005A9700, &qword_1004C3820);
        sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
        v61 = v72;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v58);
        (*(v69 + 8))(v61, v8);
        (*(v71 + 8))(v60, v73);
        sub_1000CA2CC(v54, type metadata accessor for Credentials);
      }
    }
  }

  else
  {

    if (*(a1 + 16))
    {
      goto LABEL_5;
    }
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "No findMyIds specified for Unsubscribe - not proceeding", v51, 2u);
  }

  Transaction.capture()();
}

uint64_t sub_1000C2120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v77 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin(v13);
  v80 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v16 - 8);
  v89 = &v72 - v17;
  v18 = type metadata accessor for Credentials(0);
  v19 = *(v18 - 8);
  v85 = v18;
  v86 = v19;
  v20 = __chkstk_darwin(v18);
  v75 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v21;
  __chkstk_darwin(v20);
  v76 = &v72 - v22;
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v24 = qword_1005A7EE8;

  v88 = a5;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000A6F0(v25, qword_1005DFB98);

  v27 = a2;
  v87 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v73 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v84 = a6;
    v32 = v31;
    v72 = swift_slowAlloc();
    aBlock = v72;
    *v32 = 134218242;
    *(v32 + 4) = *(a1 + 16);

    *(v32 + 12) = 2080;
    v33 = [v27 clientApp];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = a1;
    v36 = a4;
    v37 = a7;
    v38 = v23;
    v40 = v39;

    v41 = sub_10000D01C(v34, v40, &aBlock);
    v23 = v38;
    a7 = v37;
    a4 = v36;
    a1 = v35;

    *(v32 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unsubscribe for %ld IDs for clientApp %s", v32, 0x16u);
    sub_100004984(v72);

    a6 = v84;
  }

  else
  {
  }

  v42 = v89;
  if (*(a1 + 16))
  {
    v43 = a1;
    if (qword_1005A8098 != -1)
    {
      swift_once();
    }

    v44 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
    v45 = sub_10000A6F0(v44, qword_1005AF7C0);
    os_unfair_lock_lock(v45);
    sub_100005F04(v45 + *(v44 + 28), v42, &qword_1005A9DA8, &unk_1004D1130);
    os_unfair_lock_unlock(v45);
    v46 = v86;
    if ((*(v86 + 48))(v42, 1, v85) == 1)
    {
      sub_100002CE0(v42, &qword_1005A9DA8, &unk_1004D1130);
      aBlock = 0;
      v91 = 0;
      LOBYTE(v92) = 2;
      sub_1000C7488();
      swift_willThrowTypedImpl();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v84 = a6;
        v50 = v49;
        v51 = swift_slowAlloc();
        v96 = v51;
        *v50 = 136315138;
        aBlock = 0;
        v91 = 0;
        LOBYTE(v92) = 2;
        v52 = String.init<A>(describing:)();
        v54 = sub_10000D01C(v52, v53, &v96);

        *(v50 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unsubscribe - failed to get credentials error %s", v50, 0xCu);
        sub_100004984(v51);

        a6 = v84;
      }

      v55 = swift_allocError();
      *v56 = 0;
      *(v56 + 8) = 0;
      *(v56 + 16) = 2;
      sub_1004737A8(v55, a4, v88, a6, a7);
    }

    else
    {
      v61 = v76;
      sub_1000C9DE8(v42, v76, type metadata accessor for Credentials);
      v62 = v77;
      v63 = v75;
      sub_1000CA264(v61, v75, type metadata accessor for Credentials);
      v64 = (*(v46 + 80) + 56) & ~*(v46 + 80);
      v65 = swift_allocObject();
      v65[2] = v43;
      v65[3] = v62;
      v66 = v73;
      v65[4] = v73;
      v65[5] = sub_1000C8FE8;
      v65[6] = v23;
      sub_1000C9DE8(v63, v65 + v64, type metadata accessor for Credentials);
      v94 = sub_1000CA9B8;
      v95 = v65;
      aBlock = _NSConcreteStackBlock;
      v91 = 1107296256;
      v92 = sub_100020828;
      v93 = &unk_10058DA30;
      v67 = _Block_copy(&aBlock);

      v68 = v66;

      v69 = v78;
      static DispatchQoS.unspecified.getter();
      v96 = _swiftEmptyArrayStorage;
      sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
      v70 = v80;
      v71 = v83;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v67);
      (*(v82 + 8))(v70, v71);
      (*(v79 + 8))(v69, v81);
      sub_1000CA2CC(v61, type metadata accessor for Credentials);
    }
  }

  else
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "No findMyIds specified for Unsubscribe - not proceeding", v59, 2u);
    }

    sub_1004737A8(0, a4, v88, a6, a7);
  }
}

double sub_1000C2AC4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v119 = a7;
  v122 = a6;
  v123 = a5;
  v114 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchQoS();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  __chkstk_darwin(v13 - 8);
  v117 = &v107 - v14;
  v118 = type metadata accessor for Destination();
  v124 = *(v118 - 8);
  v15 = __chkstk_darwin(v118);
  v108 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v107 - v17;
  v18 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v18 - 8);
  v19 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  __chkstk_darwin(v19);
  v21 = &v107 - v20;
  v22 = type metadata accessor for SecureLocationsSubscription(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a4;
  v127 = *(a4 + 48);
  v128 = a1;
  v125 = a2;
  v126 = a1;
  v129 = a2;
  v130 = a3;
  v121 = a3;
  OS_dispatch_queue.sync<A>(execute:)();
  v26 = (*(v23 + 48))(v21, 1, v22);
  v27 = &off_1005A7000;
  v28 = &unk_1005DF000;
  if (v26 == 1)
  {
    v29 = sub_100002CE0(v21, &qword_1005A9EC8, &unk_1004C3420);
LABEL_13:
    v37 = v118;
    v38 = v124;
    goto LABEL_14;
  }

  sub_1000C9DE8(v21, v25, type metadata accessor for SecureLocationsSubscription);
  if (!*&v25[*(v22 + 32) + 8])
  {
    v29 = sub_1000CA2CC(v25, type metadata accessor for SecureLocationsSubscription);
    goto LABEL_13;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v30 = Data.init(base64Encoded:options:)();
  if (v31 >> 60 == 15)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005DFB98);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "failed to decode server provided push identifier", v35, 2u);
    }

    v116 = 0;
    v36 = 0;
  }

  else
  {
    v53 = v30;
    v54 = v31;
    static String.Encoding.utf8.getter();
    v116 = String.init(data:encoding:)();
    v36 = v55;
    sub_10001A794(v53, v54);
  }

  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000A6F0(v56, qword_1005E0DE0);
  v57 = v125;

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 141558787;
    *(v60 + 4) = 1752392040;
    *(v60 + 12) = 2081;
    v131 = v61;
    aBlock = v116;
    v133 = v36;

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v62 = String.init<A>(describing:)();
    v64 = sub_10000D01C(v62, v63, &v131);
    v28 = &unk_1005DF000;

    *(v60 + 14) = v64;
    *(v60 + 22) = 2160;
    *(v60 + 24) = 1752392040;
    *(v60 + 32) = 2081;
    *(v60 + 34) = sub_10000D01C(v126, v57, &v131);
    _os_log_impl(&_mh_execute_header, v58, v59, "stopLiveLocations: Got handle from server %{private,mask.hash}s for findMyId %{private,mask.hash}s", v60, 0x2Au);
    swift_arrayDestroy();
  }

  v37 = v118;
  v38 = v124;
  v27 = &off_1005A7000;
  v29 = sub_1000CA2CC(v25, type metadata accessor for SecureLocationsSubscription);
  if (v36)
  {
    v51 = v120;
    v41 = v125;
    v52 = v117;
    goto LABEL_30;
  }

LABEL_14:
  if (v27[479] != -1)
  {
    v29 = swift_once();
  }

  v39 = v28[377];
  __chkstk_darwin(v29);
  v41 = v125;
  v40 = v126;
  *(&v107 - 4) = v39;
  *(&v107 - 3) = v40;
  *(&v107 - 2) = v41;

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OS_dispatch_queue.sync<A>(execute:)();

  v42 = aBlock;
  v36 = v133;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000A6F0(v43, qword_1005E0DE0);
  swift_bridgeObjectRetain_n();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = os_log_type_enabled(v44, v45);
  v116 = v42;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    aBlock = v42;
    *v47 = 141558787;
    *(v47 + 4) = 1752392040;
    *(v47 + 12) = 2081;
    v133 = v36;
    v48 = String.init<A>(describing:)();
    v50 = sub_10000D01C(v48, v49, &v131);

    *(v47 + 14) = v50;
    *(v47 + 22) = 2160;
    *(v47 + 24) = 1752392040;
    *(v47 + 32) = 2081;
    *(v47 + 34) = sub_10000D01C(v126, v125, &v131);
    _os_log_impl(&_mh_execute_header, v44, v45, "stopLiveLocations: Got handle from fmf following %{private,mask.hash}s for findMyId %{private,mask.hash}s", v47, 0x2Au);
    swift_arrayDestroy();
    v38 = v124;

    v41 = v125;
  }

  else
  {
  }

  v51 = v120;
  v52 = v117;
  if (!v36)
  {
    goto LABEL_32;
  }

LABEL_30:

  Destination.init(string:)();
  if ((v38[6])(v52, 1, v37) == 1)
  {
    sub_100002CE0(v52, &qword_1005A9280, &qword_1004C27F8);
LABEL_32:
    aBlock = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v65._countAndFlagsBits = 0xD000000000000031;
    v65._object = 0x80000001004DF9A0;
    String.append(_:)(v65);
    v66._countAndFlagsBits = v126;
    v66._object = v41;
    String.append(_:)(v66);
    v67._countAndFlagsBits = 0xD000000000000010;
    v67._object = 0x80000001004DF9E0;
    String.append(_:)(v67);
    v69 = aBlock;
    v68 = v133;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000A6F0(v70, qword_1005E0DE0);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_10000D01C(v69, v68, &aBlock);
      _os_log_impl(&_mh_execute_header, v71, v72, "LiveLocations: %s", v73, 0xCu);
      sub_100004984(v74);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC7D4(v69, v68);

    v75 = type metadata accessor for Transaction();
    __chkstk_darwin(v75);
    v76 = v126;
    *(&v107 - 4) = v51;
    *(&v107 - 3) = v76;
    v77 = v121;
    *(&v107 - 2) = v41;
    *(&v107 - 1) = v77;
    static Transaction.named<A>(_:with:)();
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1004C1900;
    *(v78 + 32) = v122;
    *(v78 + 40) = v119;

    sub_10009D258(v78);

    goto LABEL_53;
  }

  (v38[4])(v115, v52, v37);
  v79 = sub_100123484();
  v125 = v36;
  if (v79)
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_10000A6F0(v80, qword_1005E0DE0);
    v81 = v108;
    (v38[2])(v108, v115, v37);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = v37;
      v85 = v81;
      v86 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      aBlock = v124;
      *v86 = 141558275;
      *(v86 + 4) = 1752392040;
      *(v86 + 12) = 2081;
      sub_10001DFA8(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v90 = v85;
      v37 = v84;
      (v38[1])(v90, v84);
      v91 = sub_10000D01C(v87, v89, &aBlock);

      *(v86 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v82, v83, "LiveLocations: Ending session: %{private,mask.hash}s", v86, 0x16u);
      sub_100004984(v124);
    }

    else
    {

      (v38[1])(v81, v37);
    }
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_10000A6F0(v92, qword_1005E0DE0);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      aBlock = v96;
      *v95 = 136446210;
      *(v95 + 4) = sub_10000D01C(0xD000000000000062, 0x80000001004DFA00, &aBlock);
      _os_log_impl(&_mh_execute_header, v93, v94, "LiveLocations: %{public}s", v95, 0xCu);
      sub_100004984(v96);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC27C(0, 1, 0xD000000000000062, 0x80000001004DFA00);
  }

  v97 = swift_allocObject();
  v98 = v126;
  v97[2] = v51;
  v97[3] = v98;
  v99 = v121;
  v97[4] = v41;
  v97[5] = v99;
  v136 = sub_1000CAB50;
  v137 = v97;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100020828;
  v135 = &unk_10058E430;
  v100 = _Block_copy(&aBlock);

  v101 = v99;
  v102 = v109;
  static DispatchQoS.unspecified.getter();
  v131 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v103 = v111;
  v104 = v114;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v100);
  (*(v113 + 8))(v103, v104);
  (*(v110 + 8))(v102, v112);

  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1004C1900;
  *(v105 + 32) = v122;
  *(v105 + 40) = v119;

  sub_10009D258(v105);

  (v38[1])(v115, v37);
LABEL_53:

  return result;
}

id sub_1000C3DD4(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocation(0);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MotionActivityState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1 + *(v2 + 56), v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != enum case for MotionActivityState.unknown(_:))
  {
    if (v9 == enum case for MotionActivityState.stationary(_:))
    {
      v15 = 1;
      goto LABEL_10;
    }

    if (v9 == enum case for MotionActivityState.walking(_:))
    {
      v15 = 2;
      goto LABEL_10;
    }

    if (v9 == enum case for MotionActivityState.running(_:))
    {
      v15 = 3;
      goto LABEL_10;
    }

    if (v9 == enum case for MotionActivityState.cycling(_:))
    {
      v15 = 4;
      goto LABEL_10;
    }

    if (v9 == enum case for MotionActivityState.automotive(_:))
    {
      v15 = 5;
      goto LABEL_10;
    }

    (*(v6 + 8))(v8, v5);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  sub_1000CA264(a1, v4, type metadata accessor for SecureLocation);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = MotionActivityState.rawValue.getter();
    sub_1000CA2CC(v4, type metadata accessor for SecureLocation);
    *(v13 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unhandled Activity state:%ld", v13, 0xCu);
  }

  else
  {
    sub_1000CA2CC(v4, type metadata accessor for SecureLocation);
  }

  v15 = 0;
LABEL_10:
  v16 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + 24)];
  v17 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + 16)];
  v18 = objc_allocWithZone(BMFindMyLocationChange);

  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v18 initWithIdsHandle:v19 stateChange:1 activityState:v15 latitude:v16 longitude:v17 name:v20];

  return v21;
}

void sub_1000C41FC(uint64_t *a1, void *a2)
{
  v30 = type metadata accessor for SecureLocation(0);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  if (v2)
  {
  }

  else
  {
    v33 = a2;
    v10 = v31;
    v11 = qword_1005A7F20;

    if (v11 != -1)
    {
      v12 = swift_once();
    }

    __chkstk_darwin(v12);
    *(&v29 - 2) = v10;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1000C8450(v10, 0);
    sub_1000C8450(v10, 0);
    a2 = v33;
  }

  if (qword_1005A7F20 != -1)
  {
    v9 = swift_once();
  }

  __chkstk_darwin(v9);
  *(&v29 - 2) = v7;
  *(&v29 - 1) = v8;
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v13 = v32;
  if (v32)
  {
    v14 = v31;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    sub_1000CA264(a1, v6, type metadata accessor for SecureLocation);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v29 = 0;
      v31 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_10000D01C(v14, v13, &v31);
      *(v19 + 12) = 2082;
      v21 = sub_10008AEA8(*&v6[*(v30 + 60)]);
      v23 = v22;
      sub_1000CA2CC(v6, type metadata accessor for SecureLocation);
      v24 = sub_10000D01C(v21, v23, &v31);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "biomeDonation: Writing Biome event for handle: %s, publishReason: %{public}s", v19, 0x16u);
      swift_arrayDestroy();

      a2 = v33;
    }

    else
    {

      sub_1000CA2CC(v6, type metadata accessor for SecureLocation);
    }

    v26 = sub_1000C3DD4(a1);

    [a2 sendEvent:v26];
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005DFB98);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "biomeDonation: Not donating to Biome NO HANDLE", v28, 2u);
    }
  }
}

unint64_t sub_1000C4734(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058AB10, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C4780(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058ABC0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void sub_1000C47CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005A9E68, &qword_1004C33C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1000C8914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    LOBYTE(v49[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v10;
    LOBYTE(v49[0]) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v38 + 1) = v12;
    v13 = v11;
    LOBYTE(v41) = 2;
    sub_1000C8968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v38 = v13;
    v60 = LOBYTE(v49[0]);
    LOBYTE(v49[0]) = 3;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v14;
    v15 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    LOBYTE(v41) = 4;
    v16 = sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v36 = v15;
    v37 = v16;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = a2;
    v17 = v49[0];
    LOBYTE(v41) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v49[0];
    LOBYTE(v49[0]) = 6;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *&v32 = v19;
    v31 = v18;
    sub_10004B564(&qword_1005A9E88, &qword_1004C33D0);
    LOBYTE(v41) = 7;
    sub_1000C89BC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(&v32 + 1) = v49[0];
    LOBYTE(v41) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v49[0];
    v61 = 9;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    *&v41 = v9;
    v23 = v39;
    *(&v41 + 1) = v39;
    v42 = v38;
    v24 = *(&v38 + 1);
    LOBYTE(v43) = v60;
    *(&v43 + 1) = v35;
    v25 = v40;
    *&v44 = v40;
    *(&v44 + 1) = v37;
    *&v45 = v22;
    *(&v45 + 1) = v17;
    *&v46 = v33;
    *(&v46 + 1) = v31;
    v47 = v32;
    v48 = v20;
    sub_1000C7A34(&v41, v49);
    sub_100004984(a1);
    v49[0] = v9;
    v49[1] = v23;
    v49[2] = v38;
    v49[3] = v24;
    v50 = v60;
    v51 = v35;
    v52 = v25;
    v53 = v37;
    v54 = v22;
    v55 = v17;
    v56 = v33;
    v57 = v31;
    v58 = v32;
    v59 = v20;
    sub_1000C792C(v49);
    v26 = v46;
    v27 = v34;
    *(v34 + 64) = v45;
    *(v27 + 80) = v26;
    *(v27 + 96) = v47;
    *(v27 + 112) = v48;
    v28 = v42;
    *v27 = v41;
    *(v27 + 16) = v28;
    v29 = v44;
    *(v27 + 32) = v43;
    *(v27 + 48) = v29;
  }
}

void sub_1000C4F64(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v4];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v6, "LabelledLocations - Updating fetch done to %{BOOL}d", v7, 8u);
  }
}

void sub_1000C50DC(uint64_t a1)
{
  if (a1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFB98);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000D01C(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "LabelledLocations: Error fetching labels after receiving a fetch labels push %s", v4, 0xCu);
      sub_100004984(v5);
    }
  }

  else
  {
    sub_100105768();
    v9 = type metadata accessor for Transaction();
    __chkstk_darwin(v9);
    static Transaction.named<A>(_:with:)();
  }

  Transaction.capture()();
}

void sub_1000C52F0(uint64_t a1, char *a2)
{
  v7 = a2;

  sub_1000BA000(&v7);
  *(a1 + 120) = v7;

  sub_1000C4F64(1);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "FetchLabelledLocations - Completed fetching location labels using decoder and saving them", v5, 2u);
  }
}

void sub_1000C542C(uint64_t a1)
{
  sub_1000AC58C(a1, 1);
  sub_1000A2748();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LabelledLocations: Completed updating locations with updated labels", v4, 2u);
  }

  Transaction.capture()();
}

void sub_1000C5524(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, uint64_t))
{
  v97 = a6;
  v96 = a5;
  v95 = a4;
  v114 = a2;
  v99 = type metadata accessor for SecureLocation(0);
  v8 = *(v99 - 8);
  v9 = __chkstk_darwin(v99);
  v98 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = (&v94 - v12);
  v14 = __chkstk_darwin(v11);
  v100 = &v94 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v94 - v17;
  __chkstk_darwin(v16);
  v20 = &v94 - v19;
  v21 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a3;
  if (*(*(a3 + 120) + 16))
  {
    if (qword_1005A7EF8 != -1)
    {
LABEL_59:
      swift_once();
    }

    v24 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v24);
    v25 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v24 + *(v25 + 28), v23, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v24);

    v26 = *(v23 + 2);
    sub_1000CA2CC(v23, type metadata accessor for SecureLocationsConfig);
    v104 = *(a1 + 16);
    if (!v104)
    {
      v107 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v28 = 0;
    v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v107 = _swiftEmptyArrayStorage;
    v102 = v29;
    v103 = a1 + v29;
    v30 = *(v8 + 72);
    *&v27 = 136315906;
    v109 = v27;
    *&v27 = 136315650;
    v108 = v27;
    *&v27 = 136315394;
    v94 = v27;
    v120 = v13;
    v31 = v100;
    v110 = v18;
    v113 = v20;
    v101 = v30;
    while (1)
    {
      v106 = v28;
      sub_1000CA264(v103 + v30 * v28, v20, type metadata accessor for SecureLocation);
      sub_1000CA264(v20, v18, type metadata accessor for SecureLocation);
      v32 = *(v105 + 120);
      v33 = *(v32 + 16);
      if (!v33)
      {
        goto LABEL_44;
      }

      v34 = 0;
      v112 = v33 - 1;
      v35 = 32;
      v111 = v32;
      while (1)
      {
        v118 = v35;
        v36 = *(v32 + v35 + 32);
        v37 = *(v32 + v35 + 48);
        a1 = *(v32 + v35 + 80);
        v125 = *(v32 + v35 + 64);
        v38 = *(v32 + v35 + 16);
        v123[0] = *(v32 + v35);
        v123[1] = v38;
        v126 = a1;
        v123[2] = v36;
        v124 = v37;
        v119 = *(&v125 + 1);
        v23 = *(&v38 + 1);
        v117 = v38;
        sub_1000C81D0(v123, v122);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        v8 = sub_10000A6F0(v39, qword_1005DFB98);
        sub_1000CA264(v20, v13, type metadata accessor for SecureLocation);
        sub_1000C81D0(v123, v122);
        v116 = v8;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        sub_1000C822C(v123);
        v42 = os_log_type_enabled(v40, v41);
        v115 = v23;
        if (v42)
        {
          v43 = v23;
          v23 = swift_slowAlloc();
          v122[0] = swift_slowAlloc();
          *v23 = v109;

          v44 = sub_10000D01C(v117, v43, v122);

          *(v23 + 4) = v44;
          *(v23 + 6) = 2080;
          if (a1)
          {
            v45 = v119;
          }

          else
          {
            v45 = 1818848800;
          }

          if (a1)
          {
            v46 = a1;
          }

          else
          {
            v46 = 0xE400000000000000;
          }

          v47 = v125;

          v48 = sub_10000D01C(v45, v46, v122);

          *(v23 + 14) = v48;
          *(v23 + 11) = 2080;
          v32 = v111;
          v49 = *v120;
          v50 = v120[1];

          sub_1000CA2CC(v120, type metadata accessor for SecureLocation);
          v51 = sub_10000D01C(v49, v50, v122);
          v20 = v113;

          *(v23 + 3) = v51;
          v13 = v120;
          *(v23 + 16) = 2048;
          *(v23 + 34) = v47;
          _os_log_impl(&_mh_execute_header, v40, v41, "LabelledLocations Checking label %s %s %s %f", v23, 0x2Au);
          swift_arrayDestroy();
          v18 = v110;

          if (a1)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v13, type metadata accessor for SecureLocation);
          if (a1)
          {
            goto LABEL_30;
          }
        }

        if (v114)
        {
          break;
        }

LABEL_30:
        if (v114 & 1) == 0 && a1 && (v119 == *v20 && a1 == *(v20 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v123);
LABEL_36:
        if (v112 == v34)
        {

          goto LABEL_43;
        }

        ++v34;
        v35 = v118 + 88;
        if (v34 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

      v52 = [objc_allocWithZone(CLLocation) initWithLatitude:v124 longitude:?];
      v53 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v20 + 3) longitude:*(v20 + 2)];
      [v52 distanceFromLocation:v53];
      v55 = v54;
      sub_1000C81D0(v123, v122);
      v8 = v116;
      v23 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      sub_1000C822C(v123);
      if (os_log_type_enabled(v23, v56))
      {
        v57 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v122[0] = v8;
        *v57 = v108;
        v58 = v115;

        v59 = v53;
        v60 = v52;
        v61 = sub_10000D01C(v117, v58, v122);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        if (a1)
        {
          v62 = v119;
        }

        else
        {
          v62 = 0x206C696E20;
        }

        if (a1)
        {
          v63 = a1;
        }

        else
        {
          v63 = 0xE500000000000000;
        }

        v64 = v62;
        v52 = v60;
        v53 = v59;
        a1 = sub_10000D01C(v64, v63, v122);
        v32 = v111;

        *(v57 + 14) = a1;
        *(v57 + 22) = 2048;
        *(v57 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v23, v56, "LabelledLocations %s %s Label Distance %f", v57, 0x20u);
        swift_arrayDestroy();
        v13 = v120;

        v18 = v110;
      }

      v20 = v113;
      if (v55 > v26)
      {
        sub_1000C822C(v123);

        goto LABEL_36;
      }

      v65 = v115;

      sub_1000C822C(v123);
      swift_beginAccess();
      v66 = &v18[*(v99 + 64)];
      v67 = v117;
      *v66 = v117;
      *(v66 + 1) = v65;

      v68 = v98;
      sub_1000CA264(v20, v98, type metadata accessor for SecureLocation);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v119 = v52;
        v72 = v65;
        v73 = v71;
        v121 = swift_slowAlloc();
        *v73 = v94;
        v122[0] = v67;
        v122[1] = v72;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v74 = String.init<A>(describing:)();
        v75 = v68;
        v77 = sub_10000D01C(v74, v76, &v121);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        v78 = *v68;
        v79 = v75[1];

        v80 = v75;
        v18 = v110;
        sub_1000CA2CC(v80, type metadata accessor for SecureLocation);
        v81 = sub_10000D01C(v78, v79, &v121);

        *(v73 + 14) = v81;
        _os_log_impl(&_mh_execute_header, v69, v70, "LabelledLocations Adding label %s to location %s", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v68, type metadata accessor for SecureLocation);
      }

LABEL_43:
      v31 = v100;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v18, v31, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1001FCE44(0, v107[2] + 1, 1, v107);
      }

      v83 = v107[2];
      v82 = v107[3];
      if (v83 >= v82 >> 1)
      {
        v107 = sub_1001FCE44((v82 > 1), v83 + 1, 1, v107);
      }

      v84 = v106 + 1;
      sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
      v85 = v107;
      v107[2] = v83 + 1;
      v28 = v84;
      v86 = v101;
      sub_1000C9DE8(v31, v85 + v102 + v83 * v101, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
      v30 = v86;
      if (v28 == v104)
      {
LABEL_58:
        v97(v107, v95, v96);

        return;
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_10000A6F0(v87, qword_1005DFB98);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "LabelledLocations - No labels - nothing to resolve", v90, 2u);
  }

  v91 = v95;
  v92 = v96;
  v93 = v97;

  v93(a1, v91, v92);
}

uint64_t sub_1000C6324(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v98 = a4;
  v116 = a2;
  v101 = type metadata accessor for SecureLocation(0);
  v7 = *(v101 - 8);
  v8 = __chkstk_darwin(v101);
  v100 = (&v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = (&v97 - v11);
  v13 = __chkstk_darwin(v10);
  v102 = &v97 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v97 - v16;
  __chkstk_darwin(v15);
  v19 = &v97 - v18;
  v20 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a3;
  if (*(*(a3 + 120) + 16))
  {
    if (qword_1005A7EF8 != -1)
    {
LABEL_59:
      swift_once();
    }

    v23 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v23);
    v24 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v23 + *(v24 + 28), v22, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v23);

    v25 = *(v22 + 2);
    sub_1000CA2CC(v22, type metadata accessor for SecureLocationsConfig);
    v106 = *(a1 + 16);
    if (!v106)
    {
      v109 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v27 = 0;
    v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v109 = _swiftEmptyArrayStorage;
    v104 = v28;
    v105 = a1 + v28;
    v29 = *(v7 + 72);
    *&v26 = 136315906;
    v111 = v26;
    *&v26 = 136315650;
    v110 = v26;
    *&v26 = 136315394;
    v97 = v26;
    v122 = v12;
    v30 = v102;
    v112 = v17;
    v115 = v19;
    v103 = v29;
    while (1)
    {
      v108 = v27;
      sub_1000CA264(v105 + v29 * v27, v19, type metadata accessor for SecureLocation);
      sub_1000CA264(v19, v17, type metadata accessor for SecureLocation);
      v31 = *(v107 + 120);
      v32 = *(v31 + 16);
      if (!v32)
      {
        goto LABEL_44;
      }

      v33 = 0;
      v114 = v32 - 1;
      v34 = 32;
      v113 = v31;
      while (1)
      {
        v120 = v34;
        v35 = *(v31 + v34 + 32);
        v36 = *(v31 + v34 + 48);
        a1 = *(v31 + v34 + 80);
        v127 = *(v31 + v34 + 64);
        v37 = *(v31 + v34 + 16);
        v125[0] = *(v31 + v34);
        v125[1] = v37;
        v128 = a1;
        v125[2] = v35;
        v126 = v36;
        v121 = *(&v127 + 1);
        v22 = *(&v37 + 1);
        v119 = v37;
        sub_1000C81D0(v125, v124);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        v7 = sub_10000A6F0(v38, qword_1005DFB98);
        sub_1000CA264(v19, v12, type metadata accessor for SecureLocation);
        sub_1000C81D0(v125, v124);
        v118 = v7;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        sub_1000C822C(v125);
        v41 = os_log_type_enabled(v39, v40);
        v117 = v22;
        if (v41)
        {
          v42 = v22;
          v22 = swift_slowAlloc();
          v124[0] = swift_slowAlloc();
          *v22 = v111;

          v43 = sub_10000D01C(v119, v42, v124);

          *(v22 + 4) = v43;
          *(v22 + 6) = 2080;
          if (a1)
          {
            v44 = v121;
          }

          else
          {
            v44 = 1818848800;
          }

          if (a1)
          {
            v45 = a1;
          }

          else
          {
            v45 = 0xE400000000000000;
          }

          v46 = v127;

          v47 = sub_10000D01C(v44, v45, v124);

          *(v22 + 14) = v47;
          *(v22 + 11) = 2080;
          v31 = v113;
          v48 = *v122;
          v49 = v122[1];

          sub_1000CA2CC(v122, type metadata accessor for SecureLocation);
          v50 = sub_10000D01C(v48, v49, v124);
          v19 = v115;

          *(v22 + 3) = v50;
          v12 = v122;
          *(v22 + 16) = 2048;
          *(v22 + 34) = v46;
          _os_log_impl(&_mh_execute_header, v39, v40, "LabelledLocations Checking label %s %s %s %f", v22, 0x2Au);
          swift_arrayDestroy();
          v17 = v112;

          if (a1)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v12, type metadata accessor for SecureLocation);
          if (a1)
          {
            goto LABEL_30;
          }
        }

        if (v116)
        {
          break;
        }

LABEL_30:
        if (v116 & 1) == 0 && a1 && (v121 == *v19 && a1 == *(v19 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v125);
LABEL_36:
        if (v114 == v33)
        {

          goto LABEL_43;
        }

        ++v33;
        v34 = v120 + 88;
        if (v33 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

      v51 = [objc_allocWithZone(CLLocation) initWithLatitude:v126 longitude:?];
      v52 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v19 + 3) longitude:*(v19 + 2)];
      [v51 distanceFromLocation:v52];
      v54 = v53;
      sub_1000C81D0(v125, v124);
      v7 = v118;
      v22 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      sub_1000C822C(v125);
      if (os_log_type_enabled(v22, v55))
      {
        v56 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v124[0] = v7;
        *v56 = v110;
        v57 = v117;

        v58 = v52;
        v59 = v51;
        v60 = sub_10000D01C(v119, v57, v124);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2080;
        if (a1)
        {
          v61 = v121;
        }

        else
        {
          v61 = 0x206C696E20;
        }

        if (a1)
        {
          v62 = a1;
        }

        else
        {
          v62 = 0xE500000000000000;
        }

        v63 = v61;
        v51 = v59;
        v52 = v58;
        a1 = sub_10000D01C(v63, v62, v124);
        v31 = v113;

        *(v56 + 14) = a1;
        *(v56 + 22) = 2048;
        *(v56 + 24) = v54;
        _os_log_impl(&_mh_execute_header, v22, v55, "LabelledLocations %s %s Label Distance %f", v56, 0x20u);
        swift_arrayDestroy();
        v12 = v122;

        v17 = v112;
      }

      v19 = v115;
      if (v54 > v25)
      {
        sub_1000C822C(v125);

        goto LABEL_36;
      }

      v64 = v117;

      sub_1000C822C(v125);
      swift_beginAccess();
      v65 = &v17[*(v101 + 64)];
      v66 = v119;
      *v65 = v119;
      *(v65 + 1) = v64;

      v67 = v100;
      sub_1000CA264(v19, v100, type metadata accessor for SecureLocation);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v121 = v51;
        v71 = v64;
        v72 = v70;
        v123 = swift_slowAlloc();
        *v72 = v97;
        v124[0] = v66;
        v124[1] = v71;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v73 = String.init<A>(describing:)();
        v74 = v67;
        v76 = sub_10000D01C(v73, v75, &v123);

        *(v72 + 4) = v76;
        *(v72 + 12) = 2080;
        v77 = *v67;
        v78 = v74[1];

        v79 = v74;
        v17 = v112;
        sub_1000CA2CC(v79, type metadata accessor for SecureLocation);
        v80 = sub_10000D01C(v77, v78, &v123);

        *(v72 + 14) = v80;
        _os_log_impl(&_mh_execute_header, v68, v69, "LabelledLocations Adding label %s to location %s", v72, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v67, type metadata accessor for SecureLocation);
      }

LABEL_43:
      v30 = v102;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v17, v30, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_1001FCE44(0, v109[2] + 1, 1, v109);
      }

      v82 = v109[2];
      v81 = v109[3];
      if (v82 >= v81 >> 1)
      {
        v109 = sub_1001FCE44((v81 > 1), v82 + 1, 1, v109);
      }

      v83 = v108 + 1;
      sub_1000CA2CC(v19, type metadata accessor for SecureLocation);
      v84 = v109;
      v109[2] = v82 + 1;
      v27 = v83;
      v85 = v103;
      sub_1000C9DE8(v30, v84 + v104 + v82 * v103, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
      v29 = v85;
      if (v27 == v106)
      {
LABEL_58:
        v94 = v98;
        v95 = swift_allocObject();
        v96 = v99;
        *(v95 + 16) = v94;
        *(v95 + 24) = v96;

        sub_1000FE000(v109, 1, sub_1000CA1AC, v95);
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  sub_10000A6F0(v86, qword_1005DFB98);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "LabelledLocations - No labels - nothing to resolve", v89, 2u);
  }

  v90 = v98;
  v91 = swift_allocObject();
  v92 = v99;
  *(v91 + 16) = v90;
  *(v91 + 24) = v92;

  sub_1000FE000(a1, 1, sub_1000CAB58, v91);
}

void sub_1000C71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a3;
  v20 = a4;
  v7 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v10 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v10);
  v11 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v12 = *(v11 + 28);
  sub_1000CA2CC(v10 + v12, type metadata accessor for SecureLocationsConfig);
  sub_1000CA264(a1, v10 + v12, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v10);
  AsyncStreamProvider.yield(value:transaction:)();

  if ((sub_1000BB328() & 1) != 0 || (v13 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex), , os_unfair_lock_lock(v13), sub_1000CA264(v13 + *(v11 + 28), v9, type metadata accessor for SecureLocationsConfig), os_unfair_lock_unlock(v13), , v14 = v9[8], sub_1000CA2CC(v9, type metadata accessor for SecureLocationsConfig), (v14 & 1) == 0))
  {
    sub_1000BB4F0();
  }

  v15 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = a5;
  aBlock[4] = sub_1000C78B8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A8DE8;
  aBlock[3] = &unk_10058CC70;
  v18 = _Block_copy(aBlock);

  [v15 updatedConfigReceived:isa completion:v18];
  _Block_release(v18);
}

unint64_t sub_1000C7488()
{
  result = qword_1005AFA00;
  if (!qword_1005AFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AFA00);
  }

  return result;
}

uint64_t sub_1000C74DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Credentials(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_1000B4C14(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_1000C7660()
{
  result = qword_1005A9DD0;
  if (!qword_1005A9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9DD0);
  }

  return result;
}

uint64_t sub_1000C7708(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsConfig(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1004B3420(a1, v6, v7, v1 + v5, v9, v10);
}

_BYTE *sub_1000C7838@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1000C78D8()
{
  result = qword_1005A9DE8;
  if (!qword_1005A9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9DE8);
  }

  return result;
}

uint64_t sub_1000C7988()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1000ADFD0(v2, v3, v4);
}

uint64_t sub_1000C7AB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1000A14DC(a1, v1);
}

void sub_1000C7B98()
{
  v1 = *(type metadata accessor for Credentials(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 144) & ~*(v1 + 80));

  sub_1000B1610(v2, (v0 + 24), v3);
}

uint64_t sub_1000C7C1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1000B23E4(a1, v1);
}

uint64_t sub_1000C7CD8(uint64_t a1)
{
  v4 = *(type metadata accessor for Credentials(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000368C;

  return sub_1000B25B8(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1000C7E7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Credentials(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_1000B2C3C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000C7FF0()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000C80E4(void (*a1)(void))
{
  v3 = *(type metadata accessor for Response() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000B5908(*(v1 + 16), v1 + v4, *v5, v5[1], a1);
}

unint64_t sub_1000C817C()
{
  result = qword_1005A9E28;
  if (!qword_1005A9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E28);
  }

  return result;
}

uint64_t sub_1000C829C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000C82F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1004B5A58(a1, v4, v5, v6);
}

uint64_t sub_1000C83D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1000C8450(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1000C84A0()
{
  result = qword_1005A9E38;
  if (!qword_1005A9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E38);
  }

  return result;
}

uint64_t sub_1000C8568(uint64_t a1)
{
  v3 = *(type metadata accessor for Credentials(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v10 = v1[4];
  v5 = v1[6];
  v9 = v1[5];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100097320(a1, v12, v11, v10, v9, v5, v6, v1 + v4);
}

uint64_t sub_1000C86FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_1004B5A58(a1, v4, v5, v6);
}

void sub_1000C87E0()
{
  v1 = *(type metadata accessor for Response() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_100097C88(v0 + v2, v7, v8, v9, v10, v12, v13);
}

unint64_t sub_1000C88C0()
{
  result = qword_1005A9E60;
  if (!qword_1005A9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E60);
  }

  return result;
}

unint64_t sub_1000C8914()
{
  result = qword_1005A9E70;
  if (!qword_1005A9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E70);
  }

  return result;
}

unint64_t sub_1000C8968()
{
  result = qword_1005A9E78;
  if (!qword_1005A9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E78);
  }

  return result;
}

unint64_t sub_1000C89BC()
{
  result = qword_1005A9E90;
  if (!qword_1005A9E90)
  {
    sub_10004B610(&qword_1005A9E88, &qword_1004C33D0);
    sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E90);
  }

  return result;
}

unint64_t sub_1000C8A68()
{
  result = qword_1005A9EA0;
  if (!qword_1005A9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EA0);
  }

  return result;
}

unint64_t sub_1000C8ABC()
{
  result = qword_1005A9EB0;
  if (!qword_1005A9EB0)
  {
    sub_10004B610(&qword_1005A9E88, &qword_1004C33D0);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EB0);
  }

  return result;
}

uint64_t sub_1000C8C60(uint64_t a1)
{
  v3 = *(type metadata accessor for Credentials(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v12 = v1[2];
  v11 = v1[3];
  v5 = v1[5];
  v10 = v1[4];
  v6 = v1[6];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1000A45E8(a1, v12, v11, v10, v5, v6, v7, v1 + v4);
}

void sub_1000C8E20()
{
  v1 = *(type metadata accessor for Response() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1000A4FD0(v0 + v2, v6, v7, v8, v10, v11);
}

uint64_t sub_1000C8EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10008F170();
}

uint64_t sub_1000C8FF4()
{
  v1 = (type metadata accessor for Credentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + v1[10];

  v9 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v7(v8 + *(v9 + 20), v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000C9160()
{
  v1 = *(type metadata accessor for Credentials(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1000A38D4(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_1000C9214()
{
  result = qword_1005A9ED0;
  if (!qword_1005A9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9ED0);
  }

  return result;
}

uint64_t sub_1000C9270@<X0>(_BYTE *a1@<X8>)
{
  ContinuousClock.Instant.duration(to:)();
  result = static Duration.< infix(_:_:)();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000C933C()
{
  result = qword_1005A9EF0;
  if (!qword_1005A9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EF0);
  }

  return result;
}

void sub_1000C9408(uint64_t a1)
{
  v3 = *(type metadata accessor for SecureLocation(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Credentials(0) - 8);
  sub_1000A0618(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_1000C9518(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1000A14DC(a1, v1);
}

uint64_t sub_1000C95B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_10002CF44(a2, a3);
  }

  return result;
}

uint64_t sub_1000C95FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_10001A794(a2, a3);
  }

  return result;
}

uint64_t sub_1000C9644(uint64_t a1)
{
  v3 = *(type metadata accessor for Credentials(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  type metadata accessor for SecureLocation(0);
  v12 = v1[2];
  v11 = v1[3];
  v5 = v1[5];
  v10 = v1[4];
  v6 = v1[6];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1000A1690(a1, v12, v11, v10, v5, v6, v7, v1 + v4);
}

void sub_1000C98BC()
{
  ct_green_tea_logger_create_static();
  v0 = getCTGreenTeaOsLogHandle();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Transmitting Encrypted Location.", v3, 2u);
    }
  }
}

uint64_t sub_1000C9940(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

void sub_1000C9990()
{
  v1 = *(type metadata accessor for Response() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1000A2638(v0 + v2, v4, v5);
}

uint64_t sub_1000C9A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1004B51EC(a1, v4, v5, v6);
}

unint64_t sub_1000C9B4C()
{
  result = qword_1005A9F10;
  if (!qword_1005A9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F10);
  }

  return result;
}

uint64_t sub_1000C9BD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C9C50()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000C9CBC(uint64_t a1)
{
  v4 = *(sub_10004B564(&unk_1005A9938, &unk_1004C3080) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100092808(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000C9DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000C9E50()
{
  result = qword_1005A9F48;
  if (!qword_1005A9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F48);
  }

  return result;
}

uint64_t sub_1000C9EA4(uint64_t a1)
{

  sub_1000BB990(v1, a1, &unk_10058E2D8, sub_1000C9F28, &unk_1004C34D0, sub_1000B9D60);
}

uint64_t sub_1000C9F38()
{
  v1 = (type metadata accessor for Credentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = v1[9];
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v9 = v5 + v1[10];

  v10 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v8(v9 + *(v10 + 20), v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

unint64_t sub_1000CA0BC()
{
  result = qword_1005A9F80;
  if (!qword_1005A9F80)
  {
    sub_1000545A4(255, &qword_1005A9F78, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F80);
  }

  return result;
}

uint64_t sub_1000CA1B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000CA210()
{
  result = qword_1005AB5C0;
  if (!qword_1005AB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB5C0);
  }

  return result;
}

uint64_t sub_1000CA264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CA2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CA368(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000CA42C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000CA490(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

double sub_1000CA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_1000CA58C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000CA598(uint64_t a1, int a2)
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

uint64_t sub_1000CA5E0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SecureLocationsCoordinator.SecureLocationsCommandPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsCoordinator.SecureLocationsCommandPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000CA780()
{
  result = qword_1005A9FD0;
  if (!qword_1005A9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9FD0);
  }

  return result;
}

unint64_t sub_1000CA7D8()
{
  result = qword_1005A9FD8;
  if (!qword_1005A9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9FD8);
  }

  return result;
}

unint64_t sub_1000CA830()
{
  result = qword_1005A9FE0;
  if (!qword_1005A9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9FE0);
  }

  return result;
}

void sub_1000CAB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_100239484(0, v1, 0);
    v3 = v2 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v22 = v2 + 72;
    v23 = v1;
    v24 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v25 = v5;
      v26 = *(v2 + 36);
      v8 = (*(v2 + 56) + 24 * v4);
      v9 = v8[1];
      v27 = *v8;
      v10 = v2;
      v11 = v8[2];
      v12 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];

      if (v12 >= v13 >> 1)
      {
        sub_100239484((v13 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v12];
      v14[4] = v27;
      v14[5] = v9;
      v14[6] = v11;
      v6 = 1 << *(v10 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v10;
      v3 = v24;
      v15 = *(v24 + 8 * v7);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v6 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v7 << 6;
        v18 = v7 + 1;
        v19 = (v22 + 8 * v7);
        while (v18 < (v6 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_10002F14C(v4, v26, 0);
            v6 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_10002F14C(v4, v26, 0);
      }

LABEL_4:
      v5 = v25 + 1;
      v4 = v6;
      if (v25 + 1 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1000CADB4()
{
  v1 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000CF9E4(v0 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_endTime);
  sub_1000CF9E4(v0 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_lastReceived);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureLocationsLiveSessionStats(uint64_t a1)
{
  result = qword_1005AA010;
  if (!qword_1005AA010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CAED4(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000CAFC0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000CAFC0(uint64_t a1)
{
  if (!qword_1005AE6B0)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005AE6B0);
    }
  }
}

uint64_t sub_1000CB018()
{
  v1 = v0;
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v10);
  v15 = &v23[-v14];
  v16 = *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations) = v18;
    static Date.trustedNow.getter(&v23[-v14]);
    v19 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_lastReceived;
    swift_beginAccess();
    sub_1000CF974(v1 + v19, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000CF9E4(v7);
      (*(v9 + 32))(v5, v15, v8);
    }

    else
    {
      v20 = *(v9 + 32);
      v20(v12, v7, v8);
      Date.timeIntervalSince(_:)();
      v22 = v21;
      (*(v9 + 8))(v12, v8);
      *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) = v22 + *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta);
      v20(v5, v15, v8);
    }

    (*(v9 + 56))(v5, 0, 1, v8);
    swift_beginAccess();
    sub_1000CF904(v5, v1 + v19);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000CB2B8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AA318, &qword_1004C3C20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1000CFDEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000CB4FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CB544()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000CB588()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x73726F727265;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000CB610@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000CF1FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000CB638(uint64_t a1)
{
  v2 = sub_1000CFDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CB674(uint64_t a1)
{
  v2 = sub_1000CFDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000CB6B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000CF36C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

Swift::Int sub_1000CB724()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000CB7EC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000CB8A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CB964@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CF5FC(*a1);
  *a2 = result;
  return result;
}

void sub_1000CB994(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x697461636F4C6F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (*v1 != 2)
  {
    v5 = 0x755364656C696166;
    v4 = 0xE900000000000062;
  }

  if (*v1)
  {
    v3 = 0x64696C6176;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1000CBAC8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 29548;
  }

  else
  {
    v2 = 27496;
  }

  if (*a2)
  {
    v3 = 29548;
  }

  else
  {
    v3 = 27496;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000CBB38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000CBB98(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000CBBDC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000CBC38(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058AD50, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1000CBC98(uint64_t *a1@<X8>)
{
  v2 = 27496;
  if (*v1)
  {
    v2 = 29548;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_1000CBCB8()
{
  if (*v0)
  {
    return 29548;
  }

  else
  {
    return 27496;
  }
}

void sub_1000CBCD4(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10058AD50, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t sub_1000CBD38(uint64_t a1)
{
  v2 = sub_1000CF808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CBD74(uint64_t a1)
{
  v2 = sub_1000CF808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CBDB0(void *a1, uint64_t a2)
{
  v3 = BYTE1(a2);
  v5 = sub_10004B564(&qword_1005AA2D0, &unk_1004C3810);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1000CF808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10[14] = v3;
    v10[13] = 1;
    sub_1000CF8B0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000CBF2C@<X0>(_WORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000CF648(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1000CBF74()
{
  type metadata accessor for SecureLocationsAnalytics();
  swift_allocObject();
  result = sub_1000CBFB0();
  qword_1005DFB60 = result;
  return result;
}

void *sub_1000CBFB0()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = sub_10004B518();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF54(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = _swiftEmptyDictionarySingleton;
  v0[4] = 0;
  v0[5] = _swiftEmptyDictionarySingleton;
  v0[6] = 0x636972656E6567;
  v0[7] = 0xE700000000000000;
  return v0;
}

void sub_1000CC27C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (static SystemInfo.underTest.getter())
  {
    if (v7)
    {
      return;
    }
  }

  else
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v10 = v7 & 1;
    *(v9 + 16) = v10;
    *(v9 + 17) = a2;
    v12[4] = sub_1000CFB48;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000119E4;
    v12[3] = &unk_10058E958;
    v11 = _Block_copy(v12);

    AnalyticsSendEventLazy();
    _Block_release(v11);

    if (v10)
    {
      return;
    }
  }

  sub_1000CC7D4(a3, a4);
}

uint64_t sub_1000CC3C8(uint64_t result)
{
  if (*(result + 32))
  {

    sub_1000CB018();
  }

  return result;
}

uint64_t sub_1000CC438(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 16);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_1000CC6C8(uint64_t a1)
{
  type metadata accessor for SecureLocationsLiveSessionStats(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_endTime;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v5(v2 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_lastReceived, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) = 0;
  *(v2 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_errors) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations) = 0;
  static Date.trustedNow.getter(v2 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime);
  *(a1 + 32) = v2;
}

uint64_t sub_1000CC7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1000CFB2C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E8B8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_1000CCAA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v6 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_errors;
    swift_beginAccess();
    v7 = *(v3 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1001FC900(0, *(v7 + 2) + 1, 1, v7);
      *(v3 + v6) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1001FC900((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = a2;
    *(v11 + 5) = a3;
    *(v3 + v6) = v7;
    swift_endAccess();
  }

  return result;
}

void sub_1000CCBA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v60 = &v49 - v10;
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v14 = __chkstk_darwin(v13 - 8);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - v17;
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v21 = *(a1 + 32);
  if (!v21)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v55 = a2;
  v56 = v2;

  static Date.trustedNow.getter(v20);
  (*(v6 + 56))(v20, 0, 1, v5);
  v22 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_endTime;
  swift_beginAccess();
  sub_1000CF904(v20, v21 + v22);
  swift_endAccess();
  sub_1000CF974(v21 + v22, v18);
  v51 = *(v6 + 48);
  v52 = v51(v18, 1, v5);
  if (v52 == 1)
  {
    sub_1000CF9E4(v18);
    v23 = 0;
  }

  else
  {
    (*(v6 + 32))(v12, v18, v5);
    v24 = *(v6 + 16);
    v53 = a1;
    v25 = v60;
    v24(v60, v21 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime, v5);
    Date.timeIntervalSince(_:)();
    v23 = v26;
    v54 = v6;
    v27 = *(v6 + 8);
    v28 = v25;
    a1 = v53;
    v27(v28, v5);
    v27(v12, v5);
    v6 = v54;
  }

  v29 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations;
  v54 = *(v21 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations);
  if (v54 < 1)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *(v21 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) / v54;
  }

  v31 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_errors;
  swift_beginAccess();
  v32 = *(v21 + v31);
  *(a1 + 32) = 0;
  v53 = v32;

  v50 = *(v21 + v29);
  v33 = v58;
  sub_1000CF974(v21 + v22, v58);
  v34 = v51(v33, 1, v5);
  if (v34 == 1)
  {
    sub_1000CF9E4(v33);
    v35 = 0;
  }

  else
  {
    v36 = v57;
    (*(v6 + 32))(v57, v33, v5);
    v37 = v60;
    (*(v6 + 16))(v60, v21 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime, v5);
    Date.timeIntervalSince(_:)();
    v35 = v38;
    v39 = *(v6 + 8);
    v39(v37, v5);
    v39(v36, v5);
  }

  v40 = *(v21 + v29);
  if (v40 < 1)
  {
    v41 = 0.0;
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_14;
    }

LABEL_16:
    v42 = v40 < 1;
    v43 = String._bridgeToObjectiveC()();
    v44 = swift_allocObject();
    *(v44 + 16) = v50;
    *(v44 + 24) = v35;
    *(v44 + 32) = v34 == 1;
    *(v44 + 40) = v41;
    *(v44 + 48) = v42;
    aBlock[4] = sub_1000CFA4C;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000119E4;
    aBlock[3] = &unk_10058E7C8;
    v45 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v45);

    goto LABEL_17;
  }

  v41 = *(v21 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) / v40;
  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:

LABEL_17:
  v47 = v54;
  v46 = v55;
  *v55 = v23;
  *(v46 + 1) = v52 == 1;
  *(v46 + 2) = v47;
  v48 = v53;
  v46[3] = 0.0;
  *(v46 + 4) = v48;
  v46[5] = v30;
  *(v46 + 48) = v47 < 1;
}

uint64_t sub_1000CD178(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_1000CA3CC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E868;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_1000CD450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1000CD888(a2, a3) & 0xFF00;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_100452F28(v8 & 0xFFFE | a4 & 1, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v11;
  return swift_endAccess();
}

uint64_t sub_1000CD500(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_1000C9B3C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E818;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_1000CD7D8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = sub_1000CD888(a2, a3);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_100452F28(v8 | (a4 << 8), a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v11;
  return swift_endAccess();
}

uint64_t sub_1000CD888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    if (*(v13 + 16))
    {

      v14 = sub_1000110D8(a1, a2);
      if (v15)
      {
        v16 = (*(v13 + 56) + 2 * v14);
        v17 = *v16;
        v18 = v16[1];

        return v17 | (v18 << 8);
      }
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_100452F28(1026, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v21;
    swift_endAccess();
    v18 = 4;
    v17 = 2;
    return v17 | (v18 << 8);
  }

  __break(1u);
  return result;
}

void sub_1000CDA64(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v17 = _swiftEmptyDictionarySingleton;

  sub_1000CEF8C(a1, &v17, a2);

  if (a3)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (a1 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        swift_beginAccess();

        v12 = sub_1000110D8(v11, v10);
        if (v13)
        {
          v14 = v12;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = *(a2 + 24);
          *(a2 + 24) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100203AB0();
          }

          sub_1002002A0(v14, v16);
          *(a2 + 24) = v16;
        }

        swift_endAccess();

        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }

  *a4 = v17;
}

void sub_1000CDBA4(uint64_t **a1, Swift::Int a2, unint64_t a3)
{
  v6 = a1[6];
  v7 = a1[7];
  swift_beginAccess();
  if (!a1[5][2] || (, sub_1000110D8(v6, v7), v9 = v8, , (v9 & 1) == 0))
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = a1[5];
    a1[5] = 0x8000000000000000;
    sub_100453058(v6, v7, &_swiftEmptySetSingleton, v6, v7, isUniquelyReferenced_nonNull_native);

    a1[5] = v19[0];
    swift_endAccess();
  }

  v11 = sub_1000CC228(v20);
  v12 = sub_1000CDE3C(v19, v6, v7);
  if (*(v13 + 8))
  {

    sub_1002345CC(&v21, a2, a3);
  }

  (v12)(v19, 0);
  (v11)(v20, 0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000D01C(a2, a3, v20);
    _os_log_impl(&_mh_execute_header, v15, v16, "analytics - logGenericPublisherError %s ", v17, 0xCu);
    sub_100004984(v18);
  }
}

uint64_t (*sub_1000CDE3C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000CE674(v6, a2, a3);
  return sub_1000CDEC4;
}

void sub_1000CDEC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_1000CDF10(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  Priority = type metadata accessor for LocatePriority();
  v3[4] = Priority;
  v5 = *(Priority - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000CE780(v3, v8);
  return sub_1000CE028;
}

void sub_1000CE028(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_1000CE0A0(uint64_t a1, uint64_t a2, unint64_t a3, Swift::Int a4, unint64_t a5)
{
  swift_beginAccess();
  if (!*(*(a1 + 40) + 16) || (, sub_1000110D8(a2, a3), v11 = v10, , (v11 & 1) == 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *(a1 + 40);
    *(a1 + 40) = 0x8000000000000000;
    sub_100453058(a2, a3, &_swiftEmptySetSingleton, a2, a3, isUniquelyReferenced_nonNull_native);
    *(a1 + 40) = v24[0];
    swift_endAccess();
  }

  v13 = sub_1000CC228(v25);
  v14 = sub_1000CDE3C(v24, a2, a3);
  if (*(v15 + 8))
  {

    sub_1002345CC(&v26, a4, a5);
  }

  (v14)(v24, 0);
  (v13)(v25, 0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_10000D01C(a2, a3, v25);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_10000D01C(a4, a5, v25);
    *(v19 + 22) = 2080;

    v20 = Dictionary.description.getter();
    v22 = v21;

    v23 = sub_10000D01C(v20, v22, v25);

    *(v19 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "analytics: logPublisherError %s %s %s", v19, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_1000CE3E0(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  swift_beginAccess();

  sub_1000CAB64(v6);
  v8 = v7;

  if (a2)
  {
    *(a1 + 40) = _swiftEmptyDictionarySingleton;
  }

  *a3 = v8;
}

uint64_t sub_1000CE47C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SecureLocationsShallowIdStats(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for SecureLocationsShallowIdStats(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void (*sub_1000CE674(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v7[8] = sub_1000CEEA8(v7);
  v7[9] = sub_1000CE954(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000CE720;
}

void sub_1000CE720(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000CE780(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  Priority = type metadata accessor for LocatePriority();
  v5[8] = Priority;
  v7 = *(Priority - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, Priority);
  v5[11] = sub_1000CEF58(v5);
  v5[12] = sub_1000CEBB0(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_1000CE8BC;
}

void sub_1000CE8BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1000CE954(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[4] = a3;
  v10[5] = v4;
  v10[3] = a2;
  v12 = *v4;
  v13 = sub_1000110D8(a2, a3);
  *(v11 + 56) = v14 & 1;
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
      sub_100203C18();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10022E6E0(v18, a4 & 1);
    v13 = sub_1000110D8(a2, a3);
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
  v11[6] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 24 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
  }

  else
  {
    v24 = 0;
    v25 = 0uLL;
  }

  *v11 = v24;
  *(v11 + 1) = v25;
  return sub_1000CEAC0;
}

void sub_1000CEAC0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 56);
  if (v3)
  {
    v6 = v1[6];
    v7 = *v1[5];
    if (v5)
    {
      v8 = (v7[7] + 24 * v6);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
    }

    else
    {
      sub_100233B28(v6, v1[3], v1[4], v2, v3, v4, v7);
    }
  }

  else if ((*a1)[7])
  {
    v9 = v1[6];
    v10 = *v1[5];
    sub_10007C2B8(*(v10 + 48) + 16 * v9);
    sub_100200450(v9, v10);
  }

  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  sub_1000CEED0(v2, v3, v4);
  sub_1000CEF14(v11, v12, v13);

  free(v1);
}

void (*sub_1000CEBB0(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  Priority = type metadata accessor for LocatePriority();
  *(v9 + 40) = Priority;
  v11 = *(Priority - 8);
  *(v9 + 48) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 56) = v12;
  v13 = *v3;
  v14 = sub_1001FDF60(a2);
  *(v9 + 72) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10020508C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100231460(v19, a3 & 1);
    v14 = sub_1001FDF60(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 64) = v14;
  if (v20)
  {
    v24 = *(*v4 + 56) + 24 * v14;
    v25 = *v24;
    v26 = *(v24 + 8);
  }

  else
  {
    v25 = 0;
    v26 = 0uLL;
  }

  *v9 = v25;
  *(v9 + 8) = v26;
  return sub_1000CED74;
}

void sub_1000CED74(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  if (v2)
  {
    v5 = *v1[4];
    v6 = v1[8];
    if ((*a1)[9])
    {
      v7 = (v5[7] + 24 * v6);
      *v7 = v2;
      v7[1] = v3;
      v7[2] = v4;
    }

    else
    {
      v10 = v1[7];
      (*(v1[6] + 16))(v10, v1[3], v1[5]);
      sub_100233FBC(v6, v10, v2, v3, v4, v5);
    }
  }

  else if ((*a1)[9])
  {
    v8 = v1[8];
    v9 = *v1[4];
    (*(v1[6] + 8))(*(v9 + 48) + *(v1[6] + 72) * v8, v1[5]);
    sub_100201390(v8, v9);
  }

  v11 = v1[7];
  v12 = *v1;
  v13 = v1[1];
  sub_1000CFA60(v2, v3);
  sub_1000CFAA4(v12, v13);
  free(v11);

  free(v1);
}

uint64_t (*sub_1000CEEA8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000D00B4;
}

double sub_1000CEED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

double sub_1000CEF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t (*sub_1000CEF58(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000CEF80;
}

void sub_1000CEF8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  swift_beginAccess();
  if (!v6)
  {
    return;
  }

  v7 = (a1 + 40);
  v39 = a2;
  v40 = a3;
  while (1)
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = *(a3 + 24);
    v11 = *(v10 + 16);

    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = sub_1000110D8(v9, v8);
    if ((v13 & 1) == 0)
    {

LABEL_13:
      v27 = sub_1000110D8(v9, v8);
      if (v28)
      {
        v29 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *a2;
        v42 = *a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100203AB0();
          v31 = v42;
        }

        sub_1002002A0(v29, v31);
        *a2 = v31;
      }

      goto LABEL_5;
    }

    v14 = (*(v10 + 56) + 2 * v12);
    v15 = *v14;
    v16 = v14[1];

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *a2;
    v41 = *a2;
    v19 = sub_1000110D8(v9, v8);
    v21 = *(v18 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (*(v18 + 24) < v24)
    {
      sub_10022E428(v24, v17);
      v19 = sub_1000110D8(v9, v8);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      v32 = v41;
      if ((v25 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (v17)
    {
      goto LABEL_17;
    }

    v34 = v19;
    sub_100203AB0();
    v19 = v34;
    v32 = v41;
    if ((v25 & 1) == 0)
    {
LABEL_20:
      v32[(v19 >> 6) + 8] |= 1 << v19;
      v35 = (v32[6] + 16 * v19);
      *v35 = v9;
      v35[1] = v8;
      v36 = (v32[7] + 2 * v19);
      *v36 = v15;
      v36[1] = v16;
      v37 = v32[2];
      v23 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      v32[2] = v38;

      goto LABEL_22;
    }

LABEL_18:
    v33 = (v32[7] + 2 * v19);
    *v33 = v15;
    v33[1] = v16;
LABEL_22:
    a2 = v39;
    *v39 = v32;

    a3 = v40;
LABEL_5:
    v7 += 2;
    if (!--v6)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000CF1FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0073746E756F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726F727265 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E0020 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000CF36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AA308, &unk_1004C3C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1000CFDEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v28 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v27 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v14;
  v22 = v13;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v26 = 2;
  sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v23;
  v25 = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100004984(a1);
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v22;
  *(a2 + 24) = v24 & 1;
  *(a2 + 32) = v21;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18 & 1;
  return result;
}

unint64_t sub_1000CF5FC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058ACD0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CF648(void *a1)
{
  v3 = sub_10004B564(&qword_1005AA2B8, &qword_1004C3808);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = a1[3];
  sub_100011AEC(a1, v7);
  sub_1000CF808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    v11[15] = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11[13] = 1;
    sub_1000CF85C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v10 = v11[14];
    sub_100004984(a1);
    return v8 | (v10 << 8);
  }

  return v7;
}

unint64_t sub_1000CF808()
{
  result = qword_1005AA2C0;
  if (!qword_1005AA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2C0);
  }

  return result;
}

unint64_t sub_1000CF85C()
{
  result = qword_1005AA2C8;
  if (!qword_1005AA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2C8);
  }

  return result;
}

unint64_t sub_1000CF8B0()
{
  result = qword_1005AA2D8;
  if (!qword_1005AA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2D8);
  }

  return result;
}

uint64_t sub_1000CF904(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF974(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF9E4(uint64_t a1)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000CFA60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000CFAA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000CFAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000CFB54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000CFB70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CFBB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CFC3C()
{
  result = qword_1005AA2E0;
  if (!qword_1005AA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2E0);
  }

  return result;
}

unint64_t sub_1000CFC94()
{
  result = qword_1005AA2E8;
  if (!qword_1005AA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2E8);
  }

  return result;
}

unint64_t sub_1000CFCEC()
{
  result = qword_1005AA2F0;
  if (!qword_1005AA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2F0);
  }

  return result;
}

unint64_t sub_1000CFD44()
{
  result = qword_1005AA2F8;
  if (!qword_1005AA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA2F8);
  }

  return result;
}

unint64_t sub_1000CFD98()
{
  result = qword_1005AA300;
  if (!qword_1005AA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA300);
  }

  return result;
}

unint64_t sub_1000CFDEC()
{
  result = qword_1005AA310;
  if (!qword_1005AA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsSubscriptionRequestState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsSubscriptionRequestState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000CFF94()
{
  result = qword_1005AA320;
  if (!qword_1005AA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA320);
  }

  return result;
}

unint64_t sub_1000CFFEC()
{
  result = qword_1005AA328;
  if (!qword_1005AA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA328);
  }

  return result;
}

unint64_t sub_1000D0044()
{
  result = qword_1005AA330;
  if (!qword_1005AA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA330);
  }

  return result;
}

unint64_t sub_1000D00D4(unsigned __int8 a1, unsigned __int8 a2)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 0x6575737369;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 56) = 1868983913;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  v5 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  swift_arrayDestroy();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v11 = Dictionary.description.getter();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "analytics: logged setup issue %s to CA", v9, 0xCu);
    sub_100004984(v10);
  }

  return v5;
}

unint64_t sub_1000D032C(char a1, unsigned __int8 a2)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 1701605234;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1 & 1];
  *(inited + 56) = 0x6F6974617265706FLL;
  *(inited + 64) = 0xE90000000000006ELL;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  v5 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  swift_arrayDestroy();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v11 = Dictionary.description.getter();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "analytics: logged live session failure %s to CA", v9, 0xCu);
    sub_100004984(v10);
  }

  return v5;
}

unint64_t sub_1000D05A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x746E756F43636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v11 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_1000D1BE8(inited + 32);
  if ((a3 & 1) == 0)
  {
    v12 = [objc_allocWithZone(NSNumber) initWithDouble:*&a2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_100452450(v12, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  if ((a5 & 1) == 0)
  {
    v14 = [objc_allocWithZone(NSNumber) initWithDouble:*&a4];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_100452450(v14, 0xD000000000000017, 0x80000001004E0020, v15);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);

    v21 = Dictionary.description.getter();
    v23 = v22;

    v24 = sub_10000D01C(v21, v23, &v26);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "analytics: logged live session stats %s to CA", v19, 0xCu);
    sub_100004984(v20);
  }

  return v11;
}

unint64_t sub_1000D08A4(unsigned __int8 a1, uint64_t a2, const char *a3, ...)
{
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = a2;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v7 = sub_100208E74(inited);
  swift_setDeallocating();
  sub_1000D1BE8(inited + 32);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v13 = Dictionary.description.getter();
    v15 = sub_10000D01C(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_100004984(v12);
  }

  return v7;
}

id sub_1000D0AAC(uint64_t a1, double a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  v16 = 0xD000000000000010;
  sub_10004B564(&qword_1005AA338, &qword_1004C3D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001004E00B0;
  v18 = __OFADD__(a1, 1);
  v19 = a1 + 1;
  if (v18)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v20 = inited;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v19];
  strcpy((v20 + 56), "responseTime");
  *(v20 + 69) = 0;
  *(v20 + 70) = -5120;
  *(v20 + 72) = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v21 = sub_100208E74(v20);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  swift_arrayDestroy();
  if (a4)
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(isa, 0xD000000000000010, 0x80000001004E00D0);
  if (a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(v23, 0x6E6F697461636F6CLL, 0xEF79636E65636552);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(v24, 0x6E6F697461636F6CLL, 0xED0000746E756F43);
  if (a10)
  {
    v25 = 0;
  }

  else
  {
    v25 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_100145624(v25, 0x7963617275636361, 0xEB000000006E6942);
  if (a11)
  {
    swift_errorRetain();
    v26 = _convertErrorToNSError(_:)();
    result = [v26 domain];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100452450(v28, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v30 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v26, "code")}];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_100452450(v30, 0x646F43726F727265, 0xE900000000000065, v31);
    sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
    v32 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v21;
    sub_100452450(v32, 0x73736563637573, 0xE700000000000000, v33);
  }

  else
  {
    sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
    v34 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v21;
    sub_100452450(v34, 0x73736563637573, 0xE700000000000000, v35);
  }

  v16 = v40;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v36 = type metadata accessor for Logger();
  sub_10000A6F0(v36, qword_1005DFB98);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "analytics: logged location reliability to CA", v39, 2u);
  }

  return v16;
}

uint64_t sub_1000D1014()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 16) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD00000000000003FLL;
  *(v1 + 16) = 0x80000001004E00F0;

  return _swift_task_switch(sub_1000D115C, v1, 0);
}

uint64_t sub_1000D115C()
{
  sub_1001360B8(*(v0 + 16), *(v0 + 40) & 1);
  type metadata accessor for AnalyticsPublisher();
  *(v0 + 24) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000D1238;
  v2 = *(v0 + 16);

  return sub_100050D70(v2);
}

uint64_t sub_1000D1238()
{

  return _swift_task_switch(sub_1000D1350, 0, 0);
}

uint64_t sub_1000D1350()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000D13B0(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1)
  {
    v19 = _swiftEmptyDictionarySingleton;
    v3 = 1;
    v4 = 1;
    v5 = 0x737574617473;
    v6 = 0xE600000000000000;
  }

  else
  {
    sub_1004531CC(0, 1, 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v7 = [objc_allocWithZone(NSNumber) initWithInteger:0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = _swiftEmptyDictionarySingleton;
    v5 = 0x6572756C696166;
    v3 = v7;
    v4 = 0;
    v6 = 0xE700000000000000;
  }

  sub_1004531CC(v3, v4, v5, v6, isUniquelyReferenced_nonNull_native);
  v8 = v19;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_10000D01C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "analytics: logged liteLocationPublish stats %s to CA", v12, 0xCu);
    sub_100004984(v13);
  }

  return v8;
}

uint64_t sub_1000D15E8(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1000D160C, 0, 0);
}

uint64_t sub_1000D160C()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 24) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000044;
  *(v1 + 16) = 0x80000001004E0040;

  return _swift_task_switch(sub_1000D1754, v1, 0);
}

uint64_t sub_1000D1754()
{
  sub_100137A00(*(v0 + 24), *(v0 + 16), *(v0 + 48) & 1);
  type metadata accessor for AnalyticsPublisher();
  *(v0 + 32) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000D1830;
  v2 = *(v0 + 24);

  return sub_100050D70(v2);
}

uint64_t sub_1000D1830()
{

  return _swift_task_switch(sub_1000D1948, 0, 0);
}

uint64_t sub_1000D1948()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000D19A8(uint64_t a1, char a2)
{
  sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)((a2 & 1) == 0).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = _swiftEmptyDictionarySingleton;
  sub_1004531CC(isa, 0, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  if ((a2 & 1) == 0)
  {
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v17 = _swiftEmptyDictionarySingleton;
    sub_1004531CC(v5, 0, 0xD000000000000016, 0x80000001004E0090, v6);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFB98);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;

    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = sub_10000D01C(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "analytics: logged logLiteLocationStateAvailability %s", v10, 0xCu);
    sub_100004984(v11);
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1000D1BE8(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AA340, &qword_1004C3D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D1C50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000D1C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000D1CFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D1D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1000D1DB0@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000D1E84(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AA360, &unk_1004C3EC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1000D27F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v11[0] = *(v3 + 48);
    v13 = 3;
    sub_10004B564(&qword_1005A9EC0, &unk_1004C33F8);
    sub_1000D2844();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 72);
    v11[0] = *(v3 + 56);
    v11[1] = v9;
    v11[2] = *(v3 + 88);
    v12 = *(v3 + 104);
    v13 = 4;
    sub_1000D2924();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v11[0] = *(v3 + 112);
    v13 = 5;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D2140()
{
  v1 = *v0;
  v2 = 0x6E656B6F54737061;
  v3 = 0x53776F6C6C616873;
  v4 = 0x746174536576696CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6449746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x41747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D2210@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000D2D50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D2238(uint64_t a1)
{
  v2 = sub_1000D27F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2274(uint64_t a1)
{
  v2 = sub_1000D27F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D22C8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AA348, &unk_1004C3EB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1000D26CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 48);
    v13 = 3;
    sub_1000D2720();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 72);
    v10[15] = 5;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D253C()
{
  v1 = *v0;
  v2 = 0x6E656B6F54737061;
  v3 = 0x7453654D6F747561;
  v4 = 0x526873696C627570;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6449746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x41747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D2614@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000D2F68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D263C(uint64_t a1)
{
  v2 = sub_1000D26CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2678(uint64_t a1)
{
  v2 = sub_1000D26CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000D26CC()
{
  result = qword_1005AA350;
  if (!qword_1005AA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA350);
  }

  return result;
}

unint64_t sub_1000D2720()
{
  result = qword_1005AA358;
  if (!qword_1005AA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA358);
  }

  return result;
}

unint64_t sub_1000D2774()
{
  result = qword_1005A9EA8;
  if (!qword_1005A9EA8)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EA8);
  }

  return result;
}

unint64_t sub_1000D27F0()
{
  result = qword_1005AA368;
  if (!qword_1005AA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA368);
  }

  return result;
}

unint64_t sub_1000D2844()
{
  result = qword_1005AA370;
  if (!qword_1005AA370)
  {
    sub_10004B610(&qword_1005A9EC0, &unk_1004C33F8);
    sub_1000D28D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA370);
  }

  return result;
}

unint64_t sub_1000D28D0()
{
  result = qword_1005AA378;
  if (!qword_1005AA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA378);
  }

  return result;
}

unint64_t sub_1000D2924()
{
  result = qword_1005AA380;
  if (!qword_1005AA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsAutoMeStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsAutoMeStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D2AEC()
{
  result = qword_1005AA388;
  if (!qword_1005AA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA388);
  }

  return result;
}

unint64_t sub_1000D2B44()
{
  result = qword_1005AA390;
  if (!qword_1005AA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA390);
  }

  return result;
}

unint64_t sub_1000D2B9C()
{
  result = qword_1005AA398;
  if (!qword_1005AA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA398);
  }

  return result;
}

unint64_t sub_1000D2BF4()
{
  result = qword_1005AA3A0;
  if (!qword_1005AA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3A0);
  }

  return result;
}

unint64_t sub_1000D2C4C()
{
  result = qword_1005AA3A8;
  if (!qword_1005AA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3A8);
  }

  return result;
}

unint64_t sub_1000D2CA4()
{
  result = qword_1005AA3B0;
  if (!qword_1005AA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3B0);
  }

  return result;
}

unint64_t sub_1000D2CFC()
{
  result = qword_1005AA3B8;
  if (!qword_1005AA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3B8);
  }

  return result;
}

uint64_t sub_1000D2D50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53776F6C6C616873 && a2 == 0xEC00000073746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746174536576696CLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0130 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000D2F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453654D6F747561 && a2 == 0xEC00000073757461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x526873696C627570 && a2 == 0xED00006E6F736165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0130 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1000D3180()
{
  result = qword_1005AA3C0;
  if (!qword_1005AA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AA3C0);
  }

  return result;
}

uint64_t sub_1000D31F0()
{
  v1 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7FA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1005DFC70;
  v5 = qword_1005A7FA8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for URL();
  v7 = sub_10000A6F0(v6, qword_1005DFC78);
  (*(*(v6 - 8) + 16))(&v3[*(v1 + 76)], v7, v6);
  if (qword_1005A7FB0 != -1)
  {
    swift_once();
  }

  v8 = qword_1005DFC90;
  *v3 = 0;
  v3[8] = 1;
  *(v3 + 1) = xmmword_1004C2E50;
  *(v3 + 4) = 5;
  *(v3 + 40) = xmmword_1004C2E60;
  v3[56] = 0;
  *(v3 + 8) = v4;
  *(v3 + 9) = 0x405E000000000000;
  v3[80] = 1;
  *(v3 + 11) = 0x409C200000000000;
  *(v3 + 12) = 5;
  *(v3 + 104) = xmmword_1004C2E70;
  *&v3[*(v1 + 80)] = v8;
  v9 = (v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v9);
  v10 = *(sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0) + 28);
  sub_10002172C(v9 + v10, type metadata accessor for SecureLocationsConfig);
  sub_1000214CC(v3, v9 + v10, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v9);
  AsyncStreamProvider.yield(value:transaction:)();
  return sub_10002172C(v3, type metadata accessor for SecureLocationsConfig);
}

uint64_t sub_1000D34A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10004F154(v5, a2);
  sub_10000A6F0(v5, a2);
  return Logger.init(subsystem:category:)();
}

void *sub_1000D3518()
{
  type metadata accessor for SecureLocationsInfo(0);
  swift_allocObject();
  result = sub_1000D3964();
  qword_1005DFBC8 = result;
  return result;
}

uint64_t sub_1000D3558()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AA3C8);
  v1 = sub_10000A6F0(v0, qword_1005AA3C8);
  if (qword_1005A7EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFBB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000D3620()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Not overriding AutoMeCapable flag", v6, 2u);
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFB98);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      v11 = [v0 standardUserDefaults];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 BOOLForKey:v12];

      *(v10 + 4) = v13;

      _os_log_impl(&_mh_execute_header, v8, v9, "AutoMeCapable flag is %{BOOL}d", v10, 8u);
    }

    else
    {
    }

    v14 = [v0 standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setValue:isa forKey:v16];

    sub_1000DA4A0();
  }
}

void *sub_1000D3964()
{
  v1 = v0;
  v27 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v27);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v26);
  v25[1] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  LOBYTE(v29) = 0;
  v28 = sub_10004B564(&qword_1005AA6A8, &qword_1004C4690);
  swift_allocObject();
  *(v0 + 32) = CurrentValueSubject.init(_:)();
  sub_10004B564(&qword_1005AA6B0, &qword_1004C42F0);
  swift_allocObject();
  *(v0 + 48) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 64) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 80) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 96) = PassthroughSubject.init()();
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v0 + 112) = v10;
  *(v0 + 120) = 0;
  v25[0] = sub_10004B518();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000DD460(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 136) = _swiftEmptyDictionarySingleton;
  v11 = OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex;
  if (qword_1005A7FA0 != -1)
  {
    swift_once();
  }

  v12 = qword_1005DFC70;
  v13 = qword_1005A7FA8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for URL();
  v15 = sub_10000A6F0(v14, qword_1005DFC78);
  v16 = v27;
  (*(*(v14 - 8) + 16))(&v3[*(v27 + 76)], v15, v14);
  if (qword_1005A7FB0 != -1)
  {
    swift_once();
  }

  v17 = qword_1005DFC90;
  *v3 = 0;
  v3[8] = 1;
  *(v3 + 1) = xmmword_1004C2E50;
  *(v3 + 4) = 5;
  *(v3 + 40) = xmmword_1004C2E60;
  v3[56] = 0;
  *(v3 + 8) = v12;
  *(v3 + 9) = 0x405E000000000000;
  v3[80] = 1;
  *(v3 + 11) = 0x409C200000000000;
  *(v3 + 12) = 5;
  *(v3 + 104) = xmmword_1004C2E70;
  *&v3[*(v16 + 80)] = v17;
  *(v1 + v11) = 0;

  v18 = *(sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0) + 28);
  v19 = sub_10004B564(&qword_1005AA6B8, &qword_1004C42F8);
  bzero(v1 + v11 + v18, *(*(v19 - 8) + 64));
  sub_1000DD3F8(v3, v1 + v11 + v18, type metadata accessor for SecureLocationsConfig);
  v20 = OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream;
  sub_10004B564(&qword_1005AA6C0, &qword_1004C4300);
  swift_allocObject();
  *(v1 + v20) = AsyncStreamProvider.init()();
  v21 = v1[4];
  swift_unownedRetainStrong();
  sub_10004B564(&qword_1005AA6C8, &qword_1004C4308);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  swift_unownedRetainStrong();
  v29 = v21;

  swift_unownedRetain();
  swift_unownedRetain();
  sub_10001DF0C(&qword_1005AA6D0, &qword_1005AA6A8, &qword_1004C4690, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v23 = Publisher.eraseToAnyPublisher()();
  swift_unownedRelease();

  *(v22 + 24) = v23;

  v1[5] = v22;
  v29 = v1[6];
  sub_10001DF0C(&qword_1005AA6D8, &qword_1005AA6B0, &qword_1004C42F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v1[7] = Publisher.eraseToAnyPublisher()();
  v29 = v1[8];
  v1[9] = Publisher.eraseToAnyPublisher()();
  v29 = v1[10];
  v1[11] = Publisher.eraseToAnyPublisher()();
  v29 = v1[12];
  v1[13] = Publisher.eraseToAnyPublisher()();
  sub_1000D972C();
  sub_1000D4154();
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  return v1;
}

uint64_t sub_1000D40C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1000D99D8();
}

uint64_t sub_1000D4154()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v3 - 8);
  v5 = v28 - v4;
  result = static SystemInfo.underTest.getter();
  if ((result & 1) == 0)
  {
    v32 = v5;
    v7 = swift_allocObject();
    v33 = v7;
    swift_weakInit();
    v8 = swift_allocObject();
    v28[1] = v8;
    swift_weakInit();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    swift_weakInit();
    sub_10004B564(&qword_1005AA730, &qword_1004C4388);
    inited = swift_initStackObject();
    v31 = v2;
    v12 = inited;
    *(inited + 16) = xmmword_1004C0BE0;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000DD528;
    *(v13 + 24) = v7;
    v12[4] = 0xD000000000000027;
    v12[5] = 0x80000001004E04A0;
    v12[6] = sub_1000DD558;
    v12[7] = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000DD530;
    *(v14 + 24) = v8;
    v12[8] = 0xD000000000000028;
    v12[9] = 0x80000001004E04D0;
    v12[10] = sub_1000DD840;
    v12[11] = v14;
    v12[12] = 0xD000000000000021;
    v12[13] = 0x80000001004E0500;
    v12[14] = sub_1000D5464;
    v12[15] = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000DD538;
    *(v15 + 24) = v9;
    v12[16] = 0xD00000000000002FLL;
    v12[17] = 0x80000001004E0530;
    v12[18] = sub_1000DD840;
    v12[19] = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000DD540;
    *(v16 + 24) = v10;
    v12[20] = 0xD000000000000030;
    v12[21] = 0x80000001004E0560;
    v12[22] = sub_1000DD840;
    v12[23] = v16;
    v17 = swift_allocObject();
    v18 = v29;
    *(v17 + 16) = sub_1000DD548;
    *(v17 + 24) = v18;
    v12[24] = 0xD000000000000026;
    v12[25] = 0x80000001004E05A0;
    v12[26] = sub_1000DD840;
    v12[27] = v17;
    v19 = swift_allocObject();
    v20 = v30;
    *(v19 + 16) = sub_1000DD550;
    *(v19 + 24) = v20;
    v12[28] = 0xD000000000000027;
    v12[29] = 0x80000001004E05D0;
    v12[30] = sub_1000DD840;
    v12[31] = v19;

    v21 = sub_1002089E4(v12);
    swift_setDeallocating();
    sub_10004B564(&qword_1005AA738, &qword_1004C4390);
    swift_arrayDestroy();
    type metadata accessor for DarwinNotificationHelper();
    v22 = swift_allocObject();
    type metadata accessor for DarwinNotificationListener();
    swift_allocObject();
    *(v22 + 16) = sub_1001400CC(v21, 0);
    *(v22 + 24) = 0;
    v1[2] = v22;

    v23 = type metadata accessor for TaskPriority();
    v24 = v32;
    (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v31;
    v26[4] = v25;
    v26[5] = v27;
    sub_1001D7F30(0, 0, v24, &unk_1004C43A0, v26);
  }

  return result;
}

void sub_1000D46F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received notification that autoMe is enabled", v7, 2u);
    }

    v8 = objc_opt_self();
    v9 = [v8 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    if (v11)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "AutoMe is already enabled, ignoring notification", v14, 2u);
      }
    }

    else
    {
      v15 = [v8 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v17 = String._bridgeToObjectiveC()();
      [v15 setValue:isa forKey:v17];

      sub_1000DA4A0();
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }
  }
}

void sub_1000D4990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received notification that autoMe is no longer enabled", v7, 2u);
    }

    v8 = objc_opt_self();
    v9 = [v8 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    if (v11)
    {
      v12 = [v8 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v14 = String._bridgeToObjectiveC()();
      [v12 setValue:isa forKey:v14];

      sub_1000DA4A0();
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }

    else
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "AutoMe is already not enabled, ignoring notification", v17, 2u);
      }
    }
  }
}

uint64_t sub_1000D4C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFB98);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received owner proactive eligible notification", v8, 2u);
    }

    v9 = objc_opt_self();
    v10 = [v9 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [v9 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v15 = String._bridgeToObjectiveC()();
      [v13 setValue:isa forKey:v15];

      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1000D4E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFB98);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received owner proactive not eligible notification", v8, 2u);
    }

    v9 = objc_opt_self();
    v10 = [v9 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if (v12)
    {
      v13 = [v9 standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v15 = String._bridgeToObjectiveC()();
      [v13 setValue:isa forKey:v15];

      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

void sub_1000D5018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received autoMe capability capable notification", v7, 2u);
    }

    v8 = [objc_opt_self() standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 BOOLForKey:v9];

    if (v10)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Already capable for autoMe, ignoring notification", v13, 2u);
      }
    }

    else
    {
      sub_1000D3620();
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }
  }
}

void sub_1000D5240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received autoMe capability disabled notification", v7, 2u);
    }

    v8 = [objc_opt_self() standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 BOOLForKey:v9];

    if (v10)
    {
      sub_1000D3620();
      PassthroughSubject.send(_:)();
      sub_1000DA4A0();
    }

    else
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Already not capable for autoMe, ignoring notification", v13, 2u);
      }
    }
  }
}

uint64_t sub_1000D5488()
{
  v10 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1368) = Strong;
  if (Strong)
  {
    if (qword_1005A7F00 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005AA3C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000012, 0x80000001004E0600, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Monitoring FindMyLocate changes", v5, 0xCu);
      sub_100004984(v6);
    }

    swift_asyncLet_begin();
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000D574C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D57AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1000D7528();
}

uint64_t sub_1000D583C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1000D58CC();
}

uint64_t sub_1000D58CC()
{
  v1[3] = v0;
  v2 = type metadata accessor for DataManager.State(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  sub_10004B564(&qword_1005AA6F8, &unk_1004C4350);
  v1[9] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5B14, 0, 0);
}

uint64_t sub_1000D5B14()
{
  v9 = v0;
  if (qword_1005A7F00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 152) = sub_10000A6F0(v1, qword_1005AA3C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_1000D5CC4;

  return daemon.getter();
}

uint64_t sub_1000D5CC4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 168) = a1;

  v3 = swift_task_alloc();
  *(v2 + 176) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DD460(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1000D5EA0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000D5EA0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  if (v1)
  {
    v5 = sub_1000D6FCC;
    v6 = 0;
  }

  else
  {

    v5 = sub_1000D5FD8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000D5FD8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1000D60E0, 0, 0);
}

uint64_t sub_1000D60E0()
{
  AsyncStream.makeAsyncIterator()();
  v0[25] = v0[24];
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1000D619C;
  v2 = v0[9];
  v3 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1000D619C()
{

  return _swift_task_switch(sub_1000D6298, 0, 0);
}

uint64_t sub_1000D6298()
{
  v53 = v0;
  v1 = *(v0 + 72);
  if ((*(*(v0 + 40) + 48))(v1, 1, *(v0 + 32)) == 1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 128);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = *(v0 + 8);

    return v8();
  }

  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  sub_1000DD3F8(v1, v10, type metadata accessor for DataManager.State);
  sub_1000214CC(v10, v11, type metadata accessor for DataManager.State);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 56);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, v52);
    *(v16 + 12) = 2080;
    v17 = sub_1001DA250();
    v19 = v18;
    sub_10002172C(v15, type metadata accessor for DataManager.State);
    v20 = sub_10000D01C(v17, v19, v52);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s Received preference update: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002172C(v15, type metadata accessor for DataManager.State);
  }

  sub_1000214CC(*(v0 + 64), *(v0 + 48), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 6)
    {
      sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
      goto LABEL_17;
    }

    v25 = swift_task_alloc();
    *(v0 + 216) = v25;
    *v25 = v0;
    v25[1] = sub_1000D6C30;
    v26 = sub_1000D71EC;
    v27 = &type metadata for () + 1;
    v28 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v22 = *(v0 + 48);
        sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
        sub_100002CE0(v22, &qword_1005AA718, &qword_1004C4370);
LABEL_17:
        v29 = *(v0 + 200);
LABEL_18:
        *(v0 + 200) = v29;
        v30 = swift_task_alloc();
        *(v0 + 208) = v30;
        *v30 = v0;
        v30[1] = sub_1000D619C;
        v31 = *(v0 + 72);
        v32 = *(v0 + 80);

        return AsyncStream.Iterator.next(isolation:)(v31, 0, 0, v32);
      }

LABEL_15:
      v23 = *(v0 + 48);
      sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
      v24 = type metadata accessor for Friend();
      (*(*(v24 - 8) + 8))(v23, v24);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_15;
    }

    v33 = **(v0 + 48);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52[0] = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, v52);
      *(v36 + 12) = 1024;
      *(v36 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s Location sharing status changed: Enabled? %{BOOL}d", v36, 0x12u);
      sub_100004984(v37);
    }

    v29 = *(v0 + 200);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_task_alloc();
    *(v39 + 16) = v38;
    *(v39 + 24) = v33;
    v51 = sub_10004B564(&qword_1005AA728, &unk_1004C4378);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    if (qword_1005A7F60 != -1)
    {
      swift_once();
    }

    swift_unownedRetainStrong();

    CurrentValueSubject.value.getter();

    v40 = *(v0 + 249);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (v40 == 1)
    {
      v41 = *(v0 + 250);
    }

    else
    {
      v41 = 0;
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v40 == 1;
      v45 = swift_slowAlloc();
      *v45 = 67109376;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      *(v45 + 4) = *(v0 + 253);

      *(v45 + 8) = 1024;
      *(v45 + 10) = v44;
      _os_log_impl(&_mh_execute_header, v42, v43, "RecomputeLocationSharing: isMyLocationEnabled %{BOOL}d isThisMeDevice %{BOOL}d", v45, 0xEu);
    }

    else
    {
    }

    *(v0 + 224) = v29;
    swift_unownedRetainStrong();
    CurrentValueSubject.value.getter();

    if (v41 == *(v0 + 251))
    {
      sub_10002172C(*(v0 + 64), type metadata accessor for DataManager.State);
      goto LABEL_18;
    }

    v46 = [objc_opt_self() standardUserDefaults];
    v47 = String._bridgeToObjectiveC()();
    [v46 removeObjectForKey:v47];

    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v0 + 232) = v49;
    *(v49 + 16) = v48;
    *(v49 + 24) = v41;
    v50 = swift_task_alloc();
    *(v0 + 240) = v50;
    *v50 = v0;
    v50[1] = sub_1000D6DEC;
    v26 = sub_1000DD51C;
    v25 = (v0 + 252);
    v28 = v49;
    v27 = v51;
  }

  return unsafeBlocking<A>(_:)(v25, v26, v28, v27);
}

uint64_t sub_1000D6C30()
{

  return _swift_task_switch(sub_1000D6D2C, 0, 0);
}

uint64_t sub_1000D6D2C()
{
  sub_10002172C(v0[8], type metadata accessor for DataManager.State);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1000D619C;
  v2 = v0[9];
  v3 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1000D6DEC()
{

  return _swift_task_switch(sub_1000D6F04, 0, 0);
}

uint64_t sub_1000D6F04()
{
  sub_10002172C(v0[8], type metadata accessor for DataManager.State);
  v0[25] = v0[28];
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1000D619C;
  v2 = v0[9];
  v3 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1000D6FCC()
{
  v11 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[24];
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E0480, &v10);
    *(v4 + 12) = 2082;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D71EC()
{
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  return sub_100139B2C();
}

uint64_t sub_1000D7244@<X0>(char a2@<W1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (result)
  {
    *(result + 120) = a2 & 1;
  }

  *a3 = v6 == 0;
  return result;
}

uint64_t sub_1000D72C4@<X0>(BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  *a3 = v5 == 0;
  return result;
}

uint64_t sub_1000D735C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v14 = 0;
    v8 = sub_1000B9F08(v5, v7, &v14);

    if (v8)
    {
      Date.init(timeIntervalSince1970:)();
      v9 = type metadata accessor for Date();
      return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
    }

    else
    {
      v13 = type metadata accessor for Date();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_1000D7528()
{
  v1[3] = v0;
  v2 = type metadata accessor for HandleType();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Friend();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for DataManager.State(0);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_10004B564(&qword_1005AA6F8, &unk_1004C4350);
  v1[21] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[25] = v6;
  v1[26] = *(v6 - 8);
  v1[27] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[28] = v7;
  v1[29] = *(v7 - 8);
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7870, 0, 0);
}

uint64_t sub_1000D7870()
{
  v9 = v0;
  if (qword_1005A7F00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_10000A6F0(v1, qword_1005AA3C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_1000D7A20;

  return daemon.getter();
}

uint64_t sub_1000D7A20(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 264) = a1;

  v3 = swift_task_alloc();
  *(v2 + 272) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DD460(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1000D7BFC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000D7BFC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  if (v1)
  {
    v5 = sub_1000D9274;
    v6 = 0;
  }

  else
  {

    v5 = sub_1000D7D34;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000D7D34()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1000D7E3C, 0, 0);
}

uint64_t sub_1000D7E3C()
{
  AsyncStream.makeAsyncIterator()();
  *(v0 + 352) = enum case for HandleType.follower(_:);
  *(v0 + 356) = enum case for HandleType.following(_:);
  *(v0 + 360) = enum case for HandleType.futureFollower(_:);
  *(v0 + 364) = enum case for HandleType.futureFollowing(_:);
  *(v0 + 368) = enum case for HandleType.pendingOffer(_:);
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_1000D7F40;
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1000D7F40()
{

  return _swift_task_switch(sub_1000D803C, 0, 0);
}

uint64_t sub_1000D803C()
{
  v110 = v0;
  v1 = *(v0 + 168);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) == 1)
  {
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 224);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = *(v0 + 8);

    return v8();
  }

  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  sub_1000DD3F8(v1, v10, type metadata accessor for DataManager.State);
  sub_1000214CC(v10, v11, type metadata accessor for DataManager.State);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 152);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v109);
    *(v16 + 12) = 2080;
    v17 = sub_1001DA250();
    v19 = v18;
    sub_10002172C(v15, type metadata accessor for DataManager.State);
    v20 = sub_10000D01C(v17, v19, &v109);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s Received friend update: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002172C(v15, type metadata accessor for DataManager.State);
  }

  sub_1000214CC(*(v0 + 160), *(v0 + 144), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = *(v0 + 144);
      sub_10002172C(*(v0 + 160), type metadata accessor for DataManager.State);
      sub_100002CE0(v22, &qword_1005AA718, &qword_1004C4370);
LABEL_19:
      v41 = swift_task_alloc();
      *(v0 + 296) = v41;
      *v41 = v0;
      v41[1] = sub_1000D7F40;
      v42 = *(v0 + 168);
      v43 = *(v0 + 176);

      return AsyncStream.Iterator.next(isolation:)(v42, 0, 0, v43);
    }

    v45 = *(v0 + 80);
    v44 = *(v0 + 88);
    v46 = *(v0 + 64);
    v47 = *(v0 + 72);
    (*(v47 + 32))(v44, *(v0 + 144), v46);
    (*(v47 + 16))(v45, v44, v46);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 160);
    v52 = *(v0 + 80);
    v53 = *(v0 + 88);
    v55 = *(v0 + 64);
    v54 = *(v0 + 72);
    if (v50)
    {
      v106 = *(v0 + 160);
      v56 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v56 = 136446466;
      *(v56 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v109);
      *(v56 + 12) = 2080;
      sub_1000DD460(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = *(v54 + 8);
      v60(v52, v55);
      v61 = sub_10000D01C(v57, v59, &v109);

      *(v56 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s Ignoring newly added friend: %s", v56, 0x16u);
      swift_arrayDestroy();

      v60(v53, v55);
      v40 = v106;
    }

    else
    {

      v74 = *(v54 + 8);
      v74(v52, v55);
      v74(v53, v55);
      v40 = v51;
    }

LABEL_18:
    sub_10002172C(v40, type metadata accessor for DataManager.State);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_17:
    v40 = *(v0 + 160);
    goto LABEL_18;
  }

  v23 = *(v0 + 352);
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 40);
  (*(*(v0 + 72) + 32))(*(v0 + 120), *(v0 + 144), *(v0 + 64));
  Friend.type.getter();
  v27 = (*(v26 + 88))(v24, v25);
  if (v27 == v23)
  {
    (*(*(v0 + 72) + 16))(*(v0 + 104), *(v0 + 120), *(v0 + 64));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 104);
    v32 = *(v0 + 64);
    v33 = *(v0 + 72);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v109 = v105;
      *v34 = 136315138;
      sub_1000DD460(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v38 = *(v33 + 8);
      v38(v31, v32);
      v39 = sub_10000D01C(v35, v37, &v109);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Removed a follower: %s", v34, 0xCu);
      sub_100004984(v105);
    }

    else
    {

      v38 = *(v33 + 8);
      v38(v31, v32);
    }

    *(v0 + 328) = v38;
    v75 = swift_allocObject();
    *(v0 + 336) = v75;
    swift_weakInit();
    v76 = swift_task_alloc();
    *(v0 + 344) = v76;
    v77 = sub_10004B564(&qword_1005AA728, &unk_1004C4378);
    *v76 = v0;
    v76[1] = sub_1000D907C;
    v78 = sub_1000DD4A8;
    v79 = (v0 + 372);
  }

  else
  {
    if (v27 != *(v0 + 356))
    {
      if (v27 != *(v0 + 360) && v27 != *(v0 + 364) && v27 != *(v0 + 368))
      {
        (*(*(v0 + 72) + 16))(*(v0 + 96), *(v0 + 120), *(v0 + 64));
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();
        v83 = os_log_type_enabled(v81, v82);
        v84 = *(v0 + 160);
        v85 = *(v0 + 120);
        v86 = *(v0 + 96);
        v87 = *(v0 + 64);
        v88 = *(v0 + 72);
        if (v83)
        {
          log = v81;
          v103 = *(v0 + 64);
          v90 = *(v0 + 40);
          v89 = *(v0 + 48);
          v91 = *(v0 + 32);
          v108 = v82;
          v92 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *v92 = 136446466;
          *(v92 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v109);
          *(v92 + 12) = 2080;
          Friend.type.getter();
          sub_1000DD460(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v104 = v84;
          v95 = v94;
          v102 = v85;
          v96 = *(v90 + 8);
          v96(v89, v91);
          v97 = *(v88 + 8);
          v97(v86, v103);
          v98 = sub_10000D01C(v93, v95, &v109);

          *(v92 + 14) = v98;
          _os_log_impl(&_mh_execute_header, log, v108, "%{public}s Unexpected friend.type %s", v92, 0x16u);
          swift_arrayDestroy();

          v97(v102, v103);
          sub_10002172C(v104, type metadata accessor for DataManager.State);
        }

        else
        {
          v99 = *(v0 + 40);

          v100 = *(v88 + 8);
          v100(v86, v87);
          v100(v85, v87);
          sub_10002172C(v84, type metadata accessor for DataManager.State);
          v96 = *(v99 + 8);
        }

        v96(*(v0 + 56), *(v0 + 32));
        goto LABEL_19;
      }

      v80 = *(v0 + 160);
      (*(*(v0 + 72) + 8))(*(v0 + 120), *(v0 + 64));
      v40 = v80;
      goto LABEL_18;
    }

    (*(*(v0 + 72) + 16))(*(v0 + 112), *(v0 + 120), *(v0 + 64));
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 112);
    v66 = *(v0 + 64);
    v67 = *(v0 + 72);
    if (v64)
    {
      v68 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v109 = v107;
      *v68 = 136315138;
      sub_1000DD460(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v72 = *(v67 + 8);
      v72(v65, v66);
      v73 = sub_10000D01C(v69, v71, &v109);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v62, v63, "Removed a following: %s", v68, 0xCu);
      sub_100004984(v107);
    }

    else
    {

      v72 = *(v67 + 8);
      v72(v65, v66);
    }

    *(v0 + 304) = v72;
    v75 = swift_allocObject();
    *(v0 + 312) = v75;
    swift_weakInit();
    v79 = swift_task_alloc();
    *(v0 + 320) = v79;
    *v79 = v0;
    v79[1] = sub_1000D8E84;
    v78 = sub_1000DD4B0;
    v77 = &type metadata for () + 1;
  }

  return unsafeBlocking<A>(_:)(v79, v78, v75, v77);
}

uint64_t sub_1000D8E84()
{

  return _swift_task_switch(sub_1000D8F9C, 0, 0);
}

uint64_t sub_1000D8F9C()
{
  v1 = *(v0 + 160);
  (*(v0 + 304))(*(v0 + 120), *(v0 + 64));
  sub_10002172C(v1, type metadata accessor for DataManager.State);
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_1000D7F40;
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);

  return AsyncStream.Iterator.next(isolation:)(v3, 0, 0, v4);
}

uint64_t sub_1000D907C()
{

  return _swift_task_switch(sub_1000D9194, 0, 0);
}

uint64_t sub_1000D9194()
{
  v1 = *(v0 + 160);
  (*(v0 + 328))(*(v0 + 120), *(v0 + 64));
  sub_10002172C(v1, type metadata accessor for DataManager.State);
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_1000D7F40;
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);

  return AsyncStream.Iterator.next(isolation:)(v3, 0, 0, v4);
}

uint64_t sub_1000D9274()
{
  v11 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[36];
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E0460, &v10);
    *(v4 + 12) = 2082;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D94F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = *(Strong + 128), v3 = Strong, v4 = swift_allocObject(), *(v4 + 16) = sub_1000DD4B8, *(v4 + 24) = v3, aBlock[4] = sub_1000C7A78, aBlock[5] = v4, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_10013EC94, aBlock[3] = &unk_10058EF00, v5 = _Block_copy(aBlock), , , , dispatch_sync(v2, v5), _Block_release(v5), LOBYTE(v2) = swift_isEscapingClosureAtFileLocation(), , result = , (v2 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1000D96AC@<X0>(BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    PassthroughSubject.send(_:)();
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_1000D972C()
{
  v1 = v0;
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v2 = Publisher<>.sink(receiveValue:)();

  *(v1 + 24) = v2;
}

void sub_1000D9848(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocationSharing: recompute sharing status after me device change", v5, 2u);
  }

  if (v1)
  {
    sub_1000DA4A0();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "LocationSharing: Me device state is unknown. Lets not recompute", v7, 2u);
    }
  }
}

uint64_t sub_1000D99F8(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {
    v2 = v1[1];

    return v2();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v1[3] = sub_10000A6F0(v4, qword_1005DFB98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "LocationSharing: Computing LocationSharing status", v7, 2u);
    }

    v8 = swift_task_alloc();
    v1[4] = v8;
    *v8 = v1;
    v8[1] = sub_1000D9B84;

    return daemon.getter();
  }
}

uint64_t sub_1000D9B84(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SettingsService(0);
  v6 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DD460(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  *v3 = v9;
  v3[1] = sub_1000D9D60;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000D9D60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000DA1D8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[9] = v5;
    *v5 = v4;
    v5[1] = sub_1000D9EEC;

    return sub_100483D2C(1);
  }
}

uint64_t sub_1000D9EEC(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1000DA33C;
  }

  else
  {
    *(v4 + 90) = a1 & 1;
    v5 = sub_1000DA018;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DA018()
{
  v1 = *(v0 + 90);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    *(v6 + 4) = *(v0 + 89);

    _os_log_impl(&_mh_execute_header, v4, v5, "ComputeLocationSharing: Updating sharing status to %{BOOL}d", v6, 8u);
  }

  else
  {
  }

  *(v0 + 88) = sub_100021BB4() & 1;
  CurrentValueSubject.send(_:)();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000DA1D8()
{

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
    _os_log_impl(&_mh_execute_header, v1, v2, "ComputeLocationSharing: Error getting status of sharing %@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000DA33C()
{

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
    _os_log_impl(&_mh_execute_header, v1, v2, "ComputeLocationSharing: Error getting status of sharing %@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000DA4A0()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RecomputeLocationSharing", v3, 2u);
  }

  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1000DA5F0()
{
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1005DFBF8;
  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  *(v0 + 103) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000DA6F4;

  return daemon.getter();
}

uint64_t sub_1000DA6F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SettingsService(0);
  v6 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DD460(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  *v3 = v9;
  v3[1] = sub_1000DA8D0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000DA8D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000DAE24, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[10] = v5;
    *v5 = v4;
    v5[1] = sub_1000DAA5C;

    return sub_100483D2C(1);
  }
}

uint64_t sub_1000DAA5C(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1000DB0C8;
  }

  else
  {
    *(v4 + 104) = a1 & 1;
    v5 = sub_1000DAB88;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DAB88()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 103);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v2 == 1)
  {
    v5 = *(v0 + 99);
  }

  else
  {
    v5 = 0;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 103) == 1;
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    *(v10 + 4) = *(v0 + 102);

    *(v10 + 8) = 1024;
    *(v10 + 10) = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "RecomputeLocationSharing: isMyLocationEnabled %{BOOL}d isThisMeDevice %{BOOL}d", v10, 0xEu);
  }

  else
  {
  }

  swift_unownedRetainStrong();
  CurrentValueSubject.value.getter();

  if (v5 != *(v0 + 100))
  {
    *(v0 + 101) = v5;
    CurrentValueSubject.send(_:)();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000DAE24()
{
  v15 = v0;
  v1 = *(v0 + 72);

  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  v2 = *(v0 + 97);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  swift_retain_n();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v2 == 1;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315650;
    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    *(v7 + 14) = *(v0 + 98);

    *(v7 + 18) = 1024;
    *(v7 + 20) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "RecomputeLocationSharing: error recomputing location sharing status. Error %s Sharing enabled: %{BOOL}d isThisMeDevice: %{BOOL}d", v7, 0x18u);
    sub_100004984(v8);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000DB0C8()
{
  v15 = v0;
  v1 = *(v0 + 88);

  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  v2 = *(v0 + 97);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  swift_retain_n();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v2 == 1;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315650;
    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    *(v7 + 14) = *(v0 + 98);

    *(v7 + 18) = 1024;
    *(v7 + 20) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "RecomputeLocationSharing: error recomputing location sharing status. Error %s Sharing enabled: %{BOOL}d isThisMeDevice: %{BOOL}d", v7, 0x18u);
    sub_100004984(v8);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

char *sub_1000DB36C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 128);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_10004B564(&qword_1005A9FC0, &qword_1004C3520);
  unsafeFromAsyncTask<A>(_:)();
  v14 = v56[3];
  swift_beginAccess();
  *(v1 + 136) = _swiftEmptyDictionarySingleton;

  v16 = *(v14 + 16);
  if (!v16)
  {
    sub_1000C8450(v14, 0);
    sub_1000C8450(v14, 0);
    return _swiftEmptyArrayStorage;
  }

  v13 = _swiftEmptyArrayStorage;
  v50 = v14;
  v17 = (v14 + 64);
  *&v15 = 136315394;
  v51 = v15;
  v52 = v1;
  while (1)
  {
    v21 = *(v17 - 3);
    v54 = *(v17 - 4);
    v23 = *(v17 - 2);
    v22 = *(v17 - 1);
    v8 = *v17;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1001FD1C8(0, *(v13 + 2) + 1, 1, v13);
    }

    v25 = *(v13 + 2);
    v24 = *(v13 + 3);
    if (v25 >= v24 >> 1)
    {
      v13 = sub_1001FD1C8((v24 > 1), v25 + 1, 1, v13);
    }

    *(v13 + 2) = v25 + 1;
    v53 = v13;
    v26 = &v13[40 * v25];
    *(v26 + 4) = v54;
    *(v26 + 5) = v21;
    *(v26 + 6) = v23;
    *(v26 + 7) = v22;
    *(v26 + 8) = v8;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v1 + 136);
    v28 = v55;
    *(v1 + 136) = 0x8000000000000000;
    v29 = sub_1000110D8(v22, v8);
    v31 = v28[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = v30;
    if (v28[3] < v34)
    {
      sub_10022C6A4(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_1000110D8(v22, v8);
      if ((v35 & 1) != (v36 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_20:
      v37 = v55;
      if (v35)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v39 = v29;
    sub_100202A1C();
    v29 = v39;
    v37 = v55;
    if (v35)
    {
LABEL_21:
      v38 = (v37[7] + 16 * v29);
      *v38 = v54;
      v38[1] = v21;

      goto LABEL_25;
    }

LABEL_23:
    v37[(v29 >> 6) + 8] |= 1 << v29;
    v40 = (v37[6] + 16 * v29);
    *v40 = v22;
    v40[1] = v8;
    v41 = (v37[7] + 16 * v29);
    *v41 = v54;
    v41[1] = v21;
    v42 = v37[2];
    v33 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v33)
    {
      goto LABEL_33;
    }

    v37[2] = v43;
LABEL_25:
    *(v1 + 136) = v37;
    swift_endAccess();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFB98);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v18 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v18 = v51;

      v19 = sub_10000D01C(v22, v8, v56);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;

      v20 = sub_10000D01C(v54, v21, v56);

      *(v18 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v45, v46, "#sharesLocation with me - %s - %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v1 = v52;
    v13 = v53;
    v17 += 5;
    if (!--v16)
    {
      v47 = v50;
      sub_1000C8450(v50, 0);
      sub_1000C8450(v47, 0);
      return v13;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  swift_once();
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unable to get handlesSharingLocationsWithMe", v12, 2u);
  }

  sub_1000C8450(v8, 1);

  return _swiftEmptyArrayStorage;
}