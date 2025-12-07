uint64_t sub_10030AF3C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_10030B394;
  }

  else
  {
    v4 = sub_10030B068;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10030B068()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 200);
  sub_1002FCB68(v1);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v6, v1, v3);
  swift_endAccess();
  if (v5 == 1)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 56);
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "Total bytes read %ld", v10, 0xCu);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Finished sending UPLOAD", v13, 2u);
    }

    v15 = *(v0 + 64);
    v14 = *(v0 + 72);

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = swift_allocObject();
    *(v0 + 168) = v17;
    *(v17 + 16) = v15;
    v18 = swift_allocObject();
    *(v0 + 176) = v18;
    *(v18 + 16) = v15;
    v19 = v15;
    v20 = swift_task_alloc();
    *(v0 + 184) = v20;
    *v20 = v0;
    v20[1] = sub_10030B428;
    v21 = *(v0 + 72);

    return concurrentRace<A>(priority:operation:against:)(v20, v21, &unk_1007FAE10, v17, &unk_1007FAE20, v18, &type metadata for () + 8);
  }

  else
  {
    swift_unknownObjectRelease();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10030B394()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030B428()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 120);
  sub_100005508(*(v2 + 72), &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v4 = sub_10030B64C;
  }

  else
  {
    v4 = sub_10030B5C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10030B5C0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030B64C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030B6E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1003094D4();
}

uint64_t sub_10030B780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_100309594(a1, v4);
}

uint64_t sub_10030B820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[15] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for SDAirDropMessage(0);
  v4[18] = swift_task_alloc();
  sub_10028088C(&qword_100977BB0, &qword_1007FADE0);
  v4[19] = swift_task_alloc();
  v5 = _s13UploadRequestVMa(0);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v4[23] = swift_task_alloc();
  sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v4[24] = swift_task_alloc();
  v6 = _s10AskRequestVMa(0);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[28] = static AirDropActor.shared;

  return _swift_task_switch(sub_10030BA84, v7, 0);
}

uint64_t sub_10030BA84()
{
  v1 = v0[14];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
  v0[29] = v2;
  if (!v2)
  {
LABEL_4:
    v7 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for SFAirDropSend.Failure.badRequest(_:), v7);
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest;
  swift_beginAccess();
  sub_10000FF90(v1 + v6, v5, &qword_100977BA0, &qword_1007FADD0);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100005508(v0[24], &qword_100977BA0, &qword_1007FADD0);
    goto LABEL_4;
  }

  v11 = v0[27];
  v12 = v0[25];
  v13 = v0[23];
  sub_10030D808(v0[24], v11, _s10AskRequestVMa);
  sub_10000FF90(v11 + *(v12 + 20), v13, &qword_100977BD8, &qword_1007FAE38);
  v14 = type metadata accessor for SFAirDrop.TransferType();
  v15 = *(v14 - 8);
  LODWORD(v13) = (*(v15 + 48))(v13, 1, v14);

  v16 = v0[23];
  if (v13 == 1)
  {
    sub_100005508(v0[23], &qword_100977BD8, &qword_1007FAE38);
LABEL_11:
    v38 = sub_1005EA438();
    v36 = v18;
    v37 = sub_1005F0AC0();
    v35 = v19;
    goto LABEL_12;
  }

  v17 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v15 + 8))(v16, v14);
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
LABEL_12:
  v20 = v0[21];
  v21 = v0[22];
  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  v39 = v0[16];
  v25 = v0[13];
  v26 = v0[14];
  v28 = v0[11];
  v27 = v0[12];
  sub_10000FF90(v0[27], v21, &unk_100977BE0, &unk_1007FAE40);
  *(v21 + v22[5]) = v28;
  v29 = (v21 + v22[6]);
  *v29 = v27;
  v29[1] = v25;
  *(v21 + v22[7]) = xmmword_1007F8A80;
  *(v21 + v22[8]) = 0;
  v30 = (v21 + v22[9]);
  *v30 = v38;
  v30[1] = v36;
  v31 = (v21 + v22[10]);
  *v31 = v37;
  v31[1] = v35;
  sub_10030D7A0(v21, v23, _s13UploadRequestVMa);
  (*(v20 + 56))(v23, 0, 1, v22);
  v32 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
  swift_beginAccess();

  sub_10000C788(v23, v26 + v32, &qword_100977BB0, &qword_1007FADE0);
  swift_endAccess();
  sub_10030D7A0(v21, v24, _s13UploadRequestVMa);
  swift_storeEnumTagMultiPayload();
  v33 = sub_100674350();
  v0[30] = v33;
  sub_10030D1B4(v24, type metadata accessor for SDAirDropMessage);
  *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext) = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadStart(totalBytes:)(v28);
  swift_endAccess();
  sub_10030D7A0(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v39, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10030D1B4(v0[16], off_1008DB930[EnumCaseMultiPayload]);

  return _swift_task_switch(sub_10030BFE8, 0, 0);
}

uint64_t sub_10030BFE8()
{
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = v1;
  sub_10000C4AC(v1, qword_1009873E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %ld bytes", v4, 0xCu);
  }

  v6 = v0[29];
  v5 = v0[30];

  v7 = swift_task_alloc();
  v0[32] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = xmmword_1007FAD30;
  *(v7 + 40) = v5;
  *(v7 + 48) = 0;
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_10030C1B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_10030C62C, v7, &type metadata for () + 8);
}

uint64_t sub_10030C1B4()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10030C4B4;
  }

  else
  {

    v2 = sub_10030C2D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030C2EC()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  sub_10000C4AC(v0[31], qword_100977A70);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sent Initial UPLOAD Request", v3, 2u);
  }

  v4 = v0[27];
  v5 = v0[22];

  swift_unknownObjectRelease();

  sub_10030D1B4(v5, _s13UploadRequestVMa);
  sub_10030D1B4(v4, _s10AskRequestVMa);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10030C4B4()
{
  v1 = *(v0 + 224);

  return _swift_task_switch(sub_10030C520, v1, 0);
}

uint64_t sub_10030C520()
{
  v1 = v0[27];
  v2 = v0[22];
  swift_unknownObjectRelease();

  sub_10030D1B4(v2, _s13UploadRequestVMa);
  sub_10030D1B4(v1, _s10AskRequestVMa);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10030C63C(uint64_t a1)
{
  v4 = *(_s15ExchangeRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100303020(a1, v6, v1 + v5);
}

uint64_t sub_10030C71C(uint64_t a1)
{
  v4 = *(_s15ExchangeRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10030350C(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030C838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100303FB8(a1, v4);
}

uint64_t sub_10030C8E0(uint64_t a1)
{
  v4 = *(type metadata accessor for NWConnection.State() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_10030745C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10030C9E4(NSObject *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10030D7A0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10030D808(v11, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v15 = &v14[*(v12 + 40)];
    v16 = v15[1];
    if (v16)
    {
      v17 = *v15;
      v18 = sec_trust_copy_ref(a1);
      v19 = sub_100469580(v17, v16, v18);
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_100977A70);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = v19 & 1;
        _os_log_impl(&_mh_execute_header, v21, v22, "Validated appleID and secTrust - receiver trusted: %{BOOL}d", v23, 8u);
      }

      a2(v19 & 1);
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = qword_1009735E0;

      v27 = v18;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = static AirDropActor.shared;
      v29 = sub_1000106F0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v30 = swift_allocObject();
      v30[2] = v28;
      v30[3] = v29;
      v30[4] = v25;
      v30[5] = v27;

      sub_1002B3398(0, 0, v8, &unk_1007FAEB0, v30);
    }

    else
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000C4AC(v31, qword_100977A70);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "No appleID for receiver present - handling as unknown receiver", v34, 2u);
      }

      a2(1);
    }

    return sub_10030D1B4(v14, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  }

  else
  {
    sub_10030D1B4(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10030CF34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10030A338(a1, v4, v5, v7, v6);
}

uint64_t sub_10030CFF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003061D8(a1, v4, v5, v6);
}

uint64_t sub_10030D0A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_100301FAC(a1, v5, v4);
}

unint64_t sub_10030D150()
{
  result = qword_100977C10;
  if (!qword_100977C10)
  {
    sub_100280938(&qword_100975610, &qword_1007F89B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C10);
  }

  return result;
}

uint64_t sub_10030D1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10030D214(uint64_t a1)
{
  v4 = *(_s12ErrorRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100304AB4(a1, v6, v1 + v5);
}

uint64_t sub_10030D2F4(uint64_t a1)
{
  v4 = *(_s12ErrorRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100305110(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030D410(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003058A0(a1, v4);
}

uint64_t sub_10030D4B0(uint64_t a1)
{
  v4 = *(_s10AskRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002FFB68(a1, v6, v1 + v5);
}

uint64_t sub_10030D590(uint64_t a1)
{
  v4 = *(_s10AskRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100300300(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030D6AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100301134(a1, v4);
}

uint64_t sub_10030D7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D870(uint64_t a1)
{
  v4 = *(_s12HelloRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002FD96C(a1, v6, v1 + v5);
}

uint64_t sub_10030D950(uint64_t a1)
{
  v4 = *(_s12HelloRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002FE4AC(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030DA6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1002FF058(a1, v4);
}

void *sub_10030DBB8(uint64_t a1, unint64_t a2)
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
      sub_100026AC0(a1, a2);
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
      v13 = sub_100015E10(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100026AC0(a1, a2);
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

uint64_t sub_10030DD34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100977C58);
  v1 = sub_10000C4AC(v0, qword_100977C58);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10030DDFC()
{
  sub_10028088C(&qword_100977C78, &qword_1007FB008);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1009A0728 = result;
  return result;
}

void sub_10030DE60()
{
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v1[2] = 16;
  v1[4] = 0;
  v2 = v1 + 4;
  v1[5] = 0;
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v6 & 1) == 0 && v5 && v5 < 0)
  {
    __break(1u);
  }

  else
  {
    bag_uuid = aks_get_bag_uuid();
    sub_100311810(bag_uuid, 0xD00000000000001ALL, 0x800000010078B710);
    if (v0)
    {
    }

    else
    {
      v4 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:v2];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }
}

uint64_t sub_10030DF94@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _DWORD *a9@<X8>)
{
  v10 = a6;
  v11 = a5;
  v13 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v13)
    {
      v109[0] = a3;
      LOWORD(v109[1]) = a4;
      BYTE2(v109[1]) = BYTE2(a4);
      BYTE3(v109[1]) = BYTE3(a4);
      BYTE4(v109[1]) = BYTE4(a4);
      BYTE5(v109[1]) = BYTE5(a4);
      v14 = a6 >> 62;
      v104 = a5;
      if ((a6 >> 62) <= 1)
      {
        if (!v14)
        {
          v112[0] = a5;
          LOWORD(v112[1]) = a6;
          BYTE2(v112[1]) = BYTE2(a6);
          BYTE3(v112[1]) = BYTE3(a6);
          BYTE4(v112[1]) = BYTE4(a6);
          BYTE5(v112[1]) = BYTE5(a6);
          sub_100294008(a5, a6);
          sub_100294008(v11, v10);
          if (qword_1009735C8 == -1)
          {
LABEL_6:
            TaskLocal.get()();
            if ((v111 & 1) != 0 || !v110 || (v110 & 0x80000000) == 0)
            {
              v15 = aks_remote_session();
              if (v15 == -536870211)
              {
                if (qword_1009735C0 == -1)
                {
LABEL_11:
                  v16 = type metadata accessor for Logger();
                  sub_10000C4AC(v16, qword_100977C58);
                  v17 = Logger.logObject.getter();
                  v18 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v17, v18))
                  {
                    v19 = swift_slowAlloc();
                    *v19 = 0;
                    _os_log_impl(&_mh_execute_header, v17, v18, "Received no memory error when creating session, clearing and retrying", v19, 2u);
                  }

                  v20 = aks_remote_session_reset_all();
                  if (v20)
                  {
                    v21 = v20;
                    v22 = Logger.logObject.getter();
                    v23 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v22, v23))
                    {
                      v24 = swift_slowAlloc();
                      *v24 = 67109120;
                      *(v24 + 4) = v21;
                      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to aks_remote_session_reset_all, errCode: %d", v24, 8u);
                    }
                  }

                  TaskLocal.get()();
                  if ((v111 & 1) != 0 || !v110 || (v110 & 0x80000000) == 0)
                  {
LABEL_183:
                    v47 = aks_remote_session();
                    goto LABEL_184;
                  }

                  __break(1u);
                  goto LABEL_213;
                }

LABEL_206:
                swift_once();
                goto LABEL_11;
              }

LABEL_185:
              sub_100026AC0(v104, v10);
              result = sub_100026AC0(v104, v10);
              goto LABEL_186;
            }

            goto LABEL_202;
          }

LABEL_191:
          swift_once();
          goto LABEL_6;
        }

        v46 = a5;
        if (a5 >> 32 >= a5)
        {
          sub_100294008(a5, a6);
          sub_100294008(v11, v10);
          if (!__DataStorage._bytes.getter() || !__OFSUB__(v46, __DataStorage._offset.getter()))
          {
            __DataStorage._length.getter();
            if (qword_1009735C8 == -1)
            {
              goto LABEL_64;
            }

            goto LABEL_197;
          }

          goto LABEL_200;
        }

        __break(1u);
        goto LABEL_193;
      }

      if (v14 == 2)
      {
        v43 = *(a5 + 16);
        v42 = *(a5 + 24);
        sub_100294008(a5, a6);
        sub_100294008(v11, v10);
        if (!__DataStorage._bytes.getter() || !__OFSUB__(v43, __DataStorage._offset.getter()))
        {
          if (!__OFSUB__(v42, v43))
          {
            __DataStorage._length.getter();
            if (qword_1009735C8 != -1)
            {
              swift_once();
            }

            TaskLocal.get()();
            if ((v112[0] & 0x100000000) != 0 || !LODWORD(v112[0]) || (v112[0] & 0x80000000) == 0)
            {
              v47 = aks_remote_session();
              if (v47 == -536870211)
              {
                if (qword_1009735C0 != -1)
                {
                  swift_once();
                }

                v86 = type metadata accessor for Logger();
                sub_10000C4AC(v86, qword_100977C58);
                v87 = Logger.logObject.getter();
                v88 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v87, v88))
                {
                  v89 = swift_slowAlloc();
                  *v89 = 0;
                  _os_log_impl(&_mh_execute_header, v87, v88, "Received no memory error when creating session, clearing and retrying", v89, 2u);
                }

                v90 = aks_remote_session_reset_all();
                if (v90)
                {
                  v91 = v90;
                  v92 = Logger.logObject.getter();
                  v93 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v92, v93))
                  {
                    v94 = swift_slowAlloc();
                    *v94 = 67109120;
                    *(v94 + 4) = v91;
                    _os_log_impl(&_mh_execute_header, v92, v93, "Failed to aks_remote_session_reset_all, errCode: %d", v94, 8u);
                  }
                }

                TaskLocal.get()();
                if ((v112[0] & 0x100000000) != 0 || !LODWORD(v112[0]) || (v112[0] & 0x80000000) == 0)
                {
                  goto LABEL_183;
                }

                goto LABEL_217;
              }

              goto LABEL_184;
            }

            goto LABEL_209;
          }

          __break(1u);
          goto LABEL_196;
        }

        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

LABEL_100:
      memset(v112, 0, 14);
      sub_100294008(v11, v10);
      sub_100294008(v11, v10);
      if (qword_1009735C8 == -1)
      {
LABEL_101:
        TaskLocal.get()();
        if ((v111 & 1) != 0 || !v110 || (v110 & 0x80000000) == 0)
        {
          v15 = aks_remote_session();
          if (v15 == -536870211)
          {
            if (qword_1009735C0 != -1)
            {
              swift_once();
            }

            v68 = type metadata accessor for Logger();
            sub_10000C4AC(v68, qword_100977C58);
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&_mh_execute_header, v69, v70, "Received no memory error when creating session, clearing and retrying", v71, 2u);
            }

            v72 = aks_remote_session_reset_all();
            if (v72)
            {
              v73 = v72;
              v74 = Logger.logObject.getter();
              v75 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                *v76 = 67109120;
                *(v76 + 4) = v73;
                _os_log_impl(&_mh_execute_header, v74, v75, "Failed to aks_remote_session_reset_all, errCode: %d", v76, 8u);
              }
            }

            TaskLocal.get()();
            if ((v111 & 1) != 0 || !v110 || (v110 & 0x80000000) == 0)
            {
              goto LABEL_183;
            }

            goto LABEL_214;
          }

          goto LABEL_185;
        }

        goto LABEL_204;
      }

LABEL_194:
      swift_once();
      goto LABEL_101;
    }

    v106 = a9;
    v30 = a3;
    a9 = ((a3 >> 32) - a3);
    if (a3 >> 32 >= a3)
    {
      v10 = a5;
      sub_100294008(a5, a6);
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v30, __DataStorage._offset.getter()))
      {
        __DataStorage._length.getter();
        sub_10030F9A0(v10, a6, v109);
        a9 = v106;
        v27 = v10;
        v28 = a6;
        if (!v9)
        {
          result = sub_100026AC0(v10, a6);
          v15 = v109[0];
          goto LABEL_186;
        }

        goto LABEL_219;
      }

LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    __break(1u);
    goto LABEL_188;
  }

  if (v13 != 2)
  {
    v32 = a6 >> 62;
    memset(v109, 0, 14);
    v104 = a5;
    if ((a6 >> 62) > 1)
    {
      v107 = a9;
      if (v32 == 2)
      {
        v44 = *(a5 + 16);
        a9 = *(a5 + 24);
        sub_100294008(a5, a6);
        sub_100294008(v11, v10);
        if (__DataStorage._bytes.getter())
        {
          v45 = v107;
          if (__OFSUB__(v44, __DataStorage._offset.getter()))
          {
            goto LABEL_199;
          }
        }

        else
        {
          v45 = v107;
        }

        if (!__OFSUB__(a9, v44))
        {
          __DataStorage._length.getter();
          if (qword_1009735C8 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          if ((v112[0] & 0x100000000) != 0)
          {
            a9 = v45;
          }

          else
          {
            a9 = v45;
            if (LODWORD(v112[0]) && (v112[0] & 0x80000000) != 0)
            {
              goto LABEL_210;
            }
          }

          v47 = aks_remote_session();
          if (v47 == -536870211)
          {
            if (qword_1009735C0 != -1)
            {
              swift_once();
            }

            v95 = type metadata accessor for Logger();
            sub_10000C4AC(v95, qword_100977C58);
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "Received no memory error when creating session, clearing and retrying", v98, 2u);
            }

            v99 = aks_remote_session_reset_all();
            if (v99)
            {
              v100 = v99;
              v101 = Logger.logObject.getter();
              v102 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                *v103 = 67109120;
                *(v103 + 4) = v100;
                _os_log_impl(&_mh_execute_header, v101, v102, "Failed to aks_remote_session_reset_all, errCode: %d", v103, 8u);
              }
            }

            TaskLocal.get()();
            if ((v112[0] & 0x100000000) != 0 || !LODWORD(v112[0]) || (v112[0] & 0x80000000) == 0)
            {
              goto LABEL_183;
            }

LABEL_218:
            __break(1u);
          }

          goto LABEL_184;
        }

LABEL_196:
        __break(1u);
LABEL_197:
        swift_once();
LABEL_64:
        TaskLocal.get()();
        if ((v112[0] & 0x100000000) != 0 || !LODWORD(v112[0]) || (v112[0] & 0x80000000) == 0)
        {
          v47 = aks_remote_session();
          if (v47 == -536870211)
          {
            if (qword_1009735C0 == -1)
            {
              goto LABEL_69;
            }

            goto LABEL_211;
          }

LABEL_184:
          v15 = v47;
          goto LABEL_185;
        }

        __break(1u);
        goto LABEL_208;
      }

      memset(v112, 0, 14);
      sub_100294008(a5, a6);
      sub_100294008(v11, v10);
      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      a9 = qword_1009A0728;
      TaskLocal.get()();
      if ((v111 & 1) == 0 && v110 && v110 < 0)
      {
        goto LABEL_205;
      }

      v15 = aks_remote_session();
      if (v15 != -536870211)
      {
        goto LABEL_182;
      }

      if (qword_1009735C0 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_10000C4AC(v77, qword_100977C58);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Received no memory error when creating session, clearing and retrying", v80, 2u);
      }

      v81 = aks_remote_session_reset_all();
      if (v81)
      {
        v82 = v81;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 67109120;
          *(v85 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v83, v84, "Failed to aks_remote_session_reset_all, errCode: %d", v85, 8u);
        }
      }

      TaskLocal.get()();
      if ((v111 & 1) == 0 && v110 && v110 < 0)
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (v32)
      {
        v57 = a5;
        if (a5 >> 32 < a5)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        sub_100294008(a5, a6);
        sub_100294008(v11, v10);
        if (__DataStorage._bytes.getter() && __OFSUB__(v57, __DataStorage._offset.getter()))
        {
          goto LABEL_201;
        }

        __DataStorage._length.getter();
        if (qword_1009735C8 != -1)
        {
          swift_once();
        }

        v58 = qword_1009A0728;
        TaskLocal.get()();
        if ((v112[0] & 0x100000000) == 0 && LODWORD(v112[0]) && (v112[0] & 0x80000000) != 0)
        {
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          swift_once();
LABEL_69:
          v48 = type metadata accessor for Logger();
          sub_10000C4AC(v48, qword_100977C58);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&_mh_execute_header, v49, v50, "Received no memory error when creating session, clearing and retrying", v51, 2u);
          }

          v52 = aks_remote_session_reset_all();
          if (v52)
          {
            v53 = v52;
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              *v56 = 67109120;
              *(v56 + 4) = v53;
              _os_log_impl(&_mh_execute_header, v54, v55, "Failed to aks_remote_session_reset_all, errCode: %d", v56, 8u);
            }
          }

          TaskLocal.get()();
          if ((v112[0] & 0x100000000) != 0 || !LODWORD(v112[0]) || (v112[0] & 0x80000000) == 0)
          {
            goto LABEL_183;
          }

          goto LABEL_216;
        }

        v108 = v58;
        v47 = aks_remote_session();
        if (v47 != -536870211)
        {
          goto LABEL_184;
        }

        if (qword_1009735C0 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_10000C4AC(v59, qword_100977C58);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Received no memory error when creating session, clearing and retrying", v62, 2u);
        }

        v63 = aks_remote_session_reset_all();
        if (v63)
        {
          v64 = v63;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 67109120;
            *(v67 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v65, v66, "Failed to aks_remote_session_reset_all, errCode: %d", v67, 8u);
          }
        }

        v11 = v108;
        TaskLocal.get()();
        if ((v112[0] & 0x100000000) != 0 || !LODWORD(v112[0]) || (v112[0] & 0x80000000) == 0)
        {
          goto LABEL_183;
        }

        __break(1u);
        goto LABEL_100;
      }

      v107 = a9;
      v112[0] = a5;
      LOWORD(v112[1]) = a6;
      BYTE2(v112[1]) = BYTE2(a6);
      BYTE3(v112[1]) = BYTE3(a6);
      BYTE4(v112[1]) = BYTE4(a6);
      BYTE5(v112[1]) = BYTE5(a6);
      sub_100294008(a5, a6);
      sub_100294008(v11, v10);
      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      if ((v111 & 1) == 0 && v110 && v110 < 0)
      {
        goto LABEL_203;
      }

      v15 = aks_remote_session();
      if (v15 != -536870211)
      {
        goto LABEL_182;
      }

      if (qword_1009735C0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000C4AC(v33, qword_100977C58);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Received no memory error when creating session, clearing and retrying", v36, 2u);
      }

      v37 = aks_remote_session_reset_all();
      if (v37)
      {
        v38 = v37;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 67109120;
          *(v41 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v39, v40, "Failed to aks_remote_session_reset_all, errCode: %d", v41, 8u);
        }
      }

      TaskLocal.get()();
      if ((v111 & 1) == 0 && v110 && v110 < 0)
      {
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
        goto LABEL_218;
      }
    }

    v15 = aks_remote_session();
LABEL_182:
    sub_100026AC0(v104, v10);
    result = sub_100026AC0(v104, v10);
    a9 = v107;
    goto LABEL_186;
  }

  v105 = a9;
  a9 = *(a3 + 16);
  v25 = *(a3 + 24);
  v10 = a5;
  sub_100294008(a5, a6);
  if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
  {
    goto LABEL_189;
  }

  if (__OFSUB__(v25, a9))
  {
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  __DataStorage._length.getter();
  sub_10030F9A0(v10, a6, v109);
  v27 = v10;
  v28 = a6;
  if (!v9)
  {
    result = sub_100026AC0(v10, a6);
    v15 = v109[0];
    a9 = v105;
LABEL_186:
    *a9 = v15;
    return result;
  }

LABEL_219:
  sub_100026AC0(v27, v28);

  __break(1u);
  return result;
}

uint64_t sub_10030F9A0@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, _DWORD *a9@<X8>)
{
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_62:
        TaskLocal.get()();
        if ((v53 & 1) != 0 || !v52 || (v52 & 0x80000000) == 0)
        {
          result = aks_remote_session();
          if (result != -536870211)
          {
            goto LABEL_85;
          }

          v51 = a9;
          if (qword_1009735C0 != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          sub_10000C4AC(v41, qword_100977C58);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v42, v43, "Received no memory error when creating session, clearing and retrying", v44, 2u);
          }

          v45 = aks_remote_session_reset_all();
          if (v45)
          {
            v46 = v45;
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              *v49 = 67109120;
              *(v49 + 4) = v46;
              _os_log_impl(&_mh_execute_header, v47, v48, "Failed to aks_remote_session_reset_all, errCode: %d", v49, 8u);
            }
          }

          TaskLocal.get()();
          if (v53)
          {
            a9 = v51;
            goto LABEL_84;
          }

          a9 = v51;
          if (!v52 || (v52 & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_99;
        }

        goto LABEL_93;
      }

LABEL_87:
      swift_once();
      goto LABEL_62;
    }

    v50 = a9;
    v21 = *(a3 + 16);
    v22 = *(a3 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v21, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      swift_once();
LABEL_10:
      v12 = type metadata accessor for Logger();
      sub_10000C4AC(v12, qword_100977C58);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Received no memory error when creating session, clearing and retrying", v15, 2u);
      }

      v16 = aks_remote_session_reset_all();
      if (v16)
      {
        v17 = v16;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 67109120;
          *(v20 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to aks_remote_session_reset_all, errCode: %d", v20, 8u);
        }
      }

      TaskLocal.get()();
      if (v53)
      {
        a9 = v50;
LABEL_81:
        result = aks_remote_session();
        goto LABEL_85;
      }

      a9 = v50;
      if (!v52 || (v52 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (__OFSUB__(v22, v21))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    TaskLocal.get()();
    a9 = v50;
    if ((v55 & 1) == 0 && v54 && v54 < 0)
    {
      __break(1u);
      goto LABEL_96;
    }

    result = aks_remote_session();
    if (result == -536870211)
    {
      if (qword_1009735C0 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_97;
    }

    goto LABEL_85;
  }

  if (!v10)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v53 & 1) != 0 || !v52 || (v52 & 0x80000000) == 0)
    {
      result = aks_remote_session();
      if (result != -536870211)
      {
        goto LABEL_85;
      }

      v50 = a9;
      if (qword_1009735C0 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_94;
    }

    goto LABEL_92;
  }

  while (1)
  {
    v50 = a9;
    a9 = a3;
    if (a3 >> 32 < a3)
    {
      __break(1u);
      goto LABEL_87;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
    {
      goto LABEL_91;
    }

    a9 = v50;
    __DataStorage._length.getter();
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v55 & 1) != 0 || !v54 || (v54 & 0x80000000) == 0)
    {
      break;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
LABEL_30:
    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100977C58);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received no memory error when creating session, clearing and retrying", v26, 2u);
    }

    v27 = aks_remote_session_reset_all();
    if (v27)
    {
      v28 = v27;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109120;
        *(v31 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to aks_remote_session_reset_all, errCode: %d", v31, 8u);
      }
    }

    TaskLocal.get()();
    if (v55)
    {
      goto LABEL_78;
    }

    a9 = v50;
    if (!v54 || (v54 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    __break(1u);
  }

  result = aks_remote_session();
  if (result == -536870211)
  {
    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100977C58);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Received no memory error when creating session, clearing and retrying", v35, 2u);
    }

    v36 = aks_remote_session_reset_all();
    if (v36)
    {
      v37 = v36;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 67109120;
        *(v40 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v38, v39, "Failed to aks_remote_session_reset_all, errCode: %d", v40, 8u);
      }
    }

    TaskLocal.get()();
    if (v55)
    {
LABEL_78:
      a9 = v50;
      goto LABEL_84;
    }

    a9 = v50;
    if (!v54 || (v54 & 0x80000000) == 0)
    {
LABEL_84:
      result = aks_remote_session();
      goto LABEL_85;
    }

LABEL_100:
    __break(1u);
  }

LABEL_85:
  *a9 = result;
  return result;
}

