uint64_t sub_1000DA3E8(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v2);
  v4 = (v17 - v3);
  sub_1000DB270(a1, v17 - v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA88);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = _convertErrorToNSError(_:)();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error updating status %@", v9, 0xCu);
      sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
    }

    v17[1] = v5;
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Status update successful!", v16, 2u);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    CheckedContinuation.resume(returning:)();
    return sub_100008D3C(v4, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000DA6C8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__statusUpdater;
  v2 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler__analyticsReporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonInvitationResponseHandler(uint64_t a1)
{
  result = qword_1003DC5D8;
  if (!qword_1003DC5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DA86C(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DB270, &unk_1003D98A0, &unk_10033FA20);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000DA9C4()
{
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v1 = OBJC_IVAR____TtC13appleaccountd31DaemonInvitationResponseHandler_metadataController;
  type metadata accessor for CustodianMetadataController(0);
  v2 = swift_allocObject();
  sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
  Dependency.init(dependencyId:config:)();
  v3 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v2 + v3) = JSONEncoder.init()();
  v4 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v2 + v4) = JSONDecoder.init()();
  *(v0 + v1) = v2;
  return v0;
}

uint64_t sub_1000DAB3C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000DAC30(uint64_t a1)
{
  type metadata accessor for UUID();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_1000D93C4(a1, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1000DAD7C()
{
  result = qword_1003D9150;
  if (!qword_1003D9150)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9150);
  }

  return result;
}

uint64_t sub_1000DADDC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1000DAE40()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000DAED4(uint64_t a1)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_1000DA3E8(a1);
}

uint64_t sub_1000DAF50()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000DB06C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_1000DB0D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000082A8;

  return sub_10013F41C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1000DB214(uint64_t a1)
{
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1000DB270(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000DB2E0(uint64_t a1)
{
  v42 = a1;
  v2 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v2 - 8);
  v41 = &v40 - v3;
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = *(v8 + 16);
  v43 = v1;
  v11(&v40 - v9, v1 + OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__accountStore, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  v12 = [*(*sub_1000080F8(v45 v46) + 16)];
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_10000839C(v45);
  UUID.init()();
  UUID.uuidString.getter();
  v17 = *(v4 + 8);
  v17(v6, v44);
  v18 = kAAAnalyticsEventCustodianSetupProcessRemoveCustodian;
  v19 = kAAAnalyticsEventCustodianSetupProcessRemoveCustodian;
  if (v16)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_opt_self();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 analyticsEventWithName:v18 altDSID:v20 flowID:v22];

  v24 = v42;
  if (v23)
  {
    v25 = *(v42 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow);
    v26 = *(v42 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow + 8);
    v27 = v23;
    sub_100245E08(v25, v26);
  }

  sub_100040738(v43 + 56, v45);
  sub_1000080F8(v45, v46);
  v28 = v44;
  (*(v4 + 16))(v6, v24 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v44);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v23;
  v30[4] = v24;
  v31 = v23;

  sub_1000259E4(v6, sub_1000DCBF8, v30);

  v17(v6, v28);

  sub_10000839C(v45);
  if ((*(v24 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow + 8) & 1) == 0 && *(v24 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow) == 12)
  {
    v32 = sub_1000C0C98(*(v24 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason));
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v34, v35, "Custodian received tear-down from owner, reason: %ld", v36, 0xCu);
    }

    v37 = type metadata accessor for TaskPriority();
    v38 = v41;
    (*(*(v37 - 8) + 56))(v41, 1, 1, v37);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = v43;
    *(v39 + 40) = v32;
    *(v39 + 48) = v24;

    sub_1000BCD5C(0, 0, v38, &unk_100340AB8, v39);
  }
}

void sub_1000DB8F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v65 = a4;
  v68 = a3;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = &v60 - v7;
  v8 = type metadata accessor for UUID();
  v66 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianshipInfoRecord(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v60 - v16;
  __chkstk_darwin(v15);
  v19 = &v60 - v18;
  v20 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  swift_beginAccess();
  v67 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v64 = Strong;
    sub_1000DCD18(a1, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAA88);
      v25 = v65;

      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v69[0] = v60;
        *v28 = 136315394;
        v30 = v66;
        (*(v66 + 16))(v10, v25 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v8);
        sub_1000DAD7C();
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        (*(v30 + 8))(v10, v8);
        v34 = sub_10021145C(v31, v33, v69);

        *(v28 + 4) = v34;
        *(v28 + 12) = 2112;
        v35 = _convertErrorToNSError(_:)();
        *(v28 + 14) = v35;
        *v29 = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "Error fetching custodianship %s: %@", v28, 0x16u);
        sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v60);
      }

      v36 = v68;
      if (v68)
      {
        v37 = _convertErrorToNSError(_:)();
        [v36 updateTaskResultWithError:v37];
      }

      swift_beginAccess();
      v38 = swift_weakLoadStrong();
      if (v38)
      {
        v39 = v61;
        v40 = v62;
        v41 = v63;
        (*(v62 + 16))(v61, v38 + OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__analyticsReporter, v63);
        Dependency.wrappedValue.getter();

        (*(v40 + 8))(v39, v41);
        swift_getObjectType();
        sub_100246FA8(v36);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      sub_1000C5368(v22, v19);
      sub_1000C522C(v19, v14);
      v46 = &v19[v11[6]];
      v48 = *v46;
      v47 = *(v46 + 1);
      v49 = *(v66 + 16);
      v49(v17, v14, v8);
      v49(&v17[v11[5]], &v14[v11[5]], v8);
      v50 = v11[8];
      v51 = *&v14[v50];
      v52 = *&v14[v50 + 8];
      v53 = &v17[v50];
      *v53 = v51;
      v53[1] = v52;
      v54 = &v17[v11[6]];
      *v54 = v48;
      *(v54 + 1) = v47;
      *&v17[v11[7]] = 4;
      v55 = v14[v11[9]];

      sub_100015D6C(v51, v52);
      sub_1000D8450(v14);
      v17[v11[9]] = v55;
      sub_100040738(v64 + 16, v69);
      sub_1000080F8(v69, v69[3]);
      v56 = swift_allocObject();
      v58 = v67;
      v57 = v68;
      *(v56 + 16) = v68;
      *(v56 + 24) = v58;
      v59 = v57;

      sub_100230FD4(v17, sub_1000DCDC8, v56);

      sub_1000D8450(v17);
      sub_1000D8450(v19);
      sub_10000839C(v69);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAA88);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error updating custodianship - couldn't get strong ref", v45, 2u);
    }
  }
}

void sub_1000DC050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  if (a2)
  {
    sub_1000D2720(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v9 + 16))(v11, Strong + OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__analyticsReporter, v8);
    Dependency.wrappedValue.getter();

    (*(v9 + 8))(v11, v8);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_1000DCD18(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = _convertErrorToNSError(_:)();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error updating custodianship %@", v16, 0xCu);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    [objc_opt_self() postRecoveryContactChangedNotification];
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Custodianship status updated", v22, 2u);
    }

    sub_100008D3C(v7, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_1000DC458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for UUID();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000DC51C, 0, 0);
}

uint64_t sub_1000DC51C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 56) = *(*(v0 + 16) + 96);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v3);

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1000DC5F8;
  v6 = *(v0 + 48);
  v7 = *(v0 + 80);

  return sub_100014544(v7, 1, v6);
}

uint64_t sub_1000DC5F8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_1000DC7D0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000DC7D0()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Owner received tear-down from custodian, reason: %ld", v5, 0xCu);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000DC904()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));

  v1 = OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29DaemonCustodianRemovedHandler__analyticsReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonCustodianRemovedHandler(uint64_t a1)
{
  result = qword_1003DC768;
  if (!qword_1003DC768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DCA64(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000DCB78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000DCBB0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000DCC04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000DCC4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1000DC458(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1000DCD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCD88()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000DCDD0(uint64_t a1)
{
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A10, &qword_100343D80);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10004035C(a1, &v6);
  if (v7)
  {
    sub_100008D3C(a1, &qword_1003DCB30, &unk_10033F030);
    sub_10003E950(&v6, &v8);
  }

  else
  {
    *(&v9 + 1) = &type metadata for FinalizeSetupRetryDelay;
    v10 = sub_1000E0088();
    *&v8 = 30;
    sub_100008D3C(a1, &qword_1003DCB30, &unk_10033F030);
    if (v7)
    {
      sub_100008D3C(&v6, &qword_1003DCB30, &unk_10033F030);
    }
  }

  v3 = v1 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler_retrySchedulerDelay;
  v4 = v9;
  *v3 = v8;
  *(v3 + 16) = v4;
  *(v3 + 32) = v10;
  return v1;
}

uint64_t sub_1000DCFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[39] = a7;
  v8[40] = a8;
  v8[37] = a5;
  v8[38] = a6;
  v8[36] = a4;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[41] = v9;
  v8[42] = *(v9 - 8);
  v8[43] = swift_task_alloc();
  v10 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8[44] = v10;
  v8[45] = *(v10 - 8);
  v8[46] = swift_task_alloc();
  v8[47] = type metadata accessor for TrustedContactUserNotification(0);
  v8[48] = swift_task_alloc();
  v8[49] = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v8[50] = swift_task_alloc();
  v11 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v8[51] = v11;
  v8[52] = *(v11 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = type metadata accessor for CustodianRecord(0);
  v8[55] = swift_task_alloc();
  v8[56] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v8[57] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[58] = v12;
  v8[59] = *(v12 - 8);
  v8[60] = swift_task_alloc();
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8[61] = v13;
  v8[62] = *(v13 - 8);
  v8[63] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD314, 0, 0);
}

uint64_t sub_1000DD314()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  (*(v2 + 16))(v1, v0[36] + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 8 v0[11]) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[65] = v9;
  v0[64] = v7;
  v11 = v0[59];
  v10 = v0[60];
  v12 = v0[58];
  sub_10000839C(v0 + 8);
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v0[66] = v13;
  v0[67] = v14;
  (*(v11 + 8))(v10, v12);
  v16 = kAAAnalyticsEventCustodianSetupProcessFinalizeSetupMessage;
  v17 = kAAAnalyticsEventCustodianSetupProcessFinalizeSetupMessage;

  if (v9)
  {

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v42 = v7;
  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 analyticsEventWithName:v16 altDSID:v18 flowID:v20];
  v0[68] = v21;

  if (v21)
  {
    v22 = v0[37] + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = v21;
    sub_100245E08(v23, v24);
  }

  v27 = v0[56];
  v26 = v0[57];
  v29 = v0[52];
  v28 = v0[53];
  v30 = v0[51];
  v31 = v0[36];
  (*(v0[59] + 16))(v26, v0[37] + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v0[58]);
  *(v26 + v27[5]) = 1;
  v32 = v26 + v27[6];
  *v32 = 2;
  *(v32 + 8) = 0;
  *(v26 + v27[7]) = 1;
  v33 = (v26 + v27[8]);
  *v33 = v42;
  v33[1] = v9;
  v34 = (v26 + v27[9]);
  *v34 = v13;
  v34[1] = v15;
  v35 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__storageController;
  v0[69] = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__storageController;
  v36 = *(v29 + 16);
  v0[70] = v36;
  v0[71] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36(v28, v31 + v35, v30);

  Dependency.wrappedValue.getter();
  v37 = *(v29 + 8);
  v0[72] = v37;
  v0[73] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v28, v30);
  sub_1000080F8(v0 + 13, v0[16]);
  v38 = swift_task_alloc();
  v0[74] = v38;
  *v38 = v0;
  v38[1] = sub_1000DD6CC;
  v39 = v0[57];
  v40 = v0[55];

  return sub_100023C4C(v40, v39);
}

uint64_t sub_1000DD6CC()
{
  *(*v1 + 600) = v0;

  if (v0)
  {

    v2 = sub_1000DDA34;
  }

  else
  {
    v2 = sub_1000DD7F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DD7F4()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[53];
  v5 = v0[51];
  v6 = v0[36];
  sub_10000839C(v0 + 13);
  v2(v4, v6 + v3, v5);
  Dependency.wrappedValue.getter();
  v1(v4, v5);
  sub_1000080F8(v0 + 18, v0[21]);
  v7 = swift_task_alloc();
  v0[76] = v7;
  *v7 = v0;
  v7[1] = sub_1000DD90C;
  v8 = v0[57];
  v9 = v0[50];

  return sub_100021548(v9, v8, 0, 0);
}

uint64_t sub_1000DD90C()
{
  *(*v1 + 616) = v0;

  if (v0)
  {

    v2 = sub_1000DDFB4;
  }

  else
  {
    v2 = sub_1000DDD3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DDA34()
{
  sub_10000839C((v0 + 104));
  v1 = *(v0 + 600);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occurred during finalize setup after retry: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = *(v0 + 544);

  if (v8)
  {
    v9 = *(v0 + 544);
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];
  }

  v11 = *(v0 + 544);
  v12 = *(v0 + 456);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 328);
  v16 = *(v0 + 312);
  (*(v14 + 16))(v13, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v15);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v13, v15);
  swift_getObjectType();
  sub_100246FA8(v11);
  swift_unknownObjectRelease();
  swift_errorRetain();
  v16(v1);

  sub_1000E0858(v12, type metadata accessor for FetchRecoveryRecordsRequest);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000DDD3C()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[38];
  sub_10000839C(v0 + 18);
  v4 = [objc_allocWithZone(AKCustodianContext) init];
  v0[78] = v4;
  v5 = [v3 aa_altDSID];
  [v4 setAltDSID:v5];

  v6 = String._bridgeToObjectiveC()();
  [v4 setOwnerCustodianAltDSID:v6];

  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v4 setCustodianUUID:isa];

  if (*(v1 + *(v2 + 40) + 8) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = v0[67];
  v10 = v0[64];
  v12 = v0[36];
  v11 = v0[37];
  [v4 setWrappingKeyRKC:{v8, v0[65], v0[66]}];

  sub_10004035C(v12 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler_retrySchedulerDelay, (v0 + 23));
  v13 = type metadata accessor for ExponentialRetryScheduler();
  v14 = objc_allocWithZone(v13);
  v15 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)();
  v0[79] = v15;
  v0[34] = v15;
  v16 = swift_task_alloc();
  v0[80] = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v4;
  *(v16 + 32) = v11;
  *(v16 + 40) = v10;
  *(v16 + 48) = v19;
  *(v16 + 64) = v9;
  v17 = swift_task_alloc();
  v0[81] = v17;
  *v17 = v0;
  v17[1] = sub_1000DE2D8;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v17, &unk_100340B70, v16, sub_1000DF754, 0, v13, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_1000DDFB4()
{
  sub_1000E0858(*(v0 + 440), type metadata accessor for CustodianRecord);
  sub_10000839C((v0 + 144));
  v1 = *(v0 + 616);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occurred during finalize setup after retry: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = *(v0 + 544);

  if (v8)
  {
    v9 = *(v0 + 544);
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];
  }

  v11 = *(v0 + 544);
  v12 = *(v0 + 456);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 328);
  v16 = *(v0 + 312);
  (*(v14 + 16))(v13, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v15);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v13, v15);
  swift_getObjectType();
  sub_100246FA8(v11);
  swift_unknownObjectRelease();
  swift_errorRetain();
  v16(v1);

  sub_1000E0858(v12, type metadata accessor for FetchRecoveryRecordsRequest);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000DE2D8()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_1000DE7E8;
  }

  else
  {
    v2 = sub_1000DE448;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DE448()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 288);
  sub_100012050(*(v0 + 440), *(v0 + 384));
  swift_storeEnumTagMultiPayload();
  sub_1002CA150((v0 + 16));
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__notificationManager, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8((v0 + 224), *(v0 + 248));
  sub_1002D2E28(v0 + 16, sub_1000DF950, 0);
  sub_10000839C((v0 + 224));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully finalize setup", v8, 2u);
  }

  v9 = *(v0 + 544);

  if (v9)
  {
    [*(v0 + 544) updateTaskResultWithError:0];
  }

  v10 = *(v0 + 632);
  v11 = *(v0 + 624);
  v12 = *(v0 + 544);
  v22 = *(v0 + 440);
  v20 = *(v0 + 456);
  v21 = *(v0 + 400);
  v13 = *(v0 + 384);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v16 = *(v0 + 328);
  v17 = *(v0 + 312);
  (*(v15 + 16))(v14, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v16);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v14, v16);
  swift_getObjectType();
  sub_100246FA8(v12);
  swift_unknownObjectRelease();
  v17(0);

  sub_1000C5460(v0 + 16);
  sub_1000E0858(v13, type metadata accessor for TrustedContactUserNotification);
  sub_1000E0858(v20, type metadata accessor for FetchRecoveryRecordsRequest);
  sub_1000E0858(v21, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000E0858(v22, type metadata accessor for CustodianRecord);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000DE7E8()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 440);
  v3 = *(v0 + 400);

  sub_1000E0858(v3, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000E0858(v2, type metadata accessor for CustodianRecord);

  v4 = *(v0 + 656);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred during finalize setup after retry: %@", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
  }

  v11 = *(v0 + 544);

  if (v11)
  {
    v12 = *(v0 + 544);
    v13 = _convertErrorToNSError(_:)();
    [v12 updateTaskResultWithError:v13];
  }

  v14 = *(v0 + 544);
  v15 = *(v0 + 456);
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  (*(v17 + 16))(v16, *(v0 + 288) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  swift_getObjectType();
  sub_100246FA8(v14);
  swift_unknownObjectRelease();
  swift_errorRetain();
  v19(v4);

  sub_1000E0858(v15, type metadata accessor for FetchRecoveryRecordsRequest);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000DEB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return _swift_task_switch(sub_1000DEB64, 0, 0);
}

