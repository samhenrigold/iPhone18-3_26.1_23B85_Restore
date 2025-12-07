uint64_t sub_1002C0DD4()
{
  v1 = v0[19];
  v2 = v0[17];
  sub_1002B4888(v2);

  sub_100005508(v2, &unk_100976120, &qword_1007F9260);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002C0E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10028088C(&qword_100976278, &qword_1007F93E8);
  v6[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v6[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C0F70, v7, 0);
}

uint64_t sub_1002C0F70()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1002C1040;
  v2 = v0[5];
  v3 = v0[3];

  return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:transferID:)(v2, _swiftEmptyArrayStorage, v3, 0, 0xF000000000000000, 0, 0, 1);
}

uint64_t sub_1002C1040()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_1002C1240;
  }

  else
  {
    v4 = sub_1002C1178;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C1178()
{
  v1 = *(v0 + 40);
  v2 = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_100005508(v1, &qword_100976278, &qword_1007F93E8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002C1240()
{
  v1 = *(v0 + 40);
  v2 = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100005508(v1, &qword_100976278, &qword_1007F93E8);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1002C1308(uint64_t a1, void *a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  if (a2)
  {
    v6 = type metadata accessor for TaskPriority();
    v7 = *(*(v6 - 8) + 56);
    v8 = a2;
    v7(v5, 1, 1, v6);
    v9 = qword_1009735E0;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = static AirDropActor.shared;
    v12 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v10;

    sub_1002B3098(0, 0, v5, &unk_1007F9628, v13);
  }
}

void sub_1002C14AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = qword_1009735E0;
    v9 = v6;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = static AirDropActor.shared;
    v11 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v9;

    sub_1002B3098(0, 0, v4, &unk_1007F9618, v12);
  }
}

uint64_t sub_1002C1668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1704, v5, 0);
}

uint64_t sub_1002C1704()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975E80);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus] isAirDropAllowed];

    _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService airdrop allowed changed:%{BOOL}d - restarting", v7, 8u);
  }

  else
  {

    v4 = *(v0 + 16);
  }

  sub_1002BA2B0();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002C1884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1920, v5, 0);
}

uint64_t sub_1002C1920()
{
  if ([*(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus) wirelessEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100975E80);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService wifi enabled, attempting to start", v4, 2u);
    }

    sub_1000286E8(0, 1, 0, 0);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100975E80);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropNearFieldService wifi disabled, stopping", v8, 2u);
    }

    sub_1002B9D54();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002C1B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1BDC, v5, 0);
}

uint64_t sub_1002C1BDC()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService Buddy finished, attempting to start", v4, 2u);
  }

  sub_1000286E8(0, 1, 0, 0);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002C1D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1DC4, v5, 0);
}

uint64_t sub_1002C1DC4()
{
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v1 = static NSUserDefaults.airdrop.getter();
  v2 = SFAirDropUserDefaults.nearFieldSharingEnabled.getter();

  if (v2)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100975E80);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService Nearby sharing enabled, attempting to start", v6, 2u);
    }

    sub_1000286E8(0, 1, 0, 0);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100975E80);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropNearFieldService Nearby sharing disabled, stopping", v10, 2u);
    }

    sub_1002B9D54();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002C1FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C2074, v5, 0);
}

uint64_t sub_1002C2074()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService Proximity Apple ID Sign In progress, stopping", v4, 2u);
  }

  sub_1002B9D54();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002C21B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C224C, v5, 0);
}

uint64_t sub_1002C224C()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService Proximity Apple ID Sign In Finished, starting", v4, 2u);
  }

  sub_1000286E8(0, 1, 0, 0);
  v5 = *(v0 + 8);

  return v5();
}

void sub_1002C23C8(uint64_t a1)
{
  sub_1002C2668(319, &qword_100975F48, type metadata accessor for SDNearFieldTap);
  if (v1 <= 0x3F)
  {
    sub_1002C2668(319, &qword_100975F50, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    if (v2 <= 0x3F)
    {
      sub_1002CD9EC(319, &qword_100975F58, &unk_100975F60, &unk_1007F91B0, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_1002C2668(319, &qword_100986120, &type metadata accessor for SFAirDrop.NearbySharingInteraction);
        if (v4 <= 0x3F)
        {
          sub_1002C2668(319, &qword_100975F70, &type metadata accessor for UUID);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1002C2668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002C26BC(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1002C2788(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = (&v40 - v4);
  v6 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  if (IsAppleInternalBuild())
  {
    v45 = v1;
    v46 = v5;
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v44 = v9;
    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100975E80);
    v20 = *(v13 + 16);
    v43 = a1;
    v20(v18, a1, v12);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v23 = 136315138;
      v20(v16, v18, v12);
      v24 = String.init<A>(describing:)();
      v42 = v20;
      v26 = v25;
      (*(v13 + 8))(v18, v12);
      v27 = sub_10000C4E4(v24, v26, &v47);
      v20 = v42;

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "SDAirDropNearFieldService: updating nearby sharing interaction with simulated state: %s", v23, 0xCu);
      sub_10000C60C(v41);
    }

    else
    {

      (*(v13 + 8))(v18, v12);
    }

    v20(v11, v43, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000FF90(v11, v44, &unk_100975F60, &unk_1007F91B0);
    v32 = v45;
    static Published.subscript.setter();
    sub_100005508(v11, &unk_100975F60, &unk_1007F91B0);
    v33 = type metadata accessor for TaskPriority();
    v34 = v46;
    (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
    v35 = qword_1009735E0;
    v36 = v32;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = static AirDropActor.shared;
    v38 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v39 = swift_allocObject();
    v39[2] = v37;
    v39[3] = v38;
    v39[4] = v36;

    sub_1002B2DEC(0, 0, v34, &unk_1007F94C8, v39, &type metadata for () + 8);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_100975E80);
    v46 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v46, v29, "Ignoring simulated nearby sharing interaction since we are not on an internal build", v30, 2u);
    }

    v31 = v46;
  }
}

uint64_t sub_1002C2D84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_1002C2E20(a1);
}

uint64_t sub_1002C2E20(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for UUID();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = sub_10028088C(&qword_100976130, &qword_1007F92B0);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v2[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C2F84, v4, 0);
}

uint64_t sub_1002C2F84(uint64_t a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100975E80);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService.at-a-distance: BEGIN", v6, 2u);
    }

    v7 = v2[15];
    v8 = v2[10];

    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
    swift_beginAccess();
    sub_10000FF90(v8 + v9, v7, &qword_100976130, &qword_1007F92B0);
    Optional.tryUnwrap(_:file:line:)();
    v16 = v2[10];
    sub_100005508(v2[15], &qword_100976130, &qword_1007F92B0);
    v17 = *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v17 && (v18 = [v17 currentApplicationLabel]) != 0)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v2[7] = v20;
    v2[8] = v22;
    sub_10028088C(&qword_100975100, &qword_1007FBA10);
    Optional.tryUnwrap(_:file:line:)();
    v23 = v2[17];
    v26 = v2[16];
    v27 = v2[12];
    v28 = v2[13];
    v29 = v2[11];

    v30 = (v23 + *(v26 + 20));
    v31 = *v30;
    v32 = v30[1];
    (*(v27 + 16))(v28, v23, v29);
    sub_100294008(v31, v32);
    SFAirDropClient.BoopAtADistance.ServerInfo.init(applicationLabel:publicKeyData:bonjourUUID:)();
    sub_1002D6414(v23, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);

    v24 = v2[1];
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "SDAirDropNearFieldService.at-a-distance: begin FAILED -- Not internal build", v13, 2u);
    }

    v14 = type metadata accessor for SFError();
    sub_100005358(&qword_100976248, &type metadata accessor for SFError, &protocol conformance descriptor for SFError);
    swift_allocError();
    *v15 = 0xD000000000000037;
    v15[1] = 0x800000010078A460;
    v15[2] = 0xD000000000000060;
    v15[3] = 0x800000010078A4A0;
    v15[4] = 1031;
    (*(*(v14 - 8) + 104))(v15, enum case for SFError.notAvailable(_:), v14);
    swift_willThrow();

    v24 = v2[1];
  }

  return v24();
}

uint64_t sub_1002C3498(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1002C3540(a1, a2);
}

uint64_t sub_1002C3540(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for UUID();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for SDNearFieldTap(0);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[22] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v3[23] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C37B8, v8, 0);
}

