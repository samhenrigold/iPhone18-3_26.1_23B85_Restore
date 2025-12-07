void sub_100449084(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v92 = v2;
  v93 = v3;
  __chkstk_darwin(v2);
  v67 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SFAirDropClient.Identifier();
  v7 = *(v87 - 8);
  v8 = __chkstk_darwin(v87);
  v86 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v65 - v10;
  v94 = type metadata accessor for SFAirDropReceive.Transfer();
  v11 = *(v94 - 8);
  v12 = __chkstk_darwin(v94);
  v91 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v66 = &v65 - v15;
  __chkstk_darwin(v14);
  v17 = &v65 - v16;
  v18 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v68 = *(v18 - 8);
  v19 = __chkstk_darwin(v18 - 8);
  v70 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v20;
  __chkstk_darwin(v19);
  v71 = &v65 - v21;
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 64);
  v26 = (v23 + 63) >> 6;
  v96 = v11 + 16;
  v82 = enum case for SFAirDropClient.Identifier.wallet(_:);
  v81 = (v7 + 104);
  v80 = (v7 + 8);
  v95 = (v11 + 8);
  v88 = v11;
  v65 = (v11 + 32);
  v89 = a1;

  v27 = 0;
  v79 = _swiftEmptyArrayStorage;
  v83 = v26;
  v84 = a1 + 64;
LABEL_4:
  v28 = v27;
  v29 = v94;
  if (!v25)
  {
    goto LABEL_6;
  }

  do
  {
    v27 = v28;
LABEL_9:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = *(v88 + 72);
    (*(v88 + 16))(v17, *(v89 + 56) + v31 * (v30 | (v27 << 6)), v29);
    v32 = v85;
    SFAirDropReceive.Transfer.presenter.getter();
    v33 = v86;
    v34 = v17;
    v35 = v87;
    (*v81)(v86, v82, v87);
    v90 = static SFAirDropClient.Identifier.== infix(_:_:)();
    v36 = *v80;
    (*v80)(v33, v35);
    v36(v32, v35);
    if (v90)
    {
      v37 = *v65;
      (*v65)(v66, v34, v29);
      v38 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v38;
      v17 = v34;
      v26 = v83;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10028FDA4(0, v38[2] + 1, 1);
        v38 = aBlock[0];
      }

      v22 = v84;
      v40 = v31;
      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        sub_10028FDA4((v41 > 1), v42 + 1, 1);
        v38 = aBlock[0];
      }

      v38[2] = v42 + 1;
      v43 = *(v88 + 80);
      v79 = v38;
      v37(v38 + ((v43 + 32) & ~v43) + v42 * v40, v66, v94);
      goto LABEL_4;
    }

    (*v95)(v34, v29);
    v28 = v27;
    v17 = v34;
    v26 = v83;
    v22 = v84;
  }

  while (v25);
  while (1)
  {
LABEL_6:
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return;
    }

    if (v27 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    ++v28;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  v44 = v79;
  v45 = v79[2];
  if (v45)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10028FD60(0, v45, 0);
    v46 = aBlock[0];
    v47 = v44 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v48 = *(v88 + 72);
    v49 = *(v88 + 16);
    v50 = v67;
    do
    {
      v51 = v91;
      v52 = v94;
      v49(v91, v47, v94);
      SFAirDropReceive.Transfer.startDate.getter();
      (*v95)(v51, v52);
      aBlock[0] = v46;
      v54 = v46[2];
      v53 = v46[3];
      if (v54 >= v53 >> 1)
      {
        sub_10028FD60((v53 > 1), v54 + 1, 1);
        v46 = aBlock[0];
      }

      v46[2] = v54 + 1;
      (*(v93 + 32))(v46 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v54, v50, v92);
      v47 += v48;
      --v45;
    }

    while (v45);
  }

  else
  {

    v46 = _swiftEmptyArrayStorage;
  }

  v55 = v78;
  v56 = v77;
  v57 = v71;
  sub_10044BB70(v46, v71);

  v96 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = v70;
  sub_1002E4E88(v57, v70);
  v60 = (*(v68 + 80) + 24) & ~*(v68 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  sub_10044DBD8(v59, v61 + v60);
  aBlock[4] = sub_10044DC48;
  aBlock[5] = v61;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1CF8;
  v62 = _Block_copy(aBlock);

  v63 = v73;
  static DispatchQoS.unspecified.getter();
  v97 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  v64 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v62);
  (*(v56 + 8))(v64, v55);
  (*(v74 + 8))(v63, v75);
  sub_100005508(v57, &qword_10097A7F0, &unk_1007FB600);
}

id sub_100449AE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAirDropUISessionManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDAirDropUISessionManager(uint64_t a1)
{
  result = qword_10097E850;
  if (!qword_10097E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100449C44(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100449D20(void *a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100449D98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_10044643C();
}

uint64_t sub_100449EDC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v17[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue];
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  (*(v10 + 32))(v13 + v12, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_10044DA90;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1C58;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

void sub_10044A260(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 transferState];
  v9 = SFAirDropTransferStateToString();
  if (v9)
  {
    v10 = v9;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v43 = 0;
    v12 = 0;
  }

  [a1 userResponse];
  v13 = SFAirDropTransferUserResponseToString();
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a1 transferProgress];
  v17 = [a1 completedURLs];
  if (v17)
  {
    v18 = v17;
    type metadata accessor for URL();
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = *(v19 + 16);
  }

  else
  {
    v41 = 0;
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v20 = v8 - 10;
  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_10097E7C0);

  v45 = v16;

  v22 = Logger.logObject.getter();
  v40 = v16;
  v23 = static os_log_type_t.default.getter();

  v44 = v7;
  if (os_log_type_enabled(v22, v23))
  {
    v39 = v20;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v24 = 136316162;
    *(v24 + 4) = sub_10000C4E4(v5, v7, v47);
    *(v24 + 12) = 2080;
    if (v12)
    {
      v26 = v43;
    }

    else
    {
      v26 = 0xD000000000000015;
    }

    if (!v12)
    {
      v12 = 0x8000000100789F30;
    }

    v27 = sub_10000C4E4(v26, v12, v47);

    *(v24 + 14) = v27;
    *(v24 + 22) = 2080;
    v28 = sub_10000C4E4(v42, v15, v47);

    *(v24 + 24) = v28;
    *(v24 + 32) = 2112;
    *(v24 + 34) = v45;
    *v25 = v40;
    *(v24 + 42) = 2048;
    *(v24 + 44) = v41;
    v29 = v45;
    _os_log_impl(&_mh_execute_header, v22, v23, "Transfer %s changed to state: %s. Response: %s. Progress: %@. Completed URLs: %ld", v24, 0x34u);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);

    swift_arrayDestroy();

    v20 = v39;
  }

  else
  {
  }

  if (v20 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
    swift_beginAccess();
    if (*(*(v2 + v30) + 16))
    {

      sub_100012854(v5, v44);
      if ((v31 & 1) == 0)
      {

        return;
      }

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v5;
        v37 = v35;
        v46 = v35;
        *v34 = 136315138;
        v38 = sub_10000C4E4(v36, v44, &v46);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Transfer %s no longer needs to be tracked. It is either terminated or failed.", v34, 0xCu);
        sub_10000C60C(v37);
      }

      else
      {
      }

      sub_10044597C(a1);
    }

    else
    {
    }
  }

  else
  {

    sub_10044472C(a1);
    sub_100444E9C(a1);
  }
}

void sub_10044A844(void *a1)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = [v3 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10000C4E4(v9, v11, &v13);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Transfer %s was removed by transfer manager. Ending session.", v6, 0xCu);
    sub_10000C60C(v7);
  }

  sub_10044597C(v3);
}

uint64_t sub_10044AA50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097E7C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting Wallet UI service for peerPayment type boop", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v4 + 32))(v16 + v15, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v8, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_10044AD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return _swift_task_switch(sub_10044AD48, 0, 0);
}

uint64_t sub_10044AD48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10044AE60;
    v4 = v0[6];

    return sub_100651704(v4, v2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10044AE60()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10044AFDC;
  }

  else
  {

    v3 = sub_10044AF7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10044AF7C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044AFDC()
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097E7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wallet UI service show failed with error %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10044B19C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10044EE2C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1E60;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void *sub_10044B4E8(uint64_t a1)
{
  v58 = type metadata accessor for Calendar.Component();
  v1 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v41[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = type metadata accessor for Calendar();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v6 = __chkstk_darwin(v5 - 8);
  v57 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v41[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v54 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v41[-v15];
  __chkstk_darwin(v14);
  v18 = &v41[-v17];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v52 = v1;
    v21 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_ongoingWalletTransferStartDate;
    swift_beginAccess();
    sub_1002E4E88(v20 + v21, v9);
    v22 = v11[6];
    if (v22(v9, 1, v10) == 1)
    {

      return sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
    }

    else
    {
      v50 = v22;
      v47 = v11[4];
      v48 = v11 + 4;
      v47(v18, v9, v10);
      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097E7C0);
      v45 = v11[2];
      v46 = v11 + 2;
      v45(v16, v18, v10);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      v51 = v11;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v43 = v27;
        v44 = swift_slowAlloc();
        v59 = v44;
        *v27 = 136315138;
        sub_1000143BC(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v42 = v25;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v49 = v11[1];
        v49(v16, v10);
        v31 = sub_10000C4E4(v28, v30, &v59);

        v32 = v43;
        *(v43 + 1) = v31;
        _os_log_impl(&_mh_execute_header, v24, v42, "Relaunching Wallet UI for transfer with start date %s", v32, 0xCu);
        sub_10000C60C(v44);
      }

      else
      {

        v49 = v11[1];
        v49(v16, v10);
      }

      static Calendar.current.getter();
      v33 = v52;
      v34 = v55;
      v35 = v58;
      (*(v52 + 104))(v55, enum case for Calendar.Component.second(_:), v58);
      v36 = v57;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v33 + 8))(v34, v35);
      (*(v53 + 8))(v4, v56);
      v37 = v50;
      if (v50(v36, 1, v10) == 1)
      {
        v38 = v54;
        v45(v54, v18, v10);
        if (v37(v36, 1, v10) != 1)
        {
          sub_100005508(v36, &qword_10097A7F0, &unk_1007FB600);
        }
      }

      else
      {
        v38 = v54;
        v47(v54, v36, v10);
      }

      sub_100449EDC(v38);

      v39 = v38;
      v40 = v49;
      v49(v39, v10);
      return v40(v18, v10);
    }
  }

  return result;
}

uint64_t sub_10044BB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1000143BC(&qword_10097E910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void sub_10044BE20(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1002E4E88(a2, v5);
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_ongoingWalletTransferStartDate;
    swift_beginAccess();
    sub_1003561CC(v5, v7 + v8);
    swift_endAccess();
  }
}

void sub_10044BF04()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  v52 = [objc_opt_self() interfaceWithIdentifier:v2];

  v3 = objc_opt_self();
  v4 = [v3 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIServer];
  [v52 setServer:v4];

  v5 = [v3 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIClient];
  [v52 setClient:v5];

  [v52 setClientMessagingExpectation:0];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() endpointForMachName:v6 service:v7 instance:0];

  v9 = qword_100973898;
  if (v8)
  {
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097E7C0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropUISessionManager: endpoint created!", v14, 2u);
    }

    v15 = [objc_opt_self() connectionWithEndpoint:v10];
    if (v15)
    {
      v16 = v15;
      v61 = &OBJC_PROTOCOL___BSServiceConnectionClient;
      v17 = swift_dynamicCastObjCProtocolConditional();
      if (v17)
      {
        v18 = v17;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "SDAirDropUISessionManager: connection created", v21, 2u);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = v52;
        *(v22 + 24) = v1;
        v23 = swift_allocObject();
        *(v23 + 16) = sub_10044EDA0;
        *(v23 + 24) = v22;
        v59 = sub_10044EDA8;
        v60 = v23;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v58 = sub_10044CCA4;
        *(&v58 + 1) = &unk_1008E1DC0;
        v24 = _Block_copy(&aBlock);
        v53 = v52;
        v25 = v1;

        v26 = v16;

        [v18 configureConnection:v24];

        _Block_release(v24);
        LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

        if (v24)
        {
          __break(1u);
        }

        else
        {
          v27 = OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection;
          if (*&v25[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection])
          {
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v28, v29, "SDAirDropUISessionManager: Previous connection present while trying to activate. Ending previous then activating new connection", v30, 2u);
            }

            sub_10044CCF8();
            v31 = *&v25[v27];
          }

          else
          {
            v31 = 0;
          }

          *&v25[v27] = v18;
          v39 = v26;

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, v40, v41, "SDAirDropUISessionManager: Activating Session", v42, 2u);
          }

          [v18 activate];
          v43 = String._bridgeToObjectiveC()();
          v44 = String._bridgeToObjectiveC()();
          v45 = [objc_opt_self() attributeWithDomain:v43 name:v44];

          sub_10028088C(&qword_100974F70, &unk_100804260);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_1007FD580;
          *(v46 + 32) = v45;
          sub_1000276B4(0, &unk_10097E980, RBSAttribute_ptr);
          v47 = v45;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v49 = [v18 remoteTargetWithLaunchingAssertionAttributes:isa];

          if (v49)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v55 = 0u;
            v56 = 0u;
          }

          aBlock = v55;
          v58 = v56;
          if (*(&v56 + 1))
          {
            sub_10028088C(&unk_10097E990, &unk_100804270);
            v50 = swift_dynamicCast();
            v51 = v54;
            if (!v50)
            {
              v51 = 0;
            }
          }

          else
          {
            sub_100005508(&aBlock, &unk_1009746F0, &qword_1007F90B0);
            v51 = 0;
          }

          *&v25[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] = v51;

          swift_unknownObjectRelease();
        }

        return;
      }
    }

    else
    {
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Could not create a connection with the AirDropUI endpoint", v38, 2u);
    }
  }

  else
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_10097E7C0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Could not find endpoint for AirDropUI launch angel. It may not be loaded.", v35, 2u);
    }
  }
}

id sub_10044C7E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097E7C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropUISessionManager: configuring session...", v9, 2u);
  }

  v10 = String._bridgeToObjectiveC()();
  [a1 setName:v10];

  v11 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v11];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v20 = sub_10044CAB0;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100035F9C;
  v19 = &unk_1008E1DE8;
  v12 = _Block_copy(&v16);
  [a1 setActivationHandler:v12];
  _Block_release(v12);
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = sub_10044EDD0;
  v21 = v13;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100035F9C;
  v19 = &unk_1008E1E38;
  v14 = _Block_copy(&v16);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
  return [a1 setTargetQueue:*(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_queue)];
}

void sub_10044CAB0()
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097E7C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SDAirDropUISessionManager connection activated!", v2, 2u);
  }
}

void sub_10044CB98(uint64_t a1, uint64_t a2)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropUISessionManager connection invalidated with endpoint!", v5, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10044CCF8();
}

uint64_t sub_10044CCA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_10044CCF8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection;
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection);
  if (!v6)
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_10097E7C0);
    v32 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v32, v28, "XPC Connection not available, skipping end.", v29, 2u);
    }

    goto LABEL_17;
  }

  v7 = qword_100973898;
  v32 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097E7C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "SDAirDropUISessionManager: Invalidating connection", v11, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion;
    v14 = Strong;
    [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion) invalidate];
    v15 = *&v14[v13];
    *&v14[v13] = 0;
  }

  [v32 invalidate];
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer) = 0;
  swift_unknownObjectRelease();
  v16 = *(v1 + v5);
  *(v1 + v5) = 0;

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_17:
    v30 = v32;
    goto LABEL_18;
  }

  v31 = v17;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = qword_1009735E0;

    v23 = v31;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = static AirDropActor.shared;
    v25 = sub_1000143BC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v21;
    v26[5] = v23;

    sub_1002B3098(0, 0, v4, &unk_100804250, v26);

    return;
  }

  v30 = v31;
LABEL_18:
}

id sub_10044D130()
{
  v1 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AirDropUISessionClient();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10044D258()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_queue;
  v6 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v9[1] = "AirDropUISessionClientDelegate";
  v9[2] = v6;
  static DispatchQoS.userInitiated.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = type metadata accessor for AirDropUISessionClient();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10044D598(void *a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t, uint64_t), ...)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a1;
  sub_10044D8AC(v8, v10, a4, a5);
}

void sub_10044D614(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097E7C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10000C4E4(a1, a2, &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10000C4E4(a3, a4, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "SDAirDropUISessionManager: Received remote request for run action for transfer identifier: %s and action identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_10044E7B0(a1, a2, a3, a4);
  }
}

void sub_10044D8AC(uint64_t a1, unint64_t a2, const char *a3, void (*a4)(uint64_t, uint64_t))
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097E7C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000C4E4(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_10000C60C(v12);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    a4(a1, a2);
  }
}

uint64_t sub_10044DA90()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10044AA50(v2, v3);
}

uint64_t sub_10044DAF4(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10044AD28(a1, v6, v1 + v5);
}

uint64_t sub_10044DBD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10044DD58(uint64_t a1)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      v8 = v7;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    *(v5 + 4) = v7;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Wallet UI service invalidated with error: %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  if (a1)
  {

    sub_10044B19C();
  }
}

void sub_10044DEE4(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_100012854(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = [v9 cancelAction];
      [v10 triggerAction];

      return;
    }
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097E7C0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000C4E4(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v12, v13, "AirDrop transfer %s not found in actively tracked transfers. Ignoring cancel request.", v14, 0xCu);
    sub_10000C60C(v15);
  }
}