uint64_t sub_100310518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>)
{
  v80 = a8;
  v81 = a7;
  v82 = a9;
  v84 = a6;
  v85 = a5;
  v83 = a2;
  v87 = a1;
  v88 = type metadata accessor for AKSKeyClass();
  v86 = *(v88 - 8);
  v11 = __chkstk_darwin(v88);
  v12 = __chkstk_darwin(v11);
  v14 = (v76 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = v76 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v76 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v76 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v76 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v76 - v28;
  __chkstk_darwin(v27);
  v32 = v76 - v31;
  v33 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v33)
    {
      v91[0] = a3;
      LOWORD(v91[1]) = a4;
      BYTE2(v91[1]) = BYTE2(a4);
      BYTE3(v91[1]) = BYTE3(a4);
      BYTE4(v91[1]) = BYTE4(a4);
      BYTE5(v91[1]) = BYTE5(a4);
      if (qword_1009735C8 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }

    v29 = a3;
    if (a3 >> 32 >= a3)
    {
      v57 = __DataStorage._bytes.getter();
      if (v57)
      {
        v58 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v58))
        {
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v57 += a3 - v58;
      }

      v59 = __DataStorage._length.getter();
      if (v59 >= (a3 >> 32) - a3)
      {
        v60 = (a3 >> 32) - a3;
      }

      else
      {
        v60 = v59;
      }

      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v61 = 0;
      if ((v91[0] & 0x100000000) == 0 && LODWORD(v91[0]))
      {
        if ((v91[0] & 0x80000000) != 0)
        {
          goto LABEL_85;
        }

        v61 = -LODWORD(v91[0]);
      }

      LODWORD(v77) = v61;
      v78 = v60;
      v79 = v57;
      v62 = v86;
      v63 = *(v86 + 104);
      v64 = v88;
      v63(v20, **(&off_1008DB978 + v85), v88);
      v65 = AKSKeyClass.rawValue.getter();
      v66 = *(v62 + 8);
      v66(v20, v64);
      if (v65 >= 0xFFFFFFFF80000000)
      {
        if (v65 <= 0x7FFFFFFF)
        {
          v67 = v88;
          v63(v17, **(&off_1008DB978 + v84), v88);
          v68 = AKSKeyClass.rawValue.getter();
          v66(v17, v67);
          if (v68 >= 0xFFFFFFFF80000000)
          {
            if (v68 <= 0x7FFFFFFF)
            {
              goto LABEL_56;
            }

            goto LABEL_79;
          }

          goto LABEL_77;
        }

        goto LABEL_73;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (v33 == 2)
  {
    v79 = v30;
    v43 = *(a3 + 16);
    v26 = *(a3 + 24);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = v44;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v46))
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v39 = (v43 - v46 + v45);
      v37 = &v26[-v43];
      if (!__OFSUB__(v26, v43))
      {
LABEL_17:
        v47 = __DataStorage._length.getter();
        if (v47 < v37)
        {
          v37 = v47;
        }

        if (qword_1009735C8 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v39 = 0;
      v37 = &v26[-v43];
      if (!__OFSUB__(v26, v43))
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_60:
    swift_once();
LABEL_4:
    TaskLocal.get()();
    v34 = 0;
    if ((v90 & 1) == 0 && v89)
    {
      if (v89 < 0)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v34 = -v89;
    }

    LODWORD(v79) = v34;
    v35 = v86;
    v36 = **(&off_1008DB978 + v85);
    v37 = v88;
    v85 = *(v86 + 104);
    v85(v26, v36, v88);
    v38 = AKSKeyClass.rawValue.getter();
    v40 = *(v35 + 8);
    v39 = (v35 + 8);
    v14 = v40;
    v40(v26, v37);
    if (v38 >= 0xFFFFFFFF80000000)
    {
      if (v38 <= 0x7FFFFFFF)
      {
        v41 = v88;
        v85(v23, **(&off_1008DB978 + v84), v88);
        v42 = AKSKeyClass.rawValue.getter();
        v14(v23, v41);
        if (v42 >= 0xFFFFFFFF80000000)
        {
          if (v42 <= 0x7FFFFFFF)
          {
            goto LABEL_56;
          }

          goto LABEL_74;
        }

        goto LABEL_70;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  memset(v91, 0, 14);
  if (qword_1009735C8 != -1)
  {
LABEL_62:
    swift_once();
  }

  TaskLocal.get()();
  v69 = 0;
  if ((v90 & 1) == 0 && v89)
  {
    if (v89 < 0)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v69 = -v89;
  }

  LODWORD(v79) = v69;
  v70 = v86;
  v14 = (v86 + 104);
  v39 = *(v86 + 104);
  v37 = v88;
  v39(v32, **(&off_1008DB978 + v85), v88);
  v71 = AKSKeyClass.rawValue.getter();
  v72 = *(v70 + 8);
  v72(v32, v37);
  if (v71 < 0xFFFFFFFF80000000)
  {
    goto LABEL_64;
  }

  if (v71 > 0x7FFFFFFF)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
LABEL_20:
    TaskLocal.get()();
    v48 = 0;
    if ((v91[0] & 0x100000000) == 0 && LODWORD(v91[0]))
    {
      if ((v91[0] & 0x80000000) != 0)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
      }

      v48 = -LODWORD(v91[0]);
    }

    v76[1] = v48;
    v77 = v37;
    v78 = v39;
    v49 = v86;
    v50 = *(v86 + 104);
    v51 = v88;
    v50(v14, **(&off_1008DB978 + v85), v88);
    v52 = AKSKeyClass.rawValue.getter();
    v53 = *(v49 + 8);
    v53(v14, v51);
    if (v52 >= 0xFFFFFFFF80000000)
    {
      if (v52 <= 0x7FFFFFFF)
      {
        v54 = v79;
        v55 = v88;
        v50(v79, **(&off_1008DB978 + v84), v88);
        v56 = AKSKeyClass.rawValue.getter();
        v53(v54, v55);
        if (v56 >= 0xFFFFFFFF80000000)
        {
          if (v56 <= 0x7FFFFFFF)
          {
            goto LABEL_56;
          }

          goto LABEL_78;
        }

        goto LABEL_76;
      }

      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_69;
  }

  v73 = v88;
  v39(v29, **(&off_1008DB978 + v84), v88);
  v74 = AKSKeyClass.rawValue.getter();
  v72(v29, v73);
  if (v74 < 0xFFFFFFFF80000000)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v74 > 0x7FFFFFFF)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_56:
  result = aks_sign_signing_key();
  *v82 = result;
  return result;
}

void *sub_100310E8C@<X0>(char a3@<W2>, _DWORD *a4@<X8>)
{
  v6 = type metadata accessor for AKSKeyClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  result = TaskLocal.get()();
  if ((v14 & 1) != 0 || !v13 || (v13 & 0x80000000) == 0)
  {
    (*(v7 + 104))(v9, **(&off_1008DB978 + a3), v6);
    v11 = AKSKeyClass.rawValue.getter();
    result = (*(v7 + 8))(v9, v6);
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v11 <= 0x7FFFFFFF)
    {
      result = aks_validate_local_key();
      *a4 = result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100311060()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003110D4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_10031115C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10031118C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1003111B8@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_100311278@<X0>(_DWORD *a2@<X8>)
{
  v3 = sub_100283614();

  *a2 = v3;
  return result;
}

uint64_t sub_1003112B8(__int16 a1)
{
  v2 = sub_10027FC04(&off_1008D6998);
  sub_10028088C(&qword_100977C70, &unk_1007FAFF8);
  swift_arrayDestroy();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 8;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v2[8];
  v9 = (v6 + 63) >> 6;
  v10 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = v11 | (v4 << 6);
      if ((a1 & 0x7F) == *(v3[6] + 4 * v12))
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v14 = v3;
    v15 = (v3[7] + 16 * v12);
    v16 = v15[1];
    v30 = *v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10028E1C8(0, *(v10 + 2) + 1, 1, v10);
    }

    v18 = *(v10 + 2);
    v17 = *(v10 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = sub_10028E1C8((v17 > 1), v18 + 1, 1, v10);
      v19 = v18 + 1;
      v10 = v21;
    }

    v3 = v14;
    *(v10 + 2) = v19;
    v20 = &v10[16 * v18];
    *(v20 + 4) = v30;
    *(v20 + 5) = v16;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_29:
      v10 = sub_10028E1C8(0, *(v10 + 2) + 1, 1, v10);
      goto LABEL_18;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = v5[v13];
    ++v4;
    if (v8)
    {
      v4 = v13;
      goto LABEL_4;
    }
  }

  if ((a1 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v23 = *(v10 + 2);
  v22 = *(v10 + 3);
  if (v23 >= v22 >> 1)
  {
    v10 = sub_10028E1C8((v22 > 1), v23 + 1, 1, v10);
  }

  *(v10 + 2) = v23 + 1;
  v24 = &v10[16 * v23];
  *(v24 + 4) = 0x74616E696769726FLL;
  *(v24 + 5) = 0xEA0000000000726FLL;
LABEL_21:
  if ((a1 & 0x100) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10028E1C8(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_10028E1C8((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 2) = v26 + 1;
    v27 = &v10[16 * v26];
    *(v27 + 4) = 0x6665524D4341;
    *(v27 + 5) = 0xE600000000000000;
  }

  sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  sub_1003117AC();
  v28 = BidirectionalCollection<>.joined(separator:)();

  return v28;
}

uint64_t sub_1003115C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v18 = *(a1 + 64);
    v5 = *(a1 + 72);
    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    v8 = *(a2 + 64);
    v9 = *(a2 + 72);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v10 = a1, v11 = a2, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v11, v13 = v12, a1 = v10, (v13 & 1) != 0))
    {
      v14 = (a2 + 120);
      v15 = v2 - 1;
      for (i = (a1 + 120); ; i += 48)
      {
        if (v4)
        {
          if (!v6 || (v3 != v7 || v4 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6)
        {
          return 0;
        }

        if (v5)
        {
          if ((v9 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v9 & 1 | (v18 != v8))
        {
          return 0;
        }

        if (!v15)
        {
          break;
        }

        v3 = *(i - 3);
        v4 = *(i - 2);
        v18 = *(i - 1);
        v5 = *i;
        v7 = *(v14 - 3);
        v6 = *(v14 - 2);
        v8 = *(v14 - 1);
        v9 = *v14;
        if ((*(i - 5) != *(v14 - 5) || *(i - 4) != *(v14 - 4)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v14 += 48;
        --v15;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100311750(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003117AC()
{
  result = qword_10097F070;
  if (!qword_10097F070)
  {
    sub_100280938(&unk_100976C20, &unk_1007F9D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F070);
  }

  return result;
}

uint64_t sub_100311810(uint64_t result, void *a2, unint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100977C58);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_10000C4E4(a2, a3, &v17);
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s, AKS errCode: %d", v9, 0x12u);
      sub_10000C60C(v10);
    }

    v17 = a2;
    v18 = a3;

    v11._countAndFlagsBits = 0x646F43727265202CLL;
    v11._object = 0xEB00000000203A65;
    String.append(_:)(v11);
    v19 = v5;
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13 = sub_100010F88(10, v17, v18);
    v15 = v14;
    sub_1000115C8();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100311A20(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_28:
        TaskLocal.get()();
        if ((v16 & 1) == 0 && v15 && v15 < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_31;
      }

LABEL_40:
      swift_once();
      goto LABEL_28;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
    {
      goto LABEL_46;
    }

    if (__OFSUB__(v5, v4))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
LABEL_14:
    TaskLocal.get()();
    a1 = 0;
    if ((v18 & 1) != 0 || !v17 || (v17 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v16 & 1) == 0 && v15 && v15 < 0)
    {
      goto LABEL_48;
    }

    goto LABEL_31;
  }

LABEL_18:
  v6 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
  {
    goto LABEL_47;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v18 & 1) == 0 && v17 && v17 < 0)
  {
LABEL_50:
    __break(1u);
  }

LABEL_31:
  state = aks_remote_peer_get_state();
  result = sub_100311810(state, 0xD000000000000023, 0x800000010078B750);
  if (v2)
  {
    return result;
  }

  sub_10028088C(&unk_100987410, &unk_1007FB010);
  v9 = swift_allocObject();
  v10 = j__malloc_size(v9);
  *(v9 + 16) = 3;
  *(v9 + 24) = 2 * v10 - 64;
  *(v9 + 32) = 0;
  *(v9 + 34) = 0;
  if (sub_100311750(v9, &off_1008D6A78))
  {

    return 0;
  }

  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007F8830;
  *(v11 + 56) = &type metadata for UInt8;
  *(v11 + 64) = &protocol witness table for UInt8;
  v12 = *(v9 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_44;
  }

  v13 = v11;
  *(v11 + 32) = *(v9 + 32);
  *(v11 + 96) = &type metadata for UInt8;
  *(v11 + 104) = &protocol witness table for UInt8;
  if (v12 == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v11 + 72) = *(v9 + 33);
  *(v11 + 136) = &type metadata for UInt8;
  *(v11 + 144) = &protocol witness table for UInt8;
  if (v12 < 3)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v14 = *(v9 + 34);

  *(v13 + 112) = v14;
  return String.init(format:_:)();
}

uint64_t sub_100311EC0(uint64_t a1, char a2, char a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = 4;
        if ((a2 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 11;
        if ((a2 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      if (a1 == 8)
      {
        result = 12;
        if ((a2 & 1) == 0)
        {
          return result;
        }

        return result | 0x80;
      }

      if (a1 != 9)
      {
        if (a1 == 10)
        {
          result = 2;
          if ((a2 & 1) == 0)
          {
            return result;
          }

          return result | 0x80;
        }

        goto LABEL_34;
      }

      if (a3)
      {
        result = 263;
      }

      else
      {
        result = 7;
      }

      if ((a2 & 1) == 0)
      {
        return result;
      }
    }

    return result | 0x80;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      goto LABEL_16;
    }

    if (a1 == 2)
    {
      result = 5;
      if ((a2 & 1) == 0)
      {
        return result;
      }

      return result | 0x80;
    }

LABEL_34:
    _StringGuts.grow(_:)(28);

    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      result = 1;
      if ((a2 & 1) == 0)
      {
        return result;
      }

      return result | 0x80;
    }

LABEL_16:
    result = 10;
    if ((a2 & 1) == 0)
    {
      return result;
    }

    return result | 0x80;
  }

  result = 7;
  if (a2)
  {
    return result | 0x80;
  }

  return result;
}

unint64_t sub_10031205C(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, unint64_t a5)
{
  result = sub_100311810(a1, a4, a5);
  if (!v5)
  {
    if (a2 && a3 >= 1)
    {
      v11 = sub_1004E53D0(a2, a3);
      free(a2);
      return v11;
    }

    else
    {
      if (qword_1009735C0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000C4AC(v12, qword_100977C58);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_10000C4E4(a4, a5, &v22);
        _os_log_impl(&_mh_execute_header, v13, v14, "%s, no AKS output", v15, 0xCu);
        sub_10000C60C(v16);
      }

      v22 = a4;
      v23 = a5;

      v17._countAndFlagsBits = 0x74756F206F6E202CLL;
      v17._object = 0xEB00000000747570;
      String.append(_:)(v17);
      v18 = sub_100010F88(10, v22, v23);
      v20 = v19;
      sub_1000115C8();
      swift_allocError();
      *v21 = v18;
      *(v21 + 8) = v20;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_100312270(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = a1;
  v5 = type metadata accessor for AKSRefKeyParam();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = __chkstk_darwin(v5);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for AKSKeyClass();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  if (qword_1009735C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100977C58);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v44 = v2;
    v45 = v11;
    v19 = v10;
    v20 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v54 = v10;
    *v20 = 136315394;
    v21 = sub_10000C4E4(qword_1007FB228[v50], 0xE100000000000000, &v54);

    *(v20 + 4) = v21;
    *(v20 + 12) = 1024;
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v22 = 0;
    if ((v53 & 0x100000000) == 0 && v53)
    {
      if ((v53 & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      v22 = -v53;
    }

    *(v20 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "Generating LTK of class %s, keybag: %d", v20, 0x12u);
    sub_10000C60C(v10);

    v10 = v19;
    v3 = v44;
    v11 = v45;
    v53 = 0;
    v54 = 0;
    if ((a2 & 1) == 0)
    {
LABEL_11:
      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      if ((v52 & 1) == 0 && v51 && v51 < 0)
      {
        goto LABEL_38;
      }

      (*(v11 + 104))(v15, **(&off_1008DB978 + v50), v10);
      v24 = AKSKeyClass.rawValue.getter();
      (*(v11 + 8))(v15, v10);
      if (v24 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v24 <= 0x7FFFFFFF)
      {
        signing_key = aks_create_signing_key();
        return sub_10031205C(signing_key, v54, v53, 0xD00000000000001BLL, 0x800000010078B730);
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_28;
    }
  }

  else
  {

    v53 = 0;
    v54 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  result = sub_10041E038(v23);
  if (v3)
  {
    return result;
  }

  v28 = result;
  v29 = v27;
  v43 = v10;
  v45 = 0;
  type metadata accessor for AKSRefKeyParams();
  swift_allocObject();
  AKSRefKeyParams.init()();
  v31 = v48;
  v30 = v49;
  v44 = *(v48 + 104);
  v44(v9, enum case for AKSRefKeyParam.remoteSessionSigningKeyCertificate(_:), v49);
  sub_100294008(v28, v29);
  sub_10030DBB8(v28, v29);
  v32 = v45;
  dispatch thunk of AKSRefKeyParams.set_data(key:value:)();
  v45 = v32;
  if (v32)
  {
    (*(v31 + 8))(v9, v30);
    sub_100026AC0(v28, v29);
  }

  v41 = v28;
  v42 = v29;
  v33 = *(v31 + 8);
  v33(v9, v30);

  v34 = v47;
  v44(v47, enum case for AKSRefKeyParam.remoteSessionSigningKeyType(_:), v30);
  v35 = v45;
  dispatch thunk of AKSRefKeyParams.set_number(key:value:)();
  if (v35)
  {
    v33(v34, v30);
    sub_100026AC0(v41, v42);
  }

  v10 = v11;
  v33(v34, v30);
  dispatch thunk of AKSRefKeyParams.serialize()();
  v17 = 0;
  if (qword_1009735C8 != -1)
  {
    goto LABEL_39;
  }

LABEL_28:
  TaskLocal.get()();
  v36 = v43;
  if ((v52 & 1) == 0 && v51 && v51 < 0)
  {
LABEL_42:
    __break(1u);
  }

  v37 = v46;
  (*(v10 + 104))(v46, **(&off_1008DB978 + v50), v43);
  v38 = AKSKeyClass.rawValue.getter();
  (*(v10 + 8))(v37, v36);
  if (v38 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v38 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  signing_key_with_params = aks_create_signing_key_with_params();

  v40 = sub_10031205C(signing_key_with_params, v54, v53, 0xD00000000000001BLL, 0x800000010078B730);

  result = sub_100026AC0(v41, v42);
  if (!v17)
  {
    return v40;
  }

  return result;
}

void sub_1003129F0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_28:
        TaskLocal.get()();
        if ((v12 & 1) != 0 || !v11 || (v11 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_39:
      swift_once();
      goto LABEL_28;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (__OFSUB__(v4, v3))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
LABEL_14:
    TaskLocal.get()();
    a1 = 0;
    if ((v14 & 1) != 0 || !v13 || (v13 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v2)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v12 & 1) != 0 || !v11 || (v11 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

LABEL_18:
  v5 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
  {
    goto LABEL_43;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v14 & 1) == 0 && v13 && v13 < 0)
  {
LABEL_46:
    __break(1u);
  }

LABEL_31:
  v6 = aks_remote_peer_drop();
  if (v6 == -536870184)
  {
    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100977C58);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "aks_remote_peer_drop: peer already dropped (kAKSReturnNotReady)", v10, 2u);
    }
  }

  else
  {
    sub_100311810(v6, 0xD00000000000001ELL, 0x800000010078B780);
  }
}

unint64_t sub_100312E24()
{
  result = qword_100977C80;
  if (!qword_100977C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C80);
  }

  return result;
}

unint64_t sub_100312E7C()
{
  result = qword_100977C88;
  if (!qword_100977C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C88);
  }

  return result;
}

unint64_t sub_100312ED4()
{
  result = qword_100977C90;
  if (!qword_100977C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C90);
  }

  return result;
}

unint64_t sub_100312F2C()
{
  result = qword_100977C98;
  if (!qword_100977C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C98);
  }

  return result;
}

uint64_t sub_100312F80(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_28:
        TaskLocal.get()();
        if ((v9 & 1) != 0 || !v8 || (v8 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_39;
      }

LABEL_33:
      swift_once();
      goto LABEL_28;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (__OFSUB__(v4, v3))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
LABEL_14:
    TaskLocal.get()();
    a1 = 0;
    if ((v11 & 1) != 0 || !v10 || (v10 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v2)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v9 & 1) != 0 || !v8 || (v8 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

LABEL_18:
  v5 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
  {
    goto LABEL_37;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v11 & 1) == 0 && v10 && v10 < 0)
  {
LABEL_40:
    __break(1u);
  }

LABEL_31:
  state = aks_remote_peer_get_state();
  return sub_100311810(state, 0xD000000000000023, 0x800000010078B750);
}

uint64_t sub_100313418()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100977CA0);
  v1 = sub_10000C4AC(v0, qword_100977CA0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003134E0()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100977CA0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropSendService start", v8, 2u);
  }

  v9 = v1[14];
  v10 = v1[15];
  sub_10002CDC0(v1 + 11, v9);
  (*(v10 + 32))(v9, v10);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = qword_1009735E0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v14 = sub_1003189C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v1;

  sub_1002B281C(0, 0, v4, &unk_1007FB2E8, v15);

  sub_100637614(0);
  v1[8] = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100313770(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  sub_10028088C(&qword_100976468, &qword_1007F9738);
  v3[18] = swift_task_alloc();
  type metadata accessor for SFAirDrop.NetworkMetrics();
  v3[19] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v3[20] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.DisplayPriority();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropSend.Transfer.State();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  type metadata accessor for Date();
  v3[27] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Transfer();
  v3[28] = v6;
  v7 = *(v6 - 8);
  v3[29] = v7;
  v3[30] = *(v7 + 64);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[37] = v9;
  v10 = *(v9 - 8);
  v3[38] = v10;
  v3[39] = *(v10 + 64);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropSend.Request();
  v3[42] = v11;
  v12 = *(v11 - 8);
  v3[43] = v12;
  v3[44] = *(v12 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[48] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v3[49] = swift_task_alloc();
  v13 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v3[50] = v13;
  v14 = *(v13 - 8);
  v3[51] = v14;
  v3[52] = *(v14 + 64);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDrop.TransferType();
  v3[56] = v15;
  v3[57] = *(v15 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropClient.Identifier();
  v3[60] = v16;
  v3[61] = *(v16 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v3[65] = v17;
  v3[66] = *(v17 - 8);
  v3[67] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v3[68] = static AirDropActor.shared;

  return _swift_task_switch(sub_100313D88, v18, 0);
}

uint64_t sub_100313D88()
{
  v0[69] = *(v0[17] + 72);
  SFAirDropSend.Request.endpointID.getter();
  v1 = swift_task_alloc();
  v0[70] = v1;
  *v1 = v0;
  v1[1] = sub_100313E34;
  v2 = v0[67];

  return sub_10047B708(v2);
}

uint64_t sub_100313E34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  v5 = *(*v1 + 528);
  v6 = *(*v1 + 520);
  v2[71] = a1;

  v7 = *(v5 + 8);
  v2[72] = v7;
  v2[73] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);

  return _swift_task_switch(sub_100313FC0, v3, 0);
}

uint64_t sub_100313FC0()
{
  v163 = v0;
  if (*(*(v0 + 568) + 16))
  {
    if (qword_1009735D0 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(*(v0 + 296), qword_100977CA0);

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v162[0] = v4;
      *v3 = 136315138;
      type metadata accessor for SDAirDropDiscoveredEndpoint(0);
      sub_1003189C8(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint, &unk_1007FBF08);
      v5 = Set.description.getter();
      v7 = sub_10000C4E4(v5, v6, v162);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "Starting send to %s", v3, 0xCu);
      sub_10000C60C(v4);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = *(v0 + 512);
    if (Strong)
    {
      v10 = *(v0 + 504);
      v11 = *(v0 + 480);
      v12 = *(v0 + 488);
      sub_10043A598(v10);
      swift_unknownObjectRelease();
      (*(v12 + 32))(v9, v10, v11);
    }

    else
    {
      (*(*(v0 + 488) + 104))(*(v0 + 512), enum case for SFAirDropClient.Identifier.daemon(_:), *(v0 + 480));
    }

    v29 = *(v0 + 464);
    v28 = *(v0 + 472);
    v30 = *(v0 + 448);
    v31 = *(v0 + 456);
    SFAirDropSend.Request.type.getter();
    (*(v31 + 104))(v29, enum case for SFAirDrop.TransferType.peerPayment(_:), v30);
    v32 = static SFAirDrop.TransferType.== infix(_:_:)();
    v33 = *(v31 + 8);
    v33(v29, v30);
    v33(v28, v30);
    if (v32)
    {
      v34 = *(v0 + 512);
      v35 = *(v0 + 480);
      v36 = *(v0 + 488);
      (*(v36 + 8))(v34, v35);
      (*(v36 + 104))(v34, enum case for SFAirDropClient.Identifier.wallet(_:), v35);
    }

    v37 = *(v0 + 576);
    v160 = *(v0 + 568);
    v38 = *(v0 + 536);
    v39 = *(v0 + 520);
    v40 = *(v0 + 392);
    v41 = *(v0 + 136);
    SFAirDropSend.Request.endpointID.getter();
    sub_10047BC78(v38, v0 + 16);
    v37(v38, v39);
    v42 = *(v41 + 80);
    SFAirDropSend.Request.requestSource.getter();
    sub_1002FB3B4(v160, v40);
    v43 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    v44 = (*(*(v43 - 8) + 48))(v40, 1, v43);
    v45 = *(v0 + 392);
    if (v44 == 1)
    {
      sub_100005508(*(v0 + 392), &qword_1009763E0, &qword_1007F95D0);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100294130(v45);
      if (EnumCaseMultiPayload == 3)
      {
        sub_100531FBC(*(v0 + 128), *(v0 + 568), 0, 0, *(v0 + 512), *(v0 + 440));
LABEL_23:

        v137 = *(v0 + 512);
        v134 = *(v0 + 488);
        v136 = *(v0 + 480);
        v91 = *(v0 + 432);
        v132 = *(v0 + 440);
        v92 = *(v0 + 424);
        v124 = *(v0 + 416);
        v94 = *(v0 + 400);
        v93 = *(v0 + 408);
        v95 = *(v0 + 384);
        v126 = v95;
        v96 = *(v0 + 376);
        v120 = v96;
        v97 = *(v0 + 344);
        v122 = *(v0 + 336);
        v128 = *(v0 + 136);
        v98 = *(v0 + 128);
        SFProgressTask.split()();
        v99 = type metadata accessor for TaskPriority();
        (*(*(v99 - 8) + 56))(v95, 1, 1, v99);
        v100 = v92;
        (*(v93 + 16))(v92, v91, v94);
        (*(v97 + 16))(v96, v98, v122);
        v101 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v102 = (v124 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
        v103 = (*(v97 + 80) + v102 + 8) & ~*(v97 + 80);
        v104 = swift_allocObject();
        (*(v93 + 32))(v104 + v101, v100, v94);
        *(v104 + v102) = v128;
        (*(v97 + 32))(v104 + v103, v120, v122);

        static Task<>.noThrow(priority:operation:)();

        sub_100005508(v126, &qword_100976160, &qword_1007F8770);
        v105 = *(v93 + 8);
        v105(v91, v94);
        v105(v132, v94);
        sub_100005508(v0 + 16, &qword_100977DC8, &unk_1008091C0);
        (*(v134 + 8))(v137, v136);

        v106 = *(v0 + 8);
        goto LABEL_26;
      }
    }

    v139 = v42;
    v161 = *(v0 + 368);
    v47 = *(v0 + 344);
    v157 = *(v0 + 336);
    v48 = *(v0 + 280);
    v49 = *(v0 + 288);
    v152 = *(v0 + 272);
    v50 = *(v0 + 128);
    SFAirDropSend.Request.id.getter();
    v51 = SFAirDrop.TransferIdentifier.stringValue.getter();
    sub_10054141C(8, v51, v52);

    v53 = static String._fromSubstring(_:)();
    v55 = v54;

    strcpy(v162, "AirDrop.");
    BYTE1(v162[1]) = 0;
    WORD1(v162[1]) = 0;
    HIDWORD(v162[1]) = -402653184;
    v56._countAndFlagsBits = v53;
    v56._object = v55;
    String.append(_:)(v56);

    Logger.init(subsystem:category:)();
    v140 = *(v48 + 8);
    v140(v49, v152);
    v57 = v157;
    v158 = *(v47 + 16);
    v158(v161, v50, v57);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 368);
      v61 = *(v0 + 344);
      v150 = *(v0 + 336);
      v62 = *(v0 + 288);
      v147 = *(v0 + 272);
      v63 = swift_slowAlloc();
      v162[0] = swift_slowAlloc();
      *v63 = 136315394;
      SFAirDropSend.Request.id.getter();
      v64 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
      v66 = v65;
      v140(v62, v147);
      (*(v61 + 8))(v60, v150);
      v67 = sub_10000C4E4(v64, v66, v162);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      sub_1003189C8(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint, &unk_1007FBF08);
      v68 = Set.description.getter();
      v70 = sub_10000C4E4(v68, v69, v162);

      *(v63 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v58, v59, "Send StateMachine START %s {initialEndpoints: %s}", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v71 = *(v0 + 368);
      v72 = *(v0 + 336);
      v73 = *(v0 + 344);

      (*(v73 + 8))(v71, v72);
    }

    v121 = *(v0 + 512);
    v117 = *(v0 + 488);
    v118 = *(v0 + 496);
    v119 = *(v0 + 480);
    v133 = *(v0 + 440);
    v135 = *(v0 + 408);
    v138 = *(v0 + 400);
    v74 = *(v0 + 376);
    v130 = *(v0 + 352);
    v127 = *(v0 + 344);
    v75 = *(v0 + 336);
    v148 = v75;
    v155 = *(v0 + 328);
    v151 = *(v0 + 320);
    v129 = *(v0 + 312);
    v145 = *(v0 + 304);
    v146 = *(v0 + 296);
    v142 = *(v0 + 288);
    v123 = *(v0 + 272);
    v141 = *(v0 + 264);
    v153 = *(v0 + 256);
    v149 = *(v0 + 248);
    v125 = *(v0 + 240);
    v143 = *(v0 + 232);
    v144 = *(v0 + 224);
    v77 = *(v0 + 200);
    v76 = *(v0 + 208);
    v78 = *(v0 + 192);
    v79 = *(v0 + 176);
    v114 = *(v0 + 184);
    v115 = *(v0 + 168);
    v116 = *(v0 + 160);
    v131 = *(v0 + 144);
    v80 = *(v0 + 128);
    sub_1005369A0(v80, *(v0 + 568));
    SFAirDropSend.Request.id.getter();
    v158(v74, v80, v75);
    static Date.now.getter();
    (*(v77 + 104))(v76, enum case for SFAirDropSend.Transfer.State.created(_:), v78);
    (*(v79 + 104))(v114, enum case for SFAirDrop.DisplayPriority.normal(_:), v115);
    v81 = type metadata accessor for SFNWInterfaceType();
    (*(*(v81 - 8) + 56))(v116, 1, 1, v81);
    (*(v117 + 16))(v118, v121, v119);

    SFAirDrop.NetworkMetrics.init()();
    SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();
    v162[0] = 0;
    v162[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v162, "AirDrop Send [");
    HIBYTE(v162[1]) = -18;
    SFAirDropSend.Request.id.getter();
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v82);

    v140(v142, v123);
    v83._countAndFlagsBits = 93;
    v83._object = 0xE100000000000000;
    String.append(_:)(v83);
    v84 = *(v143 + 16);
    v84(v153, v141, v144);
    v84(v149, v141, v144);
    v158(v74, v80, v75);
    (*(v145 + 16))(v151, v155, v146);
    sub_100318600(v0 + 16, v0 + 56);
    v85 = (*(v143 + 80) + 24) & ~*(v143 + 80);
    v86 = (v125 + *(v127 + 80) + v85) & ~*(v127 + 80);
    v87 = (v130 + *(v145 + 80) + v86) & ~*(v145 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = v139;
    (*(v143 + 32))(v88 + v85, v149, v144);
    (*(v127 + 32))(v88 + v86, v74, v148);
    (*(v145 + 32))(v88 + v87, v151, v146);
    v89 = v88 + ((v129 + v87 + 7) & 0xFFFFFFFFFFFFFFF8);
    v90 = *(v0 + 72);
    *v89 = *(v0 + 56);
    *(v89 + 16) = v90;
    *(v89 + 32) = *(v0 + 88);

    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    SFAirDropSend.Transfer.id.getter();
    (*(v135 + 16))(v131, v133, v138);
    (*(v135 + 56))(v131, 0, 1, v138);
    swift_beginAccess();
    sub_1002B0C84(v131, v142);
    swift_endAccess();
    (*(v143 + 8))(v141, v144);
    (*(v145 + 8))(v155, v146);
    goto LABEL_23;
  }

  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 360);
  v14 = *(v0 + 336);
  v15 = *(v0 + 344);
  v16 = *(v0 + 128);
  sub_10000C4AC(*(v0 + 296), qword_100977CA0);
  (*(v15 + 16))(v13, v16, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 536);
    v20 = *(v0 + 520);
    v154 = *(v0 + 360);
    v156 = *(v0 + 576);
    v21 = *(v0 + 344);
    v159 = *(v0 + 336);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v162[0] = v23;
    *v22 = 136315138;
    SFAirDropSend.Request.endpointID.getter();
    sub_1003189C8(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v156(v19, v20);
    (*(v21 + 8))(v154, v159);
    v27 = sub_10000C4E4(v24, v26, v162);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "No resolved endpoints from initial endpoint: %s", v22, 0xCu);
    sub_10000C60C(v23);
  }

  else
  {
    v107 = *(v0 + 360);
    v108 = *(v0 + 336);
    v109 = *(v0 + 344);

    (*(v109 + 8))(v107, v108);
  }

  v110 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003189C8(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  v112 = v111;
  SFAirDropSend.Request.endpointID.getter();
  (*(*(v110 - 8) + 104))(v112, enum case for SFAirDropSend.Failure.missingEndpoint(_:), v110);
  swift_willThrow();

  v106 = *(v0 + 8);
LABEL_26:

  return v106();
}

uint64_t sub_1003153F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.DisplayPriority();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropSend.Transfer.State();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100977DD0, &qword_1007FB348);
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  sub_10028088C(&qword_100976460, &qword_1007F9730);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  v4[43] = v10;
  v4[44] = *(v10 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v4[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_10031578C, v11, 0);
}

uint64_t sub_10031578C()
{
  v27 = v0;
  v0[50] = sub_10028088C(&qword_100976470, &qword_1007F9740);
  SFProgressTask.initialValue.getter();
  SFAirDropSend.Transfer.id.getter();
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[34];
  v4 = v0[35];
  v5 = type metadata accessor for Logger();
  v0[51] = sub_10000C4AC(v5, qword_100977CA0);
  v6 = *(v4 + 16);
  v0[52] = v6;
  v0[53] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[41];
  v11 = v0[34];
  v12 = v0[35];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v13 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000C4E4(v14, v16, &v26);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropSendService.transfers ADD {id: %s}", v13, 0xCu);
    sub_10000C60C(v24);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[54] = v17;
  v19 = v0[17];
  v20 = v19[14];
  v21 = v19[15];
  sub_10002CDC0(v19 + 11, v20);
  v25 = (*(v21 + 40) + **(v21 + 40));
  v22 = swift_task_alloc();
  v0[55] = v22;
  *v22 = v0;
  v22[1] = sub_100315AD0;

  return v25(v20, v21);
}

uint64_t sub_100315AD0()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_100316BF4;
  }

  else
  {
    v4 = sub_100315BFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100315BFC()
{
  v1 = v0[52];
  v2 = v0[48];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v6 = v0[40];
  v8 = v0[33];
  v7 = v0[34];
  v0[57] = *(v0[17] + 16);
  v1(v6, v5, v7);
  v9 = *(v3 + 16);
  v0[58] = v9;
  v0[59] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v8, v2, v4);
  v10 = *(v3 + 56);
  v0[60] = v10;
  v0[61] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v8, 0, 1, v4);
  v11 = CurrentValueSubject.value.modify();
  sub_1002B12F0(v8, v6);
  v11(v0 + 6, 0);
  SFProgressTask.makeAsyncIterator()();
  v12 = sub_1003189C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v0[62] = v12;
  v13 = v0[49];
  v14 = swift_task_alloc();
  v0[63] = v14;
  *v14 = v0;
  v14[1] = sub_100315DDC;
  v15 = v0[32];
  v16 = v0[28];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v15, v13, v12, v16, v0 + 14);
}

uint64_t sub_100315DDC()
{
  v2 = *v1;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = sub_100317090;
  }

  else
  {
    v4 = sub_100315EF0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100315EF0()
{
  v121 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 256);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    (*(v0 + 416))(*(v0 + 296), *(v0 + 336), *(v0 + 272));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 432);
    v9 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
    if (v7)
    {
      v119 = *(v0 + 432);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v120 = v13;
      *v12 = 136315138;
      sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v17 = v11 + 8;
      v119(v9, v10);
      v18 = sub_10000C4E4(v14, v16, &v120);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "SDAirDropSendService.transfers REMOVE {id: %s}", v12, 0xCu);
      sub_10000C60C(v13);
    }

    else
    {

      v17 = v11 + 8;
      v8(v9, v10);
    }

    *(v0 + 512) = v17;
    v47 = *(v0 + 344);
    v48 = *(v0 + 352);
    v49 = *(v0 + 320);
    v50 = *(v0 + 264);
    (*(v0 + 416))(v49, *(v0 + 336), *(v0 + 272));
    (*(v48 + 56))(v50, 1, 1, v47);
    v51 = CurrentValueSubject.value.modify();
    sub_1002B12F0(v50, v49);
    v51(v0 + 16, 0);
    SFAirDropSend.Request.endpointID.getter();
    v52 = swift_task_alloc();
    *(v0 + 520) = v52;
    *v52 = v0;
    v52[1] = sub_100316904;
    v53 = *(v0 + 168);

    return sub_10047C214(v53);
  }

  v116 = v4;
  log = *(v0 + 464);
  v19 = *(v0 + 416);
  v21 = *(v0 + 368);
  v20 = *(v0 + 376);
  v22 = *(v0 + 336);
  v23 = *(v0 + 312);
  v24 = v2;
  v25 = *(v0 + 272);
  v109 = *(v24 + 32);
  v109(v20, v3, v1);
  v19(v23, v22, v25);
  (log)(v21, v20, v1);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 432);
  v30 = *(v0 + 368);
  v31 = *(v0 + 352);
  v114 = *(v0 + 344);
  v32 = *(v0 + 312);
  v33 = *(v0 + 272);
  if (v28)
  {
    v106 = *(v0 + 216);
    loga = v26;
    v34 = *(v0 + 208);
    v108 = *(v0 + 200);
    v35 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *v35 = 136315394;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v107 = v27;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v30;
    v39 = v38;
    v29(v32, v33);
    v40 = sub_10000C4E4(v36, v39, &v120);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    SFAirDropSend.Transfer.state.getter();
    sub_1003189C8(&qword_100977DD8, &type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    (*(v34 + 8))(v106, v108);
    v44 = v37;
    v45 = *(v31 + 8);
    v45(v44, v114);
    v46 = sub_10000C4E4(v41, v43, &v120);

    *(v35 + 14) = v46;
    _os_log_impl(&_mh_execute_header, loga, v107, "SDAirDropSendService.transfers UPDATE {id: %s, state: %s}", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v45 = *(v31 + 8);
    v45(v30, v114);
    v29(v32, v33);
  }

  v55 = *(v0 + 480);
  v56 = *(v0 + 464);
  v57 = *(v0 + 376);
  v58 = *(v0 + 344);
  v59 = *(v0 + 248);
  (*(v0 + 416))(*(v0 + 304), *(v0 + 336), *(v0 + 272));
  v56(v59, v57, v58);
  v55(v59, 0, 1, v58);
  v60 = CurrentValueSubject.value.modify();
  v62 = v61;
  if (v116(v59, 1, v58) == 1)
  {
    v118 = v60;
    v115 = v45;
    v63 = *(v0 + 432);
    v64 = *(v0 + 304);
    v65 = *(v0 + 272);
    v66 = *(v0 + 264);
    sub_100005508(*(v0 + 248), &qword_100976460, &qword_1007F9730);
    sub_1002D3468(v64, v66);
    sub_100005508(v66, &qword_100976460, &qword_1007F9730);
    v63(v64, v65);
    goto LABEL_25;
  }

  v67 = *(v0 + 304);
  v109(*(v0 + 360), *(v0 + 248), *(v0 + 344));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v62;
  *(v0 + 120) = *v62;
  *v62 = 0x8000000000000000;
  v70 = sub_100570848(v67);
  v72 = *(v69 + 16);
  v73 = (v71 & 1) == 0;
  v74 = __OFADD__(v72, v73);
  v75 = v72 + v73;
  if (v74)
  {
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(v67) = v71;
  if (*(v69 + 24) >= v75)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

LABEL_29:
    v105 = v70;
    sub_1002CFC0C();
    v70 = v105;
    goto LABEL_20;
  }

  v76 = *(v0 + 304);
  sub_10057454C(v75, isUniquelyReferenced_nonNull_native);
  v70 = sub_100570848(v76);
  if ((v67 & 1) == (v77 & 1))
  {
LABEL_20:
    v118 = v60;
    v78 = *(v0 + 120);
    v115 = v45;
    if (v67)
    {
      (*(*(v0 + 352) + 40))(v78[7] + *(*(v0 + 352) + 72) * v70, *(v0 + 360), *(v0 + 344));
    }

    else
    {
      v79 = *(v0 + 416);
      v81 = *(v0 + 352);
      v80 = *(v0 + 360);
      v82 = *(v0 + 344);
      v83 = *(v0 + 304);
      v84 = *(v0 + 272);
      v85 = *(v0 + 280);
      v78[(v70 >> 6) + 8] |= 1 << v70;
      v86 = v70;
      v79(v78[6] + *(v85 + 72) * v70, v83, v84);
      v87 = v109(v78[7] + *(v81 + 72) * v86, v80, v82);
      v92 = v78[2];
      v74 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v74)
      {
        __break(1u);
        return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v87, v88, v89, v90, v91);
      }

      v78[2] = v93;
    }

    (*(v0 + 432))(*(v0 + 304), *(v0 + 272));
    *v62 = v78;

LABEL_25:
    v94 = *(v0 + 376);
    v117 = *(v0 + 344);
    v96 = *(v0 + 208);
    v95 = *(v0 + 216);
    v97 = *(v0 + 192);
    v98 = *(v0 + 184);
    v110 = *(v0 + 176);
    v111 = *(v0 + 200);
    v99 = *(v0 + 136);
    v118();
    sub_10055B900(v94);
    v100 = v99[14];
    v101 = v99[15];
    sub_10002CDC0(v99 + 11, v100);
    SFAirDropSend.Transfer.state.getter();
    SFAirDropSend.Transfer.displayPriority.getter();
    (*(v101 + 48))(v95, v97, v100, v101);
    (*(v98 + 8))(v97, v110);
    (*(v96 + 8))(v95, v111);
    v115(v94, v117);
    v102 = *(v0 + 496);
    v103 = *(v0 + 392);
    v104 = swift_task_alloc();
    *(v0 + 504) = v104;
    *v104 = v0;
    v104[1] = sub_100315DDC;
    v87 = *(v0 + 256);
    v90 = *(v0 + 224);
    v91 = v0 + 112;
    v88 = v103;
    v89 = v102;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v87, v88, v89, v90, v91);
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100316904()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100316A70, v1, 0);
}

uint64_t sub_100316A70()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  (*(v0 + 432))(*(v0 + 336), *(v0 + 272));
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100316BF4()
{
  v40 = v0;
  (*(v0 + 416))(*(v0 + 288), *(v0 + 336), *(v0 + 272));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 432);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  if (v3)
  {
    v36 = v1;
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v7 = 136315394;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_10000C4E4(v8, v10, &v39);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v35 = v12;
    _os_log_impl(&_mh_execute_header, v36, v2, "SDAirDropSendService.transfers ERROR {id: %s, error: %@}", v7, 0x16u);
    sub_100005508(v35, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v37);
  }

  else
  {

    v4(v5, v6);
  }

  (*(v0 + 416))(*(v0 + 296), *(v0 + 336), *(v0 + 272));
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 432);
  v17 = *(v0 + 296);
  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  if (v15)
  {
    v38 = *(v0 + 432);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v19 + 8;
    v38(v17, v18);
    v26 = sub_10000C4E4(v22, v24, &v39);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "SDAirDropSendService.transfers REMOVE {id: %s}", v20, 0xCu);
    sub_10000C60C(v21);
  }

  else
  {

    v25 = v19 + 8;
    v16(v17, v18);
  }

  *(v0 + 512) = v25;
  v27 = *(v0 + 344);
  v28 = *(v0 + 352);
  v29 = *(v0 + 320);
  v30 = *(v0 + 264);
  (*(v0 + 416))(v29, *(v0 + 336), *(v0 + 272));
  (*(v28 + 56))(v30, 1, 1, v27);
  v31 = CurrentValueSubject.value.modify();
  sub_1002B12F0(v30, v29);
  v31(v0 + 16, 0);
  SFAirDropSend.Request.endpointID.getter();
  v32 = swift_task_alloc();
  *(v0 + 520) = v32;
  *v32 = v0;
  v32[1] = sub_100316904;
  v33 = *(v0 + 168);

  return sub_10047C214(v33);
}

