uint64_t type metadata accessor for LeftBehindUserNotification(uint64_t a1)
{
  result = qword_1016A2418;
  if (!qword_1016A2418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004AB638(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004AB6A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

void sub_1004AB728(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1004AB80C(319);
    if (v2 <= 0x3F)
    {
      sub_1000E3404();
      if (v3 <= 0x3F)
      {
        sub_100008BB8(319, &qword_1016A3160, CLLocation_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004AB80C(uint64_t a1)
{
  if (!qword_1016A2428)
  {
    sub_100008BB8(255, &unk_1016B1680, SPSafeLocation_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A2428);
    }
  }
}

void sub_1004AB878(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_100F9C72C(a1);
  if (v7)
  {
    __chkstk_darwin(v7);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AE28);

    v14 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      if (a3)
      {
        v12 = a3;
      }

      else
      {
        a2 = 0x6E776F6E6B6E75;
        v12 = 0xE700000000000000;
      }

      v13 = sub_1000136BC(a2, v12, &v15);

      *(v10 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v14, v9, "Failed to store wrapped connection for context %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {
    }
  }
}

void sub_1004ABAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v29) = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCSession.identifier.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(a1 + 56);
  *(a1 + 56) = 0x8000000000000000;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v31 = v29;
  sub_100FFA5B4(v30, v14, isUniquelyReferenced_nonNull_native);
  v16 = *(v12 + 8);
  v29 = v12 + 8;
  v16(v14, v11);
  *(a1 + 56) = v33;
  swift_endAccess();
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177AE28);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    XPCSession.identifier.getter();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;

    v28(v14, v11);
    v26 = sub_1000136BC(v23, v25, v32);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Added new delegated location publish subscription %{private,mask.hash}s.", v21, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {
  }
}

uint64_t sub_1004ABE08(uint64_t a1)
{
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 88);
  sub_1004E46C0(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_10002AAA4(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SharedBeaconRecord);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1004E4B04;
  *(v9 + 24) = v8;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101623AF0;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004AC01C()
{
  result = qword_1016A2470;
  if (!qword_1016A2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2470);
  }

  return result;
}

uint64_t sub_1004AC080()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177ADF0 = result;
  return result;
}

uint64_t sub_1004AC0FC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ADF8);
  sub_1000076D4(v0, qword_10177ADF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004AC1AC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AE28);
  sub_1000076D4(v0, qword_10177AE28);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004AC254(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100044B3C(v5, a2);
  sub_1000076D4(v5, a2);
  return Logger.init(subsystem:category:)();
}

void *sub_1004AC2CC(uint64_t (*a1)())
{
  v65 = a1;
  v56 = type metadata accessor for SystemInfo.DeviceLockState();
  v64 = *(v56 - 8);
  v1 = __chkstk_darwin(v56);
  v55 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v54 = &v44 - v3;
  v66 = type metadata accessor for UUID();
  v60 = *(v66 - 8);
  __chkstk_darwin(v66);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v73 = _swiftEmptyArrayStorage;
  v11 = *(v65 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v52 = *(v60 + 16);
    v51 = (v64 + 104);
    v50 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v49 = (v64 + 8);
    v47 = &v68;
    v53 = (v60 + 8);
    v15 = v65 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v46 = *(v60 + 72);
    v58 = xmmword_101385D80;
    v16 = v45;
    v60 += 16;
    while (1)
    {
      v63 = v14;
      v61 = v11;
      v64 = v12;
      v65 = v13;
      v52(v16, v15, v66);
      v62 = *(v57 + 280);
      v17 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v18 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v19 = swift_allocObject();
      *(v19 + 16) = v58;
      v20 = UUID.uuidString.getter();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      v48 = sub_100008C00();
      *(v19 + 64) = v48;
      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "beaconRecord(for uuid: %@)", 26, 2, v19);

      v23 = v54;
      static SystemInfo.lockState.getter();
      v24 = v55;
      v25 = v56;
      (*v51)(v55, v50, v56);
      sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *v49;
      (*v49)(v24, v25);
      v26(v23, v25);
      if (v20)
      {
        break;
      }

      v27 = sub_100007F54();
      __chkstk_darwin(v27);
      *(&v44 - 2) = v16;
      v14 = v63;
      sub_1000314D0(sub_1004E4EC0, v27, &aBlock);

      if (!*(&v68 + 1))
      {
        goto LABEL_13;
      }

      sub_10000A748(&aBlock, &v72);
      sub_10001F280(&v72, &v71);
      v28 = swift_allocObject();
      *(v28 + 16) = &v73;
      sub_10000A748(&v71, v28 + 24);
      sub_1000BB27C(v65, v64);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1004E3360;
      *(v29 + 24) = v28;
      v69 = sub_10040B9F8;
      v70 = v29;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v68 = sub_10013FE14;
      *(&v68 + 1) = &unk_101623140;
      v30 = _Block_copy(&aBlock);

      dispatch_sync(v59, v30);
      _Block_release(v30);
      sub_100007BAC(&v72);
      (*v53)(v16, v66);
      LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

      if (v30)
      {
        __break(1u);
        goto LABEL_17;
      }

      v15 += v46;
      v13 = sub_1004E3360;
      v12 = v28;
      v11 = v61 - 1;
      if (v61 == 1)
      {
        goto LABEL_11;
      }
    }

    v34 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v18, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    v69 = 0;
    aBlock = 0u;
    v68 = 0u;
LABEL_13:
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v14 = static os_log_type_t.error.getter();
    if (qword_101695028 == -1)
    {
      goto LABEL_14;
    }

LABEL_17:
    swift_once();
LABEL_14:
    v35 = qword_10177C370;
    v36 = swift_allocObject();
    *(v36 + 16) = v58;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = v45;
    v38 = v66;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v48;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v40;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v35, "Unable to obtain beaconRecord for %@", 36, 2, v36);

    (*v53)(v37, v38);
    v32 = v65;
    v33 = v64;
  }

  else
  {
    v13 = 0;
    v28 = 0;
LABEL_11:
    v31 = v13;

    v32 = v31;
    v33 = v28;
  }

  v42 = v73;
  sub_1000BB27C(v32, v33);
  return v42;
}

uint64_t sub_1004ACD20(uint64_t *a1, uint64_t a2)
{
  sub_10001F280(a2, v15);
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000084AC(0, v3[2] + 1, 1, v3);
    *a1 = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    *a1 = sub_1000084AC((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v16;
  v8 = v17;
  v9 = sub_10015049C(v15, v16);
  __chkstk_darwin(v9);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  sub_100B039C0(v6, v11, a1, v7, v8);
  return sub_100007BAC(v15);
}

uint64_t sub_1004ACE8C(uint64_t a1)
{
  v2 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v2);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = __chkstk_darwin(v5);
  v91 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v86 - v8;
  v10 = type metadata accessor for UUID();
  v92 = *(v10 - 8);
  v93 = v10;
  __chkstk_darwin(v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v97);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AE10);
    sub_10001F280(a1, v94);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v98 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      v22 = v95;
      v21 = v96;
      sub_1000035D0(v94, v95);
      (*(*(*(v21 + 8) + 8) + 32))(v22);
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = v93;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v92 + 8))(v12, v23);
      sub_100007BAC(v94);
      v27 = sub_1000136BC(v24, v26, &v98);

      *(v19 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Allowed to locate owned beacon %{private,mask.hash}s.", v19, 0x16u);
      sub_100007BAC(v20);
    }

    else
    {

      sub_100007BAC(v94);
    }

    v45 = type metadata accessor for OwnedBeaconRecord;
    v46 = v15;
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    v4 = v91;
    sub_10002AAA4(v9, v91, type metadata accessor for SharedBeaconRecord);
    My = type metadata accessor for Feature.FindMy();
    v95 = My;
    v96 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v29 = sub_1000280DC(v94);
    (*(*(My - 8) + 104))(v29, enum case for Feature.FindMy.itemSharing(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v94);
    if ((My & 1) == 0)
    {
      if (v4[v5[13]] == 1 && *&v4[v5[11]] == -1 && *&v4[v5[12]] == -1)
      {
        goto LABEL_38;
      }

LABEL_28:
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_1000076D4(v48, qword_10177AE10);
      sub_10001F280(a1, v94);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v98 = v52;
        *v51 = 141558275;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        v54 = v95;
        v53 = v96;
        sub_1000035D0(v94, v95);
        (*(*(*(v53 + 8) + 8) + 32))(v54);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = v93;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        (*(v92 + 8))(v12, v55);
        sub_100007BAC(v94);
        v59 = sub_1000136BC(v56, v58, &v98);

        *(v51 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v49, v50, "Not locating shared beacon %{private,mask.hash}s.", v51, 0x16u);
        sub_100007BAC(v52);

        sub_1004E4A04(v4, type metadata accessor for SharedBeaconRecord);
LABEL_46:
        v84 = 0;
        goto LABEL_47;
      }

      sub_1004E4A04(v4, type metadata accessor for SharedBeaconRecord);
      goto LABEL_45;
    }

    v30 = v4[v5[16]];
    v31 = v30 != 2;
    v32 = v30 == 5;
    if (*&v4[v5[11]] != -1 || *&v4[v5[12]] != -1)
    {
      v31 = 0;
      if (v30 == 5)
      {
        v32 = v4[v5[13]];
      }

      else
      {
        v32 = 0;
      }

      if (v4[v5[13]] == 1 && v30 == 2)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177AE10);
      sub_10001F280(a1, v94);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v90 = v30 == 5;
        v88 = v30 == 2;
        v36 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v98 = v89;
        *v36 = 141559299;
        *(v36 + 4) = 1752392040;
        *(v36 + 12) = 2081;
        v87 = v32;
        v38 = v95;
        v37 = v96;
        sub_1000035D0(v94, v95);
        (*(*(*(v37 + 8) + 8) + 32))(v38);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v39 = v31;
        v40 = v93;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v92 + 8))(v12, v40);
        sub_100007BAC(v94);
        v44 = sub_1000136BC(v41, v43, &v98);

        *(v36 + 14) = v44;
        *(v36 + 22) = 1024;
        *(v36 + 24) = v88;
        *(v36 + 28) = 1024;
        *(v36 + 30) = v39;
        *(v36 + 34) = 1024;
        *(v36 + 36) = v90;
        *(v36 + 40) = 1024;
        LOBYTE(v39) = v87;
        *(v36 + 42) = v87;
        _os_log_impl(&_mh_execute_header, v34, v35, "Should locate shared beacon? beacon:%{private,mask.hash}s, isExplicitSharedBeacon: %{BOOL}d, isUTSFAutomaticSelfBeacon: %{BOOL}d, isImportedBeacon: %{BOOL}d result: %{BOOL}d.", v36, 0x2Eu);
        sub_100007BAC(v89);

        v4 = v91;

        if (v39)
        {
          goto LABEL_38;
        }
      }

      else
      {

        sub_100007BAC(v94);
        if (v32)
        {
LABEL_38:
          if (qword_101694770 != -1)
          {
            swift_once();
          }

          v72 = type metadata accessor for Logger();
          sub_1000076D4(v72, qword_10177AE10);
          sub_10001F280(a1, v94);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v73, v74))
          {

            sub_1004E4A04(v4, type metadata accessor for SharedBeaconRecord);
            sub_100007BAC(v94);
            v84 = 1;
            goto LABEL_47;
          }

          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v98 = v76;
          *v75 = 141558275;
          *(v75 + 4) = 1752392040;
          *(v75 + 12) = 2081;
          v78 = v95;
          v77 = v96;
          sub_1000035D0(v94, v95);
          (*(*(*(v77 + 8) + 8) + 32))(v78);
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v79 = v93;
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          v82 = v81;
          (*(v92 + 8))(v12, v79);
          sub_100007BAC(v94);
          v83 = sub_1000136BC(v80, v82, &v98);

          *(v75 + 14) = v83;
          _os_log_impl(&_mh_execute_header, v73, v74, "Allowed to locate shared/imported self-beacon %{private,mask.hash}s.", v75, 0x16u);
          sub_100007BAC(v76);

          v47 = type metadata accessor for SharedBeaconRecord;
          goto LABEL_42;
        }
      }

      goto LABEL_28;
    }

    if (v30 == 4)
    {
      v31 = 1;
      if ((v4[v5[13]] & 1) == 0)
      {
        v32 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      if (v4[v5[13]] != 1)
      {
        v32 = 0;
        v31 = v30 == 1;
        goto LABEL_16;
      }

      if ((v30 - 1) > 1)
      {
        v31 = 0;
        goto LABEL_16;
      }
    }

LABEL_15:
    v32 = 1;
    goto LABEL_16;
  }

  if (!swift_dynamicCast())
  {
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000076D4(v60, qword_10177AE10);
    sub_10001F280(a1, v94);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v98 = v64;
      *v63 = 141558275;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      v66 = v95;
      v65 = v96;
      sub_1000035D0(v94, v95);
      (*(*(*(v65 + 8) + 8) + 32))(v66);
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = v93;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v92 + 8))(v12, v67);
      sub_100007BAC(v94);
      v71 = sub_1000136BC(v68, v70, &v98);

      *(v63 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v61, v62, "Unknown beacon type, not locating %{private,mask.hash}s.", v63, 0x16u);
      sub_100007BAC(v64);

      goto LABEL_46;
    }

LABEL_45:
    sub_100007BAC(v94);
    goto LABEL_46;
  }

  v47 = type metadata accessor for LocalFindableAccessoryRecord;
LABEL_42:
  v45 = v47;
  v46 = v4;
LABEL_43:
  sub_1004E4A04(v46, v45);
  v84 = 1;
LABEL_47:
  sub_100007BAC(v97);
  return v84;
}

uint64_t sub_1004ADD04(void (*a1)(uint64_t, unint64_t), uint64_t a2, void (*a3)(uint64_t, unint64_t), int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v113 = a6;
  v111 = a5;
  v120 = a4;
  v110 = a2;
  v119 = type metadata accessor for DispatchWorkItemFlags();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for DispatchQoS();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v107 = *(v12 - 8);
  v108 = *(v107 + 64);
  __chkstk_darwin(v12 - 8);
  v109 = &v104 - v13;
  v14 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v14 - 8);
  v131 = (&v104 - v15);
  *&v130 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(v130 - 8);
  v17 = __chkstk_darwin(v130);
  v124 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v123 = &v104 - v20;
  __chkstk_darwin(v19);
  v122 = &v104 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v22 - 8);
  v24 = &v104 - v23;
  v25 = type metadata accessor for UUID();
  v106 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v128 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v125 = &v104 - v28;
  if (qword_101694770 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v29 = type metadata accessor for Logger();
    v30 = sub_1000076D4(v29, qword_10177AE10);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v33 = os_log_type_enabled(v31, v32);
    v134 = v30;
    v135 = v25;
    v112 = a3;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&aBlock = v35;
      *v34 = 136446210;
      sub_1004E3130();
      v36 = Set.description.getter();
      v38 = sub_1000136BC(v36, v37, &aBlock);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Latest locations requested for sources %{public}s.", v34, 0xCu);
      sub_100007BAC(v35);
    }

    v39 = *(a1 + 16);
    v133 = v7;
    if (!v39)
    {
      break;
    }

    v40 = sub_1004AC2CC(a1);
    v42 = &_swiftEmptySetSingleton;
    v145 = &_swiftEmptySetSingleton;
    a1 = v40[2];
    v132 = v40;
    v129 = a1;
    if (!a1)
    {
      goto LABEL_15;
    }

    v43 = (v40 + 4);
    v44 = (v106 + 48);
    v127 = (v106 + 32);
    v105 = v16;
    v45 = (v16 + 48);
    v46 = &qword_1016980D0;
    v126 = (v106 + 8);
    v47 = v125;
    v121 = v24;
    do
    {
      sub_10001F280(v43, &aBlock);
      v52 = v138;
      v51 = v139;
      sub_1000035D0(&aBlock, v138);
      (*(v51 + 25))(v52, v51);
      v53 = v135;
      if ((*v44)(v24, 1, v135) == 1)
      {
        v48 = v24;
        v49 = v46;
        v50 = &unk_10138F3B0;
LABEL_8:
        sub_10000B3A8(v48, v49, v50);
        goto LABEL_9;
      }

      (*v127)(v47, v24, v53);
      v54 = v131;
      sub_100AC53EC(v47, v131);
      if ((*v45)(v54, 1, v130) == 1)
      {
        (*v126)(v47, v53);
        v48 = v54;
        v49 = &unk_1016AF8B0;
        v50 = &unk_1013A0700;
        goto LABEL_8;
      }

      v55 = v46;
      v56 = v45;
      v57 = v122;
      sub_10002AAA4(v54, v122, type metadata accessor for OwnedBeaconGroup);
      v58 = v124;
      sub_1004E46C0(v57, v124, type metadata accessor for OwnedBeaconGroup);
      v59 = v123;
      sub_100DEDBEC(v123, v58);
      v60 = v59;
      v47 = v125;
      sub_1004E4A04(v60, type metadata accessor for OwnedBeaconGroup);
      v61 = v57;
      v45 = v56;
      v46 = v55;
      v24 = v121;
      sub_1004E4A04(v61, type metadata accessor for OwnedBeaconGroup);
      (*v126)(v47, v53);
LABEL_9:
      sub_100007BAC(&aBlock);
      v43 += 40;
      --a1;
    }

    while (a1);
    v42 = v145;
    a1 = v129;
    v16 = v105;
LABEL_15:
    a3 = v42[2];
    v126 = v42;
    if (!a3)
    {
      v127 = _swiftEmptyArrayStorage;
      v7 = v132;
      if (!a1)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    v62 = sub_1003A8790(a3, 0);
    v63 = sub_1003AA03C(&aBlock, v62 + ((v16[80] + 32) & ~v16[80]), a3, v42);
    v24 = *(&aBlock + 1);
    v64 = aBlock;
    v16 = v138;

    result = sub_1000128F8(v64);
    if (v63 != a3)
    {
      __break(1u);
      return result;
    }

    v127 = v62;
    v7 = v132;
    if (!a1)
    {
LABEL_37:

      goto LABEL_42;
    }

LABEL_31:
    v25 = 0;
    v77 = (v7 + 4);
    v131 = (v106 + 8);
    *&v41 = 141558275;
    v130 = v41;
    while (v25 < v7[2])
    {
      sub_10001F280(v77, &aBlock);
      sub_10001F280(&aBlock, &v142);
      v78 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v24))
      {
        a3 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v141 = v79;
        *a3 = v130;
        *(a3 + 4) = 1752392040;
        *(a3 + 6) = 2081;
        v81 = v143;
        v80 = v144;
        sub_1000035D0(&v142, v143);
        v82 = v128;
        (*(*(*(v80 + 8) + 8) + 32))(v81);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v83 = v135;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v85;
        v86 = v83;
        a1 = v129;
        (*v131)(v82, v86);
        sub_100007BAC(&v142);
        v87 = sub_1000136BC(v84, v16, &v141);

        *(a3 + 14) = v87;
        _os_log_impl(&_mh_execute_header, v78, v24, "Latest locations requested for beacon %{private,mask.hash}s.", a3, 0x16u);
        sub_100007BAC(v79);
        v7 = v132;
      }

      else
      {

        sub_100007BAC(&v142);
      }

      ++v25;
      sub_100007BAC(&aBlock);
      v77 += 40;
      if (a1 == v25)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  a3 = v7[35];
  v66 = sub_100007F54();
  v25 = v66;
  v67 = v66[2];
  if (v67)
  {
    a1 = 0;
    v68 = (v66 + 4);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      if (a1 >= *(v25 + 16))
      {
        goto LABEL_46;
      }

      sub_10001F280(v68, &aBlock);
      v69 = v138;
      v24 = v139;
      sub_1000035D0(&aBlock, v138);
      if (sub_1012BD9FC(v69, v24))
      {
        sub_100007BAC(&aBlock);
      }

      else
      {
        sub_10000A748(&aBlock, &v142);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v7[2] + 1, 1);
          v7 = v145;
        }

        v24 = v7[2];
        v71 = v7[3];
        if (v24 >= v71 >> 1)
        {
          sub_100025B1C((v71 > 1), (v24 + 1), 1);
        }

        v72 = v143;
        v73 = v144;
        v74 = sub_10015049C(&v142, v143);
        __chkstk_darwin(v74);
        v16 = &v104 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v76 + 16))(v16);
        sub_1006252D4(v24, v16, &v145, v72, v73);
        sub_100007BAC(&v142);
        v7 = v145;
      }

      ++a1;
      v68 += 40;
    }

    while (v67 != a1);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v127 = sub_100008CA0();
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "Latest locations requested default empty array []. Returning all owned beacons.", v90, 2u);
  }

LABEL_42:
  v91 = v133;
  v92 = sub_1004DB99C(v7);

  sub_1000138F0();
  v135 = v91[16];
  v93 = v109;
  sub_1000D2A70(v110, v109, &unk_101696900, &unk_10138B1E0);
  v94 = (*(v107 + 80) + 40) & ~*(v107 + 80);
  v95 = (v108 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  v96[2] = v91;
  v96[3] = v92;
  v96[4] = v112;
  sub_1000D2AD8(v93, v96 + v94, &unk_101696900, &unk_10138B1E0);
  *(v96 + v95) = v127;
  v97 = (v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8));
  v98 = v113;
  *v97 = v111;
  v97[1] = v98;
  v139 = sub_1004E3064;
  v140 = v96;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v137 = sub_100006684;
  v138 = &unk_101623000;
  v99 = _Block_copy(&aBlock);

  v100 = v114;
  static DispatchQoS.unspecified.getter();
  v142 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v101 = v116;
  v102 = v119;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v99);
  (*(v118 + 8))(v101, v102);
  (*(v115 + 8))(v100, v117);

  if (v120)
  {
    v103 = type metadata accessor for Transaction();
    __chkstk_darwin(v103);
    *(&v104 - 2) = v91;
    *(&v104 - 1) = v92;
    static Transaction.named<A>(_:with:)();
  }

  return sub_10089193C();
}