void sub_10044E0C0(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_100012854(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_11:
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097E7C0);

    v9 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000C4E4(a1, a2, &v24);
      _os_log_impl(&_mh_execute_header, v9, v15, "AirDrop transfer %s not found in actively tracked transfers. Ignoring accept request.", v16, 0xCu);
      sub_10000C60C(v17);
    }

    goto LABEL_23;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  if ([v9 transferState]!= 1)
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097E7C0);
    v19 = v9;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_10000C4E4(a1, a2, &v24);
      *(v22 + 12) = 2048;
      *(v22 + 14) = [v19 transferState];

      _os_log_impl(&_mh_execute_header, v20, v21, "AirDrop transfer %s is not in Created state%lu. Ignoring accepted request.", v22, 0x16u);
      sub_10000C60C(v23);
    }

    else
    {
    }

    return;
  }

  [v9 setUserResponse:1];
  v10 = [v9 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
LABEL_9:
    v13 = v12;
LABEL_22:

    [v13 triggerAction];

LABEL_23:
    return;
  }

  __break(1u);
}

void sub_10044E4B8(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_100012854(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if ([v9 transferState] == 7)
      {
        [v9 setUserResponse:3];
      }

      else
      {
        if (qword_100973898 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000C4AC(v15, qword_10097E7C0);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v20 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_10000C4E4(a1, a2, &v20);
          _os_log_impl(&_mh_execute_header, v16, v17, "AirDrop transfer %s is not in ReadyForOpen state. Ignoring close request.", v18, 0xCu);
          sub_10000C60C(v19);
        }
      }

      return;
    }
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097E7C0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000C4E4(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "AirDrop transfer %s not found in actively tracked transfers. Ignoring close request.", v13, 0xCu);
    sub_10000C60C(v14);
  }
}

void sub_10044E7B0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v8 = *(v4 + v7);
  if (!*(v8 + 16))
  {
LABEL_23:
    if (qword_100973898 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v9 = sub_100012854(a1, a2);
  if ((v10 & 1) == 0)
  {

    goto LABEL_23;
  }

  v37 = a1;
  v11 = *(*(v8 + 56) + 8 * v9);

  v12 = [v11 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_32:
    v30 = _swiftEmptyArrayStorage;
LABEL_33:

    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_36;
      }
    }

    else if (*(v30 + 16))
    {
LABEL_36:
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_39;
      }

      if (*(v30 + 16))
      {
        v31 = *(v30 + 32);
LABEL_39:
        v32 = v31;

        [v32 triggerAction];

        return;
      }

      __break(1u);
      goto LABEL_47;
    }

    if (qword_100973898 == -1)
    {
LABEL_42:
      v33 = type metadata accessor for Logger();
      sub_10000C4AC(v33, qword_10097E7C0);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v36 = 136315394;
        *(v36 + 4) = sub_10000C4E4(v37, a2, &v42);
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_10000C4E4(a3, a4, &v42);
        _os_log_impl(&_mh_execute_header, v34, v35, "AirDrop transfer %s does not have an action with identifier %s. Ignoring runAction request.", v36, 0x16u);
        swift_arrayDestroy();
      }

      return;
    }

LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_5:
  v38 = v11;
  v39 = a2;
  v14 = 0;
  a2 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v18 = [v15 actionIdentifier];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v20 == a3 && v22 == a4)
      {

LABEL_20:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_20;
      }
    }

LABEL_7:
    ++v14;
    if (v17 == v13)
    {
      v30 = v42;
      v11 = v38;
      a2 = v39;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_24:
  v25 = type metadata accessor for Logger();
  sub_10000C4AC(v25, qword_10097E7C0);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10000C4E4(a1, a2, &v42);
    _os_log_impl(&_mh_execute_header, v26, v27, "AirDrop transfer %s not found in actively tracked transfers. Ignoring runAction request.", v28, 0xCu);
    sub_10000C60C(v29);
  }
}

uint64_t sub_10044ECE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_1002C659C(a1, v4, v5, v7, v6);
}

uint64_t sub_10044EDD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10044EE34(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_100448A80(a1, v1);
}

uint64_t sub_10044EEDC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10044EF70(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(sub_10028088C(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_10044F040(uint64_t a1, char a2)
{
  v3 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10044F09C(uint64_t a1, void *a2)
{
  v3 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10044F12C(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F1C8, v2, 0);
}

uint64_t sub_10044F210@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPeerPayment();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10044F244(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFAirDrop.TransferType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F33C, v3, 0);
}

uint64_t sub_10044F33C(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isPeerPayment.getter();
  (*(v3 + 8))(v2, v4);

  v6 = v1[1];

  return v6(v5 & 1);
}

uint64_t sub_10044F490(uint64_t a1)
{
  *(v1 + 160) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 168) = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F530, v2, 0);
}

uint64_t sub_10044F530()
{
  v0[18] = SFAirDropReceive.AskRequest.customPayload.getter();
  v0[19] = v1;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  sub_10028BCC0(v0[18], v0[19]);
  v2 = v0[10];
  v3 = v0[11];
  v0[22] = v2;
  v0[23] = v3;
  v4 = objc_allocWithZone(SDNearbyPeerPaymentReceiverCoordinator);
  sub_100294008(v2, v3);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithSenderMetadata:isa];
  v0[24] = v6;

  sub_100026AC0(v2, v3);
  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v0[25] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10044F7B0;
  v9 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097EB10, &qword_1008043A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10044F040;
  v0[13] = &unk_1008E2088;
  v0[14] = v9;
  [v6 nearbyReceiverRequiresConfirmationWithContactID:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10044F7B0()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_10044F8A4, v1, 0);
}

uint64_t sub_10044F8A4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  sub_100026AC0(*(v0 + 176), *(v0 + 184));

  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4((v3 & 1) == 0);
}

uint64_t sub_10044F920(uint64_t a1)
{
  *(v1 + 160) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 168) = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F9C0, v2, 0);
}

uint64_t sub_10044F9C0()
{
  v0[18] = SFAirDropReceive.AskRequest.customPayload.getter();
  v0[19] = v1;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  sub_10028BCC0(v0[18], v0[19]);
  v2 = v0[10];
  v3 = v0[11];
  v0[22] = v2;
  v0[23] = v3;
  v4 = objc_allocWithZone(SDNearbyPeerPaymentReceiverCoordinator);
  sub_100294008(v2, v3);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithSenderMetadata:isa];
  v0[24] = v6;

  sub_100026AC0(v2, v3);
  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v0[25] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10044FC3C;
  v9 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097EB18, &qword_1008043B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10044F09C;
  v0[13] = &unk_1008E20B0;
  v0[14] = v9;
  [v6 recipientMetadataWithContactID:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10044FC3C()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_10044FD30, v1, 0);
}

uint64_t sub_10044FD30()
{
  v1 = v0[19];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  if (v1 >> 60 == 15)
  {

    v6 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x80000001007912D0;
    v7[2] = 0xD000000000000069;
    v7[3] = 0x8000000100791260;
    v7[4] = 52;
    (*(*(v6 - 8) + 104))(v7, enum case for SFError.unexpected(_:), v6);
    swift_willThrow();

    sub_100026AC0(v4, v5);
    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[18];
    sub_100026AC0(v0[22], v0[23]);

    v11 = v0[1];

    return v11(v10, v1);
  }
}

unint64_t sub_10044FED8()
{
  result = qword_100976248;
  if (!qword_100976248)
  {
    type metadata accessor for SFError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976248);
  }

  return result;
}

void sub_10044FF38()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_10057E55C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_100450010()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_10057E738(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

id sub_1004500E8()
{
  result = [objc_allocWithZone(type metadata accessor for HUDManager()) init];
  qword_1009A0B90 = result;
  return result;
}

uint64_t sub_100450174()
{
  v1 = *(v0 + OBJC_IVAR___SDHUDManager_activeConnection);
  if (v1)
  {
    v10 = sub_100454A8C;
    v11 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v9 = sub_1004502D4;
    *(&v9 + 1) = &unk_1008E21F0;
    v2 = _Block_copy(&aBlock);
    v3 = v1;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v2];
    _Block_release(v2);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v9 = 0u;
  }

  v7[0] = aBlock;
  v7[1] = v9;
  if (*(&v9 + 1))
  {
    sub_10028088C(&qword_10097ECB8, &qword_100804418);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

void sub_1004502D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *sub_10045033C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR___SDHUDManager_serviceConnection] = 0;
  *&v0[OBJC_IVAR___SDHUDManager_activeConnection] = 0;
  *&v0[OBJC_IVAR___SDHUDManager_requests] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR___SDHUDManager_bannerDismissalRequested] = 0;
  v7 = sub_1002DDC10();
  v13[1] = "/CONTINUITY_SPEC/Oneness";
  v13[2] = v7;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[OBJC_IVAR___SDHUDManager_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithMachServiceName:v9];

  *&v1[OBJC_IVAR___SDHUDManager_xpcListener] = v10;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "init");
  [*&v11[OBJC_IVAR___SDHUDManager_xpcListener] setDelegate:v11];
  return v11;
}

id sub_100450688(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting HUD manager", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR___SDHUDManager_xpcListener);

  return [v6 resume];
}

uint64_t sub_1004507F8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 33) = a4;
  *(v16 + 40) = v4;
  aBlock[4] = sub_100454A2C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E2588;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = v4;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

void sub_100450AE4(uint64_t a1, unint64_t a2, char a3, char a4, uint64_t a5)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009A0A38);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000C4E4(a1, a2, v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Paired Unlock: Posting pill as Unlocking for %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 pairedUnlockModelWithWatchName:v16 needsLockButton:a3 & 1 needsUpdate:a4 & 1];

  v18 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v19 = v17;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a5 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_100450D1C();
}

void sub_100450D1C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v55[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR___SDHUDManager_dispatchQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    if (_CocoaArrayWrapper.endIndex.getter() >= 2)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v1 = OBJC_IVAR___SDHUDManager_bannerDismissalRequested;
  if (*(v0 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) != 1)
  {
    goto LABEL_12;
  }

  v7 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
    goto LABEL_11;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_5:
    if (qword_100973750 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009A0A38);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Requesting new banner while previous banner dismissal was requested but not completed. Cleaning up previous banner", v12, 2u);
    }

    sub_100452654();
    return;
  }

LABEL_12:
  *(v0 + v1) = 0;
  v13 = OBJC_IVAR___SDHUDManager_serviceConnection;
  if (*(v0 + OBJC_IVAR___SDHUDManager_serviceConnection))
  {
    if (*(v0 + OBJC_IVAR___SDHUDManager_activeConnection))
    {
      v14 = OBJC_IVAR___SDHUDManager_requests;
      swift_beginAccess();
      v15 = *(v0 + v14);
      if (v15 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          return;
        }
      }

      else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_19:
        if ([v16 type] != 2)
        {
          v17 = sub_100450174();
          if (v17)
          {
            v18 = v17;
            if (qword_100973750 != -1)
            {
              swift_once();
            }

            v19 = type metadata accessor for Logger();
            sub_10000C4AC(v19, qword_1009A0A38);
            v20 = v16;
            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v24 = swift_slowAlloc();
              v57[0] = v24;
              *v23 = 136315138;
              v25 = [objc_opt_self() descriptionForType:{objc_msgSend(v20, "type")}];
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              v29 = sub_10000C4E4(v26, v28, v57);

              *(v23 + 4) = v29;
              _os_log_impl(&_mh_execute_header, v21, v22, "Requesting banner of type %s", v23, 0xCu);
              sub_10000C60C(v24);
            }

            [v18 showBanner:v20];
            swift_unknownObjectRelease();
            return;
          }

          if (qword_100973750 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_10000C4AC(v51, qword_1009A0A38);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "No remote object found", v54, 2u);
          }
        }

        return;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 32);
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (qword_100973750 == -1)
    {
LABEL_33:
      v47 = type metadata accessor for Logger();
      sub_10000C4AC(v47, qword_1009A0A38);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Active HUD service exists but no active connection. Cannot display banner", v50, 2u);
      }

      v39 = [objc_opt_self() defaultCenter];
      [v39 postNotificationName:@"SDUnlockBannerCouldNotBeDisplayed" object:0];
      goto LABEL_37;
    }

    swift_once();
    goto LABEL_33;
  }

  v30 = objc_allocWithZone(NSXPCConnection);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 initWithServiceName:v31];

  v33 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SSUSB332UIProtocol];
  [v32 setRemoteObjectInterface:v33];

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = sub_100453F64;
  v63 = v34;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100011678;
  v61 = &unk_1008E2150;
  v35 = _Block_copy(&aBlock);

  [v32 setInvalidationHandler:v35];
  _Block_release(v35);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = sub_100453F88;
  v63 = v36;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100011678;
  v61 = &unk_1008E2178;
  v37 = _Block_copy(&aBlock);

  [v32 setInterruptionHandler:v37];
  _Block_release(v37);
  [v32 resume];
  v38 = *(v0 + v13);
  *(v0 + v13) = v32;
  v39 = v32;

  v62 = sub_100454A8C;
  v63 = 0;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1004502D4;
  v61 = &unk_1008E21A0;
  v40 = _Block_copy(&aBlock);
  v41 = [v39 synchronousRemoteObjectProxyWithErrorHandler:v40];
  _Block_release(v40);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000C5B0(v57, &aBlock);
  sub_10028088C(&unk_10097EC40, qword_1008043F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000C60C(v57);
LABEL_37:

    return;
  }

  v42 = v56;
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000C4AC(v43, qword_1009A0A38);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Displaying HUD", v46, 2u);
  }

  [v42 start];
  swift_unknownObjectRelease();
  sub_10000C60C(v57);
}

uint64_t sub_1004517C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v3[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  v16 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);
}

void sub_100451A7C(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Paired Unlock: Updating pill to Unlocked", v5, 2u);
  }

  v6 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v8 = *(v7 + 32);
  }

  if (![v8 type])
  {
    if ([v8 needsUpdate])
    {
      v9 = [v8 watchName];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() pairedUnlockModelWithWatchName:v9 needsLockButton:objc_msgSend(v8 needsUpdate:{"needsLockButton"), 0}];

        swift_beginAccess();
        v12 = *(a1 + v6);
        v13 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(a1 + v6) = v12;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v12 < 0 || (v12 & 0x4000000000000000) != 0)
        {
          v12 = sub_1002D8B8C();
          *(a1 + v6) = v12;
        }

        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x20);
          *((v12 & 0xFFFFFFFFFFFFFF8) + 0x20) = v13;
          *(a1 + v6) = v12;
          swift_endAccess();

          v16 = sub_100450174();
          if (v16)
          {
            [v16 updatePairedUnlockBannerToUnlocked];

            swift_unknownObjectRelease();
          }

          else
          {
            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&_mh_execute_header, v20, v21, "No remote object found", v22, 2u);
            }
          }

          return;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }
  }

LABEL_21:
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Not currently showing paired unlock banner which needs update", v19, 2u);
  }
}

void sub_100451E9C(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asked to dismiss paired unlock banner", v5, 2u);
  }

  v6 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_12;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not currently showing paired unlock banner", v11, 2u);
    }

    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  if ([v8 type])
  {

    goto LABEL_12;
  }

  *(a1 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) = 1;
  v12 = sub_100450174();
  if (v12)
  {
    [v12 dismissBanner];

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No remote object found, marking banner for dismissal", v15, 2u);
    }
  }
}

void sub_10045221C(uint64_t a1, const char *a2, SEL *a3)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009A0A38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
  }

  v10 = [objc_opt_self() *a3];
  v11 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v12 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_100450D1C();
}

void sub_1004523DC(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asked to dismiss pencil pairing HUD", v5, 2u);
  }

  v6 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v3 = *(v7 + 32);
  }

  if ([v3 type]== 2)
  {
    sub_100452654();
    v8 = *(a1 + v6);
    if (!(v8 >> 62))
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

LABEL_24:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_19;
    }

LABEL_13:
    v9 = OBJC_IVAR___SDHUDManager_serviceConnection;
    v10 = *(a1 + OBJC_IVAR___SDHUDManager_serviceConnection);
    if (v10)
    {
      v11 = v10;
      [v11 invalidate];
    }

    v3 = *(a1 + v9);
    *(a1 + v9) = 0;
    goto LABEL_19;
  }

LABEL_17:
  v3 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, v12, "Not currently showing pencil pairing UI", v13, 2u);
  }

LABEL_19:
}

void sub_100452654()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR___SDHUDManager_dispatchQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }

    goto LABEL_4;
  }

  v5 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v8 = *(v5 + v1);
  if (v8 >> 62)
  {
    goto LABEL_8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

LABEL_4:
  swift_beginAccess();
  sub_10044FF38();
  v10 = v9;
  swift_endAccess();

  *(v1 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) = 0;
  v11 = *(v5 + v1);
  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    sub_100450D1C();
    return;
  }

  v12 = *(v1 + OBJC_IVAR___SDHUDManager_serviceConnection);
  if (v12)
  {
    v20 = sub_100454A8C;
    v21 = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004502D4;
    v19 = &unk_1008E21C8;
    v13 = _Block_copy(aBlock);
    v14 = v12;
    v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v13];
    _Block_release(v13);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  sub_100453FAC(v22, aBlock);
  if (v19)
  {
    sub_10028088C(&qword_10097ECB0, &unk_100804408);
    if (swift_dynamicCast())
    {
      [v17[1] releaseHUDTransaction];
      swift_unknownObjectRelease();
    }

    v16 = v22;
  }

  else
  {
    sub_100005508(v22, &unk_1009746F0, &qword_1007F90B0);
    v16 = aBlock;
  }

  sub_100005508(v16, &unk_1009746F0, &qword_1007F90B0);
}