uint64_t sub_100317090()
{
  v40 = v0;
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  (*(v0 + 416))(*(v0 + 288), *(v0 + 336), *(v0 + 272));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 432);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  if (v3)
  {
    v36 = v1;
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v7 = 136315394;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_10000C4E4(v8, v10, &v39);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v35 = v12;
    _os_log_impl(&_mh_execute_header, v36, v2, "SDAirDropSendService.transfers ERROR {id: %s, error: %@}", v7, 0x16u);
    sub_100005508(v35, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v37);
  }

  else
  {

    v4(v5, v6);
  }

  (*(v0 + 416))(*(v0 + 296), *(v0 + 336), *(v0 + 272));
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 432);
  v17 = *(v0 + 296);
  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  if (v15)
  {
    v38 = *(v0 + 432);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v19 + 8;
    v38(v17, v18);
    v26 = sub_10000C4E4(v22, v24, &v39);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "SDAirDropSendService.transfers REMOVE {id: %s}", v20, 0xCu);
    sub_10000C60C(v21);
  }

  else
  {

    v25 = v19 + 8;
    v16(v17, v18);
  }

  *(v0 + 512) = v25;
  v27 = *(v0 + 344);
  v28 = *(v0 + 352);
  v29 = *(v0 + 320);
  v30 = *(v0 + 264);
  (*(v0 + 416))(v29, *(v0 + 336), *(v0 + 272));
  (*(v28 + 56))(v30, 1, 1, v27);
  v31 = CurrentValueSubject.value.modify();
  sub_1002B12F0(v30, v29);
  v31(v0 + 16, 0);
  SFAirDropSend.Request.endpointID.getter();
  v32 = swift_task_alloc();
  *(v0 + 520) = v32;
  *v32 = v0;
  v32[1] = sub_100316904;
  v33 = *(v0 + 168);

  return sub_10047C214(v33);
}