uint64_t sub_1000DEB64()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduling finalize setup", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[4];

  v7 = *(v6 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow);
  v8 = *(v6 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow + 8);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1000DECE8;
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[3];

  return sub_1000DEDDC(v14, v12, v7, v8, v13, v10, v11, v5);
}

uint64_t sub_1000DECE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000DEDDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = a8;
  *(v9 + 152) = v8;
  *(v9 + 128) = a6;
  *(v9 + 136) = a7;
  *(v9 + 256) = a4;
  *(v9 + 112) = a3;
  *(v9 + 120) = a5;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  v10 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  *(v9 + 160) = v10;
  *(v9 + 168) = *(v10 - 8);
  *(v9 + 176) = swift_task_alloc();
  v11 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v9 + 184) = v11;
  *(v9 + 192) = *(v11 - 8);
  *(v9 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1000DEF20, 0, 0);
}

uint64_t sub_1000DEF20()
{
  v1 = objc_opt_self();
  *(v0 + 208) = v1;
  if ([v1 shouldSkipIdMSFinalizeCustodian])
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🚨 TCS IdMS Endpoint Testing: SkipIdMSFinalizeCustodian. Custodian setup skipped.", v5, 2u);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 184);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);
    (*(v8 + 16))(v7, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter, v9);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v7, v9);
    *(v0 + 216) = *(v0 + 80);
    v14 = kAAAnalyticsEventCustodianSetupFinalizeSetupWithServer;
    sub_100012004();

    v15 = v14;

    v16 = sub_100245D38(v15, v13, v12, v11, v10);
    *(v0 + 224) = v16;
    if (v16)
    {
      v17 = *(v0 + 256);
      v18 = *(v0 + 112);
      v19 = v16;
      sub_100245E08(v18, v17 & 1);
    }

    sub_100257274(v15);
    v20 = *(v0 + 152);
    v21 = *(v0 + 96);
    v22 = swift_task_alloc();
    *(v0 + 232) = v22;
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *v23 = v0;
    v23[1] = sub_1000DF320;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, 0, 0, 0xD000000000000035, 0x800000010032E360, sub_1000E08B8, v22, &type metadata for () + 8);
  }
}

uint64_t sub_1000DF320()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1000DF5F8;
  }

  else
  {

    v2 = sub_1000DF43C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DF43C()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    [*(v0 + 224) updateTaskResultWithError:0];
    swift_getObjectType();
    v2 = v1;
    sub_100246FA8(v1);
  }

  v3 = *(v0 + 208);
  swift_unknownObjectRelease();
  [objc_opt_self() postRecoveryContactChangedNotification];
  if (([v3 simulate2FAFA] & 1) == 0 && (*(*(v0 + 104) + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) & 1) == 0)
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    (*(v5 + 16))(v4, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__healthCheckScheduler, v6);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_1000080F8((v0 + 16), v7);
    (*(v8 + 16))(sub_1000E0578, 0, v7, v8);
    sub_10000839C((v0 + 16));
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000DF5F8()
{

  v1 = v0[28];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  if (v1)
  {
    v2 = v0[28];
    v3 = v2;
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    [v3 updateTaskResultWithError:v4];

    swift_getObjectType();
    v5 = v3;
    sub_100246FA8(v2);
  }

  else
  {
    swift_errorRetain();
    v5 = 0;
  }

  swift_willThrow();
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000DF754(uint64_t a1)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error occurred during finalize setup: %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 ak_isAuthenticationErrorWithCode:-7026];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    v12 = v8 ^ 1;
    *(v11 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v9, v10, "Should retry finalize setup: %{BOOL}d", v11, 8u);
  }

  else
  {

    return v8 ^ 1;
  }

  return v12;
}

void sub_1000DF950(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Accepted banner notification posted", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error occured posting accept banner notification %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

LABEL_10:

    return;
  }
}

uint64_t sub_1000DFBA0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__requestManager;
  v2 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__storageController;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__notificationManager;
  v6 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__healthCheckScheduler;
  v8 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__accountStore;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__analyticsReporter;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  sub_100008D3C(v0 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler_retrySchedulerDelay, &qword_1003DCB30, &unk_10033F030);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonSetupFinalizationHandler(uint64_t a1)
{
  result = qword_1003DC920;
  if (!qword_1003DC920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DFE38(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DC930, &unk_1003D9800, &unk_10033EFB0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003DC950, &qword_1003D9A10, &qword_100343D80);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000E0088()
{
  result = qword_1003DCB38;
  if (!qword_1003DCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCB38);
  }

  return result;
}

uint64_t sub_1000E00DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-1] - v8;
  v10 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-1] - v12;
  (*(v11 + 16))(&v18[-1] - v12, a2 + OBJC_IVAR____TtC13appleaccountd30DaemonSetupFinalizationHandler__requestManager, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  sub_1000080F8(v18, v18[3]);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  sub_100119EF0(a3, sub_1000E0954, v15);

  return sub_10000839C(v18);
}

uint64_t sub_1000E0320(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA88);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = _convertErrorToNSError(_:)();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finalizing custodianship: %@", v4, 0xCu);
      sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Custodian setup complete!", v11, 2u);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1000E0578(uint64_t a1)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error performing health checks after finalizing setup: %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }
}

uint64_t sub_1000E06E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000082A8;

  return sub_1000E09E0(v2);
}

uint64_t sub_1000E077C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000DEB38(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000E0858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E08C0()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000E0954(uint64_t a1)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_1000E0320(a1);
}

uint64_t sub_1000E09E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000E0AA0, 0, 0);
}

uint64_t sub_1000E0AA0()
{
  v1 = *(v0 + 16);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1000E0B94;

  return sub_10015FEF4(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_1000E0B94()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10002059C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000E0D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000E0ED0, 0, 0);
}

uint64_t sub_1000E0ED0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v32 = 0;
    v8 = 0;
  }

  v0[25] = v8;
  v10 = v0[20];
  v9 = v0[21];
  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[12];
  sub_10000839C(v0 + 2);
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v0[26] = v16;
  (*(v10 + 8))(v9, v11);
  (*(v13 + 16))(v12, v15 + OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v12, v14);
  v0[27] = v0[10];
  v17 = kAAAnalyticsEventCustodianSetupProcessSharedRecoveryInfo;
  swift_retain_n();

  v18 = v17;
  if (v8)
  {

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 analyticsEventWithName:v17 altDSID:v19 flowID:v21];
  v0[28] = v22;

  if (v22)
  {
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v23 = v22;
    v24 = NSString.init(stringLiteral:)();
    [v23 setObject:0 forKeyedSubscript:v24];
  }

  sub_100257274(v17);
  v25 = swift_task_alloc();
  v0[29] = v25;
  *v25 = v0;
  v25[1] = sub_1000E1390;
  v26 = v0[14];
  v27 = v0[15];
  v29 = v0[12];
  v28 = v0[13];

  return sub_1000E17C0(v25, v28, v29, v26, v27, v32, v8, v31);
}

uint64_t sub_1000E1390()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_1000E1508;
  }

  else
  {

    v2 = sub_1000E1698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E1508()
{
  v1 = v0[28];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  if (v1)
  {
    v2 = v0[28];
    v3 = v0[13];
    v4 = v2;
    swift_errorRetain();
    v5 = _convertErrorToNSError(_:)();
    [v4 updateTaskResultWithError:v5];

    sub_100245E08(*(v3 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow), *(v3 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow + 8));
    swift_getObjectType();
    v6 = v4;
    sub_100246FA8(v2);
  }

  else
  {
    swift_errorRetain();
  }

  v7 = v0[28];
  swift_willThrow();

  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000E1698()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 104);
  if (v1)
  {
    [*(v0 + 224) updateTaskResultWithError:0];
    sub_100245E08(*(v2 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow), *(v2 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow + 8));
    v3 = v1;

    swift_getObjectType();
    v4 = v3;
    sub_100246FA8(v1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E17C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1914, 0, 0);
}

uint64_t sub_1000E1914()
{
  v34 = v0;
  if (qword_1003D7EF0 != -1)
  {
    swift_once();
  }

  v1 = v0[10] + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo;
  v2 = (qword_1003FAA20 + 40);
  v3 = *(qword_1003FAA20 + 16) + 1;
  while (--v3)
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    v6 = (v1 + *(type metadata accessor for CloudShareInfo(0) + 20));
    if (v5 != *v6 || v4 != v6[1])
    {
      v2 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v8 = v0[25];
    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[17];
    v12 = v0[10];
    v13 = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
    v0[26] = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
    v14 = *(v10 + 16);
    v0[27] = v14;
    v0[28] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v8, v12 + v13, v9);
    v15 = swift_task_alloc();
    v0[29] = v15;
    *v15 = v0;
    v15[1] = sub_1000E1CC8;
    v16 = v0[25];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];
    v21 = v0[12];

    return sub_1000E305C(v16, v21, v19, v20, v17, v18, v11);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAA88);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    v28 = (v1 + *(type metadata accessor for CloudShareInfo(0) + 20));
    v29 = *v28;
    v30 = v28[1];

    v31 = sub_10021145C(v29, v30, &v33);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Invalid container ID received %s", v26, 0xCu);
    sub_10000839C(v27);
  }

  type metadata accessor for AACustodianError(0);
  v0[9] = -7056;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_1000E1CC8()
{
  v2 = *v1;
  v2[30] = v0;

  v3 = v2[25];
  v4 = v2[22];
  v5 = v2[21];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = sub_1000E2FD0;
  }

  else
  {
    v2[31] = v7;
    v2[32] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = sub_1000E1E48;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000E1E48()
{
  if ([objc_opt_self() isSimulateUnhealthyCustodianEnabled])
  {
    type metadata accessor for AACustodianError(0);
    v0[7] = -7059;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }

  else
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[14];
    v10 = v0[11];
    v23 = v0[10];
    v11 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter;
    v0[33] = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter;
    v12 = *(v4 + 16);
    v0[34] = v12;
    v0[35] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v3, v10 + v11, v6);
    Dependency.wrappedValue.getter();
    v13 = *(v4 + 8);
    v0[36] = v13;
    v0[37] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v3, v6);
    v14 = v0[2];
    v0[38] = v14;
    v15 = swift_allocObject();
    v0[39] = v15;
    v15[2] = v9;
    v15[3] = v7;
    v15[4] = v8;
    v15[5] = v5;
    v16 = swift_task_alloc();
    v0[40] = v16;
    *(v16 + 16) = v10;
    *(v16 + 24) = v23;
    v17 = type metadata accessor for ExponentialRetryScheduler();
    v0[41] = v17;

    v18 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
    v0[42] = v18;
    v19 = swift_allocObject();
    v0[43] = v19;
    *(v19 + 16) = 0;
    v0[3] = v18;
    v20 = swift_task_alloc();
    v0[44] = v20;
    v20[2] = v19;
    v20[3] = sub_1000E46A8;
    v20[4] = v15;
    v20[5] = 0;
    v20[6] = 0;
    v20[7] = &unk_100340C90;
    v20[8] = v16;
    v20[9] = v14;
    v20[10] = 1;
    v21 = swift_allocObject();
    v0[45] = v21;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v22 = swift_task_alloc();
    v0[46] = v22;
    *v22 = v0;
    v22[1] = sub_1000E21CC;

    return RetryScheduler.schedule<A>(_:shouldRetry:)(v22, &unk_10033F200, v20, sub_10005237C, v21, v17, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
  }
}

uint64_t sub_1000E21CC()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1000E29F0;
  }

  else
  {

    v2 = sub_1000E22F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E22F0()
{
  v69 = v0;
  v1 = v0[42];
  v2 = v0[10];

  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_finalizeSetup) == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA88);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v65 = v0[31];
      v6 = v0[27];
      v7 = v0[26];
      v8 = v0[24];
      v9 = v0[21];
      v10 = v0[10];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v68 = v12;
      *v11 = 136315138;
      v6(v8, v10 + v7, v9);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v65(v8, v9);
      v16 = sub_10021145C(v13, v15, &v68);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "This is a setup flow, let's finalize %s with owner.", v11, 0xCu);
      sub_10000839C(v12);
    }

    v59 = v0[36];
    v17 = v0[34];
    v18 = v0[33];
    v19 = v0[23];
    v20 = v0[20];
    v21 = v0[18];
    v63 = v0[17];
    v22 = v0[15];
    v62 = v0[16];
    v60 = v0[14];
    v66 = v0[13];
    v23 = v0[11];
    v64 = v0[12];
    v24 = v0[10];
    (v0[27])(v19, v24 + v0[26], v0[21]);
    v25 = v24 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
    v26 = *(v24 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow);
    v61 = *(v25 + 8);
    v17(v20, v23 + v18, v21);
    Dependency.wrappedValue.getter();
    v59(v20, v21);
    v27 = v0[4];
    v0[48] = v27;
    v28 = swift_allocObject();
    v0[49] = v28;
    v28[2] = v60;
    v28[3] = v22;
    v28[4] = v62;
    v28[5] = v63;
    v29 = swift_task_alloc();
    v0[50] = v29;
    *(v29 + 16) = v23;
    *(v29 + 24) = v19;
    *(v29 + 32) = v64;
    *(v29 + 40) = v66;
    *(v29 + 48) = v26;
    *(v29 + 56) = v61;

    v30 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
    v0[51] = v30;
    v31 = swift_allocObject();
    v0[52] = v31;
    *(v31 + 16) = 0;
    v0[5] = v30;
    v32 = swift_task_alloc();
    v0[53] = v32;
    v32[2] = v31;
    v32[3] = sub_1000E4C58;
    v32[4] = v28;
    v32[5] = 0;
    v32[6] = 0;
    v32[7] = &unk_100340CA8;
    v32[8] = v29;
    v32[9] = v27;
    v32[10] = 1;
    v33 = swift_allocObject();
    v0[54] = v33;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v34 = swift_task_alloc();
    v0[55] = v34;
    *v34 = v0;
    v34[1] = sub_1000E2AC4;
    v35 = v0[41];

    return RetryScheduler.schedule<A>(_:shouldRetry:)(v34, &unk_100340CB0, v32, sub_10005B8F4, v33, v35, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA88);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v67 = v0[31];
      v39 = v0[27];
      v40 = v0[26];
      v41 = v0[24];
      v42 = v0[21];
      v43 = v0[10];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v44 = 136315138;
      v39(v41, v43 + v40, v42);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v67(v41, v42);
      v49 = sub_10021145C(v46, v48, &v68);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v37, v38, "Share for %s was accepted successfully.", v44, 0xCu);
      sub_10000839C(v45);
    }

    v50 = v0[31];
    v51 = v0[24];
    v52 = v0[21];
    v54 = v0[16];
    v53 = v0[17];
    v56 = v0[14];
    v55 = v0[15];
    (v0[27])(v51, v0[10] + v0[26], v52);
    sub_1000E4774(v51, v54, v53, v56, v55);
    v50(v51, v52);

    v57 = v0[1];

    return v57();
  }
}