void sub_10045299C(uint64_t a1, const char *a2)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009A0A38);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1004517C4(&unk_1008E2228, sub_10045401C, &unk_1008E2240);
  }
}

void sub_100452AD8()
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009A0A38);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Could not create HUD service", v2, 2u);
  }
}

void sub_100452C60(void *a1, uint64_t a2)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009A0A38);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection invalidated from %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1004517C4(&unk_1008E2480, sub_100454A04, &unk_1008E2498);
  }
}

void sub_100452DFC(void *a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Connection interrupted from %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }
}

uint64_t sub_100452FA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1004549E8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E23A8;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

void sub_100453284(uint64_t a1, void (*a2)(void))
{
  v5 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v7)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {

      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_42:
        swift_once();
LABEL_20:
        v16 = type metadata accessor for Logger();
        sub_10000C4AC(v16, qword_1009A0A38);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_29;
        }

        v19 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = v36;
        *v19 = 136315138;
        v20 = [objc_opt_self() descriptionForType:v2];
        v21 = a2;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v22;
        a2 = v21;
        v26 = sub_10000C4E4(v25, v24, &v37);
        p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);

        *(v19 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "Requesting banner of type %s", v19, 0xCu);
        sub_10000C60C(v36);

        goto LABEL_28;
      }

      v9 = *(v6 + 32);
    }

    if ([v9 type])
    {
      if (qword_100973750 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_1009A0A38);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "No paired unlock watch name", v13, 2u);
      }
    }
  }

  v14 = *(a1 + v5);
  if (v14 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_16:
      if ((v14 & 0xC000000000000001) != 0)
      {

        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v15 = *(v14 + 32);
      }

      v2 = [v15 type];

      if (qword_100973750 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_1009A0A38);
  v17 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v17, v28, "No current banner to request", v29, 2u);
LABEL_28:
  }

LABEL_29:

  if (*(a1 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) != 1)
  {
    v34 = *(a1 + v5);
    if (v34 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_36:
        if ((v34 & 0xC000000000000001) != 0)
        {

          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v35 = *(v34 + 32);
        }

LABEL_47:
        a2(v35);

        return;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    v35 = 0;
    goto LABEL_47;
  }

  if (p_opt_class_meths[234] != -1)
  {
LABEL_44:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000C4AC(v30, qword_1009A0A38);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Not displaying banner because dismissal requested before presentation", v33, 2u);
  }

  a2(0);
  sub_100452654();
}

uint64_t sub_1004538B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1004549E0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E2330;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

void sub_100453B84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    goto LABEL_16;
  }

  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009A0A38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Clearing paired unlock watch name", v7, 2u);
  }

  v8 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (v9 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  if (![v10 type] && objc_msgSend(v10, "needsUpdate") && (*(a2 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) & 1) == 0)
  {
    v11 = [objc_opt_self() defaultCenter];
    [v11 postNotificationName:@"SDUnlockBannerDismissed" object:0];

    v10 = v11;
  }

LABEL_16:
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009A0A38);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = [objc_opt_self() descriptionForType:a1];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10000C4E4(v18, v20, &v22);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Banner of type %s did dismiss", v15, 0xCu);
    sub_10000C60C(v16);
  }

  sub_100452654();
}

uint64_t sub_100453FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10045401C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SDHUDManager_serviceConnection);
  *(v1 + OBJC_IVAR___SDHUDManager_serviceConnection) = 0;
}

uint64_t sub_100454068(void *a1)
{
  v2 = v1;
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009A0A38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received new connection", v7, 2u);
  }

  [a1 setExportedObject:v2];
  v8 = objc_opt_self();
  v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL___SUIHUDHostProtocol];
  [a1 setExportedInterface:v9];

  v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL___SUIHUDClientProtocol];
  [a1 setRemoteObjectInterface:v10];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  v24 = sub_1004549F4;
  v25 = v12;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100011678;
  v23 = &unk_1008E23F8;
  v13 = _Block_copy(&v20);
  v14 = a1;

  [v14 setInvalidationHandler:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v24 = sub_1004549FC;
  v25 = v15;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100011678;
  v23 = &unk_1008E2448;
  v16 = _Block_copy(&v20);
  v17 = v14;

  [v17 setInterruptionHandler:v16];
  _Block_release(v16);
  v18 = *(v2 + OBJC_IVAR___SDHUDManager_activeConnection);
  *(v2 + OBJC_IVAR___SDHUDManager_activeConnection) = v17;

  [v17 resume];
  return 1;
}

void sub_10045438C(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  if (a1 == 1)
  {
    if (qword_100973750 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009A0A38);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Oneness unlocked banner Settings button tapped", v20, 2u);
    }

    URL.init(string:)();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100005508(v4, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_10028088C(&unk_100987070, &unk_10080DA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F8A70;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v22;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v23;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_100011040(inited);
      swift_setDeallocating();
      sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
      swift_arrayDestroy();
      v24 = [objc_opt_self() defaultWorkspace];
      if (v24)
      {
        v26 = v24;
        URL._bridgeToObjectiveC()(v25);
        v28 = v27;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v30 = [v26 openSensitiveURL:v28 withOptions:isa];

        if (v30)
        {
          (*(v6 + 8))(v11, v5);
        }

        else
        {
          (*(v6 + 16))(v9, v11, v5);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v41 = v34;
            *v33 = 136315138;
            v40 = URL.absoluteString.getter();
            v36 = v35;
            v37 = *(v6 + 8);
            v37(v9, v5);
            v38 = sub_10000C4E4(v40, v36, &v41);

            *(v33 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v31, v32, "Failed to open URL: %s", v33, 0xCu);
            sub_10000C60C(v34);

            v37(v11, v5);
          }

          else
          {

            v39 = *(v6 + 8);
            v39(v9, v5);
            v39(v11, v5);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else if (!a1)
  {
    if (qword_100973750 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009A0A38);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Paired unlock banner tapped", v15, 2u);
    }

    v40 = [objc_opt_self() defaultCenter];
    [v40 postNotificationName:@"SDUnlockBannerButtonTapped" object:0];
    v16 = v40;
  }
}

void sub_100454A04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SDHUDManager_activeConnection);
  *(v1 + OBJC_IVAR___SDHUDManager_activeConnection) = 0;
}

uint64_t sub_100454AD4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097ECC0);
  v1 = sub_10000C4AC(v0, qword_10097ECC0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100454B9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100454D4C, v6, 0);
}

uint64_t sub_100454D4C(uint64_t a1)
{
  v47 = v1;
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v3 || !SFPlaygroundsAppAvailable())
    {
LABEL_15:
      v2 = 0;
    }

    else
    {
      v4 = SFAirDropReceive.AskRequest.files.getter();
      v5 = v4;
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v1[11];
        v44 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        while (v7 < *(v5 + 16))
        {
          v9 = v1[12];
          v10 = v1[10];
          (*(v8 + 16))(v9, v44 + *(v8 + 72) * v7, v10);
          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          (*(v8 + 8))(v9, v10);
          v11 = String._bridgeToObjectiveC()();

          v12 = [v11 pathExtension];

          if (!v12)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v12 = String._bridgeToObjectiveC()();
          }

          v13 = SFIsPlaygroundItem();

          if ((v13 & 1) == 0)
          {

            goto LABEL_15;
          }

          if (v6 == ++v7)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        swift_once();
        v17 = v1[8];
        v16 = v1[9];
        v18 = v1[7];
        v19 = v1[2];
        v20 = type metadata accessor for Logger();
        sub_10000C4AC(v20, qword_10097ECC0);
        (*(v17 + 16))(v16, v19, v18);
        swift_errorRetain();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        v23 = os_log_type_enabled(v21, v22);
        v24 = v1[8];
        v25 = v1[9];
        v26 = v1[7];
        if (v23)
        {
          v28 = v1[5];
          v27 = v1[6];
          v29 = v1[4];
          v43 = v22;
          v30 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v46 = v45;
          *v30 = 136315394;
          v41 = v21;
          SFAirDropReceive.AskRequest.id.getter();
          sub_1002891F4();
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v31 = v26;
          v33 = v32;
          (*(v28 + 8))(v27, v29);
          (*(v24 + 8))(v25, v31);
          v34 = sub_10000C4E4(v40, v33, &v46);

          *(v30 + 4) = v34;
          *(v30 + 12) = 2112;
          swift_errorRetain();
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 14) = v35;
          *v42 = v35;
          _os_log_impl(&_mh_execute_header, v41, v43, "Failed to get Playground app for ask request %s: %@", v30, 0x16u);
          sub_100005508(v42, &qword_100975400, &qword_1007F65D0);

          sub_10000C60C(v45);
        }

        else
        {

          (*(v24 + 8))(v25, v26);
        }
      }

      else
      {
LABEL_11:

        v14 = objc_allocWithZone(LSApplicationRecord);
        v15 = sub_10066F3F8(0xD000000000000015, 0x80000001007914F0, 1);
        v38 = v1[3];
        v39 = *(v38 + 16);
        *(v38 + 16) = v15;
      }

      v2 = *(v1[3] + 16) != 0;
    }
  }

  v36 = v1[1];

  return v36(v2);
}

uint64_t sub_1004551E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14);
  if ((*(v15 + 88))(v17, v14) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    (*(v11 + 16))(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v25 = 0;
    sub_100333278(v9, v7);
    v18 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v19 = swift_allocObject();
    sub_1003332E8(v7, v19 + v18);
    *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v9, &unk_100974E00, &qword_1007F8940);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v25 = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = 0;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_10045565C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100455AC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPlaygroundItems();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100455B00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100454B9C(a1);
}

void sub_100455BD8(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x554F524759414C50;
  v5 = inited + 32;
  *(inited + 40) = 0xEA0000000000444ELL;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100455E3C()
{
  if (*v0)
  {
    return 0x6E496E6F73726570;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_100455E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E496E6F73726570 && a2 == 0xEA00000000006F66)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100455F60(uint64_t a1)
{
  v2 = sub_100456AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100455F9C(uint64_t a1)
{
  v2 = sub_100456AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100455FD8(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097EE40, &qword_100804558);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_100456AF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account);
  if (v9)
  {
    v10 = objc_opt_self();
    v30 = 0;
    v11 = v9;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v30];
    v13 = v30;
    if (!v12)
    {
      v19 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }

    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v30 = v14;
    v31 = v16;
    HIBYTE(v29) = 0;
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);

      v17 = v14;
      v18 = v16;
      return sub_100026AC0(v17, v18);
    }

    sub_100026AC0(v14, v16);
  }

  v20 = objc_opt_self();
  sub_1000276B4(0, &qword_10097EE28, SFAppleIDPersonInfo_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30 = 0;
  v22 = [v20 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v30];

  v23 = v30;
  if (v22)
  {
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v30 = v24;
    v31 = v26;
    HIBYTE(v29) = 1;
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v17 = v24;
    v18 = v26;
    return sub_100026AC0(v17, v18);
  }

  v28 = v23;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

char *sub_100456348(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10028088C(&qword_10097EE18, &qword_100804538);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account] = 0;
  v10 = a1[3];
  v34 = a1;
  sub_10002CDC0(a1, v10);
  sub_100456AF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v11 = v9;
  }

  else
  {
    v33 = v6;
    LOBYTE(v40) = 0;
    sub_1002F309C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v8;
    v32 = v5;
    v13 = v37;
    v12 = v38;
    sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
    sub_1000276B4(0, &qword_10097EE38, SFAppleIDAccount_ptr);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v11 = v9;
    if (v14)
    {
      v20 = v14;
      sub_100026AC0(v13, v12);
      v21 = *&v3[v9];
      *&v3[v9] = v20;

      v22 = v31;
      v23 = v32;
      LOBYTE(v40) = 1;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v15 = v22;
      v17 = v37;
      v16 = v38;
      sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
      sub_10028088C(&qword_100976A80, &unk_100804540);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1007F8830;
      *(v18 + 32) = sub_1000276B4(0, &qword_100974E28, NSString_ptr);
      *(v18 + 40) = sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
      *(v18 + 48) = sub_1000276B4(0, &qword_10097EE28, SFAppleIDPersonInfo_ptr);
      static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

      if (v39)
      {
        sub_10028088C(&qword_10097EE30, &qword_100804550);
        v24 = swift_dynamicCast();
        v25 = v33;
        if (v24)
        {
          (*(v33 + 8))(v15, v23);
          sub_100026AC0(v17, v16);
          *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_personInfo] = v40;
          v36.receiver = v3;
          v36.super_class = ObjectType;
          v3 = objc_msgSendSuper2(&v36, "init");
          sub_10000C60C(v34);
          return v3;
        }
      }

      else
      {
        sub_100456B48(&v37);
        v25 = v33;
      }

      v28 = type metadata accessor for SFError();
      sub_10044FED8();
      swift_allocError();
      *v29 = 0xD000000000000021;
      v29[1] = 0x8000000100791600;
      v29[2] = 0xD000000000000059;
      v29[3] = 0x8000000100791630;
      v29[4] = 51;
      (*(*(v28 - 8) + 104))(v29, enum case for SFError.unexpected(_:), v28);
      swift_willThrow();
      sub_100026AC0(v17, v16);
      (*(v25 + 8))(v15, v23);
    }

    else
    {
      v26 = type metadata accessor for SFError();
      sub_10044FED8();
      swift_allocError();
      *v27 = 0xD00000000000001ELL;
      v27[1] = 0x8000000100791690;
      v27[2] = 0xD000000000000059;
      v27[3] = 0x8000000100791630;
      v27[4] = 44;
      (*(*(v26 - 8) + 104))(v27, enum case for SFError.unexpected(_:), v26);
      swift_willThrow();
      sub_100026AC0(v13, v12);
      (*(v33 + 8))(v31, v32);
    }
  }

  sub_10000C60C(v34);

  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_1004569E0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100456348(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_100456A9C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SDAppleIDAccountInfoStoreFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100456AF4()
{
  result = qword_10097EE20;
  if (!qword_10097EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE20);
  }

  return result;
}

uint64_t sub_100456B48(uint64_t a1)
{
  v2 = sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100456BC4()
{
  result = qword_10097EE48;
  if (!qword_10097EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE48);
  }

  return result;
}

unint64_t sub_100456C1C()
{
  result = qword_10097EE50;
  if (!qword_10097EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE50);
  }

  return result;
}

unint64_t sub_100456C74()
{
  result = qword_10097EE58;
  if (!qword_10097EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE58);
  }

  return result;
}

uint64_t sub_100456CC8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097EE60);
  v1 = sub_10000C4AC(v0, qword_10097EE60);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100456D90()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v41 = &v37 - v3;
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v37 - v8);
  v10 = type metadata accessor for Date();
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v19 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  if (v19 <= 4)
  {
    if ((v19 - 1) >= 3)
    {
      v29 = v41;
      if (v19)
      {
        if (v19 != 4)
        {
          goto LABEL_19;
        }

        v19 = 3584;
      }

LABEL_22:
      Date.init()();
      v30 = *(v4 + 20);
      v32 = v39;
      v31 = v40;
      (*(v39 + 16))(v9 + v30, v12, v40);
      *v9 = v19;
      v33 = type metadata accessor for TaskPriority();
      (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
      sub_100356068(v9, v7);
      v34 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v1;
      sub_100464F60(v7, v35 + v34);
      v36 = v1;
      sub_1002B3098(0, 0, v29, &unk_100804788, v35);

      sub_1003560CC(v9);
      (*(v32 + 8))(v12, v31);
      return;
    }
  }

  else
  {
    if (v19 > 0x16)
    {
      goto LABEL_16;
    }

    if (((1 << v19) & 0x7E6580) == 0)
    {
      if (v19 == 9 || v19 == 11)
      {
        v19 = 34818;
LABEL_21:
        v29 = v41;
        goto LABEL_22;
      }

LABEL_16:
      if (v19 == 5)
      {
        v19 = 34816;
        goto LABEL_21;
      }

      v29 = v41;
      if (v19 == 6)
      {
        v19 = 2;
        goto LABEL_22;
      }

LABEL_19:
      v19 = 786431;
      goto LABEL_22;
    }
  }

  if (qword_1009738B0 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_10097EE60);
  v21 = v1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315138;
    v26 = sub_100027340();
    v28 = sub_10000C4E4(v26, v27, &v42);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Authentication type %s does not support this method", v24, 0xCu);
    sub_10000C60C(v25);
  }
}

uint64_t sub_1004572E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();

  return _swift_task_switch(sub_1004573FC, 0, 0);
}