uint64_t sub_100317544(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Transfer();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003176F8, v6, 0);
}

uint64_t sub_1003176F8()
{
  v26 = v0;
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100977CA0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000C4E4(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Canceling send transfer %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  CurrentValueSubject.value.getter();
  v18 = v0[2];
  if (*(v18 + 16) && (v19 = sub_100570848(v0[3]), (v20 & 1) != 0))
  {
    (*(v0[9] + 16))(v0[10], *(v18 + 56) + *(v0[9] + 72) * v19, v0[8]);

    SFAirDropSend.Transfer.endpointID.getter();
    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_100317A60;
    v22 = v0[7];

    return sub_10047C214(v22);
  }

  else
  {

    sub_100531B38(v0[3]);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100317A60()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100317BCC, v1, 0);
}

uint64_t sub_100317BCC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_100531B38(v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100317C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_10028088C(&qword_100977DA0, &unk_1007FB2F0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100977DA8, &unk_100806FB0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100317DF4, v7, 0);
}

uint64_t sub_100317DF4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[2] = *(v0[3] + 16);
  sub_10028088C(&qword_100977DB0, &qword_1007FB300);
  sub_10031859C();
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1003189C8(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v0[11] = v4;
  v5 = v0[10];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100317F60;

  return sub_1004C48E0(v5, v4);
}

uint64_t sub_100317F60(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = a1;

  if (!v1)
  {
    v5 = *(v3 + 80);

    return _swift_task_switch(sub_100318074, v5, 0);
  }

  return result;
}

uint64_t sub_100318074()
{
  v16 = v0;
  v1 = v0[13];
  if (v1)
  {
    if (qword_1009735D0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100977CA0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      type metadata accessor for SFAirDrop.TransferIdentifier();
      type metadata accessor for SFAirDropSend.Transfer();
      sub_1003189C8(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v7 = Dictionary.description.getter();
      v9 = sub_10000C4E4(v7, v8, &v15);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Send transfers updates in daemon: %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    sub_100392104(v1, &_swiftEmptyDictionarySingleton);

    v10 = v0[10];
    v11 = v0[11];
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_100317F60;

    return sub_1004C48E0(v10, v11);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100318340()
{

  sub_10004C60C(v0 + 40);

  sub_10000C60C((v0 + 88));

  return v0;
}

uint64_t sub_1003183A8()
{
  sub_100318340();

  return swift_deallocClassInstance();
}

void sub_100318400()
{
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100977CA0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SDAirDropSendService stop", v2, 2u);
  }
}

uint64_t sub_1003184E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100317C84(a1, v4, v5, v6);
}

unint64_t sub_10031859C()
{
  result = qword_100977DB8;
  if (!qword_100977DB8)
  {
    sub_100280938(&qword_100977DB0, &qword_1007FB300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977DB8);
  }

  return result;
}

uint64_t sub_100318600(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100977DC8, &unk_1008091C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100318670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(type metadata accessor for Logger() - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v3 + 16);
  v19 = swift_task_alloc();
  *(v7 + 16) = v19;
  *v19 = v7;
  v19[1] = sub_100005C00;

  return sub_100532E40(a1, a2, a3, v18, v3 + v10, v3 + v13, v3 + v16, v3 + v17);
}

uint64_t sub_100318864(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100976470, &qword_1007F9740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C04;

  return sub_1003153F8(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1003189C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100318A10()
{
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000C60C((v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_volumeManager));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100318B48()
{
  sub_100318A10();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s30IndividualPersonaVolumeManagerCMa(uint64_t a1)
{
  result = qword_100977E58;
  if (!qword_100977E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100318BC8(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100318CB4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978040);
  v1 = sub_10000C4AC(v0, qword_100978040);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100318D7C(uint64_t a1)
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
  v5 = type metadata accessor for URL();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100318F88, v7, 0);
}

uint64_t sub_100318F88(uint64_t a1)
{
  v54 = v1;
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[11];
    v7 = SFAirDropReceive.AskRequest.urlItems.getter();
    v8 = v7;
    v9 = 0;
    v10 = v7 + 56;
    v11 = -1;
    v12 = -1 << *(v7 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v7 + 56);
    v14 = (63 - v12) >> 6;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v1[12];
      v17 = v1[10];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v16, *(v8 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      (*(v6 + 8))(v16, v17);
      LOBYTE(v16) = SFIsiCloudFamilyLink();

      if ((v16 & 1) == 0)
      {

        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        sub_100319A4C();
        v23 = sub_1005C72C8(0xD000000000000010, 0x800000010078BAB0, 1);
        v44 = v1[3];
        v45 = *(v44 + 16);
        *(v44 + 16) = v23;

        goto LABEL_18;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v25 = v1[8];
    v24 = v1[9];
    v26 = v1[7];
    v27 = v1[2];
    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_100978040);
    (*(v25 + 16))(v24, v27, v26);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[8];
    v33 = v1[9];
    v34 = v1[7];
    if (v31)
    {
      v36 = v1[5];
      v35 = v1[6];
      v37 = v1[4];
      v51 = v30;
      v38 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v38 = 136315394;
      v49 = v29;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002891F4();
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v34;
      v41 = v40;
      (*(v36 + 8))(v35, v37);
      (*(v32 + 8))(v33, v39);
      v42 = sub_10000C4E4(v48, v41, &v53);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v43;
      *v50 = v43;
      _os_log_impl(&_mh_execute_header, v49, v51, "Failed to get iCloud Family app for ask request %s: %@", v38, 0x16u);
      sub_100005508(v50, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v52);
    }

    else
    {

      (*(v32 + 8))(v33, v34);
    }

LABEL_18:
    v22 = *(v1[3] + 16) != 0;
  }

  else
  {
LABEL_13:
    v22 = 0;
  }

  v46 = v1[1];

  return v46(v22);
}

uint64_t sub_100319424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_100319890@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriCloudFamilyLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1003198C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100318D7C(a1);
}

void sub_100319960(uint64_t a1, uint64_t a2)
{
  sub_1003D8D18(&off_1008D6D78, a2);
  sub_100005508(&unk_1008D6D98, &qword_100981D40, &unk_1007FA6C0);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100319A4C()
{
  result = qword_100978130;
  if (!qword_100978130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100978130);
  }

  return result;
}

uint64_t *AirDropActor.shared.unsafeMutableAddressor()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  return &static AirDropActor.shared;
}

uint64_t AirDropActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100319BC0(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  a2(a1);
  v4 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a3 = v4;
  return result;
}

uint64_t *IDMSActor.shared.unsafeMutableAddressor()
{
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  return &static IDMSActor.shared;
}

uint64_t sub_100319C74(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100319D88(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100319E14(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void *sub_100319E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028FCA0(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v6;
    v29 = *(a1 + 36);
    v9 = *(*(a1 + 56) + 8 * v5);
    v10 = v9[3];
    v11 = v9[5];
    v33 = v9[4];
    v12 = v9[8];
    v13 = v9[9];
    v14 = v9[15];
    v30 = v9[2];
    v31 = v9[14];

    v34 = v11;

    v32 = v13;
    sub_100294008(v12, v13);
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];

    if (v16 >= v15 >> 1)
    {
      result = sub_10028FCA0((v15 > 1), v16 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[8 * v16];
    v17[4] = v30;
    v17[5] = v10;
    *&v18 = v12;
    *(&v18 + 1) = v32;
    *&v19 = v31;
    *(&v19 + 1) = v14;
    v17[6] = v33;
    v17[7] = v34;
    *(v17 + 4) = v18;
    *(v17 + 5) = v19;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v20 = *(a1 + 64 + 8 * v8);
    if ((v20 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v5 & 0x3F));
    if (v21)
    {
      v7 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v8 << 6;
      v23 = v8 + 1;
      v24 = (a1 + 72 + 8 * v8);
      while (v23 < (v7 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_10000CDD4(v5, v29, 0);
          v7 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_10000CDD4(v5, v29, 0);
    }

LABEL_4:
    v6 = v28 + 1;
    v5 = v7;
    if (v28 + 1 == v27)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

uint64_t sub_10031A108()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978280);
  v1 = sub_10000C4AC(v0, qword_100978280);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10031A1D0()
{
  v1 = *(v0 + 32);
  v2 = v1 == 2;
  v3 = 0x101020100uLL >> (8 * v1);
  if (*(v0 + 33))
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10031A200()
{
  v1 = *(v0 + 32);
  v2 = v1 == 2;
  v3 = 0x101020100uLL >> (8 * v1);
  if (*(v0 + 33))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10031A230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 120) == 1)
  {
    v3 = *(a1 + 72);
    v2 = *(a1 + 80);
    *a2 = v3;
    a2[1] = v2;
    return sub_100294008(v3, v2);
  }

  else
  {
    v5 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010078BC50);
    v7 = v6;
    sub_1000115C8();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    return swift_willThrow();
  }
}

uint64_t sub_10031A2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 104);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 104) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      *a2 = 0;
      a2[1] = 0xE000000000000000;
      return result;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_9:
        v9 &= v9 - 1;

        sub_1004EC7CC();
        String.append(_:)(v14);

        v15._countAndFlagsBits = 10;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        v16._countAndFlagsBits = 9;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);
      }

      while (v9);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10031A458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  *a2 = v3;
  a2[1] = v2;
  return sub_1002A9924(v3, v2);
}

uint64_t sub_10031A520(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_10031A574()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 33);
  v12 = *(v0 + 32);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  swift_beginAccess();

  sub_100294008(v4, v5);
  sub_100294008(v6, v7);

  v9 = sub_100319E88(v8);

  v13[0] = v2;
  v13[1] = v1;
  v14 = v3;
  v15 = v12;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v9;
  if (qword_1009735F8 != -1)
  {
    swift_once();
  }

  sub_10031F988();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_10031F8D0(v13);
  return v10;
}

void sub_10031A704(uint64_t a1)
{
  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100978280);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    sub_1004EC7CC();
    v9 = sub_10000C4E4(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Storing %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = *(v1 + 112);
  v12 = __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  os_unfair_lock_lock(v10 + 4);
  sub_1003206A8(v13);
  os_unfair_lock_unlock(v10 + 4);
}

uint64_t sub_10031A8E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 1)
  {
    v3 = *(a2 + 32);
    v4 = *(a2 + 40);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 104);
    *(a1 + 104) = 0x8000000000000000;
    sub_10057A8C4(a2, v3, v4, isUniquelyReferenced_nonNull_native);

    *(a1 + 104) = v12;
    swift_endAccess();
    return sub_10031D36C();
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010078BC50);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

uint64_t sub_10031AA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  return sub_10000FF90(a1 + v4, a2, &unk_100976120, &qword_1007F9260);
}

