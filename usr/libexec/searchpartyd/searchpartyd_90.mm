void sub_1009EB388(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t a1)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v130 = a6;
  v129 = a5;
  v142 = a4;
  v137 = a3;
  v138 = a2;
  v148 = a7;
  v126 = sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
  __chkstk_darwin(v126);
  v124 = &v118 - v10;
  v11 = type metadata accessor for DispatchTime();
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = __chkstk_darwin(v11);
  v131 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = &v118 - v14;
  v15 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v15 - 8);
  v136 = &v118 - v16;
  v135 = type metadata accessor for SafeLocation(0);
  v17 = *(v135 - 8);
  v18 = __chkstk_darwin(v135);
  v128 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v19;
  __chkstk_darwin(v18);
  v21 = (&v118 - v20);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v123 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v122 = &v118 - v27;
  v28 = __chkstk_darwin(v26);
  v125 = &v118 - v29;
  __chkstk_darwin(v28);
  v31 = &v118 - v30;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000076D4(v32, qword_10177B780);
  v34 = *(v23 + 16);
  v144 = a1;
  v139 = v34;
  v140 = v23 + 16;
  v34(v31, a1, v22);
  v141 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v146 = v22;
  v147 = v21;
  v145 = v23;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v121 = v17;
    v40 = v39;
    v150 = v39;
    *v38 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v143 = *(v23 + 8);
    v143(v31, v22);
    v44 = sub_1000136BC(v41, v43, &v150);
    v8 = v7;

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Executing synced modify operation with identifier: %s", v38, 0xCu);
    sub_100007BAC(v40);
    v17 = v121;

    v21 = v147;
  }

  else
  {

    v143 = *(v23 + 8);
    v143(v31, v22);
  }

  v45 = dispatch_group_create();
  v46 = v136;
  v138();
  if ((*(v17 + 6))(v46, 1, v135) == 1)
  {
    sub_10000B3A8(v46, &unk_1016AFA10, &qword_1013CB000);
    v47 = v125;
    v48 = v146;
    v139(v125, v144, v146);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v150 = v52;
      *v51 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v47;
      v56 = v55;
      v143(v54, v48);
      v57 = sub_1000136BC(v53, v56, &v150);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Synced modify operation with identifier: %s failed due to missing record.", v51, 0xCu);
      sub_100007BAC(v52);
    }

    else
    {

      v143(v47, v48);
    }

    sub_100139CA0();
    v99 = swift_allocError();
    *v100 = 11;

    *v148 = v99;
    sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_100A18C9C(v46, v21, type metadata accessor for SafeLocation);
    v58 = swift_allocBox();
    v60 = v59;
    v61 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
    v120 = *(v61 - 8);
    v62 = *(v120 + 56);
    v119 = v60;
    v62(v60, 1, 1, v61);
    dispatch_group_enter(v45);
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    *(v63 + 24) = v45;
    v126 = v63;
    v137 = v58;

    v64 = v45;
    v65 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v135 = v64;
    v136 = v61;
    v66 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_101385D80;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = sub_100008C00();
    *(v67 + 32) = 0x65736C6166;
    *(v67 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v66, "Modify record. Disk First? (%@)", 31, 2, v67);

    v68 = objc_autoreleasePoolPush();
    sub_101121764(v21);
    if (v8)
    {
      objc_autoreleasePoolPop(v68);
      __break(1u);
    }

    else
    {
      v70 = v69;
      objc_autoreleasePoolPop(v68);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v138 = 0;
      v121 = type metadata accessor for SafeLocation;
      v71 = v21;
      v72 = v21;
      v73 = v128;
      sub_100A1B358(v71, v128, type metadata accessor for SafeLocation);
      v74 = *(v17 + 80);
      v75 = v127;
      v76 = swift_allocObject();
      v77 = v130;
      *(v76 + 16) = v129;
      *(v76 + 24) = v77;
      v129 = type metadata accessor for SafeLocation;
      sub_100A18C9C(v73, v76 + ((v74 + 32) & ~v74), type metadata accessor for SafeLocation);

      v125 = v70;
      sub_100FDCA40(v70, sub_100A0752C, v76);

      v78 = swift_allocObject();
      v79 = v126;
      *(v78 + 16) = sub_100A074F0;
      *(v78 + 24) = v79;

      Future.addFailure(block:)();

      sub_100A1B358(v72, v73, v121);
      v80 = (v74 + 16) & ~v74;
      v81 = (v75 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      sub_100A18C9C(v73, v82 + v80, v129);
      *(v82 + v81) = v142;
      v83 = (v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v83 = sub_100A074F0;
      v83[1] = v79;

      Future.addSuccess(block:)();

      v84 = v131;
      static DispatchTime.now()();
      v85 = v132;
      + infix(_:_:)();
      v86 = v134;
      v87 = *(v133 + 8);
      v87(v84, v134);
      v88 = v135;
      OS_dispatch_group.wait(timeout:)();
      v87(v85, v86);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v89 = v122;
        v90 = v146;
        v139(v122, v144, v146);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v150 = v94;
          *v93 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;
          v143(v89, v90);
          v98 = sub_1000136BC(v95, v97, &v150);

          *(v93 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v91, v92, "Synced modify operation with identifier: %s failed due to timeout.", v93, 0xCu);
          sub_100007BAC(v94);
        }

        else
        {

          v143(v89, v90);
        }

        v111 = v147;
        type metadata accessor for SPSeparationMonitoringError(0);
        v151 = 19;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
        _BridgedStoredNSError.init(_:userInfo:)();

        sub_100A1B3C0(v111, type metadata accessor for SafeLocation);
        *v148 = v150;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v101 = v123;
        v102 = v146;
        v139(v123, v144, v146);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v150 = v106;
          *v105 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v107 = dispatch thunk of CustomStringConvertible.description.getter();
          v109 = v108;
          v143(v101, v102);
          v110 = sub_1000136BC(v107, v109, &v150);

          *(v105 + 4) = v110;
          _os_log_impl(&_mh_execute_header, v103, v104, "Finished synced modify operation with identifier: %s.", v105, 0xCu);
          sub_100007BAC(v106);
        }

        else
        {

          v143(v101, v102);
        }

        v112 = v147;
        v113 = v124;
        v114 = v136;
        v115 = v120;
        v116 = v119;
        swift_beginAccess();
        sub_1000D2A70(v116, v113, &unk_1016B14A0, &unk_1013D68C0);
        v117 = *(v115 + 48);
        if (v117(v113, 1, v114) == 1)
        {
          type metadata accessor for SPSeparationMonitoringError(0);
          v149 = 0;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
          _BridgedStoredNSError.init(_:userInfo:)();

          sub_100A1B3C0(v112, type metadata accessor for SafeLocation);
          *v148 = v151;
          swift_storeEnumTagMultiPayload();
          if (v117(v113, 1, v114) != 1)
          {
            sub_10000B3A8(v113, &unk_1016B14A0, &unk_1013D68C0);
          }
        }

        else
        {
          sub_100A1B3C0(v112, type metadata accessor for SafeLocation);

          sub_1000D2AD8(v113, v148, &unk_1016B1480, &qword_1013B6890);
        }
      }
    }
  }
}

void sub_1009EC520(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v13 - 8);
  v15 = &v18 - v14;
  v16 = swift_projectBox();
  sub_1000D2A70(a1, v15, a6, a7);
  v17 = sub_1000BC4D4(a6, a7);
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  swift_beginAccess();
  sub_10002311C(v15, v16, a4, a5);
  dispatch_group_leave(a3);
}

unint64_t *sub_1009EC650()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v24 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  result = sub_100025044();
  v28 = result[2];
  if (v28)
  {
    v9 = 0;
    v21[2] = 0x80000001013480F0;
    v21[3] = 0x8000000101348120;
    v21[1] = 0x8000000101348010;
    v21[0] = 0x8000000101347FF0;
    v25 = _swiftEmptyArrayStorage;
    v26 = v7;
    v22 = v3;
    v23 = v0;
    v27 = result;
    while (v9 < result[2])
    {
      v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v29 = *(v3 + 72);
      sub_100A1B358(result + v30 + v29 * v9, v7, type metadata accessor for OwnedBeaconRecord);
      v10 = sub_1006FD6D0(v7, v1);
      if (!v10[2] || (Hasher.init(_seed:)(), String.hash(into:)(), v11 = Hasher._finalize()(), v12 = -1 << *(v10 + 32), v13 = v11 & ~v12, ((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0))
      {

        v7 = v26;
        sub_100A1B3C0(v26, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v14 = ~v12;
      while (2)
      {
        switch(*(v10[6] + v13))
        {
          case 8:

            goto LABEL_14;
          default:
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v15 & 1) == 0)
            {
              v13 = (v13 + 1) & v14;
              if (((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
              {

                v7 = v26;
                sub_100A1B3C0(v26, type metadata accessor for OwnedBeaconRecord);
                v3 = v22;
                v1 = v23;
                goto LABEL_4;
              }

              continue;
            }

LABEL_14:

            v7 = v26;
            sub_100A18C9C(v26, v24, type metadata accessor for OwnedBeaconRecord);
            v16 = v25;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31 = v16;
            v3 = v22;
            v1 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10112434C(0, v16[2] + 1, 1);
              v16 = v31;
            }

            v19 = v16[2];
            v18 = v16[3];
            if (v19 >= v18 >> 1)
            {
              sub_10112434C((v18 > 1), v19 + 1, 1);
              v16 = v31;
            }

            v16[2] = v19 + 1;
            v25 = v16;
            sub_100A18C9C(v24, v16 + v30 + v19 * v29, type metadata accessor for OwnedBeaconRecord);
LABEL_4:
            ++v9;
            result = v27;
            if (v9 == v28)
            {
              goto LABEL_20;
            }

            break;
        }

        break;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_20:

    v20 = sub_1000257D0(v25);

    return v20;
  }

  return result;
}

Swift::Int sub_1009ECCC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009ECD38(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009ECDB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009ECE14(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009ECF24(id *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(id), void (*a7)(id *, char *), uint64_t (*a8)(void))
{
  v13 = a5(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v17 - v14;
  a6(*a1);
  a2(v15);
  a7(a1, v15);
  return sub_100A1B3C0(v15, a8);
}

uint64_t sub_1009ED258(id *a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100150FC8(*a1, v6);
  a2(v6);
  sub_100152D44(v6, a1);
  return sub_100A1B3C0(v6, type metadata accessor for KeyAlignmentRecord);
}

uint64_t sub_1009ED448(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v18[1] = a3;
  v19 = a2;
  v8 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v8);
  v10 = (v18 - v9);
  v11 = static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  v20 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Update failed: %@", 17, 2, v13);

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v19(v10);
  return sub_10000B3A8(v10, a4, a5);
}

uint64_t sub_1009ED674(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v9 - 8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100518A90(a1, v11);
  sub_1009F10FC(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for OwnedBeaconGroup);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &qword_101699398, &qword_101391900);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1009ED964(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1011D5D0C(a1, v11);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_1009F1368(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &qword_101699BC8, &qword_1013926D8);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_1009EDC88(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100D5E184(a1, v11);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_1009F15D4(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for OwnedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &unk_1016B15A0, &qword_1013A0900);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_1009EDFAC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100E7815C(a1, v11);
  sub_1009F0274(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for LostModeRecord);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &qword_1016B1840, &qword_1013B68F0);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for LostModeRecord);
}

uint64_t sub_1009EE29C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100DE08D0(a1, v11);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_1009F0C24(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for BeaconNamingRecord);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &qword_1016A7808, &qword_1013D6750);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for BeaconNamingRecord);
}

uint64_t sub_1009EE5C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001547CC(a1, v11);
  sub_1009F0E90(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for ShareRecord);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &unk_1016B1650, &unk_1013B1110);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for ShareRecord);
}

uint64_t sub_1009EE8B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100150FC8(a1, v11);
  sub_1009F0008(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for KeyAlignmentRecord);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &unk_1016B1690, &qword_1013D6800);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for KeyAlignmentRecord);
}

uint64_t sub_1009EEBA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for LeashRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_101251FDC(a1, v11);
  sub_1009F074C(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for LeashRecord);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &qword_1016A78E0, &qword_1013B6888);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for LeashRecord);
}

uint64_t sub_1009EEE90(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100EE51B8(a1, v11);
  sub_1009F04E0(v11);
  sub_100A8306C(8u);
  sub_100A1B358(v11, v8, type metadata accessor for SafeLocation);
  swift_storeEnumTagMultiPayload();
  a4(v8);
  v12 = sub_10000B3A8(v8, &unk_1016B1480, &qword_1013B6890);
  sub_100A8375C(v12);
  return sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
}