uint64_t sub_1000E29F0()
{
  v1 = *(v0 + 336);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E2AC4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_1000E2ECC;
  }

  else
  {

    v2 = sub_1000E2BE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E2BE8()
{
  v30 = v0;
  v1 = v0[51];
  v2 = v0[31];
  v3 = v0[23];
  v4 = v0[21];

  swift_unknownObjectRelease();

  v2(v3, v4);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v28 = v0[31];
    v8 = v0[27];
    v9 = v0[26];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    v8(v10, v12 + v9, v11);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v28(v10, v11);
    v18 = sub_10021145C(v15, v17, &v29);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Share for %s was accepted successfully.", v13, 0xCu);
    sub_10000839C(v14);
  }

  v19 = v0[31];
  v20 = v0[24];
  v21 = v0[21];
  v23 = v0[16];
  v22 = v0[17];
  v25 = v0[14];
  v24 = v0[15];
  (v0[27])(v20, v0[10] + v0[26], v21);
  sub_1000E4774(v20, v23, v22, v25, v24);
  v19(v20, v21);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000E2ECC()
{
  v1 = v0[51];
  v2 = v0[31];
  v3 = v0[23];
  v4 = v0[21];

  swift_unknownObjectRelease();

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000E2FD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[15] = a7;
  v8[16] = v7;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  v9 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for CustodianshipInfoRecord(0);
  v8[21] = swift_task_alloc();
  v8[22] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3194, 0, 0);
}

uint64_t sub_1000E3194()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[15];
  v18 = v0[14];
  v19 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  *(v1 + v2[5]) = 1;
  v11 = v1 + v2[6];
  *v11 = 2;
  *(v11 + 8) = 0;
  *(v1 + v2[7]) = 1;
  v12 = (v1 + v2[8]);
  *v12 = v8;
  v12[1] = v7;
  v13 = (v1 + v2[9]);
  *v13 = v18;
  v13[1] = v6;
  (*(v4 + 16))(v3, v19 + OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__custodianStorage, v5);

  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v3, v5);
  sub_1000080F8(v0 + 2, v0[5]);
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_1000E3354;
  v15 = v0[23];
  v16 = v0[21];

  return sub_1000268EC(v16, v15);
}

uint64_t sub_1000E3354()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1000E3770;
  }

  else
  {
    v2 = sub_1000E3468;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E3468()
{
  v20 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[10];
  v3 = v0[11];
  sub_10000839C(v0 + 2);
  v5 = (v2 + *(v1 + 24));
  v6 = *v5 == v4 && v5[1] == v3;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = v0[21];
    sub_1000E4E98(v0[23], type metadata accessor for FetchRecoveryRecordsRequest);
    sub_1000E4E98(v7, type metadata accessor for CustodianshipInfoRecord);

    v8 = v0[1];
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA88);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[10];
      v12 = v0[11];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10021145C(v13, v12, &v19);
      _os_log_impl(&_mh_execute_header, v10, v11, "Custodian record is received from unknown sender: %s", v14, 0xCu);
      sub_10000839C(v15);
    }

    v16 = v0[23];
    v17 = v0[21];
    type metadata accessor for AACustodianError(0);
    v0[8] = -7075;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1000E4E98(v16, type metadata accessor for FetchRecoveryRecordsRequest);
    sub_1000E4E98(v17, type metadata accessor for CustodianshipInfoRecord);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_1000E3770()
{
  sub_1000E4E98(v0[23], type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10000839C(v0 + 2);

  v1 = v0[1];

  return v1();
}

id sub_1000E3818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = kAAAnalyticsEventCustodianSetupAcceptSharedRecoveryInfo;
  if (a2)
  {
    v5 = kAAAnalyticsEventCustodianSetupAcceptSharedRecoveryInfo;

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = kAAAnalyticsEventCustodianSetupAcceptSharedRecoveryInfo;

    v6 = 0;
  }

  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 analyticsEventWithName:v4 altDSID:v6 flowID:v9];

  return v10;
}

uint64_t sub_1000E3904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  type metadata accessor for CloudShareInfo(0);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3994, 0, 0);
}

uint64_t sub_1000E3994()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_100040738(v0[7] + 56, (v0 + 2));
  sub_1000080F8(v0 + 2, v0[5]);
  sub_1000E4E34(v2 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000E3A74;
  v4 = v0[9];

  return sub_10030CA20(v4, 1);
}

uint64_t sub_1000E3A74()
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = v0;

  sub_1000E4E98(v2, type metadata accessor for CloudShareInfo);
  if (v0)
  {
    v3 = sub_1000E3C28;
  }

  else
  {
    v3 = sub_1000E3BB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E3BB8()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E3C28()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E3C98()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));
  v1 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd18DaemonShareHandler__analyticsReporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonShareHandler(uint64_t a1)
{
  result = qword_1003DCB80;
  if (!qword_1003DCB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E3E3C(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000E3F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);
    (*(v5 + 16))(v8, a2, v4);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v14 = 136315394;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_10021145C(v16, v18, &v31);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = _convertErrorToNSError(_:)();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed performing initial health check for %s. Error: %@", v14, 0x16u);
      sub_100083380(v15);

      sub_10000839C(v30);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    (*(v5 + 16))(v10, a2, v4);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v5 + 8))(v10, v4);
      v29 = sub_10021145C(v26, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Completed initial health check for %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

id sub_1000E4438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v8 = kAAAnalyticsEventCustodianSetupSendFinalizeSetupMessage;

  v9 = v8;

  return sub_100245D38(v9, a1, a2, a3, a4);
}

uint64_t sub_1000E44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 64) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  return _swift_task_switch(sub_1000E44FC, 0, 0);
}

uint64_t sub_1000E44FC()
{
  v1 = *(v0 + 64);
  sub_1000080F8((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1000E45B0;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_1000E98AC(v6, v5, v3, v4, v1 & 1);
}

uint64_t sub_1000E45B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E46B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_1000E3904(a1, v5, v4);
}

uint64_t sub_1000E4774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v36 = v12;
  v37 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA88);
  v34 = *(v10 + 16);
  v34(v14, a1, v9);
  v16 = Logger.logObject.getter();
  v39 = v10;
  v17 = v16;
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v9;
    v20 = v19;
    v32 = swift_slowAlloc();
    v33 = a5;
    v40 = v32;
    *v20 = 136315138;
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v39 + 8))(v14, v38);
    v24 = sub_10021145C(v21, v23, &v40);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting initial health check for %s", v20, 0xCu);
    sub_10000839C(v32);
    a5 = v33;

    v9 = v38;
  }

  else
  {

    (*(v39 + 8))(v14, v9);
  }

  type metadata accessor for CustodianHealthCheck(0);
  swift_allocObject();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E55D0, &unk_100340CC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v25 = v37;
  v34(v37, a1, v9);
  v26 = v39;
  v27 = v9;
  v28 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v28, v25, v27);
  sub_100072B90(a1, a2, a3, v35, a5, sub_1000E4DC4, v29);
}

uint64_t sub_1000E4C18()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000E4C64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EF88;

  return sub_1000E44D0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000E4D3C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1000E4DC4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000E3F94(a1, v4);
}

uint64_t sub_1000E4E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudShareInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_1000E4F00(void *a1)
{
  v4 = type metadata accessor for UUID();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003DCDF0, &qword_100340D90);
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v21 = a1;
  v22 = v1;
  v10 = v1 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow;
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_1000080F8(a1, a1[3]);
  sub_1000E5914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CustodianInvitationMessage(0);
    v16 = v22;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v20;
    v27 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v7;
    *(v22 + 16) = v28;
    v26 = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v11;
    v15 = v22;
    (*(v19 + 32))(v22 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v6, v4);
    type metadata accessor for AnalyticsContextType(0);
    v25 = 2;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v15;
    v17 = v23;
    LOBYTE(v15) = v24;
    (*(v13 + 8))(v9, v12);
    v18 = v16 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow;
    *v18 = v17;
    *(v18 + 8) = v15;
  }

  sub_10000839C(v21);
  return v16;
}

uint64_t sub_1000E52D8()
{
  v1 = 0x6169646F74737563;
  if (*v0 != 1)
  {
    v1 = 2003790950;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000E532C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E5B70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E5360(uint64_t a1)
{
  v2 = sub_1000E5914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E539C(uint64_t a1)
{
  v2 = sub_1000E5914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E53D8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianInvitationMessage(uint64_t a1)
{
  result = qword_1003DCD18;
  if (!qword_1003DCD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E54C8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E556C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v15[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003DCE10, &qword_100340D98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_1000080F8(a1, a1[3]);
  sub_1000E5914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = *(v2 + 16);
  v19 = 0;
  sub_1000E59BC();
  v11 = v15[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v12 = v15[0];
    (*(v15[0] + 16))(v6, v2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v4);
    v18 = 1;
    sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v12 + 8))(v6, v4);
    v13 = *(v2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow + 8);
    v15[2] = *(v2 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow);
    v16 = v13;
    v17 = 2;
    type metadata accessor for AnalyticsContextType(0);
    sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

_BYTE *sub_1000E5894@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CustodianInvitationMessage(0);
  v5 = swift_allocObject();
  result = sub_1000E4F00(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1000E5914()
{
  result = qword_1003DCDF8;
  if (!qword_1003DCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCDF8);
  }

  return result;
}

unint64_t sub_1000E5968()
{
  result = qword_1003DCE00;
  if (!qword_1003DCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE00);
  }

  return result;
}

unint64_t sub_1000E59BC()
{
  result = qword_1003DCE18;
  if (!qword_1003DCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE18);
  }

  return result;
}

uint64_t sub_1000E5A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E5A6C()
{
  result = qword_1003DCE28;
  if (!qword_1003DCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE28);
  }

  return result;
}

unint64_t sub_1000E5AC4()
{
  result = qword_1003DCE30;
  if (!qword_1003DCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE30);
  }

  return result;
}

unint64_t sub_1000E5B1C()
{
  result = qword_1003DCE38;
  if (!qword_1003DCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCE38);
  }

  return result;
}

uint64_t sub_1000E5B70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000E5C8C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&qword_1003DCF80, &qword_100340FB8);
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason;
  *(v1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason) = 11;
  v22 = v1;
  v23 = a1;
  v10 = v1 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_1000080F8(a1, a1[3]);
  sub_1000E6870();
  v11 = v21;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    v14 = v22;
    type metadata accessor for CustodianInvitationResponseMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v9;
    v12 = v20;
    v26 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v22;
    *(v22 + 16) = v24;
    LOBYTE(v24) = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 32))(v14 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v5, v3);
    LOBYTE(v24) = 2;
    *(v14 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v26 = 3;
    sub_1000E68C4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v14 + v21) = v24;
    type metadata accessor for AnalyticsContextType(0);
    v26 = 4;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = v24;
    v16 = v25;
    (*(v12 + 8))(v8, v6);
    v17 = v14 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
    *v17 = v15;
    *(v17 + 8) = v16;
  }

  sub_10000839C(v23);
  return v14;
}

uint64_t sub_1000E614C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6465747065636361;
  v4 = 0x6E6F73616572;
  if (v1 != 3)
  {
    v4 = 2003790950;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6169646F74737563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E61DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E6BC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E6210(uint64_t a1)
{
  v2 = sub_1000E6870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E624C(uint64_t a1)
{
  v2 = sub_1000E6870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E6288()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianInvitationResponseMessage(uint64_t a1)
{
  result = qword_1003DCE68;
  if (!qword_1003DCE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E6378(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E6430(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v16[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003DCF98, &qword_100340FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  sub_1000080F8(a1, a1[3]);
  sub_1000E6870();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = *(v2 + 16);
  v19 = 0;
  sub_1000E59BC();
  v11 = v16[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v13 = v8;
  v14 = v16[0];
  (*(v16[0] + 16))(v6, v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v4);
  LOBYTE(v17) = 1;
  sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v14 + 8))(v6, v4);
  LOBYTE(v17) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v17) = *(v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason);
  v19 = 3;
  sub_1000E6918();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow + 8);
  v17 = *(v2 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow);
  v18 = v15;
  v19 = 4;
  type metadata accessor for AnalyticsContextType(0);
  sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v13 + 8))(v10, 0);
}

uint64_t sub_1000E67F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CustodianInvitationResponseMessage(0);
  v5 = swift_allocObject();
  result = sub_1000E5C8C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1000E6870()
{
  result = qword_1003DCF88;
  if (!qword_1003DCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCF88);
  }

  return result;
}

unint64_t sub_1000E68C4()
{
  result = qword_1003DCF90;
  if (!qword_1003DCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCF90);
  }

  return result;
}

unint64_t sub_1000E6918()
{
  result = qword_1003DCFA0;
  if (!qword_1003DCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000E6AC0()
{
  result = qword_1003DCFA8;
  if (!qword_1003DCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFA8);
  }

  return result;
}

unint64_t sub_1000E6B18()
{
  result = qword_1003DCFB0;
  if (!qword_1003DCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFB0);
  }

  return result;
}

unint64_t sub_1000E6B70()
{
  result = qword_1003DCFB8;
  if (!qword_1003DCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFB8);
  }

  return result;
}

uint64_t sub_1000E6BC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000E6D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000E6E0C(uint64_t a1)
{
  v2 = sub_1000E7568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E6E48(uint64_t a1)
{
  v2 = sub_1000E7568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E6E94(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003DD098, &qword_1003412C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000080F8(a1, a1[3]);
  sub_1000E7568();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = *(v2 + 16);
  sub_1000E59BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E6FE0(void *a1)
{
  v4 = sub_100005814(&qword_1003DD088, &qword_1003412C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000080F8(a1, a1[3]);
  sub_1000E7568();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CustodianMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v10;
  }

  sub_10000839C(a1);
  return v1;
}

uint64_t sub_1000E7184@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CustodianMessage();
  v5 = swift_allocObject();
  result = sub_1000E6FE0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int sub_1000E723C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003413E8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000E72C4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003413E8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1000E7310@<X0>(Swift::Int *a1@<X0>, appleaccountd::MessageType_optional *a2@<X8>)
{
  result = _s13appleaccountd11MessageTypeO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t _s13appleaccountd11MessageTypeO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 5;
  }

  else
  {
    return (0x4050503020100uLL >> (8 * a1));
  }
}

unint64_t sub_1000E74E0()
{
  result = qword_1003DCFC0;
  if (!qword_1003DCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DCFC0);
  }

  return result;
}

unint64_t sub_1000E7568()
{
  result = qword_1003DD090;
  if (!qword_1003DD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD090);
  }

  return result;
}