uint64_t sub_1004AED5C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v45 = a5;
  v42 = a6;
  v43 = a3;
  v40 = a4;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v8 - 8);
  v41 = &v39 - v10;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v14 = sub_101073F84(v49);

  if (v14)
  {
    sub_1004AF1D8(a2);
  }

  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + 32;
    v17 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v16, &v49);
      v18 = v50;
      v19 = v51;
      sub_1000035D0(&v49, v50);
      if ((*(v19 + 112))(v18, v19))
      {
        sub_10000A748(&v49, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52[0] = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v17[2] + 1, 1);
          v17 = v52[0];
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          sub_100025B1C((v21 > 1), v22 + 1, 1);
        }

        v23 = v47;
        v24 = v48;
        v25 = sub_10015049C(v46, v47);
        __chkstk_darwin(v25);
        v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v27);
        sub_1006252D4(v22, v27, v52, v23, v24);
        sub_100007BAC(v46);
        v17 = v52[0];
      }

      else
      {
        sub_100007BAC(&v49);
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  v30 = v41;
  sub_1000D2A70(v40, v41, &unk_101696900, &unk_10138B1E0);
  v31 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v32 = (v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v40 = v13;
  v35 = v43;
  v34[4] = a2;
  v34[5] = v35;
  sub_1000D2AD8(v30, v34 + v31, &unk_101696900, &unk_10138B1E0);
  v36 = v44;
  *(v34 + v32) = v45;
  *(v34 + v33) = v17;
  v37 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v42;
  v37[1] = v36;

  sub_100A838D4(0, 0, v40, &unk_1013AAFA8, v34);
}

void sub_1004AF1D8(char *a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v127 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v126 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v125 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for LocationFetcher(0);
  v7 = *(v129 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v129);
  __chkstk_darwin(v9);
  v133 = (&v122 - v10);
  v11 = type metadata accessor for UUID();
  v144 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v147 = &v122 - v16;
  v17 = __chkstk_darwin(v15);
  v142 = &v122 - v18;
  v19 = __chkstk_darwin(v17);
  v136 = &v122 - v20;
  __chkstk_darwin(v19);
  v22 = &v122 - v21;
  v23 = [objc_opt_self() mainBundle];
  v24 = [v23 bundleIdentifier];

  v132 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v8;
  v130 = v7;
  v128 = v2;
  if (v24)
  {
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = v25;
  }

  else
  {
    v148 = 0;
    v146 = 0;
  }

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10138C0D0;
  v27 = SPBeaconTypeDurian;
  v28 = SPBeaconTypeAccessory;
  *(v26 + 32) = SPBeaconTypeDurian;
  *(v26 + 40) = v28;
  v29 = SPBeaconTypeHele;
  v30 = SPBeaconTypeSelfBeaconing;
  *(v26 + 48) = SPBeaconTypeHele;
  *(v26 + 56) = v30;
  v31 = SPBeaconTypeVirtualMeDevice;
  *(v26 + 64) = SPBeaconTypeVirtualMeDevice;
  v32 = qword_101694940;
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  if (v32 != -1)
  {
LABEL_50:
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v38 = sub_1010741C0(v157);

  My = type metadata accessor for Feature.FindMy();
  *(&v158 + 1) = My;
  *&v159 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v40 = sub_1000280DC(&v157);
  (*(*(My - 8) + 104))(v40, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v157);
  *&v157 = v38;
  BYTE8(v157) = 1;
  *&v158 = &off_101609108;
  BYTE8(v158) = 0;
  *&v159 = v148;
  *(&v159 + 1) = v146;
  *&v160 = v26;
  BYTE8(v160) = My & 1;
  v161 = 0uLL;
  v162 = 1;
  v41 = *(a1 + 2);
  v42 = _swiftEmptyArrayStorage;
  v143 = v41;
  v122 = a1;
  if (v41)
  {
    v154 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v41, 0);
    v42 = v154;
    v43 = (a1 + 32);
    do
    {
      sub_10001F280(v43, &v150);
      v45 = v151;
      v44 = v152;
      sub_1000035D0(&v150, v151);
      (*(*(v44[1] + 1) + 32))(v45);
      sub_100007BAC(&v150);
      v154 = v42;
      a1 = v42[2];
      v46 = v42[3];
      if (a1 >= v46 >> 1)
      {
        sub_101123D4C((v46 > 1), (a1 + 1), 1);
        v42 = v154;
      }

      v42[2] = a1 + 1;
      (*(v144 + 32))(v42 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * a1, v22, v11);
      v43 += 40;
      --v41;
    }

    while (v41);
  }

  v47 = sub_10000954C(v42);

  v48 = sub_100A45230(v47);

  v49 = *(v48 + 56);
  v148 = v48 + 56;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v49;
  v26 = (v50 + 63) >> 6;
  v146 = v144 + 16;
  v53 = (v144 + 8);
  v145 = v48;

  v54 = 0;
  *&v55 = 141558275;
  v134 = v55;
  v22 = v136;
  v141 = v26;
  while (v52)
  {
LABEL_20:
    v58 = *(v144 + 16);
    v58(v22, *(v145 + 48) + *(v144 + 72) * (__clz(__rbit64(v52)) | (v54 << 6)), v11);
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000076D4(v59, qword_10177AE10);
    v58(v142, v22, v11);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v139 = v60;
      v63 = v62;
      v138 = swift_slowAlloc();
      *&v150 = v138;
      *v63 = v134;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v137 = v61;
      v64 = v142;
      v140 = v53 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = *v53;
      (*v53)(v64, v11);
      v69 = sub_1000136BC(v65, v67, &v150);

      *(v63 + 14) = v69;
      v70 = v139;
      _os_log_impl(&_mh_execute_header, v139, v137, "Added disk locating state for beacon: %{private,mask.hash}s.", v63, 0x16u);
      a1 = v138;
      sub_100007BAC(v138);

      v56 = v68;
      v22 = v136;
    }

    else
    {

      v56 = *v53;
      (*v53)(v142, v11);
    }

    v26 = v141;
    v52 &= v52 - 1;
    v56(v22, v11);
  }

  while (1)
  {
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v57 >= v26)
    {
      break;
    }

    v52 = *(v148 + 8 * v57);
    ++v54;
    if (v52)
    {
      v54 = v57;
      goto LABEL_20;
    }
  }

  v71 = v145;

  if (*(v71 + 16))
  {
    v72 = *(v135 + 280);
    v155 = &_s13DefaultPolicyVN;
    v156 = sub_100111A48();
    v73 = swift_allocObject();
    v154 = v73;
    v74 = v160;
    *(v73 + 48) = v159;
    *(v73 + 64) = v74;
    *(v73 + 80) = v161;
    *(v73 + 96) = v162;
    v75 = v158;
    *(v73 + 16) = v157;
    *(v73 + 32) = v75;
    v76 = qword_101694920;
    v142 = v72;

    if (v76 != -1)
    {
      swift_once();
    }

    v140 = qword_10177B2E8;

    v141 = sub_100908168(_swiftEmptyArrayStorage);
    v139 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v138 = "apply(changeSet:)";
    (*(v123 + 104))(v125, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v124);

    static DispatchQoS.unspecified.getter();
    *&v150 = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v77 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v78 = v133;
    v133[2] = v77;
    v79 = v129;
    v80 = *(v129 + 40);
    type metadata accessor for DeviceIdentityUtility(0);
    v81 = swift_allocObject();
    swift_defaultActor_initialize();
    v82 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v83 = type metadata accessor for Date();
    (*(*(v83 - 8) + 56))(v81 + v82, 1, 1, v83);
    *(v81 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
    *(v81 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
    *(v81 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
    *(v78 + v80) = v81;
    v84 = v79[11];
    v85 = type metadata accessor for BeaconObservationStore(0);
    v152 = &off_101632E88;
    v153 = &off_101613BE0;
    v151 = v85;
    v86 = v140;
    *&v150 = v140;
    type metadata accessor for MemberCircleRevokeManager();
    v87 = swift_allocObject();
    *(v87 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_1000BB3F0(&v150, (v87 + 32));
    *(v78 + v84) = v87;
    v88 = v79[12];
    type metadata accessor for MemberCircleRevokeAssistant();
    *(v78 + v88) = swift_allocObject();
    *v78 = v142;
    sub_10001F280(&v154, (v78 + 3));
    v89 = v79[8];

    sub_1005CB7C8(&v154, v78 + v89);
    sub_100007BAC(&v154);
    v78[1] = v86;
    *(v78 + v79[9]) = v141;
    *(v87 + 24) = &off_1016634D8;
    swift_unknownObjectWeakAssign();

    if (v143)
    {
      v90 = 0;
      v142 = v122 + 32;
      v141 = _swiftEmptyArrayStorage;
      v91 = v145;
      do
      {
        sub_10001F280(&v142[40 * v90], &v150);
        v94 = v151;
        v93 = v152;
        sub_1000035D0(&v150, v151);
        (*(*(v93[1] + 1) + 32))(v94);
        if (*(v91 + 16) && (sub_1004DB51C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v95 = dispatch thunk of Hashable._rawHashValue(seed:)(), v96 = -1 << *(v91 + 32), v97 = v95 & ~v96, ((*(v148 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) != 0))
        {
          v98 = ~v96;
          v99 = *(v144 + 72);
          v100 = *(v144 + 16);
          while (1)
          {
            v100(v14, *(v91 + 48) + v99 * v97, v11);
            sub_1004DB51C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v101 = dispatch thunk of static Equatable.== infix(_:_:)();
            v102 = *v53;
            (*v53)(v14, v11);
            if (v101)
            {
              break;
            }

            v97 = (v97 + 1) & v98;
            v91 = v145;
            if (((*(v148 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v102(v147, v11);
          sub_10000A748(&v150, &v154);
          v103 = v141;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v149 = v103;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, *(v103 + 16) + 1, 1);
            v103 = v149;
          }

          v92 = v143;
          v106 = *(v103 + 16);
          v105 = *(v103 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_100025B1C((v105 > 1), v106 + 1, 1);
          }

          v107 = v155;
          v108 = v156;
          v109 = sub_10015049C(&v154, v155);
          __chkstk_darwin(v109);
          v111 = &v122 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v112 + 16))(v111);
          sub_1006252D4(v106, v111, &v149, v107, v108);
          sub_100007BAC(&v154);
          v141 = v149;
          v91 = v145;
        }

        else
        {
LABEL_29:
          (*v53)(v147, v11);
          sub_100007BAC(&v150);
          v92 = v143;
        }

        ++v90;
      }

      while (v90 != v92);
    }

    else
    {
      v141 = _swiftEmptyArrayStorage;
      v91 = v145;
    }

    v117 = swift_allocObject();
    *(v117 + 16) = v135;
    *(v117 + 24) = v91;
    type metadata accessor for Transaction();
    v118 = v133;
    v119 = v132;
    sub_1004E46C0(v133, v132, type metadata accessor for LocationFetcher);
    v120 = (*(v130 + 80) + 40) & ~*(v130 + 80);
    v121 = swift_allocObject();
    v121[2] = sub_1004E2E38;
    v121[3] = v117;
    v121[4] = v141;
    sub_10002AAA4(v119, v121 + v120, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();

    sub_1004E4A04(v118, type metadata accessor for LocationFetcher);
  }

  else
  {
    sub_1001119F4(&v157);

    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_1000076D4(v113, qword_10177AE10);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "No new beacons to locate on disk. Skipping.", v116, 2u);
    }
  }
}

uint64_t sub_1004B05A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v16;
  v8[39] = v17;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8[43] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[44] = v10;
  v8[45] = *(v10 - 8);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v11 = type metadata accessor for BeaconEstimatedLocation(0);
  v8[51] = v11;
  v8[52] = *(v11 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v8[61] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[62] = v12;
  v13 = *(v12 - 8);
  v8[63] = v13;
  v8[64] = *(v13 + 64);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();

  return _swift_task_switch(sub_1004B0904, 0, 0);
}

uint64_t sub_1004B0904(uint64_t a1)
{
  v1[23] = 0;
  UUID.init()();
  v1[73] = type metadata accessor for AnalyticsEvent(0);
  v2 = swift_allocObject();
  v1[74] = v2;
  swift_defaultActor_initialize();
  *(v2 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v4 = type metadata accessor for DispatchTime();
  v1[75] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v1[76] = v6;
  v1[77] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(&v2[v3], 1, 1, v4);
  v6(&v2[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v4);
  *(v2 + 15) = 0xD00000000000002ELL;
  *(v2 + 16) = 0x8000000101356C90;

  return _swift_task_switch(sub_1004B0A70, v2, 0);
}

uint64_t sub_1004B0A70(uint64_t a1)
{
  v2 = v1[76];
  v3 = v1[75];
  v4 = v1[74];
  v5 = v1[61];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v1[24] = 0;
  v1[25] = _swiftEmptyDictionarySingleton;
  v7 = swift_task_alloc();
  v1[78] = v7;
  *v7 = v1;
  v7[1] = sub_1004B0B80;

  return daemon.getter();
}

uint64_t sub_1004B0B80(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 632) = a1;

  v3 = swift_task_alloc();
  *(v2 + 640) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1004B0D5C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004B0D5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = v1;

  if (v1)
  {
    v4 = sub_1004B528C;
  }

  else
  {

    v4 = sub_1004B0E7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004B0E7C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 264);
  v3 = *(v2 + 16);
  *(v0 + 664) = v3;
  v4 = *(v0 + 656);
  *(v0 + 672) = 0u;
  if (v3)
  {
    *(v0 + 704) = 0uLL;
    *(v0 + 696) = v4;
    *(v0 + 720) = 1;
    sub_10001F280(v2 + 32, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v5);
    (*(*(*(v6 + 8) + 8) + 32))(v5);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = sub_1000035D0((v0 + 16), v8);
    v10 = swift_task_alloc();
    *(v0 + 728) = v10;
    *v10 = v0;
    v10[1] = sub_1004B1608;
    v11 = *(v0 + 648);

    return sub_100E76290(v9, v11, v8, v7);
  }

  v13 = (v0 + 256);
  *(v0 + 688) = v4;
  v14 = *(v0 + 288);
  v15 = *(v14 + 16);
  if (!v15)
  {
    v70 = 0;
LABEL_62:
    *v13 = v70;
    v68 = v13;
    goto LABEL_63;
  }

  v16 = 0;
  v17 = *(v0 + 328);
  v77 = v1;
  v78 = *(v0 + 320);
  v80 = v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v79 = *(v17 + 72);
  v76 = *(v14 + 16);
  while (2)
  {
    v81 = v16 + 1;
    sub_1004E46C0(v80 + v16 * v79, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
    sub_100519FB0();
    v22 = v21;
    v23 = v21 + 56;
    v24 = -1 << *(v21 + 32);
    if (-v24 < 64)
    {
      v25 = ~(-1 << -v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v21 + 56);
    v27 = (63 - v24) >> 6;

    for (i = 0; v26; v1 = v77)
    {
LABEL_20:
      while (1)
      {
        v30 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        (*(*(v0 + 504) + 16))(*(v0 + 520), *(v22 + 48) + *(v1 + 72) * (v30 | (i << 6)), *(v0 + 496));
        v31 = *(v0 + 200);
        if (*(v31 + 16))
        {
          v32 = sub_1000210EC(*(v0 + 520));
          if (v33)
          {
            break;
          }
        }

        v18 = (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
        if (!v26)
        {
          goto LABEL_16;
        }
      }

      v34 = *(v0 + 520);
      v35 = *(v0 + 496);
      v36 = *(*(v0 + 504) + 8);
      *(*(v31 + 56) + 8 * v32);
      v36(v34, v35);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v18 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v76;
    }

    while (1)
    {
LABEL_16:
      v29 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v29 >= v27)
      {
        break;
      }

      v26 = *(v23 + 8 * v29);
      ++i;
      if (v26)
      {
        i = v29;
        goto LABEL_20;
      }
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      v37 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_28;
      }

LABEL_7:
      sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
LABEL_8:

      goto LABEL_9;
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
    v37 = v18;
    if (!v18)
    {
      goto LABEL_7;
    }

LABEL_28:
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v38 = _swiftEmptyArrayStorage[4];
        goto LABEL_31;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_31:
    v83 = v38;
    if (_swiftEmptyArrayStorage >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = *(v0 + 336);
    v40 = *(*&v18[*(v78 + 40)] + 16);
    if (v40 > 0xFF)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v39 != v40)
    {
      sub_1004E4A04(v18, type metadata accessor for OwnedBeaconGroup);

      goto LABEL_8;
    }

    v41 = 0;
    v82 = v37;
    while (v37 != v41)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v18 = _swiftEmptyArrayStorage[v41 + 4];
      }

      v42 = v18;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_67;
      }

      v43 = *(v0 + 384);
      v44 = *(v0 + 360);
      v45 = *(v0 + 368);
      v46 = *(v0 + 352);
      v47 = v83;
      v48 = [v42 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = [v47 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v49) = static Date.== infix(_:_:)();
      v50 = *(v44 + 8);
      v50(v45, v46);
      v50(v43, v46);
      if ((v49 & 1) == 0 || ([v42 longitude], v52 = v51, objc_msgSend(v47, "longitude"), v52 != v53) || (objc_msgSend(v42, "latitude"), v55 = v54, objc_msgSend(v47, "latitude"), v55 != v56))
      {

LABEL_50:
        v61 = *(v0 + 336);

        v62 = v61;
        goto LABEL_52;
      }

      [v42 horizontalAccuracy];
      v58 = v57;
      [v47 horizontalAccuracy];
      v60 = v59;

      ++v41;
      v37 = v82;
      if (v58 != v60)
      {
        goto LABEL_50;
      }
    }

    v63 = *(v0 + 336);

    v64 = *(v78 + 24);
    v65 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFA5A0(v83, v63 + v64, isUniquelyReferenced_nonNull_native);
    *(v0 + 200) = v65;
    v62 = v63;
LABEL_52:
    v18 = sub_1004E4A04(v62, type metadata accessor for OwnedBeaconGroup);
    v15 = v76;
    v1 = v77;
LABEL_9:
    v16 = v81;
    if (v81 != v15)
    {
      continue;
    }

    break;
  }

  v67 = *(v0 + 680);
  *(v0 + 256) = 0;
  v68 = (v0 + 256);
  if (v67 > 0)
  {
    v69 = *(v0 + 672) / v67;
    if (COERCE__INT64(fabs(v69)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_71;
    }

    v13 = (v0 + 256);
    if (v69 <= -9.22337204e18)
    {
LABEL_72:
      __break(1u);
    }

    else if (v69 < 9.22337204e18)
    {
      v70 = v69;
      goto LABEL_62;
    }

    __break(1u);
    return _swift_task_switch(v18, v19, v20);
  }

LABEL_63:
  v71 = *(v0 + 592);
  v72 = *(v0 + 576);
  v73 = *(v0 + 296);
  v74 = *(v0 + 264);
  v75 = swift_task_alloc();
  *(v0 + 936) = v75;
  v75[2] = v74;
  v75[3] = v73;
  v75[4] = v72;
  v75[5] = v0 + 192;
  v75[6] = v0 + 184;
  v75[7] = v68;
  v18 = sub_1004B4DAC;
  v19 = v71;
  v20 = 0;

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1004B1608(uint64_t a1)
{
  v2 = *(*v1 + 648);
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_1004B1720, v2, 0);
}

uint64_t sub_1004B1720()
{
  v1 = v0[81];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[63];
  v5 = v0[62];
  v6 = *(v4 + 16);
  v0[93] = v6;
  v0[94] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[95] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, v3, v5);

  v9 = swift_task_alloc();
  v0[96] = v9;
  v10 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v9 = v0;
  v9[1] = sub_1004B18A4;

  return unsafeBlocking<A>(context:_:)(v0 + 26, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2770, v8, v10);
}

uint64_t sub_1004B18A4()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1004B19D0, v1, 0);
}

uint64_t sub_1004B19F4()
{
  v170 = v0;
  v1 = *(v0 + 776);
  v2 = *(v1 + 16);
  swift_bridgeObjectRetain_n();

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v5 = *(v0 + 416);
      v6 = *(v0 + 272);
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_1004E46C0(*(v0 + 776) + v7 + v8 * v4, *(v0 + 480), type metadata accessor for BeaconEstimatedLocation);
      if (!*(v6 + 16))
      {
        goto LABEL_12;
      }

      v9 = *(v0 + 272);
      v10 = *(*(v0 + 480) + *(*(v0 + 408) + 44));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      v11 = Hasher._finalize()();
      v12 = -1 << *(v9 + 32);
      v13 = v11 & ~v12;
      if ((*(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13))
      {
        break;
      }

LABEL_3:
      sub_1004E4A04(*(v0 + 480), type metadata accessor for BeaconEstimatedLocation);
LABEL_4:
      if (++v4 == v2)
      {
        goto LABEL_17;
      }
    }

    v14 = ~v12;
    v15 = *(v0 + 272);
    v16 = *(v15 + 48);
    v17 = v15 + 56;
    while (*(v16 + v13) != v10)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v17 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_12:
    sub_10002AAA4(*(v0 + 480), *(v0 + 472), type metadata accessor for BeaconEstimatedLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 216) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_101124A24(0, v3[2] + 1, 1);
      v3 = *(v0 + 216);
    }

    v20 = v3[2];
    v19 = v3[3];
    if (v20 >= v19 >> 1)
    {
      sub_101124A24((v19 > 1), v20 + 1, 1);
      v3 = *(v0 + 216);
    }

    v21 = *(v0 + 472);
    v3[2] = v20 + 1;
    sub_10002AAA4(v21, v3 + v7 + v20 * v8, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_4;
  }

LABEL_17:
  v22 = *(v0 + 696);

  *(v0 + 224) = v3;

  sub_1004D5278((v0 + 224));
  if (v22)
  {
    swift_bridgeObjectRelease_n();
  }

  v24 = *(v0 + 408);
  v25 = *(v0 + 416);
  v26 = *(v0 + 400);

  v27 = *(v0 + 224);
  *(v0 + 784) = v27;
  sub_1012BAB18(v27, v26);
  v28 = *(v25 + 48);
  if (v28(v26, 1, v24) == 1)
  {
    v29 = *(v0 + 400);

    sub_10000B3A8(v29, &unk_101696940, &unk_10138B210);
    if (qword_101694770 == -1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v50 = *(v0 + 680);
    v51 = *(v0 + 384);
    v52 = *(v0 + 352);
    v53 = *(v0 + 360);
    sub_10002AAA4(*(v0 + 400), *(v0 + 464), type metadata accessor for BeaconEstimatedLocation);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v54 = *(v53 + 8);
    *(v0 + 792) = v55;
    *(v0 + 800) = v54;
    *(v0 + 808) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v54(v51, v52);
    *(v0 + 816) = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v56 = *(v27 + 16);
    *(v0 + 824) = v56;
    if (!v56)
    {
LABEL_30:
      *(v0 + 832) = 0;
      v60 = *(v0 + 352);
      v61 = *(v0 + 360);
      v62 = *(v0 + 344);
      v63 = *(v0 + 280);
      *(v0 + 232) = 0;
      sub_1000D2A70(v63, v62, &unk_101696900, &unk_10138B1E0);
      if ((*(v61 + 48))(v62, 1, v60) == 1)
      {
        sub_10000B3A8(*(v0 + 344), &unk_101696900, &unk_10138B1E0);
      }

      else
      {
        v145 = *(v0 + 376);
        v146 = *(v0 + 352);
        (*(*(v0 + 360) + 32))(v145, *(v0 + 344), v146);
        Date.timeIntervalSinceNow.getter();
        v148 = v147;
        v149 = v147;
        v47 = v54(v145, v146);
        if ((*&v149 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v148 <= -9.22337204e18)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v148 >= 9.22337204e18)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        *(v0 + 232) = v148;
      }

      v150 = *(v0 + 408);
      v151 = *(v0 + 392);
      *(v0 + 240) = 0;
      sub_10030C19C(v27, v151);
      if (v28(v151, 1, v150) == 1)
      {
        sub_10000B3A8(*(v0 + 392), &unk_101696940, &unk_10138B210);
      }

      else
      {
        v152 = *(v0 + 448);
        sub_10002AAA4(*(v0 + 392), v152, type metadata accessor for BeaconEstimatedLocation);
        Date.timeIntervalSinceNow.getter();
        v154 = v153;
        v155 = v153;
        v47 = sub_1004E4A04(v152, type metadata accessor for BeaconEstimatedLocation);
        if ((*&v155 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v154 <= -9.22337204e18)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v154 >= 9.22337204e18)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        *(v0 + 240) = v154;
      }

      v48 = *(v0 + 648);
      v47 = sub_1004B2A84;
LABEL_111:
      v49 = 0;

      return _swift_task_switch(v47, v48, v49);
    }

    v57 = 0;
    while (v57 < *(v27 + 16))
    {
      v58 = *(v0 + 568);
      v59 = *(v0 + 456);
      sub_1004E46C0(v27 + ((*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)) + *(*(v0 + 416) + 72) * v57, v59, type metadata accessor for BeaconEstimatedLocation);
      sub_1004B5460(v59, v58);
      ++v57;
      sub_1004E4A04(*(v0 + 456), type metadata accessor for BeaconEstimatedLocation);
      if (v56 == v57)
      {
        goto LABEL_30;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
  }

  swift_once();
LABEL_23:
  v30 = *(v0 + 744);
  v31 = *(v0 + 568);
  v32 = *(v0 + 528);
  v33 = *(v0 + 496);
  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177AE10);
  v30(v32, v31, v33);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 528);
  v40 = *(v0 + 496);
  v39 = *(v0 + 504);
  if (v37)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v169[0] = v42;
    *v41 = 141558275;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v167 = *(v39 + 8);
    v167(v38, v40);
    v46 = sub_1000136BC(v43, v45, v169);

    *(v41 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "No cached latest location found for beacon %{private,mask.hash}s and given filter.", v41, 0x16u);
    sub_100007BAC(v42);
  }

  else
  {

    v167 = *(v39 + 8);
    v47 = (v167)(v38, v40);
  }

  v64 = *(v0 + 704);
  v65 = v64 + 1;
  if (__OFADD__(v64, 1))
  {
    goto LABEL_123;
  }

  v156 = (v0 + 184);
  v66 = *(v0 + 736);
  v67 = *(v0 + 568);
  v68 = *(v0 + 496);
  *(v0 + 192) = v65;
  v69 = *(v0 + 40);
  v70 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v69);
  v71 = (*(v70 + 112))(v69, v70);

  swift_bridgeObjectRelease_n();
  v47 = (v167)(v67, v68);
  v72 = *(v0 + 712);
  if ((v71 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (__OFADD__(v72++, 1))
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  *v156 = v72;
LABEL_37:
  v74 = *(v0 + 720);
  v75 = *(v0 + 664);
  v47 = sub_100007BAC((v0 + 16));
  if (v74 == v75)
  {
    *(v0 + 688) = 0;
    v76 = *(v0 + 288);
    v160 = *(v76 + 16);
    if (v160)
    {
      v77 = 0;
      v78 = *(v0 + 504);
      v79 = *(v0 + 328);
      v157 = *(v0 + 320);
      v159 = v76 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v158 = *(v79 + 72);
      v164 = v78;
      do
      {
        v162 = v77 + 1;
        sub_1004E46C0(v159 + v77 * v158, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
        sub_100519FB0();
        v81 = v80;
        v169[0] = _swiftEmptyArrayStorage;
        v82 = v80 + 56;
        v83 = -1 << *(v80 + 32);
        if (-v83 < 64)
        {
          v84 = ~(-1 << -v83);
        }

        else
        {
          v84 = -1;
        }

        v85 = v84 & *(v80 + 56);
        v86 = (63 - v83) >> 6;

        v87 = 0;
        for (i = _swiftEmptyArrayStorage; v85; v78 = v164)
        {
LABEL_53:
          while (1)
          {
            v90 = __clz(__rbit64(v85));
            v85 &= v85 - 1;
            (*(*(v0 + 504) + 16))(*(v0 + 520), *(v81 + 48) + *(v78 + 72) * (v90 | (v87 << 6)), *(v0 + 496));
            v91 = *(v0 + 200);
            if (*(v91 + 16))
            {
              v92 = sub_1000210EC(*(v0 + 520));
              if (v93)
              {
                break;
              }
            }

            (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
            if (!v85)
            {
              goto LABEL_49;
            }
          }

          v94 = *(v0 + 520);
          v95 = *(v0 + 496);
          v96 = *(*(v0 + 504) + 8);
          *(*(v91 + 56) + 8 * v92);
          v96(v94, v95);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v169[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          i = v169[0];
        }

        while (1)
        {
LABEL_49:
          v89 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            __break(1u);
            goto LABEL_115;
          }

          if (v89 >= v86)
          {
            break;
          }

          v85 = *(v82 + 8 * v89);
          ++v87;
          if (v85)
          {
            v87 = v89;
            goto LABEL_53;
          }
        }

        if (i >> 62)
        {
          v97 = _CocoaArrayWrapper.endIndex.getter();
          if (!v97)
          {
LABEL_40:
            sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
            goto LABEL_41;
          }
        }

        else
        {
          v97 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v97)
          {
            goto LABEL_40;
          }
        }

        v166 = i & 0xC000000000000001;
        if ((i & 0xC000000000000001) != 0)
        {
          v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((i & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_120;
          }

          v98 = *(i + 32);
        }

        v168 = v98;
        if (i >> 62)
        {
          v99 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v99 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v100 = *(v0 + 336);
        v101 = *(*(v100 + *(v157 + 40)) + 16);
        if (v101 > 0xFF)
        {
          goto LABEL_119;
        }

        if (v99 == v101)
        {
          v102 = 0;
          v161 = i & 0xFFFFFFFFFFFFFF8;
          v165 = i;
          v163 = v97;
          while (v97 != v102)
          {
            if (v166)
            {
              v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v102 >= *(v161 + 16))
              {
                goto LABEL_118;
              }

              v103 = *(i + 8 * v102 + 32);
            }

            v104 = v103;
            if (__OFADD__(v102, 1))
            {
              goto LABEL_116;
            }

            v105 = *(v0 + 384);
            v106 = *(v0 + 360);
            v107 = *(v0 + 368);
            v108 = *(v0 + 352);
            v109 = v168;
            v110 = [v104 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v111 = [v109 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            LOBYTE(v111) = static Date.== infix(_:_:)();
            v112 = *(v106 + 8);
            v112(v107, v108);
            v112(v105, v108);
            if ((v111 & 1) == 0 || ([v104 longitude], v114 = v113, objc_msgSend(v109, "longitude"), v114 != v115) || (objc_msgSend(v104, "latitude"), v117 = v116, objc_msgSend(v109, "latitude"), v117 != v118))
            {

              v78 = v164;
LABEL_83:
              v123 = *(v0 + 336);

              v124 = v123;
              goto LABEL_85;
            }

            [v104 horizontalAccuracy];
            v120 = v119;
            [v109 horizontalAccuracy];
            v122 = v121;

            ++v102;
            v78 = v164;
            i = v165;
            v97 = v163;
            if (v120 != v122)
            {
              goto LABEL_83;
            }
          }

          v125 = *(v0 + 336);

          v126 = *(v157 + 24);
          v127 = *(v0 + 200);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v169[0] = v127;
          sub_100FFA5A0(v168, v125 + v126, v128);
          *(v0 + 200) = v169[0];
          v124 = v125;
LABEL_85:
          v47 = sub_1004E4A04(v124, type metadata accessor for OwnedBeaconGroup);
          goto LABEL_42;
        }

        sub_1004E4A04(v100, type metadata accessor for OwnedBeaconGroup);

LABEL_41:

LABEL_42:
        v77 = v162;
      }

      while (v162 != v160);
    }

    v137 = (v0 + 256);
    v138 = *(v0 + 680);
    *(v0 + 256) = 0;
    if (v138 <= 0)
    {
      goto LABEL_99;
    }

    v139 = *(v0 + 672) / v138;
    if (COERCE__INT64(fabs(v139)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v139 > -9.22337204e18)
      {
        if (v139 < 9.22337204e18)
        {
          *v137 = v139;
LABEL_99:
          v140 = *(v0 + 592);
          v141 = *(v0 + 576);
          v142 = *(v0 + 296);
          v143 = *(v0 + 264);
          v144 = swift_task_alloc();
          *(v0 + 936) = v144;
          v144[2] = v143;
          v144[3] = v142;
          v144[4] = v141;
          v144[5] = v0 + 192;
          v144[6] = v156;
          v144[7] = v137;
          v47 = sub_1004B4DAC;
          v48 = v140;
          goto LABEL_111;
        }

LABEL_135:
        __break(1u);
        return _swift_task_switch(v47, v48, v49);
      }

LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v129 = *(v0 + 720);
  *(v0 + 712) = v72;
  *(v0 + 704) = v65;
  *(v0 + 696) = 0;
  if (v129 >= *(v0 + 664))
  {
    goto LABEL_125;
  }

  *(v0 + 720) = v129 + 1;
  if (__OFADD__(v129, 1))
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  sub_10001F280(*(v0 + 264) + 40 * v129 + 32, v0 + 16);
  v130 = *(v0 + 40);
  v131 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v130);
  (*(*(*(v131 + 8) + 8) + 32))(v130);
  v133 = *(v0 + 40);
  v132 = *(v0 + 48);
  v134 = sub_1000035D0((v0 + 16), v133);
  v135 = swift_task_alloc();
  *(v0 + 728) = v135;
  *v135 = v0;
  v135[1] = sub_1004B1608;
  v136 = *(v0 + 648);

  return sub_100E76290(v134, v136, v133, v132);
}

uint64_t sub_1004B2A84()
{
  v1 = *(v0 + 648);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  *(v0 + 840) = v2;
  *(v2 + 16) = v1;
  sub_10000A748((v0 + 56), v2 + 24);

  v3 = swift_task_alloc();
  *(v0 + 848) = v3;
  *v3 = v0;
  v3[1] = sub_1004B2BA4;

  return unsafeBlocking<A>(context:_:)(v0 + 248, 0xD000000000000010, 0x800000010134A8C0, sub_1004E3304, v2, &type metadata for Double);
}

uint64_t sub_1004B2BA4()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1004B2CD0, v1, 0);
}

uint64_t sub_1004B2CF4()
{
  v221 = v0;
  if (qword_101694770 != -1)
  {
LABEL_91:
    swift_once();
  }

  v1 = *(v0 + 744);
  v2 = *(v0 + 568);
  v3 = *(v0 + 552);
  v4 = *(v0 + 496);
  v5 = type metadata accessor for Logger();
  *(v0 + 864) = sub_1000076D4(v5, qword_10177AE10);
  v1(v3, v2, v4);
  sub_10001F280(v0 + 16, v0 + 96);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 856);
    v218 = v7;
    v9 = *(v0 + 552);
    v11 = *(v0 + 496);
    v10 = *(v0 + 504);
    v12 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v220[0] = v215;
    *v12 = 141558787;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000136BC(v13, v15, v220);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v8;
    *(v12 + 32) = 2048;
    v18 = *(v0 + 120);
    v19 = *(v0 + 128);
    sub_1000035D0((v0 + 96), v18);
    v20 = v19;
    v21 = v16;
    v22 = sub_1010C96DC(v18, v20);
    sub_100007BAC((v0 + 96));
    *(v12 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v6, v218, "Applying location filter for beacon %{private,mask.hash}s, transmitPower: %f, beaconType: %lu.", v12, 0x2Au);
    sub_100007BAC(v215);
  }

  else
  {
    v23 = *(v0 + 552);
    v25 = *(v0 + 496);
    v24 = *(v0 + 504);
    sub_100007BAC((v0 + 96));

    v21 = *(v24 + 8);
    v21(v23, v25);
  }

  *(v0 + 872) = v21;
  v26 = *(v0 + 856);
  v27 = sub_10039C740(*(v0 + 784));
  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v28);
  v30 = sub_1010C96DC(v28, v29);
  v31 = sub_1010CBA6C(v27, v30, v26);
  *(v0 + 880) = v31;

  if (v31)
  {
    v207 = *(v0 + 824);
    v32 = *(v0 + 800);
    v211 = *(v0 + 464);
    v33 = *(v0 + 440);
    v34 = *(v0 + 408);
    v35 = *(v0 + 384);
    v36 = *(v0 + 352);
    v37 = *(v0 + 360);
    sub_1004E46C0(v211, v33, type metadata accessor for BeaconEstimatedLocation);
    v38 = *(v33 + v34[7]);
    v39 = *(v33 + v34[8]);
    v40 = objc_allocWithZone(CLLocation);
    v41 = *(v33 + v34[9]);
    (*(v37 + 16))(v35, v33 + v34[10], v36);
    sub_1004E4A04(v33, type metadata accessor for BeaconEstimatedLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v32(v35, v36);
    v43 = [v40 initWithCoordinate:isa altitude:v38 horizontalAccuracy:v39 verticalAccuracy:-1.0 timestamp:{v41, -1.0}];

    v44 = v31;
    [v44 coordinate];
    v46 = v45;
    [v44 coordinate];
    v48 = v47;
    v49 = objc_allocWithZone(CLLocation);
    [v44 horizontalAccuracy];
    v51 = v50;
    v52 = [v44 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = Date._bridgeToObjectiveC()().super.isa;
    v32(v35, v36);
    v54 = [v49 initWithCoordinate:v53 altitude:v46 horizontalAccuracy:v48 verticalAccuracy:-1.0 timestamp:{v51, -1.0}];

    [v43 distanceFromLocation:v54];
    v56 = v55;

    v57 = *&v211[v34[9]];
    v212 = v44;
    [v44 horizontalAccuracy];
    v59 = v58;
    if (v207)
    {
      v60 = 0;
      v61 = *(v0 + 432);
      v62 = *(v0 + 416);
      v63 = *(*(v0 + 408) + 44);
      v64 = *(v0 + 784) + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v65 = *(v62 + 72);
      v66 = _swiftEmptyArrayStorage;
      do
      {
        v67 = *(v0 + 432);
        sub_1004E46C0(v64, v67, type metadata accessor for BeaconEstimatedLocation);
        v68 = *(v61 + v63);
        sub_1004E4A04(v67, type metadata accessor for BeaconEstimatedLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_100A5CF30(0, *(v66 + 2) + 1, 1, v66);
        }

        v70 = *(v66 + 2);
        v69 = *(v66 + 3);
        if (v70 >= v69 >> 1)
        {
          v66 = sub_100A5CF30((v69 > 1), v70 + 1, 1, v66);
        }

        ++v60;
        v71 = *(v0 + 824);
        *(v66 + 2) = v70 + 1;
        v66[v70 + 32] = v68;
        v64 += v65;
      }

      while (v60 != v71);
    }

    else
    {
      v66 = _swiftEmptyArrayStorage;
    }

    v89 = vabdd_f64(v57, v59);
    v90 = *(v0 + 792);
    v91 = *(v0 + 744);
    v208 = *(v0 + 736);
    v199 = *(v0 + 608);
    v197 = *(v0 + 600);
    v196 = *(v0 + 800);
    v205 = *(v0 + 576);
    v92 = *(v0 + 568);
    v93 = *(v0 + 560);
    v94 = *(v0 + 496);
    v192 = *(v0 + 408);
    v193 = *(v0 + 464);
    v95 = *(v0 + 384);
    v194 = *(v0 + 352);
    v203 = *(v0 + 776);
    sub_10039C910(v66);

    v96 = objc_allocWithZone(NSSet);
    v97 = Array._bridgeToObjectiveC()().super.isa;

    v195 = [v96 initWithArray:v97];
    *(v0 + 888) = v195;

    v91(v93, v92, v94);
    v98 = [v212 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    [v212 coordinate];
    v100 = v99;
    [v212 coordinate];
    v102 = v101;
    [v212 horizontalAccuracy];
    v104 = v103;
    v105 = sub_1010CBDEC(*(v193 + *(v192 + 44)));
    v106 = objc_allocWithZone(SPBeaconLocation);
    v107 = v105;
    v108 = Date._bridgeToObjectiveC()().super.isa;
    v109 = [v106 initWithTimestamp:v108 latitude:v107 longitude:v100 horizontalAccuracy:v102 source:v104];

    v196(v95, v194);
    sub_1001DD16C(v109, v93);
    v110 = swift_allocObject();
    *(v0 + 896) = v110;
    swift_defaultActor_initialize();
    *(v110 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v199(&v110[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime], 1, 1, v197);
    v199(&v110[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v197);
    *(v110 + 15) = 0xD000000000000030;
    *(v110 + 16) = 0x8000000101356CC0;
    v111 = swift_task_alloc();
    *(v0 + 904) = v111;
    *(v111 + 16) = v205;
    *(v111 + 24) = v90;
    *(v111 + 32) = v212;
    *(v111 + 40) = v193;
    *(v111 + 48) = v203;
    *(v111 + 64) = v0 + 232;
    *(v111 + 72) = v0 + 240;
    *(v111 + 80) = v56;
    *(v111 + 88) = v89;
    *(v111 + 96) = v195;
    *(v111 + 104) = v208;
    v112 = sub_1004B3F64;
    goto LABEL_18;
  }

  v72 = *(v0 + 744);
  v73 = *(v0 + 568);
  v74 = *(v0 + 536);
  v75 = *(v0 + 496);

  v72(v74, v73, v75);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v0 + 568);
  v80 = *(v0 + 536);
  v81 = *(v0 + 496);
  if (v78)
  {
    v213 = *(v0 + 736);
    v82 = v21;
    v83 = swift_slowAlloc();
    v216 = v79;
    v84 = swift_slowAlloc();
    v220[0] = v84;
    *v83 = 141558275;
    *(v83 + 4) = 1752392040;
    *(v83 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v85 = dispatch thunk of CustomStringConvertible.description.getter();
    v87 = v86;
    v82(v80, v81);
    v88 = sub_1000136BC(v85, v87, v220);

    *(v83 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v76, v77, "Could not produce filtered location for beacon %{private,mask.hash}s.", v83, 0x16u);
    sub_100007BAC(v84);

    swift_bridgeObjectRelease_n();
    v82(v216, v81);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v21(v80, v81);
    v21(v79, v81);
  }

  sub_1004E4A04(*(v0 + 464), type metadata accessor for BeaconEstimatedLocation);
  v113 = sub_100007BAC((v0 + 16));
  v116 = *(v0 + 832);
  v117 = *(v0 + 816);
  v118 = *(v0 + 720);
  v119 = *(v0 + 704);
  v120 = *(v0 + 792) + *(v0 + 672);
  *(v0 + 680) = v117;
  *(v0 + 672) = v120;
  v121 = *(v0 + 664);
  if (v118 != v121)
  {
    *(v0 + 704) = v119;
    *(v0 + 696) = v116;
    if (v118 >= v121)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 720) = v118 + 1;
      if (!__OFADD__(v118, 1))
      {
        sub_10001F280(*(v0 + 264) + 40 * v118 + 32, v0 + 16);
        v178 = *(v0 + 40);
        v179 = *(v0 + 48);
        sub_1000035D0((v0 + 16), v178);
        (*(*(*(v179 + 8) + 8) + 32))(v178);
        v181 = *(v0 + 40);
        v180 = *(v0 + 48);
        v182 = sub_1000035D0((v0 + 16), v181);
        v183 = swift_task_alloc();
        *(v0 + 728) = v183;
        *v183 = v0;
        v183[1] = sub_1004B1608;
        v184 = *(v0 + 648);

        return sub_100E76290(v182, v184, v181, v180);
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *(v0 + 688) = v116;
  v122 = *(v0 + 288);
  v123 = *(v122 + 16);
  if (!v123)
  {
    goto LABEL_80;
  }

  v124 = 0;
  v125 = *(v0 + 504);
  v126 = *(v0 + 328);
  v200 = *(v122 + 16);
  v201 = *(v0 + 320);
  v202 = *(v126 + 72);
  v204 = v122 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
  v198 = v125;
  v210 = v0;
  while (2)
  {
    v209 = v124 + 1;
    sub_1004E46C0(v204 + v124 * v202, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
    sub_100519FB0();
    v128 = v127;
    v129 = _swiftEmptyArrayStorage;
    v220[0] = _swiftEmptyArrayStorage;
    v130 = v127 + 56;
    v131 = -1 << *(v127 + 32);
    if (-v131 < 64)
    {
      v132 = ~(-1 << -v131);
    }

    else
    {
      v132 = -1;
    }

    v133 = v132 & *(v127 + 56);
    v134 = (63 - v131) >> 6;

    for (i = 0; v133; v123 = v200)
    {
LABEL_38:
      while (1)
      {
        v137 = __clz(__rbit64(v133));
        v133 &= v133 - 1;
        (*(*(v0 + 504) + 16))(*(v0 + 520), *(v128 + 48) + *(v125 + 72) * (v137 | (i << 6)), *(v0 + 496));
        v138 = *(v0 + 200);
        if (*(v138 + 16))
        {
          v139 = sub_1000210EC(*(v0 + 520));
          if (v140)
          {
            break;
          }
        }

        (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
        if (!v133)
        {
          goto LABEL_34;
        }
      }

      v141 = *(v0 + 520);
      v142 = *(v0 + 496);
      v143 = *(*(v0 + 504) + 8);
      *(*(v138 + 56) + 8 * v139);
      v143(v141, v142);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v220[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v220[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v129 = v220[0];
      v125 = v198;
    }

    while (1)
    {
LABEL_34:
      v136 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v136 >= v134)
      {
        break;
      }

      v133 = *(v130 + 8 * v136);
      ++i;
      if (v133)
      {
        i = v136;
        goto LABEL_38;
      }
    }

    if (!(v129 >> 62))
    {
      v144 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v144)
      {
        goto LABEL_46;
      }

LABEL_25:
      sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
LABEL_26:

      goto LABEL_27;
    }

    v144 = _CocoaArrayWrapper.endIndex.getter();
    if (!v144)
    {
      goto LABEL_25;
    }

LABEL_46:
    v217 = v129 & 0xC000000000000001;
    if ((v129 & 0xC000000000000001) == 0)
    {
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v145 = *(v129 + 32);
        goto LABEL_49;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v145 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_49:
    v219 = v145;
    if (v129 >> 62)
    {
      v146 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v146 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v147 = *(v0 + 336);
    v148 = *(*(v147 + *(v201 + 40)) + 16);
    if (v148 > 0xFF)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v146 != v148)
    {
      sub_1004E4A04(v147, type metadata accessor for OwnedBeaconGroup);

      goto LABEL_26;
    }

    v149 = 0;
    v206 = v129 & 0xFFFFFFFFFFFFFF8;
    v214 = v129;
    while (v144 != v149)
    {
      if (v217)
      {
        v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v149 >= *(v206 + 16))
        {
          goto LABEL_88;
        }

        v150 = *(v129 + 8 * v149 + 32);
      }

      v151 = v150;
      if (__OFADD__(v149, 1))
      {
        goto LABEL_87;
      }

      v152 = v0;
      v153 = v144;
      v154 = v152[48];
      v155 = v152[45];
      v156 = v152[46];
      v157 = v152[44];
      v158 = v219;
      v159 = [v151 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v160 = [v158 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v160) = static Date.== infix(_:_:)();
      v161 = *(v155 + 8);
      v161(v156, v157);
      v161(v154, v157);
      if ((v160 & 1) == 0 || ([v151 longitude], v163 = v162, objc_msgSend(v158, "longitude"), v163 != v164) || (objc_msgSend(v151, "latitude"), v166 = v165, objc_msgSend(v158, "latitude"), v166 != v167))
      {

        v0 = v210;
LABEL_68:
        v172 = *(v0 + 336);

        v173 = v172;
        goto LABEL_70;
      }

      [v151 horizontalAccuracy];
      v169 = v168;
      [v158 horizontalAccuracy];
      v171 = v170;

      ++v149;
      v144 = v153;
      v0 = v210;
      v129 = v214;
      if (v169 != v171)
      {
        goto LABEL_68;
      }
    }

    v174 = *(v0 + 336);

    v175 = *(v201 + 24);
    v176 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v220[0] = v176;
    sub_100FFA5A0(v219, v174 + v175, isUniquelyReferenced_nonNull_native);
    *(v0 + 200) = v220[0];
    v173 = v174;
LABEL_70:
    v113 = sub_1004E4A04(v173, type metadata accessor for OwnedBeaconGroup);
    v125 = v198;
    v123 = v200;
LABEL_27:
    v124 = v209;
    if (v209 != v123)
    {
      continue;
    }

    break;
  }

  v117 = *(v0 + 680);
LABEL_80:
  v186 = (v0 + 256);
  *(v0 + 256) = 0;
  if (v117 <= 0)
  {
LABEL_85:
    v110 = *(v0 + 592);
    v188 = *(v0 + 576);
    v189 = *(v0 + 296);
    v190 = *(v0 + 264);
    v191 = swift_task_alloc();
    *(v0 + 936) = v191;
    v191[2] = v190;
    v191[3] = v189;
    v191[4] = v188;
    v191[5] = v0 + 192;
    v191[6] = v0 + 184;
    v191[7] = v186;
    v112 = sub_1004B4DAC;
LABEL_18:
    v113 = v112;
    v114 = v110;
    v115 = 0;

    return _swift_task_switch(v113, v114, v115);
  }

  v187 = *(v0 + 672) / v117;
  if (COERCE__INT64(fabs(v187)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_94;
  }

  if (v187 <= -9.22337204e18)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v187 < 9.22337204e18)
  {
    *v186 = v187;
    goto LABEL_85;
  }

LABEL_96:
  __break(1u);
  return _swift_task_switch(v113, v114, v115);
}

uint64_t sub_1004B3F64()
{
  v1 = v0[104];
  sub_10115BE7C(sub_1004E3310);
  if (v1)
  {
  }

  v0[114] = 0;

  type metadata accessor for AnalyticsPublisher();
  v0[115] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[116] = v2;
  *v2 = v0;
  v2[1] = sub_1004B4074;
  v3 = v0[112];

  return sub_101163F78(v3);
}

uint64_t sub_1004B4074()
{

  return _swift_task_switch(sub_1004B418C, 0, 0);
}

uint64_t sub_1004B418C()
{
  v133 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 464);
  v3 = *(v0 + 424);
  (*(v0 + 744))(*(v0 + 544), *(v0 + 568), *(v0 + 496));
  sub_1004E46C0(v2, v3, type metadata accessor for BeaconEstimatedLocation);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  log = v5;
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 880);
  v130 = *(v0 + 872);
  if (v7)
  {
    v114 = *(v0 + 800);
    v119 = *(v0 + 888);
    v121 = *(v0 + 736);
    v9 = *(v0 + 544);
    v10 = *(v0 + 496);
    v117 = v6;
    v11 = *(v0 + 424);
    v112 = *(v0 + 384);
    v113 = *(v0 + 352);
    v124 = *(v0 + 568);
    v12 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v12 = 141559811;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v130(v9, v10);
    v16 = sub_1000136BC(v13, v15, &v132);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1004E4A04(v11, type metadata accessor for BeaconEstimatedLocation);
    v20 = sub_1000136BC(v17, v19, &v132);

    *(v12 + 34) = v20;
    *(v12 + 42) = 2049;
    [v8 coordinate];
    *(v12 + 44) = v21;
    *(v12 + 52) = 2049;
    [v8 coordinate];
    *(v12 + 54) = v22;
    *(v12 + 62) = 2050;
    [v8 horizontalAccuracy];
    *(v12 + 64) = v23;
    *(v12 + 72) = 2082;
    v24 = [v8 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v114(v112, v113);
    v28 = sub_1000136BC(v25, v27, &v132);

    *(v12 + 74) = v28;
    _os_log_impl(&_mh_execute_header, log, v117, "Filtered cached latest location returned to client for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v12, 0x52u);
    swift_arrayDestroy();

    swift_bridgeObjectRelease_n();
    v130(v124, v10);
  }

  else
  {
    v29 = *(v0 + 736);
    v30 = *(v0 + 568);
    v31 = *(v0 + 544);
    v32 = *(v0 + 496);
    v33 = *(v0 + 424);

    swift_bridgeObjectRelease_n();

    sub_1004E4A04(v33, type metadata accessor for BeaconEstimatedLocation);
    v130(v31, v32);
    v130(v30, v32);
  }

  sub_1004E4A04(*(v0 + 464), type metadata accessor for BeaconEstimatedLocation);
  v34 = sub_100007BAC((v0 + 16));
  v37 = *(v0 + 912);
  v38 = *(v0 + 816);
  v39 = *(v0 + 720);
  v40 = *(v0 + 704);
  v41 = *(v0 + 792) + *(v0 + 672);
  *(v0 + 680) = v38;
  *(v0 + 672) = v41;
  v42 = *(v0 + 664);
  if (v39 != v42)
  {
    *(v0 + 704) = v40;
    *(v0 + 696) = v37;
    if (v39 >= v42)
    {
LABEL_75:
      __break(1u);
    }

    else
    {
      *(v0 + 720) = v39 + 1;
      if (!__OFADD__(v39, 1))
      {
        sub_10001F280(*(v0 + 264) + 40 * v39 + 32, v0 + 16);
        v97 = *(v0 + 40);
        v98 = *(v0 + 48);
        sub_1000035D0((v0 + 16), v97);
        (*(*(*(v98 + 8) + 8) + 32))(v97);
        v100 = *(v0 + 40);
        v99 = *(v0 + 48);
        v101 = sub_1000035D0((v0 + 16), v100);
        v102 = swift_task_alloc();
        *(v0 + 728) = v102;
        *v102 = v0;
        v102[1] = sub_1004B1608;
        v103 = *(v0 + 648);

        return sub_100E76290(v101, v103, v100, v99);
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  *(v0 + 688) = v37;
  v43 = *(v0 + 288);
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_62;
  }

  v45 = 0;
  v46 = *(v0 + 504);
  v47 = *(v0 + 328);
  v116 = *(v43 + 16);
  v118 = *(v0 + 320);
  v120 = *(v47 + 72);
  v122 = v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v115 = v46;
  v126 = v0;
  while (2)
  {
    v125 = v45 + 1;
    sub_1004E46C0(v122 + v45 * v120, *(v0 + 336), type metadata accessor for OwnedBeaconGroup);
    sub_100519FB0();
    v49 = v48;
    v50 = _swiftEmptyArrayStorage;
    v132 = _swiftEmptyArrayStorage;
    v51 = v48 + 56;
    v52 = -1 << *(v48 + 32);
    if (-v52 < 64)
    {
      v53 = ~(-1 << -v52);
    }

    else
    {
      v53 = -1;
    }

    v54 = v53 & *(v48 + 56);
    v55 = (63 - v52) >> 6;

    for (i = 0; v54; v44 = v116)
    {
LABEL_20:
      while (1)
      {
        v58 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        (*(*(v0 + 504) + 16))(*(v0 + 520), *(v49 + 48) + *(v46 + 72) * (v58 | (i << 6)), *(v0 + 496));
        v59 = *(v0 + 200);
        if (*(v59 + 16))
        {
          v60 = sub_1000210EC(*(v0 + 520));
          if (v61)
          {
            break;
          }
        }

        v34 = (*(*(v0 + 504) + 8))(*(v0 + 520), *(v0 + 496));
        if (!v54)
        {
          goto LABEL_16;
        }
      }

      v62 = *(v0 + 520);
      v63 = *(v0 + 496);
      v64 = *(*(v0 + 504) + 8);
      *(*(v59 + 56) + 8 * v60);
      v64(v62, v63);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v34 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 = v132;
      v46 = v115;
    }

    while (1)
    {
LABEL_16:
      v57 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v57 >= v55)
      {
        break;
      }

      v54 = *(v51 + 8 * v57);
      ++i;
      if (v54)
      {
        i = v57;
        goto LABEL_20;
      }
    }

    if (!(v50 >> 62))
    {
      v65 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
        goto LABEL_28;
      }

LABEL_7:
      sub_1004E4A04(*(v0 + 336), type metadata accessor for OwnedBeaconGroup);
LABEL_8:

      goto LABEL_9;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
    v65 = v34;
    if (!v34)
    {
      goto LABEL_7;
    }

LABEL_28:
    loga = (v50 & 0xC000000000000001);
    if ((v50 & 0xC000000000000001) == 0)
    {
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v66 = *(v50 + 32);
        goto LABEL_31;
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_31:
    v131 = v66;
    if (v50 >> 62)
    {
      v67 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v67 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = *(v0 + 336);
    v68 = *(*&v34[*(v118 + 40)] + 16);
    if (v68 > 0xFF)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v67 != v68)
    {
      sub_1004E4A04(v34, type metadata accessor for OwnedBeaconGroup);

      goto LABEL_8;
    }

    v69 = 0;
    v123 = v50 & 0xFFFFFFFFFFFFFF8;
    v127 = v50;
    while (v65 != v69)
    {
      if (loga)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v69 >= *(v123 + 16))
        {
          goto LABEL_72;
        }

        v34 = *(v50 + 8 * v69 + 32);
      }

      v70 = v34;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_71;
      }

      v71 = v0;
      v72 = v65;
      v73 = v71[48];
      v74 = v71[45];
      v75 = v71[46];
      v76 = v71[44];
      v77 = v131;
      v78 = [v70 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = [v77 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v79) = static Date.== infix(_:_:)();
      v80 = *(v74 + 8);
      v80(v75, v76);
      v80(v73, v76);
      if ((v79 & 1) == 0 || ([v70 longitude], v82 = v81, objc_msgSend(v77, "longitude"), v82 != v83) || (objc_msgSend(v70, "latitude"), v85 = v84, objc_msgSend(v77, "latitude"), v85 != v86))
      {

        v0 = v126;
LABEL_50:
        v91 = *(v0 + 336);

        v92 = v91;
        goto LABEL_52;
      }

      [v70 horizontalAccuracy];
      v88 = v87;
      [v77 horizontalAccuracy];
      v90 = v89;

      ++v69;
      v65 = v72;
      v0 = v126;
      v50 = v127;
      if (v88 != v90)
      {
        goto LABEL_50;
      }
    }

    v93 = *(v0 + 336);

    v94 = *(v118 + 24);
    v95 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = v95;
    sub_100FFA5A0(v131, v93 + v94, isUniquelyReferenced_nonNull_native);
    *(v0 + 200) = v132;
    v92 = v93;
LABEL_52:
    v34 = sub_1004E4A04(v92, type metadata accessor for OwnedBeaconGroup);
    v46 = v115;
    v44 = v116;
LABEL_9:
    v45 = v125;
    if (v125 != v44)
    {
      continue;
    }

    break;
  }

  v38 = *(v0 + 680);
LABEL_62:
  v105 = (v0 + 256);
  *(v0 + 256) = 0;
  if (v38 <= 0)
  {
LABEL_67:
    v107 = *(v0 + 592);
    v108 = *(v0 + 576);
    v109 = *(v0 + 296);
    v110 = *(v0 + 264);
    v111 = swift_task_alloc();
    *(v0 + 936) = v111;
    v111[2] = v110;
    v111[3] = v109;
    v111[4] = v108;
    v111[5] = v0 + 192;
    v111[6] = v0 + 184;
    v111[7] = v105;
    v34 = sub_1004B4DAC;
    v35 = v107;
    v36 = 0;

    return _swift_task_switch(v34, v35, v36);
  }

  v106 = *(v0 + 672) / v38;
  if (COERCE__INT64(fabs(v106)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v106 <= -9.22337204e18)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v106 < 9.22337204e18)
  {
    *v105 = v106;
    goto LABEL_67;
  }

LABEL_79:
  __break(1u);
  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_1004B4DAC()
{
  v1 = *(v0 + 688);
  sub_10115BE7C(sub_1004E3350);
  if (v1)
  {
  }

  v2 = *(v0 + 592);

  return _swift_task_switch(sub_1004B4E50, v2, 0);
}

uint64_t sub_1004B4E50(uint64_t a1)
{
  v2 = v1[76];
  v3 = v1[75];
  v4 = v1[74];
  v5 = v1[61];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  type metadata accessor for AnalyticsPublisher();
  v1[118] = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = swift_task_alloc();
  v1[119] = v7;
  *v7 = v1;
  v7[1] = sub_1004B4F78;
  v8 = v1[74];

  return sub_101163F78(v8);
}

uint64_t sub_1004B4F78()
{

  return _swift_task_switch(sub_1004B5090, 0, 0);
}

uint64_t sub_1004B5090()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  (*(v0 + 304))(*(v0 + 200));

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004B528C()
{
  v1 = v0[72];
  v2 = v0[62];
  v3 = v0[63];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1004B5460(uint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for BeaconEstimatedLocation(0);
  v4 = __chkstk_darwin(v47);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v50 = &v42 - v8;
  v9 = __chkstk_darwin(v7);
  v49 = &v42 - v10;
  v11 = __chkstk_darwin(v9);
  v48 = &v42 - v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177AE10);
  (*(v16 + 16))(v18, a2, v15);
  sub_1004E46C0(a1, v14, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v48, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v49, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v50, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v6, type metadata accessor for BeaconEstimatedLocation);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v21;
    v23 = v22;
    v46 = swift_slowAlloc();
    v51 = v46;
    *v23 = 141559811;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = v20;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v6;
    v26 = v25;
    (*(v16 + 8))(v18, v15);
    v27 = sub_1000136BC(v24, v26, &v51);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2160;
    *(v23 + 24) = 1752392040;
    *(v23 + 32) = 2081;
    v28 = v47;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_1004E4A04(v14, type metadata accessor for BeaconEstimatedLocation);
    v32 = sub_1000136BC(v29, v31, &v51);

    *(v23 + 34) = v32;
    *(v23 + 42) = 2049;
    v33 = *(v48 + v28[7]);
    sub_1004E4A04(v48, type metadata accessor for BeaconEstimatedLocation);
    *(v23 + 44) = v33;
    *(v23 + 52) = 2049;
    v34 = *(v49 + v28[8]);
    sub_1004E4A04(v49, type metadata accessor for BeaconEstimatedLocation);
    *(v23 + 54) = v34;
    *(v23 + 62) = 2050;
    v35 = *(v50 + v28[9]);
    sub_1004E4A04(v50, type metadata accessor for BeaconEstimatedLocation);
    *(v23 + 64) = v35;
    *(v23 + 72) = 2082;
    type metadata accessor for Date();
    sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v36 = v43;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    sub_1004E4A04(v36, type metadata accessor for BeaconEstimatedLocation);
    v40 = sub_1000136BC(v37, v39, &v51);

    *(v23 + 74) = v40;
    v41 = v44;
    _os_log_impl(&_mh_execute_header, v44, v45, "Filtering the following latest location for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v23, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004E4A04(v6, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v50, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v49, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v48, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v14, type metadata accessor for BeaconEstimatedLocation);
    (*(v16 + 8))(v18, v15);
  }
}

NSString sub_1004B5A24(double a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  v57 = a7;
  v58 = a8;
  v56 = a6;
  v20 = type metadata accessor for UUID();
  v50 = *(v20 - 8);
  v51 = v20;
  __chkstk_darwin(v20);
  v49 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013AAD70;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  UUID.uuidString.getter();
  v24 = v23;
  result = String._bridgeToObjectiveC()();
  *(inited + 48) = result;
  *(inited + 56) = 0;
  *(inited + 64) = 0x6E6F697461636F6CLL;
  *(inited + 72) = 0xEF79636E65636552;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v24;
  v53 = inited + 32;
  v54 = a12;
  v26 = objc_allocWithZone(NSNumber);
  v55 = a11;
  *(inited + 80) = [v26 initWithInteger:a1];
  *(inited + 88) = 0;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x8000000101356D80;
  [a5 horizontalAccuracy];
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithDouble:v27];
  *(inited + 120) = 0;
  strcpy((inited + 128), "locationSource");
  *(inited + 143) = -18;
  v28 = type metadata accessor for BeaconEstimatedLocation(0);
  sub_1011726B8(*(v56 + *(v28 + 44)));
  v56 = v29;
  *(inited + 144) = String._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x8000000101356DA0;
  *(inited + 176) = [objc_allocWithZone(NSNumber) initWithInteger:*(v57 + 16)];
  *(inited + 184) = 0;
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = 0x8000000101356DC0;
  *(inited + 208) = [objc_allocWithZone(NSNumber) initWithInteger:*(v58 + 16)];
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000101356DE0;
  *(inited + 240) = [objc_allocWithZone(NSNumber) initWithInteger:*a9];
  *(inited + 248) = 0;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000101356E00;
  v30 = v54;
  *(inited + 272) = [objc_allocWithZone(NSNumber) initWithInteger:*a10];
  *(inited + 280) = 0;
  *(inited + 288) = 0xD00000000000001ALL;
  *(inited + 296) = 0x8000000101356E20;
  *(inited + 304) = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  *(inited + 312) = 0;
  *(inited + 320) = 0xD000000000000024;
  *(inited + 328) = 0x8000000101356E40;
  *(inited + 336) = [objc_allocWithZone(NSNumber) initWithDouble:a3];
  *(inited + 344) = 0;
  *(inited + 352) = 0x6F43656372756F73;
  *(inited + 360) = 0xEB00000000746E75;
  *(inited + 368) = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v55, "count")}];
  *(inited + 376) = 0;
  *(inited + 384) = 0xD000000000000013;
  *(inited + 392) = 0x8000000101356E70;
  result = [v30 systemVersion];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 400) = result;
  *(inited + 408) = 0;
  strcpy((inited + 416), "batteryLevel");
  *(inited + 429) = 0;
  *(inited + 430) = -5120;
  *(inited + 432) = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v30, "batteryLevel")}];
  *(inited + 440) = 0;
  *(inited + 448) = 0xD00000000000001BLL;
  *(inited + 456) = 0x8000000101356E90;
  result = [v30 systemVersion];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v31 = result;

  *(inited + 464) = v31;
  *(inited + 472) = 0;
  *(inited + 480) = 0x6563697665447369;
  *(inited + 488) = 0xEF6465687361654CLL;
  v32 = [v30 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_1004DB51C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v33 + 16) && (v34 = sub_100777014(), (v35 & 1) != 0))
  {
    v36 = *(*(v33 + 56) + 8 * v34);

    v37 = [v36 state];

    v38 = v37 == 0;
  }

  else
  {

    v38 = 0;
  }

  *(inited + 496) = v38;
  *(inited + 504) = 1;
  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x8000000101350630;
  *(inited + 528) = [v30 connected];
  *(inited + 536) = 1;
  v39 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  v40 = [objc_opt_self() sharedInstance];
  v41 = [v40 isInternalBuild];

  if (v41)
  {
    v42 = [v30 identifier];
    v43 = v49;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v50 + 8))(v43, v51);
    v44 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v39;
    sub_100FFC418(v44, 0, 0x6544646572696170, 0xEE00444965636976, isUniquelyReferenced_nonNull_native);
    v39 = v59;
    v46 = [v30 serialNumber];
    if (v46)
    {
      v47 = v46;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v39;
      sub_100FFC418(v47, 0, 0xD000000000000018, 0x8000000101350650, v48);
      return v59;
    }
  }

  return v39;
}

unint64_t sub_1004B6248(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000101356D00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:*(a1 + 16)];
  *(inited + 56) = 0;
  *(inited + 64) = 0xD00000000000001CLL;
  *(inited + 72) = 0x8000000101356D20;
  *(inited + 80) = [objc_allocWithZone(NSNumber) initWithInteger:*(a2 + 16)];
  *(inited + 88) = 0;
  *(inited + 96) = 0x496E6F6973736573;
  *(inited + 104) = 0xE900000000000044;
  UUID.uuidString.getter();
  v11 = String._bridgeToObjectiveC()();

  *(inited + 112) = v11;
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000101356D40;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:*a4];
  *(inited + 152) = 0;
  *(inited + 160) = 0xD00000000000001BLL;
  *(inited + 168) = 0x8000000101356D60;
  *(inited + 176) = [objc_allocWithZone(NSNumber) initWithInteger:*a5];
  *(inited + 184) = 0;
  strcpy((inited + 192), "averageRecency");
  *(inited + 207) = -18;
  *(inited + 208) = [objc_allocWithZone(NSNumber) initWithInteger:*a6];
  *(inited + 216) = 0;
  v12 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1004B6488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 88);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  aBlock[4] = sub_1004E3184;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623050;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_1004B676C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Transaction.capture()();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138C0D0;
  v10 = SPBeaconTypeDurian;
  v11 = SPBeaconTypeAccessory;
  *(v9 + 32) = SPBeaconTypeDurian;
  *(v9 + 40) = v11;
  v12 = SPBeaconTypeHele;
  v13 = SPBeaconTypeSelfBeaconing;
  *(v9 + 48) = SPBeaconTypeHele;
  *(v9 + 56) = v13;
  v14 = SPBeaconTypeVirtualMeDevice;
  *(v9 + 64) = SPBeaconTypeVirtualMeDevice;
  v15 = qword_101694940;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v21 = sub_1010741C0(v36);

  My = type metadata accessor for Feature.FindMy();
  *(&v37 + 1) = My;
  *&v38 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v23 = sub_1000280DC(&v36);
  (*(*(My - 8) + 104))(v23, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v36);
  *&v30 = v21;
  BYTE8(v30) = 0;
  *&v31 = &off_101609158;
  BYTE8(v31) = 0;
  *&v32 = v6;
  *(&v32 + 1) = v8;
  *&v33 = v9;
  BYTE8(v33) = My & 1;
  v34 = 0uLL;
  v35 = 1;
  v41 = 1;
  v38 = v32;
  v39 = v33;
  v40 = 0uLL;
  v36 = v30;
  v37 = v31;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074054(v29);
  v25 = v24;

  v26 = sub_100908168(_swiftEmptyArrayStorage);
  sub_1004D7164(a3, &v36, 0, v26, a2, v25, 60.0);

  return sub_1001119F4(&v30);
}