uint64_t sub_1004573FC()
{
  v1 = v0[32];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, (v0 + 14), &qword_10097A9C8, &unk_1007FDD40);
  if (v0[17])
  {
    sub_1002A9938((v0 + 14), (v0 + 19));
    sub_100005508((v0 + 14), &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0(v0 + 19, v0[22]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    sub_10002CDC0(v3, v3[3]);
    v4 = swift_task_alloc();
    v0[40] = v4;
    *v4 = v0;
    v4[1] = sub_100457750;
    v5 = v0[33];

    return sub_100351944(v5);
  }

  else
  {
    sub_100005508((v0 + 14), &qword_10097A9C8, &unk_1007FDD40);
    v8 = v0[38];
    v7 = v0[39];
    v9 = v0[36];
    v17 = v0[37];
    v10 = v0[34];
    v11 = v0[35];
    v12 = v0[32];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v0[6] = sub_1004652A8;
    v0[7] = v13;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008E2AC0;
    v14 = _Block_copy(v0 + 2);
    v15 = v12;
    static DispatchQoS.unspecified.getter();
    v0[30] = _swiftEmptyArrayStorage;
    sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v11 + 8))(v9, v10);
    (*(v8 + 8))(v7, v17);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100457750()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100457A80;
  }

  else
  {
    v2 = sub_100457864;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100457864()
{
  sub_10000C60C(v0 + 19);
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v12 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_1004652A8;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2AC0;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100457A80()
{
  v1 = v0[41];
  v2 = v0[39];
  v22 = v0[38];
  v3 = v0[36];
  v23 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  sub_10000C60C(v0 + 19);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v0[12] = sub_1004652F0;
  v0[13] = v7;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100011678;
  v0[11] = &unk_1008E2B10;
  v8 = _Block_copy(v0 + 8);
  swift_errorRetain();
  v9 = v6;
  static DispatchQoS.unspecified.getter();
  v0[31] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v22 + 8))(v2, v23);

  v11 = v0[38];
  v10 = v0[39];
  v12 = v0[36];
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[35];
  v16 = v0[32];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v0[6] = sub_1004652A8;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2AC0;
  v18 = _Block_copy(v0 + 2);
  v19 = v16;
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v15 + 8))(v12, v14);
  (*(v11 + 8))(v10, v13);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100457DFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(&v2[v12], v18, &qword_10097A9C8, &unk_1007FDD40);
    if (v19)
    {
      sub_1002A9938(v18, v17);
      sub_100005508(v18, &qword_10097A9C8, &unk_1007FDD40);
      v13 = sub_10002CDC0(v17, v17[3]);
      v14 = sub_1000116BC(a1, a2);
      sub_10045F620(v2, a1, v14, v15, *v13);

      return sub_10000C60C(v17);
    }

    else
    {
      return sub_100005508(v18, &qword_10097A9C8, &unk_1007FDD40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100457FF0(char *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&a1[v10], &v93, &qword_100982080, &unk_1007FDD30);
  sub_10000FF90(&v93, &v91, &qword_100982080, &unk_1007FDD30);
  if (!v92)
  {
    sub_100005508(&v91, &qword_100982080, &unk_1007FDD30);
    v38 = sub_100010F88(10, 0x2072656570206F4ELL, 0xEE00656369766564);
    v40 = v39;
    sub_1000115C8();
    v41 = swift_allocError();
    *v42 = v38;
    *(v42 + 8) = v40;
    swift_willThrow();
    sub_100005508(&v93, &qword_100982080, &unk_1007FDD30);
LABEL_19:
    *&v93 = v41;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v53 = LODWORD(v95[0]);
      v54 = v95[1];
    }

    else
    {
      v53 = sub_100010F88(10, 0, 0xE000000000000000);
    }

    sub_100457DFC(v53, v54);
  }

  sub_100005508(&v93, &qword_100982080, &unk_1007FDD30);
  sub_1000121F8(&v91, v95);
  sub_1002A9938(v95, &v93);
  v11 = *(v7 + 16);
  v89 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
  v11(v9, &a1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID], v6);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v13 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  type metadata accessor for SDAuthenticationAKSAuthSession(0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession) = 0;
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager) = result;
  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role) = 1;
  sub_1000121F8(&v93, v14 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice);
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_sessionID, v9, v6);
  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_type) = v13;
  *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_aksAuthSession] = v14;

  v16 = [objc_allocWithZone(SDAuthenticationRequest) init];
  if (!v16)
  {
    v43 = sub_100010F88(10, 0xD000000000000030, 0x8000000100791910);
    v45 = v44;
    sub_1000115C8();
    v41 = swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v45;
    swift_willThrow();

LABEL_18:
    sub_10000C60C(v95);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = *&a1[v12];
  if ((v18 - 1) < 4 || v18 == 19)
  {
    v19 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];
    if (!v19)
    {
      v47 = "request protobuf";
      v48 = 0xD00000000000001ELL;
LABEL_17:
      v49 = sub_100010F88(10, v48, v47 | 0x8000000000000000);
      v51 = v50;
      sub_1000115C8();
      v41 = swift_allocError();
      *v52 = v49;
      *(v52 + 8) = v51;
      swift_willThrow();

      goto LABEL_18;
    }

    v88 = a1;
    v20 = v2;
    v21 = v16;
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);

    sub_100294008(v22, v23);
    v24 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v26 = v23;
    v17 = v21;
    v2 = v20;
    a1 = v88;
    sub_100026AC0(v22, v26);
    [v17 setAwdlInfo:isa];

    v12 = v24;
  }

  [v17 setVersion:1];
  UUID.uuidString.getter();
  v27 = String._bridgeToObjectiveC()();

  [v17 setSessionID:v27];

  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_lastUnlockDate;
  swift_beginAccess();
  v29 = (*(v3 + 48))(&a1[v28], 1, v2);
  v30 = 0.0;
  if (!v29)
  {
    (*(v3 + 16))(v5, &a1[v28], v2, 0.0);
    Date.timeIntervalSince1970.getter();
    v32 = v31;
    (*(v3 + 8))(v5, v2);
    v30 = v32;
  }

  [v17 setUnlockDate:v30];
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v34 = v33;
  v36 = *(v3 + 8);
  v35 = v3 + 8;
  v36(v5, v2);
  [v17 setSessionStartDate:v34];
  if (HIDWORD(*&a1[v12]))
  {
    __break(1u);
    goto LABEL_51;
  }

  [v17 setType:?];
  v37 = *&a1[v12];
  if (v37 <= 0x17 && ((1 << v37) & 0xFE7FF8) != 0)
  {
    sub_100669814(0, 0xF000000000000000);
    sub_100669484(0, 0xF000000000000000);
    v56 = v55;
    v57 = Data.init(referencing:)();
    v59 = v58;
    v60 = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v57, v59);
    [v17 setAksToken:v60];
  }

  v61 = [v17 data];
  if (!v61)
  {
    v47 = "stination defined";
    v48 = 0xD000000000000020;
    goto LABEL_17;
  }

  v89 = v17;
  v62 = v61;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v63;

  if (qword_1009738B0 != -1)
  {
LABEL_51:
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_10000C4AC(v64, qword_10097EE60);
  v65 = a1;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v88 = v35;
    v69 = v12;
    v70 = v68;
    v71 = v5;
    v72 = swift_slowAlloc();
    *v70 = 138412290;
    v73 = *&v65[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    *(v70 + 4) = v73;
    *v72 = v73;
    v74 = v73;
    _os_log_impl(&_mh_execute_header, v66, v67, "Sending authentication request on queue %@", v70, 0xCu);
    sub_100005508(v72, &qword_100975400, &qword_1007F65D0);
    v5 = v71;

    v12 = v69;
    v35 = v88;
  }

  v75 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v65[v75], &v93, &qword_10097A9C8, &unk_1007FDD40);
  if (v94)
  {
    sub_1002A9938(&v93, &v91);
    sub_100005508(&v93, &qword_10097A9C8, &unk_1007FDD40);
    v76 = *sub_10002CDC0(&v91, v92);
    v77 = sub_1004FE08C(*&a1[v12]);
    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v64, qword_1009895D8);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v88 = v35;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v90 = v81;
      *v80 = 136315138;
      v87 = v76;
      if (v77 <= 2u)
      {
        v83 = 0xEB0000000074656ELL;
        v82 = v5;
        if (v77)
        {
          if (v77 == 1)
          {
            v83 = 0xE800000000000000;
            v84 = 0x6C61636F4C736469;
          }

          else
          {
            v84 = 0x7265746E49736469;
          }
        }

        else
        {
          v83 = 0xEB00000000746E65;
          v84 = 0x674179627261656ELL;
        }
      }

      else
      {
        v82 = v5;
        if (v77 > 4u)
        {
          if (v77 == 5)
          {
            v84 = 0xD000000000000010;
            v83 = 0x80000001007888E0;
          }

          else
          {
            v83 = 0xED000068746F6F74;
            v84 = 0x65756C4265726F63;
          }
        }

        else if (v77 == 3)
        {
          v83 = 0xE900000000000054;
          v84 = 0x4274726F70706172;
        }

        else
        {
          v83 = 0xEB000000004C4457;
          v84 = 0x4174726F70706172;
        }
      }

      v85 = sub_10000C4E4(v84, v83, &v90);

      *(v80 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v78, v79, "Using transport type %s", v80, 0xCu);
      sub_10000C60C(v81);

      v5 = v82;
      v35 = v88;
    }

    else
    {
    }

    sub_1005CCC7C(v5, v35, v95, 0, v77);
    sub_10000C60C(&v91);
  }

  else
  {
    sub_100005508(&v93, &qword_10097A9C8, &unk_1007FDD40);
  }

  v86 = v89;
  sub_1004FD4B0(0, 1);
  sub_100026AC0(v5, v35);

  return sub_10000C60C(v95);
}

void sub_100458C74(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v102 - v5;
  v7 = type metadata accessor for AuthenticationSecurityRequest(0);
  v8 = *(v7 - 8);
  v109 = v7;
  v110 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v111 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v102 - v11);
  v13 = type metadata accessor for Date();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v114 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v113 = v13;
    if (qword_1009738B0 == -1)
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
  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_10097EE60);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Received authentication request: %@", v25, 0xCu);
    sub_100005508(v26, &qword_100975400, &qword_1007F65D0);
  }

  v28 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo];
  v29 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo + 8];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_19;
    }

    v33 = v28 + 16;
    v31 = *(v28 + 16);
    v32 = *(v33 + 8);
    v34 = __OFSUB__(v32, v31);
    v35 = v32 - v31;
    if (!v34)
    {
      if (v35 >= 1)
      {
        goto LABEL_12;
      }

LABEL_19:
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v43, v44))
      {
LABEL_22:

        LOBYTE(v115) = 0;
        v41 = 10;
LABEL_23:
        sub_1004598E8(v41);
        return;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Missing local AWDL info";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);

      goto LABEL_22;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (v30)
  {
    v34 = __OFSUB__(HIDWORD(v28), v28);
    v42 = HIDWORD(v28) - v28;
    if (!v34)
    {
      if (v42 >= 1)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_59;
  }

  if (!BYTE6(v29))
  {
    goto LABEL_19;
  }

LABEL_12:
  if (![v22 hasType] || (v36 = sub_1004FF754(objc_msgSend(v22, "type")), (v37 & 1) != 0))
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Message does not have an authentication type", v40, 2u);
    }

    LOBYTE(v115) = 0;
    v41 = 1;
    goto LABEL_23;
  }

  v47 = v36;
  v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] = v36;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v108 = v48;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v105 = v52;
    v106 = swift_slowAlloc();
    v115 = v106;
    *v52 = 136315138;
    v53 = sub_100027340();
    v107 = v12;
    v55 = v47;
    v56 = v6;
    v57 = sub_10000C4E4(v53, v54, &v115);
    v12 = v107;

    v58 = v105;
    *(v105 + 1) = v57;
    v6 = v56;
    v47 = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "Authentication Session type: %s", v58, 0xCu);
    sub_10000C60C(v106);
  }

  if (v47 <= 0x16)
  {
    if (((1 << v47) & 0x766580) != 0)
    {
      goto LABEL_30;
    }

    if (((1 << v47) & 0x8000E) != 0)
    {
      type metadata accessor for SDAuthenticationRangingSession(0);
      swift_allocObject();
      *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession] = sub_10042CCA0();

LABEL_30:
      v59 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];
      if (!v59)
      {
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v43, v44))
        {
          goto LABEL_22;
        }

        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Missing ranging session";
        goto LABEL_21;
      }

      v60 = [v22 rangingToken];
      if (!v60)
      {
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "Message does not have a ranging token", v75, 2u);
        }

        LOBYTE(v115) = 0;
        sub_1004598E8(1);
        goto LABEL_50;
      }

      v105 = v47;
      v61 = v60;
      v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v63;

      v64 = [v22 awdlInfo];
      if (v64)
      {
        v106 = v62;
        v107 = v59;
        v65 = v64;
        v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        isa = Data._bridgeToObjectiveC()().super.isa;
        v70 = sub_1001114F4(isa);

        if (v70)
        {
          v103 = v66;
          v104 = v68;
          v71 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if ([v22 hasUnlockDate])
          {
            [v22 unlockDate];
            Date.init(timeIntervalSince1970:)();
            v102 = v71;
            if (v105 - 1 > 0x14)
            {
              v72 = 786431;
            }

            else
            {
              v72 = qword_1008047A0[v105 - 1];
            }

            v91 = v112;
            (*(v112 + 16))(v12 + *(v109 + 20), v114, v113);
            *v12 = v72;
            v92 = type metadata accessor for TaskPriority();
            (*(*(v92 - 8) + 56))(v6, 1, 1, v92);
            v93 = v111;
            sub_100356068(v12, v111);
            v94 = (*(v110 + 80) + 40) & ~*(v110 + 80);
            v95 = (v9 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
            v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
            v97 = swift_allocObject();
            v97[2] = 0;
            v97[3] = 0;
            v97[4] = v2;
            sub_100464F60(v93, v97 + v94);
            v98 = v108;
            *(v97 + v95) = v107;
            *(v97 + v96) = v102;
            v99 = (v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8));
            v100 = v106;
            *v99 = v106;
            v99[1] = v98;
            v101 = v2;

            sub_100294008(v100, v98);
            sub_1002B3098(0, 0, v6, &unk_100804778, v97);
            sub_100026AC0(v103, v104);

            sub_100026AC0(v100, v98);

            sub_1003560CC(v12);
            (*(v91 + 8))(v114, v113);
            return;
          }

          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&_mh_execute_header, v80, v81, "Message does not have last unlock date", v82, 2u);
          }

          LOBYTE(v115) = 0;
          sub_1004598E8(11);
          sub_100026AC0(v103, v104);
          v79 = v106;
          goto LABEL_49;
        }

        sub_100026AC0(v66, v68);
        v62 = v106;
      }

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Message does not have AWDL info", v78, 2u);
      }

      LOBYTE(v115) = 0;
      sub_1004598E8(1);
      v79 = v62;
LABEL_49:
      sub_100026AC0(v79, v108);
LABEL_50:

      return;
    }
  }

  v83 = v2;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v115 = v87;
    *v86 = 136315138;
    v88 = sub_100027340();
    v90 = sub_10000C4E4(v88, v89, &v115);

    *(v86 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v84, v85, "Authentication type %s does not support handling this message", v86, 0xCu);
    sub_10000C60C(v87);
  }
}

uint64_t sub_1004598E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v40[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v10 = [objc_allocWithZone(SDAuthenticationResponse) init];
  v7 = v10;
  if (v10)
  {
    v11 = v10;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v11 setAwdlInfo:isa];

    [v11 setVersion:1];
    v13 = v11;
    UUID.uuidString.getter();
    v14 = String._bridgeToObjectiveC()();

    [v13 setSessionID:v14];
  }

  if ((a1 & 0x100000000) == 0)
  {
    [v7 setErrorCode:a1];
  }

  if (!v7 || (v15 = [v7 data]) == 0)
  {
    if (qword_1009738B0 == -1)
    {
LABEL_17:
      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_10097EE60);
      v30 = v7;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v7;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "Could not convert response to data: %@", v33, 0xCu);
        sub_100005508(v34, &qword_100975400, &qword_1007F65D0);
      }

      v36 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
      swift_beginAccess();
      sub_10000FF90(&v2[v36], v42, &qword_10097A9C8, &unk_1007FDD40);
      if (v43)
      {
        sub_1002A9938(v42, v40);
        sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
        v37 = sub_10002CDC0(v40, v41);
        sub_10045F620(v2, 10, 0, 0xE000000000000000, *v37);

        return sub_10000C60C(v40);
      }

      return sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
    }

LABEL_28:
    swift_once();
    goto LABEL_17;
  }

  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (qword_1009738B0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_10097EE60);
  v21 = v7;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v7;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Sending authentication response: %@", v24, 0xCu);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);
  }

  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v2[v27], v42, &qword_10097A9C8, &unk_1007FDD40);
  if (!v43)
  {
    sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    sub_1004FD4B0(0, 1);

    return sub_100026AC0(v17, v19);
  }

  sub_1002A9938(v42, v40);
  sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
  sub_10002CDC0(v40, v41);
  sub_1006D3874(v17, v19, 1u, *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type]);
  sub_10000C60C(v40);
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  sub_10000FF90(&v2[v27], v42, &qword_10097A9C8, &unk_1007FDD40);
  if (v43)
  {
    sub_1002A9938(v42, v40);
    sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
    v28 = sub_10002CDC0(v40, v41);
    sub_10045F620(v2, a1, 0, 0xE000000000000000, *v28);

    sub_100026AC0(v17, v19);
    return sub_10000C60C(v40);
  }

  sub_100026AC0(v17, v19);
  return sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
}

uint64_t sub_100459F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a8;
  v8[47] = v13;
  v8[44] = a6;
  v8[45] = a7;
  v8[42] = a4;
  v8[43] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[48] = v9;
  v8[49] = *(v9 - 8);
  v8[50] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[51] = v10;
  v8[52] = *(v10 - 8);
  v8[53] = swift_task_alloc();

  return _swift_task_switch(sub_10045A0A0, 0, 0);
}