void *sub_1009EF180(uint64_t a1)
{
  v4 = type metadata accessor for SharingCircleSecret(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for SharingCircleSecret);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1640, type metadata accessor for SharingCircleSecret, &unk_1013E8150);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for SharingCircleSecret);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for SharingCircleSecret);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009EF3EC(uint64_t a1)
{
  v4 = type metadata accessor for MemberSharingCircle(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for MemberSharingCircle);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016B1620, type metadata accessor for MemberSharingCircle, &unk_10139D2DC);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for MemberSharingCircle);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for MemberSharingCircle);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009EF658(uint64_t a1)
{
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for OwnerSharingCircle);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1600, type metadata accessor for OwnerSharingCircle, &unk_1013EA330);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for OwnerSharingCircle);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for OwnerSharingCircle);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009EF8C4(uint64_t a1)
{
  v4 = type metadata accessor for MemberPeerTrust(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for MemberPeerTrust);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B15F0, type metadata accessor for MemberPeerTrust, &unk_1013EC188);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for MemberPeerTrust);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for MemberPeerTrust);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009EFB30(uint64_t a1)
{
  v4 = type metadata accessor for OwnerPeerTrust(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for OwnerPeerTrust);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_10169D950, type metadata accessor for OwnerPeerTrust, &unk_10139C558);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for OwnerPeerTrust);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for OwnerPeerTrust);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009EFD9C(uint64_t a1)
{
  v4 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for OwnedDeviceKeyRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016C8630, type metadata accessor for OwnedDeviceKeyRecord, &unk_101407290);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for OwnedDeviceKeyRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for OwnedDeviceKeyRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F0008(uint64_t a1)
{
  v4 = type metadata accessor for KeyAlignmentRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for KeyAlignmentRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_101697F10, type metadata accessor for KeyAlignmentRecord, &unk_10138ED10);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for KeyAlignmentRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for KeyAlignmentRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F0274(uint64_t a1)
{
  v4 = type metadata accessor for LostModeRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for LostModeRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B15E0, type metadata accessor for LostModeRecord, &unk_1013EB5E0);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for LostModeRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for LostModeRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F04E0(uint64_t a1)
{
  v4 = type metadata accessor for SafeLocation(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for SafeLocation);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016B14C0, type metadata accessor for SafeLocation, &unk_1013F0040);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for SafeLocation);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for SafeLocation);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F074C(uint64_t a1)
{
  v4 = type metadata accessor for LeashRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for LeashRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1510, type metadata accessor for LeashRecord, &unk_10140E000);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for LeashRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for LeashRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F09B8(uint64_t a1)
{
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v5 = __chkstk_darwin(found);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for NotifyWhenFoundRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = found;
    v21[4] = sub_100003F64(&unk_1016A27A0, type metadata accessor for NotifyWhenFoundRecord, &unk_1013AB5C0);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for NotifyWhenFoundRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for NotifyWhenFoundRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F0C24(uint64_t a1)
{
  v4 = type metadata accessor for BeaconNamingRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for BeaconNamingRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1520, type metadata accessor for BeaconNamingRecord, &unk_1013E8EFC);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for BeaconNamingRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for BeaconNamingRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F0E90(uint64_t a1)
{
  v4 = type metadata accessor for ShareRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for ShareRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016B15D0, type metadata accessor for ShareRecord, &unk_10138F4EC);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for ShareRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for ShareRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F10FC(uint64_t a1)
{
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for OwnedBeaconGroup);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016A4140, type metadata accessor for OwnedBeaconGroup, &unk_1013AFF38);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for OwnedBeaconGroup);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconGroup);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F1368(uint64_t a1)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for SharedBeaconRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016B15B0, type metadata accessor for SharedBeaconRecord, &unk_10140BA9C);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for SharedBeaconRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for SharedBeaconRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F15D4(uint64_t a1)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for OwnedBeaconRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1530, type metadata accessor for OwnedBeaconRecord, &unk_1013E7CD4);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for OwnedBeaconRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F1840(uint64_t a1)
{
  v4 = type metadata accessor for BeaconProductInfoRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for BeaconProductInfoRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1540, type metadata accessor for BeaconProductInfoRecord, &unk_1013BE368);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for BeaconProductInfoRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for BeaconProductInfoRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F1AAC(uint64_t a1)
{
  v4 = type metadata accessor for PairingErrorRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for PairingErrorRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1848, type metadata accessor for PairingErrorRecord, &unk_1013E6018);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for PairingErrorRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for PairingErrorRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F1D18(uint64_t a1)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for WildModeAssociationRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016B1590, type metadata accessor for WildModeAssociationRecord, &unk_10139B090);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for WildModeAssociationRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for WildModeAssociationRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F1F84(uint64_t a1)
{
  v4 = type metadata accessor for AccessoryMetadataRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for AccessoryMetadataRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&qword_1016B1730, type metadata accessor for AccessoryMetadataRecord, &unk_101400CB0);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for AccessoryMetadataRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for AccessoryMetadataRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F21F0(uint64_t a1)
{
  v4 = type metadata accessor for SessionTokenRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for SessionTokenRecord);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016B1720, type metadata accessor for SessionTokenRecord, &unk_1013C5020);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for SessionTokenRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for SessionTokenRecord);
    return sub_100007BAC(v21);
  }

  return result;
}

void *sub_1009F245C(uint64_t a1)
{
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = v1;
  v20 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v21[6] = 0;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v7, type metadata accessor for BeaconEstimatedLocation);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Publishing record changed: %@", 29, 2, v13);

    v21[3] = v4;
    v21[4] = sub_100003F64(&unk_1016B1710, type metadata accessor for BeaconEstimatedLocation, &unk_1013E4170);
    v17 = sub_1000280DC(v21);
    sub_100A1B358(v9, v17, type metadata accessor for BeaconEstimatedLocation);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v9, type metadata accessor for BeaconEstimatedLocation);
    return sub_100007BAC(v21);
  }

  return result;
}

void sub_1009F26C8(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v70 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v72 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v76 = *(v6 - 8);
  *&v77 = v6;
  __chkstk_darwin(v6);
  v75 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URL();
  v80 = *(v78 - 8);
  v8 = __chkstk_darwin(v78);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v71 = v67 - v12;
  __chkstk_darwin(v11);
  v14 = v67 - v13;
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v67 - v20;
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v22(v21, v15);
  if (v83 == v82)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v66 = v23;
      swift_once();
      v23 = v66;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v26 = type metadata accessor for SharingCircleSecret(0);
    sub_100003F64(&qword_1016B1648, type metadata accessor for SharingCircleSecret, &unk_1013E8100);
    v27 = isa;
    v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v27)
    {

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v30 = v28;
      v31 = v29;

      objc_autoreleasePoolPop(v25);
      v32 = sub_1010B6FB0(v30, v31, 0);
      v69 = v30;
      v79 = v31;
      v33 = v32;
      v35 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v33, v35);
      v68 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v36 = *(v26 + 24);
      if (qword_101694E90 != -1)
      {
        swift_once();
      }

      v37 = v78;
      v67[2] = sub_1000076D4(v78, qword_10177C090);
      v67[1] = v36;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v39 = v80 + 8;
      v38 = *(v80 + 8);
      v38(v14, v37);
      (*(v76 + 16))(v75, a2 + *(v26 + 20), v77);
      v67[0] = a2;
      v40 = v37;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v41 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v42 = v71;
      URL.appendingPathExtension(_:)();
      v38(v10, v40);
      objc_autoreleasePoolPop(v41);
      v80 = v39;
      v68 = v38;
      v38(v14, v40);
      v43 = v42;
      (*(v76 + 8))(v75, v77);
      v44 = v72;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v45 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v46);
      v48 = v47;
      [(objc_class *)isa writeToURL:v47 atomically:1];

      objc_autoreleasePoolPop(v45);
      v49 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v50 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v51 = swift_allocObject();
      v77 = xmmword_101385D80;
      *(v51 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v52 = v78;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_100008C00();
      *(v51 + 32) = v53;
      *(v51 + 40) = v55;
      os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v50, "Writing to file: %@", 19, 2, v51);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = NSFileProtectionKey;
      v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v60 = [objc_opt_self() defaultManager];
      sub_100695108(v59);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v61 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v62 = String._bridgeToObjectiveC()();

      v83 = 0;
      LODWORD(v53) = [v60 setAttributes:v61 ofItemAtPath:v62 error:&v83];

      if (v53)
      {
        v63 = v83;
        URL.setResourceValues(_:)();
        v64 = isa;
        sub_100016590(v69, v79);

        (*(v73 + 8))(v44, v74);
        v68(v43, v52);
        sub_100A1B358(v67[0], v70, type metadata accessor for SharingCircleSecret);
      }

      else
      {
        v65 = v83;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v79);

        (*(v73 + 8))(v44, v74);
        v68(v43, v52);
      }
    }
  }
}

void sub_1009F31BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for MemberSharingCircle(0);
    sub_100003F64(&qword_10169DFD0, type metadata accessor for MemberSharingCircle, &unk_10139D28C);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694680 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177AC60);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for MemberSharingCircle);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009F3C68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for OwnerSharingCircle(0);
    sub_100003F64(&qword_1016B1608, type metadata accessor for OwnerSharingCircle, &unk_1013EA2E0);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694EB8 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177C0D8);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009F4714(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for MemberPeerTrust(0);
    sub_100003F64(&qword_1016B15F8, type metadata accessor for MemberPeerTrust, &unk_1013EC138);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694F30 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177C1D0);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for MemberPeerTrust);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009F51C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for OwnerPeerTrust(0);
    sub_100003F64(&qword_10169D948, type metadata accessor for OwnerPeerTrust, &unk_10139C508);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694568 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177A918);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for OwnerPeerTrust);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009F5C6C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v70 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v72 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v76 = *(v6 - 8);
  *&v77 = v6;
  __chkstk_darwin(v6);
  v75 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URL();
  v80 = *(v78 - 8);
  v8 = __chkstk_darwin(v78);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v71 = v67 - v12;
  __chkstk_darwin(v11);
  v14 = v67 - v13;
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v67 - v20;
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v22(v21, v15);
  if (v83 == v82)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v66 = v23;
      swift_once();
      v23 = v66;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v26 = type metadata accessor for OwnedDeviceKeyRecord(0);
    sub_100003F64(&unk_1016B1570, type metadata accessor for OwnedDeviceKeyRecord, &unk_101407240);
    v27 = isa;
    v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v27)
    {

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v30 = v28;
      v31 = v29;

      objc_autoreleasePoolPop(v25);
      v32 = sub_1010B6FB0(v30, v31, 0);
      v69 = v30;
      v79 = v31;
      v33 = v32;
      v35 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v33, v35);
      v68 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v36 = *(v26 + 24);
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v37 = v78;
      v67[2] = sub_1000076D4(v78, qword_10177C680);
      v67[1] = v36;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v39 = v80 + 8;
      v38 = *(v80 + 8);
      v38(v14, v37);
      (*(v76 + 16))(v75, a2 + *(v26 + 20), v77);
      v67[0] = a2;
      v40 = v37;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v41 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v42 = v71;
      URL.appendingPathExtension(_:)();
      v38(v10, v40);
      objc_autoreleasePoolPop(v41);
      v80 = v39;
      v68 = v38;
      v38(v14, v40);
      v43 = v42;
      (*(v76 + 8))(v75, v77);
      v44 = v72;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v45 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v46);
      v48 = v47;
      [(objc_class *)isa writeToURL:v47 atomically:1];

      objc_autoreleasePoolPop(v45);
      v49 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v50 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v51 = swift_allocObject();
      v77 = xmmword_101385D80;
      *(v51 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v52 = v78;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_100008C00();
      *(v51 + 32) = v53;
      *(v51 + 40) = v55;
      os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v50, "Writing to file: %@", 19, 2, v51);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = NSFileProtectionKey;
      v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v60 = [objc_opt_self() defaultManager];
      sub_100695108(v59);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v61 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v62 = String._bridgeToObjectiveC()();

      v83 = 0;
      LODWORD(v53) = [v60 setAttributes:v61 ofItemAtPath:v62 error:&v83];

      if (v53)
      {
        v63 = v83;
        URL.setResourceValues(_:)();
        v64 = isa;
        sub_100016590(v69, v79);

        (*(v73 + 8))(v44, v74);
        v68(v43, v52);
        sub_100A1B358(v67[0], v70, type metadata accessor for OwnedDeviceKeyRecord);
      }

      else
      {
        v65 = v83;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v79);

        (*(v73 + 8))(v44, v74);
        v68(v43, v52);
      }
    }
  }
}