uint64_t sub_1002C37B8(uint64_t a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v2[12].receiver = sub_10000C4AC(v3, qword_100975E80);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService.at-a-distance: UPDATE", v6, 2u);
    }

    receiver = v2[4].receiver;

    v8 = *&receiver[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController];
    v2[2].super_class = v8;
    v9 = v8;
    sub_10028088C(&unk_100976250, &qword_1007F9390);
    Optional.tryUnwrap(_:file:line:)();

    v2[12].super_class = v2[2].receiver;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "SDAirDropNearFieldService.at-a-distance: didDetectDeviceNearbyWithInitiatorRole", v12, 2u);
    }

    v13 = v2[11].receiver;
    super_class = v2[11].super_class;
    v15 = v2[10].receiver;
    v16 = v2[9].super_class;
    v38 = v2[10].super_class;
    v17 = v2[4].receiver;
    v18 = v2[3].receiver;

    v19 = SFAirDropClient.BoopAtADistance.Transaction.isInitiator.getter();
    v20 = type metadata accessor for TaskPriority();
    v2[13].receiver = v20;
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v2[13].super_class = v22;
    v2[14].receiver = ((v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000);
    (v22)(v13, 1, 1, v20);
    v23 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v2[14].super_class = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = super_class;
    *(v24 + 24) = v23;
    *(v24 + 32) = v19 & 1;
    *(v24 + 40) = v17;
    v25 = v17;

    sub_1002B3098(0, 0, v13, &unk_1007F93A0, v24);

    v26 = v15[2];
    v2[15].receiver = v26;
    v2[15].super_class = ((v15 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v26(v38, v18, v16);
    v27 = type metadata accessor for SDBoopAtADistanceTransaction(0);
    v28 = objc_allocWithZone(v27);
    v26(&v28[OBJC_IVAR____TtC16DaemoniOSLibrary28SDBoopAtADistanceTransaction_inner], v38, v16);
    v2[1].receiver = v28;
    v2[1].super_class = v27;
    v2[16].receiver = objc_msgSendSuper2(v2 + 1, "init");
    (v15[1])(v38, v16);
    static Clock<>.continuous.getter();
    v29 = swift_task_alloc();
    v2[16].super_class = v29;
    *v29 = v2;
    *(v29 + 1) = sub_1002C3E00;

    return sub_10002ED10(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_100975E80);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "SDAirDropNearFieldService.at-a-distance: FAILED -- Not internal build", v34, 2u);
    }

    v35 = type metadata accessor for SFError();
    sub_100005358(&qword_100976248, &type metadata accessor for SFError, &protocol conformance descriptor for SFError);
    swift_allocError();
    *v36 = 0xD000000000000037;
    v36[1] = 0x800000010078A460;
    v36[2] = 0xD000000000000060;
    v36[3] = 0x800000010078A4A0;
    v36[4] = 1044;
    (*(*(v35 - 8) + 104))(v36, enum case for SFError.notAvailable(_:), v35);
    swift_willThrow();

    v37 = v2->super_class;

    return v37();
  }
}

uint64_t sub_1002C3E00()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = v2[23];
  (*(v2[17] + 8))(v2[18], v2[16]);
  if (v0)
  {
    v4 = sub_1002C41D4;
  }

  else
  {
    v4 = sub_1002C3F7C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C3F7C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService.at-a-distance: nearFieldController.didBegin", v4, 2u);
  }

  v5 = v1[32];
  v27 = v1[30];
  v20 = v1[29];
  v6 = v1[27];
  v7 = v1[26];
  v9 = v1[22];
  v8 = v1[23];
  v24 = v1[19];
  v25 = v1[14];
  v10 = v1[13];
  v26 = v1[12];
  v28 = v1[15];
  v11 = v1[8];
  v22 = v1[21];
  v23 = v1[7];
  v21 = v1[6];

  v6(v9, 1, 1, v7);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v20;
  v12[4] = v5;
  v12[5] = v11;
  v13 = v5;
  v14 = v11;

  v15 = v13;
  sub_1002B2DEC(0, 0, v9, &unk_1007F93B8, v12, &type metadata for () + 8);

  v27(v22, v21, v24);
  (*(v10 + 16))(v25, v23, v26);
  sub_1004E78DC(v22, v25, v28);
  SFAirDropClient.BoopAtADistance.Transaction.identifier.getter();
  v16 = swift_task_alloc();
  v1[35] = v16;
  *v16 = v1;
  v16[1] = sub_1002C428C;
  v17 = v1[15];
  v18 = v1[11];

  return sub_1002BCAE4(v17, v18);
}

uint64_t sub_1002C41D4()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002C428C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002C43F8, v1, 0);
}

uint64_t sub_1002C43F8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 120);

  sub_1002D6414(v2, type metadata accessor for SDNearFieldTap);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1002C44FC(uint64_t a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
    v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v4)
    {
      v5 = [*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController) currentPreferredPollingType];
      v6 = *(v2 + v3);
      if (v6)
      {
        v7 = [v6 currentApplicationLabel];
        if (v7)
        {
          v8 = v7;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;

LABEL_13:
          if (qword_100973548 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000C4AC(v18, qword_100975E80);

          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v19, v20))
          {
            v31 = v9;
            v21 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v21 = 136315394;
            sub_10028088C(&qword_100976240, &qword_1007F9380);
            v22 = String.init<A>(describing:)();
            v24 = sub_10000C4E4(v22, v23, &v32);

            *(v21 + 4) = v24;
            *(v21 + 12) = 2080;
            if (v11)
            {
              v25 = v31;
            }

            else
            {
              v25 = 0xD000000000000015;
            }

            if (v11)
            {
              v26 = v11;
            }

            else
            {
              v26 = 0x8000000100789F30;
            }

            v27 = sub_10000C4E4(v25, v26, &v32);

            *(v21 + 14) = v27;
            _os_log_impl(&_mh_execute_header, v19, v20, "SDAirDropNearFieldService.at-a-distance: Restaring Field Service polling {lastPollingType: %s, lastApplicationLabel: %s}", v21, 0x16u);
            swift_arrayDestroy();

            v9 = v31;
          }

          sub_1002B9D54();
          sub_1000286E8(v5, v4 == 0, v9, v11);

          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v28, v29, "SDAirDropNearFieldService.at-a-distance: END", v30, 2u);
          }

          return;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100975E80);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "SDAirDropNearFieldService.at-a-distance: FAILED -- Not internal build", v15, 2u);
  }

  v16 = type metadata accessor for SFError();
  sub_100005358(&qword_100976248, &type metadata accessor for SFError, &protocol conformance descriptor for SFError);
  swift_allocError();
  *v17 = 0xD000000000000037;
  v17[1] = 0x800000010078A460;
  v17[2] = 0xD000000000000060;
  v17[3] = 0x800000010078A4A0;
  v17[4] = 1067;
  (*(*(v16 - 8) + 104))(v17, enum case for SFError.notAvailable(_:), v16);
  swift_willThrow();
}

