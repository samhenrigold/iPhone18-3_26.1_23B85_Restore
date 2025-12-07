void sub_10003AA34()
{
  sub_100040098();
  v2 = type metadata accessor for PinNotificationEvent();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v9 = *(v1 + 152);
  if (v9)
  {
    v10 = *(v0 + 160);
    (*(v4 + 104))(v8, enum case for PinNotificationEvent.hide(_:), v2);

    v9(v8);
    sub_10000FAC8(v9, v10);
    (*(v4 + 8))(v8, v2);
  }

  v11 = *(v0 + 144);
  if (v11)
  {
    CFUserNotificationCancel(v11);
    v12 = *(v0 + 144);
    *(v0 + 144) = 0;
  }
}

uint64_t sub_10003AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000D09C();
  v11 = v10;
  swift_retain_n();
  v12 = v11;
  v13 = sub_100036DDC();
  sub_100040080();
  sub_10005B81C(v14, v15, v16, v17, v18, v19, v13, v12, a8, a9, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
}

void sub_10003AC04()
{
  sub_10000D060();
  v3 = v2;
  v25 = v4;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v28 = v8;
  __chkstk_darwin(v9);
  sub_10003FFB0();
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v26 = v11;
  v27 = v10;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v14 = v13 - v12;
  v15 = sub_100040164();
  v17 = sub_100013414(v15, v16);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  sub_100040144();
  sub_10003DE84(v6, v1, &qword_10009A908, &qword_100078DC0);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  *(v20 + 24) = v3;
  sub_10003DED0(v1, v20 + v19, &qword_10009A908, &qword_100078DC0);
  v29[4] = sub_10003DF1C;
  v29[5] = v20;
  sub_10001ACF4();
  v29[1] = 1107296256;
  sub_10000EE28();
  v29[2] = v21;
  v29[3] = &unk_100090208;
  v22 = _Block_copy(v29);

  static DispatchQoS.unspecified.getter();
  sub_10000D94C();
  sub_10000D128(v23, 255, v24, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v0, v7);
  (*(v26 + 8))(v14, v27);

  sub_1000135A0();
}

uint64_t sub_10003AF0C()
{
  sub_10000D09C();
  sub_100036D60();
  sub_100040080();
  sub_10003299C();
}

uint64_t sub_10003AF80()
{
  sub_100036D60();
  sub_1000328D0();
}

void sub_10003AFBC()
{
  sub_10000D600();
  v75 = type metadata accessor for HostDeletionTarget();
  sub_10000CBBC();
  v84 = v2;
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v79 = v5 - v4;
  v6 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v7 = sub_10000D368(v6);
  __chkstk_darwin(v7);
  sub_10000EDF0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v14 = type metadata accessor for UUID();
  sub_10000CBBC();
  v81 = v15;
  __chkstk_darwin(v16);
  sub_10000EDF0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  sub_100036E54();
  sub_10001E884();
  v24 = v23;

  if (!v1)
  {
    v74 = v22;
    v76 = v10;
    v77 = v19;
    v83 = 0;
    v72 = v14;
    v78 = v0;
    v25 = sub_10004997C();
    for (i = 0; v25 != i; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v27 = *(v24 + 8 * i + 32);
      }

      v28 = v27;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      if (CUPairedPeer.isPairedForAutomation.getter())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }
    }

    v29 = sub_10004997C();
    v30 = 0;
    v82 = _swiftEmptyArrayStorage & 0xC000000000000001;
    v80 = _swiftEmptyArrayStorage;
    v73 = (v81 + 32);
    v31 = v72;
LABEL_14:
    v32 = v76;
    while (1)
    {
      v33 = v84;
      if (v29 == v30)
      {
        break;
      }

      if (v82)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_42;
        }

        v34 = _swiftEmptyArrayStorage[v30 + 4];
      }

      v35 = v34;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_41;
      }

      v36 = [v34 identifier];
      if (v36)
      {
        v37 = v36;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      sub_1000223E8(v32, v38, 1, v31);
      sub_10003DED0(v32, v13, &qword_1000999E8, &unk_100077D60);
      if (sub_100022484(v13, 1, v31) != 1)
      {
        v39 = *v73;
        (*v73)(v74, v13, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000542A4(0, v80[2] + 1, 1, v80);
          v80 = v45;
        }

        v41 = v80[2];
        v40 = v80[3];
        if (v41 >= v40 >> 1)
        {
          sub_1000542A4(v40 > 1, v41 + 1, 1, v80);
          v80 = v46;
        }

        v80[2] = (v41 + 1);
        sub_100040058();
        v39(v43 + v42 + *(v44 + 72) * v41, v74, v31);
        ++v30;
        goto LABEL_14;
      }

      sub_100022560(v13, &qword_1000999E8, &unk_100077D60);
      ++v30;
    }

    v47 = 0;
    v48 = v80;
    v82 = v80[2];
    LODWORD(v76) = enum case for HostDeletionTarget.singleHost(_:);
    v49 = (v33 + 104);
    v50 = (v33 + 8);
    v84 = v81 + 8;
    v51 = v75;
    while (1)
    {
      if (v82 == v47)
      {

        goto LABEL_38;
      }

      if (v47 >= v48[2])
      {
        goto LABEL_43;
      }

      sub_100040058();
      v55 = *(v54 + 16);
      v56 = v77;
      v55(v77, v52 + v53 + *(v54 + 72) * v47, v31);
      v57 = v31;
      v58 = v79;
      v55(v79, v56, v57);
      (*v49)(v58, v76, v51);
      v59 = v83;
      sub_10003BB40(v58, v60, v61, v62, v63, v64, v65, v66, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      v83 = v59;
      if (v59)
      {
        break;
      }

      ++v47;
      (*v50)(v58, v51);
      v67 = sub_100040150();
      v68(v67);
      v31 = v57;
      v48 = v80;
    }

    (*v50)(v58, v51);
    v69 = sub_100040150();
    v70(v69);
  }

LABEL_38:
  sub_100016010();
}

id *sub_10003B570(uint64_t a1)
{
  v53 = type metadata accessor for ControlChannelConnection.State();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D128(&unk_10009BE10, 255, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
    Set.Iterator.init(_cocoa:)();
    a1 = v55;
    v5 = v56;
    v6 = v57;
    v7 = v58;
    v8 = v59;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v38 = v6;
  v51 = enum case for ControlChannelConnection.State.preparingPairingSession(_:);
  v12 = (v3 + 88);
  v49 = enum case for ControlChannelConnection.State.upgradeLockdownPairingInProgress(_:);
  v50 = enum case for ControlChannelConnection.State.setUpManualPairingInProgress(_:);
  v47 = enum case for ControlChannelConnection.State.notStarted(_:);
  v48 = enum case for ControlChannelConnection.State.deviceRequestUserPairingConsentInProgress(_:);
  v45 = enum case for ControlChannelConnection.State.handshakeInProgress(_:);
  v46 = enum case for ControlChannelConnection.State.transportStarting(_:);
  v43 = enum case for ControlChannelConnection.State.authenticated(_:);
  v44 = enum case for ControlChannelConnection.State.verifyManualPairingInProgress(_:);
  v41 = enum case for ControlChannelConnection.State.invalidated(_:);
  v42 = enum case for ControlChannelConnection.State.unauthenticated(_:);
  v36 = (v3 + 8);
  v35 = enum case for ControlChannelConnection.State.hostRequestPeerInfoInProgress(_:);
  v37 = (v3 + 96);
  v34 = enum case for ControlChannelConnection.State.deviceAwaitingPairVerify(_:);
  v40 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (a1 < 0)
    {
      v16 = __CocoaSet.Iterator.next()();
      if (!v16 || (v54 = v16, type metadata accessor for ControlChannelConnection(), swift_dynamicCast(), !v60))
      {
LABEL_51:
        sub_1000134CC(a1);
        return v40;
      }

      goto LABEL_17;
    }

    v13 = v7;
    v14 = v8;
    if (!v8)
    {
      break;
    }

LABEL_13:
    v8 = (v14 - 1) & v14;
    v15 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v15)
    {
      goto LABEL_51;
    }

LABEL_17:
    v17 = v52;
    dispatch thunk of ControlChannelConnection.state.getter();
    v18 = (*v12)(v17, v53);
    if (v18 == v51)
    {
      v24 = v52;
      (*v37)(v52, v53);
      v25 = sub_100013414(&qword_10009A8B0, &qword_100077D40);
      sub_10000FAC8(*&v24[*(v25 + 48)], *&v24[*(v25 + 48) + 8]);
      sub_10000ECF4(*&v24[*(v25 + 64)], *&v24[*(v25 + 64) + 8]);
      v26 = type metadata accessor for PairingData.Kind();
      (*(*(v26 - 8) + 8))(v24, v26);
LABEL_45:
      v27 = 3;
LABEL_46:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100054418();
        v40 = v30;
      }

      v28 = v40[2];
      if (v28 >= v40[3] >> 1)
      {
        sub_100054418();
        v40 = v31;
      }

      v29 = v40;
      v40[2] = (v28 + 1);
      v29[v28 + 4] = v27;
    }

    else
    {
      if (v18 == v50 || v18 == v49 || v18 == v48)
      {
        (*v36)(v52, v53);
        v27 = 4;
        goto LABEL_46;
      }

      if (v18 == v47 || v18 == v46 || v18 == v45 || v18 == v44)
      {
        goto LABEL_45;
      }

      if (v18 == v43)
      {
        v27 = 5;
        goto LABEL_46;
      }

      if (v18 == v42)
      {
        v27 = 2;
        goto LABEL_46;
      }

      if (v18 != v41)
      {
        if (v18 == v35 || v18 != v34)
        {
          goto LABEL_53;
        }

        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      goto LABEL_51;
    }

    v14 = *(v5 + 8 * v7);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_53:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10003BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  v135 = v21;
  v136 = v20;
  v134 = v22;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v128 = v24;
  v129 = v23;
  __chkstk_darwin(v23);
  sub_10000CBDC();
  v126 = v26 - v25;
  sub_10002F608();
  v127 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v125 = v27;
  __chkstk_darwin(v28);
  sub_10000CBDC();
  v124 = v30 - v29;
  sub_10002F608();
  v31 = type metadata accessor for UUID();
  sub_10000CBBC();
  v33 = v32;
  v35 = *(v34 + 64);
  v37 = __chkstk_darwin(v36);
  v130 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v37);
  v123 = &v122 - v39;
  __chkstk_darwin(v38);
  v41 = &v122 - v40;
  v42 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v43 = sub_10000D368(v42);
  __chkstk_darwin(v43);
  sub_10000EDF0();
  v131 = (v44 - v45);
  v47 = __chkstk_darwin(v46);
  v49 = &v122 - v48;
  __chkstk_darwin(v47);
  v51 = &v122 - v50;
  v52 = type metadata accessor for HostDeletionTarget();
  sub_10000CBBC();
  v54 = v53;
  __chkstk_darwin(v55);
  sub_10000CBDC();
  v58 = v57 - v56;
  (*(v54 + 16))(v57 - v56, v134, v52);
  v59 = (*(v54 + 88))(v58, v52);
  if (v59 == enum case for HostDeletionTarget.singleHost(_:))
  {
    (*(v54 + 96))(v58, v52);
    v132 = v33;
    v60 = *(v33 + 32);
    v61 = v58;
    v62 = v31;
    (v60)(v41, v61, v31);
    v63 = v136;
    sub_100036E54();
    v64 = v135;
    sub_1000215B4();
    v133 = v41;
    if (v64)
    {
      v65 = v31;

      v35 = *(v132 + 8);
    }

    else
    {
      sub_10001F1E0();
      v80 = v79;
      v135 = 0;

      v122 = v80;
      v81 = CUPairedPeer.associatedLockdownHostBUID.getter();
      v65 = v31;
      v83 = v132;
      if (v82)
      {
        v84 = v82;
        v134 = *(v63 + 24);
        v85 = v81;
        (*(v132 + 16))(v123, v133, v62);
        v86 = swift_allocObject();
        *(v86 + 16) = v85;
        *(v86 + 24) = v84;
        v65 = v62;
        sub_100040068();
        v60();
        v139 = sub_10003DE24;
        v140 = v86;
        v137[0] = _NSConcreteStackBlock;
        v137[1] = 1107296256;
        sub_10000EE28();
        v137[2] = v87;
        v138 = &unk_1000901B8;
        v123 = _Block_copy(v137);
        v88 = v124;
        static DispatchQoS.unspecified.getter();
        sub_10000D94C();
        sub_10000D128(v89, 255, v90, &protocol conformance descriptor for DispatchWorkItemFlags);
        v35 = sub_100013414(&unk_100099840, &unk_100077350);
        sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
        v91 = v126;
        v92 = v129;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v93 = v123;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v83 = v132;
        _Block_release(v93);
        (v128[1].isa)(v91, v92);
        (*(v125 + 8))(v88, v127);
      }

      v94 = static os_log_type_t.default.getter();
      v95 = qword_10009CED0;
      v96 = v83 + 16;
      v129 = *(v83 + 16);
      v129(v130, v133, v65);
      if (os_log_type_enabled(v95, v94))
      {
        sub_10000D054();
        v97 = swift_slowAlloc();
        v128 = v95;
        v98 = v97;
        sub_10000CCCC();
        v99 = swift_slowAlloc();
        LODWORD(v127) = v94;
        v100 = v99;
        v137[0] = v99;
        *v98 = 136315138;
        v101 = UUID.uuidString.getter();
        v134 = v96;
        v103 = v102;
        v104 = sub_1000400FC();
        v35(v104);
        v105 = sub_10000C600(v101, v103, v137);
        v96 = v134;

        *(v98 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v128, v127, "Deleting pairing record for host %s", v98, 0xCu);
        sub_10000CADC(v100);
        sub_100015FBC();

        sub_100015FBC();
      }

      else
      {
        v106 = sub_1000400FC();
        v35(v106);
      }

      v107 = v135;
      v108 = v131;
      v129(v131, v133, v65);
      sub_1000223E8(v108, 0, 1, v65);

      sub_10002012C(v108, v109, v110, v111, v112, v113, v114, v115, v122, v123);
      if (!v107)
      {
        sub_100022560(v108, &qword_1000999E8, &unk_100077D60);

        v116 = sub_1000381EC();
        v117 = *(v116 + 16);
        if (v117)
        {
          v130 = v116;
          v131 = v35;
          v134 = v96;
          v135 = 0;
          v118 = v116 + 32;
          v119 = v133;
          v120 = v129;
          do
          {
            sub_100022260(v118, v137);
            sub_10001355C(v137, v138);
            v120(v49, v119, v65);
            sub_1000223E8(v49, 0, 1, v65);
            sub_100036590();
            sub_100022560(v49, &qword_1000999E8, &unk_100077D60);
            sub_10000CADC(v137);
            v118 += 40;
            --v117;
          }

          while (v117);

          v35 = v131;
        }

        else
        {
        }

        sub_100036DDC();
        v121 = v133;
        sub_10005FA30();

        (v35)(v121, v65);
        goto LABEL_15;
      }

      sub_100022560(v108, &qword_1000999E8, &unk_100077D60);
    }

    (v35)(v133, v65);
LABEL_15:
    sub_100016010();
    return;
  }

  v66 = v135;
  if (v59 == enum case for HostDeletionTarget.all(_:))
  {
    v67 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, qword_10009CED0, "Deleting all pairing records", 28, 2, _swiftEmptyArrayStorage);
    sub_100036E54();
    sub_1000223E8(v51, 1, 1, v31);
    sub_10002012C(v51, v68, v69, v70, v71, v72, v73, v74, v122, v123);
    sub_100022560(v51, &qword_1000999E8, &unk_100077D60);

    v135 = v66;
    if (!v66)
    {
      v75 = sub_1000381EC();
      v76 = *(v75 + 16);
      if (v76)
      {
        v134 = v75;
        v77 = v75 + 32;
        do
        {
          sub_100022260(v77, v137);
          sub_10001355C(v137, v138);
          sub_1000223E8(v49, 1, 1, v31);
          sub_100040068();
          sub_100036590();
          sub_100022560(v49, &qword_1000999E8, &unk_100077D60);
          sub_10000CADC(v137);
          v77 += 40;
          --v76;
        }

        while (v76);
      }

      v78 = sub_100036DDC();
      sub_10005F680(v78);
    }

    goto LABEL_15;
  }

  if (v59 == enum case for HostDeletionTarget.nonAutomationHosts(_:))
  {
    sub_10003AFBC();
    goto LABEL_15;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10003C590(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String._bridgeToObjectiveC()();
  v11 = lockdown_unpair_host_by_id();

  if (v11)
  {
    v12 = static os_log_type_t.error.getter();
    v13 = qword_10009CED0;
    (*(v7 + 16))(v9, a3, v6);
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_10000C600(a1, a2, &v20);
      *(v14 + 12) = 2082;
      v15 = UUID.uuidString.getter();
      v17 = v16;
      (*(v7 + 8))(v9, v6);
      v18 = sub_10000C600(v15, v17, &v20);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v12, "Failed to delete lockdown record with host buid %{public}s associated with RemotePairing record %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_10003C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v21;
  a20 = v22;
  v23 = sub_100013414(&qword_10009A8B8, &qword_100077D48);
  v24 = sub_10000D368(v23);
  __chkstk_darwin(v24);
  v26 = &v56 - v25;
  v27 = type metadata accessor for PairedHostInfo();
  sub_10000CBBC();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_10000EDF0();
  v33 = (v31 - v32);
  __chkstk_darwin(v34);
  v36 = &v56 - v35;
  sub_100036E54();
  sub_10001E884();
  v38 = v37;
  v39 = v20;

  if (v20)
  {
LABEL_18:
    sub_100016010();
  }

  else
  {
    v57 = v36;
    v40 = sub_10004997C();
    v41 = 0;
    v62 = v38 & 0xC000000000000001;
    v63 = v40;
    v61 = v38 & 0xFFFFFFFFFFFFFF8;
    v59 = v29;
    v42 = (v29 + 32);
    v43 = _swiftEmptyArrayStorage;
    v58 = v33;
    while (1)
    {
      if (v63 == v41)
      {

        goto LABEL_18;
      }

      if (v62)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *(v61 + 16))
        {
          goto LABEL_20;
        }

        v44 = *(v38 + 8 * v41 + 32);
      }

      v45 = v44;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      a10 = v44;
      sub_10003CAB8(&a10, v26);

      if (sub_100022484(v26, 1, v27) == 1)
      {
        sub_100022560(v26, &qword_10009A8B8, &qword_100077D48);
      }

      else
      {
        v60 = v39;
        v46 = v38;
        v47 = *v42;
        v48 = v57;
        (*v42)(v57, v26, v27);
        v47(v33, v48, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000542E0(0, v43[2] + 1, 1, v43);
          v43 = v54;
        }

        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_1000542E0(v49 > 1, v50 + 1, 1, v43);
          v43 = v55;
        }

        v43[2] = (v50 + 1);
        sub_100040058();
        v53 = v43 + v51 + *(v52 + 72) * v50;
        v33 = v58;
        v47(v53, v58, v27);
        v38 = v46;
        v39 = v60;
      }

      ++v41;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_10003CAB8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v5 = __chkstk_darwin(v4 - 8);
  v52 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = v46 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v46 - v14;
  __chkstk_darwin(v13);
  v17 = v46 - v16;
  v18 = *a1;
  v19 = sub_10003DDC8(*a1, &selRef_name);
  v21 = 0x6E776F6E6B6E55;
  if (v20)
  {
    v21 = v19;
  }

  v51 = v21;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  v23 = sub_10003DDC8(v18, &selRef_model);
  v54 = a2;
  if (v24)
  {
    v49 = v23;
    v53 = v24;
    goto LABEL_17;
  }

  v25 = sub_10003DD44(v18);
  if (!v25)
  {
    v58 = 0u;
    v59 = 0u;
    goto LABEL_16;
  }

  v26 = v25;
  v55 = 0x6C65646F6DLL;
  v56 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_10004C5C0(v26, &v58);

  sub_10002269C(v57);
  if (!*(&v59 + 1))
  {
LABEL_16:
    sub_100022560(&v58, &qword_100099A00, &qword_100077540);
    v53 = 0;
    v49 = 0;
    goto LABEL_17;
  }

  v27 = swift_dynamicCast();
  v28 = v57[0];
  v29 = v57[1];
  if (!v27)
  {
    v29 = 0;
  }

  v53 = v29;
  if (!v27)
  {
    v28 = 0;
  }

  v49 = v28;
LABEL_17:
  v30 = CUPairedPeer.serialNumber.getter();
  if (v31)
  {
    v48 = v30;
    v32 = v18;
    goto LABEL_26;
  }

  v32 = v18;
  v33 = sub_10003DD44(v18);
  if (!v33)
  {
    v58 = 0u;
    v59 = 0u;
    goto LABEL_25;
  }

  v34 = v33;
  sub_1000118F0(0, &qword_10009A8D0, CUPairedPeer_ptr);
  v55 = static CUPairedPeer.serialNumberInfoKey.getter();
  v56 = v35;
  AnyHashable.init<A>(_:)();
  sub_10004C5C0(v34, &v58);

  sub_10002269C(v57);
  if (!*(&v59 + 1))
  {
LABEL_25:
    sub_100022560(&v58, &qword_100099A00, &qword_100077540);
    v48 = 0;
    goto LABEL_26;
  }

  v36 = swift_dynamicCast();
  v37 = v57[0];
  if (!v36)
  {
    v37 = 0;
  }

  v48 = v37;
LABEL_26:
  v38 = [v32 identifier];
  if (v38)
  {
    v39 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = *(v9 + 32);
    v47 = v22;
    v40(v17, v15, v8);
    v46[1] = CUPairedPeer.isPairedForAutomation.getter();
    (*(v9 + 16))(v12, v17, v8);
    sub_10006A564(v50);
    CUPairedPeer.initialPairingTime.getter();
    v41 = v54;
    PairedHostInfo.init(name:identifier:lastUsed:initialPairingTime:pairedForAutomation:model:serialNumber:)();
    (*(v9 + 8))(v17, v8);
    v42 = 0;
  }

  else
  {

    v43 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, qword_10009CED0, "Ignoring malformed CUPairedPeer without identifier", 50, 2, _swiftEmptyArrayStorage);
    v42 = 1;
    v41 = v54;
  }

  v44 = type metadata accessor for PairedHostInfo();
  return sub_1000223E8(v41, v42, 1, v44);
}

uint64_t sub_10003CFD4@<X0>(uint64_t a1@<X8>)
{
  sub_100036D60();
  sub_100032460(a1);
}

uint64_t sub_10003D018()
{
  sub_100037040();
  v1 = v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  v3 = static os_log_type_t.debug.getter();
  v4 = qword_10009CED0;
  if (sub_100040190(v3))
  {

    sub_10000D054();
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *(v2 + 16);
    }

    *(v5 + 4) = v6;

    sub_10000D624(&_mh_execute_header, v7, v3, "Determining USB host trust state across %ld control channels");
    sub_10003FFE0();
  }

  v8 = sub_10003B570(v2);

  v9 = sub_10003D20C(v8);
  v11 = v10;

  v12 = static os_log_type_t.default.getter();
  v13 = v12;
  if (v11)
  {
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v4, "No hosts connected over USB", 27, 2, _swiftEmptyArrayStorage);
    return 1;
  }

  else if (os_log_type_enabled(v4, v12))
  {
    sub_10000D054();
    v14 = swift_slowAlloc();
    sub_10000CCCC();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = RPUSBConnectedHostTrustState.description.getter();
    v18 = sub_10000C600(v16, v17, &v21);

    *(v14 + 4) = v18;
    sub_10000D624(&_mh_execute_header, v19, v13, "Overall USB host trust state is %s");
    sub_10000CADC(v15);
    sub_100015FBC();

    sub_10003FFE0();
  }

  return v9;
}