unint64_t sub_1000E75BC()
{
  result = qword_1003DD0A0;
  if (!qword_1003DD0A0)
  {
    type metadata accessor for AnalyticsContextType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0A0);
  }

  return result;
}

unint64_t sub_1000E7614()
{
  result = qword_1003DD0A8;
  if (!qword_1003DD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0A8);
  }

  return result;
}

unint64_t sub_1000E767C()
{
  result = qword_1003DD0B0;
  if (!qword_1003DD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0B0);
  }

  return result;
}

unint64_t sub_1000E76D4()
{
  result = qword_1003DD0B8;
  if (!qword_1003DD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0B8);
  }

  return result;
}

unint64_t sub_1000E772C()
{
  result = qword_1003DD0C0;
  if (!qword_1003DD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD0C0);
  }

  return result;
}

_BYTE *sub_1000E7780(void *a1)
{
  v3 = type metadata accessor for UUID();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&qword_1003DD1E8, &qword_1003414E0);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason;
  *(v1 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = 11;
  v23 = a1;
  v24 = v1;
  v10 = v1 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_1000080F8(a1, a1[3]);
  sub_1000E8268();
  v11 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    type metadata accessor for CustodianRemovedMessage(0);
    v14 = v24;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v9;
    v12 = v21;
    v31 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v6;
    v14 = v24;
    *(v24 + 16) = v32;
    v30 = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 32))(v14 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v5, v3);
    v28 = 2;
    sub_1000E68C4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v14 + v22) = v29;
    type metadata accessor for AnalyticsContextType(0);
    v27 = 3;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v25;
    v17 = v26;
    (*(v12 + 8))(v8, v13);
    v18 = v14 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
    *v18 = v16;
    *(v18 + 8) = v17;
  }

  sub_10000839C(v23);
  return v14;
}

uint64_t sub_1000E7BB0()
{
  v1 = 1701869940;
  v2 = 0x6E6F73616572;
  if (*v0 != 2)
  {
    v2 = 2003790950;
  }

  if (*v0)
  {
    v1 = 0x6169646F74737563;
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

uint64_t sub_1000E7C20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E83D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E7C48(uint64_t a1)
{
  v2 = sub_1000E8268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E7C84(uint64_t a1)
{
  v2 = sub_1000E8268();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E7CC0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianRemovedMessage(uint64_t a1)
{
  result = qword_1003DD0F0;
  if (!qword_1003DD0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E7DB0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E7E60(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DD1F8, &qword_1003414E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  sub_1000080F8(a1, a1[3]);
  sub_1000E8268();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = *(v3 + 16);
  v25 = 0;
  sub_1000E59BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v13 = v9;
  v15 = v17;
  v14 = v18;
  (*(v17 + 16))(v7, v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v18);
  v24 = 1;
  sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v15 + 8))(v7, v14);
  v23 = *(v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason);
  v22 = 2;
  sub_1000E6918();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v16 = *(v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow + 8);
  v19 = *(v3 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow);
  v20 = v16;
  v21 = 3;
  type metadata accessor for AnalyticsContextType(0);
  sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v13 + 8))(v11, v8);
}

_BYTE *sub_1000E81E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CustodianRemovedMessage(0);
  v5 = swift_allocObject();
  result = sub_1000E7780(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1000E8268()
{
  result = qword_1003DD1F0;
  if (!qword_1003DD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD1F0);
  }

  return result;
}

unint64_t sub_1000E82D0()
{
  result = qword_1003DD200;
  if (!qword_1003DD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD200);
  }

  return result;
}

unint64_t sub_1000E8328()
{
  result = qword_1003DD208;
  if (!qword_1003DD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD208);
  }

  return result;
}

unint64_t sub_1000E8380()
{
  result = qword_1003DD210;
  if (!qword_1003DD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD210);
  }

  return result;
}

uint64_t sub_1000E83D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
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

_BYTE *sub_1000E8538(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DD338, &qword_1003416E8);
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  *(v3 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 0;
  v11 = v3 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1[3];
  v24 = a1;
  sub_1000080F8(a1, v12);
  sub_1000E8FFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for FinalizeCustodianSetupMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v23;
    v30 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v8;
    *(v3 + 16) = v31;
    v29 = 1;
    sub_1000E5A10(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v13;
    (*(v22 + 32))(v3 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v7, v5);
    type metadata accessor for AnalyticsContextType(0);
    v28 = 3;
    sub_1000E5A10(&qword_1003DCE08, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v26;
    v18 = v3 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
    *v18 = v25;
    *(v18 + 8) = v17;
    v19 = OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess;
    *(v3 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 0;
    v27 = 2;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v15 + 8))(v10, v14);
    *(v3 + v19) = v20 & 1;
  }

  sub_10000839C(v24);
  return v3;
}

unint64_t sub_1000E896C()
{
  v1 = 1701869940;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 2003790950;
  }

  if (*v0)
  {
    v1 = 0x6169646F74737563;
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

uint64_t sub_1000E89E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E9168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E8A0C(uint64_t a1)
{
  v2 = sub_1000E8FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8A48(uint64_t a1)
{
  v2 = sub_1000E8FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8A84()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinalizeCustodianSetupMessage(uint64_t a1)
{
  result = qword_1003DD240;
  if (!qword_1003DD240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E8B74(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E8C24(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v15[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003DD348, &qword_1003416F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_1000080F8(a1, a1[3]);
  sub_1000E8FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *(v2 + 16);
  v20 = 0;
  sub_1000E59BC();
  v11 = v15[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v12 = v15[0];
    (*(v15[0] + 16))(v6, v2 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v4);
    v19 = 1;
    sub_1000E5A10(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v12 + 8))(v6, v4);
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v2 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow + 8);
    v15[2] = *(v2 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow);
    v16 = v13;
    v17 = 3;
    type metadata accessor for AnalyticsContextType(0);
    sub_1000E5A10(&qword_1003DCE20, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

_BYTE *sub_1000E8F7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FinalizeCustodianSetupMessage(0);
  v5 = swift_allocObject();
  result = sub_1000E8538(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1000E8FFC()
{
  result = qword_1003DD340;
  if (!qword_1003DD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD340);
  }

  return result;
}

unint64_t sub_1000E9064()
{
  result = qword_1003DD350;
  if (!qword_1003DD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD350);
  }

  return result;
}

unint64_t sub_1000E90BC()
{
  result = qword_1003DD358;
  if (!qword_1003DD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD358);
  }

  return result;
}

unint64_t sub_1000E9114()
{
  result = qword_1003DD360;
  if (!qword_1003DD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD360);
  }

  return result;
}

uint64_t sub_1000E9168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010032E510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
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

uint64_t sub_1000E9388(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000E9450, 0, 0);
}

uint64_t sub_1000E9450()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = type metadata accessor for CustodianRecord(0);
  (*(v2 + 16))(v1, v6 + *(v7 + 20), v3);
  type metadata accessor for CustodianInvitationMessage(0);
  v8 = swift_allocObject();
  v9 = v8 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v8 + 16) = 0;
  (*(v2 + 32))(v8 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_custodianID, v1, v3);
  v10 = v8 + OBJC_IVAR____TtC13appleaccountd26CustodianInvitationMessage_flow;
  *v10 = v5;
  *(v10 + 8) = v4 & 1;
  v11 = sub_1000E9D30(*(v6 + *(v7 + 24)), *(v6 + *(v7 + 24) + 8));
  sub_100262B4C(v8, v11, 0xD000000000000022, 0x800000010032E5C0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000E9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 72) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = type metadata accessor for ShareMessageContext(0);
  *(v6 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1000E96A0, 0, 0);
}

uint64_t sub_1000E96A0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  sub_1000E9C48(*(v0 + 16), v1, type metadata accessor for ShareMessageContext);
  type metadata accessor for ShareMessage(0);
  v7 = swift_allocObject();
  v8 = v7 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v7 + 16) = 2;
  v9 = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v7 + v9, v1, v10);
  sub_1000E9C48(v1 + *(v2 + 20), v7 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, type metadata accessor for CloudShareInfo);
  LOBYTE(v2) = *(v1 + *(v2 + 24));
  sub_1000E9CB0(v1);
  *(v7 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_finalizeSetup) = v2;
  v11 = v7 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
  *v11 = v5;
  *(v11 + 8) = v3 & 1;
  v12 = sub_1000E9D30(v6, v4);
  sub_10026329C(v7, v12, 0xD00000000000001ALL, 0x800000010032E5A0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000E98AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1000E9978, 0, 0);
}

uint64_t sub_1000E9978()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 80);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  (*(v2 + 16))(v1, *(v0 + 16), v3);
  type metadata accessor for FinalizeCustodianSetupMessage(0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 0;
  v9 = v8 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v8 + 16) = 3;
  (*(v2 + 32))(v8 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v1, v3);
  v10 = v8 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
  *v10 = v6;
  *(v10 + 8) = v4 & 1;
  v11 = sub_1000E9D30(v7, v5);
  sub_1002632FC(v8, v11, 0xD000000000000026, 0x800000010032E570);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000E9B28()
{
  swift_unknownObjectRelease();
  sub_10000839C((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_1000E9BA0()
{
  result = qword_1003DD450;
  if (!qword_1003DD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD450);
  }

  return result;
}

unint64_t sub_1000E9BF4()
{
  result = qword_1003DD458;
  if (!qword_1003DD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD458);
  }

  return result;
}

uint64_t sub_1000E9C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E9CB0(uint64_t a1)
{
  v2 = type metadata accessor for ShareMessageContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000E9D30(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(AAMessagingDestination);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithHandle:v5];

  if (!v6)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA88);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10021145C(a1, a2, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to generate destination from handle: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v6;
}

id sub_1000E9F18()
{
  v0 = objc_allocWithZone(AAMessagingDestination);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithHandle:v1];

  result = v2;
  if (!v2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to generate destination from handle.", v7, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v8;
  }

  return result;
}

void sub_1000EA090(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "After processing message, Setup finalization finished Successfully", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "After processing message, setup finalization finished with error: %@", v3, 0xCu);
    sub_100083380(v4);

LABEL_10:

    return;
  }
}

id sub_1000EA3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianMessageProcessor(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CustodianMessageProcessor(uint64_t a1)
{
  result = qword_1003DD578;
  if (!qword_1003DD578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EA550(uint64_t a1)
{
  sub_10000F7D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000EA604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v142 = a3;
  v143 = a4;
  v148 = a2;
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v6 - 8);
  v141 = &v140 - v7;
  v8 = type metadata accessor for URL();
  v140 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v145 = *(v11 - 8);
  v146 = v11;
  __chkstk_darwin(v11);
  v144 = &v140 - v12;
  v13 = kAAAnalyticsEventCustodianDecodeIDSMessage;
  v147 = v4;
  v14 = (v4 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore);
  v15 = *(*sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore), *(v4 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore + 24)) + 16);
  v16 = v13;
  v17 = [v15 aa_primaryAppleAccount];
  if (v17 && (v18 = v17, v19 = [v17 aa_altDSID], v18, v19))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = v16;
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = v16;
    v21 = 0;
  }

  v149 = [objc_opt_self() analyticsEventWithName:v16 altDSID:v21 flowID:0];

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAA40);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Processing message...", v26, 2u);
  }

  v27 = [*(*sub_1000080F8(v14 v14[3]) + 16)];
  if (v27)
  {
    v28 = v27;
    v151 = 0;
    v29 = v148;
    v30 = sub_1001DD358(a1, v148, &v151);
    if (!v30)
    {
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Failed to decode data, unable to process message", v55, 2u);
      }

      sub_1000EBAD0();
      v56 = v151;
      swift_errorRetain();
      v57 = sub_10025666C(-9031, v56);
      if (v149)
      {
        v58 = v149;
        v59 = _convertErrorToNSError(_:)();
        [v58 updateTaskResultWithError:v59];
      }

      v60 = v144;
      v61 = v145;
      v62 = v146;
      (*(v145 + 16))(v144, v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v146);
      Dependency.wrappedValue.getter();
      (*(v61 + 8))(v60, v62);
      swift_getObjectType();
      sub_100246FA8(v149);

      swift_unknownObjectRelease();
      goto LABEL_88;
    }

    v31 = v30;
    v32 = *(v30 + 16);
    if (v32 > 1)
    {
      if (v32 != 2)
      {
        if (v32 == 3)
        {
          if (qword_1003D7F38 != -1)
          {
            swift_once();
          }

          sub_100008D04(v23, qword_1003FAA88);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.debug.getter();
          v35 = os_log_type_enabled(v33, v34);
          v36 = v143;
          if (v35)
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v33, v34, "Trying to process finalize message", v37, 2u);
            v29 = v148;
          }

          v38 = sub_1001DD670(a1, v29, &v151);
          if (v38)
          {
            v39 = v38;

            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              v150 = v43;
              *v42 = 136315138;
              *(v42 + 4) = sub_10021145C(v142, v36, &v150);
              _os_log_impl(&_mh_execute_header, v40, v41, "Received encrypted PRKC from %s", v42, 0xCu);
              sub_10000839C(v43);
            }

            v44 = v141;
            v45 = *sub_1000080F8((v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_setupFinalizationHandler), *(v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_setupFinalizationHandler + 24));
            v46 = type metadata accessor for TaskPriority();
            (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
            v47 = swift_allocObject();
            v47[2] = 0;
            v47[3] = 0;
            v47[4] = v45;
            v47[5] = v39;
            v47[6] = v28;
            v47[7] = sub_1000EA090;
            v47[8] = 0;

            v48 = v28;
            sub_1000BCD5C(0, 0, v44, &unk_10033F8B0, v47);

            goto LABEL_87;
          }

          sub_1000EBAD0();
          v109 = v151;
          swift_errorRetain();
          v99 = sub_10025666C(-9034, v109);
          if (v149)
          {
            v110 = v149;
            v111 = _convertErrorToNSError(_:)();
            [v110 updateTaskResultWithError:v111];
          }

          v112 = v144;
          v113 = v145;
          v114 = v146;
          (*(v145 + 16))(v144, v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v146);
          Dependency.wrappedValue.getter();
          (*(v113 + 8))(v112, v114);
          swift_getObjectType();
          sub_100246FA8(v149);
          swift_unknownObjectRelease();
          v105 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v105, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            v117 = "Invalid message received!";
LABEL_71:
            _os_log_impl(&_mh_execute_header, v105, v115, v117, v116, 2u);

LABEL_81:

            v28 = v105;
LABEL_83:

LABEL_88:

            return;
          }

          goto LABEL_82;
        }

        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        sub_100008D04(v23, qword_1003FAA88);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&_mh_execute_header, v87, v88, "Trying to process removed message", v89, 2u);
          v29 = v148;
        }

        v90 = sub_1001DD6B8(a1, v29, &v151);
        if (!v90)
        {
          sub_1000EBAD0();
          v118 = v151;
          swift_errorRetain();
          v99 = sub_10025666C(-9036, v118);
          if (v149)
          {
            v119 = v149;
            v120 = _convertErrorToNSError(_:)();
            [v119 updateTaskResultWithError:v120];
          }

          v121 = v144;
          v122 = v145;
          v123 = v146;
          (*(v145 + 16))(v144, v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v146);
          Dependency.wrappedValue.getter();
          (*(v122 + 8))(v121, v123);
          swift_getObjectType();
          sub_100246FA8(v149);
          swift_unknownObjectRelease();
          v105 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v105, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            v117 = "Unable to decode custodian removed message!";
            goto LABEL_71;
          }