uint64_t sub_1002C49EC@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = sub_10028088C(&qword_1009761F8, &qword_1007F9350);
  __chkstk_darwin(v1);
  v2 = sub_10028088C(&qword_100976200, &qword_1007F9358);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_10028088C(&qword_100976208, &qword_1007F9360);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  swift_beginAccess();
  sub_10028088C(&qword_100976210, &qword_1007F9368);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10028088C(&qword_100976218, &unk_1007F9370);
  sub_100011630(&qword_100976220, &qword_100976200, &qword_1007F9358, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher.map<A>(_:)();
  (*(v3 + 8))(v5, v2);
  sub_100011630(&qword_100976228, &qword_100976208, &qword_1007F9360, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher<>.values.getter();
  sub_100011630(&qword_100976230, &qword_1009761F8, &qword_1007F9350, &protocol conformance descriptor for AsyncPublisher<A>);
  SFNoThrowAsyncSequence.init<A>(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1002C4D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v6 = static NSUserDefaults.airdrop.getter();
  v7 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if ((v7 & 1) != 0 && (v8 = v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap, swift_beginAccess(), v9 = type metadata accessor for SDNearFieldTap(0), !(*(*(v9 - 8) + 48))(v8, 1, v9)) && (v12 = (v8 + *(v9 + 24)), (v13 = v12[1]) != 0))
  {
    if (*v12 == a1 && v13 == a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1002C4E70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976138, qword_1007F92B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for SDNearFieldTap(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v11 = static NSUserDefaults.airdrop.getter();
  v12 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if (v12)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
    swift_beginAccess();
    sub_10000FF90(v2 + v13, v6, &qword_100976138, qword_1007F92B8);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_10000CA10(v6, v10, type metadata accessor for SDNearFieldTap);
      v14 = sub_1004E7B84(a1);
      sub_1002D6414(v10, type metadata accessor for SDNearFieldTap);
      return v14 & 1;
    }

    sub_100005508(v6, &qword_100976138, qword_1007F92B8);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1002C5108@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  v179 = a2;
  v194 = a1;
  v192 = a3;
  v178 = type metadata accessor for SFClientIdentity();
  v177 = *(v178 - 1);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest();
  v191 = *(v193 - 8);
  v4 = __chkstk_darwin(v193);
  v190 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v180 = &v169 - v7;
  v8 = __chkstk_darwin(v6);
  v182 = &v169 - v9;
  v10 = __chkstk_darwin(v8);
  v171 = &v169 - v11;
  __chkstk_darwin(v10);
  v170 = &v169 - v12;
  v13 = sub_10028088C(&qword_100976198, &qword_1007F9318);
  __chkstk_darwin(v13 - 8);
  v173 = &v169 - v14;
  v15 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v187 = *(v15 - 8);
  v188 = v15;
  v16 = __chkstk_darwin(v15);
  v181 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v175 = &v169 - v19;
  v20 = __chkstk_darwin(v18);
  v184 = &v169 - v21;
  __chkstk_darwin(v20);
  v172 = &v169 - v22;
  v23 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v28 = __chkstk_darwin(v27 - 8);
  v185 = (&v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v31 = &v169 - v30;
  v32 = type metadata accessor for UUID();
  v196 = *(v32 - 8);
  v33 = __chkstk_darwin(v32);
  v35 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v169 - v37;
  __chkstk_darwin(v36);
  v40 = &v169 - v39;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41 = v24;

  v42 = v24 + 48;
  v43 = *(v24 + 48);
  v44 = v43(v31, 1, v23);
  v195 = v32;
  v186 = v23;
  v174 = v41;
  v189 = v35;
  if (!v44)
  {
    v183 = v43;
    (*(v41 + 16))(v26, v31, v23);
    sub_100005508(v31, &unk_100975F60, &unk_1007F91B0);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v41 + 8))(v26, v23);
    v47 = v26;
    v48 = v196;
    (*(v196 + 32))(v40, v38, v32);
    v46 = v194;
    SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
    v49 = static UUID.== infix(_:_:)();
    v50 = *(v48 + 8);
    v50(v35, v32);
    if ((v49 & 1) == 0)
    {
      v26 = v47;
      v188 = v42;
      v50(v40, v32);
      v45 = v197;
      v43 = v183;
      goto LABEL_9;
    }

    v185 = v50;
    v190 = (v48 + 8);
    v51 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
    v52 = v197;
    swift_beginAccess();
    v53 = *(&v52->isa + v51);
    v54 = *(v53 + 16);
    v169 = v40;
    if (v54 && (v55 = sub_10000EBD4(v40), (v56 & 1) != 0))
    {
      v57 = *(*(v53 + 56) + 8 * v55);
      v58 = swift_endAccess();
      __chkstk_darwin(v58);
      *(&v169 - 2) = v194;

      v59 = v173;
      v186 = v57;
      sub_1002CC3C0(sub_1002D649C, v57, v173);
      v61 = v187;
      v60 = v188;
      if ((*(v187 + 48))(v59, 1, v188) != 1)
      {
        v142 = v172;
        (*(v61 + 32))(v172, v59, v60);
        v143 = v191;
        v144 = v189;
        if (qword_100973548 != -1)
        {
          swift_once();
        }

        v145 = type metadata accessor for Logger();
        sub_10000C4AC(v145, qword_100975E80);
        v146 = *(v143 + 16);
        v147 = v170;
        v149 = v193;
        v148 = v194;
        v146(v170, v194, v193);
        v150 = v171;
        v146(v171, v148, v149);
        v151 = Logger.logObject.getter();
        v152 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          v198[0] = v197;
          *v153 = 136315394;
          LODWORD(v194) = v152;
          SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
          sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v154 = v195;
          v155 = dispatch thunk of CustomStringConvertible.description.getter();
          v157 = v156;
          v158 = v154;
          v159 = v185;
          v185(v144, v158);
          v160 = *(v143 + 8);
          v160(v147, v149);
          v161 = sub_10000C4E4(v155, v157, v198);

          *(v153 + 4) = v161;
          *(v153 + 12) = 2080;
          v162 = SFAirDrop.NearbySharingAssertionRequest.explanation.getter();
          v164 = v163;
          v160(v150, v149);
          v165 = v192;
          v166 = v195;
          v167 = sub_10000C4E4(v162, v164, v198);
          v142 = v172;

          *(v153 + 14) = v167;
          _os_log_impl(&_mh_execute_header, v151, v194, "SDAirDropNearFieldService: Existing matching assertion for nearby sharing interaction:%s explanation:%s", v153, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v168 = *(v143 + 8);
          v168(v150, v149);
          v168(v147, v149);
          v159 = v185;
          v165 = v192;
          v166 = v195;
        }

        SFAirDrop.NearbySharingAssertion.id.getter();
        (*(v187 + 8))(v142, v188);
        v159(v169, v166);
        (*(v196 + 56))(v165, 0, 1, v166);
      }

      v62 = v195;
      sub_100005508(v59, &qword_100976198, &qword_1007F9318);
      v63 = v62;
      v64 = v186;
    }

    else
    {
      swift_endAccess();
      v64 = _swiftEmptyArrayStorage;
      v63 = v195;
      v61 = v187;
    }

    v91 = *(v196 + 16);
    v91(v189, v40, v63);
    SFAirDrop.NearbySharingAssertionRequest.explanation.getter();
    (*(v177 + 2))(v176, v179, v178);
    v92 = v184;
    SFAirDrop.NearbySharingAssertion.init(nearbySharingInteractionID:explanation:client:)();
    v93 = v175;
    v183 = *(v61 + 16);
    v183(v175, v92, v188);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_10028E47C(0, v64[2] + 1, 1, v64);
    }

    v94 = v181;
    v96 = v64[2];
    v95 = v64[3];
    if (v96 >= v95 >> 1)
    {
      v64 = sub_10028E47C((v95 > 1), v96 + 1, 1, v64);
    }

    v64[2] = v96 + 1;
    v97 = *(v61 + 32);
    v98 = v64 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v96;
    v99 = v188;
    v97(v98, v93, v188);
    v100 = v189;
    v91(v189, v169, v195);
    v101 = v100;
    swift_beginAccess();

    v186 = v64;
    sub_1002AFDB4(v102, v100);
    swift_endAccess();
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_10000C4AC(v103, qword_100975E80);
    v104 = v184;
    v183(v94, v184, v99);
    v105 = v191;
    v106 = *(v191 + 16);
    v107 = v193;
    v108 = v194;
    v106(v182, v194, v193);
    v109 = v180;
    v106(v180, v108, v107);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v177 = v112;
      v194 = swift_slowAlloc();
      v198[0] = v194;
      *v112 = 136315650;
      LODWORD(v183) = v111;
      v113 = v181;
      SFAirDrop.NearbySharingAssertion.id.getter();
      sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v179 = v110;
      v114 = v195;
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v116;
      v118 = v185;
      v185(v101, v114);
      v178 = *(v187 + 8);
      v178(v113, v188);
      v119 = sub_10000C4E4(v115, v117, v198);

      v120 = v177;
      *(v177 + 1) = v119;
      *(v120 + 6) = 2080;
      v121 = v182;
      SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      v118(v101, v114);
      v125 = v118;
      v126 = *(v105 + 8);
      v127 = v193;
      v126(v121, v193);
      v128 = sub_10000C4E4(v122, v124, v198);

      *(v120 + 14) = v128;
      *(v120 + 11) = 2080;
      v129 = v180;
      v130 = SFAirDrop.NearbySharingAssertionRequest.explanation.getter();
      v132 = v131;
      v133 = v127;
      v99 = v188;
      v126(v129, v133);
      v134 = sub_10000C4E4(v130, v132, v198);
      v135 = v178;
      v104 = v184;

      *(v120 + 3) = v134;
      v136 = v179;
      _os_log_impl(&_mh_execute_header, v179, v183, "SDAirDropNearFieldService: Created new assertion:%s for nearby sharing interaction:%s with explanation:%s", v120, 0x20u);
      swift_arrayDestroy();

      v137 = v192;
    }

    else
    {

      v138 = *(v105 + 8);
      v138(v109, v107);
      v138(v182, v107);
      v135 = *(v187 + 8);
      v135(v181, v99);
      v137 = v192;
      v125 = v185;
    }

    v139 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem;
    v140 = v197;
    if (*(&v197->isa + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem))
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    *(&v140->isa + v139) = 0;

    SFAirDrop.NearbySharingAssertion.id.getter();
    v135(v104, v99);
    v141 = v195;
    v125(v169, v195);
    (*(v196 + 56))(v137, 0, 1, v141);
  }

  v188 = v42;
  sub_100005508(v31, &unk_100975F60, &unk_1007F91B0);
  v45 = v197;
  v46 = v194;
LABEL_9:
  v65 = v193;
  v67 = v190;
  v66 = v191;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_10000C4AC(v68, qword_100975E80);
  (*(v66 + 16))(v67, v46, v65);
  v69 = v45;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    LODWORD(v194) = v71;
    v197 = v70;
    v184 = v26;
    v72 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v198[0] = v187;
    *v72 = 136315394;
    v183 = v43;
    v73 = v189;
    SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v74 = v195;
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v76;
    v182 = *(v196 + 8);
    (v182)(v73, v74);
    (*(v66 + 8))(v67, v65);
    v78 = sub_10000C4E4(v75, v77, v198);

    *(v72 + 4) = v78;
    *(v72 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v185;
    static Published.subscript.getter();

    v80 = v186;
    if (v183(v79, 1, v186))
    {
      sub_100005508(v79, &unk_100975F60, &unk_1007F91B0);
      v81 = 0x800000010078A3B0;
      v82 = 0xD000000000000027;
    }

    else
    {
      v84 = v174;
      v85 = v184;
      (*(v174 + 16))(v184, v79, v80);
      sub_100005508(v79, &unk_100975F60, &unk_1007F91B0);
      SFAirDrop.NearbySharingInteraction.id.getter();
      (*(v84 + 8))(v85, v80);
      v86 = UUID.uuidString.getter();
      v81 = v87;
      (v182)(v73, v74);
      v82 = v86;
    }

    v83 = v192;
    v88 = sub_10000C4E4(v82, v81, v198);

    *(v72 + 14) = v88;
    v89 = v197;
    _os_log_impl(&_mh_execute_header, v197, v194, "SDAirDropNearFieldService: Request to take assertion for nearby sharing interaction:%s failed because it's not matching the current active interaction:%s", v72, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v66 + 8))(v67, v65);
    v74 = v195;
    v83 = v192;
  }

  return (*(v196 + 56))(v83, 1, 1, v74);
}