uint64_t sub_10003D20C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = a1 + 5;
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (static RPUSBConnectedHostTrustState.< infix(_:_:)())
      {
        v2 = v5;
      }

      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_10003D284(char a1)
{
  sub_100037544();
  if (a1)
  {
    sub_10005875C();
  }

  else
  {
    sub_1000584FC();
  }
}

uint64_t sub_10003D2D0()
{
  v0 = sub_1000381EC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    do
    {
      sub_100022260(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_10001355C(v6, v7);
      (*(v4 + 32))(v3, v4);
      sub_10000CADC(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  sub_100036DDC();
  sub_10005F7D4();
}

void sub_10003D394()
{
  v1 = *(v0 + 16);
  sub_100036518();
  v3[1] = 1107296256;
  v3[2] = sub_1000499CC;
  v3[3] = &unk_100090168;
  v2 = _Block_copy(v3);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v2);
  _Block_release(v2);
}

uint64_t sub_10003D440(void *a1)
{
  v2 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v2))
  {
    v4 = String.init(cString:)();
    v5 = v3;
    v6 = v4 == 0xD000000000000025 && 0x800000010007E8A0 == v3;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v7 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10009CED0, "Received first unlock darwin notification", 41, 2, _swiftEmptyArrayStorage);
      sub_1000388DC();
      sub_100055F64();
LABEL_18:
    }

    v11 = v4 == 0xD00000000000002FLL && 0x800000010007E8D0 == v5;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v12 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "Received notification that wifi connection enablement state changed in lockdown. Re-evaluating network behavior", 111, 2, _swiftEmptyArrayStorage);
      sub_100037850();
      sub_100044C50();
LABEL_17:

      sub_100038170();
      sub_100027634();
      goto LABEL_18;
    }

    v13 = v4 == 0xD000000000000036 && 0x800000010007E900 == v5;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10009CED0, "Received notification that wifi pairing enablement state changed in lockdown. Re-evaluating network behavior", 108, 2, _swiftEmptyArrayStorage);
      sub_100036F94();
      sub_100015560();
      goto LABEL_17;
    }

    v15 = v4 == 0xD00000000000002FLL && 0x800000010007E940 == v5;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v16 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10009CED0, "Received notification that developer mode status changed. Re-evaluating network behavior", 88, 2, _swiftEmptyArrayStorage);
      sub_100037850();
      sub_100044C50();
      goto LABEL_18;
    }

    v17 = static os_log_type_t.error.getter();
    v18 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      v21 = sub_10000C600(v4, v5, &v22);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v18, v17, "Received unknown notifyd launch event: %s", v19, 0xCu);
      sub_10000CADC(v20);
    }

    else
    {
    }
  }

  else
  {
    v8 = static os_log_type_t.error.getter();
    v9 = qword_10009CED0;

    return os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Bug in libxpc: event name not set in XPC launch event", 53, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10003D834()
{
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10009CEE8 = result;
  return result;
}

void sub_10003D8A8()
{
  sub_10000CBD0();
  v1 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_10003DD34;
  v4[5] = v1;
  sub_100036518();
  v4[1] = 1107296256;
  v4[2] = sub_10003D9C8;
  v4[3] = &unk_100090140;
  v2 = _Block_copy(v4);

  v3 = os_state_add_handler();
  _Block_release(v2);
  *(v0 + 168) = v3;
  *(v0 + 176) = 0;
}

uint64_t sub_10003D96C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10003DA18();
  }

  return 0;
}

uint64_t sub_10003D9C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_10003DA18()
{
  v0 = sub_1000381EC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    do
    {
      sub_100022260(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_10001355C(v6, v7);
      if (qword_100098EA8 != -1)
      {
        sub_10003FFF0();
        swift_once();
      }

      (*(v4 + 40))(qword_10009CEE8, v3, v4);
      sub_10000CADC(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  sub_100036DDC();
  if (qword_100098EA8 != -1)
  {
    sub_10003FFF0();
    swift_once();
  }

  sub_1000608D8(qword_10009CEE8);
}

uint64_t sub_10003DB3C()
{
  if ((*(v0 + 176) & 1) == 0)
  {
    os_state_remove_handler();
  }

  swift_unknownObjectRelease();

  sub_10000FAC8(*(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t sub_10003DBF4()
{
  sub_10003DB3C();

  return _swift_deallocClassInstance(v0, 177, 7);
}

uint64_t sub_10003DD44(void *a1)
{
  v1 = [a1 info];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10003DDC8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10000D4B0();
}

void sub_10003DE24()
{
  v1 = type metadata accessor for UUID();
  sub_10000D368(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  sub_10003C590(v3, v4, v5);
}

uint64_t sub_10003DE84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100040170(a1, a2, a3, a4);
  sub_10000CC04();
  v5 = sub_10000D4B0();
  v6(v5);
  return v4;
}

uint64_t sub_10003DED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100040170(a1, a2, a3, a4);
  sub_10000CC04();
  v5 = sub_10000D4B0();
  v6(v5);
  return v4;
}

uint64_t sub_10003DF1C()
{
  v1 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  sub_10000D368(v1);
  return (*(v0 + 16))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
}

uint64_t sub_10003DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 56) = type metadata accessor for LockStateManager(0);
  *(a4 + 64) = &off_100091068;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 72) = 0;
  *(a4 + 80) = a1;
  *(a4 + 16) = &_swiftEmptySetSingleton;
  return a4;
}

void *sub_10003E034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InProcessIRKGenerator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LockStateManager(0);
  v18[3] = v8;
  v18[4] = &off_100091068;
  v18[0] = a2;
  type metadata accessor for SystemKeychainPairingManager();
  v9 = swift_allocObject();
  v10 = sub_10003EA8C(v18, v8);
  __chkstk_darwin(v10);
  v12 = (&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  (*(v5 + 16))(v7, a1, v4);
  v15 = sub_10003E214(v7, v14, v9);
  (*(v5 + 8))(a1, v4);
  sub_10000CADC(v18);
  return v15;
}

void *sub_10003E214(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for InProcessIRKGenerator();
  a3[6] = v6;
  a3[7] = &protocol witness table for InProcessIRKGenerator;
  v7 = sub_10003FEF8(a3 + 3);
  (*(*(v6 - 8) + 32))(v7, a1, v6);
  a3[11] = type metadata accessor for LockStateManager(0);
  a3[12] = &off_100091068;
  a3[8] = a2;
  a3[2] = _swiftEmptyArrayStorage;
  a3[13] = 0;
  return a3;
}

void *sub_10003E2C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v39 = a8;
  v36 = a9;
  v37 = a6;
  v14 = type metadata accessor for UUID();
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LockdownStateService();
  v43[3] = v17;
  v43[4] = &off_10008F8B8;
  v43[0] = a3;
  type metadata accessor for MetadataService(0);
  v18 = swift_allocObject();
  v19 = sub_10003EA8C(v43, v17);
  __chkstk_darwin(v19);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v42[3] = v17;
  v42[4] = &off_10008F8B8;
  v42[0] = v23;
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v24 = OS_os_log.init(subsystem:category:)();
  v18[19] = 0;
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v24;
  v25 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  v26 = type metadata accessor for PeerDeviceInfo();
  sub_1000223E8(v18 + v25, 1, 1, v26);
  sub_1000223E8(v18 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys, 1, 1, v26);
  *(v18 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__userAssignedNameDarwinNotificationToken) = -1;
  *(v18 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__developerModeStatusDarwinNotificationToken) = -1;
  v18[5] = a1;
  v18[6] = &off_100090B20;
  sub_100022260(v42, (v18 + 7));
  v18[12] = a2;
  v18[13] = a4;
  v27 = v37;
  v28 = v38;
  v18[14] = a5;
  v18[15] = v27;
  v29 = v39;
  v18[16] = v28;
  v18[17] = v29;
  v18[18] = v36;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(a1 + 56);
  v32 = *(a1 + 64);
  *(a1 + 56) = sub_10003EADC;
  *(a1 + 64) = v30;

  v33 = a2;

  sub_10000FAC8(v31, v32);

  sub_10001355C(v18 + 7, v18[10]);
  v34 = swift_allocObject();
  swift_weakInit();

  sub_100027E04(sub_10003EAE4, v34, v16);

  (*(v40 + 8))(v16, v41);
  sub_10000CADC(v42);

  sub_10000CADC(v43);
  return v18;
}

uint64_t sub_10003E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 88) = type metadata accessor for RemotePairingDeviceService();
  v9 = sub_10000D128(&qword_10009A988, v8, type metadata accessor for RemotePairingDeviceService, &unk_100077CF0);
  *(a4 + 16) = &_swiftEmptySetSingleton;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 2;
  *(a4 + 96) = v9;
  *(a4 + 104) = a2;
  *(a4 + 56) = a3;
  *(a4 + 64) = a1;
  return a4;
}