uint64_t sub_10031AA88(uint64_t a1, char *a2, NSObject *a3, uint64_t a4)
{
  v89 = a4;
  v85 = a3;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v6 - 8);
  v92 = &v81 - v7;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = __chkstk_darwin(v8 - 8);
  v94 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v91 = &v81 - v12;
  __chkstk_darwin(v11);
  v14 = &v81 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v87 = &v81 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v81 - v22;
  v24 = __chkstk_darwin(v21);
  v88 = &v81 - v25;
  __chkstk_darwin(v24);
  v27 = &v81 - v26;
  v28 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  v29 = a1;
  sub_10000FF90(a1 + v28, v14, &unk_100976120, &qword_1007F9260);
  v93 = *(v16 + 48);
  if (v93(v14, 1, v15) == 1)
  {
    sub_100005508(v14, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    (*(v16 + 32))(v27, v14, v15);
    v86 = v27;
    v30 = a2;
    if (static UUID.== infix(_:_:)())
    {
      v31 = v91;
      (*(v16 + 56))(v91, 1, 1, v15);
      swift_beginAccess();
      sub_10000C788(v31, a1 + v28, &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      v32 = type metadata accessor for Date();
      v33 = v92;
      (*(*(v32 - 8) + 56))(v92, 1, 1, v32);
      v34 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
      swift_beginAccess();
      sub_10000C788(v33, a1 + v34, &qword_10097A7F0, &unk_1007FB600);
      swift_endAccess();
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000C4AC(v35, qword_100978280);
      v36 = v88;
      (*(v16 + 16))(v88, a2, v15);
      v37 = v89;

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v84 = v16;
        v41 = v40;
        v83 = swift_slowAlloc();
        v95[0] = v83;
        *v41 = 136315394;
        sub_1000053A0(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v82) = v39;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v36;
        v45 = v44;
        v87 = a2;
        v46 = *(v84 + 8);
        v46(v43, v15);
        v47 = sub_10000C4E4(v42, v45, v95);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_10000C4E4(v85, v37, v95);
        _os_log_impl(&_mh_execute_header, v38, v82, "Cleared active sessionID %s with remoteDevice %s", v41, 0x16u);
        swift_arrayDestroy();

        v16 = v84;

        v46(v86, v15);
      }

      else
      {

        v70 = *(v16 + 8);
        v70(v36, v15);
        v70(v86, v15);
      }
    }

    else
    {
      v89 = v16 + 48;
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000C4AC(v48, qword_100978280);
      v49 = v16;
      v50 = *(v16 + 16);
      v51 = v86;
      v50(v23, v86, v15);
      v52 = v87;
      v50(v87, v30, v15);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v49;
        v84 = v49;
        v57 = v55;
        v82 = v55;
        v88 = swift_slowAlloc();
        v95[0] = v88;
        *v57 = 136315394;
        sub_1000053A0(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v85 = v53;
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        LODWORD(v83) = v54;
        v60 = v59;
        v61 = *(v56 + 8);
        v61(v23, v15);
        v62 = v61;
        v63 = sub_10000C4E4(v58, v60, v95);

        v64 = v82;
        *(v82 + 4) = v63;
        *(v64 + 12) = 2080;
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        v62(v52, v15);
        v68 = sub_10000C4E4(v65, v67, v95);

        *(v64 + 14) = v68;
        v69 = v85;
        _os_log_impl(&_mh_execute_header, v85, v83, "Active sessionID %s in remoteLTK is not cleared as it doesn't match the input: %s", v64, 0x16u);
        swift_arrayDestroy();

        v62(v86, v15);
        v16 = v84;
      }

      else
      {

        v71 = *(v49 + 8);
        v71(v52, v15);
        v71(v23, v15);
        v71(v51, v15);
        v16 = v49;
      }
    }
  }

  v72 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID;
  swift_beginAccess();
  v73 = v94;
  sub_10000FF90(v29 + v72, v94, &unk_100976120, &qword_1007F9260);
  if (v93(v73, 1, v15) == 1)
  {
    return sub_100005508(v73, &unk_100976120, &qword_1007F9260);
  }

  v75 = v90;
  (*(v16 + 32))(v90, v73, v15);
  v76 = static UUID.== infix(_:_:)();
  result = (*(v16 + 8))(v75, v15);
  if (v76)
  {
    v77 = v91;
    (*(v16 + 56))(v91, 1, 1, v15);
    swift_beginAccess();
    sub_10000C788(v77, v29 + v72, &unk_100976120, &qword_1007F9260);
    swift_endAccess();
    v78 = type metadata accessor for Date();
    v79 = v92;
    (*(*(v78 - 8) + 56))(v92, 1, 1, v78);
    v80 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate;
    swift_beginAccess();
    sub_10000C788(v79, v29 + v80, &qword_10097A7F0, &unk_1007FB600);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10031B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = __chkstk_darwin(v7 - 8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  v14 = __chkstk_darwin(v12);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v72 - v16;
  v17 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v72 - v22;
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  v26 = type metadata accessor for UUID();
  v27 = __chkstk_darwin(v26);
  v28 = __chkstk_darwin(v27);
  v32 = &v72 - v31;
  if (*(a1 + 120) != 1)
  {
    v41 = 0x800000010078BC50;
    v42 = 10;
    v43 = 0xD00000000000001ELL;
LABEL_9:
    v44 = sub_100010F88(v42, v43, v41);
    v46 = v45;
    sub_1000115C8();
    swift_allocError();
    *v47 = v44;
    *(v47 + 8) = v46;
    return swift_willThrow();
  }

  v76 = v30;
  v77 = v29;
  v78 = v28;
  swift_beginAccess();
  v33 = *(a1 + 104);
  if (!*(v33 + 16))
  {
LABEL_8:
    v43 = 0x746F6D6572206F4ELL;
    v41 = 0xED00004B544C2065;
    v42 = 33;
    goto LABEL_9;
  }

  v34 = sub_100012854(a2, a3);
  if ((v35 & 1) == 0)
  {

    goto LABEL_8;
  }

  v36 = *(*(v33 + 56) + 8 * v34);

  v37 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID;
  swift_beginAccess();
  v74 = v36;
  v75 = v37;
  sub_10000FF90(v36 + v37, v25, &unk_100976120, &qword_1007F9260);
  v39 = v77;
  v38 = v78;
  v73 = *(v77 + 48);
  if (v73(v25, 1, v78) == 1)
  {
    sub_100005508(v25, &unk_100976120, &qword_1007F9260);
    v40 = v74;
  }

  else
  {
    (*(v39 + 32))(v32, v25, v38);
    v49 = static UUID.== infix(_:_:)();
    (*(v39 + 8))(v32, v38);
    v40 = v74;
    if (v49)
    {
    }
  }

  Date.init()();
  v50 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate;
  swift_beginAccess();
  sub_10000FF90(v40 + v50, v11, &qword_10097A7F0, &unk_1007FB600);
  v52 = v81;
  v51 = v82;
  if ((*(v82 + 48))(v11, 1, v81) == 1)
  {
    sub_100005508(v11, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    v74 = v50;
    v53 = v79;
    (*(v51 + 32))(v79, v11, v52);
    sub_10000FF90(v40 + v75, v23, &unk_100976120, &qword_1007F9260);
    v54 = v78;
    if (v73(v23, 1, v78) == 1)
    {
      (*(v51 + 8))(v53, v52);
      sub_100005508(v23, &unk_100976120, &qword_1007F9260);
    }

    else
    {
      (*(v77 + 32))(v76, v23, v54);
      Date.timeIntervalSince1970.getter();
      v56 = v55;
      Date.timeIntervalSince1970.getter();
      v58 = v56 - v57;
      v59 = v53;
      if (v58 >= 0.0 && v58 < 60.0)
      {
        v85 = 0;
        v86 = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        v85 = 0xD000000000000029;
        v86 = 0x800000010078BC70;
        sub_1000053A0(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v60 = v76;
        v61 = v78;
        v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v62);

        v63 = sub_100010F88(38, v85, v86);
        v65 = v64;
        sub_1000115C8();
        swift_allocError();
        *v66 = v63;
        *(v66 + 8) = v65;
        swift_willThrow();

        (*(v77 + 8))(v60, v61);
        v67 = *(v82 + 8);
        v67(v59, v52);
        return (v67)(v84, v52);
      }

      (*(v77 + 8))(v76, v78);
      v51 = v82;
      (*(v82 + 8))(v53, v52);
    }

    v50 = v74;
  }

  v69 = v77;
  v68 = v78;
  (*(v77 + 16))(v20, v83, v78);
  (*(v69 + 56))(v20, 0, 1, v68);
  v70 = v75;
  swift_beginAccess();
  sub_10000C788(v20, v40 + v70, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  v71 = v80;
  (*(v51 + 32))(v80, v84, v52);
  (*(v51 + 56))(v71, 0, 1, v52);
  swift_beginAccess();
  sub_10000C788(v71, v40 + v50, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
}

uint64_t sub_10031BDF8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();

  result = sub_10028BE10(v3);
  *a2 = result;
  return result;
}

void sub_10031BE58(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v5 - 8);
  v65 = &v61 - v6;
  swift_beginAccess();
  v7 = *(a1 + 104);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(a1 + 104) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v68 = *(a1 + 104);

  v15 = 0;
  v69 = _swiftEmptyArrayStorage;
  *&v16 = 138412290;
  v63 = v16;
  *&v16 = 136315138;
  v64 = v16;
  v66 = v14;
  v67 = v9;
  while (v13)
  {
LABEL_11:
    v21 = *(*(v68 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
    v23 = v21[8];
    v22 = v21[9];

    sub_100311A20(v23, v22);
    if (v3)
    {
      if (qword_100973978 != -1)
      {
        swift_once();
      }

      v70 = 0;
      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_100981470);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = v63;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Could not get registration ID from remote LTK: %@", v28, 0xCu);
        sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }

    else if (v24)
    {

      v31 = sub_100311A20(v21[8], v21[9]);
      v33 = *(v21 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID + 8);
      v70 = 0;
      if (v32)
      {
        if (!v33)
        {

          goto LABEL_41;
        }

        if (v31 == *(v21 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID) && v32 == v33)
        {
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v35 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else if (v33)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v70 = 0;
    }

    v36 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
    swift_beginAccess();
    v37 = v65;
    sub_10000FF90(v21 + v36, v65, &unk_100976120, &qword_1007F9260);
    v38 = type metadata accessor for UUID();
    LODWORD(v36) = (*(*(v38 - 8) + 48))(v37, 1, v38);
    sub_100005508(v37, &unk_100976120, &qword_1007F9260);
    if (v36 == 1)
    {
      v40 = v21[4];
      v39 = v21[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_10028E1C8(0, *(v69 + 2) + 1, 1, v69);
      }

      v42 = *(v69 + 2);
      v41 = *(v69 + 3);
      if (v42 >= v41 >> 1)
      {
        v69 = sub_10028E1C8((v41 > 1), v42 + 1, 1, v69);
      }

      v43 = v69;
      *(v69 + 2) = v42 + 1;
      v44 = &v43[16 * v42];
      *(v44 + 4) = v40;
      *(v44 + 5) = v39;
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000C4AC(v45, qword_100978280);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v71 = v49;
        *v48 = v64;
        v50 = v21[4];
        v51 = v21[5];

        v52 = sub_10000C4E4(v50, v51, &v71);

        *(v48 + 4) = v52;
        v53 = v47;
        v54 = v46;
        v55 = "needs registration: %s";
LABEL_4:
        _os_log_impl(&_mh_execute_header, v54, v53, v55, v48, 0xCu);
        sub_10000C60C(v49);

        goto LABEL_5;
      }

      goto LABEL_5;
    }

LABEL_41:
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000C4AC(v56, qword_100978280);

    v46 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v57))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v71 = v49;
      *v48 = v64;
      v58 = v21[4];
      v59 = v21[5];

      v60 = sub_10000C4E4(v58, v59, &v71);

      *(v48 + 4) = v60;
      v53 = v57;
      v54 = v46;
      v55 = "already registered: %s";
      goto LABEL_4;
    }

LABEL_5:

    v14 = v66;
    v9 = v67;
    v13 &= v13 - 1;
    v17 = v21[8];
    v18 = v21[9];
    sub_100294008(v17, v18);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v17, v18);
    sub_10005CB84(isa);

    v3 = v70;
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      *v62 = v69;
      return;
    }

    v13 = *(v9 + 8 * v20);
    ++v15;
    if (v13)
    {
      v15 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10031C68C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100978280);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000C4E4(a3, a4, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "Store rangingKey for %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  v14 = __chkstk_darwin(v13);
  v15 = *(v5 + 112);
  v16 = __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  os_unfair_lock_lock(v15 + 4);
  sub_1002F5418(v17);
  os_unfair_lock_unlock(v15 + 4);
}

void sub_10031C8C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 104);
  if (*(v8 + 16))
  {

    v9 = sub_100012854(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      v13 = *(v11 + 112);
      v12 = *(v11 + 120);

      *a4 = v13;
      a4[1] = v12;
      return;
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_10031C988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 104);
  if (*(v6 + 16))
  {

    v7 = sub_100012854(a2, a3);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      sub_10031DC0C(v9);
    }

    else
    {
    }
  }
}

void sub_10031CA48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    v15 = 0xD00000000000001DLL;
    v16 = 0x800000010078BCF0;
    v17 = 10;
LABEL_14:
    v18 = sub_100010F88(v17, v15, v16);
    v20 = v19;
    sub_1000115C8();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    swift_willThrow();
    return;
  }

  v10 = *(a1 + 112) == a2 && v6 == a3;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v16 = 0x800000010078BD10;
    v17 = 1;
    v15 = 0xD000000000000012;
    goto LABEL_14;
  }

  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100978280);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10000C4E4(a4, a5, &v23);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10000C4E4(a2, a3, &v23);
    _os_log_impl(&_mh_execute_header, v12, v13, "Removing remoteLTK for %s, pairingID=%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  sub_10031DC0C(a1);
}

uint64_t sub_10031CCA8(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000C788(v4, a1 + v6, &unk_100976120, &qword_1007F9260);
  return swift_endAccess();
}

uint64_t sub_10031CDB8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  if ((a2 & 1) == 0)
  {
    sub_100312F80(a1[8], a1[9]);
    if (v4)
    {
    }
  }

  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000C788(v11, a1 + v13, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  a1[14] = a3;
  a1[15] = a4;

  return sub_10031D36C();
}

void sub_10031CF20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (*(*(a1 + 104) + 16))
  {

    sub_100012854(a2, a3);
    if (v8)
    {

      v9 = sub_1004EB2C4();
      v11 = v10;

      *a4 = v9;
      a4[1] = v11;
      return;
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_10031CFE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_beginAccess();
  if (*(*(a1 + 104) + 16))
  {

    sub_100012854(a2, a3);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9 & 1;
}

uint64_t sub_10031D088()
{
  sub_10031A1D0();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = [objc_allocWithZone(SDAutoUnlockLTKInfo) init];
  if (v5)
  {
    v6 = v5;
    v32[23] = v1;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v6 setLtk:isa];

    v8 = Data._bridgeToObjectiveC()().super.isa;
    [v6 setLtkID:v8];

    [v6 setVersion:2];
    sub_10028088C(&qword_100978508, &unk_1007FB610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F8830;
    *(inited + 32) = kSecValueData;
    v10 = kSecValueData;
    v11 = [v6 data];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v21 = sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    *(inited + 40) = v13;
    *(inited + 48) = v15;
    *(inited + 64) = v21;
    *(inited + 72) = kSecAttrAccessible;
    *(inited + 80) = v2;
    *(inited + 88) = v4;
    *(inited + 104) = &type metadata for String;
    *(inited + 112) = kSecAttrLabel;
    strcpy(v32, "Auto Unlock: ");
    HIWORD(v32[1]) = -4864;
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);
    v24 = kSecAttrAccessible;
    v25 = kSecAttrLabel;
    v26._countAndFlagsBits = v22;
    v26._object = v23;
    String.append(_:)(v26);
    v27 = v32[0];
    v28 = v32[1];
    *(inited + 144) = &type metadata for String;
    *(inited + 120) = v27;
    *(inited + 128) = v28;
    v29 = sub_100281720(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_100974638, &qword_1007FB620);
    swift_arrayDestroy();
    v30 = sub_10000F0D8(v22, v23);
    v31 = sub_100010204(v30);

    sub_10028776C(v31, v29);
  }

  else
  {

    v16 = sub_100010F88(10, 0xD000000000000026, 0x800000010078BCC0);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    return swift_willThrow();
  }
}

uint64_t sub_10031D36C()
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v2 - 8);
  v4 = v50 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10031A574();
  if (v10 >> 60 == 15)
  {
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100978280);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to serialize LocalLTK to plist", v14, 2u);
    }

    v15 = sub_100010F88(10, 0xD00000000000001CLL, 0x800000010078BCA0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    return swift_willThrow();
  }

  v50[1] = v1;
  v51 = v8;
  v52 = v9;
  v53 = v10;
  v20 = v0[5];
  v22 = v0[2];
  v21 = v0[3];
  v23 = sub_10031A1D0();

  v20(v22, v21, v23);
  v24 = v6;

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005508(v4, &unk_100974E00, &qword_1007F8940);
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_100978280);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to get cache directory", v28, 2u);
    }

    v29 = sub_100010F88(10, 0xD00000000000001CLL, 0x800000010078BCA0);
    v31 = v30;
    sub_1000115C8();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    swift_willThrow();
    v33 = v52;
    v34 = v53;
    return sub_10028BCC0(v33, v34);
  }

  v35 = *(v6 + 32);
  v36 = v51;
  v35(v51, v4, v5);
  v37 = v0[7];
  v38 = sub_10031A1D0();

  v37(v38);
  LOBYTE(v37) = v39;

  if ((v37 & 1) == 0)
  {
    v48 = v52;
    v49 = v53;
    Data.write(to:options:)();
    (*(v24 + 8))(v36, v5);
    v33 = v48;
    v34 = v49;
    return sub_10028BCC0(v33, v34);
  }

  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000C4AC(v40, qword_100978280);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Failed to get protection class", v43, 2u);
  }

  v44 = sub_100010F88(10, 0xD00000000000001CLL, 0x800000010078BCA0);
  v46 = v45;
  sub_1000115C8();
  swift_allocError();
  *v47 = v44;
  *(v47 + 8) = v46;
  swift_willThrow();
  sub_10028BCC0(v52, v53);
  return (*(v24 + 8))(v36, v5);
}