void sub_1009F6760(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  isa = a1;
  v71 = a3;
  v5 = type metadata accessor for URLResourceValues();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v79 = type metadata accessor for UUID();
  v73 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for URL();
  v82 = *(v80 - 8);
  v8 = __chkstk_darwin(v80);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v74 = &v65 - v11;
  __chkstk_darwin(v10);
  v13 = &v65 - v12;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v84 == v83)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v25 = type metadata accessor for KeyAlignmentRecord(0);
    sub_100003F64(&qword_1016B1580, type metadata accessor for KeyAlignmentRecord, &unk_10138ECC0);
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      objc_autoreleasePoolPop(v24);
      v30 = sub_1010B6FB0(v28, v29, 0);
      v69 = v28;
      v70 = v29;
      v31 = v30;
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v31, v33);
      v68 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v66 = objc_autoreleasePoolPush();
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v34 = v80;
      v67 = sub_1000076D4(v80, qword_10177A500);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v66);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = v82 + 8;
      v35 = *(v82 + 1);
      v35(v13, v34);
      v37 = v73;
      (*(v73 + 16))(v78, a2 + *(v25 + 20), v79);
      v82 = objc_autoreleasePoolPush();
      v68 = a2;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v82);
      v82 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      v38 = v72;
      URL.appendingPathComponent(_:)();

      v39 = v74;
      URL.appendingPathExtension(_:)();
      v40 = v38;
      v41 = v80;
      v35(v40, v80);
      objc_autoreleasePoolPop(v82);
      v82 = v36;
      v72 = v35;
      v35(v13, v41);
      v42 = v39;
      (*(v37 + 8))(v78, v79);
      v43 = v75;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v44 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      [(objc_class *)isa writeToURL:v46 atomically:1];

      objc_autoreleasePoolPop(v44);
      v48 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      v79 = xmmword_101385D80;
      *(v50 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_100008C00();
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Writing to file: %@", 19, 2, v50);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v79;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v84 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v84];

      if (v51)
      {
        v61 = v84;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v69, v70);

        (*(v76 + 8))(v43, v77);
        (v72)(v42, v41);
        sub_100A1B358(v68, v71, type metadata accessor for KeyAlignmentRecord);
      }

      else
      {
        v63 = v84;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v70);

        (*(v76 + 8))(v43, v77);
        (v72)(v42, v41);
      }
    }
  }
}

void sub_1009F727C(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v81 = *(v6 - 8);
  *&v82 = v6;
  __chkstk_darwin(v6);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for URL();
  v84 = *(v77 - 8);
  v8 = __chkstk_darwin(v77);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v76 = &v68 - v12;
  __chkstk_darwin(v11);
  v14 = &v68 - v13;
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v22(v21, v15);
  if (v87 == v86)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v67 = v23;
      swift_once();
      v23 = v67;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v26 = type metadata accessor for LostModeRecord(0);
    sub_100003F64(&qword_1016B15E8, type metadata accessor for LostModeRecord, &unk_1013EB590);
    v27 = isa;
    v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v27)
    {

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v30 = v28;
      v31 = v29;

      objc_autoreleasePoolPop(v25);
      v32 = sub_1010B6FB0(v30, v31, 0);
      v72 = v30;
      v73 = v31;
      v33 = v32;
      v35 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v33, v35);
      v83 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v36 = v77;
      v71 = sub_1000076D4(v77, qword_10177C140);
      v70 = *(v26 + 24);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v84 + 8;
      v83 = *(v84 + 8);
      v83(v14, v36);
      v38 = a2 + *(v26 + 20);
      v39 = v75;
      (*(v81 + 16))(v75, v38, v82);
      v69 = a2;
      v40 = v36;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v41 = objc_autoreleasePoolPush();
      v42 = v39;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v43 = v76;
      URL.appendingPathExtension(_:)();
      v44 = v83;
      v83(v10, v40);
      objc_autoreleasePoolPop(v41);
      v84 = v37;
      v44(v14, v40);
      v45 = v43;
      (*(v81 + 8))(v42, v82);
      v46 = v78;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v47 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v48);
      v50 = v49;
      [(objc_class *)isa writeToURL:v49 atomically:1];

      objc_autoreleasePoolPop(v47);
      v51 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v52 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v53 = swift_allocObject();
      v82 = xmmword_101385D80;
      *(v53 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_100008C00();
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "Writing to file: %@", 19, 2, v53);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v82;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v58 = NSFileProtectionKey;
      v59 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v60 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v61 = [objc_opt_self() defaultManager];
      sub_100695108(v60);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v62 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v63 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v54) = [v61 setAttributes:v62 ofItemAtPath:v63 error:&v87];

      if (v54)
      {
        v64 = v87;
        URL.setResourceValues(_:)();
        v65 = isa;
        sub_100016590(v72, v73);

        (*(v79 + 8))(v46, v80);
        v83(v45, v40);
        sub_100A1B358(v69, v74, type metadata accessor for LostModeRecord);
      }

      else
      {
        v66 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v79 + 8))(v46, v80);
        v83(v45, v40);
      }
    }
  }
}

void sub_1009F7D6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for SafeLocation(0);
    sub_100003F64(&unk_1016B14D0, type metadata accessor for SafeLocation, &unk_1013EFFF0);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177C268);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for SafeLocation);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009F8818(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for LeashRecord(0);
    sub_100003F64(&qword_1016B1518, type metadata accessor for LeashRecord, &unk_10140DFB0);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177CDB8);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for LeashRecord);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009F92C4(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v81 = *(v6 - 8);
  *&v82 = v6;
  __chkstk_darwin(v6);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for URL();
  v84 = *(v77 - 8);
  v8 = __chkstk_darwin(v77);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v76 = &v68 - v12;
  __chkstk_darwin(v11);
  v14 = &v68 - v13;
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v22(v21, v15);
  if (v87 == v86)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v67 = v23;
      swift_once();
      v23 = v67;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    found = type metadata accessor for NotifyWhenFoundRecord(0);
    sub_100003F64(&qword_1016A2798, type metadata accessor for NotifyWhenFoundRecord, &unk_1013AB570);
    v27 = isa;
    v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v27)
    {

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v30 = v28;
      v31 = v29;

      objc_autoreleasePoolPop(v25);
      v32 = sub_1010B6FB0(v30, v31, 0);
      v72 = v30;
      v73 = v31;
      v33 = v32;
      v35 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v33, v35);
      v83 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016947A0 != -1)
      {
        swift_once();
      }

      v36 = v77;
      v71 = sub_1000076D4(v77, qword_10177AEC8);
      v70 = *(found + 24);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v84 + 8;
      v83 = *(v84 + 8);
      v83(v14, v36);
      v38 = a2 + *(found + 20);
      v39 = v75;
      (*(v81 + 16))(v75, v38, v82);
      v69 = a2;
      v40 = v36;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v41 = objc_autoreleasePoolPush();
      v42 = v39;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v43 = v76;
      URL.appendingPathExtension(_:)();
      v44 = v83;
      v83(v10, v40);
      objc_autoreleasePoolPop(v41);
      v84 = v37;
      v44(v14, v40);
      v45 = v43;
      (*(v81 + 8))(v42, v82);
      v46 = v78;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v47 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v48);
      v50 = v49;
      [(objc_class *)isa writeToURL:v49 atomically:1];

      objc_autoreleasePoolPop(v47);
      v51 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v52 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v53 = swift_allocObject();
      v82 = xmmword_101385D80;
      *(v53 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_100008C00();
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "Writing to file: %@", 19, 2, v53);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v82;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v58 = NSFileProtectionKey;
      v59 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v60 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v61 = [objc_opt_self() defaultManager];
      sub_100695108(v60);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v62 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v63 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v54) = [v61 setAttributes:v62 ofItemAtPath:v63 error:&v87];

      if (v54)
      {
        v64 = v87;
        URL.setResourceValues(_:)();
        v65 = isa;
        sub_100016590(v72, v73);

        (*(v79 + 8))(v46, v80);
        v83(v45, v40);
        sub_100A1B358(v69, v74, type metadata accessor for NotifyWhenFoundRecord);
      }

      else
      {
        v66 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v79 + 8))(v46, v80);
        v83(v45, v40);
      }
    }
  }
}

void sub_1009F9DB4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a1;
  v80 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v86 = *(v4 - 8);
  v87 = v4;
  __chkstk_darwin(v4);
  v85 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v88 = type metadata accessor for UUID();
  v83 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v81 = (&v76 - v12);
  v13 = __chkstk_darwin(v11);
  v84 = &v76 - v14;
  __chkstk_darwin(v13);
  v16 = &v76 - v15;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v76 - v22;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v21, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v18 + 8);
  v24(v21, v17);
  v24(v23, v17);
  if (v94 == v93)
  {
    v25 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v75 = v25;
      swift_once();
      v25 = v75;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v28 = type metadata accessor for BeaconNamingRecord(0);
    sub_100003F64(&qword_1016B1528, type metadata accessor for BeaconNamingRecord, &unk_1013E8EAC);
    v29 = isa;
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v29)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v32 = v30;
      v33 = v31;

      objc_autoreleasePoolPop(v27);
      v34 = sub_1010B6FB0(v32, v33, 0);
      v79 = v32;
      v89 = v33;
      v35 = v34;
      v37 = v36;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v35, v37);
      v38 = objc_autoreleasePoolPush();
      sub_100DE1148(v16);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      objc_autoreleasePoolPop(v38);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v40 = v90 + 8;
      v39 = *(v90 + 8);
      v39(v16, v91);
      v41 = *(v28 + 20);
      v42 = v82;
      v43 = v83;
      (*(v83 + 16))(v82, a2 + v41, v88);
      v44 = objc_autoreleasePoolPush();
      v45 = v81;
      sub_100DE1148(v81);
      v78 = 0;
      v77 = a2;
      objc_autoreleasePoolPop(v44);
      v46 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      v47 = v42;
      URL.appendingPathComponent(_:)();

      v48 = v84;
      URL.appendingPathExtension(_:)();
      v49 = v91;
      v39(v10, v91);
      v50 = v46;
      v51 = v48;
      objc_autoreleasePoolPop(v50);
      v81 = v39;
      v39(v45, v49);
      (*(v43 + 8))(v47, v88);
      v52 = v85;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v53 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      [(objc_class *)isa writeToURL:v55 atomically:1];

      objc_autoreleasePoolPop(v53);
      v57 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v90 = v40;
      v58 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v59 = swift_allocObject();
      v88 = xmmword_101385D80;
      *(v59 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v60 = v91;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100008C00();
      *(v59 + 32) = v61;
      *(v59 + 40) = v63;
      os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Writing to file: %@", 19, 2, v59);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v88;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v65 = NSFileProtectionKey;
      v66 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v67 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v68 = [objc_opt_self() defaultManager];
      sub_100695108(v67);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v69 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v70 = String._bridgeToObjectiveC()();

      v94 = 0;
      LODWORD(v61) = [v68 setAttributes:v69 ofItemAtPath:v70 error:&v94];

      if (v61)
      {
        v71 = v94;
        v72 = v78;
        URL.setResourceValues(_:)();
        v73 = v81;
        sub_100016590(v79, v89);

        (*(v86 + 8))(v52, v87);
        v73(v51, v91);
        if (!v72)
        {
          sub_100A1B358(v77, v80, type metadata accessor for BeaconNamingRecord);
        }
      }

      else
      {
        v74 = v94;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v79, v89);

        (*(v86 + 8))(v52, v87);
        v81(v51, v60);
      }
    }
  }
}

void sub_1009FA8B8(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v81 = *(v6 - 8);
  *&v82 = v6;
  __chkstk_darwin(v6);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for URL();
  v84 = *(v77 - 8);
  v8 = __chkstk_darwin(v77);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v76 = &v68 - v12;
  __chkstk_darwin(v11);
  v14 = &v68 - v13;
  v15 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  static SystemInfo.lockState.getter();
  (*(v16 + 104))(v19, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v15);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v22(v21, v15);
  if (v87 == v86)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v67 = v23;
      swift_once();
      v23 = v67;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v26 = type metadata accessor for ShareRecord(0);
    sub_100003F64(&unk_101698240, type metadata accessor for ShareRecord, &unk_10138F4C4);
    v27 = isa;
    v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v27)
    {

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v30 = v28;
      v31 = v29;

      objc_autoreleasePoolPop(v25);
      v32 = sub_1010B6FB0(v30, v31, 0);
      v72 = v30;
      v73 = v31;
      v33 = v32;
      v35 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v33, v35);
      v83 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v36 = v77;
      v71 = sub_1000076D4(v77, qword_10177A518);
      v70 = *(v26 + 24);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v84 + 8;
      v83 = *(v84 + 8);
      v83(v14, v36);
      v38 = a2 + *(v26 + 20);
      v39 = v75;
      (*(v81 + 16))(v75, v38, v82);
      v69 = a2;
      v40 = v36;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v41 = objc_autoreleasePoolPush();
      v42 = v39;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v43 = v76;
      URL.appendingPathExtension(_:)();
      v44 = v83;
      v83(v10, v40);
      objc_autoreleasePoolPop(v41);
      v84 = v37;
      v44(v14, v40);
      v45 = v43;
      (*(v81 + 8))(v42, v82);
      v46 = v78;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v47 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v48);
      v50 = v49;
      [(objc_class *)isa writeToURL:v49 atomically:1];

      objc_autoreleasePoolPop(v47);
      v51 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v52 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v53 = swift_allocObject();
      v82 = xmmword_101385D80;
      *(v53 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_100008C00();
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "Writing to file: %@", 19, 2, v53);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v82;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v58 = NSFileProtectionKey;
      v59 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v60 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v61 = [objc_opt_self() defaultManager];
      sub_100695108(v60);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v62 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v63 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v54) = [v61 setAttributes:v62 ofItemAtPath:v63 error:&v87];

      if (v54)
      {
        v64 = v87;
        URL.setResourceValues(_:)();
        v65 = isa;
        sub_100016590(v72, v73);

        (*(v79 + 8))(v46, v80);
        v83(v45, v40);
        sub_100A1B358(v69, v74, type metadata accessor for ShareRecord);
      }

      else
      {
        v66 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v79 + 8))(v46, v80);
        v83(v45, v40);
      }
    }
  }
}