uint64_t sub_1002C659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for UUID();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C6744, v8, 0);
}

uint64_t sub_1002C6744()
{
  v50 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
LABEL_13:

    v42 = v0[1];

    return v42();
  }

  v2 = Strong;
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[14];

    sub_100005508(v6, &unk_100975F60, &unk_1007F91B0);
    goto LABEL_13;
  }

  (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
  SFAirDrop.NearbySharingInteraction.id.getter();
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (!*(v8 + 16) || (v9 = sub_10000EBD4(v0[13]), (v10 & 1) == 0))
  {
    v36 = v0[18];
    v37 = v0[15];
    v38 = v0[16];
    v39 = v0[13];
    v40 = v0[10];
    v41 = v0[11];
    swift_endAccess();
    (*(v41 + 8))(v39, v40);
    (*(v38 + 8))(v36, v37);
LABEL_12:

    goto LABEL_13;
  }

  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  v14 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v15 = *(v13 + 8);

  v15(v11, v12);
  v16 = *(v14 + 16);

  if (!v16)
  {
    (*(v0[16] + 8))(v0[18], v0[15]);
    goto LABEL_12;
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v17 = v0[17];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[16];
  v21 = type metadata accessor for Logger();
  v0[21] = sub_10000C4AC(v21, qword_100975E80);
  (*(v20 + 16))(v17, v18, v19);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[16];
  v26 = v0[17];
  v27 = v0[15];
  if (v24)
  {
    v28 = v0[12];
    v29 = v0[10];
    buf = swift_slowAlloc();
    v46 = v27;
    v48 = swift_slowAlloc();
    v49 = v48;
    *buf = 136315138;
    v47 = v23;
    SFAirDrop.NearbySharingInteraction.id.getter();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = v29;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v15(v28, v30);
    v34 = *(v25 + 8);
    v34(v26, v46);
    v35 = sub_10000C4E4(v31, v33, &v49);

    *(buf + 4) = v35;
    _os_log_impl(&_mh_execute_header, v22, v47, "SDAirDropNearFieldService relaunching AirDropUI after it crashed while nearby interaction %s was ongoing", buf, 0xCu);
    sub_10000C60C(v48);
  }

  else
  {

    v34 = *(v25 + 8);
    v34(v26, v27);
  }

  v0[22] = v34;
  v44 = swift_task_alloc();
  v0[23] = v44;
  *v44 = v0;
  v44[1] = sub_1002C6C30;

  return sub_10044643C();
}

uint64_t sub_1002C6C30()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_1002C6E10;
  }

  else
  {
    v4 = sub_1002C6D5C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C6D5C()
{
  (*(v0 + 176))(*(v0 + 144), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C6E10()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "SDAirDropNearFieldService: Failed to launch AirDropUI process: %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  (*(v0 + 176))(*(v0 + 144), *(v0 + 120));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002C6FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C7068, v7, 0);
}

uint64_t sub_1002C7068()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService: nearFieldController did invalidate with error:%@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  v7 = *(v0 + 24);

  v8 = [v7 currentPreferredPollingType];
  v9 = [v7 currentApplicationLabel];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0x800000010078A3E0;
    v11 = 0xD000000000000013;
  }

  sub_1002B9FB8(0);
  sub_10002887C(v8, v11, v13, 0, 0, 0xF000000000000000);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002C7604(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 104) = a4;
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C775C, v7, 0);
}