uint64_t sub_10003E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a4;
  v22 = a3;
  v20 = a2;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v9 - 8);
  v19 = v9;
  __chkstk_darwin(v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v28 = type metadata accessor for RemotePairingDeviceService();
  v29 = sub_10000D128(&qword_10009A980, v14, type metadata accessor for RemotePairingDeviceService, &unk_100077CC8);
  *&v27 = a1;
  v25 = type metadata accessor for LockStateManager(0);
  v26 = &off_100091068;
  *&v24 = a5;
  *(a6 + 16) = xmmword_100077BA0;
  *(a6 + 32) = 0x800000010007EEE0;
  v17[1] = sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000D128(&qword_100099DB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *(a6 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a6 + 48) = &_swiftEmptySetSingleton;
  *(a6 + 56) = _swiftEmptyArrayStorage;
  *(a6 + 64) = _swiftEmptyArrayStorage;
  *(a6 + 72) = 0;
  *(a6 + 74) = 1;
  *(a6 + 208) = 0;
  *(a6 + 216) = 0;
  *(a6 + 184) = 0;
  *(a6 + 192) = 0;
  *(a6 + 200) = 0;
  *(a6 + 224) = Dictionary.init(dictionaryLiteral:)();
  sub_100010E18(&v27, a6 + 144);
  v15 = v21;
  *(a6 + 136) = v20;
  *(a6 + 80) = v15;
  sub_100010E18(&v24, a6 + 88);
  *(a6 + 128) = v22;
  return a6;
}

uint64_t sub_10003EA8C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10003EAEC(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v12[3] = type metadata accessor for LockStateManager(0);
  v12[4] = &off_100091068;
  v12[0] = a2;
  type metadata accessor for UUID();
  type metadata accessor for Tunnel(0);
  sub_10000D128(&unk_10009BE40, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *(a4 + 24) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 32) = a1;
  *(a4 + 80) = a3;
  sub_100022260(v12, a4 + 40);
  type metadata accessor for RemotePairingDeviceXPCServer();
  v11 = a1;
  v8 = static MachServiceNames.tunnelManagementService.getter();
  *(a4 + 16) = sub_10002F960(v8, v9, *(a4 + 32));
  type metadata accessor for RemotePairingErrorCodingWrapper();
  type metadata accessor for RemoteUnlockDeviceKeyForTunnelRequest();
  type metadata accessor for RemoteUnlockDeviceKeyForTunnelResponse();
  sub_10000D128(&qword_10009AA30, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelRequest, &protocol conformance descriptor for RemoteUnlockDeviceKeyForTunnelRequest);
  sub_10000D128(&qword_10009AA38, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelRequest, &protocol conformance descriptor for RemoteUnlockDeviceKeyForTunnelRequest);
  sub_10000D128(&qword_10009AA40, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelResponse, &protocol conformance descriptor for RemoteUnlockDeviceKeyForTunnelResponse);
  sub_10000D128(&qword_10009AA48, 255, &type metadata accessor for RemoteUnlockDeviceKeyForTunnelResponse, &protocol conformance descriptor for RemoteUnlockDeviceKeyForTunnelResponse);
  sub_10000D128(&qword_10009A138, 255, &type metadata accessor for RemotePairingErrorCodingWrapper, &protocol conformance descriptor for RemotePairingErrorCodingWrapper);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  sub_10000CADC(v12);
  return a4;
}

uint64_t sub_10003EDC0(void *a1, uint64_t a2, char a3)
{
  v15 = type metadata accessor for LockStateManager(0);
  v16 = &off_100091068;
  v14[0] = a2;
  type metadata accessor for DeviceTunnelManager();
  v6 = swift_allocObject();
  v7 = sub_10003EA8C(v14, v15);
  __chkstk_darwin(v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10003EAEC(a1, *v9, a3, v6);
  sub_10000CADC(v14);
  return v11;
}

uint64_t sub_10003EEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = type metadata accessor for SystemKeychainPairingManager();
  v14[4] = sub_10000D128(&qword_100099CF0, 255, type metadata accessor for SystemKeychainPairingManager, &unk_1000774BC);
  v14[0] = a2;
  *(a4 + 40) = a1;
  if (a3)
  {
    v8 = a1;
    v9 = a3;
  }

  else
  {
    type metadata accessor for RemotePairingDeviceXPCServer();
    v10 = a1;
    v11 = static MachServiceNames.deviceInitiatedPairingService.getter();
    v9 = sub_10002F960(v11, v12, *(a4 + 40));
  }

  *(a4 + 48) = v9;
  sub_100022260(v14, a4 + 56);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  type metadata accessor for RemotePairingErrorCodingWrapper();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for BrowseForPairableHostRequest();
  type metadata accessor for EmptyResponse();
  sub_10000D128(&qword_10009A968, 255, &type metadata accessor for BrowseForPairableHostRequest, &protocol conformance descriptor for BrowseForPairableHostRequest);
  sub_10000D128(&unk_10009A970, 255, &type metadata accessor for BrowseForPairableHostRequest, &protocol conformance descriptor for BrowseForPairableHostRequest);
  sub_10000D128(&qword_10009A128, 255, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
  sub_10000D128(&qword_10009A130, 255, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
  sub_10000D128(&qword_10009A138, 255, &type metadata accessor for RemotePairingErrorCodingWrapper, &protocol conformance descriptor for RemotePairingErrorCodingWrapper);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  sub_10000CADC(v14);
  return a4;
}

uint64_t sub_10003F1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  sub_10000D09C();
  v10 = v9;
  v12 = v11;
  v19 = type metadata accessor for LockStateManager(0);
  v20 = &off_100091068;
  v18[0] = v7;
  v6(0);
  v13 = swift_allocObject();
  sub_10003EA8C(v18, v19);
  sub_10000CC38();
  __chkstk_darwin(v14);
  sub_10003FFB0();
  (*(v15 + 16))(v6);
  v16 = a6(v12, v10, *v6, v13);
  sub_10000CADC(v18);
  return v16;
}

uint64_t sub_10003F2F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v26[3] = type metadata accessor for LockStateManager(0);
  v26[4] = &off_100091068;
  v26[0] = a3;
  type metadata accessor for SystemXPCPeerConnection();
  sub_10000D128(&unk_10009A0E0, 255, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
  *(a4 + 32) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 96) = 0;
  v20 = sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000D128(&qword_100099DB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *(a4 + 104) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v23;
  v11 = v24;
  *(a4 + 40) = v23;
  *(a4 + 16) = v11;
  *(a4 + 24) = &off_1000900D8;
  type metadata accessor for RemotePairingDeviceXPCServer();
  v20 = v12;

  v13 = static MachServiceNames.pairingManagementService.getter();
  *(a4 + 48) = sub_10002F960(v13, v14, *(a4 + 40));
  sub_100022260(v26, a4 + 56);
  v15 = *(a4 + 16);
  v16 = *(v15 + 152);
  v17 = *(v15 + 160);
  *(v15 + 152) = sub_10003FE48;
  *(v15 + 160) = a4;
  swift_unknownObjectRetain();
  swift_retain_n();
  sub_10000FAC8(v16, v17);
  swift_unknownObjectRelease();

  type metadata accessor for RemotePairingErrorCodingWrapper();
  type metadata accessor for DeletePairedHostRecordRequest();
  v21 = type metadata accessor for EmptyResponse();
  sub_10000D128(&qword_10009A998, 255, &type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  sub_10000D128(&qword_10009A9A0, 255, &type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  v23 = sub_10000D128(&qword_10009A128, 255, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
  v22 = sub_10000D128(&qword_10009A130, 255, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
  sub_10000D128(&qword_10009A138, 255, &type metadata accessor for RemotePairingErrorCodingWrapper, &protocol conformance descriptor for RemotePairingErrorCodingWrapper);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  type metadata accessor for ListPairedHostRecordRequest();
  type metadata accessor for ListPairedHostRecordResponse();
  sub_10000D128(&qword_10009A9A8, 255, &type metadata accessor for ListPairedHostRecordRequest, &protocol conformance descriptor for ListPairedHostRecordRequest);
  sub_10000D128(&qword_10009A9B0, 255, &type metadata accessor for ListPairedHostRecordRequest, &protocol conformance descriptor for ListPairedHostRecordRequest);
  sub_10000D128(&qword_10009A9B8, 255, &type metadata accessor for ListPairedHostRecordResponse, &protocol conformance descriptor for ListPairedHostRecordResponse);
  sub_10000D128(&qword_10009A9C0, 255, &type metadata accessor for ListPairedHostRecordResponse, &protocol conformance descriptor for ListPairedHostRecordResponse);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  type metadata accessor for CreateWirelessPairingSessionRequest();
  sub_10000D128(&qword_10009A9C8, 255, &type metadata accessor for CreateWirelessPairingSessionRequest, &protocol conformance descriptor for CreateWirelessPairingSessionRequest);
  sub_10000D128(&qword_10009A9D0, 255, &type metadata accessor for CreateWirelessPairingSessionRequest, &protocol conformance descriptor for CreateWirelessPairingSessionRequest);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  type metadata accessor for FetchNetworkPairingSessionIDRequest();
  type metadata accessor for FetchNetworkPairingSessionIDResponse();
  sub_10000D128(&qword_10009A9D8, 255, &type metadata accessor for FetchNetworkPairingSessionIDRequest, &protocol conformance descriptor for FetchNetworkPairingSessionIDRequest);
  sub_10000D128(&qword_10009A9E0, 255, &type metadata accessor for FetchNetworkPairingSessionIDRequest, &protocol conformance descriptor for FetchNetworkPairingSessionIDRequest);
  sub_10000D128(&qword_10009A9E8, 255, &type metadata accessor for FetchNetworkPairingSessionIDResponse, &protocol conformance descriptor for FetchNetworkPairingSessionIDResponse);
  sub_10000D128(&qword_10009A9F0, 255, &type metadata accessor for FetchNetworkPairingSessionIDResponse, &protocol conformance descriptor for FetchNetworkPairingSessionIDResponse);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  type metadata accessor for QueryUSBConnectedHostTrustStateRequest();
  type metadata accessor for RPUSBConnectedHostTrustState(0);
  sub_10000D128(&qword_10009A9F8, 255, &type metadata accessor for QueryUSBConnectedHostTrustStateRequest, &protocol conformance descriptor for QueryUSBConnectedHostTrustStateRequest);
  sub_10000D128(&qword_10009AA00, 255, &type metadata accessor for QueryUSBConnectedHostTrustStateRequest, &protocol conformance descriptor for QueryUSBConnectedHostTrustStateRequest);
  sub_10000D128(&qword_10009AA08, 255, type metadata accessor for RPUSBConnectedHostTrustState, &protocol conformance descriptor for RPUSBConnectedHostTrustState);
  sub_10000D128(&qword_10009AA10, 255, type metadata accessor for RPUSBConnectedHostTrustState, &protocol conformance descriptor for RPUSBConnectedHostTrustState);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  type metadata accessor for AllowPromptlessPairingWithHostRequest();
  sub_10000D128(&qword_10009AA18, 255, &type metadata accessor for AllowPromptlessPairingWithHostRequest, &protocol conformance descriptor for AllowPromptlessPairingWithHostRequest);
  sub_10000D128(&unk_10009AA20, 255, &type metadata accessor for AllowPromptlessPairingWithHostRequest, &protocol conformance descriptor for AllowPromptlessPairingWithHostRequest);

  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  sub_10000CADC(v26);
  return a4;
}

uint64_t *sub_10003FEF8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000400A4(uint64_t a1, uint64_t a2)
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_1000400C8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10000C600(v3, v2, va);
}

uint64_t sub_1000400E4(uint64_t a1)
{

  return sub_100022560(a1, v2, v1);
}

uint64_t sub_100040170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100013414(a3, a4);
}

BOOL sub_100040190(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000401A8(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

void sub_1000401BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 32);
  if (*(v3 + 40) == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    sub_10000D2AC();
    v11 = 1107296256;
    v12 = sub_10000DC24;
    v13 = &unk_100090450;
    v8 = _Block_copy(&v10);

    nw_listener_set_new_connection_group_handler(v6, v8);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    sub_10000D2AC();
    v11 = 1107296256;
    v12 = sub_10000DC24;
    v13 = &unk_100090400;
    v8 = _Block_copy(&v10);

    nw_listener_set_new_connection_handler(v6, v8);
  }

  _Block_release(v8);
}

void sub_10004030C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 32);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v4;
  sub_10000D2AC();
  v12[1] = 1107296256;
  v12[2] = sub_100040988;
  v12[3] = &unk_1000903B0;
  v11 = _Block_copy(v12);

  nw_listener_set_state_changed_handler(v8, v11);
  _Block_release(v11);
  nw_listener_set_queue(v8, a1);
  nw_listener_start(v8);
}

NSObject *sub_100040420(int a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5, uint64_t a6)
{
  v38[0] = a5;
  v10 = type metadata accessor for POSIXError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemotePairingError();
  __chkstk_darwin(v14);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    if (a1 == 4)
    {
      v22 = static os_log_type_t.default.getter();
      v23 = qword_10009CED0;
      sub_100013414(&qword_1000999F0, &unk_100077530);
      v24 = a4;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100077360;
      v39 = v16;
      swift_unknownObjectRetain();
      sub_100013414(&unk_10009AB10, &unk_100077E38);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100022420();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Server listener cancelled: %{public}s", 37, 2, v25, v38[0]);

      LODWORD(v39) = 89;
      sub_10004FD70(_swiftEmptyArrayStorage);
      sub_100040A8C(&unk_10009AB20, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v29 = POSIXError._nsError.getter();
      (*(v11 + 8))(v13, v10);
      v24(v29 | 0x8000000000000000);

      return swift_unknownObjectRelease();
    }

    if (a1 != 3)
    {
      if (a1 == 2)
      {
        port = nw_listener_get_port(result);
        v18 = static os_log_type_t.default.getter();
        v19 = qword_10009CED0;
        sub_100013414(&qword_1000999F0, &unk_100077530);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_100077360;
        *(v20 + 56) = &type metadata for UInt16;
        *(v20 + 64) = &protocol witness table for UInt16;
        *(v20 + 32) = port;
        os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Server ready on port %d", LODWORD(v38[0]));

        a4(port);
      }

      return swift_unknownObjectRelease();
    }

    if (a2)
    {
      swift_getObjectType();
      v21 = sub_10004F6F4();
    }

    else
    {
      sub_100040A8C(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      static Error<>.unknown.getter();
      sub_100040A8C(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      v21 = swift_allocError();
      Error<>.init(_:_:)();
    }

    v30 = static os_log_type_t.error.getter();
    v31 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38[1] = a2;
      v39 = v33;
      *v32 = 136446210;
      swift_unknownObjectRetain();
      sub_100013414(&unk_10009B750, qword_100077E48);
      v34 = String.init<A>(describing:)();
      v36 = a4;
      v37 = sub_10000C600(v34, v35, &v39);

      *(v32 + 4) = v37;
      a4 = v36;
      _os_log_impl(&_mh_execute_header, v31, v30, "Server listener failed with error: %{public}s", v32, 0xCu);
      sub_10000CADC(v33);
    }

    nw_listener_cancel(*(a6 + 32));
    swift_errorRetain();
    a4(v21 | 0x8000000000000000);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100040988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void *sub_1000409F8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100040A28()
{
  sub_1000409F8();

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t sub_100040A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

nw_path_t sub_100040B38()
{
  result = nw_connection_copy_current_path(*(v0 + 32));
  if (result)
  {
    if (nw_path_copy_interface())
    {
      swift_unknownObjectRetain();
      subtype = nw_interface_get_subtype();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      return (subtype == 1002);
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100040BB0()
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_10009AB30 = result;
  return result;
}

double sub_100040BF0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100040C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 40) = 512;
  *(v2 + 32) = a1;
  v4 = qword_100098EB0;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  dispatch thunk of AtomicCounter.next()();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);
  swift_unknownObjectRelease();

  *(v3 + 16) = 762340212;
  *(v3 + 24) = 0xE400000000000000;
  return v3;
}

void sub_100040CD4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 32);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v12[4] = sub_100041C10;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100050144;
  v12[3] = &unk_1000904C8;
  v11 = _Block_copy(v12);

  nw_connection_set_state_changed_handler(v8, v11);
  _Block_release(v11);
  nw_connection_set_queue(v8, a1);
  nw_connection_start(v8);
}

uint64_t sub_100040DFC(int a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v69 = a5;
  v70 = a4;
  v7 = type metadata accessor for RemotePairingError();
  __chkstk_darwin(v7);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ControlChannelTransportEvent();
  v10 = *(v71 - 8);
  __chkstk_darwin(v71);
  v12 = (v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v67[1] = v9;
    v67[2] = v7;
    v15 = static os_log_type_t.default.getter();
    v16 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v68 = v10;
      v73 = v18;
      *v17 = 136446466;
      v19 = v16;
      v20 = v12;
      v21 = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);

      v24 = sub_10000C600(v23, v22, &v73);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2082;
      LODWORD(v72) = a1;
      type metadata accessor for nw_connection_state_t(0);
      v25 = String.init<A>(describing:)();
      v27 = sub_10000C600(v25, v26, &v73);
      v14 = v21;
      v12 = v20;
      v16 = v19;

      *(v17 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v15, "%{public}s: Connection state changed to %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      v10 = v68;
    }

    if (a1 == 1)
    {
      v44 = v16;
      if (a2)
      {
        swift_getObjectType();
        v45 = sub_10004F6F4();
      }

      else
      {
        sub_100041C1C(&unk_10009A0D0, 255, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
        static Error<>.networkingError.getter();
        sub_100041C1C(&qword_100099850, 255, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
        v45 = swift_allocError();
        Error<>.init(_:_:)();
      }

      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v57))
      {
        v58 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v58 = 136446466;
        v68 = v10;
        v67[0] = v12;
        v59 = v14;
        v60 = *(v14 + 16);
        v61 = *(v14 + 24);

        v62 = sub_10000C600(v60, v61, &v73);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2082;
        v72 = v45;
        swift_errorRetain();
        sub_100013414(&unk_10009A930, &unk_100077080);
        v63 = String.init<A>(describing:)();
        v65 = sub_10000C600(v63, v64, &v73);
        v10 = v68;

        *(v58 + 14) = v65;
        v14 = v59;
        v12 = v67[0];
        _os_log_impl(&_mh_execute_header, v44, v57, "%{public}s: Connection failed with error %{public}s", v58, 0x16u);
        swift_arrayDestroy();
      }

      *v12 = v45;
      v66 = v71;
      (*(v10 + 104))(v12, enum case for ControlChannelTransportEvent.error(_:), v71);
      swift_errorRetain();
      v70(v12);
      (*(v10 + 8))(v12, v66);
      nw_connection_cancel(*(v14 + 32));
    }

    else if (a1 == 4)
    {
      v42 = v16;
      if (a2)
      {
        swift_getObjectType();
        v43 = sub_10004F6F4();
      }

      else
      {
        sub_100041C1C(&unk_10009A0D0, 255, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
        static Error<>.networkingError.getter();
        sub_100041C1C(&qword_100099850, 255, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
        v43 = swift_allocError();
        Error<>.init(_:_:)();
      }

      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v48))
      {
        v49 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v49 = 136446466;
        v68 = v10;
        v67[0] = v12;
        v50 = *(v14 + 16);
        v51 = *(v14 + 24);

        v52 = sub_10000C600(v50, v51, &v73);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2082;
        v72 = v43;
        swift_errorRetain();
        sub_100013414(&unk_10009A930, &unk_100077080);
        v53 = String.init<A>(describing:)();
        v55 = sub_10000C600(v53, v54, &v73);
        v10 = v68;

        *(v49 + 14) = v55;
        v12 = v67[0];
        _os_log_impl(&_mh_execute_header, v42, v48, "%{public}s: Connection failed with error %{public}s", v49, 0x16u);
        swift_arrayDestroy();
      }

      *v12 = v43;
      v56 = v71;
      (*(v10 + 104))(v12, enum case for ControlChannelTransportEvent.error(_:), v71);
      swift_errorRetain();
      v70(v12);

      return (*(v10 + 8))(v12, v56);
    }

    else
    {
      if (a1 == 3)
      {
        v28 = v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = sub_10004F940();
        swift_unknownObjectRelease();
        if (v29)
        {
          v30 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v16, v30))
          {
            v31 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v31 = 136446466;
            v32 = v10;
            v67[0] = v12;
            v33 = v14;
            v34 = *(v14 + 16);
            v35 = *(v14 + 24);

            v36 = sub_10000C600(v34, v35, &v73);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2082;
            v72 = *(v33 + 32);
            swift_unknownObjectRetain();
            sub_100013414(&qword_10009ACC8, &unk_100077FB0);
            v37 = String.init<A>(describing:)();
            v39 = sub_10000C600(v37, v38, &v73);
            v10 = v32;

            *(v31 + 14) = v39;
            v14 = v33;
            v12 = v67[0];
            _os_log_impl(&_mh_execute_header, v28, v30, "%{public}s: Rejecting control channel connection originating from local machine: %{public}s", v31, 0x16u);
            swift_arrayDestroy();
          }

          sub_100041C1C(&unk_10009A0D0, 255, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
          static Error<>.networkingError.getter();
          sub_100041C1C(&qword_100099850, 255, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
          v40 = swift_allocError();
          Error<>.init(_:_:)();
          *v12 = v40;
          v41 = v71;
          (*(v10 + 104))(v12, enum case for ControlChannelTransportEvent.error(_:), v71);
          v70(v12);
          (*(v10 + 8))(v12, v41);
          nw_connection_cancel(*(v14 + 32));
        }

        else
        {
          v46 = v71;
          (*(v10 + 104))(v12, enum case for ControlChannelTransportEvent.transportStarted(_:), v71);
          v70(v12);
          (*(v10 + 8))(v12, v46);
          type metadata accessor for NWObjcConnectionControlChannelTransport();
          sub_100041C1C(&qword_10009ACC0, v47, type metadata accessor for NWObjcConnectionControlChannelTransport, &unk_100077F70);
          JSONDataBasedControlChannelTransport.startReceivingMessages(usingEventHandler:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000419EC()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100041A14()
{
  sub_1000419EC();

  return _swift_deallocClassInstance(v0, 42, 7);
}

uint64_t sub_100041A74()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_100041C1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100041C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;

  dispatch thunk of XPCConnection.withUnsafeUnderlyingConnection<A>(_:)();
  _StringGuts.grow(_:)(65);
  v7._object = 0x800000010007F450;
  v7._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  String.utf8CString.getter();

  v9 = os_transaction_create();

  if (v9)
  {

    v4[4] = v9;
    v4[5] = a2;
    v4[6] = a3;
    return v4;
  }

  else
  {
    __break(1u);

    type metadata accessor for PairableHostsBrowseRegistration();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  return result;
}

uint64_t sub_100041DCC()
{
  *(v0 + 16) = 1;
  (*(v0 + 40))();
  return dispatch thunk of XPCConnection.cancel()();
}

uint64_t sub_100041E08()
{
  v0 = type metadata accessor for DeviceServiceEvent();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  sub_10002A3F0();
  (*(v1 + 104))(v5, enum case for DeviceServiceEvent.pairableHostFound(_:), v0);
  sub_100042494(&unk_10009ADD0, 255, &type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
  sub_100042494(&unk_10009A0F0, 255, &type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
  sub_10000D288();
  XPCConnection.send<A>(value:)();
  v6 = sub_10000D288();
  return v7(v6);
}

void *sub_1000421A8()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000421D8()
{
  sub_1000421A8();

  return _swift_deallocClassInstance(v0, 56, 7);
}

Swift::Int sub_100042230()
{
  Hasher.init(_seed:)();
  type metadata accessor for PairableHostsBrowseRegistration();
  sub_100042494(&unk_10009BF30, v0, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);
  HashableByObjectIdentity.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100042330(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  HashableByObjectIdentity.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100042398(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static HashableByObjectIdentity.== infix(_:_:)();
}

uint64_t sub_100042494(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*sub_1000424DC(void (*result)(char *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, unint64_t a4))(char *__return_ptr, uint64_t *, char *)
{
  v4 = result;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v6 = a3;
        goto LABEL_9;
      }

      __break(1u);
      return result;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_9:
      v8 = sub_1000495D0(v6, v7, v4);
      return (v8 & 1);
    case 3uLL:
      a3 = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a4 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      v8 = sub_10004953C(result, a2, a3, v5);
      return (v8 & 1);
  }
}

uint64_t sub_100042584(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.default.getter();
  v4 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v3);
  if (result)
  {

    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    v7 = *(v2 + 48);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }

    *(v6 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v4, v3, "TCP connected peers updated. Total count: %ld", v6, 0xCu);
  }

  return result;
}

uint64_t sub_1000426C0(uint64_t result)
{
  v2 = *(result + 16);
  if (*(*(v1 + 224) + 16))
  {
    if (!v2)
    {
      return sub_100046B58();
    }
  }

  else if (v2)
  {
    return sub_100046DB8();
  }

  return result;
}

uint64_t sub_1000426E4(uint64_t a1)
{
  v2 = *(v1 + 224);
  *(v1 + 224) = a1;
  sub_1000426C0(v2);
}

NSObject *sub_100042724()
{
  v3[4] = sub_1000427E0;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000499CC;
  v3[3] = &unk_100090A48;
  v0 = _Block_copy(v3);
  v1 = create_nw_parameters_for_tcp(v0);
  _Block_release(v0);
  nw_parameters_prohibit_interface_type(v1, nw_interface_type_cellular);
  nw_parameters_prohibit_interface_type(v1, nw_interface_type_loopback);
  return v1;
}

void sub_1000427E0(NSObject *a1)
{
  nw_tcp_options_set_connection_timeout(a1, 0xAu);
  nw_tcp_options_set_retransmit_connection_drop_time(a1, 0x14u);
  nw_tcp_options_set_enable_keepalive(a1, 1);
  nw_tcp_options_set_keepalive_interval(a1, 0xAu);

  nw_tcp_options_set_keepalive_idle_time(a1, 0x96u);
}

void sub_100042844()
{
  sub_100049A9C();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v61 = v3;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v59 = v9;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  sub_10001ADE0();
  v11 = *(v0 + 80);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_10000CBD0();
  v12 = swift_allocObject();
  v13 = v0;
  swift_weakInit();
  v67 = sub_100049894;
  v68 = v12;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 1107296256;
  v65 = sub_1000499CC;
  v66 = &unk_100090930;
  v14 = _Block_copy(v64);

  xpc_activity_register("com.apple.dt.remotepairing.updatebonjour", XPC_ACTIVITY_CHECK_IN, v14);
  _Block_release(v14);
  v67 = nullsub_1;
  v68 = 0;
  v64[0] = _NSConcreteStackBlock;
  sub_1000499D4();
  v65 = v15;
  v66 = &unk_100090958;
  v16 = _Block_copy(v64);
  xpc_set_event_stream_handler("com.apple.bonjour.registration", v11, v16);
  _Block_release(v16);
  v67 = sub_100043194;
  v68 = 0;
  v64[0] = _NSConcreteStackBlock;
  sub_1000499D4();
  v65 = v17;
  v66 = &unk_100090980;
  v18 = _Block_copy(v64);
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v11, v18);
  _Block_release(v18);
  v19 = sub_100049A40();
  v63 = 0;
  v20 = launch_activate_socket("TCPControlChannelSocket", v19, &v63);
  if (v20)
  {
    v21 = v20;
    v22 = static os_log_type_t.error.getter();
    v23 = qword_10009CED0;
    if (sub_100040190(v22))
    {
      v24 = sub_100049A40();
      *v24 = 67109120;
      *(v24 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v23, v22, "NetworkControlChannelService: failed to fetch sockets from launchd. Received result %d", v24, 8u);
      sub_100049A00();
    }

    v25 = v19;
  }

  else
  {
    v56 = v7;
    v62 = v2;
    v51 = v19;
    v52 = *v19;
    if (v63)
    {
      v54 = (v61 + 8);
      v53 = (v59 + 8);
      v26 = 4 * v63;
      v27 = v52;
      v55 = v13;
      do
      {
        v28 = *v27;
        if (socket_deny_cellular(*v27))
        {
          sub_1000118F0(0, &qword_100099830, OS_dispatch_source_ptr);
          v29 = static OS_dispatch_source.makeReadSource(fileDescriptor:queue:)();
          swift_getObjectType();
          sub_10000CBD0();
          v30 = swift_allocObject();
          swift_weakInit();
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *(v31 + 24) = v29;
          v60 = v28;
          *(v31 + 32) = v28;
          sub_10000CC48(v31);
          v65 = v32;
          v66 = &unk_1000909D0;
          v33 = _Block_copy(v64);

          swift_unknownObjectRetain();
          j_j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
          sub_10001AC88();
          sub_100049A70();
          OS_dispatch_source.setEventHandler(qos:flags:handler:)();
          _Block_release(v33);
          v58 = *v54;
          (*v54)(v56, v62);
          v57 = *v53;
          (*v53)(v1, v8);

          sub_10000CBD0();
          v34 = swift_allocObject();
          *(v34 + 16) = v29;
          sub_10000CC48(v34);
          v65 = v35;
          v66 = &unk_100090A20;
          v36 = _Block_copy(v64);
          swift_unknownObjectRetain();
          j_j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
          sub_10001AC88();
          sub_100049A70();
          OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
          _Block_release(v36);
          v58(v56, v62);
          v57(v1, v8);

          OS_dispatch_source.resume()();
          v37 = *(v55 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v55;
          *(v55 + 56) = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100054854();
            v37 = v45;
            *(v55 + 56) = v45;
          }

          v39 = *(v37 + 16);
          if (v39 >= *(v37 + 24) >> 1)
          {
            sub_100054854();
            v37 = v46;
          }

          *(v37 + 16) = v39 + 1;
          *(v37 + 4 * v39 + 32) = v60;
          *(v55 + 56) = v37;
          swift_beginAccess();
          swift_unknownObjectRetain();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v55 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = static os_log_type_t.error.getter();
          v41 = qword_10009CED0;
          if (sub_10000CD2C(v40))
          {
            v42 = sub_100049A40();
            v43 = v28;
            v44 = v42;
            *v42 = 67109120;
            *(v42 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v41, v40, "NetworkControlChannelService: Failed to set restrictions on socket %d", v42, 8u);
            sub_10000D8D4(v44);
          }
        }

        ++v27;
        v26 -= 4;
      }

      while (v26);
    }

    v47 = *(v13 + 56);
    if (*(v47 + 16))
    {
      v48 = sub_100048C44(*(v47 + 32));
      *(v13 + 72) = v48;
      *(v13 + 74) = BYTE2(v48) & 1;
    }

    sub_10000CBD0();
    v49 = swift_allocObject();
    swift_weakInit();

    sub_100020070(sub_10004989C, v49);

    v50 = *sub_10001355C((v13 + 88), *(v13 + 112));

    sub_1000552F4(0xD000000000000028, 0x8000000100080160, v50, v13);
    sub_10000D8D4(v52);
    v25 = v51;
  }

  sub_10000D8D4(v25);
  sub_100049A24();
}

void sub_10004302C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 80);

    __chkstk_darwin(v4);
    sub_100013414(&unk_10009A940, &qword_100077D98);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t sub_100043110@<X0>(_xpc_activity_s *a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (result)
  {
    sub_100044B94(a2);
  }

  *a3 = v6 == 0;
  return result;
}

uint64_t sub_100043194(uint64_t a1)
{
  v1 = static os_log_type_t.info.getter();
  v2 = qword_10009CED0;

  return os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Received CoreBlutooth discovery XPC event", 41, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_1000431E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100043750(result, v3);
  }

  return result;
}

uint64_t sub_100043244(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  v2 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v1);
  if (result)
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    swift_unknownObjectRetain();
    sub_100013414(&qword_10009B118, &unk_1000781E0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000C600(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "NetworkControlChannelService: listener source %s cancelled", v4, 0xCu);
    sub_10000CADC(v5);
  }

  return result;
}

uint64_t sub_10004335C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100044C50();
    sub_100045C80();
  }

  return result;
}

void sub_1000433E0()
{
  sub_10000D060();
  v2 = v1;
  v34 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v33 = v7 - v6;
  if ((*(v1 + 216) & 1) == 0)
  {
    *(v1 + 216) = 1;
    sub_10000D488(v1 + 64, v37);
    v13 = *(v1 + 64);
    v14 = sub_100049430(v13);
    if (v14)
    {
      v15 = v14;
      if (v14 < 1)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v0 = v13 & 0xC000000000000001;

      v16 = 0;
      do
      {
        if (v0)
        {
          v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v1 = *(v13 + 8 * v16 + 32);
          swift_unknownObjectRetain();
        }

        ++v16;
        swift_getObjectType();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
      }

      while (v15 != v16);
    }

    sub_10000D488(v2 + 48, &v36);
    v17 = *(v2 + 48);
    if ((v17 & 0xC000000000000001) != 0)
    {
      if (v17 < 0)
      {
        v1 = v17;
      }

      else
      {
        v1 = v17 & 0xFFFFFFFFFFFFFF8;
      }

      __CocoaSet.makeIterator()();
      sub_10000EB18();
      type metadata accessor for ControlChannelConnection();
      sub_1000499E8();
      sub_10000D170(v18, v19, &protocol conformance descriptor for ControlChannelConnection);
      sub_1000228C0();
      Set.Iterator.init(_cocoa:)();
      v17 = v37[3];
      v20 = v37[4];
      v0 = v37[5];
      v21 = v37[6];
      v22 = v37[7];
    }

    else
    {
      v20 = v17 + 56;
      sub_100049A58();
      v22 = v23 & v24;

      v21 = 0;
    }

    v25 = (v0 + 64) >> 6;
    v32 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v26 = (v4 + 104);
    v27 = (v4 + 8);
    if (v17 < 0)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v28 = v21;
      v29 = v22;
      v30 = v21;
      if (!v22)
      {
        break;
      }

LABEL_24:
      v31 = (v29 - 1) & v29;
      sub_10000D3B0();
      if (!v1)
      {
LABEL_30:
        sub_1000134CC(v17);
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v26)(v33, v32, v34);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v27)(v33, v34);
        v21 = v30;
        v22 = v31;
        if ((v17 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_26:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ControlChannelConnection();
          swift_dynamicCast();
          v1 = v35;
          v30 = v21;
          v31 = v22;
          if (v35)
          {
            continue;
          }
        }

        goto LABEL_30;
      }
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v25)
      {
        goto LABEL_30;
      }

      v29 = *(v20 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  static os_log_type_t.error.getter();
  sub_1000135A0();

  os_log(_:dso:log:_:_:)(v8, v9, v10, v11);
}

uint64_t sub_100043750(uint64_t a1, int a2)
{
  sub_100013414(&unk_10009B108, &qword_1000781D8);
  sub_10000D8B0();
  __chkstk_darwin(v4);
  sub_10001ADE0();
  v5 = static os_log_type_t.info.getter();
  v6 = qword_10009CED0;
  if (sub_100040190(v5))
  {
    v7 = sub_100049A40();
    *v7 = 67109120;
    *(v7 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, v5, "Dispatch source event handler fired for listening socket %d", v7, 8u);
    sub_10000D8D4(v7);
  }

  v8 = accept(a2, 0, 0);
  if (v8 < 0)
  {
    v12 = static os_log_type_t.error.getter();
    result = sub_100040190(v12);
    if (result)
    {
      v13 = swift_slowAlloc();
      v14 = sub_10000D464();
      v18 = v14;
      *v13 = 67109378;
      *(v13 + 4) = a2;
      *(v13 + 8) = 2080;
      static POSIXError.current.getter();
      v15 = String.init<A>(describing:)();
      v17 = sub_10000C600(v15, v16, &v18);

      *(v13 + 10) = v17;
      _os_log_impl(&_mh_execute_header, v6, v12, "NetworkControlChannelService: error accepting connection from listening socket %d: %s", v13, 0x12u);
      sub_10000CADC(v14);
      sub_10000D8D4(v14);
      return sub_10000D8D4(v13);
    }
  }

  else
  {
    v9 = v8;
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v6, "NetworkControlChannelService: accepted connected socket from peer", 65, 2, _swiftEmptyArrayStorage);

    return sub_10004770C(0, v2, v9, v2);
  }

  return result;
}

uint64_t sub_100043970(char a1, int a2)
{
  v4 = sub_100013414(&unk_10009B108, &qword_1000781D8);
  __chkstk_darwin(v4);
  if ((a1 & 1) == 0)
  {
    result = close(a2);
    if (result != -1)
    {
      return result;
    }

    v7 = static os_log_type_t.error.getter();
    v8 = qword_10009CED0;
    result = os_log_type_enabled(qword_10009CED0, v7);
    if (!result)
    {
      return result;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    static POSIXError.current.getter();
    v11 = String.init<A>(describing:)();
    v13 = sub_10000C600(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v7, "Received error closing rejected socket: %{public}s", v9, 0xCu);
    sub_10000CADC(v10);
  }

  sub_100042724();
  v5 = _remotepairing_nw_connection_create_with_connected_socket_and_parameters();
  swift_unknownObjectRelease();
  if (!v5)
  {
    v14 = static os_log_type_t.error.getter();
    v15 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10009CED0, "Error creating nw_connection_t from connected socket", 52, 2, _swiftEmptyArrayStorage);
    result = close(a2);
    if (result != -1)
    {
      return result;
    }

    v16 = static os_log_type_t.error.getter();
    result = os_log_type_enabled(v15, v16);
    if (!result)
    {
      return result;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136446210;
    static POSIXError.current.getter();
    v19 = String.init<A>(describing:)();
    v21 = sub_10000C600(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received error closing socket: %{public}s", v17, 0xCu);
    sub_10000CADC(v18);
  }

  sub_100047F40();

  return swift_unknownObjectRelease();
}

uint64_t sub_100043C4C(uint64_t a1, uint64_t a2)
{

  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!remotePairingIsEnabled())
  {
    v24 = static os_log_type_t.default.getter();
    v25 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel due to RemotePairing support being disabled", 95, 2, _swiftEmptyArrayStorage);
LABEL_14:
    v29 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v25, "Not configuring TCP control channel bonjour advertisment as launchd-managed TCP control channels are not enabled", 112, 2, _swiftEmptyArrayStorage);
  }

  if ((static Defaults.deviceAllowTCPControlChannels.getter() & 1) == 0)
  {
    v26 = static os_log_type_t.error.getter();
    v25 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel due to 'deviceAllowTCPControlChannel' not being set to true", 111, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  if (!sub_1000454A0())
  {
    v27 = static os_log_type_t.error.getter();
    v25 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel due to no hosts being paired", 80, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  if (!RPIdentity)
  {
    v28 = static os_log_type_t.error.getter();
    v25 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel as Rapport is not available and auth tag generation is unsupported", 118, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v36 = 8;
  v5 = sysctlbyname("security.mac.amfi.developer_mode_status", (v4 + 16), &v36, 0, 0);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = static os_log_type_t.error.getter();
  v8 = qword_10009CED0;
  if (!os_log_type_enabled(qword_10009CED0, v7))
  {
    goto LABEL_9;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  aBlock[0] = v10;
  *v9 = 136446210;
  if (strerror(v6))
  {
    v11 = String.init(cString:)();
    v13 = sub_10000C600(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v7, "Failed to fetch developer mode status: (%{public}s)", v9, 0xCu);
    sub_10000CADC(v10);

LABEL_9:
    v34 = *(a1 + 40);
    v14 = swift_allocObject();
    v14[2] = v4;
    v14[3] = a1;
    v14[4] = sub_1000497C0;
    v14[5] = a2;
    aBlock[4] = sub_1000499D0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100050100;
    aBlock[3] = &unk_1000908B8;
    v31 = _Block_copy(aBlock);
    v32 = type metadata accessor for DispatchQoS();
    v33 = v30;
    v15 = *(v32 - 8);
    __chkstk_darwin(v32);
    v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

    static DispatchQoS.unspecified.getter();
    v18 = type metadata accessor for DispatchWorkItemFlags();
    v30[2] = v30;
    v19 = *(v18 - 8);
    __chkstk_darwin(v18);
    v30[1] = v4;
    v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _swiftEmptyArrayStorage;
    sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100013414(&unk_100099840, &unk_100077350);
    sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v31;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v19 + 8))(v21, v18);
    (*(v15 + 8))(v17, v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000441F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;

  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!remotePairingIsEnabled())
  {
    v29 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel due to RemotePairing support being disabled", 95, 2, _swiftEmptyArrayStorage);
LABEL_14:
    sub_100047BA0(0, a2 & 1, a3, a4, a5);

    goto LABEL_15;
  }

  if ((static Defaults.deviceAllowTCPControlChannels.getter() & 1) == 0)
  {
    v30 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel due to 'deviceAllowTCPControlChannel' not being set to true", 111, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  if (!sub_1000454A0())
  {
    v31 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel due to no hosts being paired", 80, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  if (!RPIdentity)
  {
    v32 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, qword_10009CED0, "Not configuring launchd-managed TCP control channel as Rapport is not available and auth tag generation is unsupported", 118, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v44 = 8;
  v12 = sysctlbyname("security.mac.amfi.developer_mode_status", (v11 + 16), &v44, 0, 0);
  v42 = v11;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = static os_log_type_t.error.getter();
  v15 = qword_10009CED0;
  if (!os_log_type_enabled(qword_10009CED0, v14))
  {
    goto LABEL_9;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  aBlock[0] = v17;
  *v16 = 136446210;
  if (strerror(v13))
  {
    v18 = String.init(cString:)();
    v20 = sub_10000C600(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v15, v14, "Failed to fetch developer mode status: (%{public}s)", v16, 0xCu);
    sub_10000CADC(v17);

    v11 = v42;
LABEL_9:
    v41 = *(a1 + 40);
    v21 = swift_allocObject();
    v21[2] = v11;
    v21[3] = a1;
    v21[4] = sub_10004949C;
    v21[5] = v10;
    aBlock[4] = sub_1000494AC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100050100;
    aBlock[3] = &unk_1000906B0;
    v37 = _Block_copy(aBlock);
    v39 = type metadata accessor for DispatchQoS();
    v40 = &v34;
    v38 = *(v39 - 8);
    __chkstk_darwin(v39);
    v35 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

    static DispatchQoS.unspecified.getter();
    v23 = type metadata accessor for DispatchWorkItemFlags();
    v36 = &v34;
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _swiftEmptyArrayStorage;
    sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100013414(&unk_100099840, &unk_100077350);
    sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v35;
    v28 = v37;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v24 + 8))(v26, v23);
    (*(v38 + 8))(v27, v39);

LABEL_15:
  }

  __break(1u);
  return result;
}

uint64_t sub_1000447CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006ACDC() & 1) != 0 && ((lockdown_wifi_sync_enabled() & 1) != 0 || (lockdown_wifi_debug_enabled()) || (swift_beginAccess(), *(a1 + 16)))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v25 = sub_100049984;
    v26 = v13;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100050100;
    v24 = &unk_100090750;
    v14 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10009CED0, "Not configuring launchd.managed TCP control channel as both wireless connections via lockdown and developer mode are disabled.", 126, 2, _swiftEmptyArrayStorage);
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v25 = sub_100049980;
    v26 = v16;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100050100;
    v24 = &unk_100090700;
    v14 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
  }

  sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_100044B94(_xpc_activity_s *a1)
{
  OS_dispatch_queue.assertOnQueueHierarchy()();
  state = xpc_activity_get_state(a1);
  v3 = static os_log_type_t.info.getter();
  v4 = qword_10009CED0;
  if (state)
  {
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10009CED0, "Bonjour registration XPC activity fired", 39, 2, _swiftEmptyArrayStorage);

    return sub_100044C50();
  }

  else
  {

    return os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Checking in for bonjour registration XPC activity", 49, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100044C50()
{
  OS_dispatch_queue.assertOnQueueHierarchy()();
  String.utf8CString.getter();
  xpc_set_event();

  return sub_100043C4C(v1, v0);
}

uint64_t sub_100044CBC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BonjourService();
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BonjourAdvertFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*(a2 + 74) != 1)
    {
      v44 = v17;
      v45 = v16;
      v40 = v7;
      v41 = v5;
      v42 = v4;
      v43 = v19;
      v39 = *(a2 + 72);
      UUID.init()();
      aBlock = _swiftEmptyArrayStorage;
      sub_10000D170(&qword_10009B0E8, &type metadata accessor for BonjourAdvertFlags, &protocol conformance descriptor for BonjourAdvertFlags);
      sub_100013414(&qword_10009B0F0, &qword_1000781D0);
      v25 = v43;
      sub_100028120(&qword_10009B0F8, &qword_10009B0F0, &qword_1000781D0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_1000455CC();
      v27 = v26;
      (*(v12 + 8))(v14, v11);
      if (!v27)
      {
        return (*(v44 + 8))(v25, v45);
      }

      v28 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10009CED0, "Updating bonjour advertisment", 29, 2, _swiftEmptyArrayStorage);
      v38 = a2;
      v29 = v42;
      v36 = swift_allocBox();
      v31 = v30;
      XPCDictionary.init()();
      aBlock = 0;
      LOBYTE(v48) = 0;
      sub_100049810();
      v37 = v27;
      XPCDictionary.subscript.setter();
      v32 = v46;
      (*(v46 + 104))(v10, enum case for BonjourService.default(_:), v8);
      BonjourService.rawValue.getter();
      (*(v32 + 8))(v10, v8);
      XPCDictionary.subscript.setter();
      aBlock = 0;
      LOBYTE(v48) = 0;
      XPCDictionary.subscript.setter();
      aBlock = v39;
      LOBYTE(v48) = 0;
      XPCDictionary.subscript.setter();
      UUID.uuidString.getter();
      XPCDictionary.subscript.setter();
      v51 = sub_100049864;
      v52 = v36;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_1000453EC;
      v50 = &unk_1000908E0;
      v33 = _Block_copy(&aBlock);

      nw_txt_record_access_bytes(v37, v33);
      _Block_release(v33);
      swift_beginAccess();
      v35 = v40;
      v34 = v41;
      (*(v41 + 16))(v40, v31, v29);
      XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
      swift_unknownObjectRelease();
      (*(v34 + 8))(v35, v29);
      (*(v44 + 8))(v25, v45);
    }

    v20 = static os_log_type_t.error.getter();
    v21 = qword_10009CED0;
    v22 = "Not configuring TCP control channel bonjour advertisment as listening port number is unknown";
    v23 = 92;
  }

  else
  {
    v20 = static os_log_type_t.error.getter();
    v21 = qword_10009CED0;
    v22 = "Not configuring TCP control channel bonjour advertisment as launchd-managed TCP control channels are not enabled";
    v23 = 112;
  }

  return os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, v22, v23, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100045344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for XPCDictionary();
  swift_projectBox();
  Data.init(bytes:count:)();
  swift_beginAccess();
  XPCDictionary.subscript.setter();
  swift_endAccess();
  return 1;
}

uint64_t sub_1000453EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_100045448(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  xpc_set_event();
}

BOOL sub_1000454A0()
{
  sub_10001E884();
  v1 = sub_100049430(v0);

  return v1 != 0;
}

void sub_1000455CC()
{
  sub_10000D060();
  sub_10000EB18();
  v2 = type metadata accessor for UUID();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v9 = type metadata accessor for String.Encoding();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_10001ADE0();
  v60 = v0;
  UUID.uuidString.getter();
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;

  v16 = v1;
  v17 = v15;
  (*(v11 + 8))(v16, v9);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v18 = sub_10001FE84(v13);
    v57 = v19;
    v58 = v17;
    v59 = v13;
    nw_txt_record_create_dictionary();
    v20 = static os_log_type_t.debug.getter();
    v21 = qword_10009CED0;
    (*(v4 + 16))(v8, v60, v2);
    if (os_log_type_enabled(v21, v20))
    {
      v22 = sub_10000D030();
      v61 = sub_10000D464();
      *v22 = 136446210;
      sub_10000D170(&qword_10009B0E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v56 = v18;
      v23 = v21;
      dispatch thunk of CustomStringConvertible.description.getter();
      (*(v4 + 8))(v8, v2);
      v24 = sub_1000228C0();
      v27 = sub_10000C600(v24, v25, v26);

      *(v22 + 4) = v27;
      v28 = v23;
      v18 = v56;
      _os_log_impl(&_mh_execute_header, v28, v20, "NetworkControlChannelService: Creating new bonjour advertisment with UUID=%{public}s", v22, 0xCu);
      sub_10000CADC(v61);
      sub_100049A00();
      sub_10000D8D4(v22);
    }

    else
    {
      (*(v4 + 8))(v8, v2);
    }

    swift_getObjectType();
    v29 = static NetworkPairingKeys.identifier.getter();
    v31 = v30;
    v32 = UUID.uuidString.getter();
    sub_10000D56C(v32, v33, v29, v31);
    v34 = static NetworkPairingKeys.authTag.getter();
    v36 = v35;
    v37 = Data.base64EncodedString(options:)(0);
    sub_10000D56C(v37._countAndFlagsBits, v37._object, v34, v36);
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v38 = static ControlChannelConnectionWireProtocolVersion.current.getter();
    v39 = [v38 description];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = static NetworkPairingKeys.wireProtocolVersion.getter();
    sub_10000D56C(v40, v42, v43, v44);
    v45 = static ControlChannelConnectionWireProtocolVersion.minimumSupported.getter();
    v46 = [v45 description];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NetworkPairingKeys.minimumSupportedWireProtocolVersion.getter();
    v47 = sub_1000228C0();
    sub_10000D56C(v47, v48, v49, v50);
    v51 = static NetworkPairingKeys.flags.getter();
    v53 = v52;
    BonjourAdvertFlags.rawValue.getter();
    sub_100049748();
    v54 = BinaryInteger.description.getter();
    sub_10000D56C(v54, v55, v51, v53);
    sub_10000ECF4(v59, v58);
    sub_10000DF50(v18, v57);
    sub_1000135A0();
  }
}

void sub_100045AC4()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for String.Encoding();
  sub_10000CBBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v13 = v12 - v11;
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  (*(v9 + 8))(v13, v7);
  if (v16 >> 60 == 15)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    __chkstk_darwin(v17);
    *&v20[-48] = v2;
    *&v20[-40] = v0;
    *&v20[-32] = v6;
    *&v20[-24] = v4;
    v18 = v14;
    v19 = v16;
    sub_1000424DC(sub_10004979C, &v20[-64], v14, v16);

    sub_10000ECF4(v14, v16);
    sub_1000135A0();
  }
}