void sub_1009FB3A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for OwnedBeaconGroup(0);
    sub_100003F64(&qword_1016A4138, type metadata accessor for OwnedBeaconGroup, &unk_1013AFEE8);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177AEF8);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for OwnedBeaconGroup);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009FBE54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for SharedBeaconRecord(0);
    sub_100003F64(&qword_1016A4918, type metadata accessor for SharedBeaconRecord, &unk_10140BA4C);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177CD50);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009FC900(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v68 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v78 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v70 = &v65 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v65 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v81 == v80)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v64 = v22;
      swift_once();
      v22 = v64;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for OwnedBeaconRecord(0);
    sub_100003F64(&qword_1016B1538, type metadata accessor for OwnedBeaconRecord, &unk_1013E7C84);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v27;
      v29 = a2;
      v30 = v26;

      objc_autoreleasePoolPop(v24);
      v31 = sub_1010B6FB0(v30, v28, 0);
      v77 = v29;
      v66 = v30;
      v67 = v28;
      v32 = v31;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v32, v34);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v35 = v76;
      v36 = sub_1000076D4(v76, qword_10177C070);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v37 = v69;
      (*(v69 + 16))();
      v38 = v78;
      (*(v78 + 16))(v12, v36, v35);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v40 = v70;
      URL.appendingPathExtension(_:)();
      v41 = *(v38 + 8);
      v41(v9, v35);
      objc_autoreleasePoolPop(v39);
      v78 = v38 + 8;
      v65 = v41;
      v41(v12, v35);
      (*(v37 + 8))(v74, v75);
      v42 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v76;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = NSFileProtectionKey;
      v56 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v58 = [objc_opt_self() defaultManager];
      sub_100695108(v57);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v59 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v60 = String._bridgeToObjectiveC()();

      v81 = 0;
      LODWORD(v51) = [v58 setAttributes:v59 ofItemAtPath:v60 error:&v81];

      if (v51)
      {
        v61 = v81;
        URL.setResourceValues(_:)();
        v62 = isa;
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v76);
        sub_100A1B358(v77, v68, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v63 = v81;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v66, v67);

        (*(v72 + 8))(v42, v73);
        v65(v40, v50);
      }
    }
  }
}

void sub_1009FD3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v67 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v74 = type metadata accessor for UUID();
  v68 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for URL();
  v77 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  __chkstk_darwin(v10);
  v69 = &v64 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v80 == v79)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v63 = v22;
      swift_once();
      v22 = v63;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for BeaconProductInfoRecord(0);
    sub_100003F64(&qword_1016AAC20, type metadata accessor for BeaconProductInfoRecord, &unk_1013BE2D8);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      objc_autoreleasePoolPop(v24);
      v30 = sub_1010B6FB0(v28, v29, 0);
      v76 = a2;
      v65 = v28;
      v66 = v29;
      v31 = v30;
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v31, v33);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694970 != -1)
      {
        swift_once();
      }

      v34 = v75;
      v35 = sub_1000076D4(v75, qword_10177B398);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = v68;
      (*(v68 + 16))();
      v37 = v77;
      (*(v77 + 16))(v12, v35, v34);
      v38 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v39 = v69;
      URL.appendingPathExtension(_:)();
      v40 = *(v37 + 8);
      v40(v9, v34);
      objc_autoreleasePoolPop(v38);
      v77 = v37 + 8;
      v64 = v40;
      v40(v12, v34);
      (*(v36 + 8))(v73, v74);
      v41 = v70;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v42 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      [(objc_class *)isa writeToURL:v44 atomically:1];

      objc_autoreleasePoolPop(v42);
      v46 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v47 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v48 = swift_allocObject();
      v74 = xmmword_101385D80;
      *(v48 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = v75;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_100008C00();
      *(v48 + 32) = v50;
      *(v48 + 40) = v52;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, "Writing to file: %@", 19, 2, v48);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v54 = NSFileProtectionKey;
      v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v57 = [objc_opt_self() defaultManager];
      sub_100695108(v56);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v59 = String._bridgeToObjectiveC()();

      v80 = 0;
      LODWORD(v50) = [v57 setAttributes:v58 ofItemAtPath:v59 error:&v80];

      if (v50)
      {
        v60 = v80;
        URL.setResourceValues(_:)();
        v61 = isa;
        sub_100016590(v65, v66);

        (*(v71 + 8))(v41, v72);
        v64(v39, v75);
        sub_100A1B358(v76, v67, type metadata accessor for BeaconProductInfoRecord);
      }

      else
      {
        v62 = v80;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v65, v66);

        (*(v71 + 8))(v41, v72);
        v64(v39, v49);
      }
    }
  }
}

void sub_1009FDE4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v67 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v74 = type metadata accessor for UUID();
  v68 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for URL();
  v77 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  __chkstk_darwin(v10);
  v69 = &v64 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v80 == v79)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v63 = v22;
      swift_once();
      v22 = v63;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PairingErrorRecord(0);
    sub_100003F64(&unk_1016B1850, type metadata accessor for PairingErrorRecord, &unk_1013E5FF0);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      objc_autoreleasePoolPop(v24);
      v30 = sub_1010B6FB0(v28, v29, 0);
      v76 = a2;
      v65 = v28;
      v66 = v29;
      v31 = v30;
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v31, v33);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694E68 != -1)
      {
        swift_once();
      }

      v34 = v75;
      v35 = sub_1000076D4(v75, qword_10177C048);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = v68;
      (*(v68 + 16))();
      v37 = v77;
      (*(v77 + 16))(v12, v35, v34);
      v38 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v39 = v69;
      URL.appendingPathExtension(_:)();
      v40 = *(v37 + 8);
      v40(v9, v34);
      objc_autoreleasePoolPop(v38);
      v77 = v37 + 8;
      v64 = v40;
      v40(v12, v34);
      (*(v36 + 8))(v73, v74);
      v41 = v70;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v42 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      [(objc_class *)isa writeToURL:v44 atomically:1];

      objc_autoreleasePoolPop(v42);
      v46 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v47 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v48 = swift_allocObject();
      v74 = xmmword_101385D80;
      *(v48 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = v75;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_100008C00();
      *(v48 + 32) = v50;
      *(v48 + 40) = v52;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, "Writing to file: %@", 19, 2, v48);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v54 = NSFileProtectionKey;
      v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v57 = [objc_opt_self() defaultManager];
      sub_100695108(v56);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v59 = String._bridgeToObjectiveC()();

      v80 = 0;
      LODWORD(v50) = [v57 setAttributes:v58 ofItemAtPath:v59 error:&v80];

      if (v50)
      {
        v60 = v80;
        URL.setResourceValues(_:)();
        v61 = isa;
        sub_100016590(v65, v66);

        (*(v71 + 8))(v41, v72);
        v64(v39, v75);
        sub_100A1B358(v76, v67, type metadata accessor for PairingErrorRecord);
      }

      else
      {
        v62 = v80;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v65, v66);

        (*(v71 + 8))(v41, v72);
        v64(v39, v49);
      }
    }
  }
}

void sub_1009FE8EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v67 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v74 = type metadata accessor for UUID();
  v68 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for URL();
  v77 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  __chkstk_darwin(v10);
  v69 = &v64 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v80 == v79)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v63 = v22;
      swift_once();
      v22 = v63;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for WildModeAssociationRecord(0);
    sub_100003F64(&qword_10169D478, type metadata accessor for WildModeAssociationRecord, &unk_10139B040);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      objc_autoreleasePoolPop(v24);
      v30 = sub_1010B6FB0(v28, v29, 0);
      v76 = a2;
      v65 = v28;
      v66 = v29;
      v31 = v30;
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v31, v33);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v34 = v75;
      v35 = sub_1000076D4(v75, qword_10177A8D0);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = v68;
      (*(v68 + 16))();
      v37 = v77;
      (*(v77 + 16))(v12, v35, v34);
      v38 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v39 = v69;
      URL.appendingPathExtension(_:)();
      v40 = *(v37 + 8);
      v40(v9, v34);
      objc_autoreleasePoolPop(v38);
      v77 = v37 + 8;
      v64 = v40;
      v40(v12, v34);
      (*(v36 + 8))(v73, v74);
      v41 = v70;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v42 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      [(objc_class *)isa writeToURL:v44 atomically:1];

      objc_autoreleasePoolPop(v42);
      v46 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v47 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v48 = swift_allocObject();
      v74 = xmmword_101385D80;
      *(v48 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = v75;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_100008C00();
      *(v48 + 32) = v50;
      *(v48 + 40) = v52;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, "Writing to file: %@", 19, 2, v48);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v54 = NSFileProtectionKey;
      v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v57 = [objc_opt_self() defaultManager];
      sub_100695108(v56);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v59 = String._bridgeToObjectiveC()();

      v80 = 0;
      LODWORD(v50) = [v57 setAttributes:v58 ofItemAtPath:v59 error:&v80];

      if (v50)
      {
        v60 = v80;
        URL.setResourceValues(_:)();
        v61 = isa;
        sub_100016590(v65, v66);

        (*(v71 + 8))(v41, v72);
        v64(v39, v75);
        sub_100A1B358(v76, v67, type metadata accessor for WildModeAssociationRecord);
      }

      else
      {
        v62 = v80;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v65, v66);

        (*(v71 + 8))(v41, v72);
        v64(v39, v49);
      }
    }
  }
}

void sub_1009FF38C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v70 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UUID();
  *&v75 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URL();
  v80 = *(v78 - 8);
  v7 = __chkstk_darwin(v78);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v67 - v11;
  __chkstk_darwin(v10);
  v76 = &v67 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v67 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v83 == v82)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v66 = v22;
      swift_once();
      v22 = v66;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for AccessoryMetadataRecord(0);
    sub_100003F64(&qword_1016B1738, type metadata accessor for AccessoryMetadataRecord, &unk_101400C88);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      objc_autoreleasePoolPop(v24);
      v30 = sub_1010B6FB0(v28, v29, 0);
      v69 = v28;
      v79 = v29;
      v31 = v30;
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v31, v33);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016951F0 != -1)
      {
        swift_once();
      }

      v34 = v78;
      v35 = sub_1000076D4(v78, qword_10177C590);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = *(v75 + 16);
      v68 = a2;
      v37 = v71;
      v36();
      v38 = v80;
      (*(v80 + 16))(v12, v35, v34);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v40 = *(v38 + 8);
      v40(v9, v34);
      objc_autoreleasePoolPop(v39);
      v41 = v34;
      v42 = v40;
      v80 = v38 + 8;
      v40(v12, v41);
      (*(v75 + 8))(v74, v37);
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v78;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      v54 = v76;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = NSFileProtectionKey;
      v57 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v58 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v59 = [objc_opt_self() defaultManager];
      sub_100695108(v58);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v60 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v61 = String._bridgeToObjectiveC()();

      v83 = 0;
      LODWORD(v53) = [v59 setAttributes:v60 ofItemAtPath:v61 error:&v83];

      if (v53)
      {
        v62 = v83;
        v63 = v77;
        URL.setResourceValues(_:)();
        v64 = isa;
        (*(v72 + 8))(v63, v73);

        sub_100016590(v69, v79);
        sub_100A1B358(v68, v70, type metadata accessor for AccessoryMetadataRecord);
      }

      else
      {
        v65 = v83;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v79);

        (*(v72 + 8))(v77, v73);
      }

      v42(v54, v50);
    }
  }
}

void sub_1009FFDFC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v70 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UUID();
  *&v75 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URL();
  v80 = *(v78 - 8);
  v7 = __chkstk_darwin(v78);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v67 - v11;
  __chkstk_darwin(v10);
  v76 = &v67 - v13;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v67 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v83 == v82)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v66 = v22;
      swift_once();
      v22 = v66;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for SessionTokenRecord(0);
    sub_100003F64(&qword_1016ADBF0, type metadata accessor for SessionTokenRecord, &unk_1013C4FF8);
    v25 = isa;
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v25)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      objc_autoreleasePoolPop(v24);
      v30 = sub_1010B6FB0(v28, v29, 0);
      v69 = v28;
      v79 = v29;
      v31 = v30;
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v31, v33);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694A68 != -1)
      {
        swift_once();
      }

      v34 = v78;
      v35 = sub_1000076D4(v78, qword_10177B608);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = *(v75 + 16);
      v68 = a2;
      v37 = v71;
      v36();
      v38 = v80;
      (*(v80 + 16))(v12, v35, v34);
      v39 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v40 = *(v38 + 8);
      v40(v9, v34);
      objc_autoreleasePoolPop(v39);
      v41 = v34;
      v42 = v40;
      v80 = v38 + 8;
      v40(v12, v41);
      (*(v75 + 8))(v74, v37);
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v43 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      objc_autoreleasePoolPop(v43);
      v47 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      v75 = xmmword_101385D80;
      *(v49 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = v78;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_100008C00();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      v54 = v76;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Writing to file: %@", 19, 2, v49);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v75;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = NSFileProtectionKey;
      v57 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v58 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v59 = [objc_opt_self() defaultManager];
      sub_100695108(v58);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v60 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v61 = String._bridgeToObjectiveC()();

      v83 = 0;
      LODWORD(v53) = [v59 setAttributes:v60 ofItemAtPath:v61 error:&v83];

      if (v53)
      {
        v62 = v83;
        v63 = v77;
        URL.setResourceValues(_:)();
        v64 = isa;
        (*(v72 + 8))(v63, v73);

        sub_100016590(v69, v79);
        sub_100A1B358(v68, v70, type metadata accessor for SessionTokenRecord);
      }

      else
      {
        v65 = v83;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v79);

        (*(v72 + 8))(v77, v73);
      }

      v42(v54, v50);
    }
  }
}