uint64_t sub_1002C775C()
{
  v39 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0x6F74616974696E69;
    }

    else
    {
      v7 = 0x7265766965636572;
    }

    if (v4)
    {
      v8 = 0xEE00656C6F722072;
    }

    else
    {
      v8 = 0xED0000656C6F7220;
    }

    v9 = sub_10000C4E4(v7, v8, &v38);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService: did detect device nearby with %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(v13 + v14, v10, &unk_100975F60, &unk_1007F91B0);
  v15 = *(v12 + 48);
  v16 = v15(v10, 1, v11);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  if (v16 == 1)
  {
    v37 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v15(v18, 1, v37) != 1)
    {
      sub_100005508(*(v0 + 88), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v19 = *(v0 + 48);
    v20 = *(v0 + 56);
    (*(v20 + 32))(*(v0 + 96), *(v0 + 88), v19);
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  v21 = *(v0 + 96);
  v22 = v15(v21, 1, *(v0 + 48));
  sub_100005508(v21, &unk_100975F60, &unk_1007F91B0);
  if (v22 == 1)
  {
    sub_1002BA3B4();
  }

  v23 = *(v0 + 72);
  v24 = *(v0 + 48);
  sub_10000FF90(v13 + v14, v23, &unk_100975F60, &unk_1007F91B0);
  v25 = v15(v23, 1, v24);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  if (v25 == 1)
  {
    v28 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v15(v27, 1, v28) != 1)
    {
      sub_100005508(*(v0 + 72), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    (*(v30 + 32))(*(v0 + 80), *(v0 + 72), v29);
    (*(v30 + 56))(v26, 0, 1, v29);
  }

  v31 = *(v0 + 80);
  v32 = *(v0 + 48);
  if (v15(v31, 1, v32) == 1)
  {
    sub_100005508(v31, &unk_100975F60, &unk_1007F91B0);
  }

  else
  {
    v34 = *(v0 + 56);
    v33 = *(v0 + 64);
    (*(v34 + 32))(v33, v31, v32);
    SFAirDrop.NearbySharingInteraction.isInitiatorRoleExpected.setter();
    (*(v34 + 8))(v33, v32);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1002C7E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  sub_10028088C(&unk_1009762E0, &qword_1007F9450);
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[35] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C8058, v8, 0);
}

uint64_t sub_1002C8058()
{
  v73 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 256);
    v7 = *(v0 + 128);
    v69 = v7;
    v8 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = [v7 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v5 + 8))(v4, v6);
    v13 = sub_10000C4E4(v10, v12, &v72);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = [v69 isInitiator];
    v15 = v14 == 0;
    if (v14)
    {
      v16 = 0x6F74616974696E69;
    }

    else
    {
      v16 = 0x7265766965636572;
    }

    if (v15)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = 0xE900000000000072;
    }

    v18 = sub_10000C4E4(v16, v17, &v72);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService: did begin transaction:%s as %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v0 + 240);
  v20 = *(v0 + 136);
  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(v20 + v21, v19, &unk_100975F60, &unk_1007F91B0);
  v22 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v19, 1, v22);
  v26 = *(v0 + 240);
  v27 = *(v0 + 248);
  v68 = v21;
  v70 = v20;
  if (v25 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v24(v26, 1, v22) != 1)
    {
      sub_100005508(*(v0 + 240), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    (*(v23 + 32))(v27, v26, v22);
    (*(v23 + 56))(v27, 0, 1, v22);
  }

  v28 = *(v0 + 248);
  v29 = v24(v28, 1, v22);
  sub_100005508(v28, &unk_100975F60, &unk_1007F91B0);
  if (v29 == 1)
  {
    sub_1002BA3B4();
  }

  v30 = *(v0 + 136);
  v31 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem;
  if (*(v30 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v32 = *(v0 + 224);
  *(v30 + v31) = 0;

  sub_10000FF90(v20 + v21, v32, &unk_100975F60, &unk_1007F91B0);
  v33 = v24(v32, 1, v22);
  v34 = *(v0 + 224);
  v35 = *(v0 + 232);
  if (v33 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v24(v34, 1, v22) != 1)
    {
      sub_100005508(*(v0 + 224), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    (*(v23 + 32))(*(v0 + 232), *(v0 + 224), v22);
    (*(v23 + 56))(v35, 0, 1, v22);
  }

  v36 = *(v0 + 232);
  if (v24(v36, 1, v22) == 1)
  {
    sub_100005508(v36, &unk_100975F60, &unk_1007F91B0);
LABEL_31:

    v51 = *(v0 + 8);

    return v51();
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 152);
  v39 = *(v0 + 160);
  SFAirDrop.NearbySharingInteraction.state.getter();
  (*(v23 + 8))(v36, v22);
  v40 = (*(v39 + 88))(v37, v38);
  v41 = enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:);
  (*(v39 + 8))(v37, v38);
  if (v40 != v41)
  {
    goto LABEL_31;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "SDAirDropNearFieldService: connecting…", v44, 2u);
  }

  v45 = *(v0 + 208);

  v47 = v68;
  v46 = v70;
  sub_10000FF90(v70 + v68, v45, &unk_100975F60, &unk_1007F91B0);
  v48 = v24(v45, 1, v22);
  v49 = *(v0 + 208);
  v50 = *(v0 + 216);
  if (v48 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
    v47 = v68;

    v46 = v70;

    if (v24(v49, 1, v22) != 1)
    {
      sub_100005508(*(v0 + 208), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    (*(v23 + 32))(*(v0 + 216), *(v0 + 208), v22);
    (*(v23 + 56))(v50, 0, 1, v22);
  }

  v53 = *(v0 + 216);
  if (!v24(v53, 1, v22))
  {
    (*(*(v0 + 160) + 104))(*(v0 + 168), enum case for SFAirDrop.NearbySharingInteraction.State.connecting(_:), *(v0 + 152));
    SFAirDrop.NearbySharingInteraction.state.setter();
    v53 = *(v0 + 216);
  }

  if (!v24(v53, 1, v22))
  {
    v54 = *(v0 + 144);
    static ContinuousClock.Instant.now.getter();
    v55 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    SFAirDrop.NearbySharingInteraction.connectionTime.setter();
    v53 = *(v0 + 216);
  }

  if (!v24(v53, 1, v22))
  {
    [*(v0 + 128) isInitiator];
    SFAirDrop.NearbySharingInteraction.isInitiator.setter();
  }

  v56 = *(v0 + 200);
  sub_10000FF90(v46 + v47, v56, &unk_100975F60, &unk_1007F91B0);
  v57 = v24(v56, 1, v22);
  sub_100005508(v56, &unk_100975F60, &unk_1007F91B0);
  v58 = *(v0 + 216);
  if (v57 == 1)
  {
    v60 = *(v0 + 184);
    v59 = *(v0 + 192);
    v61 = *(v0 + 136);
    sub_10000FF90(*(v0 + 216), v59, &unk_100975F60, &unk_1007F91B0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000FF90(v59, v60, &unk_100975F60, &unk_1007F91B0);
    v62 = v61;
    static Published.subscript.setter();
    sub_100005508(v59, &unk_100975F60, &unk_1007F91B0);
  }

  else
  {
    swift_beginAccess();
    sub_1002D7894(v58, v46 + v47);
    swift_endAccess();
  }

  v63 = *(v0 + 136);
  v64 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  sub_1002A9938(v63 + v64, v0 + 16);
  v65 = *(v0 + 40);
  v66 = *(v0 + 48);
  sub_10002CDC0((v0 + 16), v65);
  v71 = (*(v66 + 40) + **(v66 + 40));
  v67 = swift_task_alloc();
  *(v0 + 288) = v67;
  *v67 = v0;
  v67[1] = sub_1002C8C10;

  return v71(v65, v66);
}

uint64_t sub_1002C8C10()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_1002C8E64;
  }

  else
  {
    v4 = sub_1002C8D3C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C8D3C()
{
  sub_10000C60C(v0 + 2);
  sub_100005508(v0[27], &unk_100975F60, &unk_1007F91B0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002C8E64()
{
  v1 = v0[27];
  sub_10000C60C(v0 + 2);
  sub_100005508(v1, &unk_100975F60, &unk_1007F91B0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002C901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for SDNearFieldTap(0);
  v6[5] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6[6] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v6[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C9180, v8, 0);
}

uint64_t sub_1002C9180()
{
  v49 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975E80);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v11 = 136315394;
    v12 = [v10 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = v8;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v7 + 8))(v6, v13);
    v17 = sub_10000C4E4(v14, v16, &v48);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v46 = v9;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService: did receive tap event for transaction: %s : %@", v11, 0x16u);
    sub_100005508(v46, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v47);
  }

  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v19 = static NSUserDefaults.airdrop.getter();
  v20 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if (v20 & 1) == 0 || (v21 = objc_allocWithZone(NSUserDefaults), v22 = String._bridgeToObjectiveC()(), v23 = [v21 initWithSuiteName:v22], v22, v23) && (v24 = String._bridgeToObjectiveC()(), v25 = objc_msgSend(v23, "BOOLForKey:", v24), v24, v23, (v25))
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "SDAirDropNearFieldService: Boop To Action is disabled on setSwiftTapEventHandler", v28, 2u);
    }

    goto LABEL_11;
  }

  v31 = [*(v0 + 24) deviceModel];
  if (v31)
  {
    v32 = v31;
    v33 = [v32 hasPrefix:@"Watch"];

    if (v33)
    {
      if ([*(v0 + 24) isSameAccount])
      {
        v34 = *(v0 + 48);
        (*(*(v0 + 64) + 56))(v34, 1, 1, *(v0 + 56));
        sub_1002B4888(v34);
        sub_100005508(v34, &unk_100976120, &qword_1007F9260);
LABEL_11:

        v29 = *(v0 + 8);

        return v29();
      }
    }
  }

  v35 = *(v0 + 72);
  v36 = *(v0 + 40);
  v37 = *(v0 + 16);
  v38 = *(v0 + 24);
  v39 = [v37 isInitiator];
  v40 = v38;
  v41 = [v37 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004E75A8(v40, v39 ^ 1, v35, v36);
  v42 = [v37 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = swift_task_alloc();
  *(v0 + 88) = v43;
  *v43 = v0;
  v43[1] = sub_1002C9718;
  v44 = *(v0 + 72);
  v45 = *(v0 + 40);

  return sub_1002BCAE4(v45, v44);
}

uint64_t sub_1002C9718()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002C9884, v1, 0);
}

uint64_t sub_1002C9884()
{
  sub_1002D6414(*(v0 + 40), type metadata accessor for SDNearFieldTap);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C9AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C9C40, v8, 0);
}

uint64_t sub_1002C9C40()
{
  v21 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = [v7 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    v14 = sub_10000C4E4(v11, v13, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService: did interrupt transaction:%s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  (*(v16 + 104))(v15, enum case for SFAirDrop.NearbySharingInteraction.FailureType.pullAway(_:), v17);
  sub_1002BEF14(v15);
  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002CA07C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_10000FF90(a1, &v15 - v9, &unk_100975F60, &unk_1007F91B0);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = *(v5 + 32);
    v13(v7, v10, v4);
    sub_10028088C(&qword_100976238, &qword_1008075E0);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 1) = xmmword_1007F5670;
    result = (v13)(v12 + v14, v7, v4);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1002CA248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v4 + 128) = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CA2E8, v5, 0);
}