LABEL_82:

          goto LABEL_83;
        }

        v91 = v90;
        sub_1000080F8((v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_custodianRemovedHandler), *(v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_custodianRemovedHandler + 24));
        sub_1000DB2E0(v91);
        goto LABEL_58;
      }

      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v23, qword_1003FAA88);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Trying to process share message", v71, 2u);
        v29 = v148;
      }

      v72 = sub_1001DD628(a1, v29, &v151);
      if (v72)
      {
        v73 = v72;

        v74 = v143;

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v148 = v31;
          v146 = v78;
          v150 = v78;
          *v77 = 136315394;
          v79 = v140;
          (*(v140 + 16))(v10, v73 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, v8);
          sub_1000EBC98();
          LODWORD(v145) = v76;
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          v82 = v81;
          (*(v79 + 8))(v10, v8);
          v83 = sub_10021145C(v80, v82, &v150);

          *(v77 + 4) = v83;
          *(v77 + 12) = 2080;
          v84 = v142;
          *(v77 + 14) = sub_10021145C(v142, v74, &v150);
          _os_log_impl(&_mh_execute_header, v75, v145, "Received shareUrl %s from %s", v77, 0x16u);
          swift_arrayDestroy();

          v85 = v147;
          v86 = v74;
        }

        else
        {

          v85 = v147;
          v86 = v74;
          v84 = v142;
        }

        v136 = v141;
        v137 = *sub_1000080F8((v85 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_shareHandler), *(v85 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_shareHandler + 24));
        v138 = type metadata accessor for TaskPriority();
        (*(*(v138 - 8) + 56))(v136, 1, 1, v138);
        v139 = swift_allocObject();
        v139[2] = 0;
        v139[3] = 0;
        v139[4] = v137;
        v139[5] = v73;
        v139[6] = v84;
        v139[7] = v86;

        sub_10001359C(0, 0, v136, &unk_100341A60, v139);

        goto LABEL_86;
      }

      sub_1000EBAD0();
      v98 = v151;
      swift_errorRetain();
      v99 = sub_10025666C(-9033, v98);
      if (v149)
      {
        v100 = v149;
        v101 = _convertErrorToNSError(_:)();
        [v100 updateTaskResultWithError:v101];
      }

      v102 = v144;
      v103 = v145;
      v104 = v146;
      (*(v145 + 16))(v144, v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v146);
      Dependency.wrappedValue.getter();
      (*(v103 + 8))(v102, v104);
      swift_getObjectType();
      sub_100246FA8(v149);
      swift_unknownObjectRelease();
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v105, v106))
      {
        goto LABEL_82;
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "Invalid message received!";
LABEL_80:
      _os_log_impl(&_mh_execute_header, v105, v106, v108, v107, 2u);

      goto LABEL_81;
    }

    if (*(v30 + 16))
    {
      v92 = v143;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v23, qword_1003FAA88);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "Trying to process invitationResponse message", v95, 2u);
        v29 = v148;
      }

      v96 = sub_1001DD5E0(a1, v29, &v151);
      if (!v96)
      {
        sub_1000EBAD0();
        v130 = v151;
        swift_errorRetain();
        v99 = sub_10025666C(-9032, v130);
        if (v149)
        {
          v131 = v149;
          v132 = _convertErrorToNSError(_:)();
          [v131 updateTaskResultWithError:v132];
        }

        v133 = v144;
        v134 = v145;
        v135 = v146;
        (*(v145 + 16))(v144, v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v146);
        Dependency.wrappedValue.getter();
        (*(v134 + 8))(v133, v135);
        swift_getObjectType();
        sub_100246FA8(v149);
        swift_unknownObjectRelease();
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v105, v106))
        {
          goto LABEL_82;
        }

        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "Unable to decode invitation results!";
        goto LABEL_80;
      }

      v97 = v96;
      sub_1000080F8((v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationResponseHandler), *(v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationResponseHandler + 24));
      sub_1000D8C14(v97, v142, v92);
    }

    else
    {
      v63 = v143;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v23, qword_1003FAA88);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Trying to process invitation message", v66, 2u);
        v29 = v148;
      }

      v67 = sub_1001DD3A0(a1, v29, &v151);
      if (!v67)
      {
        sub_1000EBAD0();
        v124 = v151;
        swift_errorRetain();
        v99 = sub_10025666C(-9035, v124);
        if (v149)
        {
          v125 = v149;
          v126 = _convertErrorToNSError(_:)();
          [v125 updateTaskResultWithError:v126];
        }

        v127 = v144;
        v128 = v145;
        v129 = v146;
        (*(v145 + 16))(v144, v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v146);
        Dependency.wrappedValue.getter();
        (*(v128 + 8))(v127, v129);
        swift_getObjectType();
        sub_100246FA8(v149);
        swift_unknownObjectRelease();
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v105, v106))
        {
          goto LABEL_82;
        }

        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "Unable to decode custodian invitation!";
        goto LABEL_80;
      }

      v68 = v67;
      sub_1000080F8((v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationHandler), *(v147 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationHandler + 24));
      sub_1000D76E0(v68, v142, v63);
    }

LABEL_58:

LABEL_86:

LABEL_87:

    goto LABEL_88;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Not logged in to AppleAccount, unable to process message", v51, 2u);
  }

  v52 = v149;
}

unint64_t sub_1000EBAD0()
{
  result = qword_1003DB5F0;
  if (!qword_1003DB5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DB5F0);
  }

  return result;
}

uint64_t sub_1000EBB1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000EBB74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000EBBC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_1000E0D3C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1000EBC98()
{
  result = qword_1003DD590;
  if (!qword_1003DD590)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD590);
  }

  return result;
}

uint64_t sub_1000EBCF0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustodianHealthRecord(0);
  Date.init(timeIntervalSince1970:)();
  sub_1000EE898(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return -1;
  }

  Date.init()();
  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = v7;
  result = (v5)(v3, v0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000EBEB4()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(type metadata accessor for CustodianHealthRecord(0) + 24);
  Date.init(timeIntervalSince1970:)();
  sub_1000EE898(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v8, v2);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    sub_10028B98C();
    (*(v3 + 16))(v6, v1 + v9, v2);
    Date.init(timeInterval:since:)();
    Date.init()();
    v12 = static Date.< infix(_:_:)();
    v11(v6, v2);
    v11(v8, v2);
  }

  return v12 & 1;
}