void sub_100045C80()
{
  sub_100049A9C();
  if (!CBDiscovery)
  {
    static os_log_type_t.default.getter();
LABEL_8:
    sub_100049A24();

    os_log(_:dso:log:_:_:)(v3, v4, v5, v6);
    return;
  }

  v2 = v0;
  if (remotePairingIsEnabled())
  {
    if (static Defaults.deviceAllowBluetoothDeviceDiscovery.getter())
    {
      if (sub_1000454A0())
      {
        if (!*(v0 + 184))
        {
          v13 = type metadata accessor for XPCDictionary();
          sub_10000CBBC();
          v15 = v14;
          __chkstk_darwin(v16);
          sub_10000CBDC();
          sub_10001ADE0();
          sub_100013414(&qword_10009B0A8, &qword_1000781B8);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_100077390;
          *(v17 + 56) = &type metadata for String;
          strcpy((v17 + 32), "discoveryFlags");
          *(v17 + 47) = -18;
          v18 = sub_100013414(&qword_10009B0B0, &unk_1000781C0);
          *(v17 + 64) = &off_10008EAC8;
          *(v17 + 88) = v18;
          *(v17 + 96) = 0x526E616353656C62;
          *(v17 + 104) = 0xEB00000000657461;
          *(v17 + 152) = &type metadata for String;
          *(v17 + 120) = &type metadata for String;
          *(v17 + 128) = 0x756F72676B636142;
          *(v17 + 136) = 0xEA0000000000646ELL;
          sub_1000118F0(0, &qword_10009B0B8, NSDictionary_ptr);
          NSDictionary.init(dictionaryLiteral:)();
          v19 = XPCDictionary.init(nsDictionary:)();
          __chkstk_darwin(v19);
          XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
          v20 = [objc_allocWithZone(CBDiscovery) init];
          [v20 setDiscoveryFlags:33685504];
          [v20 setDispatchQueue:*(v2 + 80)];
          [v20 setBleScanRate:20];
          [v20 setBleScanRateScreenOff:20];
          v29 = sub_10004952C;
          v30 = v2;
          v25 = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_10000C200;
          v28 = &unk_100090818;
          v21 = _Block_copy(&v25);

          [v20 setDeviceFoundHandler:v21];
          _Block_release(v21);
          v29 = sub_100049534;
          v30 = v2;
          v25 = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_10000C200;
          v28 = &unk_100090840;
          v22 = _Block_copy(&v25);

          [v20 setDeviceLostHandler:v22];
          _Block_release(v22);
          v29 = sub_100046940;
          v30 = 0;
          v25 = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_100046AEC;
          v28 = &unk_100090868;
          v23 = _Block_copy(&v25);
          [v20 activateWithCompletion:v23];
          _Block_release(v23);
          (*(v15 + 8))(v1, v13);
          v24 = *(v2 + 184);
          *(v2 + 184) = v20;

          sub_100049A24();
          return;
        }

        static os_log_type_t.info.getter();
        goto LABEL_8;
      }

      v10 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10009CED0, "Not configuring Bluetooth discovery as no hosts are paired", 58, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v9 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10009CED0, "Not configuring Bluetooth discovery due to deviceAllowBluetoothDeviceDiscovery default value", 92, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10009CED0, "Not configuring Bluetooth discovery due to due to remote pairing support being disabled", 87, 2, _swiftEmptyArrayStorage);
  }

  String.utf8CString.getter();
  xpc_set_event();

  [*(v0 + 184) invalidate];
  *(v0 + 184) = 0;
  sub_100049A24();
}

uint64_t sub_100046244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.utf8CString.getter();
  xpc_set_event();
}

uint64_t sub_1000462A0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Data.HexStringEncodingOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100049684(a1, &selRef_identifier);
  if (v9)
  {
    v10 = result;
    v11 = v9;
    v12 = static os_log_type_t.default.getter();
    sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v13, v12))
    {
      v29 = v5;
      v31 = v12;
      v32 = v10;
      v33 = a2;
      v14 = 0x6E776F6E6B6E553CLL;
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v36 = v30;
      *v15 = 136315394;
      v16 = sub_100049684(a1, &selRef_name);
      if (!v17)
      {
        v16 = 0x6E776F6E6B6E553CLL;
      }

      v18 = 0xE90000000000003ELL;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE90000000000003ELL;
      }

      v20 = sub_10000C600(v16, v19, &v36);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v21 = sub_1000496E4(a1);
      if (v22 >> 60 != 15)
      {
        v23 = v21;
        v24 = v22;
        static Data.HexStringEncodingOptions.bluetoothAddress.getter();
        v14 = Data.hexEncodedString(options:)();
        v18 = v25;
        sub_10000ECF4(v23, v24);
        (*(v29 + 8))(v7, v4);
      }

      v10 = v32;
      v26 = sub_10000C600(v14, v18, &v36);

      *(v15 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v13, v31, "Discovered NearbyAction trigger from device (name=%s, address=%s)", v15, 0x16u);
      swift_arrayDestroy();

      a2 = v33;
    }

    else
    {
    }

    v37 = sub_1000118F0(0, &qword_10009B0C8, CBDevice_ptr);
    *&v36 = a1;
    v27 = *(a2 + 224);
    sub_10000E8A4(&v36, v35);
    v28 = a1;

    swift_isUniquelyReferenced_nonNull_native();
    v34 = v27;
    sub_100068B8C(v35, v10, v11);

    return sub_1000426E4(v34);
  }

  return result;
}

uint64_t sub_1000465B8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Data.HexStringEncodingOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100049684(a1, &selRef_identifier);
  if (v9)
  {
    v10 = result;
    v11 = v9;
    v12 = static os_log_type_t.default.getter();
    sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v13, v12))
    {
      v33 = v5;
      v35 = v12;
      v36 = v10;
      v37 = a2;
      v14 = 0x6E776F6E6B6E553CLL;
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v39[0] = v34;
      *v15 = 136315394;
      v16 = sub_100049684(a1, &selRef_name);
      if (!v17)
      {
        v16 = 0x6E776F6E6B6E553CLL;
      }

      v18 = 0xE90000000000003ELL;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE90000000000003ELL;
      }

      v20 = sub_10000C600(v16, v19, v39);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v21 = sub_1000496E4(a1);
      if (v22 >> 60 != 15)
      {
        v23 = v21;
        v24 = v22;
        static Data.HexStringEncodingOptions.bluetoothAddress.getter();
        v14 = Data.hexEncodedString(options:)();
        v18 = v25;
        sub_10000ECF4(v23, v24);
        (*(v33 + 8))(v7, v4);
      }

      a2 = v37;
      v26 = sub_10000C600(v14, v18, v39);

      *(v15 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v13, v35, "Lost NearbyAction trigger from device (name=%s, address=%s)", v15, 0x16u);
      swift_arrayDestroy();

      v10 = v36;
    }

    else
    {
    }

    v27 = *(a2 + 224);

    v28 = sub_10004FEF0(v10, v11);
    if (v29)
    {
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v27;
      v32 = *(v27 + 24);
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32);
      v27 = v38;

      sub_10000E8A4((*(v27 + 56) + 32 * v30), v39);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v39, 0, sizeof(v39));
    }

    sub_100030708(v39, &qword_100099A00, &qword_100077540);
    return sub_1000426E4(v27);
  }

  return result;
}

uint64_t sub_100046940(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = static os_log_type_t.error.getter();
    v2 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v1))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_10000C600(v5, v6, &v11);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v2, v1, "Bluetooth discovery activation failed: %s", v3, 0xCu);
      sub_10000CADC(v4);
    }

    else
    {
    }
  }

  else
  {
    v9 = static os_log_type_t.default.getter();
    v10 = qword_10009CED0;

    return os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Bluetooth discovery activated", 29, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100046AEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100046B58()
{
  v1 = v0;
  sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D8B0();
  __chkstk_darwin(v2);
  v4 = &v16 - v3;
  v5 = static os_log_type_t.default.getter();
  v6 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10009CED0, "Bluetooth discovery activating WiFi keep alive and on-demand listener", 69, 2, _swiftEmptyArrayStorage);
  v7 = *(v0 + 192);
  if (!v7)
  {
    type metadata accessor for WiFiKeepAlive();
    swift_allocObject();
    v7 = WiFiKeepAlive.init(reason:)();
  }

  *(v0 + 192) = v7;

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  swift_beginAccess();
  v11 = IOPMAssertionCreateWithDescription(v8, v9, v10, 0, 0, 0.0, 0, (v1 + 200));
  swift_endAccess();

  if (v11)
  {
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = sub_100049A40();
      *v13 = 67109120;
      *(v13 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v12, "Failed to create power assertion for NearbyAction: %d", v13, 8u);
      sub_10000D8D4(v13);
    }
  }

  UUID.init()();
  v14 = type metadata accessor for UUID();
  sub_1000223E8(v4, 0, 1, v14);
  sub_100046F58(v4);
  return sub_100030708(v4, &qword_1000999E8, &unk_100077D60);
}

uint64_t sub_100046DB8()
{
  sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D8B0();
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10009CED0, "Bluetooth discovery disabling WiFi keep alive and on-demand listener", 68, 2, _swiftEmptyArrayStorage);
  *(v0 + 192) = 0;

  sub_100046EA4();
  v5 = type metadata accessor for UUID();
  sub_1000223E8(v3, 1, 1, v5);
  sub_100046F58(v3);
  return sub_100030708(v3, &qword_1000999E8, &unk_100077D60);
}

uint64_t sub_100046EA4()
{
  swift_beginAccess();
  result = *(v0 + 200);
  if (result)
  {
    result = IOPMAssertionRelease(result);
    if (result)
    {
      v2 = result;
      v3 = static os_log_type_t.error.getter();
      result = os_log_type_enabled(qword_10009CED0, v3);
      if (result)
      {
        v4 = sub_100049A40();
        *v4 = 67109120;
        v4[1] = v2;
        sub_100049AB8(&_mh_execute_header, v5, v6, "Failed to release power assertion for NearbyAction: %d");
        result = sub_10000D8D4(v4);
      }
    }

    *(v0 + 200) = 0;
  }

  return result;
}

void sub_100046F58(uint64_t a1)
{
  sub_100049A9C();
  v3 = v1;
  sub_10000EB18();
  v4 = type metadata accessor for BonjourService();
  sub_10000CBBC();
  v48 = v5;
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for BonjourAdvertFlags();
  sub_10000CBBC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v16 = v15 - v14;
  sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D8B0();
  __chkstk_darwin(v17);
  sub_10001ADE0();
  v18 = type metadata accessor for UUID();
  sub_10000CBBC();
  v49 = v19;
  __chkstk_darwin(v20);
  sub_10000CBDC();
  v23 = v22 - v21;
  v24 = *(v1 + 208);
  if (v24)
  {
    nw_listener_cancel(v24);
    *(v1 + 208) = 0;
    swift_unknownObjectRelease();
  }

  v25 = sub_1000228C0();
  sub_1000225B8(v25, v26);
  if (sub_100022484(v2, 1, v18) != 1)
  {
    (*(v49 + 32))(v23, v2, v18);
    static BonjourAdvertFlags.onDemand.getter();
    sub_1000455CC();
    v28 = v27;
    (*(v12 + 8))(v16, v10);
    if (!v28)
    {
      (*(v49 + 8))(v23, v18);
      goto LABEL_16;
    }

    v29 = sub_100042724();
    nw_parameters_set_no_wake_from_sleep();
    v30 = [objc_opt_self() currentState];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 supportsDataTransfer];

      if (v32)
      {
        v33 = static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_10009CED0, "Enabling peer-to-peer connectivity on on-demand network control channel listener", 80, 2, _swiftEmptyArrayStorage);
        nw_parameters_set_include_peer_to_peer(v29, 1);
      }
    }

    v34 = nw_listener_create(v29);
    if (v34)
    {
      v35 = v34;
      v47 = v28;
      UUID.uuidString.getter();
      (*(v48 + 104))(v9, enum case for BonjourService.default(_:), v4);
      BonjourService.rawValue.getter();
      (*(v48 + 8))(v9, v4);
      v36 = String.utf8CString.getter();

      v37 = String.utf8CString.getter();

      bonjour_service = nw_advertise_descriptor_create_bonjour_service((v36 + 32), (v37 + 32), 0);

      if (bonjour_service)
      {
        nw_advertise_descriptor_set_txt_record_object(bonjour_service, v47);
        nw_listener_set_advertise_descriptor(v35, bonjour_service);
        v54 = sub_100047528;
        v55 = 0;
        v50 = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_100040988;
        v53 = &unk_1000905C0;
        v39 = _Block_copy(&v50);
        nw_listener_set_state_changed_handler(v35, v39);
        _Block_release(v39);
        v54 = sub_10004948C;
        v55 = v3;
        v50 = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_10000DC24;
        v53 = &unk_1000905E8;
        v40 = _Block_copy(&v50);

        nw_listener_set_new_connection_handler(v35, v40);
        _Block_release(v40);
        nw_listener_set_queue(v35, *(v3 + 80));
        nw_listener_start(v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v41 = sub_100049A88();
        v42(v41);
        *(v3 + 208) = v35;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v44 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, qword_10009CED0, "Unable to create network listener service for Bluetooth discovery", 65, 2, _swiftEmptyArrayStorage, v29);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, qword_10009CED0, "Unable to create network listener for Bluetooth discovery", 57, 2, _swiftEmptyArrayStorage);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v45 = sub_100049A88();
    v46(v45);
    goto LABEL_16;
  }

  sub_100030708(v2, &qword_1000999E8, &unk_100077D60);