void sub_100A0086C(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  isa = a1;
  v71 = a3;
  v5 = type metadata accessor for URLResourceValues();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v74 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = type metadata accessor for UUID();
  v73 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for URL();
  v82 = *(v80 - 8);
  v8 = __chkstk_darwin(v80);
  v72 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v79 = v67 - v11;
  __chkstk_darwin(v10);
  v13 = v67 - v12;
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v67 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (v84 == v83)
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v66 = v22;
      swift_once();
      v22 = v66;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C380, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v25 = type metadata accessor for BeaconEstimatedLocation(0);
    sub_100003F64(&qword_1016BA0B0, type metadata accessor for BeaconEstimatedLocation, &unk_1013E4120);
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      objc_autoreleasePoolPop(v24);
      v30 = sub_1010B6FB0(v28, v29, 0);
      v69 = v28;
      v70 = v29;
      v31 = v30;
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v31, v33);
      v68 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v67[0] = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v34 = v80;
      v67[1] = sub_1000076D4(v80, qword_10177BF38);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v67[0]);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v36 = v82 + 8;
      v35 = *(v82 + 1);
      v35(v13, v34);
      v37 = *(v25 + 20);
      v38 = v73;
      (*(v73 + 16))(v77, a2 + v37, v78);
      v39 = objc_autoreleasePoolPush();
      v68 = a2;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v39);
      v82 = objc_autoreleasePoolPush();
      v40 = v77;
      UUID.uuidString.getter();
      v41 = v72;
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v42 = v41;
      v43 = v80;
      v35(v42, v80);
      objc_autoreleasePoolPop(v82);
      v72 = v35;
      v82 = v36;
      v35(v13, v43);
      (*(v38 + 8))(v40, v78);
      v44 = v74;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v45 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v46);
      v48 = v47;
      [(objc_class *)isa writeToURL:v47 atomically:1];

      objc_autoreleasePoolPop(v45);
      v49 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v50 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v51 = swift_allocObject();
      v78 = xmmword_101385D80;
      *(v51 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_100008C00();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      v55 = v79;
      os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v50, "Writing to file: %@", 19, 2, v51);

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v78;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = NSFileProtectionKey;
      v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v60 = [objc_opt_self() defaultManager];
      sub_100695108(v59);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
      v61 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v62 = String._bridgeToObjectiveC()();

      v84 = 0;
      LODWORD(v54) = [v60 setAttributes:v61 ofItemAtPath:v62 error:&v84];

      if (v54)
      {
        v63 = v84;
        URL.setResourceValues(_:)();
        v64 = isa;
        (*(v75 + 8))(v44, v76);

        sub_100016590(v69, v70);
        sub_100A1B358(v68, v71, type metadata accessor for BeaconEstimatedLocation);
      }

      else
      {
        v65 = v84;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v70);

        (*(v75 + 8))(v44, v76);
      }

      (v72)(v55, v43);
    }
  }
}