uint64_t sub_1002CA2E8()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  v0[17] = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  sub_10002CDC0(v0 + 2, v3);
  v7 = (*(v4 + 40) + **(v4 + 40));
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1002CA43C;

  return v7(v3, v4);
}

uint64_t sub_1002CA43C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1002D8B6C;
  }

  else
  {
    v4 = sub_1002D8B70;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002CA568(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v4 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1007F9488;
  *(v13 + 24) = v12;
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v8, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1002CA7B8(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for SFPlatform();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CAA70, v8, 0);
}

uint64_t sub_1002CAA70()
{
  v56 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[23];
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
    swift_beginAccess();
    sub_10000FF90(v2 + v6, v5, &unk_100975F60, &unk_1007F91B0);
    v7 = *(v4 + 48);
    if (v7(v5, 1, v3) == 1)
    {
      v8 = v0[25];
      v9 = v0[23];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v7(v9, 1, v8) != 1)
      {
        sub_100005508(v0[23], &unk_100975F60, &unk_1007F91B0);
      }
    }

    else
    {
      v10 = v0[25];
      v11 = v0[26];
      v12 = v0[24];
      (*(v11 + 32))(v12, v0[23], v10);
      (*(v11 + 56))(v12, 0, 1, v10);
    }

    v13 = v0[24];
    v14 = v0[25];
    if (v7(v13, 1, v14) == 1)
    {

      sub_100005508(v13, &unk_100975F60, &unk_1007F91B0);
    }

    else
    {
      v15 = v0[22];
      v16 = v0[19];
      v17 = v0[20];
      (*(v0[26] + 32))(v0[27], v13, v14);
      SFAirDrop.NearbySharingInteraction.id.getter();
      v18 = static UUID.== infix(_:_:)();
      v19 = *(v17 + 8);
      v19(v15, v16);
      if (v18)
      {
        v21 = v0[17];
        v20 = v0[18];
        v22 = v0[16];
        SFAirDrop.NearbySharingInteraction.state.getter();
        if ((*(v21 + 88))(v20, v22) == enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:))
        {
          (*(v0[17] + 8))(v0[18], v0[16]);
          if (qword_100973548 != -1)
          {
            swift_once();
          }

          v24 = v0[20];
          v23 = v0[21];
          v25 = v0[19];
          v26 = v0[9];
          v27 = type metadata accessor for Logger();
          sub_10000C4AC(v27, qword_100975E80);
          (*(v24 + 16))(v23, v26, v25);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          v30 = os_log_type_enabled(v28, v29);
          v31 = v0[21];
          v32 = v0[19];
          if (v30)
          {
            v51 = v0[15];
            v52 = v0[14];
            v53 = v0[13];
            v33 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v55 = v54;
            *v33 = 136315394;
            sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v50 = v29;
            v34 = dispatch thunk of CustomStringConvertible.description.getter();
            v36 = v35;
            v19(v31, v32);
            v37 = sub_10000C4E4(v34, v36, &v55);

            *(v33 + 4) = v37;
            *(v33 + 12) = 2048;
            static SFPlatform.watchOS.getter();
            LOBYTE(v37) = static SFPlatform.isPlatform(_:)();
            (*(v52 + 8))(v51, v53);
            v38 = 1.5;
            if (v37)
            {
              v38 = 2.5;
            }

            *(v33 + 14) = v38;
            _os_log_impl(&_mh_execute_header, v28, v50, "SDAirDropNearFieldService: did fire timer to cancel nearby sharing interaction:%s after ~%fs if stuck in presence detected state.", v33, 0x16u);
            sub_10000C60C(v54);
          }

          else
          {

            v19(v31, v32);
          }

          v43 = v0[26];
          v42 = v0[27];
          v44 = v0[25];
          v46 = v0[11];
          v45 = v0[12];
          v47 = v0[10];
          (*(v46 + 104))(v45, enum case for SFAirDrop.NearbySharingInteraction.FailureType.pullAway(_:), v47);
          sub_1002BEF14(v45);

          (*(v46 + 8))(v45, v47);
          (*(v43 + 8))(v42, v44);
        }

        else
        {
          v40 = v0[17];
          v39 = v0[18];
          v41 = v0[16];
          (*(v0[26] + 8))(v0[27], v0[25]);

          (*(v40 + 8))(v39, v41);
        }
      }

      else
      {
        (*(v0[26] + 8))(v0[27], v0[25]);
      }
    }
  }

  v48 = v0[1];

  return v48();
}

uint64_t sub_1002CB084(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = __chkstk_darwin(v4);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v37 - v7;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v42);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v12;
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100975E80);
  v40 = *(v10 + 16);
  v40(v15, a1, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v13;
    v20 = v19;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v20 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = a1;
    v22 = v2;
    v24 = v23;
    (*(v10 + 8))(v15, v9);
    v25 = sub_10000C4E4(v21, v24, aBlock);
    v2 = v22;
    a1 = v39;

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "SDAirDropNearFieldService: start assertion timeout for nearby sharing interaction:%s", v20, 0xCu);
    sub_10000C60C(v37);

    v13 = v38;
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  v40(v13, a1, v9);
  v26 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  (*(v10 + 32))(v27 + v26, v13, v9);
  aBlock[4] = sub_1002D79D0;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008D9FA0;
  _Block_copy(aBlock);
  v48 = _swiftEmptyArrayStorage;
  sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v28 = v2;
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v29 = DispatchWorkItem.init(flags:block:)();

  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = v44;
  static DispatchTime.now()();
  v32 = v45;
  + infix(_:_:)();
  v33 = *(v46 + 8);
  v34 = v31;
  v35 = v47;
  v33(v34, v47);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v33(v32, v35);
  *&v28[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem] = v29;
}

uint64_t sub_1002CB674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v4 + 128) = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CB714, v5, 0);
}

uint64_t sub_1002CB714()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  v0[17] = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  sub_10002CDC0(v0 + 2, v3);
  v7 = (*(v4 + 40) + **(v4 + 40));
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1002CB868;

  return v7(v3, v4);
}

uint64_t sub_1002CB868()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1002CBA64;
  }

  else
  {
    v4 = sub_1002CB994;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002CB994()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_10000C60C(v0 + 2);
  sub_1002A9938(v2 + v1, (v0 + 7));
  v3 = v0[10];
  v4 = v0[11];
  sub_10002CDC0(v0 + 7, v3);
  (*(v4 + 64))(0xD000000000000023, 0x800000010078A5B0, v3, v4);
  sub_10000C60C(v0 + 7);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CBA64()
{
  sub_10000C60C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CBAC8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v5 + 32))(v12 + v11, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1007F9470;
  *(v13 + 24) = v12;
  v14 = a1;
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v9, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1002CBCF8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CBEC8, v5, 0);
}