uint64_t sub_10045A0A0()
{
  v1 = v0[42];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, (v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
  if (v0[23])
  {
    sub_1002A9938((v0 + 20), (v0 + 25));
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0(v0 + 25, v0[28]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    sub_10002CDC0(v3, v3[3]);
    v4 = swift_task_alloc();
    v0[54] = v4;
    *v4 = v0;
    v4[1] = sub_10045A32C;
    v5 = v0[43];

    return sub_100351944(v5);
  }

  else
  {
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    if (qword_1009738B0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[56] = sub_10000C4AC(v7, qword_10097EE60);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Starting ranging", v10, 2u);
    }

    v11 = swift_task_alloc();
    v0[57] = v11;
    *v11 = v0;
    v11[1] = sub_10045A8A4;
    v12 = v0[46];
    v13 = v0[47];
    v14 = v0[45];

    return sub_10042EF1C(v14, v12, v13);
  }
}

uint64_t sub_10045A32C()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_10045A5A0;
  }

  else
  {
    v2 = sub_10045A440;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045A440()
{
  sub_10000C60C(v0 + 25);
  if (qword_1009738B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[56] = sub_10000C4AC(v1, qword_10097EE60);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting ranging", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_10045A8A4;
  v6 = v0[46];
  v7 = v0[47];
  v8 = v0[45];

  return sub_10042EF1C(v8, v6, v7);
}

uint64_t sub_10045A5A0()
{
  sub_10000C60C((v0 + 200));
  *(v0 + 304) = *(v0 + 440);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v24 = *(v0 + 408);
  v25 = *(v0 + 416);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  v6 = *(v0 + 336);
  if (v1)
  {
    v7 = (v0 + 320);
    v8 = (v0 + 64);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v12 = &unk_1008E29F8;
    *(v11 + 24) = v9;
    *(v11 + 32) = v10;
    v13 = sub_100465134;
    v14 = 88;
    v15 = 80;
    v16 = 76;
    v17 = 72;
    v18 = 104;
    v19 = 96;
  }

  else
  {
    v8 = (v0 + 16);
    v7 = (v0 + 312);
    v17 = 24;
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v12 = &unk_1008E29A8;
    v13 = sub_10046512C;
    v14 = 40;
    v15 = 32;
    v16 = 28;
    v18 = 56;
    v19 = 48;
  }

  *(v0 + v19) = v13;
  *(v0 + v18) = v11;
  *v8 = _NSConcreteStackBlock;
  *(v0 + v17) = 1107296256;
  *(v0 + v16) = 0;
  *(v0 + v15) = sub_100011678;
  *(v0 + v14) = v12;
  v20 = _Block_copy(v8);
  v21 = v6;
  static DispatchQoS.unspecified.getter();
  *v7 = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v4 + 8))(v3, v5);
  (*(v25 + 8))(v2, v24);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10045A8A4()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_10045AC38;
  }

  else
  {
    v2 = sub_10045A9B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045A9B8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ranging started", v4, 2u);
  }

  v6 = v1[52];
  v5 = v1[53];
  v7 = v1[50];
  v16 = v1[51];
  v9 = v1[48];
  v8 = v1[49];
  v10 = v1[42];

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v1[18] = sub_100465174;
  v1[19] = v11;
  v1[14] = _NSConcreteStackBlock;
  v1[15] = 1107296256;
  v1[16] = sub_100011678;
  v1[17] = &unk_1008E2A48;
  v12 = _Block_copy(v1 + 14);
  v13 = v10;
  static DispatchQoS.unspecified.getter();
  v1[41] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v16);

  v14 = v1[1];

  return v14();
}

uint64_t sub_10045AC38()
{
  *(v0 + 304) = *(v0 + 464);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v24 = *(v0 + 408);
  v25 = *(v0 + 416);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  v6 = *(v0 + 336);
  if (v1)
  {
    v7 = (v0 + 320);
    v8 = (v0 + 64);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v12 = &unk_1008E29F8;
    *(v11 + 24) = v9;
    *(v11 + 32) = v10;
    v13 = sub_100465134;
    v14 = 88;
    v15 = 80;
    v16 = 76;
    v17 = 72;
    v18 = 104;
    v19 = 96;
  }

  else
  {
    v8 = (v0 + 16);
    v7 = (v0 + 312);
    v17 = 24;
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v12 = &unk_1008E29A8;
    v13 = sub_10046512C;
    v14 = 40;
    v15 = 32;
    v16 = 28;
    v18 = 56;
    v19 = 48;
  }

  *(v0 + v19) = v13;
  *(v0 + v18) = v11;
  *v8 = _NSConcreteStackBlock;
  *(v0 + v17) = 1107296256;
  *(v0 + v16) = 0;
  *(v0 + v15) = sub_100011678;
  *(v0 + v14) = v12;
  v20 = _Block_copy(v8);
  v21 = v6;
  static DispatchQoS.unspecified.getter();
  *v7 = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v4 + 8))(v3, v5);
  (*(v25 + 8))(v2, v24);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10045AF34()
{
  v0 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_100457DFC(v0, v1);
}

void sub_10045AF80(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v74 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (qword_1009738B0 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097EE60);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received authentication response: %@", v17, 0xCu);
    sub_100005508(v18, &qword_100975400, &qword_1007F65D0);
  }

  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v21 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  v22 = v21 > 0x16;
  v23 = (1 << v21) & 0x7E658E;
  if (!v22 && v23 != 0)
  {
    v25 = v2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78[0] = v29;
      *v28 = 136315138;
      v30 = sub_100027340();
      v32 = sub_10000C4E4(v30, v31, v78);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Authentication type %s does not support handling this message", v28, 0xCu);
      sub_10000C60C(v29);
    }

    return;
  }

  sub_1004FDD9C();
  if ([v14 hasErrorCode])
  {
    v33 = [v14 errorCode];
    v34 = 0xD00000000000001CLL;
    v35 = 0x8000000100791870;
LABEL_18:
    v42 = sub_100010F88(v33, v34, v35);
    v44 = v43;
    sub_1000115C8();
    v45 = swift_allocError();
    *v46 = v42;
    *(v46 + 8) = v44;
    swift_willThrow();
LABEL_20:
    v78[2] = v45;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v51 = LODWORD(v78[0]);
      v52 = v78[1];
    }

    else
    {
      v51 = sub_100010F88(10, 0, 0xE000000000000000);
    }

    sub_100457DFC(v51, v52);

    return;
  }

  v36 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_aksAuthSession];
  if (!v36)
  {
    v35 = 0x8000000100791830;
    v33 = 10;
    v34 = 0xD000000000000013;
    goto LABEL_18;
  }

  v37 = [v14 aksToken];
  if (!v37)
  {
    v47 = sub_100010F88(10, 0xD00000000000001FLL, 0x8000000100791850);
    v49 = v48;
    sub_1000115C8();
    v45 = swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    swift_willThrow();

    goto LABEL_20;
  }

  v38 = v37;
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  sub_100294008(v39, v41);
  v77 = v36;
  sub_100669484(v39, v41);
  v54 = v53;
  v75 = v39;
  v76 = v41;
  sub_100026AC0(v39, v41);
  v55 = v54;
  v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken];
  v60 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken];
  v61 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken + 8];
  *v59 = v56;
  v59[1] = v58;
  sub_10028BCC0(v60, v61);
  v62 = [objc_opt_self() standardUserDefaults];
  v63 = String._bridgeToObjectiveC()();
  v64 = [v62 BOOLForKey:v63];

  if ((v64 & 1) != 0 || (v68 = *&v2[v20], (v68 - 1) >= 4) && v68 != 19)
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Skipping ranging", v67, 2u);
    }

    LOBYTE(v78[0]) = 1;
    sub_10045B764(0x100000000);

    sub_100026AC0(v75, v76);
  }

  else
  {
    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v6, 1, 1, v69);
    v70 = swift_allocObject();
    v70[2] = 0;
    v70[3] = 0;
    v71 = v77;
    v70[4] = v14;
    v70[5] = v71;
    v70[6] = v2;
    v72 = v14;
    v73 = v2;

    sub_1002B3098(0, 0, v6, &unk_100804730, v70);
    sub_100026AC0(v75, v76);
  }
}

uint64_t sub_10045B764(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(SDAuthenticationToken) init];
  v11 = v10;
  if (v10)
  {
    [v10 setVersion:1];
    v12 = v11;
    UUID.uuidString.getter();
    v13 = String._bridgeToObjectiveC()();

    [v12 setSessionID:v13];

    v14 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken + 8];
    if (v14 >> 60 == 15)
    {
      v15 = v12;
      isa = 0;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken];
      v18 = v12;
      sub_1002A9924(v17, v14);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10028BCC0(v17, v14);
    }

    [v12 setAksToken:isa];
  }

  if ((a1 & 0x100000000) == 0)
  {
    [v11 setErrorCode:a1];
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = v2;
  *(v19 + 32) = a1;
  *(v19 + 36) = BYTE4(a1) & 1;
  aBlock[4] = sub_100464DD0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E28B8;
  v20 = _Block_copy(aBlock);
  v21 = v11;
  v22 = v2;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
}

uint64_t sub_10045BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_10045BC54, 0, 0);
}

uint64_t sub_10045BC54()
{
  v1 = [v0[9] awdlInfo];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v0[18] = v3;
  v0[19] = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = sub_1001114F4(isa);

  if (!v7)
  {
    sub_100026AC0(v3, v5);
LABEL_5:
    v11 = sub_100010F88(1, 0xD00000000000001FLL, 0x8000000100791890);
    v13 = v12;
    sub_1000115C8();
    v14 = swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v13;
    swift_willThrow();
    goto LABEL_6;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v0[20] = v8;

  v9 = sub_1006696B8();
  v0[21] = v9;
  v0[22] = v10;
  v26 = v9;
  v27 = v10;
  v28 = v0[11];
  sub_10045B764(0x100000000);
  v29 = *(v28 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
  v0[23] = v29;
  if (v29)
  {

    v30 = swift_task_alloc();
    v0[24] = v30;
    *v30 = v0;
    v30[1] = sub_10045C0E4;

    return sub_10042EF1C(v8, v26, v27);
  }

  v31 = sub_100010F88(10, 0xD000000000000012, 0x80000001007918C0);
  v33 = v32;
  sub_1000115C8();
  v14 = swift_allocError();
  *v34 = v31;
  *(v34 + 8) = v33;
  swift_willThrow();
  sub_100026AC0(v3, v5);
  sub_100026AC0(v26, v27);
LABEL_6:
  v16 = v0[17];
  v17 = v0[14];
  v35 = v0[16];
  v36 = v0[15];
  v18 = v0[12];
  v19 = v0[13];
  v20 = v0[11];
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v20;
  v0[6] = sub_100465434;
  v0[7] = v21;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2868;
  v22 = _Block_copy(v0 + 2);
  swift_errorRetain();
  v23 = v20;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v19 + 8))(v17, v18);
  (*(v35 + 8))(v16, v36);

  v24 = v0[1];

  return v24();
}

uint64_t sub_10045C0E4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10045C2B4;
  }

  else
  {
    v2 = sub_10045C218;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045C218()
{
  v1 = v0[22];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  sub_100026AC0(v2, v1);
  sub_100026AC0(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10045C2B4()
{
  v1 = v0[22];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  sub_100026AC0(v2, v1);
  sub_100026AC0(v4, v3);
  v5 = v0[25];
  v6 = v0[17];
  v7 = v0[14];
  v16 = v0[16];
  v17 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v10;
  v0[6] = sub_100465434;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2868;
  v12 = _Block_copy(v0 + 2);
  swift_errorRetain();
  v13 = v10;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v9 + 8))(v7, v8);
  (*(v16 + 8))(v6, v17);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10045C508(uint64_t a1)
{
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v1 = v4;
    v2 = v5;
  }

  else
  {
    v1 = sub_100010F88(10, 0, 0xE000000000000000);
  }

  sub_100457DFC(v1, v2);
}

uint64_t sub_10045C59C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_1009738B0 == -1)
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
  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097EE60);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received confirmation: %@", v14, 0xCu);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);
  }

  sub_1004FDD9C();
  if ([v11 success])
  {
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(&v2[v17], v26, &qword_10097A9C8, &unk_1007FDD40);
    if (v27)
    {
      sub_1002A9938(v26, v24);
      sub_100005508(v26, &qword_10097A9C8, &unk_1007FDD40);
      v18 = sub_10002CDC0(v24, v25);
      sub_1004DE8AC(v2, *v18);
      return sub_10000C60C(v24);
    }
  }

  else
  {
    if ([v11 hasErrorCode])
    {
      v19 = [v11 errorCode];
    }

    else
    {
      v19 = 10;
    }

    v20 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(&v2[v20], v26, &qword_10097A9C8, &unk_1007FDD40);
    if (v27)
    {
      sub_1002A9938(v26, v24);
      sub_100005508(v26, &qword_10097A9C8, &unk_1007FDD40);
      v21 = sub_10002CDC0(v24, v25);
      sub_10045F620(v2, v19, 0xD00000000000001CLL, 0x8000000100791970, *v21);
      return sub_10000C60C(v24);
    }
  }

  return sub_100005508(v26, &qword_10097A9C8, &unk_1007FDD40);
}

uint64_t sub_10045C95C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1009738B0 == -1)
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
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097EE60);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_10000C4E4(v13, v14, v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Response timer fired for %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v8[v16], v21, &qword_10097A9C8, &unk_1007FDD40);
  if (!v21[3])
  {
    return sub_100005508(v21, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v21, v20);
  sub_100005508(v21, &qword_10097A9C8, &unk_1007FDD40);
  v17 = sub_10002CDC0(v20, v20[3]);
  sub_10045F620(v8, 12, 0, 0xE000000000000000, *v17);
  return sub_10000C60C(v20);
}

uint64_t sub_10045CC9C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = [a1 data];
    if (v6)
    {
      v7 = v6;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1009738B0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000C4AC(v11, qword_10097EE60);
      v12 = a1;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v39 = v11;
        v15 = swift_slowAlloc();
        v16 = a3;
        v17 = v10;
        v18 = v8;
        v19 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v19 = a1;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, v14, "Sending token: %@", v15, 0xCu);
        sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
        v8 = v18;
        v10 = v17;
        a3 = v16;

        v11 = v39;
      }

      v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(a2 + v21, &v42, &qword_100982080, &unk_1007FDD30);
      if (v43)
      {
        sub_1000121F8(&v42, v44);
        v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(a2 + v22, &v42, &qword_10097A9C8, &unk_1007FDD40);
        if (v43)
        {
          sub_1002A9938(&v42, v41);
          sub_100005508(&v42, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(v41, v41[3]);
          v23 = sub_1004FE08C(*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v11, qword_1009895D8);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v40 = v27;
            *v26 = 136315138;
            v38 = v8;
            if (v23 <= 2u)
            {
              v28 = 0xEB0000000074656ELL;
              if (v23)
              {
                if (v23 == 1)
                {
                  v28 = 0xE800000000000000;
                  v29 = 0x6C61636F4C736469;
                }

                else
                {
                  v29 = 0x7265746E49736469;
                }
              }

              else
              {
                v28 = 0xEB00000000746E65;
                v29 = 0x674179627261656ELL;
              }
            }

            else if (v23 > 4u)
            {
              if (v23 == 5)
              {
                v29 = 0xD000000000000010;
                v28 = 0x80000001007888E0;
              }

              else
              {
                v28 = 0xED000068746F6F74;
                v29 = 0x65756C4265726F63;
              }
            }

            else if (v23 == 3)
            {
              v28 = 0xE900000000000054;
              v29 = 0x4274726F70706172;
            }

            else
            {
              v28 = 0xEB000000004C4457;
              v29 = 0x4174726F70706172;
            }

            v35 = sub_10000C4E4(v29, v28, &v40);

            *(v26 + 4) = v35;
            _os_log_impl(&_mh_execute_header, v24, v25, "Using transport type %s", v26, 0xCu);
            sub_10000C60C(v27);

            v8 = v38;
          }

          else
          {
          }

          sub_1005CCC7C(v8, v10, v44, 7u, v23);
          sub_10000C60C(v44);
          v34 = v41;
          goto LABEL_35;
        }

        sub_10000C60C(v44);
        sub_100005508(&v42, &qword_10097A9C8, &unk_1007FDD40);
      }

      else
      {
        sub_100005508(&v42, &qword_100982080, &unk_1007FDD30);
        v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(a2 + v33, v44, &qword_10097A9C8, &unk_1007FDD40);
        if (v44[3])
        {
          sub_1002A9938(v44, &v42);
          sub_100005508(v44, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(&v42, v43);
          sub_1006D3874(v8, v10, 7u, *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          v34 = &v42;
LABEL_35:
          sub_10000C60C(v34);
          goto LABEL_36;
        }

        sub_100005508(v44, &qword_10097A9C8, &unk_1007FDD40);
      }

LABEL_36:
      *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_isConfirmationSent) = 1;
      if ((a3 & 0x100000000) == 0)
      {
        v36 = sub_100010F88(a3, 0, 0xE000000000000000);
        sub_100457DFC(v36, v37);
      }

      sub_1004FD4B0(0, 1);
      return sub_100026AC0(v8, v10);
    }
  }

  v30 = sub_100010F88(10, 0xD000000000000025, 0x80000001007918E0);
  sub_100457DFC(v30, v31);
}

uint64_t sub_10045D320()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_lastUnlockDate, &qword_10097A7F0, &unk_1007FB600);

  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken + 8);

  return sub_10028BCC0(v1, v2);
}