uint64_t sub_1004B6AB8(unint64_t a1, uint64_t *a2)
{
  v365 = a2;
  v379 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = __chkstk_darwin(v379);
  v378 = &v348 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v377 = &v348 - v6;
  __chkstk_darwin(v5);
  v375 = (&v348 - v7);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v358 = &v348 - v9;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v356 = &v348 - v11;
  v12 = sub_1000BC4D4(&qword_1016A2478, &unk_1013AAF30);
  v13 = __chkstk_darwin(v12 - 8);
  v384 = &v348 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v387 = &v348 - v15;
  v390 = type metadata accessor for Date();
  v397 = *(v390 - 8);
  v16 = __chkstk_darwin(v390);
  v388 = &v348 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v389 = &v348 - v18;
  v19 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v19 - 8);
  v370 = &v348 - v20;
  v369 = type metadata accessor for SharedBeaconRecord(0);
  v351 = *(v369 - 8);
  __chkstk_darwin(v369);
  v364 = &v348 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = type metadata accessor for SystemInfo.DeviceLockState();
  v360 = *(v409 - 1);
  v22 = __chkstk_darwin(v409);
  v412 = (&v348 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v411 = &v348 - v24;
  Configuration = type metadata accessor for LocationFetchConfiguration(0);
  v352 = *(Configuration - 8);
  v25 = __chkstk_darwin(Configuration);
  v354 = &v348 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = v26;
  __chkstk_darwin(v25);
  v368 = &v348 - v27;
  v415 = 0;
  v28 = type metadata accessor for UUID();
  v414 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v357 = &v348 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v372 = &v348 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v348 - v34;
  v36 = __chkstk_darwin(v33);
  v402 = (&v348 - v37);
  v38 = __chkstk_darwin(v36);
  v366 = &v348 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v348 - v41;
  v43 = __chkstk_darwin(v40);
  v359 = &v348 - v44;
  v45 = __chkstk_darwin(v43);
  v410 = &v348 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = (&v348 - v48);
  v50 = __chkstk_darwin(v47);
  v52 = (&v348 - v51);
  v53 = __chkstk_darwin(v50);
  v55 = &v348 - v54;
  __chkstk_darwin(v53);
  v380 = &v348 - v56;
  if (qword_101694770 != -1)
  {
    goto LABEL_221;
  }

  while (1)
  {
    v57 = type metadata accessor for Logger();
    v58 = sub_1000076D4(v57, qword_10177AE10);
    sub_10000F4C8(a1, &v423);
    v383 = v58;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    sub_1004E2CD8(a1);
    v61 = os_log_type_enabled(v59, v60);
    v403 = v52;
    v371 = v55;
    v376 = v35;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v423 = v63;
      *v62 = 136446210;
      v64 = sub_100012BE0();
      v66 = sub_1000136BC(v64, v65, &v423);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "One-shot location request with context %{public}s.", v62, 0xCu);
      sub_100007BAC(v63);

      v52 = v403;
    }

    v381 = v49;
    v416 = v28;
    v67 = [objc_opt_self() currentConnection];
    v362 = *a1;
    if (v362 == 2)
    {
      sub_1000138F0();
      sub_10089193C();
    }

    v361 = v67;
    v68 = *(a1 + 8);
    v49 = a1;
    a1 = *(v68 + 16);
    v69 = v365[35];
    v35 = "ion16q24";
    v363 = v49;
    v405 = v69;
    if (a1)
    {
      v407 = *(v414 + 16);
      v386 = (*(v414 + 80) + 32) & ~*(v414 + 80);
      v70 = v68 + v386;
      v413 = *(v414 + 72);
      v401 = v360 + 104;
      v400 = (v360 + 8);
      LODWORD(v399) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
      v404 = (v414 + 8);
      v373 = (v414 + 56);
      v382 = (v414 + 48);
      *&v408 = v414 + 16;
      v406 = (v414 + 32);
      v349 = v68;

      v398 = xmmword_101385D80;
      v350 = v70;
      v71 = v70;
      v72 = a1;
      v367 = _swiftEmptyArrayStorage;
      v73 = v380;
      v374 = a1;
      while (1)
      {
        v391 = v72;
        v407(v73, v71, v416);
        v79 = static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v80 = qword_10177C380;
        *&v396 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v81 = swift_allocObject();
        *(v81 + 16) = v398;
        v82 = UUID.uuidString.getter();
        v84 = v83;
        *(v81 + 56) = &type metadata for String;
        v395 = sub_100008C00();
        *(v81 + 64) = v395;
        *(v81 + 32) = v82;
        *(v81 + 40) = v84;
        os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v80, "beaconRecordRemappingOwnerBeaconIdentifiers(for uuid: %@)", 57, 2, v81);

        v85 = v411;
        static SystemInfo.lockState.getter();
        v86 = v412;
        v87 = v409;
        v394 = *v401;
        v394(v412, v399, v409);
        v393 = sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
        LOBYTE(v84) = dispatch thunk of static Equatable.== infix(_:_:)();
        v88 = *v400;
        (*v400)(v86, v87);
        v392 = v88;
        v88(v85, v87);
        v385 = v80;
        if (v84)
        {
          break;
        }

        v89 = sub_100007F54();
        __chkstk_darwin(v89);
        *(&v348 - 2) = v73;
        v90 = v415;
        sub_1000314D0(sub_1004E2D2C, v89, &v423);
        v415 = v90;

        v91 = *(&v424 + 1);
        v75 = v375;
        if (!*(&v424 + 1))
        {
          goto LABEL_9;
        }

        v92 = v425;
        sub_1000035D0(&v423, *(&v424 + 1));
        (*(*(*(v92 + 1) + 8) + 32))(v91);
        v77 = *v404;
        v93 = v416;
        (*v404)(v73, v416);
        (*v373)(v75, 0, 1, v93);
        sub_100007BAC(&v423);
        v94 = (*v382)(v75, 1, v93);
        v76 = v374;
        if (v94 != 1)
        {
          v95 = *v406;
          (*v406)(v366, v75, v93);
          v96 = v367;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_100A5BFE0(0, v96[2] + 1, 1, v96);
          }

          v98 = v96[2];
          v97 = v96[3];
          if (v98 >= v97 >> 1)
          {
            v96 = sub_100A5BFE0((v97 > 1), v98 + 1, 1, v96);
          }

          v96[2] = v98 + 1;
          v367 = v96;
          v95(v96 + v386 + v98 * v413, v366, v416);
          v73 = v380;
          goto LABEL_11;
        }

        v73 = v380;