LABEL_16:
  sub_100049A24();
}

uint64_t sub_100047528(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = static os_log_type_t.default.getter();
  v5 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v4);
  if (result)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 67109378;
    *(v7 + 4) = v3;
    *(v7 + 8) = 2080;
    if (a2)
    {
      v9 = [a2 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE600000000000000;
      v10 = 0x29656E6F6E28;
    }

    v13 = sub_10000C600(v10, v12, &v14);

    *(v7 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v5, v4, "Bluetooth discovery bonjour listener state changed: %u, error: %s", v7, 0x12u);
    sub_10000CADC(v8);
  }

  return result;
}

uint64_t sub_100047678(NSObject *a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  return sub_100047954(1, a2, a1, a2);
}

void sub_1000476C8(char a1, nw_connection_t connection)
{
  if (a1)
  {
    sub_100047F40();
  }

  else
  {

    nw_connection_cancel(connection);
  }
}

uint64_t sub_10004770C(char a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  OS_dispatch_queue.assertOnQueueHierarchy()();
  swift_beginAccess();

  v10 = sub_100061FD0(v9);

  if (v10 > 39)
  {
    v12 = static os_log_type_t.error.getter();
    v13 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v12))
    {

      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = *(a2 + 48);
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *(v15 + 16);
      }

      *(v14 + 4) = v16;

      _os_log_impl(&_mh_execute_header, v13, v12, "Rejecting incoming TCP connection as we already have %ld TCP peers", v14, 0xCu);
    }

    goto LABEL_13;
  }

  if ((remotePairingIsEnabled() & 1) == 0)
  {
    v17 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10009CED0, "Rejecting TCP control channel connection due to remotepairing support being disabled", 84, 2, _swiftEmptyArrayStorage);
    goto LABEL_13;
  }

  if (*(a2 + 216))
  {
    v11 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10009CED0, "Rejecting TCP control channel connection as service is shutting down", 68, 2, _swiftEmptyArrayStorage);
LABEL_13:
    sub_100043970(0, a3);
    goto LABEL_14;
  }

  sub_1000441F8(a2, a1 & 1, a2, sub_100049888, v8);
LABEL_14:
}

uint64_t sub_100047954(char a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  swift_unknownObjectRetain();

  OS_dispatch_queue.assertOnQueueHierarchy()();
  swift_beginAccess();

  v10 = sub_100061FD0(v9);

  if (v10 > 39)
  {
    v12 = static os_log_type_t.error.getter();
    v13 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v12))
    {

      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = *(a2 + 48);
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *(v15 + 16);
      }

      *(v14 + 4) = v16;

      _os_log_impl(&_mh_execute_header, v13, v12, "Rejecting incoming TCP connection as we already have %ld TCP peers", v14, 0xCu);
    }

    goto LABEL_13;
  }

  if ((remotePairingIsEnabled() & 1) == 0)
  {
    v17 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10009CED0, "Rejecting TCP control channel connection due to remotepairing support being disabled", 84, 2, _swiftEmptyArrayStorage);
    goto LABEL_13;
  }

  if (*(a2 + 216))
  {
    v11 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10009CED0, "Rejecting TCP control channel connection as service is shutting down", 68, 2, _swiftEmptyArrayStorage);
LABEL_13:
    nw_connection_cancel(a3);
    goto LABEL_14;
  }

  sub_1000441F8(a2, a1 & 1, a2, sub_100049494, v8);
LABEL_14:
  swift_unknownObjectRelease();
}

uint64_t sub_100047BA0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 & 1) != 0 || (a1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    v28 = sub_1000494E4;
    v29 = v18;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100050100;
    v27 = &unk_1000907F0;
    v17 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10009CED0, "Rejecting TCP control channel connection from launchd-managed socket as launchd-managed TCP control channels are not enabled", 124, 2, _swiftEmptyArrayStorage);
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    v28 = sub_1000494B8;
    v29 = v16;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100050100;
    v27 = &unk_1000907A0;
    v17 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
  }

  sub_10000D170(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

void sub_100047F40()
{
  sub_10000D060();
  v1 = v0;
  v39 = type metadata accessor for ControlChannelConnection.Options();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for ControlChannelConnection.Options.Device();
  sub_10000CBBC();
  v10 = v9;
  v40 = v9;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v14 = v13 - v12;
  v15 = v0[10];
  OS_dispatch_queue.assertOnQueueHierarchy()();
  ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
  v16 = type metadata accessor for NWObjcConnectionControlChannelTransport();
  swift_allocObject();
  v17 = swift_unknownObjectRetain();
  v19 = sub_100040C00(v17, v18);
  v44 = v16;
  v45 = sub_10000D170(&unk_10009ACB0, type metadata accessor for NWObjcConnectionControlChannelTransport, &unk_100077F00);
  v43 = v19;
  (*(v10 + 16))(v7, v14, v8);
  (*(v3 + 104))(v7, enum case for ControlChannelConnection.Options.device(_:), v39);
  v20 = v0[17];
  v42[3] = type metadata accessor for SystemKeychainPairingManager();
  v42[4] = sub_10000D170(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager, &unk_1000774BC);
  v42[0] = v20;
  type metadata accessor for ControlChannelConnection();

  v21 = v15;

  static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
  swift_allocObject();
  v22 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
  v23 = v1[16];
  v44 = type metadata accessor for MetadataService(0);
  v45 = sub_10000D170(&qword_10009B090, type metadata accessor for MetadataService, &unk_1000782C8);
  v43 = v23;

  dispatch thunk of ControlChannelConnection.customDeviceMetadataProvider.setter();
  sub_100022260((v1 + 18), &v43);
  dispatch thunk of ControlChannelConnection.tunnelListenerCreator.setter();
  swift_beginAccess();

  sub_10006463C(v42, v22, v24, v25, v26, v27, v28, v29, v39, v40, v42[0]);
  swift_endAccess();

  sub_100042584(v30);
  sub_10000CBD0();
  v31 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;

  dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

  sub_10000CBD0();
  v34 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v35 = swift_allocObject();
  swift_weakInit();

  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;

  dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

  v37 = *sub_10001355C(v1 + 11, v1[14]);

  sub_100055598(0xD00000000000002ELL, 0x800000010007F5D0, v37, v22, v38);

  (*(v41 + 8))(v14, v8);
  sub_1000135A0();
}

uint64_t sub_10004843C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ControlChannelConnectionError.Code();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v35 - v6;
  v7 = type metadata accessor for ControlChannelConnectionError();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for RemotePairingError();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100013414(&qword_10009B098, &qword_1000781B0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v35 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v37 = v3;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v22 = Strong;
    swift_beginAccess();
    sub_10000CE94(v22);
    swift_endAccess();

    sub_100042584(v23);
    dispatch thunk of ControlChannelConnection.invalidationReason.getter();
    v24 = type metadata accessor for ControlChannelConnection.InvalidationReason();
    if (sub_100022484(v19, 1, v24) == 1)
    {

      return sub_100030708(v19, &qword_10009B098, &qword_1000781B0);
    }

    v36 = v2;
    v25 = *(v24 - 8);
    if ((*(v25 + 88))(v19, v24) == enum case for ControlChannelConnection.InvalidationReason.internalError(_:))
    {
      (*(v25 + 96))(v19, v24);
      v26 = *v19;
      swift_errorRetain();
      sub_10000D170(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      static Error<>.networkingError.getter();
      v27 = static _Error.~= infix(_:_:)();

      (*(v14 + 8))(v16, v13);
      if (v27)
      {
LABEL_8:
        v28 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10009CED0, "Rolling bonjour advert after host disconnected", 46, 2, _swiftEmptyArrayStorage);
        sub_100044C50();
      }

      v44 = v26;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v29 = v41;
      if (swift_dynamicCast())
      {
        v35 = v26;
        (*(v40 + 32))(v10, v12, v29);
        v30 = v38;
        ControlChannelConnectionError.code.getter();
        v31 = v36;
        v32 = v37;
        v33 = v39;
        (*(v37 + 104))(v39, enum case for ControlChannelConnectionError.Code.transportError(_:), v36);
        sub_10000D170(&qword_10009B0A0, &type metadata accessor for ControlChannelConnectionError.Code, &protocol conformance descriptor for ControlChannelConnectionError.Code);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v34 = *(v32 + 8);
        v34(v33, v31);
        v34(v30, v31);
        (*(v40 + 8))(v10, v29);
        if (v43 == v42)
        {

          goto LABEL_8;
        }
      }
    }

    else
    {

      return (*(v25 + 8))(v19, v24);
    }
  }

  return result;
}