uint64_t type metadata accessor for SDAuthenticationKeySession(uint64_t a1)
{
  result = qword_10097EEB8;
  if (!qword_10097EEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10045D448(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10045D4F4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_lastUnlockDate;
  swift_beginAccess();
  sub_10000C788(a1, v3 + v4, &qword_10097A7F0, &unk_1007FB600);
  return swift_endAccess();
}

uint64_t sub_10045D67C(uint64_t (*a1)(void *), uint64_t a2, uint64_t (*a3)(uint64_t (*)(void), uint64_t, uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(_BYTE *, uint64_t))
{
  v10 = a2;
  v12 = *v5;
  result = a3(a1, a2, *v5);
  if (v6)
  {
    return v7;
  }

  if (v14)
  {
    return *(v12 + 16);
  }

  v7 = result;
  v27 = a1;
  v23 = a4;
  v24 = a5;
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v17 = (v12 + 16);
    v16 = *(v12 + 16);
    if (v15 == v16)
    {
      return v7;
    }

    v18 = 40 * result + 72;
    while (v15 < v16)
    {
      sub_1002A9938(v12 + v18, v26);
      v19 = v10;
      v20 = v27(v26);
      result = sub_10000C60C(v26);
      if (v20)
      {
        v10 = v19;
      }

      else
      {
        if (v15 == v7)
        {
          v10 = v19;
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v21 = *v17;
          if (v7 >= v21)
          {
            goto LABEL_24;
          }

          result = sub_1002A9938(v12 + 32 + 40 * v7, v26);
          if (v15 >= v21)
          {
            goto LABEL_25;
          }

          sub_1002A9938(v12 + v18, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = v23(v12);
          }

          v10 = v19;
          v22 = v12 + 40 * v7;
          sub_10000C60C((v22 + 32));
          result = v24(v25, v22 + 32);
          if (v15 >= *(v12 + 16))
          {
            goto LABEL_26;
          }

          sub_10000C60C((v12 + v18));
          result = v24(v26, v12 + v18);
          *v5 = v12;
        }

        ++v7;
      }

      ++v15;
      v17 = (v12 + 16);
      v16 = *(v12 + 16);
      v18 += 40;
      if (v15 == v16)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10045D928(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v223 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  __chkstk_darwin(v9 - 8);
  v209 = &v208 - v10;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = __chkstk_darwin(v11 - 8);
  v211 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v208 - v14;
  v15 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v15 - 8);
  v215 = &v208 - v16;
  v227 = type metadata accessor for UUID();
  v222 = *(v227 - 8);
  v17 = __chkstk_darwin(v227);
  v19 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v213 = &v208 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v208 - v23;
  __chkstk_darwin(v22);
  v226 = &v208 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = type metadata accessor for SDAuthenticationPairingLockSession(0);
  v234 = &off_1008E5AB0;
  v232 = a1;
  v30 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v29 = v30;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = a1;
  v32 = v30;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v224 = a5;

  v219 = a2;
  v220 = sub_100010F88(a2, v223, a4);
  a5 = v33;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v210 = v19;
  v34 = type metadata accessor for Logger();
  v35 = sub_10000C4AC(v34, qword_1009895D8);
  sub_1002A9938(&v232, &v229);

  v218 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v227;
  v221 = a5;
  v214 = a4;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v228[0] = v225;
    *v40 = 136315394;
    v41 = v230;
    v42 = v231;
    sub_10002CDC0(&v229, v230);
    v43 = v226;
    (*(v42 + 32))(v41, v42);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v45;
    v46 = v222;
    (*(v222 + 8))(v43, v39);
    sub_10000C60C(&v229);
    v47 = sub_10000C4E4(v44, a4, v228);

    *(v40 + 4) = v47;
    *(v40 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v48 = v220;
    *(v48 + 8) = a5;

    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v49;
    v50 = v217;
    *v217 = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "Session %s failed with error: %@", v40, 0x16u);
    sub_100005508(v50, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v225);
  }

  else
  {

    sub_10000C60C(&v229);
    v46 = v222;
  }

  v51 = v233;
  v52 = v234;
  sub_10002CDC0(&v232, v233);
  v217 = (v52[5])(v51, v52);
  v53 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v54 = v224;
  swift_beginAccess();
  v216 = v53;
  v55 = *(v54 + v53);
  v56 = *(v55 + 16);
  v225 = (v46 + 8);

  v57 = v55 + 32;
  v58 = -v56;
  a5 = -1;
  v19 = v226;
  while (v58 + a5 != -1)
  {
    if (++a5 >= *(v55 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v59 = v57 + 40;
    sub_1002A9938(v57, &v229);
    v61 = v230;
    v60 = v231;
    sub_10002CDC0(&v229, v230);
    (*(*(*(v60 + 8) + 8) + 32))(v61);
    v62 = v233;
    v63 = v234;
    sub_10002CDC0(&v232, v233);
    (v63[4])(v62, v63);
    LOBYTE(v60) = static UUID.== infix(_:_:)();
    a4 = *v225;
    v64 = v227;
    (*v225)(v24, v227);
    a4(v19, v64);
    sub_10000C60C(&v229);
    v57 = v59;
    if (v60)
    {
      break;
    }
  }

  __chkstk_darwin(v65);
  *(&v208 - 2) = &v232;
  v66 = v224;
  v67 = v216;
  swift_beginAccess();
  v68 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v69 = *(*&v66[v67] + 16);
  v70 = v221;
  v71 = v219;
  v72 = v217;
  if (v69 < v68)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v68, v69);
  v73 = swift_endAccess();
  __chkstk_darwin(v73);
  *(&v208 - 2) = &v232;
  v74 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v75 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v76 = *(*&v66[v74] + 16);
  if (v76 < v75)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v75, v76);
  v77 = swift_endAccess();
  __chkstk_darwin(v77);
  *(&v208 - 2) = &v232;
  v78 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v79 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v80 = *(*&v66[v78] + 16);
  if (v80 < v79)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v79, v80);
  v81 = swift_endAccess();
  __chkstk_darwin(v81);
  *(&v208 - 2) = &v232;
  v82 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v83 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v84 = *(*&v66[v82] + 16);
  if (v84 >= v83)
  {
    sub_10057EF98(v83, v84);
    swift_endAccess();
    v85 = v233;
    v86 = v234;
    sub_10002CDC0(&v232, v233);
    (v86[11])(v85, v86);
    v87 = v227;
    if (v71 == 5 || v71 == 33)
    {
      v88 = v233;
      v89 = v234;
      sub_10002CDC0(&v232, v233);
      (v89[8])(&v229, v88, v89);
      v90 = v230;
      if (v230)
      {
        v91 = v231;
        sub_10002CDC0(&v229, v230);
        v92 = (*(v91 + 8))(v90, v91);
        v94 = v93;
        sub_10000C60C(&v229);
        if (v94)
        {
          v95 = sub_1004FE068(v72);
          v96 = v226;
          UUID.init()();
          sub_1006A87C8(v95, v92, v94, v96, 0);

          (*v225)(v96, v87);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      }

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Got notEnabled error but coudln't determine who to disable pairing with", v99, 2u);
      }
    }

LABEL_23:
    v100 = type metadata accessor for TaskPriority();
    v101 = v215;
    (*(*(v100 - 8) + 56))(v215, 1, 1, v100);
    sub_1002A9938(&v232, &v229);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = v66;
    sub_1000121F8(&v229, v102 + 40);
    *(v102 + 80) = v71;
    v103 = v214;
    *(v102 + 88) = v223;
    *(v102 + 96) = v103;

    v104 = v66;
    sub_1002B3098(0, 0, v101, &unk_100804760, v102);

    if (v72 == 5)
    {
      if (v71 == 10)
      {
        v128 = v233;
        v129 = v234;
        sub_10002CDC0(&v232, v233);
        (v129[8])(&v229, v128, v129);
        v130 = v230;
        if (v230)
        {
          v131 = v231;
          sub_10002CDC0(&v229, v230);
          v132 = (*(v131 + 8))(v130, v131);
          v134 = v133;
          sub_10000C60C(&v229);
          if (v134)
          {
            swift_beginAccess();
            v135 = v209;
            sub_1002D37FC(v132, v134, v209);
            swift_endAccess();

            sub_100005508(v135, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v232, &v229);
        v168 = Logger.logObject.getter();
        v169 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          v228[0] = v223;
          *v170 = 136315138;
          v224 = v104;
          v172 = v230;
          v171 = v231;
          sub_10002CDC0(&v229, v230);
          v173 = v226;
          (*(v171 + 32))(v172, v171);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v174 = dispatch thunk of CustomStringConvertible.description.getter();
          v176 = v175;
          (*v225)(v173, v87);
          sub_10000C60C(&v229);
          v177 = sub_10000C4E4(v174, v176, v228);
          v104 = v224;

          *(v170 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v168, v169, "Could not find peer device for %s", v170, 0xCu);
          sub_10000C60C(v223);
        }

        else
        {

          sub_10000C60C(&v229);
        }
      }

LABEL_57:
      sub_1002A9938(&v232, &v229);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v232, &v229), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v228);
        v181 = v233;
        v182 = v234;
        sub_10002CDC0(&v232, v233);
        v183 = v226;
        (v182[4])(v181, v182);
        sub_100695FD8(v183, v220, v70);

        (*v225)(v183, v87);
      }

      else
      {
      }

      v184 = v233;
      v185 = v234;
      sub_10002CDC0(&v232, v233);
      v186 = (v185[5])(v184, v185);
      v187 = SFDeviceClassCodeGet();
      v188 = sub_100027628(v186);
      v189 = sub_10000EF9C(8u, v188);

      if (v189)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v232);
        }
      }

      else
      {
        v190 = sub_100027628(v186);
        v191 = sub_10000EF9C(v187, v190);

        if (!v191)
        {
          return sub_10000C60C(&v232);
        }
      }

      v192 = *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v193 = v233;
      v194 = v234;
      sub_10002CDC0(&v232, v233);
      v195 = (v194[5])(v193, v194);
      LOBYTE(v193) = sub_1004FE08C(v195);
      v196 = v233;
      v197 = v234;
      sub_10002CDC0(&v232, v233);
      (v197[8])(&v229, v196, v197);
      v198 = sub_1005CCA8C(v193, &v229);
      v200 = v199;
      ObjectType = swift_getObjectType();
      v202 = (*(v200 + 56))(ObjectType, v200);
      v203 = *(v192 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v204 = __chkstk_darwin(v202);
      *(&v208 - 4) = v198;
      *(&v208 - 3) = v200;
      *(&v208 - 2) = &v229;
      *(&v208 - 1) = v192;
      __chkstk_darwin(v204);
      *(&v208 - 2) = sub_100465400;
      *(&v208 - 1) = v205;
      os_unfair_lock_lock(v203 + 4);
      sub_1003206A8(v206);
      os_unfair_lock_unlock(v203 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v232);
    }

    if (v72 != 8)
    {
      goto LABEL_57;
    }

    v105 = v233;
    v106 = v234;
    sub_10002CDC0(&v232, v233);
    (v106[8])(&v229, v105, v106);
    v107 = v230;
    v216 = 0;
    if (v230)
    {
      v108 = v231;
      sub_10002CDC0(&v229, v230);
      v109 = (*(v108 + 8))(v107, v108);
      v111 = v110;
      sub_10000C60C(&v229);
      if (v111)
      {
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&_mh_execute_header, v112, v113, "Registration failed, clearing registration date", v114, 2u);
        }

        swift_beginAccess();
        v115 = v104;
        v116 = sub_10056CE1C(&v229, v109, v111);
        v118 = v117;
        v119 = type metadata accessor for RegistrationState(0);
        v120 = *(*(v119 - 8) + 48);
        if (!v120(v118, 1, v119))
        {
          *(v118 + *(v119 + 20)) = 0;
        }

        (v116)(&v229, 0);
        swift_endAccess();
        swift_beginAccess();
        v121 = sub_10056CE1C(&v229, v109, v111);
        v123 = v122;
        if (!v120(v122, 1, v119))
        {
          sub_100005508(v123, &qword_10097A7F0, &unk_1007FB600);
          v124 = type metadata accessor for Date();
          (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
        }

        (v121)(&v229, 0);
        swift_endAccess();

        v87 = v227;
        v125 = v213;
        v126 = v222;
        v127 = v212;
        v104 = v115;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v232, &v229);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = v104;
      v140 = swift_slowAlloc();
      v228[0] = v140;
      *v138 = 136315138;
      v141 = v230;
      v142 = v231;
      sub_10002CDC0(&v229, v230);
      v143 = v226;
      (*(v142 + 32))(v141, v142);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      (*v225)(v143, v87);
      sub_10000C60C(&v229);
      v147 = sub_10000C4E4(v144, v146, v228);

      *(v138 + 4) = v147;
      _os_log_impl(&_mh_execute_header, v136, v137, "Could not find peer device for %s", v138, 0xCu);
      sub_10000C60C(v140);
      v104 = v139;
    }

    else
    {

      sub_10000C60C(&v229);
    }

    v125 = v213;
    v126 = v222;
    v127 = v212;