LABEL_10:
        sub_10000B3A8(v75, &qword_1016980D0, &unk_10138F3B0);
LABEL_11:
        v71 += v413;
        v72 = v391 - 1;
        if (v391 == 1)
        {
          v99 = sub_10000954C(v349);

          v100 = sub_10000954C(v367);

          if (*(v100 + 16) <= v99[2] >> 3)
          {
            *&v423 = v99;
            sub_10087D5B4(v100);

            v375 = v423;
          }

          else
          {
            v375 = sub_100610BC8(v100, v99);
          }

          v111 = v350;
          *&v423 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v76, 0);
          v112 = v423;
          v391 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer;
          v113 = v416;
          do
          {
            v114 = v376;
            v407(v376, v111, v113);
            v115 = v405;
            sub_100030068();

            __chkstk_darwin(v116);
            *(&v348 - 2) = v115;
            *(&v348 - 1) = v114;
            v117 = v378;
            v118 = v415;
            QueueSynchronizer.conditionalSync<A>(_:)();
            v415 = v118;
            v119 = v377;
            sub_1000D2AD8(v117, v377, &qword_1016980D0, &unk_10138F3B0);
            v120 = *v382;
            if ((*v382)(v119, 1, v113) == 1)
            {
              v121 = v114;
              v122 = *v406;
              (*v406)(v402, v121, v113);
              if (v120(v119, 1, v113) != 1)
              {
                sub_10000B3A8(v119, &qword_1016980D0, &unk_10138F3B0);
              }
            }

            else
            {
              v77(v114, v113);
              v122 = *v406;
              (*v406)(v402, v119, v113);
            }

            *&v423 = v112;
            v124 = *(v112 + 2);
            v123 = *(v112 + 3);
            if (v124 >= v123 >> 1)
            {
              sub_101123D4C((v123 > 1), v124 + 1, 1);
              v112 = v423;
            }

            *(v112 + 2) = v124 + 1;
            v125 = &v112[v386];
            v126 = v413;
            v113 = v416;
            v122(&v112[v386 + v124 * v413], v402, v416);
            v111 += v126;
            --v76;
          }

          while (v76);
          v382 = v122;
          v391 = v77;
          v127 = v124 + 1;
          v128 = &_mh_execute_header;
          v402 = _swiftEmptyArrayStorage;
          v129 = v372;
          v130 = v385;
          v380 = v112;
          do
          {
            v407(v129, v125, v416);
            v131 = static os_log_type_t.info.getter();
            v132 = swift_allocObject();
            *(v132 + 16) = v398;
            v133 = UUID.uuidString.getter();
            v134 = v395;
            *(v132 + 56) = &type metadata for String;
            *(v132 + 64) = v134;
            *(v132 + 32) = v133;
            *(v132 + 40) = v135;
            os_log(_:dso:log:_:_:)(v131, v128, v130, "beaconRecord(for uuid: %@)", 26, 2, v132);

            v136 = v411;
            static SystemInfo.lockState.getter();
            v137 = v130;
            v138 = v412;
            v42 = v409;
            v394(v412, v399, v409);
            v139 = dispatch thunk of static Equatable.== infix(_:_:)();
            v140 = v128;
            v141 = v392;
            v392(v138, v42);
            v141(v136, v42);
            if (v139)
            {
              v142 = static os_log_type_t.default.getter();
              os_log(_:dso:log:_:_:)(v142, v140, v137, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
              v419 = 0;
              v418 = 0u;
              aBlock = 0u;
            }

            else
            {
              v143 = sub_100007F54();
              __chkstk_darwin(v143);
              *(&v348 - 2) = v129;
              v144 = v415;
              sub_1000314D0(sub_100030E14, v143, &aBlock);
              v415 = v144;
            }

            v130 = v137;
            v128 = v140;
            v391(v129, v416);
            if (*(&v418 + 1))
            {
              sub_10000A748(&aBlock, &v423);
              v145 = v402;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v422 = v145;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v145 = sub_1000084AC(0, v145[2] + 1, 1, v145);
                v422 = v145;
              }

              v148 = v145[2];
              v147 = v145[3];
              if (v148 >= v147 >> 1)
              {
                v402 = sub_1000084AC((v147 > 1), v148 + 1, 1, v145);
                v422 = v402;
              }

              else
              {
                v402 = v145;
              }

              v42 = *(&v424 + 1);
              v149 = v425;
              v150 = sub_10015049C(&v423, *(&v424 + 1));
              __chkstk_darwin(v150);
              v152 = &v348 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v153 + 16))(v152);
              sub_100B039C0(v148, v152, &v422, v42, v149);
              sub_100007BAC(&v423);
              v129 = v372;
              v130 = v385;
            }

            else
            {
              sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
            }

            v125 += v413;
            --v127;
          }

          while (v127);

          v165 = v363;

          v155 = sub_10112A91C(v154);

          v156 = sub_10000A23C(v402, v155, 0, 0);

          v157 = v156[2];
          a1 = v357;
          if (v157)
          {
            v158 = v165;
            *&aBlock = _swiftEmptyArrayStorage;
            sub_101123D4C(0, v157, 0);
            v49 = aBlock;
            v42 = (v156 + 4);
            v159 = v416;
            do
            {
              sub_10001F280(v42, &v423);
              v161 = *(&v424 + 1);
              v160 = v425;
              sub_1000035D0(&v423, *(&v424 + 1));
              (*(*(*(v160 + 1) + 8) + 32))(v161);
              sub_100007BAC(&v423);
              *&aBlock = v49;
              v163 = v49[2];
              v162 = v49[3];
              if (v163 >= v162 >> 1)
              {
                sub_101123D4C((v162 > 1), v163 + 1, 1);
                v49 = aBlock;
              }

              v49[2] = v163 + 1;
              (v382)(v49 + v386 + v163 * v413, a1, v159);
              v42 += 40;
              --v157;
            }

            while (v157);

            v165 = v158;
          }

          else
          {

            v49 = _swiftEmptyArrayStorage;
          }

          v422 = v49;
          sub_1003996FC(v375);
          v28 = v422;
          v52 = v403;
          v55 = v371;
          v35 = 0x101385000;
          goto LABEL_63;
        }
      }

      v74 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, v80, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
      v425 = 0;
      v423 = 0u;
      v424 = 0u;
      v75 = v375;