uint64_t sub_100048AAC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v7)
      {
        v8 = v7;
        if ((sub_100069E94() & 1) == 0)
        {
          (*(v3 + 104))(v5, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v2);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v3 + 8))(v5, v2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100048C44(int a1)
{
  v2 = swift_slowAlloc();
  v22 = 128;
  v3 = getsockname(a1, v2, &v22);
  if (v3)
  {
    v4 = v3;
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(qword_10009CED0, v5))
    {
LABEL_5:
      sub_10000D8D4(v2);
      v10 = 0;
      v11 = 1;
      return v10 | (v11 << 16);
    }

    v6 = sub_100049A40();
    *v6 = 67109120;
    v6[1] = v4;
    sub_100049AB8(&_mh_execute_header, v7, v8, "Unable to resolve port for listening socket. getsockname returned %d");
    v9 = v6;
LABEL_4:
    sub_10000D8D4(v9);
    goto LABEL_5;
  }

  v12 = *(v2 + 1);
  if (v12 != 2 && v12 != 30)
  {
    v18 = static os_log_type_t.error.getter();
    v19 = qword_10009CED0;
    if (!sub_10000CD2C(v18))
    {
      goto LABEL_5;
    }

    v21 = swift_slowAlloc();
    *v21 = 16777472;
    v21[4] = *(v2 + 1);
    _os_log_impl(&_mh_execute_header, v19, v18, "Unknown socket family %hhu", v21, 5u);
    v9 = v21;
    goto LABEL_4;
  }

  v10 = bswap32(*(v2 + 2)) >> 16;
  v14 = static os_log_type_t.default.getter();
  v15 = qword_10009CED0;
  if (sub_10000CD2C(v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 33554688;
    *(v16 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v15, v14, "Resolved listening port for network control channel service: %hu", v16, 6u);
    sub_100049A00();
  }

  sub_10000D8D4(v2);
  v11 = 0;
  return v10 | (v11 << 16);
}

uint64_t sub_100048E30()
{
  sub_100046EA4();

  sub_10000CADC((v0 + 88));

  sub_10000CADC((v0 + 144));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100048EBC()
{
  sub_100048E30();

  return _swift_deallocClassInstance(v0, 232, 7);
}

void *sub_100048F14(NSObject *a1)
{
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v4))
  {

    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = *(v2 + 184) != 0;
    *(v5 + 8) = 2048;
    sub_10000D488(v2 + 48, v34);
    v6 = *(v2 + 48);
    if ((v6 & 0xC000000000000001) != 0)
    {

      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    *(v5 + 10) = v7;

    _os_log_impl(&_mh_execute_header, a1, v4, "NetworkControlChannelService state: ble enabled = %{BOOL}d, connection count = %ld", v5, 0x12u);
    sub_100049A00();
  }

  sub_10000D488(v2 + 48, v37);
  v8 = *(v2 + 48);
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v2 = *(v2 + 48);
    }

    else
    {
      v2 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    __CocoaSet.makeIterator()();
    sub_10000EB18();
    type metadata accessor for ControlChannelConnection();
    sub_1000499E8();
    sub_10000D170(v9, v10, &protocol conformance descriptor for ControlChannelConnection);
    result = Set.Iterator.init(_cocoa:)();
    v8 = v38;
    v12 = v39;
    v1 = v40;
    v13 = v41;
    v14 = v42;
  }

  else
  {
    v12 = v8 + 56;
    sub_100049A58();
    v14 = v15 & v16;

    v13 = 0;
  }

  v17 = (v1 + 64) >> 6;
  while (v8 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22)
    {
      return sub_1000134CC(v8);
    }

    v35 = v22;
    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v2 = v36;
    v20 = v13;
    v21 = v14;
    if (!v36)
    {
      return sub_1000134CC(v8);
    }

LABEL_22:
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v23))
    {
      v24 = sub_10000D030();
      v33 = sub_10000D464();
      v35 = v2;
      v36 = v33;
      *v24 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v25 = String.init<A>(describing:)();
      v32 = v21;
      v27 = v17;
      v28 = v12;
      v29 = v8;
      v30 = a1;
      v31 = sub_10000C600(v25, v26, &v36);

      *(v24 + 4) = v31;
      a1 = v30;
      v8 = v29;
      v12 = v28;
      v17 = v27;
      _os_log_impl(&_mh_execute_header, a1, v23, "NetworkControlChannelService control channel connection: %{public}s", v24, 0xCu);
      sub_10000CADC(v33);
      sub_10000D8D4(v33);
      sub_10000D8D4(v24);

      v13 = v20;
      v14 = v32;
    }

    else
    {

      v13 = v20;
      v14 = v21;
    }
  }

  v18 = v13;
  v19 = v14;
  v20 = v13;
  if (v14)
  {
LABEL_18:
    v21 = (v19 - 1) & v19;
    sub_10000D3B0();
    if (!v2)
    {
      return sub_1000134CC(v8);
    }

    goto LABEL_22;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      return sub_1000134CC(v8);
    }

    v19 = *(v12 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

const uint8_t *sub_100049338@<X0>(const uint8_t *result@<X0>, NSObject *a2@<X2>, _BYTE *a7@<X8>)
{
  if (result)
  {
    v8 = result;
    v10 = Data.count.getter();
    v11 = String.utf8CString.getter();
    LOBYTE(v8) = nw_txt_record_set_key(a2, (v11 + 32), v8, v10);

    *a7 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1000493E4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100049430(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

uint64_t sub_10004953C(void (*a1)(char *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v10 = WORD2(a4);
  v9 = a4;
  a1(&v7, &v8, &v8 + BYTE6(a4));
  if (!v4)
  {
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_1000495D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_100049684(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000496E4(void *a1)
{
  v1 = [a1 btAddressData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100049748()
{
  result = qword_10009B0D8;
  if (!qword_10009B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B0D8);
  }

  return result;
}

uint64_t sub_1000497C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100049810()
{
  result = qword_10009B100;
  if (!qword_10009B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B100);
  }

  return result;
}

uint64_t sub_1000498A4(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100049A00()
{
}

uint64_t sub_100049A40()
{

  return swift_slowAlloc();
}

void sub_100049AB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_100049B34(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_100049B94()
{
  v1 = v0;
  sub_10004CD30();
  v2 = *(v0 + 96);
  v3 = swift_allocObject();
  swift_weakInit();
  v15 = sub_10004C154;
  v16 = v3;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10005014C;
  v14 = &unk_100090A98;
  v4 = _Block_copy(&v11);

  v5 = String.utf8CString.getter();
  v6 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__userAssignedNameDarwinNotificationToken;
  sub_10001ADBC();
  swift_beginAccess();
  notify_register_dispatch((v5 + 32), (v1 + v6), v2, v4);
  swift_endAccess();

  _Block_release(v4);
  v7 = swift_allocObject();
  swift_weakInit();
  v15 = sub_10004C184;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10005014C;
  v14 = &unk_100090AC0;
  v8 = _Block_copy(&v11);

  v9 = String.utf8CString.getter();
  v10 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__developerModeStatusDarwinNotificationToken;
  sub_10001ADBC();
  swift_beginAccess();
  notify_register_dispatch((v9 + 32), (v1 + v10), v2, v8);
  swift_endAccess();

  _Block_release(v8);
}

uint64_t sub_100049DB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

void sub_100049E10(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v8 = type metadata accessor for PeerDeviceInfo();
  sub_10000CBBC();
  v145 = v9;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v136 = v12 - v11;
  v158 = type metadata accessor for AuxiliaryMetadataItem();
  sub_10000CBBC();
  v148 = v13;
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v151 = v16 - v15;
  v17 = sub_100013414(&qword_10009B328, &unk_100078450);
  v18 = sub_10000D368(v17);
  __chkstk_darwin(v18);
  sub_10000D2F8();
  v150 = v19;
  sub_100022894();
  __chkstk_darwin(v20);
  v147 = &v118 - v21;
  v22 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  v23 = sub_10000D368(v22);
  __chkstk_darwin(v23);
  sub_10000D2F8();
  v135 = v24;
  sub_100022894();
  __chkstk_darwin(v25);
  v27 = &v118 - v26;
  v137 = a1;
  if (a1)
  {
    v28 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  }

  else
  {
    v28 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
  }

  v29 = v2 + v28;
  swift_beginAccess();
  sub_10004BE34(v29, v27, &qword_10009B320, &unk_1000782F0);
  if (sub_100022484(v27, 1, v8) != 1)
  {
    (*(v145 + 32))(a2, v27, v8);
    return;
  }

  sub_100022560(v27, &qword_10009B320, &unk_1000782F0);
  v30 = String._bridgeToObjectiveC()();
  v31 = MGCopyAnswer();

  if (!v31)
  {
    goto LABEL_34;
  }

  v134 = v2;
  *&v153 = v31;
  if ((sub_10000D964(v32, v33, v34, &type metadata for String) & 1) == 0)
  {
    goto LABEL_34;
  }

  v35 = *(&v156 + 1);
  v132 = v156;
  v36 = String._bridgeToObjectiveC()();
  v37 = MGCopyAnswer();

  if (!v37 || (v133 = v35, *&v153 = v37, (sub_10000D964(v38, v39, v40, &type metadata for String) & 1) == 0))
  {
LABEL_33:

LABEL_34:
    sub_10004BD80(&unk_10009A0D0, &protocol conformance descriptor for RemotePairingError);
    static Error<>.dataCorrupted.getter();
    sub_10004BD80(&qword_100099850, &protocol conformance descriptor for RemotePairingError);
    swift_allocError();
    Error<>.init(_:_:)();
    swift_willThrow();
    return;
  }

  v41 = *(&v156 + 1);
  v126 = v156;
  v42 = String._bridgeToObjectiveC()();
  v43 = MGCopyAnswer();

  if (!v43 || (*&v153 = v43, (sub_10000D964(v44, v45, v46, &type metadata for String) & 1) == 0))
  {

    goto LABEL_33;
  }

  v121 = v41;
  v125 = *(&v156 + 1);
  v119 = v156;
  v47 = v134;
  sub_10004B6D0();
  v48 = objc_allocWithZone(type metadata accessor for DeviceKeyValueStore());
  v146 = DeviceKeyValueStore.init(copyingValuesFrom:)();
  v120 = sub_10004C6C8();
  v50 = v49 + 64;
  sub_10004C1FC();
  v53 = v52 & v51;
  v55 = (v54 + 63) >> 6;
  v138 = v148 + 16;
  v149 = v148 + 32;
  v140 = (v148 + 8);
  v129 = v56;

  v57 = 0;
  v124 = v4;
  v123 = a2;
  v122 = v8;
  v58 = v147;
  v127 = v55;
  v128 = v50;
  if (!v53)
  {
    goto LABEL_13;
  }

  while (2)
  {
    v59 = v57;
LABEL_16:
    v131 = (v53 - 1) & v53;
    v130 = v59;
    v60 = __clz(__rbit64(v53)) | (v59 << 6);
    v61 = *(*(v129 + 56) + 8 * v60);
    v142 = *(*(v129 + 48) + 16 * v60);
    v62 = v61 + 64;
    sub_10004C1FC();
    v65 = v64 & v63;
    v144 = (v66 + 63) >> 6;
    v143 = v67;

    v139 = v61;

    v68 = 0;
    for (i = v61 + 64; ; v62 = i)
    {
      if (!v65)
      {
        v70 = v150;
        while (1)
        {
          v69 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v69 >= v144)
          {
            v84 = sub_100013414(&qword_10009B330, &unk_100078300);
            sub_1000223E8(v70, 1, 1, v84);
            v65 = 0;
            goto LABEL_25;
          }

          v65 = *(v62 + 8 * v69);
          ++v68;
          if (v65)
          {
            v68 = v69;
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v69 = v68;
LABEL_24:
      v71 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v72 = (*(v139 + 48) + 16 * (v71 | (v69 << 6)));
      v74 = *v72;
      v73 = v72[1];
      v75 = v148;
      v76 = sub_10004C234();
      v77(v76);
      v78 = sub_100013414(&qword_10009B330, &unk_100078300);
      v79 = *(v78 + 48);
      v80 = v150;
      *v150 = v74;
      *(v80 + 1) = v73;
      v70 = v80;
      (*(v75 + 32))(&v80[v79], a2, &type metadata for Swift.AnyObject);
      sub_1000223E8(v70, 0, 1, v78);

      v58 = v147;
LABEL_25:
      sub_10004BDC4(v70, v58);
      v81 = sub_100013414(&qword_10009B330, &unk_100078300);
      if (sub_100022484(v58, 1, v81) == 1)
      {
        break;
      }

      v82 = sub_10004C234();
      v83(v82);

      sub_10004AB68(&v156);
      dispatch thunk of DeviceKeyValueStore.setValue(_:_:_:sensitive:)();

      sub_10000CADC(&v156);
      (*v140)(a2, &type metadata for Swift.AnyObject);
    }

    v57 = v130;
    v47 = v134;
    v50 = v128;
    v55 = v127;
    v53 = v131;
    if (v131)
    {
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_13:
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_64;
    }

    if (v59 >= v55)
    {
      break;
    }

    v53 = *(v50 + 8 * v59);
    ++v57;
    if (v53)
    {
      goto LABEL_16;
    }
  }

  sub_10001355C((v47 + 56), *(v47 + 80));
  v85 = sub_100027F7C();
  v86 = sub_10004B5B4(v85 & 0xFFFFFF);
  v158 = v86;
  if (v86)
  {
    v87 = v86;
    goto LABEL_39;
  }

LABEL_38:
  v87 = Dictionary.init(dictionaryLiteral:)();
LABEL_39:
  sub_10004C218();
  v90 = v89 & v88;
  v92 = (v91 + 63) >> 6;
  v151 = v93;

  v94 = 0;
  if (!v90)
  {
    goto LABEL_41;
  }

  do
  {
    v95 = v94;
LABEL_45:
    v96 = __clz(__rbit64(v90));
    v90 &= v90 - 1;
    v97 = v96 | (v95 << 6);
    v98 = (*(v87 + 48) + 16 * v97);
    v100 = *v98;
    v99 = v98[1];
    sub_10000CA80(*(v87 + 56) + 32 * v97, &v152);
    *&v153 = v100;
    *(&v153 + 1) = v99;
    sub_10000E8A4(&v152, &v154);

LABEL_46:
    v156 = v153;
    v157[0] = v154;
    v157[1] = v155;
    if (!*(&v153 + 1))
    {
      v101 = v158 != 0;

      *(&v157[0] + 1) = &type metadata for Bool;
      LOBYTE(v156) = v120 && v101;
      dispatch thunk of DeviceKeyValueStore.setValue(_:_:_:sensitive:)();
      sub_10000CADC(&v156);
      v102 = String._bridgeToObjectiveC()();
      v103 = MGCopyAnswer();

      v104 = v124;
      v105 = v123;
      v106 = v122;
      v107 = v134;
      v108 = v137;
      if (v103)
      {
        objc_opt_self();
        v109 = swift_dynamicCastObjCClass();
        if (v109)
        {
          [v109 unsignedLongLongValue];
          swift_unknownObjectRelease();
LABEL_55:
          if ((v108 & 1) == 0)
          {

            v119 = 0;
            v125 = 0xE000000000000000;
          }

          v111 = v146;
          dispatch thunk of DeviceKeyValueStore.data(includeSensitive:)();
          if (v104)
          {
          }

          else
          {
            v112 = v136;
            PeerDeviceInfo.init(name:model:udid:ecid:deviceKVSData:deviceKVSIncludesSensitiveInfo:)();

            v113 = v145;
            v114 = v106;
            v115 = v135;
            (*(v145 + 16))();
            sub_1000223E8(v115, 0, 1, v114);
            if (v108)
            {
              v116 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
            }

            else
            {
              v116 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
            }

            v117 = v134;
            sub_10001ADBC();
            swift_beginAccess();
            sub_10004BD10(v115, v117 + v116);
            swift_endAccess();
            (*(v113 + 32))(v105, v112, v114);
          }

          return;
        }

        swift_unknownObjectRelease();
      }

      v110 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, *(v107 + 16), "Unable to fetch device ECID", 27, 2, _swiftEmptyArrayStorage);
      goto LABEL_55;
    }

    sub_10000E8A4(v157, &v153);
    dispatch thunk of DeviceKeyValueStore.setValue(_:_:_:sensitive:)();

    sub_10000CADC(&v153);
  }

  while (v90);
LABEL_41:
  while (1)
  {
    v95 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      break;
    }

    if (v95 >= v92)
    {
      v90 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      goto LABEL_46;
    }

    v90 = *(v87 + 64 + 8 * v95);
    ++v94;
    if (v90)
    {
      v94 = v95;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
}

_OWORD *sub_10004AB68@<X0>(_OWORD *a1@<X8>)
{
  v116 = a1;
  v113 = sub_100013414(&qword_10009B330, &unk_100078300);
  sub_10000CC04();
  __chkstk_darwin(v2);
  sub_10000D2F8();
  v112 = v3;
  sub_100022894();
  __chkstk_darwin(v4);
  v114 = (&v104 - v5);
  type metadata accessor for AuxiliaryMetadataItem();
  sub_10000CBBC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000D2F8();
  v108 = v9;
  sub_100022894();
  __chkstk_darwin(v10);
  v115 = &v104 - v11;
  sub_100022894();
  __chkstk_darwin(v12);
  v107 = (&v104 - v13);
  sub_100022894();
  v15 = __chkstk_darwin(v14);
  v17 = (&v104 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = &v104 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v104 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v104 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v104 - v28;
  __chkstk_darwin(v27);
  v31 = &v104 - v30;
  v32 = *(v7 + 16);
  v33 = v1;
  v35 = v34;
  v32(&v104 - v30, v33, v34);
  v36 = (*(v7 + 88))(v31, v35);
  if (v36 == enum case for AuxiliaryMetadataItem.BOOLean(_:))
  {
    v32(v29, v31, v35);
    (*(v7 + 96))(v29, v35);
    LOBYTE(v118) = *(*v29 + 16);
    goto LABEL_7;
  }

  v109 = v31;
  v110 = v32;
  v111 = v7;
  if (v36 == enum case for AuxiliaryMetadataItem.int(_:))
  {
    sub_10004C1CC();
    v37();
    sub_10004C1BC();
    v38(v26, v35);
    v118 = *(*v26 + 16);
    goto LABEL_7;
  }

  if (v36 == enum case for AuxiliaryMetadataItem.float(_:))
  {
    sub_10004C1CC();
    v39();
    sub_10004C1BC();
    v40(v23, v35);
    v118 = *(*v23 + 16);
LABEL_7:
    if (sub_10004C1DC())
    {
      sub_10000E8A4(v117, v120);
LABEL_9:

LABEL_10:
      (*(v7 + 8))(v31, v35);
      return sub_10000E8A4(v120, v116);
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v36 == enum case for AuxiliaryMetadataItem.string(_:))
  {
    sub_10004C1CC();
    v42();
    sub_10004C1BC();
    v43(v20, v35);
    v44 = *(*v20 + 24);
    v118 = *(*v20 + 16);
    v119 = v44;

    if (sub_10004C1DC())
    {
      sub_10000E8A4(v117, v120);

      goto LABEL_10;
    }

    goto LABEL_45;
  }

  if (v36 == enum case for AuxiliaryMetadataItem.data(_:))
  {
    sub_10004C1CC();
    v45();
    sub_10004C1BC();
    v46 = sub_10000D4B0();
    v47(v46);
    v48 = *v17;
    v49 = *(v48 + 24);
    v118 = *(v48 + 16);
    v119 = v49;
    sub_10000E228(v118, v49);
    if (sub_10004C1DC())
    {
      sub_10000E8A4(v117, v120);
      sub_10000DF50(v118, v119);
      goto LABEL_9;
    }

LABEL_47:
    sub_10000DF50(v118, v119);
    goto LABEL_48;
  }

  v50 = v35;
  v106 = v35;
  if (v36 != enum case for AuxiliaryMetadataItem.array(_:))
  {
    if (v36 != enum case for AuxiliaryMetadataItem.dictionary(_:))
    {
LABEL_49:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v66 = v108;
    v110(v108, v109, v50);
    v67 = v111 + 96;
    (*(v111 + 96))(v66, v50);
    v104 = *v66;
    v68 = *(v104 + 16);

    v69 = Dictionary.init(dictionaryLiteral:)();
    v70 = sub_100013414(&qword_100099A20, &unk_100078310);
    *(v116 + 3) = v70;
    v71 = v68 + 64;
    sub_10004C218();
    v74 = v73 & v72;
    v76 = (v75 + 63) >> 6;
    v108 = (v67 - 88);
    v115 = v68;

    v77 = 0;
    v107 = (v68 + 64);
    v105 = v76;
    if (v74)
    {
      goto LABEL_30;
    }

    do
    {
LABEL_26:
      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v78 >= v76)
      {

        *v116 = v69;
        return (*v108)(v109, v50);
      }

      v74 = *&v71[8 * v78];
      ++v77;
    }

    while (!v74);
    v77 = v78;
LABEL_30:
    while (1)
    {
      v79 = __clz(__rbit64(v74)) | (v77 << 6);
      v80 = v114;
      v81 = (*(v115 + 6) + 16 * v79);
      v82 = *v81;
      v83 = v81[1];
      v110((v114 + *(v113 + 48)), (*(v115 + 7) + *(v111 + 72) * v79), v50);
      *v80 = v82;
      v80[1] = v83;
      v84 = v112;
      sub_10004BE34(v80, v112, &qword_10009B330, &unk_100078300);
      v86 = *v84;
      v85 = v84[1];

      sub_10004AB68(v120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v117[0] = v69;
      v88 = sub_10004FEF0(v86, v85);
      v90 = v69[2];
      v91 = (v89 & 1) == 0;
      v92 = v90 + v91;
      if (__OFADD__(v90, v91))
      {
        break;
      }

      v93 = v88;
      v94 = v89;
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v92))
      {
        v95 = sub_10004FEF0(v86, v85);
        if ((v94 & 1) != (v96 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_47;
        }

        v93 = v95;
      }

      if (v94)
      {

        v69 = *&v117[0];
        v97 = (*(*&v117[0] + 56) + 32 * v93);
        sub_10000CADC(v97);
        sub_10000E8A4(v120, v97);
        sub_100022560(v114, &qword_10009B330, &unk_100078300);
      }

      else
      {
        v69 = *&v117[0];
        *(*&v117[0] + 8 * (v93 >> 6) + 64) |= 1 << v93;
        v98 = (v69[6] + 16 * v93);
        *v98 = v86;
        v98[1] = v85;
        sub_10000E8A4(v120, (v69[7] + 32 * v93));
        sub_100022560(v114, &qword_10009B330, &unk_100078300);
        v99 = v69[2];
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          goto LABEL_44;
        }

        v69[2] = v101;
      }

      v50 = v106;
      v71 = v107;
      v76 = v105;
      v74 &= v74 - 1;
      (*v108)(v112 + *(v113 + 48), v106);
      if (!v74)
      {
        goto LABEL_26;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:

    goto LABEL_49;
  }

  v51 = v107;
  v52 = v110;
  v110(v107, v109, v35);
  v53 = v111;
  (*(v111 + 96))(v51, v35);
  v54 = *v51;
  v55 = *(*v51 + 16);
  v56 = *(v55 + 16);
  v57 = _swiftEmptyArrayStorage;
  if (v56)
  {
    v114 = v54;
    *&v117[0] = _swiftEmptyArrayStorage;

    sub_10004BF18(0, v56, 0);
    v57 = *&v117[0];
    v58 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v113 = v55;
    v59 = v55 + v58;
    v60 = *(v53 + 72);
    v61 = (v53 + 8);
    do
    {
      v62 = v115;
      v63 = v106;
      v52(v115, v59, v106);
      sub_10004AB68(v120);
      (*v61)(v62, v63);
      *&v117[0] = v57;
      v65 = v57[2];
      v64 = v57[3];
      if (v65 >= v64 >> 1)
      {
        sub_10004BF18((v64 > 1), v65 + 1, 1);
        v57 = *&v117[0];
      }

      v57[2] = (v65 + 1);
      sub_10000E8A4(v120, &v57[4 * v65 + 4]);
      v59 += v60;
      --v56;
    }

    while (v56);
  }

  v102 = sub_100013414(&qword_100099A30, &qword_100078320);
  v103 = v116;
  *(v116 + 3) = v102;

  *v103 = v57;
  return (*(v111 + 8))(v109, v106);
}

uint64_t sub_10004B5B4(int a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1 != 3)
  {
    sub_100013414(&qword_100099A08, &qword_100077548);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000773B0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x8000000100080670;
    *(inited + 48) = BYTE1(a1) & 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000015;
    *(inited + 88) = 0x8000000100080690;
    *(inited + 96) = a1 & 1;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 136) = 0x80000001000806B0;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = BYTE2(a1) & 1;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

id sub_10004B6D0()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 104))();
    v5 = *(v0 + 152);
    *(v3 + 152) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_10004B74C(const char *a1, uint64_t a2)
{
  v5 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  v6 = sub_10000D368(v5);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v2[2], a1, a2, 2, _swiftEmptyArrayStorage);
  v10 = v2[19];
  v2[19] = 0;

  type metadata accessor for PeerDeviceInfo();
  sub_10000EE54();
  v11 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v8, v2 + v11);
  swift_endAccess();
  sub_10000EE54();
  v12 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v8, v2 + v12);
  result = swift_endAccess();
  v14 = v2[3];
  if (v14)
  {

    v14(v15);
    v16 = sub_10000D4B0();
    return sub_10000FAC8(v16, v17);
  }

  return result;
}

uint64_t sub_10004B8AC(const char *a1, uint64_t a2)
{
  v5 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  v6 = sub_10000D368(v5);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, *(v2 + 16), a1, a2, 2, _swiftEmptyArrayStorage);
  type metadata accessor for PeerDeviceInfo();
  sub_10000EE54();
  v10 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v8, v2 + v10);
  swift_endAccess();
  sub_10000EE54();
  v11 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys;
  sub_10001ADBC();
  swift_beginAccess();
  sub_10004BD10(v8, v2 + v11);
  result = swift_endAccess();
  v13 = *(v2 + 24);
  if (v13)
  {

    v13(v14);
    v15 = sub_10000D4B0();
    return sub_10000FAC8(v15, v16);
  }

  return result;
}

uint64_t sub_10004B9E0()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__userAssignedNameDarwinNotificationToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(v0 + v1) = -1;
  }

  v3 = OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__developerModeStatusDarwinNotificationToken;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 != -1)
  {
    notify_cancel(v4);
    *(v0 + v3) = -1;
  }

  sub_10000FAC8(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();
  sub_10000CADC((v0 + 56));

  sub_100022560(v0 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoIncludingSensitiveKeys, &qword_10009B320, &unk_1000782F0);
  sub_100022560(v0 + OBJC_IVAR____TtC20remotepairingdeviced15MetadataService__deviceInfoExcludingSensitiveKeys, &qword_10009B320, &unk_1000782F0);
  return v0;
}

uint64_t sub_10004BB00()
{
  sub_10004B9E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MetadataService(uint64_t a1)
{
  result = qword_10009B168;
  if (!qword_10009B168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004BBAC(uint64_t a1)
{
  sub_10004BC94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10004BC94(uint64_t a1)
{
  if (!qword_10009B178)
  {
    type metadata accessor for PeerDeviceInfo();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10009B178);
    }
  }
}

uint64_t sub_10004BD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009B320, &unk_1000782F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BD80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemotePairingError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004BDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009B328, &unk_100078450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BE34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100013414(a3, a4);
  sub_10000CC04();
  v5 = sub_10000D4B0();
  v6(v5);
  return a2;
}

id *sub_10004BE90(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004BF38(a1, a2, a3, *v3, &qword_10009B340, &unk_100078330, sub_100054F8C);
  *v3 = result;
  return result;
}

id *sub_10004BED4(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004BF38(a1, a2, a3, *v3, &qword_10009B348, &qword_100078340, sub_100054F8C);
  *v3 = result;
  return result;
}

id *sub_10004BF18(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004C050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10004BF38(id *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, void *, id *))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v10 = *(a4 + 24);
  v11 = v10 >> 1;
  if ((v10 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v11 = a2;
    }

LABEL_8:
    v12 = *(a4 + 16);
    if (v11 <= v12)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100013414(a5, a6);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = (2 * ((v15 - 32) / 16));
      if (v9)
      {
LABEL_13:
        a7(a4 + 32, v12, v14 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v14;
      }
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100013414(&unk_100099DC0, &unk_100077860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id *sub_10004C050(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100013414(&qword_10009B338, &qword_100078328);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 32));
      if (v5)
      {
LABEL_13:
        sub_100054A30((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C1DC()
{

  return swift_dynamicCast();
}

_OWORD *sub_10004C248(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10000E8A4(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    result = sub_100069218(v13, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
  }

  else
  {
    sub_100022560(a1, &qword_100099A00, &qword_100077540);
    v6 = sub_100064190(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v10 = *(*v2 + 24);
      sub_100013414(&qword_10009BE90, &qword_100078468);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
      sub_10000E8A4((*(v12 + 56) + 32 * v8), v13);
      _NativeDictionary._delete(at:)();
      *v2 = v12;
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    return sub_100022560(v13, &qword_100099A00, &qword_100077540);
  }

  return result;
}

uint64_t sub_10004C390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100013414(&qword_10009B4E8, &qword_100078440);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  v11 = type metadata accessor for XPCEventPublisher.Token();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100022484(a1, 1, v11) == 1)
  {
    sub_100022560(a1, &qword_10009B4E8, &qword_100078440);
    sub_10006889C(a2, a3);

    return sub_100022560(v10, &qword_10009B4E8, &qword_100078440);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000694B8(v14, a2, a3, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21[0], *v4);

    *v4 = v21[1];
  }

  return result;
}

double sub_10004C55C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10004FEF0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000CA80(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_10004C5C0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100063FD8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_10000CA80(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10004C624(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100064018();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10004FEF0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

BOOL sub_10004C6C8()
{
  if (*(v0 + 72) == 1)
  {
    sub_10000EB00();
    swift_beginAccess();
    v1 = *(*(v0 + 96) + 16);
    sub_10000EB00();
    swift_beginAccess();
    v2 = v1 == *(*(v0 + 80) + 16);
  }

  else
  {
    v2 = 0;
  }

  sub_10000EB00();
  swift_beginAccess();

  return v2;
}

void *sub_10004C75C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10004F60C();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for XPCEventPublisher.Token();
  sub_10004F67C(&qword_10009BE50, &type metadata accessor for XPCEventPublisher.Token, &protocol conformance descriptor for XPCEventPublisher.Token);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = Dictionary.init(dictionaryLiteral:)();
  sub_10004F6E8();
  *(v4 + 88) = Dictionary.init(dictionaryLiteral:)();
  sub_100013414(&qword_10009B500, &qword_100078460);
  sub_10004F6E8();
  *(v4 + 96) = Dictionary.init(dictionaryLiteral:)();
  v10 = static AuxiliaryMetadataProvider.XPCKeys.xpcEventStreamName.getter();
  v12 = v11;
  v13 = *(a3 + 8);
  v14 = a1;
  v15 = v13(v10, v12, v14, a2, a3);
  if (v15)
  {
    v5[4] = v15;
    v5[5] = a3;
    v5[3] = v14;
    if (a4)
    {
      v16 = v14;
      swift_unknownObjectRetain();
      v17 = a4;
    }

    else
    {
      type metadata accessor for RemotePairingDeviceXPCServer();
      v18 = v14;
      swift_unknownObjectRetain();
      v19 = static MachServiceNames.auxiliaryMetadata.getter();
      v17 = sub_10002F960(v19, v20, v18);
    }

    v5[6] = v17;
    sub_10000CBD0();
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of XPCEventPublisher.setErrorHandler(_:)();

    sub_10000CBD0();
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of XPCEventPublisher.setHandler(_:)();

    sub_10000CBD0();
    swift_allocObject();
    swift_weakInit();

    type metadata accessor for AuxiliaryMetadataUpdate();
    type metadata accessor for EmptyResponse();
    sub_10004F67C(&qword_10009B508, &type metadata accessor for AuxiliaryMetadataUpdate, &protocol conformance descriptor for AuxiliaryMetadataUpdate);
    sub_10004F67C(&qword_10009B510, &type metadata accessor for AuxiliaryMetadataUpdate, &protocol conformance descriptor for AuxiliaryMetadataUpdate);
    sub_10004F67C(&qword_10009A128, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
    sub_10004F67C(&qword_10009A130, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
    dispatch thunk of CodableDispatcher.register<A, B>(handler:)();

    swift_unknownObjectRelease();

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CBBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004EEBC(a1);
  }

  return result;
}

uint64_t sub_10004CC1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004D9B4(a1);
  }

  return result;
}

uint64_t sub_10004CC7C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return EmptyResponse.init()();
  }

  sub_100013414(&qword_100099488, &unk_100077650);
  sub_10004CD64(a1);

  if (!v3)
  {
    return EmptyResponse.init()();
  }

  return result;
}

uint64_t sub_10004CD64(NSObject *a1)
{
  v127 = a1;
  v123 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v124 = (v4 - v3);
  v5 = type metadata accessor for AuxiliaryMetadataUpdate();
  sub_10000CBBC();
  v125 = v6;
  __chkstk_darwin(v7);
  sub_10000EDF0();
  v10 = v8 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v117 - v13;
  __chkstk_darwin(v12);
  sub_10000D984();
  __chkstk_darwin(v15);
  sub_10000D984();
  __chkstk_darwin(v16);
  sub_10000D984();
  __chkstk_darwin(v17);
  v121 = &v117 - v18;
  v19 = type metadata accessor for XPCDictionary();
  sub_10000CBBC();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_10000CBDC();
  v25 = v24 - v23;
  XPCDictionary.auditToken.getter();
  v120 = v1;
  if (v131)
  {
    v122 = -1;
  }

  else
  {
    v122 = audit_token_t.processIdentifier.getter();
  }

  XPCDictionary.entitlements.getter();
  v26 = XPCDictionary.subscript.getter();
  (*(v21 + 8))(v25, v19);
  if (v26 == 2 || (v26 & 1) == 0)
  {
    v60 = static os_log_type_t.error.getter();
    v61 = v125;
    v62 = *(v126 + 16);
    (*(v125 + 16))(v10, v127, v5);
    if (os_log_type_enabled(v62, v60))
    {
      v63 = swift_slowAlloc();
      sub_10000CCCC();
      v64 = swift_slowAlloc();
      v130[0] = v64;
      *v63 = 136315394;
      v65 = AuxiliaryMetadataUpdate.domain.getter();
      v66 = v61;
      v68 = v67;
      (*(v66 + 8))(v10, v5);
      v69 = sub_10000C600(v65, v68, v130);

      *(v63 + 4) = v69;
      sub_10000CC80();
      sub_10000D4BC(&_mh_execute_header, v70, v71, "Received metadata update for domain %s from unentitled client pid/%d. Rejecting");
      sub_10000CADC(v64);
      sub_100015FBC();

      sub_10000EE00();
    }

    else
    {
      (*(v61 + 8))(v10, v5);
    }

    sub_10004F6C4();
    sub_10004F67C(v72, v60, &protocol conformance descriptor for RemotePairingError);
    static Error<>.permissionDenied.getter();
    v130[0] = 0;
    v130[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    v73._countAndFlagsBits = 0xD000000000000031;
    v73._object = 0x8000000100080820;
    String.append(_:)(v73);
    v74._countAndFlagsBits = AuxiliaryMetadataUpdate.domain.getter();
    String.append(_:)(v74);

    v75._countAndFlagsBits = 0xD00000000000001ELL;
    v75._object = 0x8000000100080860;
    String.append(_:)(v75);
    v76._object = 0x80000001000807F0;
    v76._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v76);
    sub_10004F67C(&qword_100099850, v60, &protocol conformance descriptor for RemotePairingError);
    swift_allocError();
    goto LABEL_16;
  }

  v27 = v126;
  sub_10000EB00();
  swift_beginAccess();
  v28 = v27[11];

  v29 = AuxiliaryMetadataUpdate.domain.getter();
  if (!*(v28 + 16))
  {

    goto LABEL_19;
  }

  sub_10004FEF0(v29, v30);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_19:
    v77 = static os_log_type_t.error.getter();
    v78 = v27[2];
    v79 = v125;
    (*(v125 + 16))(v14, v127, v5);
    if (os_log_type_enabled(v78, v77))
    {
      v80 = swift_slowAlloc();
      sub_10000CCCC();
      v81 = v79;
      v82 = swift_slowAlloc();
      v129[0] = v82;
      *v80 = 136315394;
      v83 = AuxiliaryMetadataUpdate.domain.getter();
      v85 = v84;
      (*(v81 + 8))(v14, v5);
      v86 = sub_10000C600(v83, v85, v129);

      *(v80 + 4) = v86;
      sub_10000CC80();
      sub_10000D4BC(&_mh_execute_header, v87, v88, "Received metadata update for domain %s from client pid/%d without associated subscription. Rejecting");
      sub_10000CADC(v82);
      sub_100015FBC();

      sub_10000EE00();
    }

    else
    {
      (*(v79 + 8))(v14, v5);
    }

    static RemotePairingError.invalidInput.getter();
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v89._countAndFlagsBits = 0xD000000000000025;
    v89._object = 0x8000000100080880;
    String.append(_:)(v89);
    v90._countAndFlagsBits = AuxiliaryMetadataUpdate.domain.getter();
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0xD00000000000002DLL;
    v91._object = 0x80000001000808B0;
    String.append(_:)(v91);
    sub_10004F6C4();
    sub_10004F67C(v92, 0xD00000000000002BLL, &protocol conformance descriptor for RemotePairingError);
    swift_allocError();
    sub_10004F67C(&unk_10009A0D0, 0xD00000000000002BLL, &protocol conformance descriptor for RemotePairingError);
LABEL_16:
    Error<>.init(_:_:)();
    return swift_willThrow();
  }

  v33 = AuxiliaryMetadataUpdate.domain.getter();
  v35 = v34;
  sub_10000EB00();
  swift_beginAccess();
  v36 = v27[12];

  v37 = sub_10004C674(v33, v35, v36);

  v38 = AuxiliaryMetadataUpdate.metadata.getter();
  v39 = v125;
  if (v37)
  {
    v40 = sub_10004F06C(v37, v38);

    v41 = v121;
    if (v40)
    {
      v42 = static os_log_type_t.default.getter();
      v43 = v27[2];
      v44 = *(v39 + 16);
      v45 = v119;
      v44(v119, v127, v5);
      v46 = sub_10000D584(&v133);
      (v44)(v46);
      if (os_log_type_enabled(v43, v42))
      {
        v47 = swift_slowAlloc();
        v118 = v5;
        v48 = v47;
        v128[0] = swift_slowAlloc();
        *v48 = 136315650;
        v49 = AuxiliaryMetadataUpdate.domain.getter();
        v127 = v43;
        v50 = v45;
        v52 = v51;
        v53 = *(v39 + 8);
        v53(v50, v5);
        v54 = sub_10000C600(v49, v52, v128);

        *(v48 + 4) = v54;
        sub_10000CC80();
        *(v48 + 18) = 2080;
        AuxiliaryMetadataUpdate.metadata.getter();
        type metadata accessor for AuxiliaryMetadataItem();
        v55 = Dictionary.description.getter();
        v57 = v56;

        v53(v5, v118);
        v58 = sub_10000C600(v55, v57, v128);

        *(v48 + 20) = v58;
        _os_log_impl(&_mh_execute_header, v127, v42, "Received metadata update for domain %s from pid/%d but there is no change since last update: %s", v48, 0x1Cu);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_10000EE00();
      }

      else
      {
        v116 = *(v39 + 8);
        v116(v5, v5);
        return (v116)(v45, v5);
      }
    }
  }

  else
  {

    v41 = v121;
  }

  v93 = static os_log_type_t.default.getter();
  v94 = v27[2];
  v95 = *(v39 + 16);
  v95(v41, v127, v5);
  v96 = sub_10000D584(&v134);
  (v95)(v96);
  LODWORD(v123) = v93;
  v124 = v94;
  if (os_log_type_enabled(v94, v93))
  {
    v97 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v97 = 136315650;
    v98 = v121;
    v99 = AuxiliaryMetadataUpdate.domain.getter();
    v101 = v100;
    v102 = *(v39 + 8);
    v102(v98, v5);
    v103 = sub_10000C600(v99, v101, v128);

    *(v97 + 4) = v103;
    sub_10000CC80();
    *(v97 + 18) = 2080;
    AuxiliaryMetadataUpdate.metadata.getter();
    type metadata accessor for AuxiliaryMetadataItem();
    v104 = Dictionary.description.getter();
    v106 = v105;

    v102(v5, v5);
    v27 = v126;
    v107 = sub_10000C600(v104, v106, v128);

    *(v97 + 20) = v107;
    _os_log_impl(&_mh_execute_header, v124, v123, "Received metadata update for domain %s from pid/%d: %s", v97, 0x1Cu);
    swift_arrayDestroy();
    sub_100015FBC();

    sub_10000EE00();
  }

  else
  {
    v108 = *(v39 + 8);
    v108(v5, v5);
    v108(v121, v5);
  }

  v109 = AuxiliaryMetadataUpdate.domain.getter();
  v111 = v110;
  v112 = AuxiliaryMetadataUpdate.metadata.getter();
  sub_10001ADBC();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v132 = v27[12];
  sub_10006972C(v112, v109, v111);
  v27[12] = v132;

  result = swift_endAccess();
  v113 = v27[7];
  if (v113)
  {
    v114 = v27[8];

    v113(v115);
    return sub_10000FAC8(v113, v114);
  }

  return result;
}

uint64_t sub_10004D9B4(uint64_t a1)
{
  v2 = type metadata accessor for XPCDictionary();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v9 = type metadata accessor for XPCEventPublisher.Token();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000EDF0();
  v50 = (v13 - v14);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for XPCEventPublisher.SubscriptionAction();
  sub_10000CBBC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_10000CBDC();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, a1, v18);
  v25 = sub_10004F6DC();
  result = v26(v25);
  if (result == enum case for XPCEventPublisher.SubscriptionAction.add(_:))
  {
    v28 = sub_10004F6DC();
    v29(v28);
    v30 = *(sub_100013414(&qword_10009B4F0, &qword_100078448) + 48);
    v31 = sub_10004F6E8();
    v32(v31);
    (*(v4 + 32))(v8, v24 + v30, v2);
    sub_10004DD88(v17, v8);
    (*(v4 + 8))(v8, v2);
    return (*(v11 + 8))(v17, v9);
  }

  v33 = v51;
  if (result == enum case for XPCEventPublisher.SubscriptionAction.remove(_:))
  {
    v34 = sub_10004F6DC();
    v35(v34);
    v17 = v50;
    v36 = sub_10004F6E8();
    v37(v36);
    sub_10001ADBC();
    swift_beginAccess();
    v38 = sub_1000689D0(v17);
    v40 = v39;
    swift_endAccess();
    if (v40)
    {
      sub_10001ADBC();
      swift_beginAccess();
      sub_100068AD8(v38, v40);
      swift_endAccess();

      v41 = *(v33 + 56);
      if (v41)
      {
        v42 = *(v33 + 64);

        v41(v43);
        sub_10000FAC8(v41, v42);
      }
    }

    return (*(v11 + 8))(v17, v9);
  }

  if (result == enum case for XPCEventPublisher.SubscriptionAction.initialBarrier(_:))
  {
    *(v51 + 72) = 1;
    v44 = *(v33 + 56);
    if (v44)
    {
      v45 = *(v33 + 64);

      v44(v46);
      return sub_10000FAC8(v44, v45);
    }
  }

  else
  {
    v47 = sub_10004F6DC();
    return v48(v47);
  }

  return result;
}

uint64_t sub_10004DD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = type metadata accessor for XPCDictionary();
  sub_10000CBBC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000EDF0();
  v11 = (v9 - v10);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_100013414(&qword_10009B4E8, &qword_100078440);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  static AuxiliaryMetadataProvider.XPCKeys.domainKey.getter();
  v18 = XPCDictionary.subscript.getter();
  v20 = v19;

  if (v20)
  {
    sub_10000EB00();
    swift_beginAccess();
    if (*(v3[11] + 16) && (, sub_10004FEF0(v18, v20), v22 = v21, , (v22 & 1) != 0))
    {
      v23 = static os_log_type_t.fault.getter();
      v24 = v3[2];
      if (os_log_type_enabled(v24, v23))
      {
        v25 = sub_10000D030();
        sub_10000CCCC();
        v26 = swift_slowAlloc();
        v43[0] = v26;
        *v25 = 136446210;
        v27 = sub_10000C600(v18, v20, v43);

        *(v25 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v24, v23, "Multiple subscribers have registered for ownership of domain %{public}s. Ignoring additional subscriber.", v25, 0xCu);
        sub_10000CADC(v26);
        sub_10000EE00();

LABEL_10:
        sub_100015FBC();
      }
    }

    else
    {
      sub_10001ADBC();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v42 = v3[10];
      v28 = v41;
      sub_1000695E4();
      v3[10] = v42;
      swift_endAccess();
      v29 = type metadata accessor for XPCEventPublisher.Token();
      sub_10000CC04();
      (*(v30 + 16))(v17, v28, v29);
      sub_1000223E8(v17, 0, 1, v29);
      sub_10001ADBC();
      swift_beginAccess();

      sub_10004C390(v17, v18, v20);
      swift_endAccess();
      sub_10004E1BC(v28, v18, v20);
    }
  }

  v32 = static os_log_type_t.fault.getter();
  v33 = v3[2];
  v34 = *(v7 + 16);
  v34(v14, a2, v5);
  if (os_log_type_enabled(v33, v32))
  {
    v35 = sub_10000D030();
    sub_10000CCCC();
    v36 = swift_slowAlloc();
    v44[0] = v36;
    *v35 = 136315138;
    v34(v11, v14, v5);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    (*(v7 + 8))(v14, v5);
    v40 = sub_10000C600(v37, v39, v44);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v32, "Invalid XPC event subscription descriptor. Could not read target domain from descriptor dictionary %s", v35, 0xCu);
    sub_10000CADC(v36);
    sub_100015FBC();

    goto LABEL_10;
  }

  return (*(v7 + 8))(v14, v5);
}

uint64_t sub_10004E1BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v33 = *v3;
  v34 = a1;
  v31 = type metadata accessor for XPCEventPublisher.Token();
  sub_10000CBBC();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v12 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for XPCDictionary();
  sub_10000CBBC();
  v30 = v13;
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v17 = v16 - v15;
  XPCDictionary.init()();
  static AuxiliaryMetadataProvider.XPCKeys.domainKey.getter();

  v35 = a3;
  XPCDictionary.subscript.setter();
  v18 = static os_log_type_t.default.getter();
  v19 = v4[2];
  if (os_log_type_enabled(v19, v18))
  {
    v20 = sub_10000D030();
    sub_10000CCCC();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_10000C600(a2, v35, &v36);
    _os_log_impl(&_mh_execute_header, v19, v18, "Firing event to request metadata for domain %{public}s", v20, 0xCu);
    sub_10000CADC(v21);
    sub_100015FBC();

    sub_10000EE00();
  }

  v22 = v4[4];
  v29[1] = v4[3];
  v29[2] = v22;
  sub_10000CBD0();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v31;
  (*(v8 + 16))(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v31);
  v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v23;
  *(v27 + 3) = a2;
  *(v27 + 4) = v35;
  (*(v8 + 32))(&v27[v25], v12, v24);
  *&v27[v26] = v33;

  dispatch thunk of XPCEventPublisher.fire(event:forToken:replyQueue:replyHandler:)();

  (*(v30 + 8))(v17, v32);
}

uint64_t sub_10004E4E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v79 = a5;
  v82 = a4;
  v83 = a3;
  v81 = type metadata accessor for XPCError();
  v6 = *(v81 - 8);
  v7 = __chkstk_darwin(v81);
  v9 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v78 = &v74[-v11];
  v12 = __chkstk_darwin(v10);
  v77 = &v74[-v13];
  v14 = __chkstk_darwin(v12);
  v80 = &v74[-v15];
  __chkstk_darwin(v14);
  v84 = &v74[-v16];
  v17 = type metadata accessor for XPCDictionary();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v74[-v22];
  v24 = sub_100013414(&unk_1000994A0, &unk_100077090);
  __chkstk_darwin(v24);
  v26 = &v74[-v25];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v28 = result;
  sub_10004F59C(a1, v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v23, v26, v17);
    XPCDictionary.entitlements.getter();
    v47 = XPCDictionary.subscript.getter();
    v48 = *(v18 + 8);
    v48(v21, v17);
    if (v47 == 2 || (v47 & 1) == 0)
    {
      v49 = static os_log_type_t.fault.getter();
      v50 = *(v28 + 16);
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v86[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_10000C600(v83, v82, v86);
        v53 = "Binary registered as metadata provider for domain %s does not have required entitlement";
        goto LABEL_14;
      }
    }

    else
    {
      v49 = static os_log_type_t.default.getter();
      v50 = *(v28 + 16);
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v86[0] = v52;
        *v51 = 136446210;
        *(v51 + 4) = sub_10000C600(v83, v82, v86);
        v53 = "Received response to request for metadata for domain %{public}s";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v50, v49, v53, v51, 0xCu);
        sub_10000CADC(v52);
      }
    }

    v48(v23, v17);
  }

  v29 = v6;
  v30 = v84;
  v31 = v81;
  (*(v6 + 32))(v84, v26, v81);
  swift_beginAccess();
  if (!*(*(v28 + 80) + 16) || (, sub_1000641D8(), v33 = v32, , (v33 & 1) == 0))
  {
    v54 = static os_log_type_t.error.getter();
    v55 = *(v28 + 16);
    v56 = *(v6 + 16);
    v56(v9, v30, v31);
    if (os_log_type_enabled(v55, v54))
    {
      v57 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v85 = v79;
      *v57 = 136446466;
      *(v57 + 4) = sub_10000C600(v83, v82, &v85);
      *(v57 + 12) = 2080;
      v56(v80, v9, v31);
      v58 = String.init<A>(describing:)();
      v60 = v59;
      v61 = *(v29 + 8);
      v61(v9, v31);
      v62 = sub_10000C600(v58, v60, &v85);

      *(v57 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v55, v54, "Received error response to request for metadata for domain %{public}s from now-unregistered subscriber: %s. Not retrying", v57, 0x16u);
      swift_arrayDestroy();

      v61(v84, v31);
    }

    else
    {
      v63 = *(v6 + 8);
      v63(v9, v31);
      v63(v30, v31);
    }
  }

  v34 = v80;
  static XPCError.connectionInvalid.getter();
  sub_10004F67C(&qword_10009B4E0, &type metadata accessor for XPCError, &protocol conformance descriptor for XPCError);
  v35 = static _Error.~= infix(_:_:)();
  v36 = *(v29 + 8);
  v36(v34, v31);
  v37 = static os_log_type_t.error.getter();
  v76 = *(v28 + 16);
  v38 = *(v29 + 16);
  if (v35)
  {
    v39 = v77;
    v38(v77, v30, v31);
    if (os_log_type_enabled(v76, v37))
    {
      v40 = swift_slowAlloc();
      v75 = v37;
      v41 = v40;
      v85 = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_10000C600(v83, v82, &v85);
      *(v41 + 12) = 2080;
      v38(v80, v39, v31);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      v36(v39, v31);
      v45 = sub_10000C600(v42, v44, &v85);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v76, v75, "Received XPC_ERRROR_CONNECTION_INVALID response to request for metadata for domain %{public}s: %s. Not retrying", v41, 0x16u);
      swift_arrayDestroy();

      v46 = v84;
    }

    else
    {
      v36(v39, v31);
      v46 = v30;
    }

    v36(v46, v31);
  }

  v64 = v78;
  v38(v78, v30, v31);
  if (os_log_type_enabled(v76, v37))
  {
    v65 = swift_slowAlloc();
    v75 = v37;
    v66 = v65;
    v77 = swift_slowAlloc();
    v85 = v77;
    *v66 = 136446466;
    v67 = v82;
    *(v66 + 4) = sub_10000C600(v83, v82, &v85);
    *(v66 + 12) = 2080;
    v38(v80, v64, v31);
    v68 = String.init<A>(describing:)();
    v70 = v69;
    v36(v64, v31);
    v71 = sub_10000C600(v68, v70, &v85);

    *(v66 + 14) = v71;
    v72 = v67;
    v73 = v83;
    _os_log_impl(&_mh_execute_header, v76, v75, "Received error response to request for metadata for domain %{public}s: %s. Retrying", v66, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v36(v64, v31);
    v72 = v82;
    v73 = v83;
  }

  sub_10004E1BC(v79, v73, v72);

  return (v36)(v84, v31);
}

uint64_t sub_10004EEBC(uint64_t a1)
{
  v2 = static os_log_type_t.fault.getter();
  v3 = *(v1 + 16);
  result = os_log_type_enabled(v3, v2);
  if (result)
  {
    v5 = sub_10000D030();
    sub_10000CCCC();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    swift_errorRetain();
    sub_100013414(&unk_10009A930, &unk_100077080);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000C600(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v2, "Received error from metadata XPC event publisher: %s", v5, 0xCu);
    sub_10000CADC(v6);
    sub_100015FBC();

    sub_100015FBC();
  }

  return result;
}

uint64_t sub_10004EFBC()
{
  swift_unknownObjectRelease();

  sub_10000FAC8(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t sub_10004F014()
{
  sub_10004EFBC();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_10004F06C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuxiliaryMetadataItem();
  v66 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v55 - v8;
  v9 = sub_100013414(&qword_10009B328, &unk_100078450);
  v10 = __chkstk_darwin(v9 - 8);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v59 = (&v55 - v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v14 = 0;
  v56 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v62 = v66 + 16;
  v63 = (v66 + 32);
  v57 = (v66 + 8);
  v58 = v7;
  while (v20)
  {
    v64 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_13:
    v26 = (*(v56 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v30 = v65;
    v29 = v66;
    (*(v66 + 16))(v65, *(v56 + 56) + *(v66 + 72) * v22, v4);
    v31 = sub_100013414(&qword_10009B330, &unk_100078300);
    v32 = *(v31 + 48);
    v33 = v61;
    *v61 = v27;
    *(v33 + 1) = v28;
    v23 = v33;
    (*(v29 + 32))(&v33[v32], v30, v4);
    sub_1000223E8(v23, 0, 1, v31);

LABEL_14:
    v34 = v23;
    v35 = v59;
    sub_10004BDC4(v34, v59);
    v36 = sub_100013414(&qword_10009B330, &unk_100078300);
    v37 = sub_100022484(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v60;
    v43 = v58;
    (*v63)(v58, v35 + v39, v4);
    v44 = sub_10004FEF0(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v57)(v43, v4);
      return 0;
    }

    v47 = v66;
    v48 = *(v42 + 56) + *(v66 + 72) * v44;
    v49 = v4;
    v50 = v65;
    (*(v66 + 16))(v65, v48, v49);
    sub_10004F67C(&qword_10009B4F8, &type metadata accessor for AuxiliaryMetadataItem, &protocol conformance descriptor for AuxiliaryMetadataItem);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    v52 = *(v47 + 8);
    v53 = v50;
    v4 = v49;
    v52(v53, v49);
    result = (v52)(v43, v49);
    v20 = v64;
    if ((v51 & 1) == 0)
    {
      return v38;
    }
  }

  v23 = v61;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v54 = sub_100013414(&qword_10009B330, &unk_100078300);
      sub_1000223E8(v23, 1, 1, v54);
      v64 = 0;
      goto LABEL_14;
    }

    v25 = *(v16 + 8 * v24);
    ++v14;
    if (v25)
    {
      v64 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F4F8(uint64_t a1)
{
  v3 = *(type metadata accessor for XPCEventPublisher.Token() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10004E4E8(a1, v4, v5, v6, v7);
}

uint64_t sub_10004F59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_1000994A0, &unk_100077090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F60C()
{
  result = qword_100098ED0;
  if (!qword_100098ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100098ED0);
  }

  return result;
}

uint64_t sub_10004F67C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10004F6F4()
{
  v1 = type metadata accessor for POSIXError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  error_domain = nw_error_get_error_domain(v0);
  if (error_domain - 2 >= 2)
  {
    if (error_domain != nw_error_domain_posix || (nw_error_get_error_code(v0), v12 = POSIXErrorCode.init(rawValue:)(), (v12 & 0x100000000) != 0))
    {
      type metadata accessor for RemotePairingError();
      sub_10004FEA8(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      v13 = swift_allocError();
      sub_10004FEA8(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      static Error<>.unknown.getter();
    }

    else
    {
      v14[3] = v12;
      sub_10004FD70(_swiftEmptyArrayStorage);
      sub_10004FEA8(&unk_10009AB20, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = POSIXError._nsError.getter();
      (*(v2 + 8))(v4, v1);
    }

    return v13;
  }

  else
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    error_code = nw_error_get_error_code(v0);
    v10 = objc_allocWithZone(NSError);
    return sub_10004FCC0(v6, v8, error_code, 0);
  }
}

BOOL sub_10004F940()
{
  v1 = nw_connection_copy_current_path(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = (nw_path_is_local() & 1) != 0 || nw_path_uses_interface_type(v2, nw_interface_type_loopback);
  swift_unknownObjectRelease();
  return v3;
}

void OS_nw_connection.receive(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10000D2AC();
  sub_10000EE74();
  v8[2] = v6;
  v8[3] = &unk_100090C68;
  v7 = _Block_copy(v8);

  nw_connection_receive_message(v2, v7);
  _Block_release(v7);
}

uint64_t sub_10004FA4C()
{
  v1 = nw_protocol_copy_quic_definition();
  v2 = nw_connection_copy_protocol_metadata(v0, v1);
  result = swift_unknownObjectRelease();
  if (v2)
  {
    stream_type = nw_quic_get_stream_type(v2);
    swift_unknownObjectRelease();
    return stream_type == 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004FAB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t))
{
  v8 = type metadata accessor for RemotePairingError();
  __chkstk_darwin(v8);
  if (a1 && (v17 = sub_10000E8B4(), *&v16 = a1, sub_10000E8A4(&v16, v18), sub_10000E8A4(v18, &v16), v9 = a1, (swift_dynamicCast() & 1) != 0))
  {
    v10 = 0;
    v12 = v14;
    v11 = v15;
  }

  else
  {
    if (a4)
    {
      swift_unknownObjectRetain();
      v12 = sub_10004F6F4();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_10004FEA8(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      static Error<>.dataCorrupted.getter();
      sub_10004FEA8(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      v12 = swift_allocError();
      Error<>.init(_:_:)();
    }

    v11 = 0;
    v10 = 1;
  }

  a5(v12, v11, v10);
  return sub_10000ED08(v12, v11, v10);
}

id sub_10004FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

unint64_t sub_10004FD70(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100013414(&qword_10009B518, &qword_100078470);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_10004FF68(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_10004FEF0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_10000E8A4(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10004FEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004FEF0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10004FFD8(a1, a2, v4);
}

uint64_t sub_10004FF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009B520, &qword_100078478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004FFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

id sub_100050094()
{
  type metadata accessor for ControlChannelConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10009CEF0 = result;
  return result;
}

uint64_t sub_100050100(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10005014C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000501A0()
{
  if (!nw_connection_copy_current_path(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection)))
  {
    return 0;
  }

  v1 = nw_path_copy_interface();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  nw_interface_get_name(v1);
  v2 = String.init(cString:)();
  v4 = v3;
  v5 = static os_log_type_t.info.getter();
  v6 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C600(v2, v4, &v10);
    _os_log_impl(&_mh_execute_header, v6, v5, "Tunnel connection path interface name: %s", v7, 0xCu);
    sub_10000CADC(v8);
    sub_10000D8D4(v8);
    sub_10000D8D4(v7);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000502DC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1000770A0;
  *(v3 + 32) = static IPv6Header.minHeaderLength.getter();
  *(v3 + 40) = 0x80000;
  type metadata accessor for TunnelConnectionIdentifierCategory();
  Identifier.init()();
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection) = a1;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper__allowLocalConnectionsOnly) = a2;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_peerConnectionsInfo) = a3;
  return v3;
}

void sub_100050384(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection);
  sub_10000CBD0();
  v9 = swift_allocObject();
  swift_weakInit();
  v19 = sub_100054CEC;
  v20 = v9;
  sub_100054FC0();
  v16 = 1107296256;
  v17 = sub_1000507A8;
  v18 = &unk_100090D48;
  v10 = _Block_copy(&v15);

  nw_connection_set_viability_changed_handler(v8, v10);
  _Block_release(v10);
  sub_10000CBD0();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100055004();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  v19 = sub_100054CF4;
  v20 = v13;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100050144;
  v18 = &unk_100090DC0;
  v14 = _Block_copy(&v15);

  nw_connection_set_state_changed_handler(v8, v14);
  _Block_release(v14);
  nw_connection_set_queue(v8, a1);
  nw_connection_start(v8);
}

uint64_t sub_10005055C(char a1, uint64_t a2)
{
  v3 = sub_100013414(&qword_10009B730, &unk_100078A80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if ((a1 & 1) == 0)
    {
      v9 = static os_log_type_t.error.getter();
      v10 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136446210;
        (*(v4 + 16))(v6, v8 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_identifier, v3);
        sub_100035F9C(&qword_10009B738, &qword_10009B730, &unk_100078A80, &protocol conformance descriptor for Identifier<A>);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        (*(v4 + 8))(v6, v3);
        v16 = sub_10000C600(v13, v15, &v17);

        *(v11 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s: Cancelling tunnel connection as it is no longer viable", v11, 0xCu);
        sub_10000CADC(v12);
      }

      nw_connection_cancel(*(v8 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection));
    }
  }

  return result;
}

uint64_t sub_1000507A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000507FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for TunnelConnectionState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      switch(a1)
      {
        case 1:
          v32 = static os_log_type_t.error.getter();
          v31 = qword_10009CED0;
          sub_100013414(&qword_1000999F0, &unk_100077530);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_100077360;
          v33 = a2;
          swift_unknownObjectRetain();
          sub_100013414(&unk_10009B750, qword_100077E48);
          v17 = String.init<A>(describing:)();
          v19 = v18;
          *(v16 + 56) = &type metadata for String;
          *(v16 + 64) = sub_100022420();
          *(v16 + 32) = v17;
          *(v16 + 40) = v19;
          os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v31, "Connection waiting: %{public}s", 30, 2, v16);
          goto LABEL_11;
        case 2:
          v27 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_10009CED0, "Connection preparing", 20, 2, _swiftEmptyArrayStorage);
          goto LABEL_16;
        case 3:
          swift_getObjectType();
          if (sub_10004F940() && *(v13 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper__allowLocalConnectionsOnly) != 1)
          {
            v29 = static os_log_type_t.error.getter();
            os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, qword_10009CED0, "Rejecting tunnel connection originating from local machine", 58, 2, _swiftEmptyArrayStorage);
LABEL_12:
            nw_connection_cancel(v15);
            v22 = &enum case for TunnelConnectionState.stopped(_:);
          }

          else
          {
            v21 = static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_10009CED0, "Connection established", 22, 2, _swiftEmptyArrayStorage);
            v22 = &enum case for TunnelConnectionState.ready(_:);
          }

          (*(v9 + 104))(v11, *v22, v8);
          a5(v11);
          swift_unknownObjectRelease();

          return (*(v9 + 8))(v11, v8);
        case 4:
          v32 = static os_log_type_t.error.getter();
          v31 = qword_10009CED0;
          sub_100013414(&qword_1000999F0, &unk_100077530);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_100077360;
          v33 = a2;
          swift_unknownObjectRetain();
          sub_100013414(&unk_10009B750, qword_100077E48);
          v24 = String.init<A>(describing:)();
          v26 = v25;
          *(v23 + 56) = &type metadata for String;
          *(v23 + 64) = sub_100022420();
          *(v23 + 32) = v24;
          *(v23 + 40) = v26;
          os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v31, "Connection failed: %{public}s", 29, 2, v23);
LABEL_11:

          goto LABEL_12;
        case 5:
          v20 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10009CED0, "Connection cancelled", 20, 2, _swiftEmptyArrayStorage);
          goto LABEL_12;
        default:
          v28 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10009CED0, "Unknown connection state", 24, 2, _swiftEmptyArrayStorage);
LABEL_16:
          swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100050C50()
{
  _StringGuts.grow(_:)(26);

  swift_getMetatypeMetadata();
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_100035F9C(&qword_10009B738, &qword_10009B730, &unk_100078A80, &protocol conformance descriptor for Identifier<A>);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x8000000100080B90;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  v4 = nw_connection_copy_connected_remote_endpoint();
  if (v4)
  {
    v5 = [v4 description];
    swift_unknownObjectRelease();
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE600000000000000;
    v6 = 0x3E656E6F6E3CLL;
  }

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  return 60;
}

uint64_t sub_100050E34()
{
  sub_10000ECF4(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_identifier;
  sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();

  return v0;
}

void sub_100050F00(uint64_t a1)
{
  sub_100019960(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100051160(__int16 a1, __int16 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

uint64_t sub_1000511D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  if (!v3)
  {
    return 1280;
  }

  swift_unknownObjectRetain();
  v4 = nw_protocol_copy_quic_definition();
  v5 = nw_connection_copy_protocol_metadata(v3, v4);
  result = swift_unknownObjectRelease();
  if (v5)
  {
    stream_usable_datagram_frame_size = nw_quic_get_stream_usable_datagram_frame_size(v5);
    v8 = static os_log_type_t.default.getter();
    v9 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = stream_usable_datagram_frame_size;
      _os_log_impl(&_mh_execute_header, v9, v8, "Tunnel MTU datagaram = %ld", v10, 0xCu);
      sub_10000D8D4(v10);
    }

    if (!stream_usable_datagram_frame_size)
    {
      type metadata accessor for VirtualInterface();
      LOWORD(stream_usable_datagram_frame_size) = static VirtualInterface.minSupportedMTU.getter();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return stream_usable_datagram_frame_size;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000512FC(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream))
  {
    v12 = static os_log_type_t.fault.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "Tunnel connection path nw_path_copy_interface: nil", 50, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  v3 = swift_unknownObjectRetain();
  if (!nw_connection_copy_current_path(v3))
  {
LABEL_9:
    swift_unknownObjectRelease();
    return 0;
  }

  v4 = nw_path_copy_interface();
  if (!v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  nw_interface_get_name(v4);
  v5 = String.init(cString:)();
  v7 = v6;
  v8 = static os_log_type_t.default.getter();
  v9 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000C600(v5, v7, &v14);
    _os_log_impl(&_mh_execute_header, v9, v8, "Tunnel connection path interface name: %s", v10, 0xCu);
    sub_10000CADC(v11);
    sub_10000D8D4(v11);
    sub_10000D8D4(v10);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100051490()
{
  v1 = type metadata accessor for TunnelConnectionState();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (v6 == 3)
  {
    v9 = (v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
    v10 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
    if (v10)
    {
      v11 = v9[1];
      (*(v2 + 104))(v5, enum case for TunnelConnectionState.stopped(_:), v1);

      v10(v5);
      sub_10000FAC8(v10, v11);
      (*(v2 + 8))(v5, v1);
      v12 = *v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    return sub_10000FAC8(v12, v13);
  }

  else if (v6 == 2)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
    if (v7)
    {
      v8 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler + 8);
      (*(v2 + 104))(v5, enum case for TunnelConnectionState.ready(_:), v1);

      v7(v5);
      sub_10000FAC8(v7, v8);
      return (*(v2 + 8))(v5, v1);
    }
  }

  return result;
}

uint64_t sub_100051658(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for TunnelConnectionIdentifierCategory();
  Identifier.init()();
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream) = 0;
  v7 = (v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + 16) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group) = a1;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection__allowLocalConnectionsOnly) = a2;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_peerConnectionsInfo) = a3;
  return v3;
}

void sub_100051704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TunnelPacket();
  sub_10000CBBC();
  v50 = v8;
  __chkstk_darwin(v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100013414(&qword_10009B788, &qword_100078788);
  sub_10000CC04();
  __chkstk_darwin(v13);
  v48 = (v44 - v14);
  v15 = sub_100013414(&unk_10009B790, &qword_100078790);
  v16 = __chkstk_darwin(v15 - 8);
  v54 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v44 - v18;
  v20 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  if (v20)
  {
    v21 = *(a1 + 16);
    if (v21 >> 60)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      v45 = a2;
      v46 = a3;
      v49 = a1;
      v44[1] = v20;
      swift_unknownObjectRetain_n();
      v22 = swift_slowAlloc();
      v23 = 0;
      v47 = v50 + 16;
      v52 = (v50 + 32);
      v53 = v22;
      v51 = (v50 + 8);
      while (1)
      {
        v24 = v54;
        if (v23 == v21)
        {
          v25 = 1;
          v23 = v21;
        }

        else
        {
          if (v23 >= v21)
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          if (__OFADD__(v23, 1))
          {
            goto LABEL_18;
          }

          v26 = v50;
          v27 = v48;
          v28 = v49 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23;
          v29 = *(v12 + 48);
          *v48 = v23;
          (*(v26 + 16))(v27 + v29, v28, v7);
          sub_100054F04(v27, v24, &qword_10009B788, &qword_100078788);
          v25 = 0;
          ++v23;
        }

        sub_1000223E8(v24, v25, 1, v12);
        sub_100054F04(v24, v19, &unk_10009B790, &qword_100078790);
        if (sub_100022484(v19, 1, v12) == 1)
        {
          break;
        }

        v30 = v21;
        v31 = *v19;
        (*v52)(v11, &v19[*(v12 + 48)], v7);
        v32 = TunnelPacket.packetData.getter();
        v33 = v11;
        v35 = v34;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10000DF50(v32, v35);
        v37 = NWCreateDispatchDataFromNSData();

        if (!v37)
        {
          goto LABEL_21;
        }

        *(v53 + 8 * v31) = v37;
        (*v51)(v33, v7);
        v21 = v30;
        v11 = v33;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_20;
      }

      sub_100055004();
      v38 = swift_allocObject();
      v39 = v49;
      v38[2] = v53;
      v38[3] = v39;
      v40 = v46;
      v38[4] = v45;
      v38[5] = v40;
      aBlock[4] = sub_100054F64;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005014C;
      aBlock[3] = &unk_100091040;
      v41 = _Block_copy(aBlock);

      nw_connection_write_multiple();
      swift_unknownObjectRelease_n();
      _Block_release(v41);
    }
  }

  else
  {
    v42 = static os_log_type_t.error.getter();
    v43 = qword_10009CED0;

    os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Tunnel stream trying to receive packets on a nil datagram stream", 64, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100051B94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v5 = a1;
  v6 = type metadata accessor for POSIXError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E8B4();
  swift_arrayDestroy();

  if (v5)
  {
    Dictionary.init(dictionaryLiteral:)();
    POSIXError.init(uncheckedCode:userInfo:)();
    v10 = POSIXError._nsError.getter();
    (*(v7 + 8))(v9, v6);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  a4(v10);
}

void sub_100051D10(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream))
  {
    type metadata accessor for NWObjcTunnelConnectionWrapper(0);
    sub_100054FE0();
    sub_10000DBDC(v4, v5, &unk_1000786E8);

    StreamBasedTunnelConnection.send(controlMessage:completion:)();
  }
}

uint64_t sub_100051DD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream))
  {
    sub_10000CBD0();
    v5 = swift_allocObject();
    *(v5 + 16) = _swiftEmptyArrayStorage;
    sub_10000CBD0();
    v6 = swift_allocObject();
    swift_weakInit();
    sub_100055004();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v7[5] = v5;
    v12[4] = sub_100054EF8;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10000E280;
    v12[3] = &unk_100090FF0;
    v8 = _Block_copy(v12);
    swift_unknownObjectRetain_n();

    nw_connection_receive_multiple();
    swift_unknownObjectRelease_n();
    _Block_release(v8);
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    v11 = qword_10009CED0;

    return os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Tunnel stream trying to receive packets on a nil datagram stream", 64, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100051F88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a1;
  v54 = a7;
  v55 = a6;
  v51 = a3;
  v10 = type metadata accessor for TunnelPacket();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RemotePairingError();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for NWError();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (a2 && nw_content_context_get_is_wake_packet())
    {
      v20 = static os_log_type_t.default.getter();
      v21 = powerLog.getter();
      v48 = v20;
      if (!os_log_type_enabled(v21, v20))
      {

        if (a4)
        {
          goto LABEL_7;
        }

LABEL_9:
        v30 = NWCreateNSDataFromDispatchData();
        if (v30)
        {
          v31 = v30;
          v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          sub_10000E228(v32, v34);
          TunnelPacket.init(data:)();
          v36 = v52;
          swift_beginAccess();
          sub_100053FB8();
          v37 = *(*(v36 + 16) + 16);
          sub_100054124(v37);
          v38 = *(v36 + 16);
          *(v38 + 16) = v37 + 1;
          v39 = v49;
          v40 = v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37;
          v41 = v50;
          (*(v49 + 16))(v40, v12, v50);
          *(v36 + 16) = v38;
          swift_endAccess();
          (*(v39 + 8))(v12, v41);
          if (v51)
          {
            swift_beginAccess();

            v55(v42, 0);

            sub_10000DF50(v32, v34);
          }

          else
          {

            return sub_10000DF50(v32, v34);
          }
        }

        else
        {
          sub_10000DBDC(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
          static Error<>.dataCorrupted.getter();
          sub_10000DBDC(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
          v35 = swift_allocError();
          Error<>.init(_:_:)();
          v55(v35, 1);
        }
      }

      v22 = swift_slowAlloc();
      v46 = v22;
      v47 = swift_slowAlloc();
      v57[0] = v47;
      *v22 = 136315138;
      v56 = *(v19 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_peerConnectionsInfo);

      sub_100013414(&qword_10009B530, &qword_100078480);
      v23 = String.init<A>(describing:)();
      v25 = sub_10000C600(v23, v24, v57);
      v44 = v21;
      v45 = v19;
      v26 = v25;

      v27 = v46;
      *(v46 + 1) = v26;
      _os_log_impl(&_mh_execute_header, v21, v48, "Received a wake packet from: %s", v27, 0xCu);
      sub_10000CADC(v47);
    }

    if (a4)
    {
LABEL_7:
      swift_unknownObjectRetain_n();
      NWError.init(_:)();
      sub_10000DBDC(&unk_10009B770, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      v28 = swift_allocError();
      (*(v15 + 16))(v29, v17, v14);
      v55(v28, 1);

      swift_unknownObjectRelease();

      return (*(v15 + 8))(v17, v14);
    }

    goto LABEL_9;
  }

  return result;
}

void sub_100052658(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream))
  {
    type metadata accessor for NWObjcTunnelConnectionWrapper(0);
    sub_100054FE0();
    sub_10000DBDC(v3, v4, &unk_1000786E8);

    StreamBasedTunnelConnection.receiveControlMessage(completion:)();
  }
}

uint64_t sub_100052714()
{
  nw_connection_group_cancel(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group));
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream;
  v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream);
  if (v2)
  {
    nw_connection_cancel(*(v2 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection));
  }

  v3 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream;
  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  if (v4)
  {
    nw_connection_cancel(v4);
  }

  *(v0 + v1) = 0;

  *(v0 + v3) = 0;
  swift_unknownObjectRelease();
  *(v0 + 16) = 3;

  return sub_100051490();
}

void sub_1000527AC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  v8 = (v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
  *v8 = sub_100054D00;
  v8[1] = v7;
  v9 = a1;

  v10 = sub_100055020();
  sub_10000FAC8(v10, v11);
  v12 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group;
  v13 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group);
  sub_10000CBD0();
  v14 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000D090();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v27 = sub_100054D0C;
  v28 = v16;
  sub_100054FC0();
  v24 = 1107296256;
  v25 = sub_10005329C;
  v26 = &unk_100090E88;
  v17 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  nw_connection_group_set_state_changed_handler(v13, v17);
  _Block_release(v17);
  swift_unknownObjectRelease();
  v18 = *(v3 + v12);
  sub_10000CBD0();
  v19 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v9;
  v27 = sub_100054D14;
  v28 = v20;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000DC24;
  v26 = &unk_100090ED8;
  v21 = _Block_copy(&v23);
  v22 = v9;
  swift_unknownObjectRetain();

  nw_connection_group_set_new_connection_handler(v18, v21);
  _Block_release(v21);
  swift_unknownObjectRelease();
  nw_connection_group_set_queue(*(v3 + v12), v22);
  nw_connection_group_start(*(v3 + v12));
}

uint64_t sub_100052A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TunnelConnectionState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_100054E90;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_100090F78;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000DBDC(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);
}

uint64_t sub_100052DAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      switch(a1)
      {
        case 0:
          if (a2)
          {
            swift_getObjectType();
            sub_10004F6F4();
          }

          else
          {
            type metadata accessor for RemotePairingError();
            sub_10000DBDC(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
            swift_allocError();
            sub_10000DBDC(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
            static Error<>.networkingError.getter();
          }

          v25 = static os_log_type_t.error.getter();
          v26 = qword_10009CED0;
          if (os_log_type_enabled(qword_10009CED0, v25))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v32 = v28;
            *v27 = 136315138;
            swift_errorRetain();
            sub_100013414(&unk_10009A930, &unk_100077080);
            v29 = String.init<A>(describing:)();
            v31 = sub_10000C600(v29, v30, &v32);

            *(v27 + 4) = v31;
            _os_log_impl(&_mh_execute_header, v26, v25, "Tunnel connection group invalid state %s", v27, 0xCu);
            sub_10000CADC(v28);
          }

          nw_connection_group_cancel(v8);
          sub_100052714();
          swift_unknownObjectRelease();

        case 1:
          v21 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_10009CED0, "Tunnel connection group waiting", 31, 2, _swiftEmptyArrayStorage);
          goto LABEL_18;
        case 2:
          v17 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10009CED0, "Tunnel connection group ready and established", 45, 2, _swiftEmptyArrayStorage);
          goto LABEL_18;
        case 3:
          v9 = static os_log_type_t.error.getter();
          v10 = qword_10009CED0;
          if (!os_log_type_enabled(qword_10009CED0, v9))
          {
            goto LABEL_17;
          }

          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v32 = v12;
          *v11 = 136315138;
          swift_unknownObjectRetain();
          sub_100013414(&unk_10009B750, qword_100077E48);
          v18 = String.init<A>(describing:)();
          v20 = sub_10000C600(v18, v19, &v32);

          *(v11 + 4) = v20;
          v16 = "Tunnel connection group failed %s";
          goto LABEL_11;
        case 4:
          v9 = static os_log_type_t.default.getter();
          v10 = qword_10009CED0;
          if (!os_log_type_enabled(qword_10009CED0, v9))
          {
            goto LABEL_17;
          }

          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v32 = v12;
          *v11 = 136315138;
          swift_unknownObjectRetain();
          sub_100013414(&unk_10009B750, qword_100077E48);
          v13 = String.init<A>(describing:)();
          v15 = sub_10000C600(v13, v14, &v32);

          *(v11 + 4) = v15;
          v16 = "Tunnel connection group canceled %s";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, v9, v16, v11, 0xCu);
          sub_10000CADC(v12);

          break;
        default:
          v22 = static os_log_type_t.default.getter();
          v23 = qword_10009CED0;
          if (!os_log_type_enabled(qword_10009CED0, v22))
          {
            goto LABEL_17;
          }

          v24 = swift_slowAlloc();
          *v24 = 67109120;
          *(v24 + 4) = a1;
          _os_log_impl(&_mh_execute_header, v23, v22, "Tunnel connection group unknown state %u", v24, 8u);
          break;
      }