LABEL_43:
    v148 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v104[v148], v127, &unk_100976120, &qword_1007F9260);
    if ((*(v126 + 48))(v127, 1, v87) == 1)
    {
      sub_100005508(v127, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v70 = v221;
      goto LABEL_57;
    }

    (*(v126 + 32))(v125, v127, v87);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v227 = Strong;
      v224 = v104;
      v150 = v210;
      (*(v126 + 16))(v210, v125, v87);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v217 = v154;
        v223 = swift_slowAlloc();
        *&v229 = v223;
        *v153 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v218) = v152;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
        swift_allocError();
        v155 = v219;
        *v156 = v219;
        v157 = _swift_stdlib_bridgeErrorToNSError();
        *(v153 + 4) = v157;
        *v154 = v157;
        *(v153 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v159;
        v161 = *v225;
        (*v225)(v150, v87);
        v162 = sub_10000C4E4(v158, v160, &v229);
        v126 = v222;

        *(v153 + 14) = v162;
        _os_log_impl(&_mh_execute_header, v151, v218, "Calling back to delegate with registration error %@ for sessionID %s", v153, 0x16u);
        sub_100005508(v217, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v223);

        v125 = v213;

        v163 = v211;
      }

      else
      {

        v161 = *v225;
        (*v225)(v150, v87);
        v163 = v211;
        v155 = v219;
      }

      v178 = sub_100010F88(v155, 0, 0xE000000000000000);
      v179 = v224;
      sub_100695FD8(v125, v178, v180);
      swift_unknownObjectRelease();

      v161(v125, v87);
      v104 = v179;
      (*(v126 + 56))(v163, 1, 1, v87);
      swift_beginAccess();
      sub_10000C788(v163, &v179[v148], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    v166 = os_log_type_enabled(v164, v165);
    v70 = v221;
    if (v166)
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "Have session that is waiting but no delegate to report it to. This is bad.", v167, 2u);
    }

    (*v225)(v125, v87);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_10045F620(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v223 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  __chkstk_darwin(v9 - 8);
  v209 = &v208 - v10;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = __chkstk_darwin(v11 - 8);
  v211 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v208 - v14;
  v15 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v15 - 8);
  v215 = &v208 - v16;
  v227 = type metadata accessor for UUID();
  v222 = *(v227 - 8);
  v17 = __chkstk_darwin(v227);
  v19 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v213 = &v208 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v208 - v23;
  __chkstk_darwin(v22);
  v226 = &v208 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = type metadata accessor for SDAuthenticationKeySession(0);
  v234 = &off_1008E5AB0;
  v232 = a1;
  v30 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v29 = v30;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = a1;
  v32 = v30;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v224 = a5;

  v219 = a2;
  v220 = sub_100010F88(a2, v223, a4);
  a5 = v33;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v210 = v19;
  v34 = type metadata accessor for Logger();
  v35 = sub_10000C4AC(v34, qword_1009895D8);
  sub_1002A9938(&v232, &v229);

  v218 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v227;
  v221 = a5;
  v214 = a4;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v228[0] = v225;
    *v40 = 136315394;
    v41 = v230;
    v42 = v231;
    sub_10002CDC0(&v229, v230);
    v43 = v226;
    (*(v42 + 32))(v41, v42);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v45;
    v46 = v222;
    (*(v222 + 8))(v43, v39);
    sub_10000C60C(&v229);
    v47 = sub_10000C4E4(v44, a4, v228);

    *(v40 + 4) = v47;
    *(v40 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v48 = v220;
    *(v48 + 8) = a5;

    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v49;
    v50 = v217;
    *v217 = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "Session %s failed with error: %@", v40, 0x16u);
    sub_100005508(v50, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v225);
  }

  else
  {

    sub_10000C60C(&v229);
    v46 = v222;
  }

  v51 = v233;
  v52 = v234;
  sub_10002CDC0(&v232, v233);
  v217 = (v52[5])(v51, v52);
  v53 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v54 = v224;
  swift_beginAccess();
  v216 = v53;
  v55 = *(v54 + v53);
  v56 = *(v55 + 16);
  v225 = (v46 + 8);

  v57 = v55 + 32;
  v58 = -v56;
  a5 = -1;
  v19 = v226;
  while (v58 + a5 != -1)
  {
    if (++a5 >= *(v55 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v59 = v57 + 40;
    sub_1002A9938(v57, &v229);
    v61 = v230;
    v60 = v231;
    sub_10002CDC0(&v229, v230);
    (*(*(*(v60 + 8) + 8) + 32))(v61);
    v62 = v233;
    v63 = v234;
    sub_10002CDC0(&v232, v233);
    (v63[4])(v62, v63);
    LOBYTE(v60) = static UUID.== infix(_:_:)();
    a4 = *v225;
    v64 = v227;
    (*v225)(v24, v227);
    a4(v19, v64);
    sub_10000C60C(&v229);
    v57 = v59;
    if (v60)
    {
      break;
    }
  }

  __chkstk_darwin(v65);
  *(&v208 - 2) = &v232;
  v66 = v224;
  v67 = v216;
  swift_beginAccess();
  v68 = sub_10045D67C(sub_100464DF4, (&v208 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v69 = *(*&v66[v67] + 16);
  v70 = v221;
  v71 = v219;
  v72 = v217;
  if (v69 < v68)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v68, v69);
  v73 = swift_endAccess();
  __chkstk_darwin(v73);
  *(&v208 - 2) = &v232;
  v74 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v75 = sub_10045D67C(sub_100464DF4, (&v208 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v76 = *(*&v66[v74] + 16);
  if (v76 < v75)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v75, v76);
  v77 = swift_endAccess();
  __chkstk_darwin(v77);
  *(&v208 - 2) = &v232;
  v78 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v79 = sub_10045D67C(sub_100464DF4, (&v208 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v80 = *(*&v66[v78] + 16);
  if (v80 < v79)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v79, v80);
  v81 = swift_endAccess();
  __chkstk_darwin(v81);
  *(&v208 - 2) = &v232;
  v82 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v83 = sub_10045D67C(sub_100464DF4, (&v208 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v84 = *(*&v66[v82] + 16);
  if (v84 >= v83)
  {
    sub_10057EF98(v83, v84);
    swift_endAccess();
    v85 = v233;
    v86 = v234;
    sub_10002CDC0(&v232, v233);
    (v86[11])(v85, v86);
    v87 = v227;
    if (v71 == 5 || v71 == 33)
    {
      v88 = v233;
      v89 = v234;
      sub_10002CDC0(&v232, v233);
      (v89[8])(&v229, v88, v89);
      v90 = v230;
      if (v230)
      {
        v91 = v231;
        sub_10002CDC0(&v229, v230);
        v92 = (*(v91 + 8))(v90, v91);
        v94 = v93;
        sub_10000C60C(&v229);
        if (v94)
        {
          v95 = sub_1004FE068(v72);
          v96 = v226;
          UUID.init()();
          sub_1006A87C8(v95, v92, v94, v96, 0);

          (*v225)(v96, v87);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      }

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Got notEnabled error but coudln't determine who to disable pairing with", v99, 2u);
      }
    }

LABEL_23:
    v100 = type metadata accessor for TaskPriority();
    v101 = v215;
    (*(*(v100 - 8) + 56))(v215, 1, 1, v100);
    sub_1002A9938(&v232, &v229);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = v66;
    sub_1000121F8(&v229, v102 + 40);
    *(v102 + 80) = v71;
    v103 = v214;
    *(v102 + 88) = v223;
    *(v102 + 96) = v103;

    v104 = v66;
    sub_1002B3098(0, 0, v101, &unk_1008104D0, v102);

    if (v72 == 5)
    {
      if (v71 == 10)
      {
        v128 = v233;
        v129 = v234;
        sub_10002CDC0(&v232, v233);
        (v129[8])(&v229, v128, v129);
        v130 = v230;
        if (v230)
        {
          v131 = v231;
          sub_10002CDC0(&v229, v230);
          v132 = (*(v131 + 8))(v130, v131);
          v134 = v133;
          sub_10000C60C(&v229);
          if (v134)
          {
            swift_beginAccess();
            v135 = v209;
            sub_1002D37FC(v132, v134, v209);
            swift_endAccess();

            sub_100005508(v135, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v232, &v229);
        v168 = Logger.logObject.getter();
        v169 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          v228[0] = v223;
          *v170 = 136315138;
          v224 = v104;
          v172 = v230;
          v171 = v231;
          sub_10002CDC0(&v229, v230);
          v173 = v226;
          (*(v171 + 32))(v172, v171);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v174 = dispatch thunk of CustomStringConvertible.description.getter();
          v176 = v175;
          (*v225)(v173, v87);
          sub_10000C60C(&v229);
          v177 = sub_10000C4E4(v174, v176, v228);
          v104 = v224;

          *(v170 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v168, v169, "Could not find peer device for %s", v170, 0xCu);
          sub_10000C60C(v223);
        }

        else
        {

          sub_10000C60C(&v229);
        }
      }

LABEL_57:
      sub_1002A9938(&v232, &v229);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v232, &v229), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v228);
        v181 = v233;
        v182 = v234;
        sub_10002CDC0(&v232, v233);
        v183 = v226;
        (v182[4])(v181, v182);
        sub_100695FD8(v183, v220, v70);

        (*v225)(v183, v87);
      }

      else
      {
      }

      v184 = v233;
      v185 = v234;
      sub_10002CDC0(&v232, v233);
      v186 = (v185[5])(v184, v185);
      v187 = SFDeviceClassCodeGet();
      v188 = sub_100027628(v186);
      v189 = sub_10000EF9C(8u, v188);

      if (v189)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v232);
        }
      }

      else
      {
        v190 = sub_100027628(v186);
        v191 = sub_10000EF9C(v187, v190);

        if (!v191)
        {
          return sub_10000C60C(&v232);
        }
      }

      v192 = *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v193 = v233;
      v194 = v234;
      sub_10002CDC0(&v232, v233);
      v195 = (v194[5])(v193, v194);
      LOBYTE(v193) = sub_1004FE08C(v195);
      v196 = v233;
      v197 = v234;
      sub_10002CDC0(&v232, v233);
      (v197[8])(&v229, v196, v197);
      v198 = sub_1005CCA8C(v193, &v229);
      v200 = v199;
      ObjectType = swift_getObjectType();
      v202 = (*(v200 + 56))(ObjectType, v200);
      v203 = *(v192 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v204 = __chkstk_darwin(v202);
      *(&v208 - 4) = v198;
      *(&v208 - 3) = v200;
      *(&v208 - 2) = &v229;
      *(&v208 - 1) = v192;
      __chkstk_darwin(v204);
      *(&v208 - 2) = sub_100464E14;
      *(&v208 - 1) = v205;
      os_unfair_lock_lock(v203 + 4);
      sub_1002F5418(v206);
      os_unfair_lock_unlock(v203 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v232);
    }

    if (v72 != 8)
    {
      goto LABEL_57;
    }

    v105 = v233;
    v106 = v234;
    sub_10002CDC0(&v232, v233);
    (v106[8])(&v229, v105, v106);
    v107 = v230;
    v216 = 0;
    if (v230)
    {
      v108 = v231;
      sub_10002CDC0(&v229, v230);
      v109 = (*(v108 + 8))(v107, v108);
      v111 = v110;
      sub_10000C60C(&v229);
      if (v111)
      {
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&_mh_execute_header, v112, v113, "Registration failed, clearing registration date", v114, 2u);
        }

        swift_beginAccess();
        v115 = v104;
        v116 = sub_10056CE1C(&v229, v109, v111);
        v118 = v117;
        v119 = type metadata accessor for RegistrationState(0);
        v120 = *(*(v119 - 8) + 48);
        if (!v120(v118, 1, v119))
        {
          *(v118 + *(v119 + 20)) = 0;
        }

        (v116)(&v229, 0);
        swift_endAccess();
        swift_beginAccess();
        v121 = sub_10056CE1C(&v229, v109, v111);
        v123 = v122;
        if (!v120(v122, 1, v119))
        {
          sub_100005508(v123, &qword_10097A7F0, &unk_1007FB600);
          v124 = type metadata accessor for Date();
          (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
        }

        (v121)(&v229, 0);
        swift_endAccess();

        v87 = v227;
        v125 = v213;
        v126 = v222;
        v127 = v212;
        v104 = v115;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v232, &v229);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = v104;
      v140 = swift_slowAlloc();
      v228[0] = v140;
      *v138 = 136315138;
      v141 = v230;
      v142 = v231;
      sub_10002CDC0(&v229, v230);
      v143 = v226;
      (*(v142 + 32))(v141, v142);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      (*v225)(v143, v87);
      sub_10000C60C(&v229);
      v147 = sub_10000C4E4(v144, v146, v228);

      *(v138 + 4) = v147;
      _os_log_impl(&_mh_execute_header, v136, v137, "Could not find peer device for %s", v138, 0xCu);
      sub_10000C60C(v140);
      v104 = v139;
    }

    else
    {

      sub_10000C60C(&v229);
    }

    v125 = v213;
    v126 = v222;
    v127 = v212;
LABEL_43:
    v148 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v104[v148], v127, &unk_100976120, &qword_1007F9260);
    if ((*(v126 + 48))(v127, 1, v87) == 1)
    {
      sub_100005508(v127, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v70 = v221;
      goto LABEL_57;
    }

    (*(v126 + 32))(v125, v127, v87);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v227 = Strong;
      v224 = v104;
      v150 = v210;
      (*(v126 + 16))(v210, v125, v87);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v217 = v154;
        v223 = swift_slowAlloc();
        *&v229 = v223;
        *v153 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v218) = v152;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
        swift_allocError();
        v155 = v219;
        *v156 = v219;
        v157 = _swift_stdlib_bridgeErrorToNSError();
        *(v153 + 4) = v157;
        *v154 = v157;
        *(v153 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v159;
        v161 = *v225;
        (*v225)(v150, v87);
        v162 = sub_10000C4E4(v158, v160, &v229);
        v126 = v222;

        *(v153 + 14) = v162;
        _os_log_impl(&_mh_execute_header, v151, v218, "Calling back to delegate with registration error %@ for sessionID %s", v153, 0x16u);
        sub_100005508(v217, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v223);

        v125 = v213;

        v163 = v211;
      }

      else
      {

        v161 = *v225;
        (*v225)(v150, v87);
        v163 = v211;
        v155 = v219;
      }

      v178 = sub_100010F88(v155, 0, 0xE000000000000000);
      v179 = v224;
      sub_100695FD8(v125, v178, v180);
      swift_unknownObjectRelease();

      v161(v125, v87);
      v104 = v179;
      (*(v126 + 56))(v163, 1, 1, v87);
      swift_beginAccess();
      sub_10000C788(v163, &v179[v148], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    v166 = os_log_type_enabled(v164, v165);
    v70 = v221;
    if (v166)
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "Have session that is waiting but no delegate to report it to. This is bad.", v167, 2u);
    }

    (*v225)(v125, v87);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100461318(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v223 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  __chkstk_darwin(v9 - 8);
  v209 = &v208 - v10;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = __chkstk_darwin(v11 - 8);
  v211 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v208 - v14;
  v15 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v15 - 8);
  v215 = &v208 - v16;
  v227 = type metadata accessor for UUID();
  v222 = *(v227 - 8);
  v17 = __chkstk_darwin(v227);
  v19 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v213 = &v208 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v208 - v23;
  __chkstk_darwin(v22);
  v226 = &v208 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = type metadata accessor for SDAuthenticationLockSession(0);
  v234 = &off_1008E5AB0;
  v232 = a1;
  v30 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v29 = v30;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = a1;
  v32 = v30;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v224 = a5;

  v219 = a2;
  v220 = sub_100010F88(a2, v223, a4);
  a5 = v33;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v210 = v19;
  v34 = type metadata accessor for Logger();
  v35 = sub_10000C4AC(v34, qword_1009895D8);
  sub_1002A9938(&v232, &v229);

  v218 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v227;
  v221 = a5;
  v214 = a4;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v228[0] = v225;
    *v40 = 136315394;
    v41 = v230;
    v42 = v231;
    sub_10002CDC0(&v229, v230);
    v43 = v226;
    (*(v42 + 32))(v41, v42);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v45;
    v46 = v222;
    (*(v222 + 8))(v43, v39);
    sub_10000C60C(&v229);
    v47 = sub_10000C4E4(v44, a4, v228);

    *(v40 + 4) = v47;
    *(v40 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v48 = v220;
    *(v48 + 8) = a5;

    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v49;
    v50 = v217;
    *v217 = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "Session %s failed with error: %@", v40, 0x16u);
    sub_100005508(v50, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v225);
  }

  else
  {

    sub_10000C60C(&v229);
    v46 = v222;
  }

  v51 = v233;
  v52 = v234;
  sub_10002CDC0(&v232, v233);
  v217 = (v52[5])(v51, v52);
  v53 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v54 = v224;
  swift_beginAccess();
  v216 = v53;
  v55 = *(v54 + v53);
  v56 = *(v55 + 16);
  v225 = (v46 + 8);

  v57 = v55 + 32;
  v58 = -v56;
  a5 = -1;
  v19 = v226;
  while (v58 + a5 != -1)
  {
    if (++a5 >= *(v55 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v59 = v57 + 40;
    sub_1002A9938(v57, &v229);
    v61 = v230;
    v60 = v231;
    sub_10002CDC0(&v229, v230);
    (*(*(*(v60 + 8) + 8) + 32))(v61);
    v62 = v233;
    v63 = v234;
    sub_10002CDC0(&v232, v233);
    (v63[4])(v62, v63);
    LOBYTE(v60) = static UUID.== infix(_:_:)();
    a4 = *v225;
    v64 = v227;
    (*v225)(v24, v227);
    a4(v19, v64);
    sub_10000C60C(&v229);
    v57 = v59;
    if (v60)
    {
      break;
    }
  }

  __chkstk_darwin(v65);
  *(&v208 - 2) = &v232;
  v66 = v224;
  v67 = v216;
  swift_beginAccess();
  v68 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v69 = *(*&v66[v67] + 16);
  v70 = v221;
  v71 = v219;
  v72 = v217;
  if (v69 < v68)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v68, v69);
  v73 = swift_endAccess();
  __chkstk_darwin(v73);
  *(&v208 - 2) = &v232;
  v74 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v75 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v76 = *(*&v66[v74] + 16);
  if (v76 < v75)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v75, v76);
  v77 = swift_endAccess();
  __chkstk_darwin(v77);
  *(&v208 - 2) = &v232;
  v78 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v79 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v80 = *(*&v66[v78] + 16);
  if (v80 < v79)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v79, v80);
  v81 = swift_endAccess();
  __chkstk_darwin(v81);
  *(&v208 - 2) = &v232;
  v82 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v83 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v84 = *(*&v66[v82] + 16);
  if (v84 >= v83)
  {
    sub_10057EF98(v83, v84);
    swift_endAccess();
    v85 = v233;
    v86 = v234;
    sub_10002CDC0(&v232, v233);
    (v86[11])(v85, v86);
    v87 = v227;
    if (v71 == 5 || v71 == 33)
    {
      v88 = v233;
      v89 = v234;
      sub_10002CDC0(&v232, v233);
      (v89[8])(&v229, v88, v89);
      v90 = v230;
      if (v230)
      {
        v91 = v231;
        sub_10002CDC0(&v229, v230);
        v92 = (*(v91 + 8))(v90, v91);
        v94 = v93;
        sub_10000C60C(&v229);
        if (v94)
        {
          v95 = sub_1004FE068(v72);
          v96 = v226;
          UUID.init()();
          sub_1006A87C8(v95, v92, v94, v96, 0);

          (*v225)(v96, v87);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      }

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Got notEnabled error but coudln't determine who to disable pairing with", v99, 2u);
      }
    }

LABEL_23:
    v100 = type metadata accessor for TaskPriority();
    v101 = v215;
    (*(*(v100 - 8) + 56))(v215, 1, 1, v100);
    sub_1002A9938(&v232, &v229);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = v66;
    sub_1000121F8(&v229, v102 + 40);
    *(v102 + 80) = v71;
    v103 = v214;
    *(v102 + 88) = v223;
    *(v102 + 96) = v103;

    v104 = v66;
    sub_1002B3098(0, 0, v101, &unk_100804790, v102);

    if (v72 == 5)
    {
      if (v71 == 10)
      {
        v128 = v233;
        v129 = v234;
        sub_10002CDC0(&v232, v233);
        (v129[8])(&v229, v128, v129);
        v130 = v230;
        if (v230)
        {
          v131 = v231;
          sub_10002CDC0(&v229, v230);
          v132 = (*(v131 + 8))(v130, v131);
          v134 = v133;
          sub_10000C60C(&v229);
          if (v134)
          {
            swift_beginAccess();
            v135 = v209;
            sub_1002D37FC(v132, v134, v209);
            swift_endAccess();

            sub_100005508(v135, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v232, &v229);
        v168 = Logger.logObject.getter();
        v169 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          v228[0] = v223;
          *v170 = 136315138;
          v224 = v104;
          v172 = v230;
          v171 = v231;
          sub_10002CDC0(&v229, v230);
          v173 = v226;
          (*(v171 + 32))(v172, v171);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v174 = dispatch thunk of CustomStringConvertible.description.getter();
          v176 = v175;
          (*v225)(v173, v87);
          sub_10000C60C(&v229);
          v177 = sub_10000C4E4(v174, v176, v228);
          v104 = v224;

          *(v170 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v168, v169, "Could not find peer device for %s", v170, 0xCu);
          sub_10000C60C(v223);
        }

        else
        {

          sub_10000C60C(&v229);
        }
      }

LABEL_57:
      sub_1002A9938(&v232, &v229);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v232, &v229), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v228);
        v181 = v233;
        v182 = v234;
        sub_10002CDC0(&v232, v233);
        v183 = v226;
        (v182[4])(v181, v182);
        sub_100695FD8(v183, v220, v70);

        (*v225)(v183, v87);
      }

      else
      {
      }

      v184 = v233;
      v185 = v234;
      sub_10002CDC0(&v232, v233);
      v186 = (v185[5])(v184, v185);
      v187 = SFDeviceClassCodeGet();
      v188 = sub_100027628(v186);
      v189 = sub_10000EF9C(8u, v188);

      if (v189)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v232);
        }
      }

      else
      {
        v190 = sub_100027628(v186);
        v191 = sub_10000EF9C(v187, v190);

        if (!v191)
        {
          return sub_10000C60C(&v232);
        }
      }

      v192 = *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v193 = v233;
      v194 = v234;
      sub_10002CDC0(&v232, v233);
      v195 = (v194[5])(v193, v194);
      LOBYTE(v193) = sub_1004FE08C(v195);
      v196 = v233;
      v197 = v234;
      sub_10002CDC0(&v232, v233);
      (v197[8])(&v229, v196, v197);
      v198 = sub_1005CCA8C(v193, &v229);
      v200 = v199;
      ObjectType = swift_getObjectType();
      v202 = (*(v200 + 56))(ObjectType, v200);
      v203 = *(v192 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v204 = __chkstk_darwin(v202);
      *(&v208 - 4) = v198;
      *(&v208 - 3) = v200;
      *(&v208 - 2) = &v229;
      *(&v208 - 1) = v192;
      __chkstk_darwin(v204);
      *(&v208 - 2) = sub_100465400;
      *(&v208 - 1) = v205;
      os_unfair_lock_lock(v203 + 4);
      sub_1003206A8(v206);
      os_unfair_lock_unlock(v203 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v232);
    }

    if (v72 != 8)
    {
      goto LABEL_57;
    }

    v105 = v233;
    v106 = v234;
    sub_10002CDC0(&v232, v233);
    (v106[8])(&v229, v105, v106);
    v107 = v230;
    v216 = 0;
    if (v230)
    {
      v108 = v231;
      sub_10002CDC0(&v229, v230);
      v109 = (*(v108 + 8))(v107, v108);
      v111 = v110;
      sub_10000C60C(&v229);
      if (v111)
      {
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&_mh_execute_header, v112, v113, "Registration failed, clearing registration date", v114, 2u);
        }

        swift_beginAccess();
        v115 = v104;
        v116 = sub_10056CE1C(&v229, v109, v111);
        v118 = v117;
        v119 = type metadata accessor for RegistrationState(0);
        v120 = *(*(v119 - 8) + 48);
        if (!v120(v118, 1, v119))
        {
          *(v118 + *(v119 + 20)) = 0;
        }

        (v116)(&v229, 0);
        swift_endAccess();
        swift_beginAccess();
        v121 = sub_10056CE1C(&v229, v109, v111);
        v123 = v122;
        if (!v120(v122, 1, v119))
        {
          sub_100005508(v123, &qword_10097A7F0, &unk_1007FB600);
          v124 = type metadata accessor for Date();
          (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
        }

        (v121)(&v229, 0);
        swift_endAccess();

        v87 = v227;
        v125 = v213;
        v126 = v222;
        v127 = v212;
        v104 = v115;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v232, &v229);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = v104;
      v140 = swift_slowAlloc();
      v228[0] = v140;
      *v138 = 136315138;
      v141 = v230;
      v142 = v231;
      sub_10002CDC0(&v229, v230);
      v143 = v226;
      (*(v142 + 32))(v141, v142);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      (*v225)(v143, v87);
      sub_10000C60C(&v229);
      v147 = sub_10000C4E4(v144, v146, v228);

      *(v138 + 4) = v147;
      _os_log_impl(&_mh_execute_header, v136, v137, "Could not find peer device for %s", v138, 0xCu);
      sub_10000C60C(v140);
      v104 = v139;
    }

    else
    {

      sub_10000C60C(&v229);
    }

    v125 = v213;
    v126 = v222;
    v127 = v212;