LABEL_9:
      v76 = v374;
      v77 = *v404;
      v73 = v380;
      v78 = v416;
      (*v404)(v380, v416);
      sub_10000B3A8(&v423, &qword_101696920, &unk_10138B200);
      (*v373)(v75, 1, 1, v78);
      goto LABEL_10;
    }

    v101 = sub_100007F54();

    v103 = sub_10112A91C(v102);

    v104 = sub_10000A23C(v101, v103, 0, 0);

    v105 = v104[2];
    if (v105)
    {
      *&aBlock = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v105, 0);
      v28 = aBlock;
      v106 = (v104 + 4);
      v49 = (v414 + 32);
      a1 = v416;
      do
      {
        sub_10001F280(v106, &v423);
        v108 = *(&v424 + 1);
        v107 = v425;
        sub_1000035D0(&v423, *(&v424 + 1));
        (*(*(*(v107 + 1) + 8) + 32))(v108);
        sub_100007BAC(&v423);
        *&aBlock = v28;
        v110 = *(v28 + 16);
        v109 = *(v28 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_101123D4C((v109 > 1), v110 + 1, 1);
          v28 = aBlock;
        }

        *(v28 + 16) = v110 + 1;
        (*(v414 + 32))(v28 + ((*(v414 + 80) + 32) & ~*(v414 + 80)) + *(v414 + 72) * v110, v42, a1);
        v106 += 40;
        --v105;
      }

      while (v105);

      v165 = v363;
      v52 = v403;
      v35 = 0x101385000;
    }

    else
    {
      v165 = v49;

      v28 = _swiftEmptyArrayStorage;
    }

    v422 = v28;
    v55 = v371;
LABEL_63:
    v395 = v165[4];
    v406 = *(v28 + 16);
    v404 = v28;
    if (v406)
    {
      a1 = 0;
      v402 = (v414 + 16);
      v413 = v414 + 8;
      LODWORD(v401) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
      v400 = (v360 + 104);
      v399 = (v360 + 8);
      *&v164 = 141558275;
      v396 = v164;
      v398 = *(v35 + 3456);
      v407 = _swiftEmptyArrayStorage;
      while (a1 < *(v28 + 16))
      {
        v166 = v28 + ((*(v414 + 80) + 32) & ~*(v414 + 80)) + *(v414 + 72) * a1;
        v167 = *(v414 + 16);
        v168 = v416;
        v167(v55, v166, v416);
        v167(v52, v55, v168);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *&v423 = v172;
          *v171 = v396;
          *(v171 + 4) = 1752392040;
          *(v171 + 12) = 2081;
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v173 = dispatch thunk of CustomStringConvertible.description.getter();
          v175 = v174;
          *&v408 = *v413;
          (v408)(v403, v168);
          v176 = sub_1000136BC(v173, v175, &v423);
          v55 = v371;

          *(v171 + 14) = v176;
          v42 = &_mh_execute_header;
          _os_log_impl(&_mh_execute_header, v169, v170, "One-shot location includes beaconID: %{private,mask.hash}s.", v171, 0x16u);
          sub_100007BAC(v172);
        }

        else
        {

          *&v408 = *v413;
          (v408)(v52, v168);
          v42 = &_mh_execute_header;
        }

        v177 = static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v178 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v179 = swift_allocObject();
        *(v179 + 16) = v398;
        v180 = UUID.uuidString.getter();
        v35 = v55;
        v182 = v181;
        *(v179 + 56) = &type metadata for String;
        *(v179 + 64) = sub_100008C00();
        *(v179 + 32) = v180;
        *(v179 + 40) = v182;
        os_log(_:dso:log:_:_:)(v177, &_mh_execute_header, v178, "beaconRecord(for uuid: %@)", 26, 2, v179);

        v183 = v411;
        static SystemInfo.lockState.getter();
        v49 = v412;
        v184 = v409;
        (*v400)(v412, v401, v409);
        sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
        v185 = dispatch thunk of static Equatable.== infix(_:_:)();
        v186 = *v399;
        (*v399)(v49, v184);
        v186(v183, v184);
        if (v185)
        {
          v187 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v187, &_mh_execute_header, v178, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
          v419 = 0;
          v418 = 0u;
          aBlock = 0u;
        }

        else
        {
          v188 = sub_100007F54();
          __chkstk_darwin(v188);
          *(&v348 - 2) = v35;
          v49 = v415;
          sub_1000314D0(sub_1004E4EC0, v188, &aBlock);
          v415 = v49;
        }

        v55 = v35;
        (v408)(v35, v416);
        v52 = v403;
        if (*(&v418 + 1))
        {
          sub_10000A748(&aBlock, &v423);
          sub_10000A748(&v423, &aBlock);
          v189 = v407;
          v190 = swift_isUniquelyReferenced_nonNull_native();
          v421[0] = v189;
          if ((v190 & 1) == 0)
          {
            v407 = sub_1000084AC(0, *(v407 + 2) + 1, 1, v407);
            v421[0] = v407;
          }

          v192 = *(v407 + 2);
          v191 = *(v407 + 3);
          if (v192 >= v191 >> 1)
          {
            v407 = sub_1000084AC((v191 > 1), v192 + 1, 1, v407);
            v421[0] = v407;
          }

          v193 = *(&v418 + 1);
          v194 = v419;
          v195 = sub_10015049C(&aBlock, *(&v418 + 1));
          v49 = &v348;
          __chkstk_darwin(v195);
          v197 = &v348 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v198 + 16))(v197);
          sub_100B039C0(v192, v197, v421, v193, v194);
          sub_100007BAC(&aBlock);
        }

        else
        {
          sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
        }

        ++a1;
        v28 = v404;
        if (v406 == a1)
        {
          goto LABEL_83;
        }
      }

LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
      goto LABEL_217;
    }

    v407 = _swiftEmptyArrayStorage;
LABEL_83:
    v199 = sub_1004DB99C(v407);

    v200 = v368;
    v201 = sub_101106664(v362, v368);
    v202 = v200[1];
    v413 = v199;
    if (v202)
    {
      a1 = v199[2];
      if (a1)
      {
        v55 = 0;
        v28 = (v199 + 4);
        v42 = (v351 + 56);
        v35 = _swiftEmptyArrayStorage;
        v52 = &qword_10139FD30;
        v49 = v370;
        v203 = v369;
        while (1)
        {
          if (v55 >= *(v413 + 16))
          {
            goto LABEL_218;
          }

          sub_10001F280(v28, &v423);
          sub_10001F280(&v423, &aBlock);
          sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
          v204 = swift_dynamicCast();
          v205 = *v42;
          if ((v204 & 1) == 0)
          {
            break;
          }

          v205(v49, 0, 1, v203);
          v206 = v364;
          sub_10002AAA4(v49, v364, type metadata accessor for SharedBeaconRecord);
          v207 = *(v206 + *(v203 + 64));
          sub_1004E4A04(v206, type metadata accessor for SharedBeaconRecord);
          if (v207 == 1)
          {
            goto LABEL_93;
          }

          sub_100007BAC(&v423);
LABEL_87:
          ++v55;
          v28 += 40;
          if (a1 == v55)
          {
            goto LABEL_99;
          }
        }

        v205(v49, 1, 1, v203);
        sub_10000B3A8(v49, &unk_101698C30, &unk_101392630);
LABEL_93:
        sub_10000A748(&v423, &aBlock);
        v208 = swift_isUniquelyReferenced_nonNull_native();
        v421[0] = v35;
        if ((v208 & 1) == 0)
        {
          sub_100025B1C(0, *(v35 + 16) + 1, 1);
          v35 = v421[0];
        }

        v210 = *(v35 + 16);
        v209 = *(v35 + 24);
        if (v210 >= v209 >> 1)
        {
          sub_100025B1C((v209 > 1), v210 + 1, 1);
        }

        v211 = *(&v418 + 1);
        v212 = v419;
        v213 = sub_10015049C(&aBlock, *(&v418 + 1));
        __chkstk_darwin(v213);
        v215 = &v348 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v216 + 16))(v215);
        sub_1006252D4(v210, v215, v421, v211, v212);
        sub_100007BAC(&aBlock);
        v35 = v421[0];
        v49 = v370;
        v203 = v369;
        goto LABEL_87;
      }

      v35 = _swiftEmptyArrayStorage;
LABEL_99:
      sub_1004AF1D8(v35);

      v200 = v368;
    }

    if (*v200 == 1)
    {
      break;
    }

    *&v398 = 0;
    v399 = 0;
LABEL_134:
    v42 = v389;
    v264 = static Date.distantPast.getter();
    __chkstk_darwin(v264);
    v52 = v365;
    v265 = v395;
    *(&v348 - 4) = v365;
    *(&v348 - 3) = v265;
    *(&v348 - 2) = v42;
    v266 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_1004E2D68, (&v348 - 6), v404);
    v267 = *(v397 + 8);
    v397 += 8;
    v407 = v267;
    (v267)(v42, v390);
    *&aBlock = _swiftEmptyDictionarySingleton;

    sub_1004DB7BC(_swiftEmptyDictionarySingleton, v266, v52, &aBlock);
    v415 = v268;

    if (v363[7] & 1) != 0 || (*(v363 + 57))
    {
      v269 = v361;
      if (v361)
      {
        v270 = v363;
        sub_10000F4C8(v363, &v423);
        v271 = v269;
        v272 = Logger.logObject.getter();
        v273 = static os_log_type_t.default.getter();
        sub_1004E2CD8(v270);
        if (os_log_type_enabled(v272, v273))
        {
          v42 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          *&v423 = v274;
          *v42 = 141558275;
          *(v42 + 4) = 1752392040;
          *(v42 + 6) = 2081;
          if (v270[6])
          {
            v275 = v270[5];
            v55 = v270[6];
          }

          else
          {
            v275 = 0x6E776F6E6B6E75;
            v55 = 0xE700000000000000;
          }

          v281 = sub_1000136BC(v275, v55, &v423);

          *(v42 + 14) = v281;
          _os_log_impl(&_mh_execute_header, v272, v273, "Subscribing context for %{private,mask.hash}s.", v42, 0x16u);
          sub_100007BAC(v274);
        }

        sub_1007D6F8C(v271, v363);
      }

      else
      {
        v276 = v363;
        sub_10000F4C8(v363, &v423);
        v271 = Logger.logObject.getter();
        v277 = static os_log_type_t.default.getter();
        sub_1004E2CD8(v276);
        if (os_log_type_enabled(v271, v277))
        {
          v278 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v423 = v42;
          *v278 = 141558531;
          *(v278 + 4) = 1752392040;
          *(v278 + 12) = 2081;
          if (v276[6])
          {
            v279 = v276[5];
            v280 = v276[6];
          }

          else
          {
            v279 = 0x6E776F6E6B6E75;
            v280 = 0xE700000000000000;
          }

          v282 = sub_1000136BC(v279, v280, &v423);

          *(v278 + 14) = v282;
          *(v278 + 22) = 2080;
          v421[0] = 0;
          sub_1000BC4D4(&qword_1016A2488, &qword_1013AAF58);
          v283 = String.init<A>(describing:)();
          v55 = v284;
          v285 = sub_1000136BC(v283, v284, &v423);

          *(v278 + 24) = v285;
          _os_log_impl(&_mh_execute_header, v271, v277, "Did not subscribe context for %{private,mask.hash}s,\nconnection: %s. No connection.", v278, 0x20u);
          swift_arrayDestroy();
        }
      }
    }

    v286 = *(aBlock + 64);
    v405 = aBlock + 64;
    v287 = 1 << *(aBlock + 32);
    if (v287 < 64)
    {
      v288 = ~(-1 << v287);
    }

    else
    {
      v288 = -1;
    }

    v289 = v288 & v286;
    v403 = (v287 + 63) >> 6;
    v412 = (v414 + 16);
    v400 = (v414 + 32);
    v413 = v414 + 8;
    v401 = aBlock;

    v49 = 0;
LABEL_154:
    v296 = v384;
    v297 = v405;
    v298 = v403;
    while (2)
    {
      if (v289)
      {
        v299 = v49;
LABEL_168:
        v406 = ((v289 - 1) & v289);
        v301 = __clz(__rbit64(v289)) | (v299 << 6);
        v302 = v401;
        v303 = v414;
        v304 = v381;
        v305 = v416;
        (*(v414 + 16))(v381, *(v401 + 48) + *(v414 + 72) * v301, v416);
        sub_10001F280(*(v302 + 56) + 40 * v301, &v423);
        v306 = sub_1000BC4D4(&qword_1016A2480, &qword_1013AAF40);
        v307 = *(v306 + 48);
        (*(v303 + 32))(v296, v304, v305);
        sub_10000A748(&v423, v296 + v307);
        (*(*(v306 - 8) + 56))(v296, 0, 1, v306);
      }

      else
      {
        if (v298 <= v49 + 1)
        {
          v300 = v49 + 1;
        }

        else
        {
          v300 = v298;
        }

        v28 = (v300 - 1);
        v35 = &qword_1016A2480;
        while (1)
        {
          v299 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_213;
          }

          if (v299 >= v298)
          {
            break;
          }

          v289 = *(v297 + 8 * v299);
          v49 = (v49 + 1);
          if (v289)
          {
            v49 = v299;
            goto LABEL_168;
          }
        }

        v344 = sub_1000BC4D4(&qword_1016A2480, &qword_1013AAF40);
        (*(*(v344 - 8) + 56))(v296, 1, 1, v344);
        v406 = 0;
        v49 = v28;
      }

      v308 = v387;
      sub_1000D2AD8(v296, v387, &qword_1016A2478, &unk_1013AAF30);
      v309 = sub_1000BC4D4(&qword_1016A2480, &qword_1013AAF40);
      if ((*(*(v309 - 8) + 48))(v308, 1, v309) == 1)
      {

        v345 = type metadata accessor for TaskPriority();
        v346 = v356;
        (*(*(v345 - 8) + 56))(v356, 1, 1, v345);
        v347 = swift_allocObject();
        *(v347 + 16) = 0;
        *(v347 + 24) = 0;
        sub_10025EDD4(0, 0, v346, &unk_1013AAF50, v347);

        sub_1004E4A04(v368, type metadata accessor for LocationFetchConfiguration);

        return sub_1000BB27C(v398, v399);
      }

      sub_10000A748((v308 + *(v309 + 48)), &v423);
      v310 = *(&v424 + 1);
      v311 = v425;
      sub_1000035D0(&v423, *(&v424 + 1));
      v312 = (*(v311 + 2))(v310, v311);
      v313 = v312;
      v421[0] = _swiftEmptyArrayStorage;
      v314 = v312 + 56;
      v315 = 1 << *(v312 + 32);
      if (v315 < 64)
      {
        v316 = ~(-1 << v315);
      }

      else
      {
        v316 = -1;
      }

      v35 = v316 & *(v312 + 56);
      v55 = (v315 + 63) >> 6;

      v28 = 0;
      v411 = _swiftEmptyArrayStorage;