LABEL_17:
      nw_connection_group_cancel(v8);
      sub_100052714();
LABEL_18:
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000532A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10005331C(NSObject *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10009CED0, "Tunnel connection group set new connection handler", 50, 2, _swiftEmptyArrayStorage);
    sub_1000533C0(a1, a3);
  }

  return result;
}

void sub_1000533C0(NSObject *a1, NSObject *a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v8[4] = sub_100054D60;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100050144;
  v8[3] = &unk_100090F28;
  v7 = _Block_copy(v8);
  swift_unknownObjectRetain();

  nw_connection_set_state_changed_handler(a1, v7);
  _Block_release(v7);
  nw_connection_set_queue(a1, a2);
  nw_connection_start(a1);
}

uint64_t sub_1000534C0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  switch(a1)
  {
    case 1:
      v6 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10009CED0, "Tunnel stream connection waiting, error", 39, 2, _swiftEmptyArrayStorage);
      goto LABEL_24;
    case 2:
      v20 = static os_log_type_t.default.getter();
      v21 = qword_10009CED0;

      return os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Tunnel stream connection preparing", 34, 2, _swiftEmptyArrayStorage);
    case 3:
      swift_getObjectType();
      if (sub_10004F940() && *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection__allowLocalConnectionsOnly) != 1)
      {
        v31 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, qword_10009CED0, "Rejecting tunnel connection originating from local machine", 58, 2, _swiftEmptyArrayStorage);