uint64_t sub_10031D924()
{
  v1 = *(v0 + 112);
  os_unfair_lock_lock(v1 + 4);
  sub_1002F5418(v2);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_10031D9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000C788(v11, a1 + v14, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  Date.init()();
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
  swift_beginAccess();
  sub_10000C788(v8, a1 + v16, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  *a3 = v17;
  a3[1] = v18;
  return sub_100294008(v17, v18);
}

void sub_10031DC0C(uint64_t a1)
{
  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100978280);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000C4E4(*(a1 + 32), *(a1 + 40), v13);
    *(v7 + 12) = 2080;
    sub_1004EC7CC();
    v10 = sub_10000C4E4(v8, v9, v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing remoteLTK for %s: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1003129F0(*(a1 + 64), *(a1 + 72));
  if (!v2)
  {
    sub_1004EB7E4();
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    swift_beginAccess();

    sub_1002B151C(0, v12, v11);
    swift_endAccess();
    if (*(*(v1 + 104) + 16))
    {
      sub_10031D36C();
    }

    else
    {
      sub_10031DE20();
    }
  }
}

void sub_10031DE20()
{
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v3 - 8);
  v72 = &v71 - v4;
  v76 = type metadata accessor for URL();
  v73 = *(v76 - 8);
  v5 = __chkstk_darwin(v76);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v71 - v7;
  *(v0 + 120) = 0;
  swift_beginAccess();
  v79 = v0;
  v8 = *(v0 + 104);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  *&v15 = 138412546;
  v77 = v15;
  v80 = v8;
  if (v12)
  {
    while (1)
    {
      v16 = v14;
LABEL_8:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v2 = *(*(v8 + 56) + ((v16 << 9) | (8 * v17)));

      v1 = sub_1004EB444();
      type metadata accessor for CFString(0);
      v19 = v18;
      sub_1000053A0(&qword_100975630, type metadata accessor for CFString, &unk_1007F76E4);
      v82 = v19;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v21 = SecItemDelete(isa);

      v81 = v21;
      if (v21)
      {
        if (qword_100973978 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_10000C4AC(v22, qword_100981470);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v78 = v23;
          v27 = v26;
          *v25 = v77;
          v28 = Dictionary._bridgeToObjectiveC()().super.isa;

          *(v25 + 4) = v28;
          *v27 = v28;
          *(v25 + 12) = 1024;
          *(v25 + 14) = v81;
          v29 = v78;
          _os_log_impl(&_mh_execute_header, v78, v24, "Failed to delete keychain item: %@, error: %d", v25, 0x12u);
          sub_100005508(v27, &qword_100975400, &qword_1007F65D0);
        }

        else
        {
        }

        v14 = v16;
        v8 = v80;
        if (!v12)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v14 = v16;
        if (!v12)
        {
          goto LABEL_5;
        }
      }
    }
  }

  while (1)
  {
LABEL_5:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_20;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v1 = v79[2];
  v9 = v79[3];
  sub_10000F0D8(v1, v9);
  type metadata accessor for CFString(0);
  sub_1000053A0(&qword_100975630, type metadata accessor for CFString, &unk_1007F76E4);
  v30 = Dictionary._bridgeToObjectiveC()().super.isa;
  LODWORD(v2) = SecItemDelete(v30);

  if (!v2)
  {

    goto LABEL_25;
  }

  if (qword_1009735F0 != -1)
  {
    goto LABEL_39;
  }

LABEL_20:
  v31 = type metadata accessor for Logger();
  sub_10000C4AC(v31, qword_100978280);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = v77;
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v34 + 4) = v36;
    *v35 = v36;
    *(v34 + 12) = 1024;
    *(v34 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to delete keychain item: %@, error:%d", v34, 0x12u);
    sub_100005508(v35, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

LABEL_25:
  v37 = v74;
  v38 = v79[5];
  v39 = sub_10031A1D0();

  v40 = v72;
  v38(v1, v9, v39);

  v41 = v73;
  v42 = v76;
  v43 = (*(v73 + 48))(v40, 1, v76);
  v44 = v75;
  if (v43 == 1)
  {
    sub_100005508(v40, &unk_100974E00, &qword_1007F8940);
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000C4AC(v45, qword_100978280);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to get LocalLTK plist path", v48, 2u);
    }
  }

  else
  {
    (*(v41 + 32))(v75, v40, v42);
    v49 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    v83 = 0;
    v53 = [v49 removeItemAtURL:v51 error:&v83];

    if (v53)
    {
      v54 = *(v41 + 8);
      v55 = v83;
      v54(v44, v42);
    }

    else
    {
      v56 = v83;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_10000C4AC(v57, qword_100978280);
      (*(v41 + 16))(v37, v44, v42);
      swift_errorRetain();
      v58 = Logger.logObject.getter();
      v59 = v44;
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v60))
      {
        v61 = v37;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v83 = v82;
        *v62 = 136315394;
        sub_1000053A0(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v67 = *(v41 + 8);
        v67(v61, v42);
        v68 = sub_10000C4E4(v64, v66, &v83);

        *(v62 + 4) = v68;
        *(v62 + 12) = 2112;
        swift_errorRetain();
        v69 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 14) = v69;
        *v63 = v69;
        _os_log_impl(&_mh_execute_header, v58, v60, "Failed to delete %s, error: %@", v62, 0x16u);
        sub_100005508(v63, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v82);

        v67(v75, v76);
      }

      else
      {

        v70 = *(v41 + 8);
        v70(v37, v42);
        v70(v59, v42);
      }
    }
  }
}

void *sub_10031E898()
{

  sub_100026AC0(*(v0 + 72), *(v0 + 80));
  sub_100026AC0(*(v0 + 88), *(v0 + 96));

  return v0;
}

uint64_t sub_10031E8E8()
{
  sub_10031E898();

  return swift_deallocClassInstance();
}

void sub_10031E940()
{
  _StringGuts.grow(_:)(37);

  v31 = 0xD000000000000014;
  v32 = 0x800000010078BBF0;
  String.append(_:)(*(v0 + 16));
  v1._countAndFlagsBits = 0x626F6C4279656B20;
  v1._object = 0xED00003D657A6953;
  String.append(_:)(v1);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80) >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    v4 = v2 + 16;
    v2 = *(v2 + 16);
    if (!__OFSUB__(*(v4 + 8), v2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    __break(1u);
    return;
  }

LABEL_9:
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  _StringGuts.grow(_:)(19);

  v30._countAndFlagsBits = 0x6572757461656620;
  v30._object = 0xE90000000000003DLL;
  v6 = 0xE700000000000000;
  v7 = 0x6E776F6E6B6E75;
  v8 = *(v0 + 32);
  v9 = 0xEC00000043737361;
  v10 = 0x6C436B636F6C6E75;
  v11 = 0xEF6B636F6C6E5565;
  v12 = 0x646F4D7473657567;
  if (v8 != 3)
  {
    v12 = 0x6E556E6F69736976;
    v11 = 0xEF534F696B636F6CLL;
  }

  if (v8 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (*(v0 + 32))
  {
    v7 = 0x636F6C6E5563616DLL;
    v6 = 0xEE00656E6F68506BLL;
  }

  if (*(v0 + 32) <= 1u)
  {
    v13 = v7;
  }

  else
  {
    v13 = v10;
  }

  if (*(v0 + 32) <= 1u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 0x3D656C6F7220;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  if (*(v0 + 33))
  {
    v17 = 7955787;
  }

  else
  {
    v17 = 1801678668;
  }

  if (*(v0 + 33))
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  String.append(_:)(v30);

  _StringGuts.grow(_:)(35);

  v30._countAndFlagsBits = 0x654B6C61636F6C20;
  v30._object = 0xEF3D7373616C4379;
  v20._countAndFlagsBits = qword_1007FB8C8[sub_10031A1D0()];
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  v21._object = 0x800000010078BC10;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = qword_1007FB8C8[sub_10031A200()];
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0x654B6C61636F6C20;
  v23._object = 0xEF3D7373616C4379;
  String.append(_:)(v23);

  _StringGuts.grow(_:)(44);

  v30._countAndFlagsBits = 0xD00000000000001FLL;
  v30._object = 0x800000010078BC30;
  if (*(v0 + 120))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v0 + 120))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v26 = v25;
  String.append(_:)(*&v24);

  v27._countAndFlagsBits = 0x4C65746F6D655220;
  v27._object = 0xED00000A3A534B54;
  String.append(_:)(v27);
  String.append(_:)(v30);

  v29 = *(v0 + 112);
  __chkstk_darwin(v28);
  os_unfair_lock_lock(v29 + 4);
  sub_10031F29C(&v30);
  os_unfair_lock_unlock(v29 + 4);
  String.append(_:)(v30);
}

uint64_t sub_10031EDD4(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100978550, &qword_1007FB7A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_1003200F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = *(v3 + 16);
    v11[0] = 1;
    sub_100320280();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = *(v3 + 17);
    v11[0] = 2;
    sub_1003202D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 3;
    sub_100320328(&v15, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
    v13 = *(v3 + 40);
    v14 = v13;
    v12 = 4;
    sub_100320328(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
    *&v13 = *(v3 + 56);
    v11[0] = 5;
    sub_10028088C(&qword_100978538, &qword_1007FB7A0);
    sub_100320384(&qword_100978568, sub_1003203FC, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10031F0C8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6174614479656BLL;
  v4 = 0x496174614479656BLL;
  if (v1 != 4)
  {
    v4 = 0x544C65746F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701605234;
  if (v1 != 1)
  {
    v5 = 0x65727574616566;
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

uint64_t sub_10031F184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10031FA98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10031F1AC(uint64_t a1)
{
  v2 = sub_1003200F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031F1E8(uint64_t a1)
{
  v2 = sub_1003200F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10031F224@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10031FCA8(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

void *sub_10031F29C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10031F2E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100973600 != -1)
  {
    swift_once();
  }

  sub_10031F87C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v6)
  {
    return sub_100026AC0(a1, a2);
  }

  v40 = a1;
  v41 = a2;
  v56[0] = v58;
  v56[1] = v59;
  v56[2] = v60;
  v57 = v61;
  v12 = v58;
  v13 = BYTE1(v59);
  v14 = v59;
  v15 = *(&v59 + 1);
  v17 = v60;
  v16 = v61;
  _s8LocalLTKCMa();
  v18 = swift_allocObject();
  *(v18 + 104) = &_swiftEmptyDictionarySingleton;
  v42 = (v18 + 104);
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 112) = v19;
  *(v18 + 120) = 1;
  *(v18 + 16) = v12;
  *(v18 + 32) = v13;
  *(v18 + 33) = v14;
  *(v18 + 72) = v15;
  *(v18 + 80) = v17;
  *(v18 + 96) = v16;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  *(v18 + 56) = a5;
  *(v18 + 64) = a6;
  v39 = v18;
  if (*(*(&v57 + 1) + 16))
  {
    v20 = *(*(&v57 + 1) + 16);

    sub_100294008(v15, v17);
    sub_100294008(*(&v17 + 1), v16);

    v21 = (*(&v57 + 1) + 48);
    do
    {
      v46 = *v21;
      v47 = *(v21 - 2);
      v53 = v21[1];
      v55 = *(v21 - 1);
      v49 = v21[2];
      v50 = v20;
      v48 = v21[3];
      v45 = v21[4];
      v51 = v21[5];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v23;
      v44 = v22;
      _s9RemoteLTKCMa(0);
      v24 = swift_allocObject();
      *(v24 + 80) = xmmword_1007F8A80;
      *(v24 + 96) = xmmword_1007F8A80;
      *(v24 + 112) = 0;
      *(v24 + 120) = 0;
      v25 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
      v26 = type metadata accessor for UUID();
      v27 = *(*(v26 - 8) + 56);
      v27(v24 + v25, 1, 1, v26);
      v28 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
      v29 = type metadata accessor for Date();
      v30 = *(*(v29 - 8) + 56);
      v30(v24 + v28, 1, 1, v29);
      v27(v24 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID, 1, 1, v26);
      v30(v24 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate, 1, 1, v29);
      v31 = (v24 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID);
      *v31 = 0;
      v31[1] = 0;
      *(v24 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey) = xmmword_1007F8A80;
      *(v24 + 16) = v47;
      *(v24 + 24) = v55;
      *(v24 + 32) = v46;
      *(v24 + 40) = v53;
      *(v24 + 112) = v45;
      *(v24 + 120) = v51;
      *(v24 + 64) = v49;
      *(v24 + 72) = v48;
      *(v24 + 48) = v44;
      *(v24 + 56) = v43;

      sub_100294008(v49, v48);

      sub_100294008(v49, v48);
      swift_bridgeObjectRetain_n();

      sub_100294008(v49, v48);
      sub_1004EC118();
      v32 = sub_1004EB444();
      v33 = sub_100010858(v32);
      v35 = v34;

      sub_1004EB168(v33, v35);

      sub_100026AC0(v49, v48);

      v36 = *(v24 + 32);
      v37 = *(v24 + 40);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = *v42;
      sub_10057A8C4(v24, v36, v37, isUniquelyReferenced_nonNull_native);

      *v42 = v62;
      swift_endAccess();

      sub_100026AC0(v49, v48);

      v21 += 8;
      --v20;
    }

    while (v50 != 1);
  }

  else
  {

    sub_100294008(v15, v17);
    sub_100294008(*(&v17 + 1), v16);
  }

  sub_100026AC0(v40, v41);
  sub_10031F8D0(v56);

  return v39;
}

unint64_t sub_10031F87C()
{
  result = qword_100978500;
  if (!qword_100978500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978500);
  }

  return result;
}

unint64_t sub_10031F988()
{
  result = qword_100978510;
  if (!qword_100978510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978510);
  }

  return result;
}

__n128 sub_10031F9DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10031F9F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10031FA38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10031FA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496174614479656BLL && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x544C65746F6D6572 && a2 == 0xEA0000000000734BLL)
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

uint64_t sub_10031FCA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100978518, &qword_1007FB798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1003200F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v34) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v29 = v9;
  LOBYTE(v30) = 1;
  sub_10032014C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v34;
  LOBYTE(v30) = 2;
  sub_1003201A0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v34;
  v28 = v12;
  LOBYTE(v30) = 3;
  sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v34;
  v26 = v35;
  LOBYTE(v30) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v34;
  v24 = v35;
  sub_10028088C(&qword_100978538, &qword_1007FB7A0);
  v43[0] = 5;
  sub_100320384(&qword_100978540, sub_1003201F4, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v22 = v44;
  v13 = v29;
  *&v30 = v29;
  *(&v30 + 1) = v11;
  v14 = v27;
  v15 = v28;
  LOBYTE(v31) = v28;
  BYTE1(v31) = v27;
  v17 = v25;
  v16 = v26;
  *(&v31 + 1) = v25;
  *&v32 = v26;
  *(&v32 + 1) = v23;
  *&v33 = v24;
  *(&v33 + 1) = v44;
  sub_100320248(&v30, &v34);
  sub_10000C60C(a1);
  v34 = v13;
  v35 = v11;
  v36 = v15;
  v37 = v14;
  v38 = v17;
  v39 = v16;
  v40 = v23;
  v41 = v24;
  v42 = v22;
  result = sub_10031F8D0(&v34);
  v19 = v31;
  *a2 = v30;
  a2[1] = v19;
  v20 = v33;
  a2[2] = v32;
  a2[3] = v20;
  return result;
}

unint64_t sub_1003200F8()
{
  result = qword_100978520;
  if (!qword_100978520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978520);
  }

  return result;
}

unint64_t sub_10032014C()
{
  result = qword_100978528;
  if (!qword_100978528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978528);
  }

  return result;
}

unint64_t sub_1003201A0()
{
  result = qword_100978530;
  if (!qword_100978530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978530);
  }

  return result;
}

unint64_t sub_1003201F4()
{
  result = qword_100978548;
  if (!qword_100978548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978548);
  }

  return result;
}

unint64_t sub_100320280()
{
  result = qword_100978558;
  if (!qword_100978558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978558);
  }

  return result;
}

unint64_t sub_1003202D4()
{
  result = qword_100978560;
  if (!qword_100978560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978560);
  }

  return result;
}

uint64_t sub_100320384(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_100978538, &qword_1007FB7A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003203FC()
{
  result = qword_100978570;
  if (!qword_100978570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978570);
  }

  return result;
}

uint64_t _s8LocalLTKC18FileRepresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8LocalLTKC18FileRepresentationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003205A4()
{
  result = qword_100978578;
  if (!qword_100978578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978578);
  }

  return result;
}

unint64_t sub_1003205FC()
{
  result = qword_100978580;
  if (!qword_100978580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978580);
  }

  return result;
}

unint64_t sub_100320654()
{
  result = qword_100978588;
  if (!qword_100978588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978588);
  }

  return result;
}