LABEL_174:
      v42 = v416;
      a1 = v410;
      while (v35)
      {
LABEL_181:
        v318 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        (*(v414 + 16))(a1, *(v313 + 48) + *(v414 + 72) * (v318 | (v28 << 6)), v42);
        if (*(v415 + 16))
        {
          v319 = sub_1000210EC(a1);
          a1 = v410;
          if (v320)
          {
            v321 = *(*(v415 + 56) + 8 * v319);
            v322 = v410;
            v411 = *v413;
            v52 = v321;
            (v411)(v322, v42);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v421[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v421[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v411 = *((v421[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v411 = v421[0];
            goto LABEL_174;
          }
        }

        (*v413)(a1, v42);
      }

      while (1)
      {
        v317 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
          goto LABEL_215;
        }

        if (v317 >= v55)
        {
          break;
        }

        v35 = *(v314 + 8 * v317);
        ++v28;
        if (v35)
        {
          v28 = v317;
          goto LABEL_181;
        }
      }

      v55 = v411;
      v28 = v411 >> 62;
      if (v411 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v52 = *((v411 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v296 = v384;
      if (!v52)
      {
        goto LABEL_157;
      }

      *&v408 = v55 & 0xC000000000000001;
      if ((v55 & 0xC000000000000001) != 0)
      {
        v323 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_192:
        v409 = v323;
        if (v28)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v28 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v35 = *(&v424 + 1);
        v324 = v425;
        sub_1000035D0(&v423, *(&v424 + 1));
        if (v28 == (*(v324 + 3))(v35, v324))
        {
          v325 = 0;
          v402 = (v55 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v52 == v325)
            {

              v290 = v42;
              v291 = *(&v424 + 1);
              v42 = v425;
              sub_1000035D0(&v423, *(&v424 + 1));
              v292 = v381;
              (*(v42 + 1))(v291, v42);
              v293 = v415;
              v294 = swift_isUniquelyReferenced_nonNull_native();
              v421[0] = v293;
              sub_100FFA5A0(v409, v292, v294);
              v295 = *v413;
              (*v413)(v292, v290);
              v415 = v421[0];
              v295(v387, v290);
              sub_100007BAC(&v423);
              v289 = v406;
              goto LABEL_154;
            }

            if (v408)
            {
              v326 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v325 >= v402[2])
              {
                goto LABEL_216;
              }

              v326 = *(v55 + 8 * v325 + 32);
            }

            v35 = v326;
            if (__OFADD__(v325, 1))
            {
              goto LABEL_214;
            }

            v28 = v409;
            v327 = [v35 timestamp];
            v328 = v389;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v329 = [v28 timestamp];
            v330 = v388;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            LOBYTE(v329) = static Date.== infix(_:_:)();
            v331 = v330;
            v332 = v390;
            a1 = v397;
            v333 = v407;
            (v407)(v331, v390);
            v333(v328, v332);
            if ((v329 & 1) == 0)
            {
              break;
            }

            [v35 longitude];
            v335 = v334;
            [v28 longitude];
            if (v335 != v336)
            {
              break;
            }

            [v35 latitude];
            v338 = v337;
            [v28 latitude];
            if (v338 != v339)
            {
              break;
            }

            [v35 horizontalAccuracy];
            v341 = v340;
            [v28 horizontalAccuracy];
            v343 = v342;

            v325 = (v325 + 1);
            v42 = v416;
            v55 = v411;
            if (v341 != v343)
            {
              goto LABEL_156;
            }
          }

          v42 = v416;
          v55 = v411;
        }

LABEL_156:

        v296 = v384;
LABEL_157:

        (*v413)(v387, v42);
        sub_100007BAC(&v423);
        v297 = v405;
        v298 = v403;
        v289 = v406;
        continue;
      }

      break;
    }

    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v323 = *(v55 + 32);
      goto LABEL_192;
    }

LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    swift_once();
  }

  __chkstk_darwin(v201);
  v217 = v395;
  *(&v348 - 4) = v365;
  *(&v348 - 3) = v217;
  *(&v348 - 2) = v218;
  v49 = v415;
  v42 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_1004E4EFC, (&v348 - 6), v404);
  v415 = v49;
  if (v362)
  {
    v412 = *(v413 + 16);
    if (v412)
    {
      v219 = 0;
      v52 = (v413 + 32);
      v55 = v414 + 8;
      v28 = _swiftEmptyArrayStorage;
      a1 = v359;
      while (1)
      {
        if (v219 >= *(v413 + 16))
        {
          goto LABEL_220;
        }

        sub_10001F280(v52, &v423);
        v220 = *(&v424 + 1);
        v221 = v425;
        sub_1000035D0(&v423, *(&v424 + 1));
        v35 = (*(v221 + 18))(v220, v221);
        v223 = *(&v424 + 1);
        v222 = v425;
        sub_1000035D0(&v423, *(&v424 + 1));
        (*(*(*(v222 + 1) + 8) + 32))(v223);
        if (!*(v42 + 2))
        {
          break;
        }

        v224 = sub_1000210EC(a1);
        if ((v225 & 1) == 0)
        {
          break;
        }

        v226 = *(*(v42 + 7) + 8 * v224);
        v49 = *v55;

        (v49)(a1, v416);
        v227 = *(v226 + 16);

        if (v227)
        {
          goto LABEL_115;
        }

        v411 = v28;
        v229 = *(&v424 + 1);
        v228 = v425;
        sub_1000035D0(&v423, *(&v424 + 1));
        v230 = v381;
        (*(*(*(v228 + 1) + 8) + 32))(v229);
        if (qword_101694920 != -1)
        {
          swift_once();
        }

        v231 = sub_100035730(v230, 0, 0);
        v232 = v358;
        v233 = sub_10003ABC0(v358, v230, v231, 1);

        (v49)(v230, v416);
        sub_10000B3A8(v232, &unk_101696900, &unk_10138B1E0);
        a1 = v359;
        v28 = v411;
        if (v35 & 1 | ((v233 & 1) == 0))
        {
LABEL_116:
          sub_10000A748(&v423, &aBlock);
          v234 = swift_isUniquelyReferenced_nonNull_native();
          v421[0] = v28;
          if ((v234 & 1) == 0)
          {
            sub_100025B1C(0, *(v28 + 16) + 1, 1);
            v28 = v421[0];
          }

          v35 = *(v28 + 16);
          v235 = *(v28 + 24);
          if (v35 >= v235 >> 1)
          {
            sub_100025B1C((v235 > 1), v35 + 1, 1);
          }

          v236 = *(&v418 + 1);
          v237 = v419;
          v238 = sub_10015049C(&aBlock, *(&v418 + 1));
          v49 = &v348;
          __chkstk_darwin(v238);
          v240 = &v348 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v241 + 16))(v240);
          sub_1006252D4(v35, v240, v421, v236, v237);
          sub_100007BAC(&aBlock);
          v28 = v421[0];
          goto LABEL_105;
        }

LABEL_104:
        sub_100007BAC(&v423);
LABEL_105:
        v219 = (v219 + 1);
        v52 += 5;
        if (v412 == v219)
        {
          goto LABEL_124;
        }
      }

      (*v55)(a1, v416);
LABEL_115:
      if (v35)
      {
        goto LABEL_116;
      }

      goto LABEL_104;
    }

    v28 = _swiftEmptyArrayStorage;
LABEL_124:

    v200 = v368;
  }

  else
  {

    v28 = v413;
  }

  v55 = *(v28 + 16);

  if (v55)
  {
    a1 = 0;
    v42 = (v28 + 32);
    v409 = (v414 + 8);
    *&v242 = 141558275;
    v408 = v242;
    v411 = v28;
    do
    {
      if (a1 >= *(v28 + 16))
      {
        goto LABEL_219;
      }

      sub_10001F280(v42, &v423);
      sub_10001F280(&v423, &aBlock);
      v35 = Logger.logObject.getter();
      v243 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v243))
      {
        v52 = swift_slowAlloc();
        v412 = swift_slowAlloc();
        v421[0] = v412;
        *v52 = v408;
        *(v52 + 4) = 1752392040;
        *(v52 + 6) = 2081;
        v244 = *(&v418 + 1);
        v245 = v419;
        sub_1000035D0(&aBlock, *(&v418 + 1));
        v246 = v381;
        (*(*(*(v245 + 1) + 8) + 32))(v244);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = v416;
        v247 = dispatch thunk of CustomStringConvertible.description.getter();
        v249 = v248;
        v250 = v246;
        v28 = v411;
        (*v409)(v250, v49);
        sub_100007BAC(&aBlock);
        v251 = sub_1000136BC(v247, v249, v421);

        *(v52 + 14) = v251;
        _os_log_impl(&_mh_execute_header, v35, v243, "One-shot location fetching ACSN for beacon without recent location: %{private,mask.hash}s.", v52, 0x16u);
        sub_100007BAC(v412);

        v200 = v368;
      }

      else
      {

        sub_100007BAC(&aBlock);
      }

      ++a1;
      sub_100007BAC(&v423);
      v42 += 40;
    }

    while (v55 != a1);
  }

  v252 = v365;
  v253 = v365[11];
  v254 = v200;
  v255 = v28;
  v256 = v354;
  sub_1004E46C0(v254, v354, type metadata accessor for LocationFetchConfiguration);
  v257 = (*(v352 + 80) + 128) & ~*(v352 + 80);
  v55 = swift_allocObject();
  v258 = v363;
  v259 = *(v363 + 3);
  *(v55 + 48) = *(v363 + 2);
  *(v55 + 64) = v259;
  *(v55 + 80) = *(v258 + 4);
  *(v55 + 89) = *(v258 + 73);
  v260 = *(v258 + 1);
  *(v55 + 16) = *v258;
  *(v55 + 32) = v260;
  *(v55 + 112) = v252;
  *(v55 + 120) = v255;
  sub_10002AAA4(v256, v55 + v257, type metadata accessor for LocationFetchConfiguration);
  v261 = swift_allocObject();
  *(v261 + 16) = sub_1004E2E34;
  *(v261 + 24) = v55;
  v419 = sub_1000D2FB0;
  v420 = v261;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v418 = sub_10013FE14;
  *(&v418 + 1) = &unk_101622DF8;
  v262 = _Block_copy(&aBlock);
  sub_10000F4C8(v258, &v423);

  dispatch_sync(v253, v262);
  _Block_release(v262);
  LOBYTE(v253) = swift_isEscapingClosureAtFileLocation();

  if ((v253 & 1) == 0)
  {
    *&v398 = sub_1004E2E34;
    v399 = v55;
    goto LABEL_134;
  }

  __break(1u);
  return result;
}

void sub_1004BA53C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a4;
  v53 = a5;
  v54 = a1;
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for DirectorySequence();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v55 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  v19 = type metadata accessor for UUID();
  __chkstk_darwin(v19);
  v49 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v21;
  v22 = *(v21 + 16);
  v51 = v23;
  v22();
  v57 = *(*(a3 + 280) + 168);
  v24 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177BF38);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v24);
  v60 = _swiftEmptyArrayStorage;
  v59 = _swiftEmptyArrayStorage;
  v25 = [objc_opt_self() defaultManager];
  v48 = v18;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v26 = v55;
  v56 = *(v55 + 48);
  if (v56(v10, 1, v13) == 1)
  {
LABEL_7:
    (*(v46 + 8))(v58, v47);
    v29 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v30 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10138BBE0;
    v32 = v60;
    v33 = v60[2];
    *(v31 + 56) = &type metadata for Int;
    *(v31 + 64) = &protocol witness table for Int;
    *(v31 + 32) = v33;
    sub_1004DB51C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v34 = v48;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = sub_100008C00();
    *(v31 + 72) = v35;
    *(v31 + 80) = v37;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Found %i records at %@", 22, 2, v31);

    (*(v55 + 8))(v34, v13);

    __chkstk_darwin(v38);
    v39 = v53;
    *(&v45 - 2) = v52;
    *(&v45 - 1) = v39;
    v40 = sub_10013D74C(sub_1004E3044, (&v45 - 4), v32);
    v41 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *v41;
    v43 = v40;
    v44 = v49;
    sub_100FFDCB0(v43, v49, isUniquelyReferenced_nonNull_native);
    (*(v50 + 8))(v44, v51);
    *v41 = v60;
  }

  else
  {
    v27 = *(v26 + 32);
    while (1)
    {
      v27(v16, v10, v13);
      v28 = objc_autoreleasePoolPush();
      sub_1006011CC(v16, v57, &v60, &v59);
      if (v6)
      {
        break;
      }

      v6 = 0;
      objc_autoreleasePoolPop(v28);
      (*(v26 + 8))(v16, v13);
      DirectorySequence.next()();
      if (v56(v10, 1, v13) == 1)
      {
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(v28);
    __break(1u);
  }
}

uint64_t sub_1004BAB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BeaconEstimatedLocation(0);
  if (sub_10062CFC0(*(a1 + *(v5 + 44)), a2))
  {
    type metadata accessor for Date();
    sub_1004DB51C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v6 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1004BAC24(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v8 = *(a1 + 5);
  v7 = *(a1 + 6);
  v9 = *(a1 + 2);
  v10 = *(a1 + 10);
  v18 = *(a1 + 9);
  v11 = a1[88];
  v12 = qword_101694940;

  if (v12 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v13 = sub_1010741C0(v27);

  My = type metadata accessor for Feature.FindMy();
  *(&v28 + 1) = My;
  *&v29 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v15 = sub_1000280DC(&v27);
  (*(*(My - 8) + 104))(v15, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v27);
  *&v21 = v13;
  BYTE8(v21) = 0;
  *&v22 = &off_101609180;
  BYTE8(v22) = v6 == 3;
  *&v23 = v8;
  *(&v23 + 1) = v7;
  *&v24 = v9;
  BYTE8(v24) = My & 1;
  *&v25 = v18;
  *(&v25 + 1) = v10;
  v26 = v11;
  v32 = v11;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v27 = v21;
  v28 = v22;
  Configuration = type metadata accessor for LocationFetchConfiguration(0);
  sub_1004D7164(a3, &v27, (a1[56] & 1) == 0, *(a1 + 8), a2, *(a4 + *(Configuration + 32)), *(a4 + 8));
  return sub_1001119F4(&v21);
}

uint64_t sub_1004BAE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v143 = a4;
  v149 = a1;
  v155 = type metadata accessor for Date();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  v9 = __chkstk_darwin(v8);
  v145 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v146 = &v139 - v12;
  __chkstk_darwin(v11);
  v159 = &v139 - v13;
  v148 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v148);
  v147 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v151 = &v139 - v17;
  __chkstk_darwin(v16);
  v19 = &v139 - v18;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 8);
  v20 = __chkstk_darwin(v163);
  v156 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v157 = &v139 - v23;
  __chkstk_darwin(v22);
  v144 = &v139 - v24;
  v25 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  __chkstk_darwin(v25 - 8);
  v27 = &v139 - v26;
  v28 = type metadata accessor for BeaconEstimatedLocation(0);
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v150 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v139 - v33;
  __chkstk_darwin(v32);
  v161 = &v139 - v35;
  v158 = *(a3 + 280);
  sub_100025020(a2, &v172);
  v160 = v8;
  v36 = *(a2 + *(v8 + 48));
  sub_1012BAB18(v36, v27);
  v37 = *(v29 + 48);
  v152 = v28;
  if (v37(v27, 1, v28) == 1)
  {
    sub_10000B3A8(&v172, &qword_101696920, &unk_10138B200);
    v38 = &unk_101696940;
    v39 = &unk_10138B210;
    v40 = v27;
    return sub_10000B3A8(v40, v38, v39);
  }

  sub_10002AAA4(v27, v161, type metadata accessor for BeaconEstimatedLocation);
  sub_1000D2A70(&v172, &v166, &qword_101696920, &unk_10138B200);
  if (!*(&v167 + 1))
  {
    sub_10000B3A8(&v166, &qword_101696920, &unk_10138B200);
    goto LABEL_15;
  }

  v142 = a2;
  sub_10000A748(&v166, &v169);
  v41 = v170;
  v42 = v171;
  sub_1000035D0(&v169, v170);
  v43 = v163;
  (*(v42 + 200))(v41, v42);
  v44 = v162;
  if ((*(v162 + 48))(v19, 1, v43) == 1)
  {
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    sub_100007BAC(&v169);
    a2 = v142;
    goto LABEL_15;
  }

  v45 = v144;
  (*(v44 + 32))(v144, v19, v163);
  v46 = *v143;
  a2 = v142;
  if (*(*v143 + 16))
  {
    v47 = sub_1000210EC(v45);
    if (v48)
    {
      sub_10001F280(*(v46 + 56) + 40 * v47, &v166);
      (*(v162 + 8))(v45, v163);
      v49 = &v166;
LABEL_13:
      sub_10000B3A8(v49, &unk_1016AA480, &unk_1013BD050);
      goto LABEL_14;
    }
  }

  v168 = 0;
  v166 = 0u;
  v167 = 0u;
  sub_10000B3A8(&v166, &unk_1016AA480, &unk_1013BD050);
  sub_100ACBC98(v45, &v164);
  if (!v165)
  {
    (*(v162 + 8))(v45, v163);
    v49 = &v164;
    goto LABEL_13;
  }

  sub_10000A748(&v164, &v166);
  v50 = v45;
  v51 = v162;
  v52 = v157;
  v53 = v163;
  (*(v162 + 16))(v157, v50, v163);
  sub_10001F280(&v166, &v164);
  sub_1001DF0CC(&v164, v52);
  sub_100007BAC(&v166);
  (*(v51 + 8))(v144, v53);
LABEL_14:
  sub_100007BAC(&v169);
LABEL_15:
  sub_1000D2A70(&v172, &v166, &qword_101696920, &unk_10138B200);
  if (*(&v167 + 1))
  {
    sub_10000A748(&v166, &v169);
    sub_100AC26E0(&v169);
    v55 = v54;
    v56 = v170;
    v57 = v171;
    sub_1000035D0(&v169, v170);
    v58 = sub_1010C96DC(v56, v57);
    sub_100007BAC(&v169);
    v59 = v36[2];
    if (!v59)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_10000B3A8(&v166, &qword_101696920, &unk_10138B200);
    v58 = 0;
    v55 = 10.0;
    v59 = v36[2];
    if (!v59)
    {
LABEL_23:
      v61 = v159;
      sub_1000D2A70(a2, v159, &qword_1016A2490, &unk_1013B3200);
      v62 = sub_10039C740(*(v61 + *(v160 + 48)));

      v58 = sub_1010CBA6C(v62, v58, v55);

      v36 = v162;
      v63 = *(v162 + 8);
      v144 = (v162 + 8);
      v143 = v63;
      (v63)(v61, v163);
      if (v58)
      {
        if (qword_101694770 != -1)
        {
LABEL_42:
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_1000076D4(v64, qword_10177AE10);
        v65 = v146;
        sub_1000D2A70(a2, v146, &qword_1016A2490, &unk_1013B3200);
        v66 = v150;
        sub_1004E46C0(v161, v150, type metadata accessor for BeaconEstimatedLocation);
        v67 = v58;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        LODWORD(v142) = v69;
        v145 = v68;
        v70 = os_log_type_enabled(v68, v69);
        v71 = v151;
        if (v70)
        {
          v72 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v169 = v140;
          *v72 = 141559811;
          *(v72 + 4) = 1752392040;
          *(v72 + 12) = 2081;
          v73 = v159;
          sub_1000D2A70(v65, v159, &qword_1016A2490, &unk_1013B3200);

          v74 = v36[4];
          v75 = v157;
          v141 = v67;
          v76 = v163;
          v74(v157, v73, v163);
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v78;
          (v143)(v75, v76);
          sub_10000B3A8(v65, &qword_1016A2490, &unk_1013B3200);
          v80 = sub_1000136BC(v77, v79, &v169);

          *(v72 + 14) = v80;
          *(v72 + 22) = 2160;
          *(v72 + 24) = 1752392040;
          *(v72 + 32) = 2081;
          v81 = v150;
          v67 = v141;
          v71 = v151;
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v83;
          sub_1004E4A04(v81, type metadata accessor for BeaconEstimatedLocation);
          v85 = sub_1000136BC(v82, v84, &v169);

          *(v72 + 34) = v85;
          *(v72 + 42) = 2049;
          [v67 coordinate];
          *(v72 + 44) = v86;
          *(v72 + 52) = 2049;
          [v67 coordinate];
          *(v72 + 54) = v87;
          *(v72 + 62) = 2050;
          [v67 horizontalAccuracy];
          *(v72 + 64) = v88;
          *(v72 + 72) = 2082;
          v89 = [v67 timestamp];
          v90 = v153;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v91 = v155;
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v93;
          v95 = v90;
          v36 = v162;
          (*(v154 + 8))(v95, v91);
          v96 = sub_1000136BC(v92, v94, &v169);

          *(v72 + 74) = v96;
          v97 = v145;
          _os_log_impl(&_mh_execute_header, v145, v142, "Filtered cached latest location returned to client for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v72, 0x52u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1004E4A04(v66, type metadata accessor for BeaconEstimatedLocation);
          v98 = sub_10000B3A8(v65, &qword_1016A2490, &unk_1013B3200);
        }

        v113 = v156;
        __chkstk_darwin(v98);
        *(&v139 - 2) = v114;
        *(&v139 - 1) = a2;
        v115 = v147;
        QueueSynchronizer.conditionalSync<A>(_:)();
        sub_1000D2AD8(v115, v71, &qword_1016980D0, &unk_10138F3B0);
        v116 = v36[6];
        if (v116(v71, 1, v163) == 1)
        {
          v117 = v159;
          sub_1000D2A70(a2, v159, &qword_1016A2490, &unk_1013B3200);

          v118 = v117;
          v36 = v162;
          v119 = v163;
          (*(v162 + 32))(v113, v118, v163);
          if (v116(v71, 1, v119) != 1)
          {
            sub_10000B3A8(v71, &qword_1016980D0, &unk_10138F3B0);
          }
        }

        else
        {
          (v36[4])(v113, v71, v163);
        }

        v120 = v157;
        v121 = v163;
        (v36[2])(v157, v113, v163);
        v122 = [v67 timestamp];
        v123 = v153;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        [v67 coordinate];
        v125 = v124;
        [v67 coordinate];
        v127 = v126;
        [v67 horizontalAccuracy];
        v129 = v128;
        v130 = v67;
        v131 = v161;
        v132 = sub_1010CBDEC(*(v161 + *(v152 + 44)));
        v133 = objc_allocWithZone(SPBeaconLocation);
        v134 = v132;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v136 = [v133 initWithTimestamp:isa latitude:v134 longitude:v125 horizontalAccuracy:v127 source:v129];

        (*(v154 + 8))(v123, v155);
        sub_1001DD16C(v136, v120);

        (v143)(v156, v121);
        v137 = v131;
      }

      else
      {
        if (qword_101694770 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_1000076D4(v99, qword_10177AE10);
        v100 = v145;
        sub_1000D2A70(a2, v145, &qword_1016A2490, &unk_1013B3200);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v169 = v104;
          *v103 = 141558275;
          *(v103 + 4) = 1752392040;
          *(v103 + 12) = 2081;
          v105 = v163;
          v106 = v100;
          v107 = v159;
          sub_1000D2A70(v106, v159, &qword_1016A2490, &unk_1013B3200);

          v108 = v157;
          (*(v162 + 32))(v157, v107, v105);
          sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v109 = dispatch thunk of CustomStringConvertible.description.getter();
          v111 = v110;
          (v143)(v108, v105);
          sub_10000B3A8(v145, &qword_1016A2490, &unk_1013B3200);
          v112 = sub_1000136BC(v109, v111, &v169);

          *(v103 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v101, v102, "Could not produce filtered location for beacon %{private,mask.hash}s.", v103, 0x16u);
          sub_100007BAC(v104);
        }

        else
        {

          sub_10000B3A8(v100, &qword_1016A2490, &unk_1013B3200);
        }

        v137 = v161;
      }

      sub_1004E4A04(v137, type metadata accessor for BeaconEstimatedLocation);
      v38 = &qword_101696920;
      v39 = &unk_10138B200;
      v40 = &v172;
      return sub_10000B3A8(v40, v38, v39);
    }
  }

  v60 = 0;
  while (1)
  {
    if (v60 >= v36[2])
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_1004E46C0(v36 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v60, v34, type metadata accessor for BeaconEstimatedLocation);
    sub_1004BC234(v34, a2);
    if (v4)
    {
      break;
    }

    ++v60;
    sub_1004E4A04(v34, type metadata accessor for BeaconEstimatedLocation);
    if (v59 == v60)
    {
      goto LABEL_23;
    }
  }

  result = sub_1004E4A04(v34, type metadata accessor for BeaconEstimatedLocation);
  __break(1u);
  return result;
}

void sub_1004BC234(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for UUID();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = type metadata accessor for BeaconEstimatedLocation(0);
  v7 = __chkstk_darwin(v55);
  v59 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v58 = &v50[-v10];
  v11 = __chkstk_darwin(v9);
  v57 = &v50[-v12];
  v13 = __chkstk_darwin(v11);
  v56 = &v50[-v14];
  __chkstk_darwin(v13);
  v16 = &v50[-v15];
  v17 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  v18 = __chkstk_darwin(v17);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v50[-v21];
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177AE10);
  sub_1000D2A70(a2, v22, &qword_1016A2490, &unk_1013B3200);
  sub_1004E46C0(a1, v16, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v56, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v57, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v58, type metadata accessor for BeaconEstimatedLocation);
  sub_1004E46C0(a1, v59, type metadata accessor for BeaconEstimatedLocation);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v52 = v24;
    v27 = v26;
    v53 = swift_slowAlloc();
    v60 = v53;
    *v27 = 141559811;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_1000D2A70(v22, v20, &qword_1016A2490, &unk_1013B3200);

    v28 = v4;
    v29 = *(v4 + 32);
    v51 = v25;
    v30 = v6;
    v31 = v54;
    v29(v6, v20, v54);
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v28 + 8))(v30, v31);
    sub_10000B3A8(v22, &qword_1016A2490, &unk_1013B3200);
    v35 = sub_1000136BC(v32, v34, &v60);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2160;
    *(v27 + 24) = 1752392040;
    *(v27 + 32) = 2081;
    v36 = v55;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    sub_1004E4A04(v16, type metadata accessor for BeaconEstimatedLocation);
    v40 = sub_1000136BC(v37, v39, &v60);

    *(v27 + 34) = v40;
    *(v27 + 42) = 2049;
    v41 = *&v56[v36[7]];
    sub_1004E4A04(v56, type metadata accessor for BeaconEstimatedLocation);
    *(v27 + 44) = v41;
    *(v27 + 52) = 2049;
    v42 = *&v57[v36[8]];
    sub_1004E4A04(v57, type metadata accessor for BeaconEstimatedLocation);
    *(v27 + 54) = v42;
    *(v27 + 62) = 2050;
    v43 = *&v58[v36[9]];
    sub_1004E4A04(v58, type metadata accessor for BeaconEstimatedLocation);
    *(v27 + 64) = v43;
    *(v27 + 72) = 2082;
    type metadata accessor for Date();
    sub_1004DB51C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v44 = v59;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    sub_1004E4A04(v44, type metadata accessor for BeaconEstimatedLocation);
    v48 = sub_1000136BC(v45, v47, &v60);

    *(v27 + 74) = v48;
    v49 = v52;
    _os_log_impl(&_mh_execute_header, v52, v51, "Filtering the following latest location for beacon %{private,mask.hash}s, locationUUID: %{private,mask.hash}s, lat: %{private}f, long: %{private}f, accuracy: %{public}f, timestamp: %{public}s.", v27, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004E4A04(v59, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v58, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v57, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v56, type metadata accessor for BeaconEstimatedLocation);
    sub_1004E4A04(v16, type metadata accessor for BeaconEstimatedLocation);
    sub_10000B3A8(v22, &qword_1016A2490, &unk_1013B3200);
  }
}