LABEL_24:
        nw_connection_cancel(a3);
        return sub_100052714();
      }

      else
      {
        v8 = sub_10004FA4C();
        v9 = static os_log_type_t.default.getter();
        v10 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v9))
        {
          v11 = swift_slowAlloc();
          *v11 = 67109120;
          *(v11 + 4) = v8 & 1;
          _os_log_impl(&_mh_execute_header, v10, v9, "Tunnel stream (datagram=%{BOOL}d) connection established", v11, 8u);
        }

        if (v8)
        {
          *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream) = a3;
          swift_unknownObjectRelease();
          if ((*(a4 + 16) & 0xFE) != 2)
          {
            if ((*(a4 + 16) & 0x100) != 0)
            {
              v12 = 2;
            }

            else
            {
              v12 = 1;
            }

            *(a4 + 16) = v12;
          }

          swift_unknownObjectRetain();
        }

        else
        {
          type metadata accessor for NWObjcTunnelConnectionWrapper(0);
          v27 = swift_allocObject();
          v28 = swift_unknownObjectRetain();
          sub_1000502DC(v28, 0, 0);
          *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream) = v27;

          v29 = *(a4 + 16);
          if ((v29 & 0xFE) != 2)
          {
            if (v29)
            {
              v30 = 2;
            }

            else
            {
              v30 = 256;
            }

            *(a4 + 16) = v30;
          }
        }

        return sub_100051490();
      }

    case 4:
      v13 = static os_log_type_t.error.getter();
      v14 = qword_10009CED0;
      if (!os_log_type_enabled(qword_10009CED0, v13))
      {
        goto LABEL_24;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315138;
      swift_unknownObjectRetain();
      sub_100013414(&unk_10009B750, qword_100077E48);
      v17 = String.init<A>(describing:)();
      v19 = sub_10000C600(v17, v18, &v32);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "Tunnel stream connection failed, error: %s", v15, 0xCu);
      sub_10000CADC(v16);

      goto LABEL_23;
    case 5:
      v7 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10009CED0, "Tunnel stream connection cancelled", 34, 2, _swiftEmptyArrayStorage);
      goto LABEL_24;
    default:
      v23 = a1;
      v24 = static os_log_type_t.default.getter();
      v25 = qword_10009CED0;
      if (!os_log_type_enabled(qword_10009CED0, v24))
      {
        goto LABEL_24;
      }

      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v25, v24, "Tunnel stream unknown connection state %u", v26, 8u);
LABEL_23:

      goto LABEL_24;
  }
}

uint64_t sub_1000538DC()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_identifier;
  sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_10000FAC8(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler), *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler + 8));
  return v0;
}

uint64_t sub_1000539AC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_100053A30(uint64_t a1)
{
  sub_100019960(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unsigned __int8 *getEnumTagSinglePayload for NWQUICTunnelConnection.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 65283;
  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[2];
      if (!result[2])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 2);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 16)) - 65283);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NWQUICTunnelConnection.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_WORD *sub_100053CA0(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100053E54(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100053EE4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_100053F54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100054698();
    *v2 = v5;
  }
}

void sub_100053FB8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10005431C(0, *(v1 + 16) + 1, 1, v1, &qword_10009B780, &qword_100078780, &type metadata accessor for TunnelPacket, &type metadata accessor for TunnelPacket);
    *v0 = v3;
  }
}