uint64_t sub_1003206C0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978590);
  v1 = sub_10000C4AC(v0, qword_100978590);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003207AC()
{
  v0 = sub_10028088C(&qword_1009787A8, &unk_1007FB990);
  __chkstk_darwin(v0 - 8);
  v99 = &v93 - v1;
  v2 = type metadata accessor for IPv6Address();
  v100 = *(v2 - 8);
  v101 = v2;
  __chkstk_darwin(v2);
  v104 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&unk_10097F330, &qword_1007F9410);
  __chkstk_darwin(v4 - 8);
  v6 = &v93 - v5;
  v7 = type metadata accessor for NWEndpoint.Host();
  v102 = *(v7 - 8);
  v103 = v7;
  v8 = __chkstk_darwin(v7);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v93 - v11;
  __chkstk_darwin(v10);
  v105 = &v93 - v13;
  v14 = type metadata accessor for NWInterface.InterfaceSubtype();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10028088C(&qword_1009787B0, &qword_1007FB9A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v93 - v19;
  v21 = type metadata accessor for NWPath();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.currentPath.getter();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100005508(v20, &qword_1009787B0, &qword_1007FB9A0);
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_100978590);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Missing current path", v28, 2u);
    }

    return 0;
  }

  v96 = v22;
  (*(v22 + 32))(v24, v20, v21);
  (*(v15 + 104))(v17, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v14);
  v29 = NWPath.usesInterfaceSubtype(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v29 & 1) == 0)
  {
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100978590);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Current path is not AWDL";
    goto LABEL_24;
  }

  NWPath.remoteEndpoint.getter();
  v30 = type metadata accessor for NWEndpoint();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v6, 1, v30) == 1)
  {
    sub_100005508(v6, &unk_10097F330, &qword_1007F9410);
LABEL_20:
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000C4AC(v50, qword_100978590);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Missing host";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_25:

    (*(v96 + 8))(v24, v21);
    return 0;
  }

  if ((*(v31 + 88))(v6, v30) != enum case for NWEndpoint.hostPort(_:))
  {
    (*(v31 + 8))(v6, v30);
    goto LABEL_20;
  }

  v95 = v24;
  (*(v31 + 96))(v6, v30);
  v37 = *(sub_10028088C(&qword_1009787B8, &qword_1007FB9A8) + 48);
  v39 = v102;
  v38 = v103;
  v40 = v105;
  (*(v102 + 32))(v105, v6, v103);
  v41 = type metadata accessor for NWEndpoint.Port();
  (*(*(v41 - 8) + 8))(&v6[v37], v41);
  v42 = *(v39 + 16);
  v42(v12, v40, v38);
  if ((*(v39 + 88))(v12, v38) != enum case for NWEndpoint.Host.ipv6(_:))
  {
    v52 = *(v39 + 8);
    v52(v12, v38);
    v53 = v95;
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000C4AC(v54, qword_100978590);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing ipv6 info", v57, 2u);
    }

    v52(v40, v38);
    (*(v96 + 8))(v53, v21);
    return 0;
  }

  v94 = v42;
  (*(v39 + 96))(v12, v38);
  (*(v100 + 32))(v104, v12, v101);
  v43 = IPv6Address.rawValue.getter();
  v45 = v43;
  v46 = v44;
  v47 = v44 >> 62;
  if ((v44 >> 62) <= 1)
  {
    v48 = v99;
    if (!v47)
    {
      sub_100026AC0(v43, v44);
      v49 = v46 & 0xFFFFFFFFFFFFLL;
      goto LABEL_43;
    }

    if (v43 <= v43 >> 32)
    {
      v63 = __DataStorage._bytes.getter();
      if (!v63)
      {
LABEL_65:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_66;
      }

      v64 = v63;
      v65 = __DataStorage._offset.getter();
      if (!__OFSUB__(v45, v65))
      {
        v62 = (v45 - v65 + v64);
        result = __DataStorage._length.getter();
        if (v62)
        {
          goto LABEL_41;
        }

LABEL_66:
        __break(1u);
        return result;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v48 = v99;
  if (v47 == 2)
  {
    v58 = *(v43 + 16);
    v59 = __DataStorage._bytes.getter();
    if (!v59)
    {
LABEL_63:
      __DataStorage._length.getter();
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v60 = v59;
    v61 = __DataStorage._offset.getter();
    if (!__OFSUB__(v58, v61))
    {
      v62 = (v58 - v61 + v60);
      __DataStorage._length.getter();
      if (v62)
      {
LABEL_41:
        v66 = *v62;
        v49 = v62[1];
        sub_100026AC0(v45, v46);
        v45 = v66;
        goto LABEL_43;
      }

      goto LABEL_64;
    }

    goto LABEL_61;
  }

  sub_100026AC0(v43, v44);
  v45 = 0;
  v49 = 0;
LABEL_43:
  IPv6Address.interface.getter();
  v67 = type metadata accessor for NWInterface();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v48, 1, v67) == 1)
  {
    sub_100005508(v48, &qword_1009787A8, &unk_1007FB990);
    v69 = v98;
    goto LABEL_47;
  }

  v70 = NWInterface.index.getter();
  (*(v68 + 8))(v48, v67);
  if ((v70 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v69 = v98;
  if (HIDWORD(v70))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_47:
  v71 = [objc_allocWithZone(WiFiMACAddress) initWithLinkLocalIPv6Address:{v45, v49}];
  if (!v71)
  {
    if (qword_100973608 == -1)
    {
LABEL_53:
      v86 = type metadata accessor for Logger();
      sub_10000C4AC(v86, qword_100978590);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v95;
      if (v89)
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "Missing peer info", v91, 2u);
      }

      (*(v100 + 8))(v104, v101);
      (*(v39 + 8))(v105, v38);
      (*(v96 + 8))(v90, v21);
      return 0;
    }

LABEL_59:
    swift_once();
    goto LABEL_53;
  }

  v72 = v71;
  v73 = [*(v97 + 16) queryAverageRSSIForPeer:v71];
  v74 = v105;
  if (qword_100973608 != -1)
  {
    swift_once();
  }

  v99 = v73;
  v75 = type metadata accessor for Logger();
  sub_10000C4AC(v75, qword_100978590);
  v94(v69, v74, v38);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = v69;
    v79 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v106 = v98;
    *v79 = 136315394;
    v97 = NWEndpoint.Host.debugDescription.getter();
    v80 = v39;
    v82 = v81;
    v83 = *(v80 + 8);
    v83(v78, v38);
    v84 = sub_10000C4E4(v97, v82, &v106);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2048;
    v85 = v99;
    *(v79 + 14) = v99;
    _os_log_impl(&_mh_execute_header, v76, v77, "RSSI Info %s: %ld", v79, 0x16u);
    sub_10000C60C(v98);

    (*(v100 + 8))(v104, v101);
    v83(v105, v38);
    (*(v96 + 8))(v95, v21);
    return v85;
  }

  else
  {

    v92 = *(v39 + 8);
    v92(v69, v38);
    (*(v100 + 8))(v104, v101);
    v92(v74, v38);
    (*(v96 + 8))(v95, v21);
    return v99;
  }
}

uint64_t sub_100321698()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009787C0);
  v1 = sub_10000C4AC(v0, qword_1009787C0);
  if (qword_100973768 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100321760()
{
  type metadata accessor for SDContactStore();
  v0 = swift_allocObject();
  v1 = CNContactStoreMeContactDidChangeNotification;
  v0[2] = CNContactStoreDidChangeNotification;
  v0[3] = v1;
  v2 = objc_allocWithZone(CNContactStore);
  v3 = CNContactStoreDidChangeNotification;
  v4 = v1;
  result = [v2 init];
  v0[4] = result;
  qword_1009A0758 = v0;
  return result;
}

unint64_t sub_1003217EC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 contactIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v71 = 0xD000000000000015;
    v72 = 0x800000010078C0F0;
    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16 = 10535;
    v17 = 0xE200000000000000;
LABEL_3:
    String.append(_:)(*&v16);
LABEL_4:
    v18 = v71;
    v19 = v72;
    goto LABEL_5;
  }

  v25 = [v2 personHandle];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 value];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = [v26 type];
      if (v32)
      {
        if (v32 == 1)
        {
          v71 = 0;
          v72 = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          v33 = 0x800000010078C0D0;
          v34 = 0xD000000000000019;
          goto LABEL_21;
        }

        if (v32 == 2)
        {
          v71 = 0;
          v72 = 0xE000000000000000;
          _StringGuts.grow(_:)(36);

          v33 = 0x800000010078C0B0;
          v34 = 0xD00000000000001FLL;
LABEL_21:
          v71 = v34;
          v72 = v33;
          v55._countAndFlagsBits = v29;
          v55._object = v31;
          String.append(_:)(v55);

          v56 = 2697511;
          v57 = 0xE300000000000000;
LABEL_37:
          String.append(_:)(*&v56);

          goto LABEL_4;
        }

        if (qword_100973610 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_10000C4AC(v58, qword_1009787C0);
        v26 = v26;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 134217984;
          *(v61 + 4) = [v26 type];

          _os_log_impl(&_mh_execute_header, v59, v60, "Invalid INPerson handle type: %ld", v61, 0xCu);
        }

        else
        {

          v59 = v26;
        }
      }

      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v67._countAndFlagsBits = 0xD000000000000033;
      v67._object = 0x800000010078C070;
      String.append(_:)(v67);
      v68._countAndFlagsBits = v29;
      v68._object = v31;
      String.append(_:)(v68);

      v56 = 10537;
      v57 = 0xE200000000000000;
      goto LABEL_37;
    }
  }

  v35 = [v2 nameComponents];
  if (!v35)
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v71 = 0x4C494E2874786574;
    v72 = 0xEF202C333353502CLL;
    v50 = [v2 displayName];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54._countAndFlagsBits = v51;
    v54._object = v53;
    String.append(_:)(v54);

    v17 = 0x800000010078BF90;
    v16 = 0xD00000000000001CLL;
    goto LABEL_3;
  }

  v36 = v35;
  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.givenName.getter();
  if (v37 && (, PersonNameComponents.familyName.getter(), v38))
  {

    v39 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v41 = [v39 stringFromPersonNameComponents:isa];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v71 = 0xD00000000000001CLL;
    v72 = 0x800000010078C050;
    v45._countAndFlagsBits = v42;
    v45._object = v44;
    String.append(_:)(v45);

    v46 = 2697511;
    v47 = 0xE300000000000000;
  }

  else
  {
    v48 = PersonNameComponents.givenName.getter();
    if (v49)
    {
      v71 = 0x3133535028707670;
      v72 = 0xEA00000000002C32;
      String.append(_:)(*&v48);

      v46 = 41;
      v47 = 0xE100000000000000;
    }

    else
    {
      v62 = PersonNameComponents.familyName.getter();
      if (v63 || (v62 = PersonNameComponents.nickname.getter(), v63) || (v62 = PersonNameComponents.middleName.getter(), v63) || (v62 = PersonNameComponents.namePrefix.getter(), v63) || (v62 = PersonNameComponents.nameSuffix.getter(), v63))
      {
        v64 = v62;
        v65 = v63;
      }

      else
      {
        v69 = [v3 displayName];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v70;
      }

      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v71 = 0x4C494E2874786574;
      v72 = 0xEF202C333353502CLL;
      v66._countAndFlagsBits = v64;
      v66._object = v65;
      String.append(_:)(v66);

      v47 = 0x800000010078BF90;
      v46 = 0xD00000000000001CLL;
    }
  }

  String.append(_:)(*&v46);
  v18 = v71;
  v19 = v72;
  (*(v7 + 8))(v9, v6);
LABEL_5:
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(152);
  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD00000000000005FLL;
  v21._object = 0x800000010078BFB0;
  String.append(_:)(v21);
  v22._countAndFlagsBits = a1;
  v22._object = a2;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000035;
  v23._object = 0x800000010078C010;
  String.append(_:)(v23);
  return v71;
}

uint64_t sub_100322074(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  if (a1)
  {
    sub_1000276B4(0, &qword_100978800, INPerson_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3[3] = a1;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100322180;

  return sub_1003238F4(a1, v5, v7);
}

uint64_t sub_100322180(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);

  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10032233C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_100322468(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SDSuggestionCreationUtilities();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003224C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C04;

  return sub_100322074(v2, v3, v4);
}

id sub_100322584(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  v12 = 0;
  v8 = [v4 initWithBundleIdentifier:v7 requireValid:a3 & 1 platform:a4 error:&v12];

  if (v8)
  {
    v9 = v12;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

id sub_100322668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SDContactStore();
  v35 = v11;
  v36 = &off_1008E85A0;
  v34[0] = a3;

  v12 = [a4 customIdentifier];
  if (v12 || (v12 = [a4 contactIdentifier]) != 0)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v8 + 8))(v10, v7);
    v14 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v15 = [a4 personHandle];
  if (v15 && (v16 = v15, v17 = [v15 value], v16, v17))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v18;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:

  v19 = [a4 displayName];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = *sub_10002CDC0(v34, v35);
  v32 = v11;
  v33 = &off_1008E85A0;
  v31[0] = v20;

  v21 = [a4 contactIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    sub_10002CDC0(v31, v32);
    v26 = sub_1005A09A0(v23, v25);
  }

  else
  {
    v26 = 0;
  }

  sub_10000C60C(v31);
  v27 = String._bridgeToObjectiveC()();

  if (v14)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(_PSRecipient) initWithIdentifier:v27 handle:v28 displayName:v19 contact:v26];

  sub_10000C60C(v34);
  return v29;
}

id sub_10032299C()
{
  sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v1 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v2 = objc_allocWithZone(GDKnosisRequest);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithKGQ:v3 query:v4 limit:isa offset:v1];

  v6 = [objc_allocWithZone(GDXPCKnosisService) init];
  v11 = 0;
  v7 = [v6 executeKGQ:v5 error:&v11];
  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_100322B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_100322B58, 0, 0);
}

uint64_t sub_100322B58()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultDatabaseDirectory];
  v3 = [v1 storeWithDirectory:v2 readOnly:1];

  v0[18] = v3;
  v4 = v0 + 18;
  v5 = v0 + 10;
  sub_10028088C(&qword_100978818, &unk_1007FBA18);
  Optional.tryUnwrap(_:file:line:)();
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];

  v9 = v0[10];
  v0[22] = v9;
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithKey:v11 ascending:0];
  v0[23] = v12;

  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007FA7E0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100026764();
  *(v13 + 32) = v7;
  *(v13 + 40) = v6;
  if (v8 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 96) = &type metadata for Int;
  *(v13 + 104) = &protocol witness table for Int;
  v45 = v13;
  v46 = v9;
  *(v13 + 72) = v14;
  if (v14)
  {

    v15 = sub_10028FCC0(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return _swift_continuation_await(v15);
    }

    v44 = v12;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = [swift_unknownObjectRetain() handle];
        if (v17)
        {
          v18 = v17;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease_n();
          v19 = 0;
          v21 = 0;
        }

        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        if (v23 >= v22 >> 1)
        {
          sub_10028FCC0((v22 > 1), v23 + 1, 1);
        }

        ++v16;
        _swiftEmptyArrayStorage[2] = v23 + 1;
        v24 = &_swiftEmptyArrayStorage[2 * v23];
        v24[4] = v19;
        v24[5] = v21;
      }

      while (v14 != v16);
    }

    else
    {
      v25 = (v0[19] + 32);
      v26 = v14;
      do
      {
        v27 = *v25;
        v28 = [v27 handle];
        if (v28)
        {
          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;
        }

        else
        {

          v30 = 0;
          v32 = 0;
        }

        v34 = _swiftEmptyArrayStorage[2];
        v33 = _swiftEmptyArrayStorage[3];
        if (v34 >= v33 >> 1)
        {
          sub_10028FCC0((v33 > 1), v34 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v34 + 1;
        v35 = &_swiftEmptyArrayStorage[2 * v34];
        v35[4] = v30;
        v35[5] = v32;
        ++v25;
        --v26;
      }

      while (v26);
    }

    v4 = v0 + 18;
    v5 = v0 + 10;
    v12 = v44;
  }

  else
  {
  }

  sub_1000276B4(0, &qword_100978820, NSPredicate_ptr);
  v45[17] = sub_10028088C(&qword_100978828, &qword_1007FBA28);
  v36 = sub_100324BBC();
  v45[14] = _swiftEmptyArrayStorage;
  v45[22] = &type metadata for Int;
  v45[23] = &protocol witness table for Int;
  v45[18] = v36;
  v45[19] = v14;
  v37 = NSPredicate.init(format:_:)();
  v0[24] = v37;
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1007F5670;
  *(v38 + 56) = sub_1000276B4(0, &qword_100978838, NSSortDescriptor_ptr);
  *(v38 + 32) = v12;
  v39 = v37;
  v40 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[25] = isa;

  v0[2] = v0;
  v0[7] = v4;
  v0[3] = sub_100323158;
  v42 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_100978840, &qword_1007FBA38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10032233C;
  v0[13] = &unk_1008DBCE8;
  v0[14] = v42;
  [v46 queryInteractionsUsingPredicate:v39 sortDescriptors:isa limit:1 completionHandler:v5];
  v15 = v0 + 2;

  return _swift_continuation_await(v15);
}

uint64_t sub_100323158()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100323864;
  }

  else
  {
    v2 = sub_100323268;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100323268()
{
  v49 = v0;
  v4 = v0 + 18;
  v5 = v0[24];
  v6 = v0[25];
  if (v0[18])
  {
    v7 = sub_10029B654(v0[18]);
  }

  else
  {
    v7 = 0;
  }

  if (qword_100973610 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009787C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v48 = v2;
  *v1 = 136315138;
  if (!v7)
  {
    result = 0;
    goto LABEL_14;
  }

  v3 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v7 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*(v3 + 16))
  {
    result = *(v7 + 32);
LABEL_14:
    while (1)
    {
      *(v4 - 8) = result;
      sub_10028088C(&qword_100978848, &unk_1007FBA40);
      v12 = String.init<A>(describing:)();
      v4 = v13;
      v3 = sub_10000C4E4(v12, v13, &v48);

      *(v1 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found interaction %s", v1, 0xCu);
      sub_10000C60C(v2);

LABEL_15:

      if (!v7)
      {
        break;
      }

      v9 = (v7 & 0xFFFFFFFFFFFFFF8);
      if (v7 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_27:

          break;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
        v15 = v14;

        v16 = [v15 derivedIntentIdentifier];

        if (v16)
        {
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          v22 = os_log_type_enabled(v20, v21);
          v23 = v0[23];
          v24 = v0[24];
          v25 = v0[22];
          if (v22)
          {
            v43 = v0[20];
            v44 = v0[21];
            v46 = v0[22];
            v26 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *v26 = 136315650;
            v27 = sub_10000C4E4(v17, v19, &v48);

            *(v26 + 4) = v27;
            *(v26 + 12) = 2080;
            sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
            v28 = Array.description.getter();
            v30 = sub_10000C4E4(v28, v29, &v48);

            *(v26 + 14) = v30;
            *(v26 + 22) = 2080;
            *(v26 + 24) = sub_10000C4E4(v43, v44, &v48);
            _os_log_impl(&_mh_execute_header, v20, v21, "Found derived intent identifier %s for recipients %s and bundle ID %s", v26, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v31 = v17;
          goto LABEL_31;
        }

        break;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v7 + 32);
        goto LABEL_21;
      }

      __break(1u);
LABEL_36:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_10;
      }
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[23];
    v36 = v0[24];
    v37 = v0[22];
    if (v34)
    {
      v45 = v0[20];
      v47 = v0[21];
      v38 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v38 = 136315394;
      sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
      v39 = Array.description.getter();
      v41 = sub_10000C4E4(v39, v40, &v48);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10000C4E4(v45, v47, &v48);
      _os_log_impl(&_mh_execute_header, v32, v33, "No interaction was found for recipients %s and bundle ID %s", v38, 0x16u);
      swift_arrayDestroy();
    }

    v31 = 0;
    v19 = 0;
LABEL_31:
    v42 = v0[1];

    return v42(v31, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}