uint64_t sub_1004BC8CC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1004BC95C;

  return daemon.getter();
}

uint64_t sub_1004BC95C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_1004BCB38;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004BCB38(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v1;

  if (v1)
  {
    v5 = sub_1004BD0E4;
    v6 = 0;
  }

  else
  {

    v5 = sub_1004BCC70;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1004BCC70()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1004BCD80;
  v2 = v0[7];

  return (v4)(v0 + 2, &unk_10139D750, v2, sub_100853598, 0);
}

uint64_t sub_1004BCD80()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1004BCF20;
  }

  else
  {
    v4 = sub_1004BCEC0;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004BCEC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004BCF3C()
{

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error publishing locations to FindMy service when the app is foregrounded: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004BD0E4()
{

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error publishing locations to FindMy service when the app is foregrounded: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004BD28C(uint64_t a1, uint64_t a2)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v4 = sub_1010741C0(v12);

  My = type metadata accessor for Feature.FindMy();
  *(&v13 + 1) = My;
  *&v14 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_1000280DC(&v12);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v12);
  *&v12 = v4;
  BYTE8(v12) = 0;
  *&v13 = &off_1016091A8;
  BYTE8(v13) = 0;
  v14 = 0uLL;
  *&v15 = _swiftEmptyArrayStorage;
  BYTE8(v15) = My & 1;
  v16 = 0uLL;
  v17 = 1;
  v11 = 1;
  v10[2] = 0uLL;
  v10[3] = v15;
  v10[4] = 0uLL;
  v10[0] = v12;
  v10[1] = v13;
  sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v7 + 56) = type metadata accessor for SharedBeaconRecord(0);
  *(v7 + 64) = sub_1004DB51C(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v8 = sub_1000280DC((v7 + 32));
  sub_1004E46C0(a2, v8, type metadata accessor for SharedBeaconRecord);
  sub_1004D814C(v7, v10, a1);

  return sub_1001119F4(&v12);
}

uint64_t sub_1004BD4F4(char a1, uint64_t a2, double a3, double a4)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v8 = sub_1010741C0(v17);

  My = type metadata accessor for Feature.FindMy();
  *(&v18 + 1) = My;
  *&v19 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v10 = sub_1000280DC(&v17);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v17);
  *&v17 = v8;
  BYTE8(v17) = 0;
  *&v18 = &off_1016091D0;
  BYTE8(v18) = a1;
  v19 = 0uLL;
  *&v20 = _swiftEmptyArrayStorage;
  BYTE8(v20) = My & 1;
  v21 = 0uLL;
  v22 = 1;
  v16 = 1;
  v15[2] = 0uLL;
  v15[3] = v20;
  v15[4] = 0uLL;
  v15[0] = v17;
  v15[1] = v18;
  v11 = sub_100AA5F10();
  v12 = sub_1000257D0(v11);

  v13 = sub_100908168(_swiftEmptyArrayStorage);
  sub_1004D7164(v12, v15, 1, v13, a2, a3, a4);

  return sub_1001119F4(&v17);
}

uint64_t sub_1004BD718(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 376) = a4;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  v8 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 + 64);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 192) = v10;
  *(v6 + 200) = *(v10 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1004BD9B4, 0, 0);
}

uint64_t sub_1004BD9B4()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = *(v0[8] + 280);
    type metadata accessor for BeaconStoreActor();
    v3 = swift_allocObject();
    v0[28] = v3;
    v4 = v1;

    swift_defaultActor_initialize();
    v3[14] = 0xD000000000000010;
    v3[15] = 0x800000010134A8C0;
    v3[16] = v2;
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_1004BDC58;

    return daemon.getter();
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AE28);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing XPC connection for sending delegated location updates to listeners", v9, 2u);
    }

    sub_1003FD838();
    swift_allocError();
    *v10 = 7;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1004BDC58(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 240) = a1;

  v3 = swift_task_alloc();
  *(v2 + 248) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&unk_1016B10C0, type metadata accessor for DelegatedBeaconPayloadPublisher, &unk_10138B158);
  *v3 = v9;
  v3[1] = sub_1004BDE34;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004BDE34(uint64_t a1)
{
  *(*v2 + 256) = a1;

  if (v1)
  {

    v3 = sub_1004BF5B4;
  }

  else
  {

    v3 = sub_1004BDF84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004BDF84()
{
  v46 = v0;
  if (*(v0 + 376) == 1)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177AE28);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 32);
      v5 = *(v0 + 40);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v45 = v8;
      *v7 = 136446210;
      v9 = v5 == 0;
      if (v5)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0x6E776F6E6B6E75;
      }

      if (v9)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = v1;
      }

      v12 = sub_1000136BC(v10, v11, &v45);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Subscribing delegation location updates for context: %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v13 = *(v0 + 56);
    sub_1004AB878(v13, *(v0 + 32), *(v0 + 40), *(v0 + 48), 1);

    v44 = 0;
    goto LABEL_28;
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 40);
  v15 = type metadata accessor for Logger();
  *(v0 + 264) = sub_1000076D4(v15, qword_10177AE28);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v20 = 136446210;
    v22 = v18 == 0;
    if (v18)
    {
      v23 = v19;
    }

    else
    {
      v23 = 0x6E776F6E6B6E75;
    }

    if (v22)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v24 = v14;
    }

    v25 = sub_1000136BC(v23, v24, &v45);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "One time API to return the delegated location timestamp for %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v26 = *(v0 + 48);
  static Date.distantPast.getter();
  v27 = *(v26 + 16);
  *(v0 + 272) = v27;
  if (!v27)
  {
    v36 = *(v0 + 216);
    v37 = *(v0 + 192);
    v38 = *(v0 + 200);
    v39 = *(v0 + 56);
    v40 = objc_allocWithZone(SPDelegatedLocationResult);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v40 initWithTimestamp:isa];

    (*(v38 + 8))(v36, v37);
LABEL_28:

    v42 = *(v0 + 8);

    return v42(v44);
  }

  v28 = *(v0 + 224);
  v29 = *(v0 + 48);
  v30 = *(v0 + 160);
  v31 = *(v0 + 168);
  v32 = *(v31 + 80);
  *(v0 + 368) = v32;
  *(v0 + 280) = *(v31 + 72);
  v33 = *(v31 + 16);
  *(v0 + 288) = v33;
  *(v0 + 296) = 0;
  v34 = *(v0 + 184);
  v35 = *(v0 + 136);
  *(v0 + 304) = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v34, v29 + ((v32 + 32) & ~v32), v30);
  v33(v35, v34, v30);
  (*(v31 + 56))(v35, 0, 1, v30);

  return _swift_task_switch(sub_1004BE4D4, v28, 0);
}

uint64_t sub_1004BE4D4()
{
  v1 = v0[28];
  v2 = v0[16];
  v4 = v0[14];
  v3 = v0[15];
  sub_1000D2A70(v0[17], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[39] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[40] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_1004BE650;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2D0C, v7, v9);
}

uint64_t sub_1004BE650()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_1004BE77C, v1, 0);
}

uint64_t sub_1004BE77C()
{
  sub_10000B3A8(v0[17], &qword_1016980D0, &unk_10138F3B0);
  v0[41] = v0[2];

  return _swift_task_switch(sub_1004BE7FC, 0, 0);
}

uint64_t sub_1004BE7FC()
{
  v49 = v0;
  v1 = *(v0 + 328);
  if (*(v1 + 16))
  {
    v2 = *(*(v0 + 96) + 80);
    sub_1004E46C0(v1 + ((v2 + 32) & ~v2), *(v0 + 152), type metadata accessor for OwnerSharingCircle);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_1000D2A70(v4, v5, &unk_1016AFA00, &qword_10138C4D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 288);
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 144), &unk_1016AFA00, &qword_10138C4D0);
    v8(v10, v9, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    v19 = *(v0 + 152);
    if (v14)
    {
      v46 = *(v0 + 184);
      v20 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v24 = *(v18 + 8);
      v24(v15, v17);
      v25 = sub_1000136BC(v21, v23, &v48);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Beacon %{private,mask.hash}s is not delegated", v20, 0x16u);
      sub_100007BAC(v45);

      sub_10000B3A8(v19, &unk_1016AFA00, &qword_10138C4D0);
      v24(v46, v17);
    }

    else
    {

      v29 = *(v18 + 8);
      v29(v15, v17);
      sub_10000B3A8(v19, &unk_1016AFA00, &qword_10138C4D0);
      v29(v16, v17);
    }

    v30 = *(v0 + 296) + 1;
    if (v30 == *(v0 + 272))
    {
      v31 = *(v0 + 216);
      v32 = *(v0 + 192);
      v33 = *(v0 + 200);
      v34 = *(v0 + 56);
      v35 = objc_allocWithZone(SPDelegatedLocationResult);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v47 = [v35 initWithTimestamp:isa];

      (*(v33 + 8))(v31, v32);

      v37 = *(v0 + 8);

      return v37(v47);
    }

    v39 = *(v0 + 288);
    v26 = *(v0 + 224);
    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 168);
    v43 = *(v0 + 136);
    v44 = *(v0 + 48) + ((*(v0 + 368) + 32) & ~*(v0 + 368)) + *(v0 + 280) * v30;
    *(v0 + 296) = v30;
    *(v0 + 304) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v40, v44, v41);
    v39(v43, v40, v41);
    (*(v42 + 56))(v43, 0, 1, v41);
    v28 = sub_1004BE4D4;
  }

  else
  {
    v26 = *(v0 + 256);
    v27 = *(v0 + 88);
    sub_10002AAA4(*(v0 + 144), *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    *(v0 + 372) = *(v27 + 20);
    v28 = sub_1004BED3C;
  }

  return _swift_task_switch(v28, v26, 0);
}

uint64_t sub_1004BED3C()
{
  v1 = *(*(v0 + 256) + 144);
  *(v0 + 336) = v1;
  return _swift_task_switch(sub_1004BED60, v1, 0);
}

uint64_t sub_1004BED60()
{

  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1004BEE40;
  v3 = *(v0 + 336);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1004BEE40()
{
  v1 = *(*v0 + 336);

  return _swift_task_switch(sub_1004BEF58, v1, 0);
}

uint64_t sub_1004BEF58()
{
  v1 = *(v0 + 372);
  v2 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_1004BF008;
  v4 = *(v0 + 80);

  return sub_1012DAFE0(v4, v2 + v1);
}

uint64_t sub_1004BF008()
{

  return _swift_task_switch(sub_1004BF120, 0, 0);
}

uint64_t sub_1004BF120()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  sub_1000D2A70(*(v0 + 80), v3, &unk_101696900, &unk_10138B1E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(*(v0 + 72), &unk_101696900, &unk_10138B1E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 184);
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    if (v6)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Delegated publish hasn't happened on this device yet", v13, 2u);
    }

    sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
    sub_1004E4A04(v11, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    v14 = *(v0 + 200);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = *(v0 + 104);
    v19 = *(v0 + 80);
    v41 = *(v14 + 32);
    v42 = *(v0 + 184);
    v41(*(v0 + 208), *(v0 + 72), *(v0 + 192));
    v20 = static Date.> infix(_:_:)();
    sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
    sub_1004E4A04(v18, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v17, &unk_1016AFA00, &qword_10138C4D0);
    (*(v15 + 8))(v42, v16);
    v21 = *(v14 + 8);
    if (v20)
    {
      v22 = *(v0 + 208);
      v23 = *(v0 + 216);
      v24 = *(v0 + 192);
      v21(v23, v24);
      v41(v23, v22, v24);
    }

    else
    {
      v21(*(v0 + 208), *(v0 + 192));
    }
  }

  v25 = *(v0 + 296) + 1;
  if (v25 == *(v0 + 272))
  {
    v26 = *(v0 + 216);
    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 56);
    v30 = objc_allocWithZone(SPDelegatedLocationResult);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v43 = [v30 initWithTimestamp:isa];

    (*(v28 + 8))(v26, v27);

    v32 = *(v0 + 8);

    return v32(v43);
  }

  else
  {
    v34 = *(v0 + 288);
    v35 = *(v0 + 224);
    v36 = *(v0 + 184);
    v37 = *(v0 + 160);
    v38 = *(v0 + 168);
    v39 = *(v0 + 136);
    v40 = *(v0 + 48) + ((*(v0 + 368) + 32) & ~*(v0 + 368)) + *(v0 + 280) * v25;
    *(v0 + 296) = v25;
    *(v0 + 304) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v36, v40, v37);
    v34(v39, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);

    return _swift_task_switch(sub_1004BE4D4, v35, 0);
  }
}

uint64_t sub_1004BF5B4()
{
  v1 = *(v0 + 56);
  sub_1003FD838();
  swift_allocError();
  *v2 = 7;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004BF6E4(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v30 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v30);
  v29[1] = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v10);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v2;
  v13 = *(v2 + 280);
  sub_10001F280(a2, v39);
  v14 = qword_101694920;
  v32 = v13;

  if (v14 != -1)
  {
    swift_once();
  }

  v29[0] = qword_10177B2E8;

  v31 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);

  static DispatchQoS.unspecified.getter();
  *&v35 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v10[10];
  type metadata accessor for DeviceIdentityUtility(0);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  v17 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *(v16 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v16 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v16 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v12 + v15) = v16;
  v19 = v10[11];
  v20 = type metadata accessor for BeaconObservationStore(0);
  v37 = &off_101632E88;
  v38 = &off_101613BE0;
  v36 = v20;
  v21 = v29[0];
  *&v35 = v29[0];
  type metadata accessor for MemberCircleRevokeManager();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v35, (v22 + 32));
  *(v12 + v19) = v22;
  v23 = v10[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v12 + v23) = swift_allocObject();
  *v12 = v32;
  sub_10001F280(v39, (v12 + 3));
  v24 = v10[8];

  sub_1005CB7C8(v39, v12 + v24);
  sub_100007BAC(v39);
  v12[1] = v21;
  *(v12 + v10[9]) = v31;
  *(v22 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v34;
  *(v26 + 24) = v25;

  sub_10088FFE4(v27, sub_1004E2F30, v26);

  sub_1004E4A04(v12, type metadata accessor for LocationFetcher);
}

void sub_1004BFC48(uint64_t a1, uint64_t a2, NSObject *a3, char *a4, char *a5)
{
  v71 = a5;
  v74 = a4;
  v75 = a3;
  v78 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v78);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v70 = &v70 - v10;
  __chkstk_darwin(v9);
  v13 = &v70 - v12;
  v14 = *(a2 + 16);
  v77 = v11;
  v72 = a2;
  if (v14)
  {
    v15 = a2 + 32;
    v16 = (v11 + 8);
    v17 = _swiftEmptyArrayStorage;
    v18 = v14;
    v76 = v14;
    while (1)
    {
      sub_10001F280(v15, &v82);
      v20 = v83;
      v19 = v84;
      sub_1000035D0(&v82, v83);
      (*(*(*(v19 + 8) + 8) + 32))(v20);
      if (!*(a1 + 16))
      {
        break;
      }

      sub_1000210EC(v13);
      v22 = v21;
      (*v16)(v13, v78);
      if ((v22 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_100007BAC(&v82);
LABEL_4:
      v15 += 40;
      if (!--v18)
      {
        goto LABEL_15;
      }
    }

    (*v16)(v13, v78);
LABEL_9:
    sub_10000A748(&v82, v79);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85[0] = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100025B1C(0, v17[2] + 1, 1);
      v17 = v85[0];
    }

    v25 = v17[2];
    v24 = v17[3];
    if (v25 >= v24 >> 1)
    {
      sub_100025B1C((v24 > 1), v25 + 1, 1);
    }

    v26 = v80;
    v27 = v81;
    v28 = sub_10015049C(v79, v80);
    __chkstk_darwin(v28);
    v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v30);
    sub_1006252D4(v25, v30, v85, v26, v27);
    sub_100007BAC(v79);
    v17 = v85[0];
    v14 = v76;
    goto LABEL_4;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_15:
  v32 = v17[2];
  if (v32)
  {
    v33 = 0;
    v34 = (v17 + 4);
    v35 = _swiftEmptyArrayStorage;
    while (v33 < v17[2])
    {
      sub_10001F280(v34, &v82);
      v36 = v83;
      v37 = v84;
      sub_1000035D0(&v82, v83);
      if ((*(v37 + 112))(v36, v37))
      {
        sub_10000A748(&v82, v79);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = v35;
        if ((v38 & 1) == 0)
        {
          sub_100025B1C(0, *(v35 + 2) + 1, 1);
          v35 = v85[0];
        }

        v40 = *(v35 + 2);
        v39 = *(v35 + 3);
        if (v40 >= v39 >> 1)
        {
          sub_100025B1C((v39 > 1), v40 + 1, 1);
        }

        v41 = v80;
        v42 = v81;
        v43 = sub_10015049C(v79, v80);
        __chkstk_darwin(v43);
        v45 = &v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v46 + 16))(v45);
        sub_1006252D4(v40, v45, v85, v41, v42);
        sub_100007BAC(v79);
        v35 = v85[0];
      }

      else
      {
        sub_100007BAC(&v82);
      }

      ++v33;
      v34 += 40;
      if (v32 == v33)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_27:

    v47 = *(v35 + 2);
    v48 = _swiftEmptyArrayStorage;
    if (v47)
    {
      v79[0] = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v47, 0);
      v48 = v79[0];
      v49 = (v35 + 32);
      v50 = v70;
      do
      {
        sub_10001F280(v49, &v82);
        v52 = v83;
        v51 = v84;
        sub_1000035D0(&v82, v83);
        (*(*(*(v51 + 8) + 8) + 32))(v52);
        sub_100007BAC(&v82);
        v79[0] = v48;
        v54 = v48[2];
        v53 = v48[3];
        if (v54 >= v53 >> 1)
        {
          sub_101123D4C((v53 > 1), v54 + 1, 1);
          v48 = v79[0];
        }

        v48[2] = v54 + 1;
        (*(v77 + 32))(v48 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v54, v50, v78);
        v49 += 40;
        --v47;
      }

      while (v47);
    }

    v55 = sub_10000954C(v48);

    v56 = v75;
    v57 = v77;
    if (*(v35 + 2))
    {
      v58 = type metadata accessor for Transaction();
      __chkstk_darwin(v58);
      v59 = v74;
      *(&v70 - 6) = v56;
      *(&v70 - 5) = v59;
      v60 = v71;
      *(&v70 - 4) = v35;
      *(&v70 - 3) = v60;
      *(&v70 - 2) = v55;
      static Transaction.named<A>(_:with:)();
    }

    v61 = _swiftEmptyArrayStorage;
    if (v14)
    {
      v79[0] = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v14, 0);
      v61 = v79[0];
      v62 = v73;
      v63 = v72 + 32;
      do
      {
        sub_10001F280(v63, &v82);
        v65 = v83;
        v64 = v84;
        sub_1000035D0(&v82, v83);
        (*(*(*(v64 + 8) + 8) + 32))(v65);
        sub_100007BAC(&v82);
        v79[0] = v61;
        v67 = v61[2];
        v66 = v61[3];
        if (v67 >= v66 >> 1)
        {
          sub_101123D4C((v66 > 1), v67 + 1, 1);
          v61 = v79[0];
        }

        v61[2] = v67 + 1;
        (*(v57 + 32))(v61 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v67, v62, v78);
        v63 += 40;
        --v14;
      }

      while (v14);
      v56 = v75;
    }

    v68 = sub_10000954C(v61);

    if (*(v55 + 16) <= v68[2] >> 3)
    {
      *&v82 = v68;
      sub_10087D5B4(v55);

      v69 = v82;
    }

    else
    {
      v69 = sub_100610BC8(v55, v68);
    }

    sub_100A4165C(v69);

    if (v56)
    {
      dispatch_group_leave(v56);
    }
  }
}

uint64_t sub_1004C0458(uint64_t a1, dispatch_group_t group, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (group)
  {
    dispatch_group_enter(group);
  }

  v12 = group;

  sub_1004DBB74(a4, a5, a3, group, a1, a3, a6);
}

void sub_1004C0514(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Transaction.capture()();
  sub_100A4165C(a5);
  if (a2)
  {

    dispatch_group_leave(a2);
  }
}

uint64_t sub_1004C0580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v42 = a5;
  v38 = a4;
  v39 = a1;
  v36 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v36);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v15);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a2 + 280);
  sub_10001F280(a3, v47);
  v19 = qword_101694920;
  v37 = v18;

  if (v19 != -1)
  {
    swift_once();
  }

  v34 = qword_10177B2E8;
  v33 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  swift_retain_n();
  static DispatchQoS.unspecified.getter();
  *&v43 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v15[10];
  type metadata accessor for DeviceIdentityUtility(0);
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  v22 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v21 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v21 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v17 + v20) = v21;
  v24 = v15[11];
  v25 = type metadata accessor for BeaconObservationStore(0);
  v45 = &off_101632E88;
  v46 = &off_101613BE0;
  v44 = v25;
  v26 = v34;
  *&v43 = v34;
  type metadata accessor for MemberCircleRevokeManager();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v43, (v27 + 32));
  *(v17 + v24) = v27;
  v28 = v15[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v17 + v28) = swift_allocObject();
  *v17 = v37;
  sub_10001F280(v47, (v17 + 3));
  v29 = v15[8];

  sub_1005CB7C8(v47, v17 + v29);
  sub_100007BAC(v47);
  v17[1] = v26;
  *(v17 + v15[9]) = v38;
  *(v27 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v30 = swift_allocObject();
  v31 = v40;
  v30[2] = v39;
  v30[3] = v31;
  v30[4] = v41;

  sub_10088FFE4(v42, sub_1004E2E94, v30);

  return sub_1004E4A04(v17, type metadata accessor for LocationFetcher);
}

uint64_t sub_1004C0B14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v62 = a3;
  v54 = a2;
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v59);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v61);
  v56 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v15;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138C0D0;
  v17 = SPBeaconTypeDurian;
  v18 = SPBeaconTypeAccessory;
  *(v16 + 32) = SPBeaconTypeDurian;
  *(v16 + 40) = v18;
  v19 = SPBeaconTypeHele;
  v20 = SPBeaconTypeSelfBeaconing;
  *(v16 + 48) = SPBeaconTypeHele;
  *(v16 + 56) = v20;
  v21 = SPBeaconTypeVirtualMeDevice;
  *(v16 + 64) = SPBeaconTypeVirtualMeDevice;
  v22 = qword_101694940;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v60 = v5;
  v28 = sub_1010741C0(v65);

  My = type metadata accessor for Feature.FindMy();
  v66 = My;
  v67 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v30 = sub_1000280DC(&v65);
  (*(*(My - 8) + 104))(v30, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v65);
  v74 = 1;
  v31 = *(v54 + 280);
  v70 = &_s13DefaultPolicyVN;
  v71 = sub_100111A48();
  v32 = swift_allocObject();
  *&v69 = v32;
  *(v32 + 16) = v28;
  *(v32 + 24) = 0;
  *(v32 + 25) = *v75;
  *(v32 + 28) = *&v75[3];
  *(v32 + 32) = &off_101609220;
  *(v32 + 40) = 0;
  *(v32 + 41) = v73[0];
  *(v32 + 44) = *(v73 + 3);
  v33 = v52;
  *(v32 + 48) = v53;
  *(v32 + 56) = v33;
  *(v32 + 64) = v16;
  *(v32 + 72) = My & 1;
  LODWORD(v33) = *v72;
  *(v32 + 76) = *&v72[3];
  *(v32 + 73) = v33;
  *(v32 + 80) = 0;
  *(v32 + 88) = 0;
  *(v32 + 96) = v74;
  v34 = qword_101694920;
  v54 = v31;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_10177B2E8;

  v53 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v55);

  static DispatchQoS.unspecified.getter();
  *&v65 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v37 = v56;
  v56[2] = v36;
  v38 = v61;
  v39 = *(v61 + 40);
  type metadata accessor for DeviceIdentityUtility(0);
  v40 = swift_allocObject();
  swift_defaultActor_initialize();
  v41 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
  *(v40 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v40 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v40 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v37 + v39) = v40;
  v43 = v38[11];
  v44 = type metadata accessor for BeaconObservationStore(0);
  v67 = &off_101632E88;
  v68 = &off_101613BE0;
  v66 = v44;
  *&v65 = v35;
  type metadata accessor for MemberCircleRevokeManager();
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v65, (v45 + 32));
  *(v37 + v43) = v45;
  v46 = v38[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v37 + v46) = swift_allocObject();
  *v37 = v54;
  sub_10001F280(&v69, (v37 + 3));
  v47 = v38[8];

  sub_1005CB7C8(&v69, v37 + v47);
  sub_100007BAC(&v69);
  v37[1] = v35;
  *(v37 + v38[9]) = v53;
  *(v45 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  sub_100025020(v62, &v69);
  if (v70)
  {
    sub_10000A748(&v69, &v65);
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_101385D80;
    sub_10001F280(&v65, v48 + 32);
    v49 = v64;

    sub_100626E1C(v48, v37, v63, v49);

    sub_100007BAC(&v65);
  }

  else
  {
    sub_10000B3A8(&v69, &qword_101696920, &unk_10138B200);
    v63(_swiftEmptyArrayStorage);
  }

  return sub_1004E4A04(v37, type metadata accessor for LocationFetcher);
}