LABEL_43:
    v148 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v104[v148], v127, &unk_100976120, &qword_1007F9260);
    if ((*(v126 + 48))(v127, 1, v87) == 1)
    {
      sub_100005508(v127, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v70 = v221;
      goto LABEL_57;
    }

    (*(v126 + 32))(v125, v127, v87);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v227 = Strong;
      v224 = v104;
      v150 = v210;
      (*(v126 + 16))(v210, v125, v87);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v217 = v154;
        v223 = swift_slowAlloc();
        *&v229 = v223;
        *v153 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v218) = v152;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
        swift_allocError();
        v155 = v219;
        *v156 = v219;
        v157 = _swift_stdlib_bridgeErrorToNSError();
        *(v153 + 4) = v157;
        *v154 = v157;
        *(v153 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v159;
        v161 = *v225;
        (*v225)(v150, v87);
        v162 = sub_10000C4E4(v158, v160, &v229);
        v126 = v222;

        *(v153 + 14) = v162;
        _os_log_impl(&_mh_execute_header, v151, v218, "Calling back to delegate with registration error %@ for sessionID %s", v153, 0x16u);
        sub_100005508(v217, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v223);

        v125 = v213;

        v163 = v211;
      }

      else
      {

        v161 = *v225;
        (*v225)(v150, v87);
        v163 = v211;
        v155 = v219;
      }

      v178 = sub_100010F88(v155, 0, 0xE000000000000000);
      v179 = v224;
      sub_100695FD8(v125, v178, v180);
      swift_unknownObjectRelease();

      v161(v125, v87);
      v104 = v179;
      (*(v126 + 56))(v163, 1, 1, v87);
      swift_beginAccess();
      sub_10000C788(v163, &v179[v148], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    v166 = os_log_type_enabled(v164, v165);
    v70 = v221;
    if (v166)
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "Have session that is waiting but no delegate to report it to. This is bad.", v167, 2u);
    }

    (*v225)(v125, v87);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100463010(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v223 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  __chkstk_darwin(v9 - 8);
  v209 = &v208 - v10;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = __chkstk_darwin(v11 - 8);
  v211 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v208 - v14;
  v15 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v15 - 8);
  v215 = &v208 - v16;
  v227 = type metadata accessor for UUID();
  v222 = *(v227 - 8);
  v17 = __chkstk_darwin(v227);
  v19 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v213 = &v208 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v208 - v23;
  __chkstk_darwin(v22);
  v226 = &v208 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = type metadata accessor for SDAuthenticationPairingKeySession(0);
  v234 = &off_1008E5AB0;
  v232 = a1;
  v30 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v29 = v30;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = a1;
  v32 = v30;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v224 = a5;

  v219 = a2;
  v220 = sub_100010F88(a2, v223, a4);
  a5 = v33;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v210 = v19;
  v34 = type metadata accessor for Logger();
  v35 = sub_10000C4AC(v34, qword_1009895D8);
  sub_1002A9938(&v232, &v229);

  v218 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v227;
  v221 = a5;
  v214 = a4;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v228[0] = v225;
    *v40 = 136315394;
    v41 = v230;
    v42 = v231;
    sub_10002CDC0(&v229, v230);
    v43 = v226;
    (*(v42 + 32))(v41, v42);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v45;
    v46 = v222;
    (*(v222 + 8))(v43, v39);
    sub_10000C60C(&v229);
    v47 = sub_10000C4E4(v44, a4, v228);

    *(v40 + 4) = v47;
    *(v40 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v48 = v220;
    *(v48 + 8) = a5;

    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v49;
    v50 = v217;
    *v217 = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "Session %s failed with error: %@", v40, 0x16u);
    sub_100005508(v50, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v225);
  }

  else
  {

    sub_10000C60C(&v229);
    v46 = v222;
  }

  v51 = v233;
  v52 = v234;
  sub_10002CDC0(&v232, v233);
  v217 = (v52[5])(v51, v52);
  v53 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v54 = v224;
  swift_beginAccess();
  v216 = v53;
  v55 = *(v54 + v53);
  v56 = *(v55 + 16);
  v225 = (v46 + 8);

  v57 = v55 + 32;
  v58 = -v56;
  a5 = -1;
  v19 = v226;
  while (v58 + a5 != -1)
  {
    if (++a5 >= *(v55 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v59 = v57 + 40;
    sub_1002A9938(v57, &v229);
    v61 = v230;
    v60 = v231;
    sub_10002CDC0(&v229, v230);
    (*(*(*(v60 + 8) + 8) + 32))(v61);
    v62 = v233;
    v63 = v234;
    sub_10002CDC0(&v232, v233);
    (v63[4])(v62, v63);
    LOBYTE(v60) = static UUID.== infix(_:_:)();
    a4 = *v225;
    v64 = v227;
    (*v225)(v24, v227);
    a4(v19, v64);
    sub_10000C60C(&v229);
    v57 = v59;
    if (v60)
    {
      break;
    }
  }

  __chkstk_darwin(v65);
  *(&v208 - 2) = &v232;
  v66 = v224;
  v67 = v216;
  swift_beginAccess();
  v68 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v69 = *(*&v66[v67] + 16);
  v70 = v221;
  v71 = v219;
  v72 = v217;
  if (v69 < v68)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v68, v69);
  v73 = swift_endAccess();
  __chkstk_darwin(v73);
  *(&v208 - 2) = &v232;
  v74 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v75 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v76 = *(*&v66[v74] + 16);
  if (v76 < v75)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v75, v76);
  v77 = swift_endAccess();
  __chkstk_darwin(v77);
  *(&v208 - 2) = &v232;
  v78 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v79 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v80 = *(*&v66[v78] + 16);
  if (v80 < v79)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v79, v80);
  v81 = swift_endAccess();
  __chkstk_darwin(v81);
  *(&v208 - 2) = &v232;
  v82 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v83 = sub_10045D67C(sub_100465418, (&v208 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v84 = *(*&v66[v82] + 16);
  if (v84 >= v83)
  {
    sub_10057EF98(v83, v84);
    swift_endAccess();
    v85 = v233;
    v86 = v234;
    sub_10002CDC0(&v232, v233);
    (v86[11])(v85, v86);
    v87 = v227;
    if (v71 == 5 || v71 == 33)
    {
      v88 = v233;
      v89 = v234;
      sub_10002CDC0(&v232, v233);
      (v89[8])(&v229, v88, v89);
      v90 = v230;
      if (v230)
      {
        v91 = v231;
        sub_10002CDC0(&v229, v230);
        v92 = (*(v91 + 8))(v90, v91);
        v94 = v93;
        sub_10000C60C(&v229);
        if (v94)
        {
          v95 = sub_1004FE068(v72);
          v96 = v226;
          UUID.init()();
          sub_1006A87C8(v95, v92, v94, v96, 0);

          (*v225)(v96, v87);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      }

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Got notEnabled error but coudln't determine who to disable pairing with", v99, 2u);
      }
    }

LABEL_23:
    v100 = type metadata accessor for TaskPriority();
    v101 = v215;
    (*(*(v100 - 8) + 56))(v215, 1, 1, v100);
    sub_1002A9938(&v232, &v229);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = v66;
    sub_1000121F8(&v229, v102 + 40);
    *(v102 + 80) = v71;
    v103 = v214;
    *(v102 + 88) = v223;
    *(v102 + 96) = v103;

    v104 = v66;
    sub_1002B3098(0, 0, v101, &unk_100804768, v102);

    if (v72 == 5)
    {
      if (v71 == 10)
      {
        v128 = v233;
        v129 = v234;
        sub_10002CDC0(&v232, v233);
        (v129[8])(&v229, v128, v129);
        v130 = v230;
        if (v230)
        {
          v131 = v231;
          sub_10002CDC0(&v229, v230);
          v132 = (*(v131 + 8))(v130, v131);
          v134 = v133;
          sub_10000C60C(&v229);
          if (v134)
          {
            swift_beginAccess();
            v135 = v209;
            sub_1002D37FC(v132, v134, v209);
            swift_endAccess();

            sub_100005508(v135, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v232, &v229);
        v168 = Logger.logObject.getter();
        v169 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          v228[0] = v223;
          *v170 = 136315138;
          v224 = v104;
          v172 = v230;
          v171 = v231;
          sub_10002CDC0(&v229, v230);
          v173 = v226;
          (*(v171 + 32))(v172, v171);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v174 = dispatch thunk of CustomStringConvertible.description.getter();
          v176 = v175;
          (*v225)(v173, v87);
          sub_10000C60C(&v229);
          v177 = sub_10000C4E4(v174, v176, v228);
          v104 = v224;

          *(v170 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v168, v169, "Could not find peer device for %s", v170, 0xCu);
          sub_10000C60C(v223);
        }

        else
        {

          sub_10000C60C(&v229);
        }
      }

LABEL_57:
      sub_1002A9938(&v232, &v229);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v232, &v229), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v228);
        v181 = v233;
        v182 = v234;
        sub_10002CDC0(&v232, v233);
        v183 = v226;
        (v182[4])(v181, v182);
        sub_100695FD8(v183, v220, v70);

        (*v225)(v183, v87);
      }

      else
      {
      }

      v184 = v233;
      v185 = v234;
      sub_10002CDC0(&v232, v233);
      v186 = (v185[5])(v184, v185);
      v187 = SFDeviceClassCodeGet();
      v188 = sub_100027628(v186);
      v189 = sub_10000EF9C(8u, v188);

      if (v189)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v232);
        }
      }

      else
      {
        v190 = sub_100027628(v186);
        v191 = sub_10000EF9C(v187, v190);

        if (!v191)
        {
          return sub_10000C60C(&v232);
        }
      }

      v192 = *&v104[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v193 = v233;
      v194 = v234;
      sub_10002CDC0(&v232, v233);
      v195 = (v194[5])(v193, v194);
      LOBYTE(v193) = sub_1004FE08C(v195);
      v196 = v233;
      v197 = v234;
      sub_10002CDC0(&v232, v233);
      (v197[8])(&v229, v196, v197);
      v198 = sub_1005CCA8C(v193, &v229);
      v200 = v199;
      ObjectType = swift_getObjectType();
      v202 = (*(v200 + 56))(ObjectType, v200);
      v203 = *(v192 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v204 = __chkstk_darwin(v202);
      *(&v208 - 4) = v198;
      *(&v208 - 3) = v200;
      *(&v208 - 2) = &v229;
      *(&v208 - 1) = v192;
      __chkstk_darwin(v204);
      *(&v208 - 2) = sub_100465400;
      *(&v208 - 1) = v205;
      os_unfair_lock_lock(v203 + 4);
      sub_1003206A8(v206);
      os_unfair_lock_unlock(v203 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v232);
    }

    if (v72 != 8)
    {
      goto LABEL_57;
    }

    v105 = v233;
    v106 = v234;
    sub_10002CDC0(&v232, v233);
    (v106[8])(&v229, v105, v106);
    v107 = v230;
    v216 = 0;
    if (v230)
    {
      v108 = v231;
      sub_10002CDC0(&v229, v230);
      v109 = (*(v108 + 8))(v107, v108);
      v111 = v110;
      sub_10000C60C(&v229);
      if (v111)
      {
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&_mh_execute_header, v112, v113, "Registration failed, clearing registration date", v114, 2u);
        }

        swift_beginAccess();
        v115 = v104;
        v116 = sub_10056CE1C(&v229, v109, v111);
        v118 = v117;
        v119 = type metadata accessor for RegistrationState(0);
        v120 = *(*(v119 - 8) + 48);
        if (!v120(v118, 1, v119))
        {
          *(v118 + *(v119 + 20)) = 0;
        }

        (v116)(&v229, 0);
        swift_endAccess();
        swift_beginAccess();
        v121 = sub_10056CE1C(&v229, v109, v111);
        v123 = v122;
        if (!v120(v122, 1, v119))
        {
          sub_100005508(v123, &qword_10097A7F0, &unk_1007FB600);
          v124 = type metadata accessor for Date();
          (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
        }

        (v121)(&v229, 0);
        swift_endAccess();

        v87 = v227;
        v125 = v213;
        v126 = v222;
        v127 = v212;
        v104 = v115;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v229, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v232, &v229);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = v104;
      v140 = swift_slowAlloc();
      v228[0] = v140;
      *v138 = 136315138;
      v141 = v230;
      v142 = v231;
      sub_10002CDC0(&v229, v230);
      v143 = v226;
      (*(v142 + 32))(v141, v142);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      (*v225)(v143, v87);
      sub_10000C60C(&v229);
      v147 = sub_10000C4E4(v144, v146, v228);

      *(v138 + 4) = v147;
      _os_log_impl(&_mh_execute_header, v136, v137, "Could not find peer device for %s", v138, 0xCu);
      sub_10000C60C(v140);
      v104 = v139;
    }

    else
    {

      sub_10000C60C(&v229);
    }

    v125 = v213;
    v126 = v222;
    v127 = v212;
LABEL_43:
    v148 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v104[v148], v127, &unk_100976120, &qword_1007F9260);
    if ((*(v126 + 48))(v127, 1, v87) == 1)
    {
      sub_100005508(v127, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v70 = v221;
      goto LABEL_57;
    }

    (*(v126 + 32))(v125, v127, v87);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v227 = Strong;
      v224 = v104;
      v150 = v210;
      (*(v126 + 16))(v210, v125, v87);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v217 = v154;
        v223 = swift_slowAlloc();
        *&v229 = v223;
        *v153 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v218) = v152;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
        swift_allocError();
        v155 = v219;
        *v156 = v219;
        v157 = _swift_stdlib_bridgeErrorToNSError();
        *(v153 + 4) = v157;
        *v154 = v157;
        *(v153 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v159;
        v161 = *v225;
        (*v225)(v150, v87);
        v162 = sub_10000C4E4(v158, v160, &v229);
        v126 = v222;

        *(v153 + 14) = v162;
        _os_log_impl(&_mh_execute_header, v151, v218, "Calling back to delegate with registration error %@ for sessionID %s", v153, 0x16u);
        sub_100005508(v217, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v223);

        v125 = v213;

        v163 = v211;
      }

      else
      {

        v161 = *v225;
        (*v225)(v150, v87);
        v163 = v211;
        v155 = v219;
      }

      v178 = sub_100010F88(v155, 0, 0xE000000000000000);
      v179 = v224;
      sub_100695FD8(v125, v178, v180);
      swift_unknownObjectRelease();

      v161(v125, v87);
      v104 = v179;
      (*(v126 + 56))(v163, 1, 1, v87);
      swift_beginAccess();
      sub_10000C788(v163, &v179[v148], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    v166 = os_log_type_enabled(v164, v165);
    v70 = v221;
    if (v166)
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "Have session that is waiting but no delegate to report it to. This is bad.", v167, 2u);
    }

    (*v225)(v125, v87);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}