uint64_t sub_100A0137C(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v117 = *(v5 - 8);
  __chkstk_darwin(v5);
  v113 = &v111[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = __chkstk_darwin(v7 - 8);
  v115 = &v111[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v116 = &v111[-v10];
  v11 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v11);
  v13 = &v111[-v12];
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v14);
  v16 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100A1B358(a2, v16, type metadata accessor for OwnedBeaconRecord);
  v17 = *a1;
  v120 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v118 = v2;
  v119 = ObjectType;
  if (!sub_1010DF484(v2 + v14[6], &v16[v14[6]]))
  {
    v19 = sub_1010DA578();
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v19;
    *(&v121 + 1) = v20;
    sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v114 = v17;
  v21 = v14[7];
  v22 = *(v11 + 48);
  sub_1000D2A70(v118 + v21, v13, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(&v16[v21], &v13[v22], &qword_1016980D0, &unk_10138F3B0);
  v23 = *(v117 + 48);
  if (v23(v13, 1, v5) == 1)
  {
    if (v23(&v13[v22], 1, v5) == 1)
    {
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_13;
    }
  }

  else
  {
    v24 = v116;
    sub_1000D2A70(v13, v116, &qword_1016980D0, &unk_10138F3B0);
    if (v23(&v13[v22], 1, v5) != 1)
    {
      v93 = v113;
      (*(v117 + 32))(v113, &v13[v22], v5);
      sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v112 = dispatch thunk of static Equatable.== infix(_:_:)();
      v94 = *(v117 + 8);
      v94(v93, v5);
      v94(v116, v5);
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      if (v112)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    (*(v117 + 8))(v24, v5);
  }

  sub_10000B3A8(v13, &qword_1016AF880, &unk_10138CE20);
LABEL_9:
  v25 = v115;
  sub_1000D2A70(&v16[v21], v115, &qword_1016980D0, &unk_10138F3B0);
  if (v23(v25, 1, v5) == 1)
  {
    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
    v121 = 0u;
    v122 = 0u;
    v123 = 0;
  }

  else
  {
    v26 = UUID.uuidString.getter();
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v26;
    *(&v121 + 1) = v27;
    (*(v117 + 8))(v25, v5);
  }

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
LABEL_13:
  v28 = v14[8];
  v29 = type metadata accessor for Date();
  sub_100003F64(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v30 = v118;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(&v122 + 1) = v29;
    v123 = &protocol witness table for Date;
    v31 = sub_1000280DC(&v121);
    (*(*(v29 - 8) + 16))(v31, &v16[v28], v29);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v32 = v14[9];
  v33 = *(v30 + v32);
  v34 = *(v30 + v32 + 8);
  v35 = &v16[v32];
  v36 = *&v16[v32];
  v37 = *&v16[v32 + 8];
  sub_100017D5C(v33, v34);
  sub_100017D5C(v36, v37);
  v38 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v33, v34, v36, v37);
  sub_100016590(v36, v37);
  sub_100016590(v33, v34);
  if (!v38)
  {
    v39 = *v35;
    v40 = v35[1];
    *(&v122 + 1) = &type metadata for Data;
    v123 = &protocol witness table for Data;
    *&v121 = v39;
    *(&v121 + 1) = v40;
    sub_100017D5C(v39, v40);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v41 = v14[12];
  v42 = *(v30 + v41);
  v43 = *(v30 + v41 + 8);
  v44 = &v16[v41];
  v45 = *&v16[v41];
  v46 = *&v16[v41 + 8];
  sub_100017D5C(v42, v43);
  sub_100017D5C(v45, v46);
  v47 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v42, v43, v45, v46);
  sub_100016590(v45, v46);
  sub_100016590(v42, v43);
  if (!v47)
  {
    v48 = *v44;
    v49 = v44[1];
    *(&v122 + 1) = &type metadata for Data;
    v123 = &protocol witness table for Data;
    *&v121 = v48;
    *(&v121 + 1) = v49;
    sub_100017D5C(v48, v49);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v50 = v14[13];
  v51 = *(v30 + v50);
  v52 = *(v30 + v50 + 8);
  v53 = &v16[v50];
  v54 = *&v16[v50];
  v55 = *&v16[v50 + 8];
  sub_100017D5C(v51, v52);
  sub_100017D5C(v54, v55);
  v56 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v51, v52, v54, v55);
  sub_100016590(v54, v55);
  sub_100016590(v51, v52);
  if (!v56)
  {
    v57 = *v53;
    v58 = v53[1];
    *(&v122 + 1) = &type metadata for Data;
    v123 = &protocol witness table for Data;
    *&v121 = v57;
    *(&v121 + 1) = v58;
    sub_100017D5C(v57, v58);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v59 = v14[14];
  v60 = v118;
  v61 = *(v118 + v59);
  v62 = *(v118 + v59 + 8);
  v63 = &v16[v59];
  v65 = *v63;
  v64 = v63[1];
  if ((v61 != *v63 || v62 != v64) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v65;
    *(&v121 + 1) = v64;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v66 = v14[15];
  v67 = *(v60 + v66);
  v68 = *(v60 + v66 + 8);
  v69 = &v16[v66];
  v71 = *v69;
  v70 = v69[1];
  if ((v67 != *v69 || v68 != v70) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v122 + 1) = &type metadata for String;
    v123 = &protocol witness table for String;
    *&v121 = v71;
    *(&v121 + 1) = v70;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v72 = v14[16];
  v73 = *(v60 + v72);
  v74 = *&v16[v72];
  if (v73 != v74)
  {
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v74;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v75 = v14[17];
  v76 = *(v60 + v75);
  v77 = *&v16[v75];
  if (v76 != v77)
  {
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v77;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v78 = v14[18];
  v79 = *(v60 + v78);
  v80 = v16[v78];
  if (v79 != 3)
  {
    if (v79 == v80)
    {
      goto LABEL_41;
    }

    if (v80 == 3)
    {
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
LABEL_40:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_41;
    }

LABEL_39:
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v80;
    goto LABEL_40;
  }

  if (v80 != 3)
  {
    goto LABEL_39;
  }

LABEL_41:
  v81 = v14[19];
  v82 = *(v60 + v81);
  v83 = v16[v81];
  if (v82 != v83)
  {
    *(&v122 + 1) = &type metadata for Int;
    v123 = &protocol witness table for Int;
    *&v121 = v83;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v84 = v14[10];
  v86 = *(v60 + v84);
  v85 = *(v60 + v84 + 8);
  v87 = &v16[v84];
  v89 = *&v16[v84];
  v88 = *&v16[v84 + 8];
  if (v85 >> 60 == 15)
  {
    if (v88 >> 60 == 15)
    {
      sub_10002E98C(v86, v85);
      sub_10002E98C(v89, v88);
      sub_100006654(v86, v85);
      goto LABEL_54;
    }
  }

  else if (v88 >> 60 != 15)
  {
    sub_10002E98C(v86, v85);
    sub_10002E98C(v89, v88);
    sub_10002E98C(v86, v85);
    sub_10002E98C(v89, v88);
    v95 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v86, v85, v89, v88);
    sub_100006654(v89, v88);
    sub_100006654(v89, v88);
    sub_100006654(v86, v85);
    sub_100006654(v86, v85);
    if (v95)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  sub_10002E98C(v86, v85);
  sub_10002E98C(v89, v88);
  sub_100006654(v86, v85);
  sub_100006654(v89, v88);
LABEL_48:
  v90 = v87[1];
  if (v90 >> 60 == 15)
  {
    v91 = String._bridgeToObjectiveC()();
    [v120 setObject:0 forKeyedSubscript:v91];
  }

  else
  {
    v92 = *v87;
    *(&v122 + 1) = &type metadata for Data;
    v123 = &protocol witness table for Data;
    *&v121 = v92;
    *(&v121 + 1) = v90;
    sub_10002E98C(v92, v90);
    sub_100017D5C(v92, v90);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100006654(v92, v90);
  }

LABEL_54:
  v96 = v14[11];
  v98 = *(v60 + v96);
  v97 = *(v60 + v96 + 8);
  v99 = &v16[v96];
  v101 = *&v16[v96];
  v100 = *&v16[v96 + 8];
  if (v97 >> 60 == 15)
  {
    if (v100 >> 60 == 15)
    {
      sub_10002E98C(v98, v97);
      sub_10002E98C(v101, v100);
      sub_100006654(v98, v97);
      v102 = v118;
      goto LABEL_63;
    }
  }

  else if (v100 >> 60 != 15)
  {
    sub_10002E98C(v98, v97);
    sub_10002E98C(v101, v100);
    sub_10002E98C(v98, v97);
    sub_10002E98C(v101, v100);
    v106 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v98, v97, v101, v100);
    sub_100006654(v101, v100);
    sub_100006654(v101, v100);
    sub_100006654(v98, v97);
    sub_100006654(v98, v97);
    v102 = v118;
    if (v106)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  sub_10002E98C(v98, v97);
  sub_10002E98C(v101, v100);
  sub_100006654(v98, v97);
  sub_100006654(v101, v100);
  v102 = v118;
LABEL_59:
  v103 = v99[1];
  if (v103 >> 60 == 15)
  {
    v104 = String._bridgeToObjectiveC()();
    [v120 setObject:0 forKeyedSubscript:v104];
  }

  else
  {
    v105 = *v99;
    *(&v122 + 1) = &type metadata for Data;
    v123 = &protocol witness table for Data;
    *&v121 = v105;
    *(&v121 + 1) = v103;
    sub_10002E98C(v105, v103);
    sub_100017D5C(v105, v103);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100006654(v105, v103);
  }

LABEL_63:
  v107 = v14[20];
  v108 = *(v102 + v107);
  v109 = v16[v107];
  if (v108 != v109)
  {
    *(&v122 + 1) = &type metadata for Bool;
    v123 = &protocol witness table for Bool;
    LOBYTE(v121) = v109;
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100A1B3C0(v16, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_100A021F0(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v8, type metadata accessor for LostModeRecord);
  [*a1 encryptedValues];
  swift_getObjectType();
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v9 = UUID.uuidString.getter();
    *(&v34 + 1) = &type metadata for String;
    v35 = &protocol witness table for String;
    *&v33 = v9;
    *(&v33 + 1) = v10;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v11 = v6[7];
  v12 = (v3 + v11);
  v13 = *(v3 + v11 + 8);
  v14 = &v8[v11];
  v16 = *v14;
  v15 = *(v14 + 1);
  if (!v13)
  {
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v15)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_14;
  }

  v17 = *v12 == v16 && v13 == v15;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_12:
    *(&v34 + 1) = &type metadata for String;
    v35 = &protocol witness table for String;
    *&v33 = v16;
    *(&v33 + 1) = v15;
LABEL_14:

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_15:
  v18 = v6[8];
  v19 = (v3 + v18);
  v20 = *(v3 + v18 + 8);
  v21 = &v8[v18];
  v23 = *v21;
  v22 = *(v21 + 1);
  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v22)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_26;
  }

  v24 = *v19 == v23 && v20 == v22;
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_24:
    *(&v34 + 1) = &type metadata for String;
    v35 = &protocol witness table for String;
    *&v33 = v23;
    *(&v33 + 1) = v22;
LABEL_26:

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_27:
  v25 = v6[9];
  v26 = (v3 + v25);
  v27 = *(v3 + v25 + 8);
  v28 = &v8[v25];
  v30 = *v28;
  v29 = *(v28 + 1);
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (!v29)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_38;
  }

  v31 = *v26 == v30 && v27 == v29;
  if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_36:
    *(&v34 + 1) = &type metadata for String;
    v35 = &protocol witness table for String;
    *&v33 = v30;
    *(&v33 + 1) = v29;
LABEL_38:

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_39:
  swift_unknownObjectRelease();
  return sub_100A1B3C0(v8, type metadata accessor for LostModeRecord);
}

uint64_t sub_100A02568(id *a1, uint64_t a2)
{
  v3 = v2;
  v59 = type metadata accessor for UUID();
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v10, type metadata accessor for SafeLocation);
  v11 = [*a1 encryptedValues];
  swift_getObjectType();
  v12 = v8[7];
  v13 = *(v3 + v12);
  v14 = *(v3 + v12 + 8);
  v15 = &v10[v12];
  v17 = *v15;
  v16 = *(v15 + 1);
  v18 = v13 == *v15 && v14 == v16;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v62 = &type metadata for String;
    v63 = &protocol witness table for String;
    v60 = *&v17;
    v61 = v16;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v19 = v8[8];
  v20 = *&v10[v19];
  if (*(v3 + v19) != v20)
  {
    v62 = &type metadata for Double;
    v63 = &protocol witness table for Double;
    v60 = v20;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v21 = v8[9];
  v22 = *&v10[v21];
  if (*(v3 + v21) != v22)
  {
    v62 = &type metadata for Double;
    v63 = &protocol witness table for Double;
    v60 = v22;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v23 = v8[10];
  v24 = *&v10[v23];
  if (*(v3 + v23) != v24)
  {
    v62 = &type metadata for Double;
    v63 = &protocol witness table for Double;
    v60 = v24;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v25 = v8[11];
  v26 = *(v3 + v25);
  *&v27 = v10[v25];
  if (v26 != LODWORD(v27))
  {
    v62 = &type metadata for Int;
    v63 = &protocol witness table for Int;
    v60 = v27;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v28 = v8[6];
  v29 = *(v3 + v28);
  *&v30 = v10[v28];
  if (v29 != LODWORD(v30))
  {
    v62 = &type metadata for Int;
    v63 = &protocol witness table for Int;
    v60 = v30;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v31 = v8[12];
  v32 = *(v3 + v31);
  *&v33 = v10[v31];
  if (v32 != LODWORD(v33))
  {
    v62 = &type metadata for Int;
    v63 = &protocol witness table for Int;
    v60 = v33;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v34 = v8[13];
  v35 = *&v10[v34];
  if (sub_1003902F4(*(v3 + v34), v35))
  {
    sub_100A1B3C0(v10, type metadata accessor for SafeLocation);
    return swift_unknownObjectRelease();
  }

  else
  {
    v37 = *(v35 + 16);
    if (v37)
    {
      v54 = v11;
      v55 = v10;
      v60 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      sub_101123BB8(0, v37, 0);
      v38 = v60;
      v40 = *(v6 + 16);
      v39 = v6 + 16;
      v41 = v35 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
      v56 = *(v39 + 56);
      v57 = v40;
      v42 = (v39 - 8);
      do
      {
        v44 = v58;
        v43 = v59;
        v57(v58, v41, v59);
        v45 = UUID.uuidString.getter();
        v47 = v46;
        (*v42)(v44, v43);
        v60 = v38;
        v49 = *(*&v38 + 16);
        v48 = *(*&v38 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_101123BB8((v48 > 1), v49 + 1, 1);
          v38 = v60;
        }

        *(*&v38 + 16) = v49 + 1;
        v50 = (*&v38 + 16 * v49);
        v50[4] = v45;
        v50[5] = v47;
        v41 += v56;
        --v37;
      }

      while (v37);
      v11 = v54;
      v10 = v55;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v52 = String._bridgeToObjectiveC()();
    [v11 setObject:isa forKeyedSubscript:v52];
    swift_unknownObjectRelease();

    return sub_100A1B3C0(v10, type metadata accessor for SafeLocation);
  }
}

void sub_100A02AB4(id *a1, uint64_t a2)
{
  v30 = type metadata accessor for UUID();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 encryptedValues];
  v9 = *(type metadata accessor for LeashRecord(0) + 24);
  v10 = *(a2 + v9);
  if (sub_1003902F4(*(v2 + v9), v10))
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v26 = v8;
      v31 = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v11, 0);
      v12 = v31;
      v14 = *(v5 + 16);
      v13 = v5 + 16;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v27 = *(v13 + 56);
      v28 = v14;
      v29 = v13;
      v16 = (v13 - 8);
      do
      {
        v17 = v30;
        v28(v7, v15, v30);
        v18 = UUID.uuidString.getter();
        v20 = v19;
        (*v16)(v7, v17);
        v31 = v12;
        v22 = v12[2];
        v21 = v12[3];
        if (v22 >= v21 >> 1)
        {
          sub_101123BB8((v21 > 1), v22 + 1, 1);
          v12 = v31;
        }

        v12[2] = v22 + 1;
        v23 = &v12[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
        v15 += v27;
        --v11;
      }

      while (v11);
      v8 = v26;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKeyedSubscript:v25];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_100A02D40(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1007731BC(a1, a2, v4);
}

Swift::Int sub_100A02DC0(uint64_t *a1)
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
        sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100A03154(v8, v9, a1, v4);
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
    return sub_100A02F04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100A02F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v8 = __chkstk_darwin(v36);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v28 - v12);
  result = __chkstk_darwin(v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v22;
    while (1)
    {
      sub_1000D2A70(v23, v17, &qword_1016B1780, &unk_1013B36E0);
      sub_1000D2A70(v20, v13, &qword_1016B1780, &unk_1013B36E0);
      v25 = *v17;
      v26 = *v13;
      sub_10000B3A8(v13, &qword_1016B1780, &unk_1013B36E0);
      result = sub_10000B3A8(v17, &qword_1016B1780, &unk_1013B36E0);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1000D2AD8(v23, v10, &qword_1016B1780, &unk_1013B36E0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000D2AD8(v10, v20, &qword_1016B1780, &unk_1013B36E0);
      v20 += v21;
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

uint64_t sub_100A03154(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v99 = a1;
  v112 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v107 = *(v112 - 8);
  v6 = __chkstk_darwin(v112);
  v102 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v111 = &v97 - v9;
  v10 = __chkstk_darwin(v8);
  v113 = (&v97 - v11);
  result = __chkstk_darwin(v10);
  v14 = (&v97 - v13);
  v109 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_96:
    a3 = *v99;
    if (!*v99)
    {
      goto LABEL_135;
    }

    a4 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v110;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_100B31E68(a4);
    }

    v114 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v93 = *(result + 16 * a4);
        v94 = result;
        v95 = *(result + 16 * (a4 - 1) + 40);
        sub_100A03A44(*v109 + *(v107 + 72) * v93, *v109 + *(v107 + 72) * *(result + 16 * (a4 - 1) + 32), *v109 + *(v107 + 72) * v95, a3);
        if (v16)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100B31E68(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_123;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v114 = v94;
        sub_100B31DDC(a4 - 1);
        result = v114;
        a4 = *(v114 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v97 = a4;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v18 = &qword_1016B1780;
  v19 = &unk_1013B36E0;
  while (1)
  {
    v20 = v16;
    v103 = v17;
    if (v16 + 1 >= v15)
    {
      v15 = v16 + 1;
    }

    else
    {
      v21 = *v109;
      v22 = *(v107 + 72);
      a3 = *v109 + v22 * (v16 + 1);
      sub_1000D2A70(a3, v14, v18, v19);
      v23 = v113;
      sub_1000D2A70(v21 + v22 * v16, v113, v18, v19);
      v24 = *v14;
      v25 = *v23;
      sub_10000B3A8(v23, v18, v19);
      result = sub_10000B3A8(v14, v18, v19);
      v98 = v16;
      a4 = v16 + 2;
      v108 = v22;
      v26 = v21 + v22 * (v16 + 2);
      while (v15 != a4)
      {
        sub_1000D2A70(v26, v14, v18, v19);
        v16 = v113;
        sub_1000D2A70(a3, v113, v18, v19);
        v27 = *v14;
        v28 = *v16;
        sub_10000B3A8(v16, v18, v19);
        result = sub_10000B3A8(v14, v18, v19);
        ++a4;
        v26 += v108;
        a3 += v108;
        if (v25 < v24 == v28 >= v27)
        {
          v15 = a4 - 1;
          break;
        }
      }

      v20 = v98;
      if (v25 < v24)
      {
        if (v15 < v98)
        {
          goto LABEL_126;
        }

        if (v98 < v15)
        {
          a4 = v108 * (v15 - 1);
          v29 = v15 * v108;
          v30 = v15;
          v31 = v98;
          a3 = v98 * v108;
          v106 = v15;
          do
          {
            if (v31 != --v30)
            {
              v105 = v30;
              v32 = *v109;
              if (!*v109)
              {
                goto LABEL_132;
              }

              v16 = v32 + a3;
              sub_1000D2AD8(v32 + a3, v102, v18, v19);
              if (a3 < a4 || v16 >= v32 + v29)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000D2AD8(v102, v32 + a4, v18, v19);
              v30 = v105;
              v15 = v106;
            }

            ++v31;
            a4 -= v108;
            v29 -= v108;
            a3 += v108;
          }

          while (v31 < v30);
          v20 = v98;
        }
      }
    }

    v33 = v109[1];
    if (v15 < v33)
    {
      if (__OFSUB__(v15, v20))
      {
        goto LABEL_125;
      }

      if (v15 - v20 < v97)
      {
        if (__OFADD__(v20, v97))
        {
          goto LABEL_127;
        }

        if (v20 + v97 >= v33)
        {
          v16 = v109[1];
        }

        else
        {
          v16 = v20 + v97;
        }

        if (v16 < v20)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v15 != v16)
        {
          break;
        }
      }
    }

    v16 = v15;
    if (v15 < v20)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v103;
    }

    else
    {
      result = sub_100A5B430(0, *(v103 + 2) + 1, 1, v103);
      v17 = result;
    }

    a4 = *(v17 + 2);
    v34 = *(v17 + 3);
    a3 = a4 + 1;
    if (a4 >= v34 >> 1)
    {
      result = sub_100A5B430((v34 > 1), a4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = a3;
    v35 = &v17[16 * a4];
    *(v35 + 4) = v20;
    *(v35 + 5) = v16;
    v108 = *v99;
    if (!v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v36 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v37 = *(v17 + 4);
          v38 = *(v17 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_52:
          if (v40)
          {
            goto LABEL_113;
          }

          v53 = &v17[16 * a3];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_116;
          }

          v59 = &v17[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_120;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v63 = &v17[16 * a3];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_66:
        if (v58)
        {
          goto LABEL_115;
        }

        v66 = &v17[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v36 - 1;
        if (v36 - 1 >= a3)
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

        if (!*v109)
        {
          goto LABEL_131;
        }

        v74 = v17;
        a3 = *&v17[16 * a4 + 32];
        v75 = *&v17[16 * v36 + 40];
        v76 = v110;
        sub_100A03A44(*v109 + *(v107 + 72) * a3, *v109 + *(v107 + 72) * *&v17[16 * v36 + 32], *v109 + *(v107 + 72) * v75, v108);
        v110 = v76;
        if (v76)
        {
        }

        if (v75 < a3)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_100B31E68(v74);
        }

        if (a4 >= *(v74 + 2))
        {
          goto LABEL_110;
        }

        v77 = &v74[16 * a4];
        *(v77 + 4) = a3;
        *(v77 + 5) = v75;
        v114 = v74;
        a4 = &v114;
        result = sub_100B31DDC(v36);
        v17 = v114;
        a3 = *(v114 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v17[16 * a3 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_111;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_112;
      }

      v48 = &v17[16 * a3];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_114;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_117;
      }

      if (v52 >= v44)
      {
        v70 = &v17[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_121;
        }

        if (v39 < v73)
        {
          v36 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v15 = v109[1];
    if (v16 >= v15)
    {
      goto LABEL_96;
    }
  }

  v78 = *v109;
  v79 = *(v107 + 72);
  v80 = *v109 + v79 * (v15 - 1);
  v81 = v15;
  v82 = -v79;
  v98 = v20;
  a4 = v20 - v81;
  v106 = v81;
  v100 = v79;
  v101 = v16;
  a3 = v78 + v81 * v79;
LABEL_85:
  v104 = a3;
  v105 = a4;
  v108 = v80;
  v83 = v80;
  while (1)
  {
    sub_1000D2A70(a3, v14, v18, v19);
    v84 = v113;
    sub_1000D2A70(v83, v113, v18, v19);
    v85 = *v14;
    v86 = *v84;
    sub_10000B3A8(v84, v18, v19);
    result = sub_10000B3A8(v14, v18, v19);
    if (v86 >= v85)
    {
LABEL_84:
      v16 = v101;
      v80 = v108 + v100;
      a4 = v105 - 1;
      a3 = v104 + v100;
      if (++v106 != v101)
      {
        goto LABEL_85;
      }

      v20 = v98;
      if (v101 < v98)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v78)
    {
      break;
    }

    v87 = v19;
    v88 = v18;
    v89 = v111;
    sub_1000D2AD8(a3, v111, v88, v87);
    swift_arrayInitWithTakeFrontToBack();
    v90 = v89;
    v18 = v88;
    v19 = v87;
    sub_1000D2AD8(v90, v83, v18, v87);
    v83 += v82;
    a3 += v82;
    if (__CFADD__(a4++, 1))
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

uint64_t sub_100A03A44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = a3;
  v44 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v7 = __chkstk_darwin(v44);
  v45 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v7);
  v11 = (&v38 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v49 = a1;
  v48 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v41 = v24;
      v42 = a4;
      do
      {
        v39 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v43 = v26;
        while (1)
        {
          v29 = v46;
          if (v26 <= a1)
          {
            v49 = v26;
            v47 = v39;
            goto LABEL_58;
          }

          v40 = v23;
          v46 += v24;
          v30 = v25 + v24;
          sub_1000D2A70(v30, v11, &qword_1016B1780, &unk_1013B36E0);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v45;
          sub_1000D2A70(v32, v45, &qword_1016B1780, &unk_1013B36E0);
          v35 = *v33;
          v36 = *v34;
          v37 = v34;
          v11 = v33;
          sub_10000B3A8(v37, &qword_1016B1780, &unk_1013B36E0);
          sub_10000B3A8(v33, &qword_1016B1780, &unk_1013B36E0);
          if (v36 < v35)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || v46 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v30;
            }
          }

          v25 = v23;
          v26 = v43;
          v28 = v30 > v42;
          v24 = v41;
          if (!v28)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        if (v29 < v43 || v46 >= v43)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v41;
        }

        else
        {
          v24 = v41;
          a2 = v31;
          if (v29 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v23 = v40;
      }

      while (v25 > v42);
    }

LABEL_57:
    v49 = a2;
    v47 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v47 = a4 + v16;
    if (v16 >= 1 && a2 < v46)
    {
      do
      {
        sub_1000D2A70(a2, v11, &qword_1016B1780, &unk_1013B36E0);
        v20 = v45;
        sub_1000D2A70(a4, v45, &qword_1016B1780, &unk_1013B36E0);
        v21 = *v11;
        v22 = *v20;
        sub_10000B3A8(v20, &qword_1016B1780, &unk_1013B36E0);
        sub_10000B3A8(v11, &qword_1016B1780, &unk_1013B36E0);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v49 = a1;
      }

      while (a4 < v18 && a2 < v46);
    }
  }

LABEL_58:
  sub_10060ABEC(&v49, &v48, &v47);
  return 1;
}

void *sub_100A03F44(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_100A03FDC(uint64_t a1, uint64_t a2)
{

  return sub_100A0405C(a1, a2, sub_100A042B8, sub_100A042B8);
}

void *sub_100A0405C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_100A03F44(v15, v10, a2, a1, a4);
  }

  return v13;
}

void *sub_100A04238(uint64_t a1, uint64_t a2)
{

  return sub_100A0405C(a1, a2, sub_100A04DC8, sub_100A04DC8);
}

unint64_t *sub_100A042B8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v52 = result;
  v56 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_26:
    v55 = 0;
    v27 = 0;
    v28 = v4 + 56;
    v29 = 1 << *(v4 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v4 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
    v51 = v32;
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v59 = (v31 - 1) & v31;
LABEL_38:
      v54 = v34 | (v27 << 6);
      v37 = (*(a3 + 48) + 24 * v54);
      v38 = *v37;
      v40 = *(v37 + 1);
      v39 = *(v37 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v38);

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v56 + 32);
      v43 = v41 & ~v42;
      if ((*(v33 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        v45 = *(v56 + 48);
        while (1)
        {
          v46 = (v45 + 24 * v43);
          if (*v46 == v38)
          {
            v47 = *(v46 + 1) == v40 && *(v46 + 2) == v39;
            if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v43 = (v43 + 1) & v44;
          if (((*(v33 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        v26 = __OFADD__(v55++, 1);
        v32 = v51;
        v31 = v59;
        if (v26)
        {
          __break(1u);
LABEL_50:
          v4 = a3;
          goto LABEL_51;
        }
      }

      else
      {
LABEL_30:

        v32 = v51;
        v31 = v59;
      }
    }

    v35 = v27;
    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v27 >= v32)
      {
        goto LABEL_50;
      }

      v36 = *(v28 + 8 * v27);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v59 = (v36 - 1) & v36;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v55 = 0;
    v5 = 0;
    v48 = a4 + 56;
    v6 = 1 << *(a4 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(a4 + 56);
    v9 = (v6 + 63) >> 6;
    v58 = a3 + 56;
    v50 = v9;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v53 = (v8 - 1) & v8;
LABEL_14:
      v13 = (*(a4 + 48) + 24 * (v10 | (v5 << 6)));
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);

      String.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v58 + 8 * (v19 >> 6))) != 0)
      {
        v22 = ~v18;
        v23 = *(a3 + 48);
        while (1)
        {
          v24 = (v23 + 24 * v19);
          if (*v24 == v14)
          {
            v25 = *(v24 + 1) == v15 && *(v24 + 2) == v16;
            if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v19 = (v19 + 1) & v22;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if ((*(v58 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
          {
            goto LABEL_6;
          }
        }

        v9 = v50;
        v52[v20] |= v21;
        a4 = v56;
        v26 = __OFADD__(v55++, 1);
        v4 = a3;
        v8 = v53;
        if (v26)
        {
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
LABEL_6:

        a4 = v56;
        v4 = a3;
        v9 = v50;
        v8 = v53;
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
LABEL_51:

        return sub_10060C86C(v52, a2, v55, v4);
      }

      v12 = *(v48 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v53 = (v12 - 1) & v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100A046E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = v61 - v11;
  v13 = __chkstk_darwin(v10);
  v76 = (v61 - v14);
  result = __chkstk_darwin(v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_10060AF64(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

Swift::Int sub_100A04DC8(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v51 = result;
  v53 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v29 = 0;
    v30 = a3 + 56;
    v31 = 1 << *(a3 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(a3 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = a4 + 56;
    v52 = 0;
LABEL_28:
    while (v33)
    {
      v36 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_35:
      v39 = v36 | (v29 << 6);
      v40 = (*(v4 + 48) + 8 * v39);
      v41 = *v40;
      v42 = v40[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v41);
      Hasher._combine(_:)(v42);
      result = Hasher._finalize()();
      v4 = a3;
      v43 = -1 << *(v53 + 32);
      v44 = result & ~v43;
      if ((*(v35 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
      {
        v45 = ~v43;
        while (1)
        {
          v46 = (*(v53 + 48) + 8 * v44);
          v48 = *v46;
          v47 = v46[1];
          if (v48 == v41 && v47 == v42)
          {
            break;
          }

          v44 = (v44 + 1) & v45;
          if (((*(v35 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        *(v51 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_48;
        }

        ++v52;
      }
    }

    v37 = v29;
    while (1)
    {
      v29 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v29 >= v34)
      {
LABEL_45:

        return sub_10060D788(v51, a2, v52, v4);
      }

      v38 = *(v30 + 8 * v29);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v33 = (v38 - 1) & v38;
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v52 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = (*(a4 + 48) + 8 * (v12 | (v5 << 6)));
      v16 = *v15;
      v17 = v15[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      a4 = v53;
      v4 = a3;
      v18 = -1 << *(a3 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v11 + 8 * (v19 >> 6))) != 0)
      {
        v22 = *(a3 + 48);
        v23 = (v22 + 8 * v19);
        v25 = *v23;
        v24 = v23[1];
        if (v25 == v16 && v24 == v17)
        {
LABEL_22:
          v51[v20] |= v21;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_49;
          }

          ++v52;
        }

        else
        {
          v27 = ~v18;
          while (1)
          {
            v19 = (v19 + 1) & v27;
            v20 = v19 >> 6;
            v21 = 1 << v19;
            if ((*(v11 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
            {
              break;
            }

            v28 = (v22 + 8 * v19);
            if (*v28 == v16 && v28[1] == v17)
            {
              goto LABEL_22;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_45;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_100A05120(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100A5C0F0(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_100A05540(v7, a2, 1, a3, &unk_1016B1630, &qword_10138CA48, &qword_101697948, &qword_10138CA40);
  *v3 = v5;
  return result;
}

unint64_t sub_100A05214(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100A5C114(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_100A05540(v7, a2, 1, a3, &unk_1016B1610, &qword_10138CA38, &qword_101697940, &qword_10138CA30);
  *v3 = v5;
  return result;
}

unint64_t sub_100A05308(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100A5C138(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_100A05540(v7, a2, 1, a3, &unk_1016B15C0, &unk_1013D7870, &qword_101697938, &qword_10138CA28);
  *v3 = v5;
  return result;
}

uint64_t sub_100A05454(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, 1, a3);
  *v5 = v7;
  return result;
}

unint64_t sub_100A05540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = sub_1000BC4D4(a5, a6);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000B3A8(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_10000B3A8(a4, v31, v32);
  }

  result = sub_1000D2A70(a4, v21, a5, a6);
  if (v18 >= v23)
  {
    return sub_10000B3A8(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_100A056D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for UUID();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000B3A8(v25, &qword_101698D18, &qword_1013908A8);
  }

  if (v18 < 1)
  {
    return sub_10000B3A8(v25, &qword_101698D18, &qword_1013908A8);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_10000B3A8(v25, &qword_101698D18, &qword_1013908A8);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_100A05874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000B3A8(a4, &qword_1016ABF38, &qword_1013BFE10);
  }

  if (v17 < 1)
  {
    return sub_10000B3A8(a4, &qword_1016ABF38, &qword_1013BFE10);
  }

  result = sub_100A1B358(a4, v15, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
  if (v12 >= v17)
  {
    return sub_10000B3A8(a4, &qword_1016ABF38, &qword_1013BFE10);
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_100A05A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v8 - 8);
  v155 = &v147 - v9;
  v156 = type metadata accessor for OwnedBeaconRecord(0);
  v154 = *(v156 - 8);
  __chkstk_darwin(v156);
  v153 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v11 - 8);
  v150 = (&v147 - v12);
  v149 = type metadata accessor for OwnedBeaconGroup(0);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v157 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v14 - 8);
  v152 = &v147 - v15;
  v16 = type metadata accessor for UUID();
  v168 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v151 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v147 - v19;
  v21 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v147 - v22;
  v24 = type metadata accessor for BeaconProductInfoRecord(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v158 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172[3] = a3;
  v172[4] = a4;
  v27 = sub_1000280DC(v172);
  v28 = a1;
  v29 = a3;
  (*(*(a3 - 8) + 16))(v27, v28, a3);
  v166 = a2;
  v167 = a3;
  v30 = *(a2 + 280);
  v31 = *(*(a4 + 8) + 8);
  v32 = *(v31 + 32);
  v159 = v31;
  v160 = v32;
  v161 = v31 + 32;
  (v32)(v29);
  v147 = v30;
  sub_100AC1584(v20, v23);
  v33 = *(v168 + 8);
  v162 = v20;
  v163 = v33;
  v164 = v168 + 8;
  v165 = v16;
  v33(v20, v16);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000B3A8(v23, &unk_1016AF8C0, &unk_1013A07A0);
    v34 = v167;
    if ((*(a4 + 112))(v167, a4))
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177B780);
      sub_10001F280(v172, v170);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v169 = v39;
        *v38 = 141558275;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        sub_1000035D0(v170, v171);
        v40 = v162;
        (v160)(v34, v159);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v41 = v165;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        v163(v40, v41);
        sub_100007BAC(v170);
        v45 = sub_1000136BC(v42, v44, &v169);

        *(v38 + 14) = v45;
        v46 = "Can't monitor beacon: %{private,mask.hash}s due to: accessory beacon but missing product info!";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v36, v37, v46, v38, 0x16u);
        sub_100007BAC(v39);

        goto LABEL_60;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v47 = v158;
    sub_100A18C9C(v23, v158, type metadata accessor for BeaconProductInfoRecord);
    v34 = v167;
    if (((*(a4 + 112))(v167, a4) & 1) != 0 && *(v47 + *(v24 + 36)) == 1)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_1000076D4(v48, qword_10177B780);
      sub_10001F280(v172, v170);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v169 = v52;
        *v51 = 141558275;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        sub_1000035D0(v170, v171);
        v53 = v162;
        (v160)(v34, v159);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v54 = v165;
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v163(v53, v54);
        sub_100007BAC(v170);
        v58 = sub_1000136BC(v55, v57, &v169);

        *(v51 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v49, v50, "Can't monitor beacon: %{private,mask.hash}s due to: hidden accessory.", v51, 0x16u);
        sub_100007BAC(v52);

        v59 = type metadata accessor for BeaconProductInfoRecord;
        v60 = v47;
LABEL_13:
        sub_100A1B3C0(v60, v59);
LABEL_60:
        v115 = 0;
        goto LABEL_61;
      }

      v90 = type metadata accessor for BeaconProductInfoRecord;
      v91 = v47;
LABEL_37:
      sub_100A1B3C0(v91, v90);
LABEL_59:
      sub_100007BAC(v170);
      goto LABEL_60;
    }

    sub_100A1B3C0(v47, type metadata accessor for BeaconProductInfoRecord);
  }

  if ((sub_100A072EC(v27, v166, v34, a4) & 1) == 0)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000076D4(v68, qword_10177B780);
    sub_10001F280(v172, v170);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v169 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      sub_1000035D0(v170, v171);
      v69 = v162;
      (v160)(v34, v159);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = v165;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v163(v69, v70);
      sub_100007BAC(v170);
      v74 = sub_1000136BC(v71, v73, &v169);

      *(v38 + 14) = v74;
      v46 = "Can't monitor beacon: %{private,mask.hash}s due to: unsupported beacon.";
      goto LABEL_25;
    }

    goto LABEL_58;
  }

  if (sub_1012BD9FC(v34, a4))
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177B780);
    sub_10001F280(v172, v170);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v169 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      sub_1000035D0(v170, v171);
      v62 = v162;
      (v160)(v34, v159);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = v165;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v163(v62, v63);
      sub_100007BAC(v170);
      v67 = sub_1000136BC(v64, v66, &v169);

      *(v38 + 14) = v67;
      v46 = "Can't monitor beacon: %{private,mask.hash}s due to: this device.";
      goto LABEL_25;
    }

    goto LABEL_58;
  }

  CurrentValueSubject.value.getter();

  v167 = v170[0];
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v75 = qword_10177C218;
  v76 = objc_opt_self();
  v77 = [v76 sharedInstance];
  v78 = [v77 isInternalBuild];

  if (v78)
  {
    v79 = String._bridgeToObjectiveC()();
    v80 = [v75 BOOLForKey:v79];

    if (v80)
    {
      v81 = [v76 sharedInstance];
      LOBYTE(v80) = [v81 isInternalBuild];
    }
  }

  else
  {
    LOBYTE(v80) = 0;
  }

  v82 = v168;
  v83 = (*(a4 + 120))(v34, a4);
  v84 = v157;
  if (v83)
  {
    if (!((v167 > 1) | v80 & 1))
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      sub_1000076D4(v92, qword_10177B780);
      sub_10001F280(v172, v170);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v169 = v39;
        *v38 = 141558275;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        sub_1000035D0(v170, v171);
        v93 = v162;
        (v160)(v34, v159);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v94 = v165;
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        v163(v93, v94);
        sub_100007BAC(v170);
        v98 = sub_1000136BC(v95, v97, &v169);

        *(v38 + 14) = v98;
        v46 = "Can't monitor beacon: %{private,mask.hash}s due to: airpods beacon but less than 2 adv buffers.";
        goto LABEL_25;
      }

      goto LABEL_58;
    }

    v85 = v152;
    (*(a4 + 200))(v34, a4);
    v86 = v165;
    if ((*(v82 + 48))(v85, 1, v165) == 1)
    {
      v87 = &qword_1016980D0;
      v88 = &unk_10138F3B0;
      v89 = v85;
LABEL_44:
      sub_10000B3A8(v89, v87, v88);
      goto LABEL_45;
    }

    v99 = v151;
    (*(v82 + 32))(v151, v85, v86);
    v100 = v150;
    sub_100AC53EC(v99, v150);
    if ((*(v148 + 48))(v100, 1, v149) == 1)
    {
      v163(v99, v86);
      v87 = &unk_1016AF8B0;
      v88 = &unk_1013A0700;
      v89 = v100;
      goto LABEL_44;
    }

    sub_100A18C9C(v100, v84, type metadata accessor for OwnedBeaconGroup);
    if ((sub_100518118() & 1) == 0)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v134 = type metadata accessor for Logger();
      sub_1000076D4(v134, qword_10177B780);
      sub_10001F280(v172, v170);
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.default.getter();
      v137 = os_log_type_enabled(v135, v136);
      v138 = v151;
      if (v137)
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v169 = v140;
        *v139 = 141558275;
        *(v139 + 4) = 1752392040;
        *(v139 + 12) = 2081;
        sub_1000035D0(v170, v171);
        v141 = v162;
        (v160)(v34, v159);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v142 = dispatch thunk of CustomStringConvertible.description.getter();
        v144 = v143;
        v145 = v163;
        v163(v141, v86);
        sub_100007BAC(v170);
        v146 = sub_1000136BC(v142, v144, &v169);

        *(v139 + 14) = v146;
        _os_log_impl(&_mh_execute_header, v135, v136, "Can't monitor beacon: %{private,mask.hash}s due to: group pairing incomplete.", v139, 0x16u);
        sub_100007BAC(v140);

        sub_100A1B3C0(v84, type metadata accessor for OwnedBeaconGroup);
        v145(v151, v86);
        goto LABEL_60;
      }

      sub_100A1B3C0(v84, type metadata accessor for OwnedBeaconGroup);
      v163(v138, v86);
      goto LABEL_59;
    }

    sub_100A1B3C0(v84, type metadata accessor for OwnedBeaconGroup);
    v163(v151, v86);
  }

LABEL_45:
  v101 = v155;
  sub_1009D762C(v155);
  if ((*(v154 + 48))(v101, 1, v156) == 1)
  {
    sub_10000B3A8(v101, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_51;
  }

  v102 = v153;
  sub_100A18C9C(v101, v153, type metadata accessor for OwnedBeaconRecord);
  v103 = (*(a4 + 16))(v34, a4);
  v105 = sub_1006DCF58(0x6863746157, 0xE500000000000000, v103, v104);

  if (v105)
  {
    v106 = v34;
    v107 = v162;
    v108 = v106;
    v160();
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v109 = v165;
    v110 = dispatch thunk of static Equatable.== infix(_:_:)();
    v163(v107, v109);
    if (v110)
    {
      sub_100A1B3C0(v102, type metadata accessor for OwnedBeaconRecord);
      v34 = v108;
      goto LABEL_51;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_1000076D4(v123, qword_10177B780);
    sub_10001F280(v172, v170);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = v108;
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v169 = v128;
      *v127 = 141558275;
      *(v127 + 4) = 1752392040;
      *(v127 + 12) = 2081;
      sub_1000035D0(v170, v171);
      v129 = v162;
      (v160)(v126, v159);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v131;
      v163(v129, v109);
      sub_100007BAC(v170);
      v133 = sub_1000136BC(v130, v132, &v169);

      *(v127 + 14) = v133;
      _os_log_impl(&_mh_execute_header, v124, v125, "Can't monitor beacon: %{private,mask.hash}s due to: watch beacon, but not actively paired.", v127, 0x16u);
      sub_100007BAC(v128);

      v59 = type metadata accessor for OwnedBeaconRecord;
      v60 = v153;
      goto LABEL_13;
    }

    v90 = type metadata accessor for OwnedBeaconRecord;
    v91 = v153;
    goto LABEL_37;
  }

  sub_100A1B3C0(v102, type metadata accessor for OwnedBeaconRecord);
LABEL_51:
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v112 = result;
    v113 = String._bridgeToObjectiveC()();
    v114 = [v112 applicationIsInstalled:v113];

    if (v114)
    {
      v115 = 1;
LABEL_61:
      sub_100007BAC(v172);
      return v115;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_1000076D4(v116, qword_10177B780);
    sub_10001F280(v172, v170);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v169 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      sub_1000035D0(v170, v171);
      v117 = v162;
      (v160)(v34, v159);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v118 = v165;
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      v163(v117, v118);
      sub_100007BAC(v170);
      v122 = sub_1000136BC(v119, v121, &v169);

      *(v38 + 14) = v122;
      v46 = "Can't monitor beacon: %{private,mask.hash}s due to: no Find My app installed.";
      goto LABEL_25;
    }

LABEL_58:

    goto LABEL_59;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A072EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(a4 + 184))(a3, a4);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    goto LABEL_9;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v17 = 0;
  if ((v16 & 1) == 0)
  {
    v18 = sub_1009C5A54(v9, *(a2 + 280), a3, a4);
    if (sub_10111F67C(8, v18))
    {
      v17 = sub_10111F67C(9, v18);
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

LABEL_11:
  (*(v7 + 8))(v9, a3);
  return v17 & 1;
}

unint64_t sub_100A07658(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100A1A174(v6, a2, 0, &type metadata accessor for UUID);
  *v2 = v4;
  return result;
}

unint64_t sub_100A0772C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100A077EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100A5B734(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100A0772C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100A078AC(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v1[49] = v3;
  v1[50] = *(v3 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = type metadata accessor for BeaconIdentifier(0);
  v1[55] = swift_task_alloc();
  v1[56] = type metadata accessor for StableIdentifier(0);
  v1[57] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1[58] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v1[59] = v4;
  v1[60] = *(v4 - 8);
  v1[61] = swift_task_alloc();
  v5 = type metadata accessor for ObservedAdvertisement(0);
  v1[62] = v5;
  v1[63] = *(v5 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[73] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[74] = v6;
  v7 = *(v6 - 8);
  v1[75] = v7;
  v1[76] = *(v7 + 64);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v1[81] = v8;
  v1[82] = *(v8 - 8);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[5] = v4;
  v1[6] = sub_100003F64(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v9 = sub_1000280DC(v1 + 2);
  v1[85] = v9;
  sub_100A1B358(a1, v9, type metadata accessor for OwnedBeaconRecord);

  return _swift_task_switch(sub_100A07D00, 0, 0);
}

uint64_t sub_100A07D00(uint64_t a1)
{
  v26 = v1;
  v2 = v1[84];
  v3 = v1[83];
  v4 = v1[82];
  v5 = v1[81];
  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v3, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v2, v5);
  if (v6)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B780);
    sub_10001F280((v1 + 2), (v1 + 42));
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v1[80];
      v12 = v1[75];
      v13 = v1[74];
      v14 = v1[59];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = sub_1000035D0(v1 + 42, v1[45]);
      (*(v12 + 16))(v11, &v17[*(v14 + 20)], v13);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      sub_100007BAC(v1 + 42);
      v21 = sub_1000136BC(v18, v20, &v25);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Can't monitor beacon: %s before first unlock.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      sub_100007BAC(v1 + 42);
    }

    sub_100007BAC(v1 + 2);

    v23 = v1[1];

    return v23(1);
  }

  else
  {
    v22 = swift_task_alloc();
    v1[86] = v22;
    *v22 = v1;
    v22[1] = sub_100A081B0;

    return daemon.getter();
  }
}

uint64_t sub_100A081B0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[87] = a1;

  v3 = swift_task_alloc();
  v2[88] = v3;
  v4 = type metadata accessor for Daemon();
  v2[89] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[90] = v6;
  v7 = sub_100003F64(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100A08390;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}