uint64_t sub_1004C13B0(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v5 = type metadata accessor for RawSearchResult(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconEstimatedLocation(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_101135034();
  if (v13)
  {
    if (*(v13 + 16))
    {
      sub_1004E46C0(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v12, type metadata accessor for BeaconEstimatedLocation);

      v14 = *&v12[*(v9 + 52)];

      sub_1004E4A04(v12, type metadata accessor for BeaconEstimatedLocation);
      if (v14)
      {
        v15 = v14[2];
        if (v15)
        {
          goto LABEL_5;
        }

LABEL_10:

        a2(_swiftEmptyArrayStorage);
      }
    }

    else
    {
    }
  }

  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  v28[1] = a3;
  v29 = a2;
  v30 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v16 = *(v6 + 80);
  v28[0] = v14;
  v17 = v14 + ((v16 + 32) & ~v16);
  v18 = *(v6 + 72);
  do
  {
    sub_1004E46C0(v17, v8, type metadata accessor for RawSearchResult);
    v19 = *v8;
    v20 = *&v8[v5[6]];
    v21 = *&v8[v5[7]];
    v22 = *&v8[v5[8]];
    v23 = objc_allocWithZone(SPRawSearchResult);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = Data._bridgeToObjectiveC()().super.isa;
    v26 = Date._bridgeToObjectiveC()().super.isa;
    [v23 initWithHashedPublicKey:isa publicKey:v25 status:v19 timestamp:v26 latitude:v20 longitude:v21 horizontalAccuracy:{v22, v28[0]}];

    sub_1004E4A04(v8, type metadata accessor for RawSearchResult);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v17 += v18;
    --v15;
  }

  while (v15);

  v29(v30);
}

uint64_t sub_1004C1710(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v16 = a1[3];
  v15 = a1[4];
  sub_1000035D0(a1, v16);
  (*(v15 + 8))(v16, v15);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(type metadata accessor for OwnedBeaconRecord(0) + 28);
  v18 = *(v7 + 56);
  sub_1000D2A70(v14, v9, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v28 + v17, &v9[v18], &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    v21 = v27;
    sub_1000D2A70(v9, v27, &qword_1016980D0, &unk_10138F3B0);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v22 = v26;
      (*(v4 + 32))(v26, &v9[v18], v3);
      sub_1004DB51C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
      v23(v21, v3);
      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      return v20 & 1;
    }

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v21, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v9, &qword_1016AF880, &unk_10138CE20);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1004C1B28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v41 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v42 = v12;
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = *(a2 + 280);
  sub_1004E46C0(a4, &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v40 = swift_allocObject();
  sub_10002AAA4(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v18, type metadata accessor for OwnedBeaconRecord);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;

  v20 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = 0x65736C6166;
  *(v22 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Modify record. Disk First? (%@)", 31, 2, v22);

  v23 = objc_autoreleasePoolPush();
  v24 = a3;
  sub_1011218E0(a3);
  v26 = v25;
  v38 = v25;
  objc_autoreleasePoolPop(v23);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v37 = type metadata accessor for OwnedBeaconGroup;
  sub_1004E46C0(v24, v13, type metadata accessor for OwnedBeaconGroup);
  v39 = v17;
  v27 = v42;
  v28 = *(v41 + 80);
  v29 = swift_allocObject();
  v30 = v40;
  *(v29 + 16) = sub_1004E4608;
  *(v29 + 24) = v30;
  v41 = type metadata accessor for OwnedBeaconGroup;
  sub_10002AAA4(v13, v29 + ((v28 + 32) & ~v28), type metadata accessor for OwnedBeaconGroup);

  sub_100FDCA40(v26, sub_1001DA038, v29);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_1004E4678;
  *(v31 + 24) = v19;

  Future.addFailure(block:)();

  sub_1004E46C0(v24, v13, v37);
  v32 = (v28 + 16) & ~v28;
  v33 = (v27 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_10002AAA4(v13, v34 + v32, v41);
  *(v34 + v33) = v39;
  v35 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_1004E4678;
  v35[1] = v19;

  Future.addSuccess(block:)();
}

uint64_t sub_1004C2028(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) + 40);
  v5 = *(a1 + v4);
  v8[2] = a2;
  v6 = sub_1004D68CC(sub_1004E4680, v8, v5);

  *(a1 + v4) = v6;
  return result;
}

uint64_t sub_1004C20AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v38[-v7];
  v48 = type metadata accessor for UUID();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v11 - 8);
  v13 = &v38[-v12];
  v14 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v38[-v18];
  sub_1004E46C0(a1, &v38[-v18], type metadata accessor for OwnedBeaconGroup.PairingState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1004E46C0(a1, a3, type metadata accessor for OwnedBeaconGroup.PairingState);
    return sub_1004E4A04(v19, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v44 = a3;
  v45 = v3;
  v20 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
  v21 = v20[12];
  sub_100006654(*&v19[v20[16]], *&v19[v20[16] + 8]);
  v22 = &v19[v20[24]];
  v23 = *v22;
  v40 = v22[1];
  v41 = v23;
  v39 = v22[2];
  sub_1000D2AD8(&v19[v21], v13, &qword_1016A40D0, &unk_10138BE70);
  v42 = a1;
  sub_1004E46C0(a1, v17, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v20[12];
    sub_100006654(*&v17[v20[16]], *&v17[v20[16] + 8]);
    v26 = v48;
    (*(v9 + 32))(v8, v17, v48);
    (*(v9 + 56))(v8, 0, 1, v26);
    sub_10000B3A8(&v17[v25], &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    v26 = v48;
    (*(v9 + 56))(v8, 1, 1, v48);
    sub_1004E4A04(v17, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v28 = (*(v9 + 48))(v8, 1, v26);
  v29 = v44;
  if (v28 == 1)
  {
    sub_10000B3A8(v43, &qword_1016A40D0, &unk_10138BE70);
    v30 = &qword_1016980D0;
    v31 = &unk_10138F3B0;
    v32 = v8;
  }

  else
  {
    v33 = v46;
    (*(v9 + 32))(v46, v8, v26);
    type metadata accessor for OwnedBeaconRecord(0);
    v34 = static UUID.== infix(_:_:)();
    v35 = *(v9 + 8);
    v35(v33, v26);
    if (v34)
    {
      v36 = (v29 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      sub_1000D2AD8(v43, v29, &qword_1016A40D0, &unk_10138BE70);
      v37 = v40;
      *v36 = v41;
      v36[1] = v37;
      v36[2] = v39;
      swift_storeEnumTagMultiPayload();
      return (v35)(v19, v26);
    }

    v30 = &qword_1016A40D0;
    v31 = &unk_10138BE70;
    v32 = v43;
  }

  sub_10000B3A8(v32, v30, v31);
  sub_1004E46C0(v42, v29, type metadata accessor for OwnedBeaconGroup.PairingState);
  return (*(v9 + 8))(v19, v26);
}

uint64_t sub_1004C25E4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v7);
  v9 = (v24 - v8);
  sub_1000D2A70(a1, v24 - v8, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    v24[1] = v10;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Unable to modify existing group. Error %@", 41, 2, v13);

    swift_errorRetain();
    a2(v10);
  }

  else
  {
    sub_10002AAA4(v9, v6, type metadata accessor for OwnedBeaconGroup);
    v18 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Successfully modified existing group: %@", 40, 2, v20);

    a2(0);
    return sub_1004E4A04(v6, type metadata accessor for OwnedBeaconGroup);
  }
}

void sub_1004C29A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = __chkstk_darwin(v6);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v44 - v9;
  v10 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for BeaconProductInfoRecord(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1000322C8() & 1) == 0)
  {
    v18 = sub_100D5F668();
    if (v19 >> 60 == 15)
    {
      v20 = 0;
      goto LABEL_24;
    }

    v48 = a3;
    v49 = v3;
    goto LABEL_10;
  }

  v48 = a3;
  v17 = sub_100E0EA64(*(a1 + v6[16]), *(a1 + v6[17]));
  v18 = sub_100D5F668();
  v49 = v3;
  if (v19 >> 60 == 15)
  {
    if (v17)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (v17)
  {
LABEL_10:
    v21 = v18;
    v22 = v19;
    v23 = sub_100DE6748(v18, v19);
    sub_100006654(v21, v22);
    if (!v23)
    {
LABEL_22:
      v20 = 0;
LABEL_23:
      a3 = v48;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  sub_100006654(v18, v19);
LABEL_11:
  v24 = *(v47 + 280);
  sub_100AC1584(a1 + v6[5], v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016AF8C0, &unk_1013A07A0);
    if (qword_101694768 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177ADF8);
    v26 = v46;
    sub_1004E46C0(a1, v46, type metadata accessor for OwnedBeaconRecord);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v29 = 136315651;
      *(v29 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101357720, &v50);
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      type metadata accessor for UUID();
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1004E4A04(v26, type metadata accessor for OwnedBeaconRecord);
      v33 = sub_1000136BC(v30, v32, &v50);

      *(v29 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - Missing product info for beacon %{private,mask.hash}s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004E4A04(v26, type metadata accessor for OwnedBeaconRecord);
    }

    goto LABEL_22;
  }

  sub_10002AAA4(v12, v16, type metadata accessor for BeaconProductInfoRecord);
  if ((v16[*(v13 + 36)] & 1) == 0)
  {
    v20 = sub_10003EB74(a1, v24);
    sub_1004E4A04(v16, type metadata accessor for BeaconProductInfoRecord);
    goto LABEL_23;
  }

  a3 = v48;
  if (qword_101694768 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177ADF8);
  v35 = a1;
  v36 = v45;
  sub_1004E46C0(v35, v45, type metadata accessor for OwnedBeaconRecord);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v39 = 136315651;
    *(v39 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101357720, &v50);
    *(v39 + 12) = 2160;
    *(v39 + 14) = 1752392040;
    *(v39 + 22) = 2081;
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_1004E4A04(v36, type metadata accessor for OwnedBeaconRecord);
    v43 = sub_1000136BC(v40, v42, &v50);

    *(v39 + 24) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "%s - Hidden beacon %{private,mask.hash}s", v39, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004E4A04(v36, type metadata accessor for OwnedBeaconRecord);
  }

  sub_1004E4A04(v16, type metadata accessor for BeaconProductInfoRecord);
  v20 = 0;
LABEL_24:
  *a3 = v20;
}

uint64_t sub_1004C30EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v43 = v13;
  v44 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177A548);
  v40 = *(v11 + 16);
  v41 = v11 + 16;
  v40(v15, a2, v10);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v11;
    v20 = v19;
    v37 = swift_slowAlloc();
    v38 = a2;
    v47[0] = v37;
    *v20 = 16777987;
    *(v20 + 4) = v42;
    *(v20 + 5) = 2160;
    *(v20 + 7) = 1752392040;
    *(v20 + 15) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v9;
    v23 = a3;
    v24 = a4;
    v26 = v25;
    (*(v39 + 8))(v15, v10);
    v27 = sub_1000136BC(v21, v26, v47);
    a4 = v24;
    a3 = v23;
    v9 = v22;

    *(v20 + 17) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "        OwnerSessionProtocol: updateBatteryStatus %hhu for beacon %{private,mask.hash}s.", v20, 0x19u);
    sub_100007BAC(v37);
    a2 = v38;

    v11 = v39;
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  sub_100025020(a2, &v45);
  if (!v46)
  {
    sub_10000B3A8(&v45, &qword_101696920, &unk_10138B200);
LABEL_12:
    v30 = sub_1012C7A94(v42);
    if (v30 == 7)
    {
      v29 = 0;
    }

    else
    {
      v29 = v30;
    }

    goto LABEL_15;
  }

  sub_10000A748(&v45, v47);
  v28 = sub_1012BDEE0(v47);
  sub_100007BAC(v47);
  if (v28 > 1u)
  {
    if (v28 == 2)
    {
      v29 = 4;
      goto LABEL_15;
    }

    if (v28 == 3)
    {
      v29 = 5;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v28)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

LABEL_15:
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  v32 = v44;
  v40(v44, a2, v10);
  v33 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v34 = v33 + v43;
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = a3;
  *(v35 + 5) = a4;
  (*(v11 + 32))(&v35[v33], v32, v10);
  v35[v34] = v29;

  sub_10025EDD4(0, 0, v9, &unk_1013AB078, v35);
}

uint64_t sub_1004C35C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 104) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 32) = a4;
  v8 = swift_task_alloc();
  *(v7 + 56) = v8;
  *v8 = v7;
  v8[1] = sub_1004C3660;

  return daemon.getter();
}

uint64_t sub_1004C3660(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BatteryLevelService();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&qword_1016A24B8, type metadata accessor for BatteryLevelService, &unk_1013F9320);
  *v3 = v9;
  v3[1] = sub_1004C383C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004C383C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1004C39FC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 88) = v5;
    *v5 = v4;
    v5[1] = sub_1004C3AF4;
    v6 = *(v3 + 104);
    v7 = *(v3 + 48);

    return sub_10103DADC(v7, v6);
  }
}

uint64_t sub_1004C39FC()
{
  v1 = v0[4];
  type metadata accessor for UpdateBatteryLevelError(0);
  v0[3] = 3;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_101696288, type metadata accessor for UpdateBatteryLevelError, &unk_10138A100);
  _BridgedStoredNSError.init(_:userInfo:)();
  v2 = v0[2];
  v1(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004C3AF4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1004C3C7C;
  }

  else
  {
    v2 = sub_1004C3C08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C3C08()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C3C7C()
{
  v1 = v0[12];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004C3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for AccessoryCommand(0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[28] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[29] = v7;
  *v7 = v4;
  v7[1] = sub_1004C3F14;

  return daemon.getter();
}

uint64_t sub_1004C3F14(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[30] = a1;

  v3 = swift_task_alloc();
  v2[31] = v3;
  v4 = type metadata accessor for Daemon();
  v2[32] = v4;
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[33] = v6;
  v7 = sub_1004DB51C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1004C40F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004C40F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 272) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1004E4F78, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 280) = v5;
    *v5 = v4;
    v5[1] = sub_1004C42A0;

    return daemon.getter();
  }
}

uint64_t sub_1004C42A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 288) = a1;

  v5 = swift_task_alloc();
  *(v3 + 296) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1004C4454;
  v8 = *(v2 + 264);
  v9 = *(v2 + 256);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1004C4454(uint64_t a1)
{
  *(*v2 + 304) = a1;

  if (v1)
  {

    v4 = sub_1004E4EAC;
    v5 = 0;
  }

  else
  {

    v4 = sub_1004C45AC;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1004C45AC()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[17];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[39] = v6;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[41] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[42] = v9;
  v0[43] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);

  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_1004C4728;
  v12 = v0[27];
  v11 = v0[28];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F5C, v8, v12);
}

uint64_t sub_1004C4728()
{

  return _swift_task_switch(sub_1004C4840, 0, 0);
}

uint64_t sub_1004C4840()
{
  v49 = v0;
  v1 = v0[28];
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[28];

    sub_1004E4A04(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v11 = v0[39];
  v12 = v0[25];
  v13 = v0[17];
  v14 = v0[18];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v11(v15, v0[11], v13);
  (*(v14 + 56))(v15, 0, 1, v13);
  v11(v12, v17, v13);
  sub_1000D2A70(v15, v16, &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v14 + 48);
  if (v18(v16, 1, v13) == 1)
  {
    v19 = v0[17];
    v21 = v0[12];
    v20 = v0[13];
    UUID.init()();
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v18(v21, 1, v19) != 1)
    {
      sub_10000B3A8(v0[12], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v22 = v0[42];
    v23 = v0[24];
    v24 = v0[17];
    v25 = v0[12];
    sub_10000B3A8(v0[13], &qword_1016980D0, &unk_10138F3B0);
    v22(v23, v25, v24);
  }

  v26 = v0[42];
  v27 = v0[25];
  v29 = v0[16];
  v28 = v0[17];
  v30 = v0[14];
  v26(v29, v0[24], v28);
  v26(v29 + v30[5], v27, v28);
  v31 = v29 + v30[6];
  *v31 = 120;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = xmmword_1013AAD80;
  *(v29 + v30[7]) = v3 & 1;
  *(v29 + v30[8]) = 1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v32 = v0[15];
  v33 = v0[16];
  v34 = type metadata accessor for Logger();
  v0[45] = sub_1000076D4(v34, qword_10177B048);
  sub_1004E46C0(v33, v32, type metadata accessor for AccessoryCommand);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[15];
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v48 = v40;
    *v39 = 136315138;
    v41 = sub_1010C00BC();
    v43 = v42;
    sub_1004E4A04(v38, type metadata accessor for AccessoryCommand);
    v44 = sub_1000136BC(v41, v43, &v48);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Executing startBTFinding command: %s", v39, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    sub_1004E4A04(v38, type metadata accessor for AccessoryCommand);
  }

  v45 = swift_task_alloc();
  v0[46] = v45;
  *v45 = v0;
  v45[1] = sub_1004C4D10;
  v46 = v0[16];

  return sub_10121B780((v0 + 2), v46, 0);
}

uint64_t sub_1004C4D10()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1004C51B4;
  }

  else
  {
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v3 = sub_1004C4E3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C4E3C()
{
  v28 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  v1(*(v0 + 184), *(v0 + 88), v3);
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  if (v7)
  {
    v26 = v6;
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136446979;
    *(v12 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x8000000101357410, &v27);
    *(v12 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v8, v11);
    v17 = sub_1000136BC(v13, v15, &v27);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v16(v9, v11);
    v21 = sub_1000136BC(v18, v20, &v27);

    *(v12 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v5, v26, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s completed successfully!", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v10 + 8);
    v22(v9, v11);
    v22(v8, v11);
  }

  (*(v0 + 64))(0);

  v23 = *(v0 + 128);

  sub_1004E4A04(v23, type metadata accessor for AccessoryCommand);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1004C51B4()
{
  v35 = v0;
  v1 = v0[39];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[10];
  v1(v0[21], v0[11], v3);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v33 = v6;
    v7 = v0[21];
    v31 = v0[20];
    v9 = v0[17];
    v8 = v0[18];
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v10 = 136447235;
    *(v10 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x8000000101357410, &v34);
    *(v10 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v7, v9);
    v15 = sub_1000136BC(v11, v13, &v34);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v14(v31, v9);
    v19 = sub_1000136BC(v16, v18, &v34);

    *(v10 + 34) = v19;
    *(v10 + 42) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 44) = v20;
    *v32 = v20;
    _os_log_impl(&_mh_execute_header, v5, v33, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s failed with error: %{public}@!", v10, 0x34u);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[17];
    v24 = v0[18];

    v25 = *(v24 + 8);
    v25(v22, v23);
    v25(v21, v23);
  }

  v26 = v0[47];
  v27 = v0[8];
  swift_errorRetain();
  v27(v26);

  v28 = v0[16];

  sub_1004E4A04(v28, type metadata accessor for AccessoryCommand);

  v29 = v0[1];

  return v29();
}

uint64_t sub_1004C55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for AccessoryCommand(0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[28] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[29] = v7;
  *v7 = v4;
  v7[1] = sub_1004C57D0;

  return daemon.getter();
}

uint64_t sub_1004C57D0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[30] = a1;

  v3 = swift_task_alloc();
  v2[31] = v3;
  v4 = type metadata accessor for Daemon();
  v2[32] = v4;
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[33] = v6;
  v7 = sub_1004DB51C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1004C59B0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004C59B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 272) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1004C5B5C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 280) = v5;
    *v5 = v4;
    v5[1] = sub_1004C5D40;

    return daemon.getter();
  }
}

uint64_t sub_1004C5B5C()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to startBTFinding!", v4, 2u);
  }

  v5 = *(v0 + 64);

  sub_1003FD838();
  swift_allocError();
  *v6 = 11;
  v5();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004C5D40(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 288) = a1;

  v5 = swift_task_alloc();
  *(v3 + 296) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1004C5EF4;
  v8 = *(v2 + 264);
  v9 = *(v2 + 256);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1004C5EF4(uint64_t a1)
{
  *(*v2 + 304) = a1;

  if (v1)
  {

    v4 = sub_1004C604C;
    v5 = 0;
  }

  else
  {

    v4 = sub_1004C623C;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1004C604C()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor to startBTFinding!", v4, 2u);
  }

  v5 = *(v0 + 64);

  sub_1003FD838();
  swift_allocError();
  *v6 = 11;
  v5();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004C623C()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[17];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[39] = v6;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[41] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[42] = v9;
  v0[43] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);

  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_1004C63B8;
  v12 = v0[27];
  v11 = v0[28];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F5C, v8, v12);
}

uint64_t sub_1004C63B8()
{

  return _swift_task_switch(sub_1004C64D0, 0, 0);
}

uint64_t sub_1004C64D0()
{
  v49 = v0;
  v1 = v0[28];
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[28];

    sub_1004E4A04(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v11 = v0[39];
  v12 = v0[25];
  v13 = v0[17];
  v14 = v0[18];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v11(v15, v0[11], v13);
  (*(v14 + 56))(v15, 0, 1, v13);
  v11(v12, v17, v13);
  sub_1000D2A70(v15, v16, &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v14 + 48);
  if (v18(v16, 1, v13) == 1)
  {
    v19 = v0[17];
    v21 = v0[12];
    v20 = v0[13];
    UUID.init()();
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v18(v21, 1, v19) != 1)
    {
      sub_10000B3A8(v0[12], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v22 = v0[42];
    v23 = v0[24];
    v24 = v0[17];
    v25 = v0[12];
    sub_10000B3A8(v0[13], &qword_1016980D0, &unk_10138F3B0);
    v22(v23, v25, v24);
  }

  v26 = v0[42];
  v27 = v0[25];
  v29 = v0[16];
  v28 = v0[17];
  v30 = v0[14];
  v26(v29, v0[24], v28);
  v26(v29 + v30[5], v27, v28);
  v31 = v29 + v30[6];
  *v31 = xmmword_1013AAD90;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = xmmword_10139BF70;
  *(v29 + v30[7]) = v3 & 1;
  *(v29 + v30[8]) = 1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v32 = v0[15];
  v33 = v0[16];
  v34 = type metadata accessor for Logger();
  v0[45] = sub_1000076D4(v34, qword_10177B048);
  sub_1004E46C0(v33, v32, type metadata accessor for AccessoryCommand);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[15];
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v48 = v40;
    *v39 = 136315138;
    v41 = sub_1010C00BC();
    v43 = v42;
    sub_1004E4A04(v38, type metadata accessor for AccessoryCommand);
    v44 = sub_1000136BC(v41, v43, &v48);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Executing stopBTFinding command: %s", v39, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    sub_1004E4A04(v38, type metadata accessor for AccessoryCommand);
  }

  v45 = swift_task_alloc();
  v0[46] = v45;
  *v45 = v0;
  v45[1] = sub_1004C69A4;
  v46 = v0[16];

  return sub_10121B780((v0 + 2), v46, 0);
}