uint64_t sub_1002CBEC8()
{
  v41 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[12], &unk_100975F60, &unk_1007F91B0);
    goto LABEL_15;
  }

  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  SFAirDrop.NearbySharingInteraction.id.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v6 + 8);
  v8(v4, v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = v0[5];
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (*(v11 + 16) && (v12 = sub_10000EBD4(v0[6]), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    if (*(v14 + 16))
    {
LABEL_7:
      (*(v0[14] + 8))(v0[15], v0[13]);
      goto LABEL_15;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  v18 = v0[6];
  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100975E80);
  v39 = *(v16 + 16);
  v39(v15, v18, v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[10];
  v24 = v0[8];
  if (v22)
  {
    v25 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v25 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v8(v23, v24);
    v29 = sub_10000C4E4(v26, v28, &v40);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "SDAirDropNearFieldService: did fire timer to cancel nearby sharing interaction:%s after 5 seconds if no clients took an assertion for it.", v25, 0xCu);
    sub_10000C60C(v38);
  }

  else
  {

    v8(v23, v24);
  }

  v31 = v0[14];
  v30 = v0[15];
  v32 = v0[13];
  v33 = v0[8];
  v34 = v0[9];
  v35 = v0[7];
  v39(v35, v0[6], v33);
  (*(v34 + 56))(v35, 0, 1, v33);
  sub_1002B4888(v35);
  sub_100005508(v35, &unk_100976120, &qword_1007F9260);
  (*(v31 + 8))(v30, v32);
LABEL_15:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1002CC324()
{
  v0 = SFAirDrop.NearbySharingAssertion.explanation.getter();
  v2 = v1;
  if (v0 == SFAirDrop.NearbySharingAssertionRequest.explanation.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1002CC3C0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

void sub_1002CC5FC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000276B4(0, &qword_100975088, CNContact_ptr);
    sub_1002D7FB0();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        sub_1000276B4(0, &qword_100975088, CNContact_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_100027D64(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_100027D64(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002CC8D4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a1;
  v29 = a4;
  v30 = a5;
  v26 = a7;
  v25 = a3(0);
  v31 = *(v25 - 8);
  v9 = __chkstk_darwin(v25);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      sub_1002D7388(*(a2 + 48) + *(v31 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v13, v29);
      sub_10000CA10(v13, v11, v30);
      v21 = v28(v11);
      if (v7)
      {
        sub_1002D6414(v11, v27);
      }

      if (v21)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_1002D6414(v11, v27);
      v19 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v24 = v26;
    sub_10000CA10(v11, v26, v30);
    v23 = v24;
    v22 = 0;
    return (*(v31 + 56))(v23, v22, 1, v25);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v22 = 1;
        v23 = v26;
        return (*(v31 + 56))(v23, v22, 1, v25);
      }

      v16 = *(a2 + 56 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1002CCB1C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t (*sub_1002CCC30@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void *, uint64_t)@<X3>, uint64_t a4@<X8>))(void *)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = result;
    v9 = a2 + 32;
    while (1)
    {
      sub_1002A9938(v9, v11);
      v10 = v8(v11);
      if (v4)
      {
        return sub_10000C60C(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = sub_10000C60C(v11);
      v9 += 40;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1002CCCF8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDrop.NearbySharingAssertion.id.getter();
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1002CCDE4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a3 + 32;
  while (1)
  {
    v11 = *(v6 + 16 * v5);
    v10 = *(&v11 + 1);
    swift_unknownObjectRetain();
    v7 = v10;
    v8 = v12(&v11);

    swift_unknownObjectRelease();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1002CCEC0(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1002CCF70(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1002CD060(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D6474(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1002CD0EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D6488(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002CD1F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D650C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1000121F8(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002CD290@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D6534(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for SDAirDropService.TransferPresenterClient(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10000CA10(v11, a2, type metadata accessor for SDAirDropService.TransferPresenterClient);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1002CD3C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1002D6548(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1002CD454()
{
  _StringGuts.grow(_:)(56);
  v0._object = 0x800000010078A620;
  v0._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v0);
  type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v1._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6E657473696C202CLL;
  v2._object = 0xEF3A444955557265;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

id sub_1002CD610(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = (a3)(0, a2);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  v12 = a1;
  a4();

  v13 = a5();
  (*(v9 + 8))(v11, v8);

  return v13;
}

id HeadphoneProxFeatureClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CD87C(uint64_t a1)
{
  result = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
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

void sub_1002CD934(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002CD9EC(319, &qword_1009760E0, &unk_1009760E8, qword_1007F9200, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002CD9EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100280938(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1002CDA50()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1002CDC0C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002CDC0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CDC78(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1002CDCF4(uint64_t a1, void **a2)
{
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_10000FF90(a1, &v13 - v8, &unk_100975F60, &unk_1007F91B0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000FF90(v9, v7, &unk_100975F60, &unk_1007F91B0);
  v11 = v10;
  static Published.subscript.setter();
  return sub_100005508(v9, &unk_100975F60, &unk_1007F91B0);
}

void sub_1002CDE40()
{
  type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1002BCA54(v1, v2);
}

uint64_t sub_1002CDEAC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100289000;

  return sub_1002BC728(v0);
}

uint64_t sub_1002CDF3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1002BC854(a1, v4);
}

void *sub_1002CDFF4()
{
  v1 = v0;
  sub_10028088C(&unk_100975640, &unk_1007F64E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000C5B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000106E0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1002CE198()
{
  v1 = v0;
  sub_10028088C(&unk_1009744B0, &unk_1007F9630);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100010684(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000C5B0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000106E0(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002CE38C()
{
  v1 = v0;
  sub_10028088C(&qword_100976188, &unk_10080AFA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_1002D63B0(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1002D6398(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_1002CE548()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976190, &qword_1007F9310);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1002CE818()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009746D0, &qword_1007F65B0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1002D7388(*(v4 + 56) + v26, v30, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10000CA10(v25, *(v27 + 56) + v26, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1002CEAFC()
{
  v1 = v0;
  sub_10028088C(&qword_100974970, &unk_1007F9750);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002CEC98()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009763E8, &qword_1007F95D8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1002D7388(*(v4 + 56) + v26, v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10000CA10(v25, *(v27 + 56) + v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1002CEEF0()
{
  v1 = v0;
  sub_10028088C(&qword_1009762D0, &unk_1007F9440);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1002CF068()
{
  v1 = v0;
  v41 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - v2;
  v39 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976478, &qword_1007F9748);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1002CF3C4()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009762B0, &qword_1007F9420);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1002D7388(*(v5 + 56) + v26, v35, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_10000CA10(v25, *(v27 + 56) + v26, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1002CF6F0()
{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976388, &qword_1007F9578);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_1002A9938(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_1000121F8(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1002CF98C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v31 = v5;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v22 *= 16;
        v27 = v36;
        v28 = *(v36 + 48);
        v29 = *(v23 + 32);
        v38 = *(*(v7 + 56) + v22);
        v29(v28 + v24, v25, v26);
        *(*(v27 + 56) + v22) = v38;
        result = swift_unknownObjectRetain();
        v17 = v39;
      }

      while (v39);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v31;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v39 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

char *sub_1002CFC84(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v48 = a1(0);
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - v9;
  v46 = a2(0);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - v10;
  sub_10028088C(a3, a4);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v8;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v8 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v13;
  }

  return result;
}

void sub_1002D001C()
{
  sub_10028088C(&qword_100976398, &qword_1007F9588);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v1;
  if (*(v1 + 16))
  {
    v2 = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || v2 >= v1 + 64 + 8 * v4)
    {
      memmove(v2, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v31 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v15 *= 48;
        v20 = (*(v31 + 56) + v15);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v27 = (*(v30 + 48) + v16);
        *v27 = v19;
        v27[1] = v18;
        v28 = (*(v30 + 56) + v15);
        *v28 = v21;
        v28[1] = v22;
        v28[2] = v23;
        v28[3] = v24;
        v28[4] = v25;
        v28[5] = v26;

        sub_1002D80D0(v21, v22, v23, v24, v25, v26);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }
}

void *sub_1002D01E8()
{
  v1 = v0;
  sub_10028088C(&qword_1009745E0, &qword_1007F6540);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002D0350()
{
  v1 = v0;
  v2 = type metadata accessor for RegistrationState(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976310, &unk_10080AFF0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1002D7388(*(v4 + 56) + v26, v30, type metadata accessor for RegistrationState);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10000CA10(v25, *(v27 + 56) + v26, type metadata accessor for RegistrationState);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1002D05A8()
{
  v1 = v0;
  sub_10028088C(&qword_1009763B0, &qword_1007F95A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1002D0718()
{
  v1 = v0;
  v2 = type metadata accessor for SDAuthenticationSessionMetadata(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976300, &unk_10080AFE0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1002D7388(*(v5 + 56) + v26, v35, type metadata accessor for SDAuthenticationSessionMetadata);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_10000CA10(v25, *(v27 + 56) + v26, type metadata accessor for SDAuthenticationSessionMetadata);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1002D0A80(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v40 = a1(0);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v34 - v7;
  sub_10028088C(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v6;
    v35 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v35, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v41 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v38 = v8;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v42;
        v25 = *(v42 + 72) * v23;
        v26 = v39;
        v27 = v40;
        (*(v42 + 16))(v39, *(v8 + 48) + v25, v40);
        v28 = 16 * v23;
        v29 = (*(v8 + 56) + 16 * v23);
        v30 = *v29;
        v31 = v29[1];
        v32 = v41;
        (*(v24 + 32))(*(v41 + 48) + v25, v26, v27);
        v33 = (*(v32 + 56) + v28);
        *v33 = v30;
        v33[1] = v31;
        v8 = v38;

        v18 = v43;
      }

      while (v43);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v34;
        v10 = v41;
        goto LABEL_21;
      }

      v22 = *(v35 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

char *sub_1002D0D10()
{
  v1 = v0;
  v31 = type metadata accessor for URL();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&unk_100976450, &unk_1007F9720);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1002D0FD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1002D1130()
{
  v1 = v0;
  v35 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - v2;
  sub_10028088C(&qword_1009763C8, &qword_1007F95B8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1002D13CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D153C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D16BC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - v7;
  sub_10028088C(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_1002D196C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D1ACC()
{
  v1 = v0;
  sub_10028088C(&qword_100976440, &qword_1007F9710);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100294008(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002D1C3C()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&unk_100976360, &unk_10080B040);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1002D1ED0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        LOBYTE(v20) = *(*(v4 + 56) + v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D2028()
{
  v1 = v0;
  sub_10028088C(&qword_100976318, &unk_1007F94F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002D2190()
{
  v1 = v0;
  sub_10028088C(&qword_1009762F8, &unk_1007F94D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1002D2338(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_10028088C(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_1002D25B0()
{
  v1 = v0;
  sub_10028088C(&qword_100976338, &qword_1007F9510);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1002D270C()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009745C8, &qword_1007F6528);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_unknownObjectRetain();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

double sub_1002D298C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100012854(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CDFF4();
      v10 = v12;
    }

    sub_1000106E0((*(v10 + 56) + 32 * v8), a3);
    sub_1002D3DAC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1002D2A30@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100570754(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CE198();
      v9 = v11;
    }

    sub_100285E74(*(v9 + 48) + 40 * v7);
    sub_1000106E0((*(v9 + 56) + 32 * v7), a2);
    sub_1002D3F5C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1002D2AD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100012854(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CE38C();
      v10 = v12;
    }

    sub_1002D6398((*(v10 + 56) + 48 * v8), a3);
    sub_1002D4104(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1002D2B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100012854(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D16BC(&type metadata accessor for SFClientIdentity, &unk_1009761C0, &unk_10080AFB0);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for SFClientIdentity();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1002D56F0(v8, v10, &type metadata accessor for SFClientIdentity);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for SFClientIdentity();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1002D2D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100570848(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CFC84(&type metadata accessor for NWEndpoint, &type metadata accessor for SFAirDrop.TransferIdentifier, &unk_100976290, &unk_10080AFC0);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for NWEndpoint();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1002D4AF8(v7, v9, &type metadata accessor for NWEndpoint);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for NWEndpoint();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1002D2F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100570848(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CFC84(&type metadata accessor for SFAirDropReceive.Transfer, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_1009762A0, &qword_1007F65E0);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for SFAirDropReceive.Transfer();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1002D4AF8(v7, v9, &type metadata accessor for SFAirDropReceive.Transfer);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for SFAirDropReceive.Transfer();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1002D3100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100570848(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CF068();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_10028088C(&qword_100976470, &qword_1007F9740);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1002D47A8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_10028088C(&qword_100976470, &qword_1007F9740);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1002D32B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100570848(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CF3C4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
    v20 = *(v13 - 8);
    sub_10000CA10(v12 + *(v20 + 72) * v7, a2, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
    sub_1002D4AF8(v7, v9, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1002D3468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100570848(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CFC84(&type metadata accessor for SFAirDropSend.Transfer, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_100974718, &unk_1007F65F0);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for SFAirDropSend.Transfer();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1002D4AF8(v7, v9, &type metadata accessor for SFAirDropSend.Transfer);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for SFAirDropSend.Transfer();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1002D3654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100012854(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D16BC(&type metadata accessor for Date, &unk_1009763A0, &unk_1007F9590);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1002D56F0(v8, v10, &type metadata accessor for Date);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1002D3850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_100012854(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_10000CA10(v19 + *(v27 + 72) * v16, a7, a4);
    sub_1002D56F0(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1002D39D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100012854(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D1130();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1002D54EC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1002D3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100012854(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D16BC(&type metadata accessor for NWBrowser.Result, &qword_1009763D8, &unk_10080B080);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for NWBrowser.Result();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1002D56F0(v8, v10, &type metadata accessor for NWBrowser.Result);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for NWBrowser.Result();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1002D3D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100012854(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002D196C(&unk_100976340, qword_1007F9518);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1002D533C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1002D3DAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D3F5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100010684(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100285E74(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D4104(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D42C0(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100005358(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1002D45F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D47A8(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_100005358(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_10028088C(&qword_100976470, &qword_1007F9740) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D4AF8(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_100005358(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D4ED8(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_100005358(v41, v42, v43);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 16 * a1);
            v33 = (v31 + 16 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D518C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D533C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D54EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_10028088C(&qword_1009763C0, &qword_1007F95B0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D56F0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D58E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_100294008(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_100026AC0(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D5A9C(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100005358(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

Swift::Int sub_1002D5DBC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D5F50(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_100005358(v41, v42, v43);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1002D6204(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1002D6398(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1002D63B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1002D6414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D6548(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1002D65C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1002D66B4;

  return v5(v2 + 32);
}

uint64_t sub_1002D66B4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

char *sub_1002D67C8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a3;
  v45 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SFAirDropClient.Identifier();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_100976210, &qword_1007F9368);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v42 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v10 = __chkstk_darwin(v42);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_defaultPollingType] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController] = 0;
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  v16 = type metadata accessor for SDNearFieldTap(0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
  v18 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService__nearbySharingInteraction;
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v21 = *(*(v20 - 8) + 56);
  v21(v14, 1, 1, v20);
  sub_10000FF90(v14, v12, &unk_100975F60, &unk_1007F91B0);
  Published.init(initialValue:)();
  sub_100005508(v14, &unk_100975F60, &unk_1007F91B0);
  (*(v43 + 32))(&v4[v19], v9, v44);
  v21(&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction], 1, 1, v20);
  v22 = v45;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem] = 0;
  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 56))(&v4[v23], 1, 1, v24);
  v26 = v46;
  v25 = v47;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue] = v46;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus] = v25;
  sub_1002A9938(v22, &v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager]);
  v27 = objc_opt_self();
  v28 = v26;
  v29 = v25;
  v30 = [v27 defaultCenter];
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_notificationCenter] = v30;
  type metadata accessor for SFAirDropClient();
  (*(v49 + 104))(v48, enum case for SFAirDropClient.Identifier.boop(_:), v50);
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropClient] = SFAirDropClient.__allocating_init(identifier:)();
  if ([objc_opt_self() isAvailable])
  {
    sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
    v31 = static NSUserDefaults.airdrop.getter();
    v32 = SFAirDropUserDefaults.nearFieldControllerEnabled.getter();
  }

  else
  {
    v32 = 0;
  }

  v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldControllerIsAvailable] = v32 & 1;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for SDAirDropAWDLSingleBandManager();
  v33 = swift_allocObject();
  *(v33 + 16) = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_singleBandManager] = v33;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryLabelForConnectionID] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryClientForLabel] = &_swiftEmptyDictionarySingleton;
  v52.receiver = v4;
  v52.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v52, "init");
  v35 = v34 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  v36 = *(v35 + 24);
  v37 = *(v35 + 32);
  sub_10002F5B4(v35, v36);
  v38 = *(v37 + 16);
  v39 = v34;
  v38(v34, &off_1008D9BA0, v36, v37);
  swift_endAccess();
  sub_1002B4220();

  sub_10000C60C(v22);
  return v39;
}

BOOL sub_1002D6D98(uint64_t a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      return 1;
    }
  }

  v7 = type metadata accessor for SDNearFieldTap(0);
  if (*(a1 + v7[12]))
  {
    return 0;
  }

  v8 = *(a1 + v7[17]);
  if (v8 == 2)
  {
    return 0;
  }

  return (v8 & 1) == 0 || *(a1 + v7[6] + 8) == 0;
}

void sub_1002D6EA4()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldControllerIsAvailable) == 1)
  {
    v1 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
    if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController))
    {
      return;
    }

    v6 = v0;
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100975E80);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropNearFieldService nearFieldController is available", v10, 2u);
    }

    v11 = [objc_allocWithZone(SDRPNearFieldController) initWithDispatchQueue:*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue) delegate:v6];
    v5 = *(v6 + v1);
    *(v6 + v1) = v11;
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100975E80);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "SDAirDropNearFieldService nearFieldController is NOT available", v4, 2u);
    }

    v5 = oslog;
  }
}

void sub_1002D70C8()
{
  type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1002B9F08(v1, v2);
}

uint64_t sub_1002D7130(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009761D0, &qword_1007F9338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1002D71A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 stop];
  if (v2 == 1)
  {

    return [v1 invalidate];
  }

  return result;
}

uint64_t sub_1002D7204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002C7604(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D72C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002C7E24(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D7388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1002D73F0()
{
  v1 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SDNearFieldTap(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v0 + v6);
  v14 = v0 + ((*(v10 + 64) + v11 + v12) & ~v11);

  sub_1002BF3B8(v0 + v2, v0 + v5, v13, v0 + v8, v0 + v12, v14);
}