void sub_1000EC0A4(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v104 = a3;
  v5 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  __chkstk_darwin(v5 - 8);
  v100 = &v90 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v101 = v7;
  v102 = v8;
  v9 = __chkstk_darwin(v7);
  v97 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v90 - v11;
  v12 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v90 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v103 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v105 = &v90 - v22;
  if (CKRecord.recordType.getter() == 0xD000000000000015 && 0x8000000100341AF0 == v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for AACustodianError(0);
      v108 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000EE898(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v94 = v3;
  v25 = [a1 recordID];
  v26 = [v25 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v27 = *(v19 + 48);
  if (v27(v17, 1, v18) == 1)
  {
    sub_100008D3C(v17, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v95 = v19;
  v28 = v18;
  v29 = *(v19 + 32);
  v96 = v28;
  v29(v105, v17);
  v30 = [a1 encryptedValuesByKey];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 objectForKeyedSubscript:v31];

  if (!v32)
  {
    goto LABEL_12;
  }

  v108 = v32;
  v33 = sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v92 = v33;
  UUID.init(uuidString:)();

  v34 = v96;
  if (v27(v15, 1, v96) == 1)
  {
    sub_100008D3C(v15, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA88);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v96;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v36;
      *v42 = v36;
      v43 = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "Missing CustodianID - %@", v41, 0xCu);
      sub_100008D3C(v42, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianError(0);
    v108 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000EE898(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v95 + 8))(v105, v40);
    return;
  }

  v44 = v103;
  (v29)(v103, v15, v34);
  v45 = *(v95 + 16);
  v46 = v104;
  v45();
  v47 = type metadata accessor for CustodianHealthRecord(0);
  (v45)(v46 + v47[5], v44, v34);
  v48 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v48];
  [v48 finishEncoding];
  v49 = [v48 encodedData];
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v30;
  v51 = v50;
  v53 = v52;

  v54 = v104;
  v55 = (v104 + v47[8]);
  *v55 = v51;
  v55[1] = v53;
  v56 = v91;
  v93 = v47;
  v57 = v47[9];
  v58 = v54;
  *(v54 + v57) = v98 & 1;
  v59 = String._bridgeToObjectiveC()();
  v60 = [v56 objectForKeyedSubscript:v59];

  v61 = v34;
  if (!v60)
  {
    v63 = v101;
    v65 = v102;
    v62 = v100;
    (*(v102 + 56))(v100, 1, 1, v101);
LABEL_21:
    v66 = v99;
    Date.init(timeIntervalSince1970:)();
    if ((*(v65 + 48))(v62, 1, v63) != 1)
    {
      sub_100008D3C(v62, &qword_1003DA110, &qword_10033F230);
    }

    goto LABEL_23;
  }

  v106 = v60;
  v62 = v100;
  v63 = v101;
  v64 = swift_dynamicCast();
  v65 = v102;
  (*(v102 + 56))(v62, v64 ^ 1u, 1, v63);
  if ((*(v65 + 48))(v62, 1, v63) == 1)
  {
    goto LABEL_21;
  }

  v66 = v99;
  (*(v65 + 32))(v99, v62, v63);
LABEL_23:
  v67 = v93[6];
  (*(v65 + 32))(v58 + v67, v66, v63);
  v68 = String._bridgeToObjectiveC()();
  v69 = [v56 objectForKeyedSubscript:v68];

  if (v69 && (v108 = v69, (swift_dynamicCast() & 1) != 0))
  {
    v70 = v106;
    v71 = v107;
    sub_100015D6C(v106, v107);
    v72 = sub_1000FA458(v70, v71);
    if (v75 == 1)
    {
      v58 = v104;
      v76 = (v104 + v93[7]);
      *v76 = v70;
      v76[1] = v71;
      v77 = v97;
      Date.init(timeIntervalSince1970:)();
      (*(v102 + 40))(v58 + v67, v77, v63);
    }

    else
    {
      v78 = v72;
      v79 = v73;
      v80 = v75;
      v81 = v74;
      sub_100012324(v70, v71);
      sub_100015D6C(v78, v79);
      sub_1000EE730(v78, v79, v81, v80);
      v58 = v104;
      v82 = (v104 + v93[7]);
      *v82 = v78;
      v82[1] = v79;
    }

    v61 = v96;
    v56 = v91;
  }

  else
  {
    *(v58 + v93[7]) = xmmword_10033F590;
  }

  v83 = String._bridgeToObjectiveC()();
  v84 = [v56 objectForKeyedSubscript:v83];

  swift_unknownObjectRelease();
  v85 = *(v95 + 8);
  v85(v103, v61);
  v85(v105, v61);
  if (v84)
  {
    v106 = v84;
    v86 = swift_dynamicCast();
    v87 = v108;
    if (!v86)
    {
      v87 = 0;
    }

    v88 = v86 ^ 1;
  }

  else
  {
    v87 = 0;
    v88 = 1;
  }

  v89 = v58 + v93[10];
  *v89 = v87;
  *(v89 + 8) = v88;
}

void sub_1000ECC30(id *a1)
{
  v2 = type metadata accessor for Date();
  v63 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100005814(&qword_1003E29B0, &qword_100341B40);
  __chkstk_darwin(v58);
  v5 = &v54 - v4;
  v6 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v7 = __chkstk_darwin(v6 - 8);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v54 - v10;
  __chkstk_darwin(v9);
  v62 = &v54 - v12;
  v13 = [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v15 = v67;
  v16 = type metadata accessor for CustodianHealthRecord(0);
  v17 = UUID.uuidString.getter();
  if (!*(&v15 + 1))
  {

    v19 = v64;
LABEL_6:
    v21 = UUID.uuidString.getter();
    *(&v68 + 1) = &type metadata for String;
    v69 = &protocol witness table for String;
    *&v67 = v21;
    *(&v67 + 1) = v22;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v15 == __PAIR128__(v18, v17))
  {

    v19 = v64;
    goto LABEL_7;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v19 = v64;
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v23 = v62;
  v60 = v13;
  v61 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v59 = v16;
  v24 = v63;
  v25 = *(v63 + 16);
  v56 = *(v16 + 24);
  v57 = v25;
  v25(v11, v19 + v56, v2);
  (*(v24 + 56))(v11, 0, 1, v2);
  v26 = *(v58 + 48);
  sub_1000EE8E0(v23, v5);
  sub_1000EE8E0(v11, &v5[v26]);
  v27 = *(v24 + 48);
  if (v27(v5, 1, v2) == 1)
  {
    sub_100008D3C(v11, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v23, &qword_1003DA110, &qword_10033F230);
    v28 = v27(&v5[v26], 1, v2);
    v29 = v60;
    if (v28 == 1)
    {
      sub_100008D3C(v5, &qword_1003DA110, &qword_10033F230);
      v30 = v64;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v31 = v55;
  sub_1000EE8E0(v5, v55);
  if (v27(&v5[v26], 1, v2) == 1)
  {
    sub_100008D3C(v11, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v62, &qword_1003DA110, &qword_10033F230);
    (*(v63 + 8))(v31, v2);
    v29 = v60;
LABEL_12:
    sub_100008D3C(v5, &qword_1003E29B0, &qword_100341B40);
    v30 = v64;
LABEL_13:
    *(&v68 + 1) = v2;
    v69 = &protocol witness table for Date;
    v32 = sub_10000DBEC(&v67);
    v57(v32, v30 + v56, v2);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_14;
  }

  v37 = v63;
  v38 = v54;
  (*(v63 + 32))(v54, &v5[v26], v2);
  sub_1000EE898(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LODWORD(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v37 + 8);
  v39(v38, v2);
  sub_100008D3C(v11, &qword_1003DA110, &qword_10033F230);
  sub_100008D3C(v62, &qword_1003DA110, &qword_10033F230);
  v39(v31, v2);
  sub_100008D3C(v5, &qword_1003DA110, &qword_10033F230);
  v29 = v60;
  v30 = v64;
  if ((v58 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  CKRecordKeyValueSetting.subscript.getter();
  v33 = v59;
  v34 = (v30 + *(v59 + 40));
  v35 = *v34;
  v36 = *(v34 + 8);
  if ((BYTE8(v67) & 1) == 0)
  {
    if (v36)
    {
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
LABEL_23:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_24;
    }

    if (v67 == v35)
    {
      goto LABEL_24;
    }

LABEL_22:
    *(&v68 + 1) = &type metadata for Int;
    v69 = &protocol witness table for Int;
    *&v67 = v35;
    goto LABEL_23;
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v40 = v30 + *(v33 + 28);
  v41 = *(v40 + 8);
  if (v41 >> 60 == 15)
  {
    v42 = String._bridgeToObjectiveC()();
    [v29 setObject:0 forKeyedSubscript:v42];
    swift_unknownObjectRelease();

    return;
  }

  v43 = *v40;
  sub_100015D6C(*v40, *(v40 + 8));
  CKRecordKeyValueSetting.subscript.getter();
  v44 = v65;
  v45 = v66;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *&v67 = v43;
  *(&v67 + 1) = v41;
  v46 = sub_1000EE844();
  v68 = 0uLL;
  v64 = v46;
  v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v49 = v48;

  if (v45 >> 60 == 15)
  {
    if (v49 >> 60 == 15)
    {
      sub_100012324(v43, v41);
      swift_unknownObjectRelease();

      sub_100015D58(v44, v45);
      return;
    }

    goto LABEL_30;
  }

  if (v49 >> 60 == 15)
  {
LABEL_30:
    sub_100015D58(v44, v45);
    sub_100015D58(v47, v49);
    goto LABEL_31;
  }

  sub_100052704(v44, v45);
  sub_100015D6C(v47, v49);
  v53 = sub_10018F69C(v44, v45, v47, v49);
  sub_100012324(v47, v49);
  sub_100015D58(v44, v45);
  sub_100015D58(v47, v49);
  sub_100015D58(v44, v45);
  if (v53)
  {
    sub_100012324(v43, v41);
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

LABEL_31:
  swift_allocObject();
  JSONEncoder.init()();
  *&v67 = v43;
  *(&v67 + 1) = v41;
  v68 = 0uLL;
  v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v52 = v51;

  *(&v68 + 1) = &type metadata for Data;
  v69 = &protocol witness table for Data;
  *&v67 = v50;
  *(&v67 + 1) = v52;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  sub_100012324(v43, v41);
LABEL_32:
}

uint64_t sub_1000ED620()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6169646F74737563;
    if (v1 != 1)
    {
      v5 = 0xD000000000000017;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x444964726F636572;
    }
  }

  else
  {
    v2 = 0x797265766F636572;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000ED724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EEF28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000ED758(uint64_t a1)
{
  v2 = sub_1000EE5C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ED794(uint64_t a1)
{
  v2 = sub_1000EE5C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ED7D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v5 = __chkstk_darwin(v3);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v50 - v7;
  v59 = type metadata accessor for UUID();
  v57 = *(v59 - 8);
  v8 = __chkstk_darwin(v59);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v50 - v11;
  v12 = sub_100005814(&qword_1003DD5B8, &qword_100341AF8);
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for CustodianHealthRecord(0);
  __chkstk_darwin(v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1000EE5C8();
  v18 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000839C(a1);
  }

  v50 = v10;
  v51 = v17;
  v61 = v15;
  LOBYTE(v62) = 0;
  sub_1000EE898(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19 = v59;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v14;
  v22 = v51;
  v23 = v60;
  v60 = *(v57 + 32);
  (v60)(v51, v23, v19);
  LOBYTE(v62) = 1;
  v24 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v60)(&v22[v61[5]], v24, v19);
  LOBYTE(v62) = 2;
  sub_1000EE898(&unk_1003DD5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = v54;
  v26 = v55;
  v60 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v22;
  v28 = v12;
  v29 = v61;
  v30 = v61[6];
  (*(v56 + 32))(&v27[v30], v25, v26);
  v63 = 3;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v27[v29[8]] = v62;
  LOBYTE(v62) = 4;
  v27[v29[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v62) = 6;
  v31 = v28;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v53;
  v34 = &v51[v61[10]];
  *v34 = v32;
  v34[8] = 0;
  v63 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v62;
  v36 = v58;
  if (*(&v62 + 1) >> 60 == 15)
  {
    (*(v58 + 8))(v21, v31);
    v37 = v51;
    *&v51[v61[7]] = v35;
    v38 = v37;
  }

  else
  {
    sub_100015D6C(v62, *(&v62 + 1));
    v39 = sub_1000FA458(v35, *(&v35 + 1));
    if (v42 == 1)
    {
      v43 = v51;
      *&v51[v61[7]] = v35;
      v38 = v43;
      Date.init(timeIntervalSince1970:)();
      (*(v36 + 8))(v21, v31);
      (*(v56 + 40))(v38 + v30, v33, v55);
    }

    else
    {
      v44 = *(v36 + 8);
      v45 = v39;
      v46 = v40;
      v47 = v41;
      v48 = v42;
      v44(v21, v31);
      sub_100015D58(v35, *(&v35 + 1));
      sub_100015D6C(v45, v46);
      sub_1000EE730(v45, v46, v47, v48);
      v38 = v51;
      v49 = &v51[v61[7]];
      *v49 = v45;
      v49[1] = v46;
    }
  }

  sub_1000EE670(v38, v52);
  sub_10000839C(a1);
  return sub_1000EE6D4(v38);
}

uint64_t sub_1000EDFFC(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003DD5E0, &qword_100341B00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1000EE5C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  type metadata accessor for UUID();
  sub_1000EE898(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CustodianHealthRecord(0);
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 2;
    type metadata accessor for Date();
    sub_1000EE898(&unk_1003DD5F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + v9[8]);
    v11 = v10[1];
    v23 = *v10;
    v24 = v11;
    v27 = 3;
    sub_100015D6C(v23, v11);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v23, v24);
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3 + v9[10];
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v23 = v13;
    LOBYTE(v24) = v12;
    v27 = 6;
    sub_100005814(&qword_1003DD600, &qword_100341B08);
    sub_1000EE7C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v9[7]);
    v15 = v14[1];
    if (v15 >> 60 != 15)
    {
      v17 = *v14;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      sub_100015D6C(v17, v15);
      JSONEncoder.init()();
      v22 = v17;
      v23 = v17;
      v24 = v15;
      sub_1000EE844();
      v25 = 0;
      v26 = 0;
      v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v20 = v19;

      v23 = v18;
      v24 = v20;
      v27 = 5;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100012324(v22, v15);

      sub_100012324(v23, v24);
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000EE4A0(uint64_t a1)
{
  *(a1 + 8) = sub_1000EE898(&qword_1003DD5A0, type metadata accessor for CustodianHealthRecord, &unk_100341A98);
  result = sub_1000EE898(&qword_1003DD5A8, type metadata accessor for CustodianHealthRecord, &unk_100341A70);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianHealthRecord(uint64_t a1)
{
  result = qword_1003DD678;
  if (!qword_1003DD678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EE570(uint64_t a1)
{
  result = sub_1000EE898(&qword_1003DD5B0, type metadata accessor for CustodianHealthRecord, &unk_100341AC0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EE5C8()
{
  result = qword_1003DD5C0;
  if (!qword_1003DD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD5C0);
  }

  return result;
}

unint64_t sub_1000EE61C()
{
  result = qword_1003DDA70;
  if (!qword_1003DDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA70);
  }

  return result;
}

uint64_t sub_1000EE670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianHealthRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EE6D4(uint64_t a1)
{
  v2 = type metadata accessor for CustodianHealthRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EE730(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100012324(result, a2);
  }

  return result;
}

unint64_t sub_1000EE774()
{
  result = qword_1003DD740;
  if (!qword_1003DD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD740);
  }

  return result;
}

unint64_t sub_1000EE7C8()
{
  result = qword_1003DD608;
  if (!qword_1003DD608)
  {
    sub_100008CBC(&qword_1003DD600, &qword_100341B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD608);
  }

  return result;
}

unint64_t sub_1000EE844()
{
  result = qword_1003DD610;
  if (!qword_1003DD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD610);
  }

  return result;
}

uint64_t sub_1000EE898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000EE8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CustodianHealthRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianHealthRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000EEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 36));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000EEBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000EECEC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DD7C0, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        sub_1000EEDD4(319, &unk_1003DD690, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000EEDD4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000EEE24()
{
  result = qword_1003DD6D8;
  if (!qword_1003DD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD6D8);
  }

  return result;
}

unint64_t sub_1000EEE7C()
{
  result = qword_1003DD6E0;
  if (!qword_1003DD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD6E0);
  }

  return result;
}

unint64_t sub_1000EEED4()
{
  result = qword_1003DD6E8;
  if (!qword_1003DD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD6E8);
  }

  return result;
}

uint64_t sub_1000EEF28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010032E7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xEF6873614879654BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032E7D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

BOOL sub_1000EF184()
{
  v1 = v0;
  type metadata accessor for ContactsHelper(0);
  swift_allocObject();
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  v2 = type metadata accessor for CustodianRecord(0);
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v34 contactForHandle:v3];

  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = objc_allocWithZone(AALocalContactInfo);
    v6 = v4;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v5 initWithHandle:v7 contact:v6];
  }

  else
  {

    v8 = 0;
  }

  if ((sub_1000EF4CC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = (v1 + *(v2 + 32));
  v10 = *v9;
  v11 = v9[1];
  if (v11)
  {
    sub_1002576F0(*v9, v9[1]);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    return 0;
  }

  v8 = v8;
  v13 = [v8 firstName];
  if (!v13)
  {

    goto LABEL_18;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_1002576F0(v15, v17);
  v20 = v19;

  if (!v20)
  {
LABEL_18:

    return 0;
  }

  v8 = v8;
  v21 = [v8 lastName];
  if (!v21)
  {

    goto LABEL_21;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = sub_1002576F0(v23, v25);
  v28 = v27;

  if (!v28)
  {
LABEL_21:

    return 0;
  }

  v29 = (v1 + *(v2 + 28));
  v30 = v29[1];
  if (v30)
  {
    if (*v29 == v18 && v30 == v20)
    {

      goto LABEL_21;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
LABEL_7:

      goto LABEL_18;
    }
  }

  else
  {
  }

  if (v11)
  {
    if (v10 == v26 && v11 == v28)
    {
      goto LABEL_7;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v33 & 1) == 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1000EF4CC()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (v0 + *(v1 + 28));
  v3 = v2[1];
  if (!v3)
  {
    return 1;
  }

  v4 = v1;
  v5 = sub_1002576F0(*v2, v3);
  if (!v6)
  {
    return 1;
  }

  v7 = v5;
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v9 aa_appearsToBePhoneNumber];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v11 aa_appearsToBePhoneNumber];

    if (v12)
    {
      v13 = objc_allocWithZone(CNPhoneNumber);
      v14 = String._bridgeToObjectiveC()();
      v15 = [v13 initWithStringValue:v14];

      v16 = objc_allocWithZone(CNPhoneNumber);
      v17 = String._bridgeToObjectiveC()();

      v18 = [v16 initWithStringValue:v17];

      v19 = [v15 isLikePhoneNumber:v18];
      return v19;
    }
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v21 aa_appearsToBeEmail];

  if (v22 && (v23 = (v0 + *(v4 + 24)), v25 = *v23, v24 = v23[1], v26 = String._bridgeToObjectiveC()(), v27 = [v26 aa_appearsToBeEmail], v26, (v27 & 1) != 0))
  {
    if (v7 == v25 && v8 == v24)
    {

      return 1;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v28 & 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000EF6D0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v6 = __chkstk_darwin(v5 - 8);
  v123 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v115 - v9;
  __chkstk_darwin(v8);
  v12 = &v115 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v122 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v128 = &v115 - v18;
  __chkstk_darwin(v17);
  v130 = &v115 - v19;
  v20 = type metadata accessor for CustodianRecord(0);
  v21 = (a3 + v20[7]);
  *v21 = 0;
  v21[1] = 0;
  v120 = v21;
  v22 = (a3 + v20[8]);
  *v22 = 0;
  v22[1] = 0;
  v121 = v22;
  v23 = (a3 + v20[13]);
  *v23 = 0;
  v23[1] = 0;
  v124 = v23;
  v24 = (a3 + v20[14]);
  *v24 = 0;
  v24[1] = 0;
  v125 = v24;
  v25 = a3 + v20[15];
  *v25 = 0;
  v126 = v25;
  *(v25 + 8) = 1;
  v131 = v20[16];
  v132 = v14;
  v26 = *(v14 + 56);
  v133 = v13;
  v119 = v26;
  v26(a3 + v131, 1, 1, v13);
  v134 = a1;
  if (CKRecord.recordType.getter() == 0x6169646F74737543 && v27 == 0xEF64726F6365526ELL)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      type metadata accessor for AACustodianError(0);
      v137 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
    }
  }

  v129 = a3;
  v29 = v134;
  v30 = [v134 recordID];
  v31 = [v30 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v33 = v132;
  v32 = v133;
  v118 = *(v132 + 48);
  if (v118(v12, 1, v133) == 1)
  {
    sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for AACustodianError(0);
    v137 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    a3 = v129;
    return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
  }

  v117 = *(v33 + 32);
  v117(v130, v12, v32);
  v34 = [v29 encryptedValuesByKey];
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 objectForKeyedSubscript:v35];

  if (!v36 || (v137 = v36, sub_100005814(&unk_1003E2770, &qword_100341F50), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    v39 = v134;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    a3 = v129;
    v43 = v132;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v39;
      *v45 = v39;
      v46 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Missing CustodianID - %@", v44, 0xCu);
      sub_100008D3C(v45, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianError(0);
    v137 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v43 + 8))(v130, v133);
    return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
  }

  UUID.init(uuidString:)();

  v37 = v133;
  if (v118(v10, 1, v133) == 1)
  {
    sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_11;
  }

  v117(v128, v10, v37);
  v48 = String._bridgeToObjectiveC()();
  v49 = [v34 objectForKeyedSubscript:v48];

  if (!v49 || (v137 = v49, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100008D04(v65, qword_1003FAA88);
    v66 = v134;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = os_log_type_enabled(v67, v68);
    a3 = v129;
    v70 = v132;
    if (!v69)
    {
      goto LABEL_41;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v66;
    *v72 = v66;
    v73 = v66;
    v74 = "Missing Handle - %@";
    goto LABEL_40;
  }

  v116 = v135;
  v50 = v136;
  v51 = String._bridgeToObjectiveC()();
  v52 = [v34 objectForKeyedSubscript:v51];

  if (!v52 || (v135 = v52, type metadata accessor for Status(0), (swift_dynamicCast() & 1) == 0))
  {

    a3 = v129;
    v70 = v132;
    v75 = v134;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100008D04(v76, qword_1003FAA88);
    v66 = v75;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_41;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v66;
    *v72 = v66;
    v77 = v66;
    v74 = "Missing Status - %@";
LABEL_40:
    _os_log_impl(&_mh_execute_header, v67, v68, v74, v71, 0xCu);
    sub_100008D3C(v72, &unk_1003D9140, &qword_10033E640);

LABEL_41:

    type metadata accessor for AACustodianError(0);
    v137 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v78 = *(v70 + 8);
    v79 = v133;
    v78(v128, v133);
    v78(v130, v79);
    return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
  }

  v115 = v137;
  v53 = String._bridgeToObjectiveC()();
  v54 = [v34 objectForKeyedSubscript:v53];

  if (v54)
  {
    v137 = v54;
    if (swift_dynamicCast())
    {
      v55 = v136;
      v56 = v120;
      *v120 = v135;
      v56[1] = v55;
    }
  }

  v57 = String._bridgeToObjectiveC()();
  v58 = [v34 objectForKeyedSubscript:v57];

  if (v58)
  {
    v137 = v58;
    if (swift_dynamicCast())
    {
      v59 = v136;
      v60 = v121;
      *v121 = v135;
      v60[1] = v59;
    }
  }

  v61 = String._bridgeToObjectiveC()();
  v62 = [v34 objectForKeyedSubscript:v61];

  v121 = v50;
  if (v62)
  {
    v137 = v62;
    if (swift_dynamicCast())
    {
      v63 = v123;
      UUID.init(uuidString:)();

      v64 = v133;
      if (v118(v63, 1, v133) == 1)
      {
        sub_100008D3C(v63, &qword_1003D8B60, &unk_10033F210);
      }

      else
      {
        v80 = v117;
        v117(v122, v63, v64);
        v81 = v129;
        v82 = v131;
        sub_100008D3C(v129 + v131, &qword_1003D8B60, &unk_10033F210);
        v80(v81 + v82, v122, v64);
        v119(v81 + v82, 0, 1, v64);
      }
    }
  }

  v83 = String._bridgeToObjectiveC()();
  v84 = [v34 objectForKeyedSubscript:v83];

  v85 = v132;
  if (v84)
  {
    v137 = v84;
    if (swift_dynamicCast())
    {
      v86 = v136;
      v87 = v124;
      *v124 = v135;
      v87[1] = v86;
    }
  }

  v88 = String._bridgeToObjectiveC()();
  v89 = [v34 objectForKeyedSubscript:v88];

  v90 = v129;
  if (v89)
  {
    v137 = v89;
    if (swift_dynamicCast())
    {
      v91 = v136;
      v92 = v125;
      *v125 = v135;
      v92[1] = v91;
    }
  }

  v93 = String._bridgeToObjectiveC()();
  v94 = [v34 objectForKeyedSubscript:v93];

  if (v94)
  {
    v135 = v94;
    if (swift_dynamicCast())
    {
      v95 = v126;
      *v126 = v137;
      *(v95 + 8) = 0;
    }
  }

  v96 = *(v85 + 16);
  v97 = v133;
  v96(v90, v130, v133);
  v96(v90 + v20[5], v128, v97);
  v98 = (v90 + v20[6]);
  v99 = v121;
  *v98 = v116;
  v98[1] = v99;
  *(v90 + v20[9]) = v115;
  v100 = String._bridgeToObjectiveC()();
  v101 = [v34 objectForKeyedSubscript:v100];

  v102 = 0xF000000000000000;
  if (v101)
  {
    v137 = v101;
    v103 = swift_dynamicCast();
    v104 = v135;
    if (v103)
    {
      v102 = v136;
    }

    else
    {
      v104 = 0;
    }
  }

  else
  {
    v104 = 0;
  }

  v105 = (v90 + v20[10]);
  *v105 = v104;
  v105[1] = v102;
  v106 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v107 = v134;
  [v134 encodeSystemFieldsWithCoder:v106];
  [v106 finishEncoding];
  v108 = [v106 encodedData];
  v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  swift_unknownObjectRelease();
  v112 = *(v85 + 8);
  v113 = v133;
  v112(v128, v133);
  result = (v112)(v130, v113);
  v114 = (v90 + v20[11]);
  *v114 = v109;
  v114[1] = v111;
  *(v90 + v20[12]) = v127 & 1;
  return result;
}

uint64_t sub_1000F0774(id *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = __chkstk_darwin(v4 - 8);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = &v70 - v7;
  [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v9 = v76;
  v75 = type metadata accessor for CustodianRecord(0);
  v10 = UUID.uuidString.getter();
  if (!*(&v9 + 1))
  {

    goto LABEL_6;
  }

  if (v9 != __PAIR128__(v11, v10))
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_6:
    v13 = UUID.uuidString.getter();
    *(&v77 + 1) = &type metadata for String;
    v78 = &protocol witness table for String;
    *&v76 = v13;
    *(&v76 + 1) = v14;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v15 = (v1 + v75[6]);
  v17 = *v15;
  v16 = v15[1];
  v74 = v2;
  if (!*(&v76 + 1))
  {
    goto LABEL_11;
  }

  if (v76 == __PAIR128__(v16, v17))
  {

    goto LABEL_12;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_11:
    *(&v77 + 1) = &type metadata for String;
    v78 = &protocol witness table for String;
    *&v76 = v17;
    *(&v76 + 1) = v16;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_12:
  CKRecordKeyValueSetting.subscript.getter();
  v19 = v74;
  v20 = (v74 + v75[7]);
  v22 = *v20;
  v21 = v20[1];
  if (*(&v76 + 1))
  {
    if (!v21)
    {

      v78 = 0;
      v76 = 0u;
      v77 = 0u;
LABEL_21:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_22;
    }

    if (v76 == __PAIR128__(v21, v22))
    {

      goto LABEL_22;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v19 = v74;

    if ((v23 & 1) == 0)
    {
LABEL_20:
      *(&v77 + 1) = &type metadata for String;
      v78 = &protocol witness table for String;
      *&v76 = v22;
      *(&v76 + 1) = v21;
      goto LABEL_21;
    }
  }

  else if (v21)
  {
    goto LABEL_20;
  }

LABEL_22:
  CKRecordKeyValueSetting.subscript.getter();
  v24 = (v19 + v75[8]);
  v26 = *v24;
  v25 = v24[1];
  if (!*(&v76 + 1))
  {
    if (!v25)
    {
      goto LABEL_32;
    }

LABEL_30:
    *(&v77 + 1) = &type metadata for String;
    v78 = &protocol witness table for String;
    *&v76 = v26;
    *(&v76 + 1) = v25;
    goto LABEL_31;
  }

  if (!v25)
  {

    v78 = 0;
    v76 = 0u;
    v77 = 0u;
LABEL_31:

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_32;
  }

  if (v76 != __PAIR128__(v25, v26))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v19 = v74;

    if (v27)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

LABEL_32:
  CKRecordKeyValueSetting.subscript.getter();
  v28 = *(v19 + v75[9]);
  if ((BYTE8(v76) & 1) != 0 || v76 != v28)
  {
    *(&v77 + 1) = &type metadata for Int;
    v78 = &protocol witness table for Int;
    *&v76 = v28;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v29 = v76;
  v30 = v19 + v75[10];
  v31 = *v30;
  v32 = *(v30 + 8);
  if (*(&v76 + 1) >> 60 == 15)
  {
    if (v32 >> 60 == 15)
    {
      sub_100052704(*v30, *(v30 + 8));
      sub_100015D58(v29, *(&v29 + 1));
      goto LABEL_44;
    }
  }

  else if (v32 >> 60 != 15)
  {
    sub_100052704(*v30, *(v30 + 8));
    sub_100052704(v29, *(&v29 + 1));
    v48 = sub_10018F69C(v29, *(&v29 + 1), v31, v32);
    sub_100015D58(v29, *(&v29 + 1));
    sub_100015D58(v31, v32);
    sub_100015D58(v29, *(&v29 + 1));
    if (v48)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  sub_100052704(*v30, *(v30 + 8));
  sub_100015D58(v29, *(&v29 + 1));
  sub_100015D58(v31, v32);
LABEL_40:
  v33 = *v30;
  v34 = *(v30 + 8);
  if (v34 >> 60 == 15)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    *&v77 = 0;
  }

  else
  {
    v38 = &protocol witness table for Data;
    v37 = &type metadata for Data;
    v35 = *v30;
    v36 = *(v30 + 8);
  }

  *&v76 = v35;
  *(&v76 + 1) = v36;
  *(&v77 + 1) = v37;
  v78 = v38;
  sub_100052704(v33, v34);
  CKRecordKeyValueSetting.subscript.setter();
LABEL_44:
  v72 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v39 = v76;
  v40 = v75[16];
  v41 = v73;
  sub_1000F2504(v74 + v40, v73);
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v41, 1, v42) == 1)
  {
    sub_100008D3C(v41, &qword_1003D8B60, &unk_10033F210);
    if (!*(&v39 + 1))
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

  v70 = v39;
  v45 = UUID.uuidString.getter();
  v47 = v46;
  (*(v43 + 8))(v41, v42);
  if (!*(&v39 + 1))
  {
    if (!v47)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

  if (!v47)
  {
LABEL_56:

LABEL_57:
    v49 = v71;
    sub_1000F2504(v74 + v40, v71);
    if (v44(v49, 1, v42) == 1)
    {
      sub_100008D3C(v49, &qword_1003D8B60, &unk_10033F210);
      v76 = 0u;
      v77 = 0u;
      v78 = 0;
    }

    else
    {
      v50 = UUID.uuidString.getter();
      *(&v77 + 1) = &type metadata for String;
      v78 = &protocol witness table for String;
      *&v76 = v50;
      *(&v76 + 1) = v51;
      (*(v43 + 8))(v49, v42);
    }

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_62;
  }

  if (v70 == v45 && *(&v39 + 1) == v39)
  {

    goto LABEL_62;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v69 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_62:
  CKRecordKeyValueSetting.subscript.getter();
  v52 = v74;
  v53 = (v74 + v75[13]);
  v55 = *v53;
  v54 = v53[1];
  if (*(&v76 + 1))
  {
    if (!v54)
    {

      v78 = 0;
      v76 = 0u;
      v77 = 0u;
LABEL_71:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_72;
    }

    if (v76 == __PAIR128__(v54, v55))
    {

      goto LABEL_72;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v52 = v74;

    if ((v56 & 1) == 0)
    {
LABEL_70:
      *(&v77 + 1) = &type metadata for String;
      v78 = &protocol witness table for String;
      *&v76 = v55;
      *(&v76 + 1) = v54;
      goto LABEL_71;
    }
  }

  else if (v54)
  {
    goto LABEL_70;
  }

LABEL_72:
  CKRecordKeyValueSetting.subscript.getter();
  v57 = (v52 + v75[14]);
  v59 = *v57;
  v58 = v57[1];
  if (*(&v76 + 1))
  {
    if (!v58)
    {

      v59 = 0;
      v60 = 0;
      v61 = 0;
      *&v77 = 0;
LABEL_81:
      *&v76 = v59;
      *(&v76 + 1) = v58;
      *(&v77 + 1) = v60;
      v78 = v61;

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_82;
    }

    if (v76 == __PAIR128__(v58, v59))
    {

      goto LABEL_82;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v52 = v74;

    if ((v62 & 1) == 0)
    {
LABEL_80:
      v61 = &protocol witness table for String;
      v60 = &type metadata for String;
      goto LABEL_81;
    }
  }

  else if (v58)
  {
    goto LABEL_80;
  }

LABEL_82:
  CKRecordKeyValueSetting.subscript.getter();
  v63 = (v52 + v75[15]);
  v64 = *v63;
  v65 = *(v63 + 8);
  if (BYTE8(v76))
  {
    if (v65)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_88;
  }

  if (v65)
  {
    v64 = 0;
    v66 = 0;
    v67 = 0;
    *(&v76 + 1) = 0;
    *&v77 = 0;
LABEL_89:
    *&v76 = v64;
    *(&v77 + 1) = v66;
    v78 = v67;
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v76 != v64)
  {
LABEL_88:
    v67 = &protocol witness table for UInt;
    v66 = &type metadata for UInt;
    goto LABEL_89;
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_1000F12E8(char a1)
{
  result = 0x444964726F636572;
  switch(a1)
  {
    case 1:
      result = 0x6169646F74737563;
      break;
    case 2:
      result = 0x646F74737543746FLL;
      break;
    case 3:
      result = 0x656C646E6168;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x737574617473;
      break;
    case 7:
      result = 0x676E697070617277;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6144726961706572;
      break;
    case 12:
      result = 0x6F43726961706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F14BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F2BF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F14F0(uint64_t a1)
{
  v2 = sub_1000F23F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F152C(uint64_t a1)
{
  v2 = sub_1000F23F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1568@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v3 - 8);
  v52 = v50 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = v50 - v10;
  v11 = sub_100005814(&qword_1003DD710, &qword_100341D30);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  __chkstk_darwin(v11);
  v13 = type metadata accessor for CustodianRecord(0);
  v14 = __chkstk_darwin(v13);
  v16 = v6;
  v19 = *(v6 + 56);
  v18 = v6 + 56;
  v17 = v19;
  v58 = *(v14 + 64);
  v59 = v14;
  v60 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19(&v60[v58], 1, 1, v5);
  v20 = a1[3];
  v57 = a1;
  sub_1000080F8(a1, v20);
  sub_1000F23F8();
  v21 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_10000839C(v57);
    v25 = v60;

    return sub_100008D3C(&v25[v58], &qword_1003D8B60, &unk_10033F210);
  }

  else
  {
    v56 = v9;
    v50[2] = v17;
    v50[3] = v18;
    v22 = v16;
    LOBYTE(v61) = 0;
    v23 = sub_1000F24BC(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50[0] = v22;
    v26 = *(v22 + 32);
    v27 = v60;
    v26();
    LOBYTE(v61) = 1;
    v28 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50[1] = v5;
    (v26)(&v27[v59[5]], v28, v5);
    LOBYTE(v61) = 3;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v59;
    v31 = &v27[v59[6]];
    *v31 = v29;
    v31[1] = v32;
    LOBYTE(v61) = 4;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v23;
    v34 = &v27[v30[7]];
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v61) = 5;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = &v27[v30[8]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v61) = 6;
    *&v27[v30[9]] = KeyedDecodingContainer.decode(_:forKey:)();
    v62 = 7;
    sub_1000EE61C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v27[v59[10]] = v61;
    v62 = 8;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v27[v59[11]] = v61;
    LOBYTE(v61) = 9;
    v27[v59[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v61) = 10;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = &v60[v59[13]];
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v61) = 11;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = &v60[v59[14]];
    *v43 = v42;
    v43[1] = v44;
    LOBYTE(v61) = 12;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = &v60[v59[15]];
    *v46 = v45;
    v46[8] = v47 & 1;
    LOBYTE(v61) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v54 + 8))(0, v24);
    v48 = v60;
    sub_1000F244C(v52, &v60[v58]);
    sub_100012050(v48, v51);
    sub_10000839C(v57);
    return sub_1000120B4(v48);
  }
}

uint64_t sub_1000F1E60(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003DD730, &qword_100341D38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1000F23F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for UUID();
  sub_1000F24BC(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CustodianRecord(0);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 40));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v18 = 7;
    sub_100052704(v16, v11);
    v15[1] = sub_1000EE774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v16, v17);
    v12 = (v3 + *(v9 + 44));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 8;
    sub_100015D6C(v16, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v16, v17);
    LOBYTE(v16) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F22D0(uint64_t a1)
{
  *(a1 + 8) = sub_1000F24BC(&qword_1003DD6F0, type metadata accessor for CustodianRecord, &unk_100341CC0);
  result = sub_1000F24BC(&qword_1003DD6F8, type metadata accessor for CustodianRecord, &unk_100341C98);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianRecord(uint64_t a1)
{
  result = qword_1003DD7A8;
  if (!qword_1003DD7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F23A0(uint64_t a1)
{
  result = sub_1000F24BC(&unk_1003DD700, type metadata accessor for CustodianRecord, &unk_100341CE8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F23F8()
{
  result = qword_1003DD718;
  if (!qword_1003DD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD718);
  }

  return result;
}

uint64_t sub_1000F244C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F24BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F2504(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CustodianRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F26D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000F2820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000F2954(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DB130, &type metadata for String);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Status(319);
      if (v3 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003DD7C0, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          sub_1000EEDD4(319, &qword_1003DD7C8, &type metadata for UInt);
          if (v5 <= 0x3F)
          {
            sub_1000F2A94(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000F2A94(uint64_t a1)
{
  if (!qword_1003DD7D0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DD7D0);
    }
  }
}

unint64_t sub_1000F2AF0()
{
  result = qword_1003DD830;
  if (!qword_1003DD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD830);
  }

  return result;
}

unint64_t sub_1000F2B48()
{
  result = qword_1003DD838;
  if (!qword_1003DD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD838);
  }

  return result;
}

unint64_t sub_1000F2BA0()
{
  result = qword_1003DD840[0];
  if (!qword_1003DD840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003DD840);
  }

  return result;
}

uint64_t sub_1000F2BF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032E830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E697070617277 && a2 == 0xEE00434B5279654BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6144726961706572 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F43726961706572 && a2 == 0xEB00000000746E75)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1000F3020@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = __chkstk_darwin(v6 - 8);
  v110 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v112 = &v102 - v10;
  __chkstk_darwin(v9);
  v12 = &v102 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v109 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v113 = &v102 - v18;
  __chkstk_darwin(v17);
  v115 = &v102 - v19;
  v20 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v21 = *(v14 + 56);
  v117 = *(v20 + 44);
  v118 = v13;
  v108 = v21;
  v21(a3 + v117, 1, 1, v13);
  v111 = v20;
  v22 = (a3 + *(v20 + 48));
  *v22 = 0;
  v22[1] = 0;
  v119 = a1;
  if (CKRecord.recordType.getter() == 0xD00000000000001BLL && 0x8000000100341F10 == v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      type metadata accessor for AACustodianError(0);
      v122 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return sub_100008D3C(a3 + v117, &qword_1003D8B60, &unk_10033F210);
    }
  }

  v106 = a2;
  v114 = a3;
  v25 = v119;
  v26 = [v119 recordID];
  v27 = [v26 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v14;

  UUID.init(uuidString:)();
  v28 = v116;

  v29 = *(v28 + 48);
  v30 = v118;
  if (v29(v12, 1, v118) == 1)
  {
    sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for AACustodianError(0);
    v122 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    a3 = v114;
    return sub_100008D3C(a3 + v117, &qword_1003D8B60, &unk_10033F210);
  }

  v105 = *(v28 + 32);
  v105(v115, v12, v30);
  v31 = [v25 encryptedValues];
  v32 = String._bridgeToObjectiveC()();
  v107 = v31;
  v33 = [v31 objectForKeyedSubscript:v32];

  if (!v33 || (v122 = v33, sub_100005814(&unk_1003E2770, &qword_100341F50), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA88);
    v37 = v119;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    a3 = v114;
    v41 = v116;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v37;
      *v43 = v37;
      v44 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Missing CustodianID - %@", v42, 0xCu);
      sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianError(0);
    v122 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v41 + 8))(v115, v118);
    return sub_100008D3C(a3 + v117, &qword_1003D8B60, &unk_10033F210);
  }

  v34 = v112;
  UUID.init(uuidString:)();

  v35 = v118;
  if (v29(v34, 1, v118) == 1)
  {
    sub_100008D3C(v34, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_11;
  }

  v105(v113, v34, v35);
  v46 = String._bridgeToObjectiveC()();
  v47 = [v107 objectForKeyedSubscript:v46];

  if (!v47 || (v122 = v47, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100008D04(v56, qword_1003FAA88);
    v57 = v119;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    v60 = os_log_type_enabled(v58, v59);
    a3 = v114;
    v61 = v116;
    if (!v60)
    {
      goto LABEL_35;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v57;
    *v63 = v57;
    v64 = v57;
    v65 = "Missing Owner AltDSID - %@";
    goto LABEL_34;
  }

  v104 = v120;
  v112 = v121;
  v48 = String._bridgeToObjectiveC()();
  v49 = [v107 objectForKeyedSubscript:v48];

  if (!v49 || (v122 = v49, (swift_dynamicCast() & 1) == 0))
  {

    a3 = v114;
    v61 = v116;
    v66 = v119;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100008D04(v67, qword_1003FAA88);
    v57 = v66;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_35;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v57;
    *v63 = v57;
    v68 = v57;
    v65 = "Missing PRK - %@";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v58, v59, v65, v62, 0xCu);
    sub_100008D3C(v63, &unk_1003D9140, &qword_10033E640);

LABEL_35:

    type metadata accessor for AACustodianError(0);
    v122 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v69 = *(v61 + 8);
    v70 = v118;
    v69(v113, v118);
    v69(v115, v70);
    return sub_100008D3C(a3 + v117, &qword_1003D8B60, &unk_10033F210);
  }

  v102 = v121;
  v103 = v120;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v107 objectForKeyedSubscript:v50];

  if (v51)
  {
    v122 = v51;
    if (swift_dynamicCast())
    {
      v52 = v110;
      UUID.init(uuidString:)();
      v53 = v52;

      v54 = v52;
      v55 = v118;
      if (v29(v54, 1, v118) == 1)
      {
        sub_100008D3C(v53, &qword_1003D8B60, &unk_10033F210);
      }

      else
      {
        v71 = v109;
        v72 = v105;
        v105(v109, v53, v55);
        v73 = v114;
        v74 = v117;
        sub_100008D3C(v114 + v117, &qword_1003D8B60, &unk_10033F210);
        v72(v73 + v74, v71, v55);
        v108(v73 + v74, 0, 1, v55);
      }
    }
  }

  v75 = String._bridgeToObjectiveC()();
  v76 = [v107 objectForKeyedSubscript:v75];

  v77 = v114;
  v78 = v116;
  v79 = v111;
  if (v76)
  {
    v122 = v76;
    if (swift_dynamicCast())
    {
      v80 = v121;
      *v22 = v120;
      v22[1] = v80;
    }
  }

  v81 = *(v78 + 16);
  v82 = v118;
  v81(v77, v115, v118);
  v81(v77 + v79[5], v113, v82);
  v83 = (v77 + v79[6]);
  v84 = v112;
  *v83 = v104;
  v83[1] = v84;
  v85 = (v77 + v79[7]);
  v86 = v102;
  *v85 = v103;
  v85[1] = v86;
  v87 = String._bridgeToObjectiveC()();
  v88 = [v107 objectForKeyedSubscript:v87];

  v89 = 0xF000000000000000;
  if (v88)
  {
    v122 = v88;
    v90 = swift_dynamicCast();
    v91 = v120;
    if (v90)
    {
      v89 = v121;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
  }

  v92 = (v77 + v79[8]);
  *v92 = v91;
  v92[1] = v89;
  v93 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v94 = v119;
  [v119 encodeSystemFieldsWithCoder:v93];
  [v93 finishEncoding];
  v95 = [v93 encodedData];
  v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  swift_unknownObjectRelease();
  v99 = *(v78 + 8);
  v100 = v118;
  v99(v113, v118);
  result = (v99)(v115, v100);
  v101 = (v77 + v79[9]);
  *v101 = v96;
  v101[1] = v98;
  *(v77 + v79[10]) = v106 & 1;
  return result;
}

uint64_t sub_1000F3E8C(id *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = __chkstk_darwin(v4 - 8);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v55 - v7;
  [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v9 = v61;
  v60 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v10 = UUID.uuidString.getter();
  if (!*(&v9 + 1))
  {

    goto LABEL_6;
  }

  if (v9 != __PAIR128__(v11, v10))
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_6:
    v13 = UUID.uuidString.getter();
    *(&v62 + 1) = &type metadata for String;
    v63 = &protocol witness table for String;
    *&v61 = v13;
    *(&v61 + 1) = v14;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v15 = (v1 + v60[6]);
  v17 = *v15;
  v16 = v15[1];
  if (!*(&v61 + 1))
  {
    goto LABEL_11;
  }

  if (v61 == __PAIR128__(v16, v17))
  {

    goto LABEL_12;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_11:
    *(&v62 + 1) = &type metadata for String;
    v63 = &protocol witness table for String;
    *&v61 = v17;
    *(&v61 + 1) = v16;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_12:
  CKRecordKeyValueSetting.subscript.getter();
  v19 = v61;
  v20 = (v2 + v60[7]);
  v21 = *v20;
  v22 = v20[1];
  v59 = v2;
  if (*(&v61 + 1) >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      sub_100015D6C(v21, v22);
      sub_100015D58(v19, *(&v19 + 1));
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v22 >> 60 == 15)
  {
LABEL_16:
    sub_100015D6C(v21, v22);
    sub_100015D58(v19, *(&v19 + 1));
    sub_100015D58(v21, v22);
LABEL_17:
    v23 = *v20;
    v24 = v20[1];
    *(&v62 + 1) = &type metadata for Data;
    v63 = &protocol witness table for Data;
    *&v61 = v23;
    *(&v61 + 1) = v24;
    sub_100015D6C(v23, v24);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_18;
  }

  sub_100015D6C(v21, v22);
  sub_100015D6C(v21, v22);
  sub_100052704(v19, *(&v19 + 1));
  v44 = sub_10018F69C(v19, *(&v19 + 1), v21, v22);
  sub_100012324(v21, v22);
  sub_100015D58(v19, *(&v19 + 1));
  sub_100015D58(v21, v22);
  sub_100015D58(v19, *(&v19 + 1));
  if (!v44)
  {
    goto LABEL_17;
  }

LABEL_18:
  CKRecordKeyValueSetting.subscript.getter();
  v25 = v61;
  v26 = v59 + v60[8];
  v28 = *v26;
  v27 = *(v26 + 8);
  if (*(&v61 + 1) >> 60 == 15)
  {
    if (v27 >> 60 == 15)
    {
      sub_100052704(*v26, *(v26 + 8));
      sub_100015D58(v25, *(&v25 + 1));
      goto LABEL_27;
    }
  }

  else if (v27 >> 60 != 15)
  {
    sub_100052704(*v26, *(v26 + 8));
    sub_100052704(v25, *(&v25 + 1));
    v45 = sub_10018F69C(v25, *(&v25 + 1), v28, v27);
    sub_100015D58(v25, *(&v25 + 1));
    sub_100015D58(v28, v27);
    sub_100015D58(v25, *(&v25 + 1));
    if (v45)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  sub_100052704(*v26, *(v26 + 8));
  sub_100015D58(v25, *(&v25 + 1));
  sub_100015D58(v28, v27);
LABEL_23:
  v29 = *v26;
  v30 = *(v26 + 8);
  if (v30 >> 60 == 15)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    *&v62 = 0;
  }

  else
  {
    v34 = &protocol witness table for Data;
    v33 = &type metadata for Data;
    v31 = *v26;
    v32 = *(v26 + 8);
  }

  *&v61 = v31;
  *(&v61 + 1) = v32;
  *(&v62 + 1) = v33;
  v63 = v34;
  sub_100052704(v29, v30);
  CKRecordKeyValueSetting.subscript.setter();
LABEL_27:
  v58 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v35 = v61;
  v36 = v60[11];
  v37 = v57;
  sub_1000F2504(v59 + v36, v57);
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if (v40(v37, 1, v38) == 1)
  {
    sub_100008D3C(v37, &qword_1003D8B60, &unk_10033F210);
    if (!*(&v35 + 1))
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v55 = v35;
  v41 = UUID.uuidString.getter();
  v43 = v42;
  (*(v39 + 8))(v37, v38);
  if (!*(&v35 + 1))
  {
    if (!v43)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  if (!v43)
  {
LABEL_41:

LABEL_42:
    v46 = v56;
    sub_1000F2504(v59 + v36, v56);
    if (v40(v46, 1, v38) == 1)
    {
      sub_100008D3C(v46, &qword_1003D8B60, &unk_10033F210);
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      v47 = UUID.uuidString.getter();
      *(&v62 + 1) = &type metadata for String;
      v63 = &protocol witness table for String;
      *&v61 = v47;
      *(&v61 + 1) = v48;
      (*(v39 + 8))(v46, v38);
    }

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_47;
  }

  if (v55 == v41 && *(&v35 + 1) == v43)
  {

    goto LABEL_47;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v54 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_47:
  CKRecordKeyValueSetting.subscript.getter();
  v49 = (v59 + v60[12]);
  v51 = *v49;
  v50 = v49[1];
  if (!*(&v61 + 1))
  {
    if (!v50)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_55;
  }

  if (!v50)
  {

    v63 = 0;
    v61 = 0u;
    v62 = 0u;
LABEL_56:

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v61 == __PAIR128__(v50, v51))
  {
    swift_unknownObjectRelease();
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v53 & 1) == 0)
  {
LABEL_55:
    *(&v62 + 1) = &type metadata for String;
    v63 = &protocol witness table for String;
    *&v61 = v51;
    *(&v61 + 1) = v50;
    goto LABEL_56;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F476C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x444964726F636572;
    v6 = 0x646F74737543746FLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
    }

    if (a1)
    {
      v5 = 0x6169646F74737563;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x797265766F636572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000F48C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F5DA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F48F4(uint64_t a1)
{
  v2 = sub_1000F5670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4930(uint64_t a1)
{
  v2 = sub_1000F5670();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F496C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v3 - 8);
  v46 = v45 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v48 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v45 - v9;
  v10 = sub_100005814(&qword_1003DD870, &qword_100341F20);
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v13 = v45 - v12;
  v14 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v16 = *(__chkstk_darwin(v14) + 44);
  v49 = v6;
  v19 = *(v6 + 56);
  v18 = v6 + 56;
  v17 = v19;
  v54 = v16;
  v55 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19(&v55[v16], 1, 1, v5);
  sub_1000080F8(a1, a1[3]);
  sub_1000F5670();
  v20 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_10000839C(a1);
    return sub_100008D3C(&v55[v54], &qword_1003D8B60, &unk_10033F210);
  }

  else
  {
    v45[0] = v17;
    v45[1] = v18;
    v53 = a1;
    LOBYTE(v56) = 0;
    v21 = sub_1000F5784(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v5;
    v24 = v13;
    v25 = *(v49 + 4);
    v25(v55, v52, v23);
    LOBYTE(v56) = 1;
    v26 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = &v55[v14[5]];
    v48 = v23;
    v25(v27, v26, v23);
    LOBYTE(v56) = 3;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v21;
    v29 = v55;
    v30 = &v55[v14[6]];
    *v30 = v28;
    v30[1] = v31;
    v57 = 4;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v22;
    v33 = v29;
    *&v29[v14[7]] = v56;
    v57 = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v29[v14[8]] = v56;
    v57 = 6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v29[v14[9]] = v56;
    LOBYTE(v56) = 7;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = v14;
    v29[v14[10]] = v34 & 1;
    LOBYTE(v56) = 2;
    v35 = v46;
    v36 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v53;
    v38 = v35;
    v39 = v47;
    sub_1000F244C(v38, &v29[v54]);
    LOBYTE(v56) = 8;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v41;
    v43 = &v29[v49[12]];
    (*(v51 + 8))(v24, v36);
    *v43 = v40;
    v43[1] = v42;
    sub_1000F56C4(v33, v39);
    sub_10000839C(v37);
    return sub_1000F5728(v33);
  }
}

uint64_t sub_1000F5178(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003DD880, &qword_100341F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1000F5670();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for UUID();
  sub_1000F5784(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CustodianRecoveryInfoRecord(0);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v18 = *v10;
    v19 = v11;
    v20 = 4;
    sub_100015D6C(v18, v11);
    v17[1] = sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v18, v19);
    v12 = (v3 + v9[8]);
    v13 = v12[1];
    v18 = *v12;
    v19 = v13;
    v20 = 5;
    sub_100052704(v18, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v18, v19);
    v14 = (v3 + v9[9]);
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v20 = 6;
    sub_100015D6C(v18, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v18, v19);
    LOBYTE(v18) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F5548(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5784(&unk_1003D9170, type metadata accessor for CustodianRecoveryInfoRecord, &unk_100341EA8);
  result = sub_1000F5784(&qword_1003DD858, type metadata accessor for CustodianRecoveryInfoRecord, &unk_100341E80);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianRecoveryInfoRecord(uint64_t a1)
{
  result = qword_1003DD8E8;
  if (!qword_1003DD8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F5618(uint64_t a1)
{
  result = sub_1000F5784(&unk_1003DD860, type metadata accessor for CustodianRecoveryInfoRecord, &unk_100341ED0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F5670()
{
  result = qword_1003DD878;
  if (!qword_1003DD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD878);
  }

  return result;
}

uint64_t sub_1000F56C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5728(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F5784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CustodianRecoveryInfoRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}