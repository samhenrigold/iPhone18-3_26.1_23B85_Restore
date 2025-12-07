uint64_t sub_1003C3524(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_1003AC85C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1003C3600(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003A50E0(a1, a2, v6);
}

uint64_t sub_1003C36B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C3718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003C3760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_10052F94C(a1, v4);
}

uint64_t sub_1003C3808(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1003C01C0(a1, v5, v4);
}

uint64_t sub_1003C38B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003C2A08(a1, v4);
}

uint64_t sub_1003C3970()
{
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_1003C3A08(char *a1)
{
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_1003C3AB0(uint64_t a1)
{
  v4 = *(sub_10028088C(&unk_1009755E0, &qword_1007F8970) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1003C1448(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003C3C48(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10028088C(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_1003C3D08(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B268, &unk_100808E10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1003C102C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003C3E04()
{
  v1 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10028088C(&qword_10097B2C0, &qword_1007FE678) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003AD2E0(v6, v0 + v2, v0 + v5, v7);
}

uint64_t sub_1003C3F0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1003C3F24(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10028088C(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_1003C3FD0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(sub_10028088C(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t sub_1003C4048(uint64_t a1)
{
  v4 = *(_s10AskRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003BEF64(a1, v6, v1 + v5);
}

uint64_t sub_1003C412C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_10052F94C(a1, v4);
}

uint64_t sub_1003C41CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C426C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

double sub_1003C42B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1003C432C(uint64_t a1)
{
  result = type metadata accessor for SDAirDropDiscoveredEndpoint(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SFAirDropSend.Failure();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003C43C4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B3F0);
  v1 = sub_10000C4AC(v0, qword_10097B3F0);
  if (qword_1009736E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003C448C(uint64_t a1)
{
  v2[123] = v1;
  v2[122] = a1;
  v3 = type metadata accessor for NWEndpoint();
  v2[124] = v3;
  v2[125] = *(v3 - 8);
  v2[126] = swift_task_alloc();
  v2[127] = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2[128] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[129] = v4;
  v2[130] = *(v4 - 8);
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[133] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C4624, v5, 0);
}

uint64_t sub_1003C4624(uint64_t a1)
{
  Date.init()();
  v2 = swift_task_alloc();
  *(v1 + 1072) = v2;
  *v2 = v1;
  v2[1] = sub_1003C46C4;

  return sub_1003C657C(v1 + 16);
}

uint64_t sub_1003C46C4()
{
  v2 = *v1;
  v3 = *v1;
  v3[135] = v0;
  v23 = *(v3 + 4);
  v24 = *(v3 + 2);
  v20 = *(v3 + 3);
  v21 = *(v3 + 1);
  v22 = *(v3 + 6);
  v19 = *(v3 + 5);
  v18 = v2[14];
  v4 = v2[15];
  v5 = v2[16];
  v6 = *(v3 + 136);
  v7 = v2[18];
  v8 = v2[19];
  v9 = *(v3 + 160);
  v10 = v2[21];
  v3[136] = v10;

  v11 = v3[133];
  if (v0)
  {
    v12 = sub_1003C64D0;
  }

  else
  {
    *(v3 + 21) = v21;
    *(v3 + 22) = v24;
    *(v3 + 23) = v20;
    *(v3 + 24) = v23;
    *(v3 + 25) = v19;
    *(v3 + 26) = v22;
    v3[54] = v18;
    v3[55] = v4;
    v3[56] = v5;
    *(v3 + 456) = v6;
    v3[58] = v7;
    v3[59] = v8;
    *(v3 + 480) = v9;
    v3[61] = v10;
    *(v3 + 800) = v9;
    v13 = *(v3 + 28);
    *(v3 + 47) = *(v3 + 27);
    *(v3 + 48) = v13;
    *(v3 + 49) = *(v3 + 29);
    v14 = *(v3 + 24);
    *(v3 + 43) = *(v3 + 23);
    *(v3 + 44) = v14;
    v15 = *(v3 + 26);
    *(v3 + 45) = *(v3 + 25);
    *(v3 + 46) = v15;
    v16 = *(v3 + 22);
    *(v3 + 41) = *(v3 + 21);
    *(v3 + 42) = v16;
    v12 = sub_1003C490C;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_1003C490C(uint64_t a1)
{
  v59 = v1;
  v2 = *(v1 + 1088);
  v3 = *(v1 + 448);
  *(v1 + 272) = *(v1 + 432);
  *(v1 + 288) = v3;
  *(v1 + 304) = *(v1 + 464);
  *(v1 + 320) = *(v1 + 480);
  v4 = *(v1 + 384);
  *(v1 + 208) = *(v1 + 368);
  *(v1 + 224) = v4;
  v5 = *(v1 + 416);
  *(v1 + 240) = *(v1 + 400);
  *(v1 + 256) = v5;
  v6 = *(v1 + 352);
  *(v1 + 176) = *(v1 + 336);
  *(v1 + 192) = v6;
  *(v1 + 328) = v2;
  v7 = sub_10062E930(a1);
  *(v1 + 1096) = v7;
  if (v7)
  {
    v8 = v7;
    v57 = v7;
    v56 = sub_1006373F8(v8);
    v10 = v9;
    *(v1 + 1104) = v9;
    sub_10000FF90(v1 + 176, v1 + 496, &unk_10097B4A0, &qword_1007FE898);

    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v11 = *(v1 + 1056);
    v12 = *(v1 + 1048);
    v13 = *(v1 + 1040);
    v14 = *(v1 + 1032);
    v15 = *(v1 + 984);
    v16 = type metadata accessor for Logger();
    *(v1 + 1112) = sub_10000C4AC(v16, qword_10097B3F0);
    (*(v13 + 16))(v12, v11, v14);
    sub_1003CB81C(v1 + 336, v1 + 808);
    v17 = v15;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    sub_1003CB878(v1 + 336);

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 1048);
    v22 = *(v1 + 1040);
    v23 = *(v1 + 1032);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v24 = 134218754;
      Date.timeIntervalSinceNow.getter();
      v26 = v25;
      (*(v22 + 8))(v21, v23);
      *(v24 + 4) = -v26;
      *(v24 + 12) = 2080;
      v27 = sub_1004226C0();
      v29 = sub_10000C4E4(v27, v28, v58);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2080;
      v30 = NWEndpoint.debugDescription.getter();
      v32 = sub_10000C4E4(v30, v31, v58);

      *(v24 + 24) = v32;
      *(v24 + 32) = 2080;
      *(v24 + 34) = sub_10000C4E4(v56, v10, v58);
      _os_log_impl(&_mh_execute_header, v18, v19, "Got DISCOVER response - %fs - %s for endpoint %s - cert digest %s", v24, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v44 = *(v1 + 984);
    v45 = *(v44 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceStatus);
    *(v1 + 1120) = v45;
    v46 = type metadata accessor for SDAirDropBonjourContactFetcher();
    v47 = swift_allocObject();
    v48 = v57;
    swift_defaultActor_initialize();
    *(v47 + 112) = v45;
    *(v47 + 120) = v48;
    *(v1 + 960) = v47;
    *(v1 + 968) = v46;
    v49 = v45;
    *(v1 + 1128) = objc_msgSendSuper2((v1 + 960), "init");
    v50 = *(v1 + 368);
    v51 = *(v1 + 376);
    *(v1 + 1136) = v50;
    *(v1 + 1144) = v51;
    v52 = v44 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName;
    v53 = *(v44 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName);
    *(v1 + 1152) = v53;
    v54 = *(v52 + 8);
    *(v1 + 1160) = v54;
    v55 = swift_task_alloc();
    *(v1 + 1168) = v55;
    *v55 = v1;
    v55[1] = sub_1003C4F20;

    return sub_1005E9764(v50, v51, v53, v54);
  }

  else
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_10097B3F0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Missing SecTrust dropping", v36, 2u);
    }

    v37 = *(v1 + 1056);
    v38 = *(v1 + 1040);
    v39 = *(v1 + 1032);

    v40 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, enum case for SFAirDropSend.Failure.badRequest(_:), v40);
    swift_willThrow();
    sub_100005508(v1 + 176, &unk_10097B4A0, &qword_1007FE898);
    (*(v38 + 8))(v37, v39);

    v42 = *(v1 + 8);

    return v42();
  }
}

uint64_t sub_1003C4F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 1064);
  v5[147] = a1;
  v5[148] = a2;
  v5[149] = a3;
  v5[150] = a4;

  return _swift_task_switch(sub_1003C5044, v6, 0);
}

uint64_t sub_1003C5044()
{
  v113 = v0;
  v1 = *(v0 + 1144);
  v2 = v1 >> 60;
  if (v1 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *(v0 + 1136);
    sub_100294008(v4, *(v0 + 1144));
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10028BCC0(v4, v1);
  }

  v5 = *(v0 + 1096);
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100092290(isa, v5, v6);

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v111 = sub_10046A7CC();
  }

  else
  {
    v111 = 0;
    v8 = 0;
    v10 = 0;
  }

  *(v0 + 1216) = v10;
  *(v0 + 1208) = v8;
  v11 = *(v0 + 1184);
  v110 = v10;
  v109 = v8;
  if (v11)
  {
    v12 = *(v0 + 1120);

    v13 = [v12 meCard];
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 1184);
      v16 = *(v0 + 1176);
      v17 = [v13 identifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v16 == v18 && v15 == v20)
      {
        v21 = 1;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v22 = v111;
    }

    else
    {
      v21 = 0;
      v22 = v111;
    }
  }

  else
  {
    v21 = 0;
    v22 = v111;
  }

  v95 = v11;
  if (v2 <= 0xE)
  {
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1136);
    v26 = *(v0 + 1096);
    sub_100294008(v25, v24);

    sub_10046A92C(v25, v24, v26);
    v23 = v27;
    sub_10028BCC0(v25, v24);
  }

  else
  {

    v23 = 0;
  }

  v28 = *(v0 + 984);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 1160);
    v32 = *(v0 + 1152);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v112 = v34;
    *v33 = 136315906;
    *(v33 + 4) = sub_10000C4E4(v32, v31, &v112);
    *(v33 + 12) = 1024;
    *(v33 + 14) = v21 & 1;
    *(v33 + 18) = 1024;
    *(v33 + 20) = v22 & 1;
    *(v33 + 24) = 1024;
    *(v33 + 26) = v23 & 1;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s - isContactIDMe: %{BOOL}d isSameAccount: %{BOOL}d isPeerBlocked: %{BOOL}d", v33, 0x1Eu);
    sub_10000C60C(v34);
  }

  v35 = *(v0 + 984);
  (*(*(v0 + 1000) + 16))(*(v0 + 1008), v35 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_endpoint, *(v0 + 992));
  v107 = *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportFlags);
  if (v22 & 1 | ((v21 & 1) == 0))
  {
    v105 = *(v0 + 440);
    v106 = *(v0 + 432);

    v108 = v23;
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v36 = *(v0 + 392);
    v101 = *(v0 + 384);
    v98 = *(v0 + 352);
    v99 = *(v0 + 360);

    v102 = 0;
    v103 = 0;
    v104 = 0;
    v100 = 0;
    v97 = v36;
    goto LABEL_29;
  }

  v105 = 0;
  v106 = 0;
  v108 = v23;
  if (v22)
  {
    goto LABEL_27;
  }

LABEL_24:
  v98 = *(v0 + 352);
  if (v21)
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v100 = 0;
    v101 = 0;
    v97 = 0;
    v99 = *(v0 + 360);
  }

  else
  {
    v37 = *(v0 + 360);
    v38 = *(v0 + 1184);
    v104 = *(v0 + 1200);

    v103 = v38;

    v97 = 0;
    v101 = 0;
    v102 = *(v0 + 1192);
    v99 = v37;
    v100 = *(v0 + 1176);
  }

LABEL_29:
  v39 = *(v0 + 1160);
  v40 = *(v0 + 1024);
  v41 = *(v0 + 1016);
  v42 = *(v0 + 1008);
  v43 = *(v0 + 1000);
  v44 = *(v0 + 992);
  v96 = (*(v0 + 480) == 2) | *(v0 + 480);
  v46 = *(v0 + 336);
  v45 = *(v0 + 344);
  *v40 = *(v0 + 1152);
  *(v40 + 1) = v39;
  v47 = v41[5];
  v48 = *(v43 + 32);

  v48(&v40[v47], v42, v44);
  v49 = &v40[v41[6]];
  *v49 = v107;
  v49[8] = 0;
  v50 = &v40[v41[7]];
  *v50 = v106;
  *(v50 + 1) = v105;
  v51 = &v40[v41[8]];
  *v51 = v101;
  *(v51 + 1) = v97;
  v52 = &v40[v41[9]];
  *v52 = v98;
  *(v52 + 1) = v99;
  v53 = &v40[v41[10]];
  *v53 = v109;
  v53[1] = v110;
  v54 = &v40[v41[11]];
  *v54 = v100;
  *(v54 + 1) = v103;
  v55 = &v40[v41[12]];
  *v55 = v102;
  *(v55 + 1) = v104;
  v40[v41[13]] = v111 & 1;
  v56 = &v40[v41[14]];
  *v56 = v46;
  v56[1] = v45;
  v40[v41[15]] = v96 & 1;
  v40[v41[16]] = 1;
  if (v108)
  {

    sub_1002A9924(v46, v45);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Peer is blocked", v59, 2u);
    }

    v60 = *(v0 + 1128);
    v61 = *(v0 + 1096);
    v62 = *(v0 + 1056);
    v63 = *(v0 + 1040);
    v64 = *(v0 + 1032);
    v65 = *(v0 + 1024);

    v66 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v66 - 8) + 104))(v67, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v66);
    swift_willThrow();

    sub_1003CB878(v0 + 336);
    sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);

    sub_1003CCA70(v65, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    (*(v63 + 8))(v62, v64);

    v68 = *(v0 + 8);
LABEL_53:

    return v68();
  }

  if (v111)
  {

    sub_1002A9924(v46, v45);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Same account send detected - skipping IDENTITY-SHARE", v71, 2u);
    }

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 1128);
    v76 = *(v0 + 1096);
    if (v74)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Finished DISCOVER", v77, 2u);

      sub_1003CB878(v0 + 336);
      sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);
      v72 = v76;
    }

    else
    {

      sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);
      sub_1003CB878(v0 + 336);
    }

    v93 = *(v0 + 1024);
    v94 = *(v0 + 976);
    (*(*(v0 + 1040) + 8))(*(v0 + 1056), *(v0 + 1032));
    sub_1003CC878(v93, v94, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    swift_storeEnumTagMultiPayload();

    v68 = *(v0 + 8);
    goto LABEL_53;
  }

  if (v95 && *(v0 + 408) >> 60 != 15 && (v107 & 0x2000) != 0)
  {

    sub_1002A9924(v46, v45);

    v78 = swift_task_alloc();
    *(v0 + 1224) = v78;
    *v78 = v0;
    v78[1] = sub_1003C5C18;

    return sub_1003CB8CC();
  }

  else
  {

    sub_1002A9924(v46, v45);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "No receiver deviceIRKData or contactID or unsupported client - skipping IDENTITY-SHARE", v82, 2u);
    }

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Finished DISCOVER", v85, 2u);
    }

    v86 = *(v0 + 448);
    v87 = *(v0 + 456);
    v88 = *(v0 + 464);
    v89 = *(v0 + 472);
    v90 = swift_task_alloc();
    *(v0 + 1248) = v90;
    *v90 = v0;
    v90[1] = sub_1003C6240;
    v91 = *(v0 + 1184);
    v92 = *(v0 + 1176);
    v115 = v88;
    v116 = v89;

    return sub_1003C72DC(v0 + 656, v109, v110, v92, v91, 0, v86, v87);
  }
}

uint64_t sub_1003C5C18()
{
  v2 = *v1;
  *(v2 + 1232) = v0;

  if (v0)
  {
    v3 = *(v2 + 1064);

    swift_bridgeObjectRelease_n();

    return _swift_task_switch(sub_1003C6134, v3, 0);
  }

  else
  {

    v4 = *(v2 + 448);
    v5 = *(v2 + 456);
    v6 = swift_task_alloc();
    *(v2 + 1240) = v6;
    *v6 = v2;
    v6[1] = sub_1003C5E04;
    v7 = *(v2 + 1216);
    v8 = *(v2 + 1208);
    v9 = *(v2 + 1184);
    v10 = *(v2 + 1176);

    return sub_1003C72DC(v2 + 656, v8, v7, v10, v9, 0, v4, v5);
  }
}

uint64_t sub_1003C5E04()
{
  v1 = *(*v0 + 1064);

  return _swift_task_switch(sub_1003C5F70, v1, 0);
}

uint64_t sub_1003C5F70(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[141];
  v6 = v1[137];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished DISCOVER and IDENTITY-SHARE", v7, 2u);

    sub_1003CB878((v1 + 42));
    sub_100005508((v1 + 22), &unk_10097B4A0, &qword_1007FE898);
    v2 = v6;
  }

  else
  {

    sub_100005508((v1 + 22), &unk_10097B4A0, &qword_1007FE898);
    sub_1003CB878((v1 + 42));
  }

  v8 = v1[128];
  v9 = v1[122];
  (*(v1[130] + 8))(v1[132], v1[129]);
  sub_1003CC878(v8, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  swift_storeEnumTagMultiPayload();

  v10 = v1[1];

  return v10();
}

uint64_t sub_1003C6134()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);

  sub_1003CB878(v0 + 336);
  sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);

  sub_1003CCA70(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003C6240()
{
  v1 = *(*v0 + 1064);

  return _swift_task_switch(sub_1003C63AC, v1, 0);
}

uint64_t sub_1003C63AC()
{
  v1 = *(v0 + 1096);

  sub_1003CB878(v0 + 336);
  sub_100005508(v0 + 176, &unk_10097B4A0, &qword_1007FE898);

  v2 = *(v0 + 1024);
  v3 = *(v0 + 976);
  (*(*(v0 + 1040) + 8))(*(v0 + 1056), *(v0 + 1032));
  sub_1003CC878(v2, v3, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003C64D0()
{
  (*(v0[130] + 8))(v0[132], v0[129]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003C657C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropMessage(0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C66C4, v5, 0);
}

uint64_t sub_1003C66C4()
{
  v14 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = NWEndpoint.debugDescription.getter();
    v10 = sub_10000C4E4(v8, v9, &v13);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000C4E4(*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_tlsCertDigestDescription), *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_tlsCertDigestDescription + 8), &v13);
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending DISCOVER request %s - cert digest %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_1003C68C8;

  return sub_1003C7D78();
}

uint64_t sub_1003C68C8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1003C69E0, v2, 0);
}

uint64_t sub_1003C69E0()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v19 = v0[9];
  v4 = v0[7];
  v5 = v0[6];
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection] = v1;

  v6 = sub_10046AB74();
  v0[16] = v6;
  v0[17] = v7;
  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (sub_10002A73C())
  {
    v10 = 62459;
  }

  else
  {
    v10 = 46075;
  }

  sub_100294008(v8, v9);
  sub_10028BCC0(0, 0xF000000000000000);
  sub_1002A9924(v8, v9);
  sub_10028BCC0(v8, v9);
  *v3 = v8;
  *(v3 + 8) = v9;
  *(v3 + 16) = v10;
  *(v3 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1003CC814(v3, v2);
  v12 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v13 = swift_allocObject();
  v0[18] = v13;
  *(v13 + 16) = v1;
  sub_1003CC878(v2, v13 + v12, type metadata accessor for SDAirDropMessage);
  v14 = swift_allocObject();
  v0[19] = v14;
  *(v14 + 16) = v5;
  *(v14 + 24) = v1;
  swift_retain_n();
  v15 = v5;
  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_1003C6C68;
  v17 = v0[7];

  return concurrentRace<A>(priority:operation:against:)(v0 + 2, v17, &unk_1007FE940, v13, &unk_1007FE950, v14, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003C6C68()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 104);
  sub_100005508(*(v2 + 56), &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v4 = sub_1003C71E4;
  }

  else
  {
    v4 = sub_1003C6E00;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003C6E00()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1 >= 3)
  {
    if (v1 == 9)
    {
      v5 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      v7 = v16;
      v8 = &enum case for SFAirDropSend.Failure.unsupportedConnection(_:);
    }

    else if (v1 == 4)
    {
      v5 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      v7 = v6;
      v8 = &enum case for SFAirDropSend.Failure.receiverDeclined(_:);
    }

    else
    {
      v5 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      v7 = v17;
      v8 = &enum case for SFAirDropSend.Failure.badRequest(_:);
    }

    (*(*(v5 - 8) + 104))(v7, *v8, v5);
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 168);
    sub_100294008(*(v0 + 24), *(v0 + 32));
    sub_100675EE8();
    if (!v4)
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 120);
      v11 = *(v0 + 96);
      v12 = *(v0 + 40);
      if (v9 >> 60 == 15)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v0 + 128);
      }

      if (v9 >> 60 == 15)
      {
        v14 = 0xC000000000000000;
      }

      else
      {
        v14 = *(v0 + 136);
      }

      sub_100026AC0(v3, v2);
      NWConnection.forceCancel()();
      sub_100026AC0(v3, v2);
      sub_100026AC0(v13, v14);
      sub_1003CCA70(v11, type metadata accessor for SDAirDropMessage);

      *v12 = v23;
      *(v12 + 16) = v24;
      *(v12 + 32) = v25;
      *(v12 + 48) = v26;
      *(v12 + 64) = v27;
      *(v12 + 80) = v28;
      *(v12 + 96) = v29;
      *(v12 + 112) = v30;
      *(v12 + 120) = v31 & 1;
      *(v12 + 128) = v32;
      *(v12 + 136) = v33;
      *(v12 + 144) = v34;
      *(v12 + 152) = v10;
      v15 = *(v0 + 8);
      goto LABEL_24;
    }

    sub_100026AC0(v3, v2);
  }

  sub_100026AC0(v3, v2);
  v18 = *(v0 + 136);
  v19 = *(v0 + 96);
  if (v18 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v0 + 128);
  }

  if (v18 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  else
  {
    v21 = *(v0 + 136);
  }

  NWConnection.forceCancel()();
  swift_willThrow();
  sub_100026AC0(v20, v21);

  sub_1003CCA70(v19, type metadata accessor for SDAirDropMessage);

  v15 = *(v0 + 8);
LABEL_24:

  return v15();
}

uint64_t sub_1003C71E4()
{
  v1 = v0[17];
  v2 = v0[12];
  if (v1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0[16];
  }

  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[17];
  }

  NWConnection.forceCancel()();
  swift_willThrow();
  sub_100026AC0(v3, v4);

  sub_1003CCA70(v2, type metadata accessor for SDAirDropMessage);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003C72DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 232) = v14;
  *(v9 + 240) = v8;
  *(v9 + 216) = a7;
  *(v9 + 224) = v13;
  *(v9 + 273) = a8;
  *(v9 + 272) = a6;
  *(v9 + 200) = a4;
  *(v9 + 208) = a5;
  *(v9 + 184) = a2;
  *(v9 + 192) = a3;
  *(v9 + 176) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  *(v9 + 248) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C739C, v10, 0);
}

uint64_t sub_1003C739C()
{
  if (*(v0 + 272))
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097B3F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "SameAccount device detected, skipping identity update";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_16:

    v8 = *(v0 + 8);

    return v8();
  }

  if (!*(v0 + 192) || (v6 = *(v0 + 176), !*(v6 + 104)) || !*(v0 + 208) || (*(v0 + 144) = *(v6 + 64), *(v0 + 152) >> 60 == 15) || (*(v0 + 160) = *(v6 + 80), *(v0 + 168) >> 60 == 15))
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097B3F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Missing data for identity update, skipping";
    goto LABEL_15;
  }

  v23 = *(v0 + 232);
  if (*(v0 + 273))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v0 + 216);
  }

  v24 = v10;
  v11 = objc_allocWithZone(RPIdentity);
  sub_10000FF90(v0 + 144, v0 + 80, &qword_100974E10, &qword_1007FC4C0);
  sub_10000FF90(v0 + 160, v0 + 80, &qword_100974E10, &qword_1007FC4C0);
  v12 = [v11 init];
  *(v0 + 256) = v12;
  [v12 setType:6];
  v13 = String._bridgeToObjectiveC()();
  [v12 setAccountID:v13];

  v14 = String._bridgeToObjectiveC()();
  [v12 setContactID:v14];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v12 setDeviceIRKData:isa];

  v16 = Data._bridgeToObjectiveC()().super.isa;
  [v12 setEdPKData:v16];

  v17 = String._bridgeToObjectiveC()();
  [v12 setIdsDeviceID:v17];

  if (v23)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v12 setSendersKnownAlias:v18];

  if (v24)
  {
    [v12 setFeatureFlags:?];
  }

  v19 = *(v0 + 240);
  v20 = objc_opt_self();
  v21 = *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_rpClient);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1003C7880;
  v22 = swift_continuation_init();
  *(v0 + 136) = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100638A98;
  *(v0 + 104) = &unk_1008DE630;
  *(v0 + 112) = v22;
  [v20 addOrUpdateIdentityWithClient:v21 identity:v12 completion:?];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1003C7880()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 248);
  if (v2)
  {
    v4 = sub_1003C7B5C;
  }

  else
  {
    v4 = sub_1003C79A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003C79A0()
{
  v13 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097B3F0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  if (v4)
  {
    v7 = v0[25];
    v6 = v0[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000C4E4(v7, v6, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "Added/updated identity for contact %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  sub_100005508((v0 + 18), &qword_100974E10, &qword_1007FC4C0);

  sub_100005508((v0 + 20), &qword_100974E10, &qword_1007FC4C0);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1003C7B5C(uint64_t a1)
{
  swift_willThrow();
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 256);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Identity update failed %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);

    sub_100005508(v1 + 144, &qword_100974E10, &qword_1007FC4C0);

    sub_100005508(v1 + 160, &qword_100974E10, &qword_1007FC4C0);
  }

  else
  {
    sub_100005508(v1 + 144, &qword_100974E10, &qword_1007FC4C0);

    sub_100005508(v1 + 160, &qword_100974E10, &qword_1007FC4C0);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_1003C7D78()
{
  v1[14] = v0;
  v2 = type metadata accessor for NWInterface.InterfaceSubtype();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for NWEndpoint();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C7F28, v5, 0);
}

uint64_t sub_1003C7F28(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v5 = v1[20];
  v4 = v1[21];
  v6 = v1[18];
  v7 = v1[19];
  v25 = v1[17];
  v24 = v1[16];
  v8 = v1[14];
  v26 = v1[15];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v2, v4);
  v9 = String.utf8CString.getter();

  nw_content_context_create((v9 + 32));

  (*(v7 + 16))(v5, v8 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_endpoint, v6);
  v10 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  swift_unknownObjectRetain();

  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
  type metadata accessor for NWProtocolTLS.Options();
  swift_allocObject();
  NWProtocolTLS.Options.init()();
  v13 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_peer_authentication_required(v13, 0);
  swift_unknownObjectRelease();
  v14 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  v1[6] = sub_1003CCB30;
  v1[7] = v11;
  v1[2] = _NSConcreteStackBlock;
  v1[3] = 1107296256;
  v1[4] = sub_10062FDCC;
  v1[5] = &unk_1008DE2E8;
  v15 = _Block_copy(v1 + 2);

  sec_protocol_options_set_verify_block(v14, v15, v10);
  _Block_release(v15);
  swift_unknownObjectRelease();
  v16 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  v1[12] = sub_1003CCB38;
  v1[13] = v12;
  v1[8] = _NSConcreteStackBlock;
  v1[9] = 1107296256;
  v1[10] = sub_1003CB76C;
  v1[11] = &unk_1008DE310;
  v17 = _Block_copy(v1 + 8);

  sec_protocol_options_set_challenge_block(v16, v17, v10);
  _Block_release(v17);
  swift_unknownObjectRelease();
  dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_nw_protocol_joining_context();
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();

  NWParameters.__allocating_init(tls:tcp:)();
  (*(v24 + 104))(v25, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v26);
  NWParameters.requiredInterfaceSubtype.setter();
  NWParameters.allowLocalEndpointReuse.setter();
  NWParameters.includePeerToPeer.setter();
  NWParameters.preferNoProxies.setter();
  options = nw_http_messaging_create_options();
  nw_http1_set_idle_timeout();
  v19 = NWParameters.nw.getter();
  v20 = nw_parameters_copy_default_protocol_stack(v19);
  swift_unknownObjectRelease();
  nw_protocol_stack_prepend_application_protocol(v20, options);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_server_mode();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v21 = NWConnection.init(to:using:)();
  NWConnection.start(queue:)();
  swift_unknownObjectRelease();

  v22 = v1[1];

  return v22(v21);
}

uint64_t sub_1003C83EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = qword_1009735E0;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v17 = sub_1003CD52C(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v13;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;

  sub_1002B3398(0, 0, v11, &unk_1007FE920, v18);
}

uint64_t sub_1003C8610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v8[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C86B8, v9, 0);
}

uint64_t sub_1003C86B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1003C87B8;
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);

    return sub_1003C8908(v6, v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1003C87B8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);

  return _swift_task_switch(sub_1003C88E0, v2, 0);
}

uint64_t sub_1003C8908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[42] = v6;
  v5[43] = *(v6 - 8);
  v5[44] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[48] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C8A68, v8, 0);
}

uint64_t sub_1003C8A68()
{
  v1 = *(v0 + 328);
  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(*(v0 + 296));
  if ((*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportFlags + 1) & 0x10) != 0 && negotiated_tls_protocol_version != 772)
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097B3F0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Rejecting TLS downgrade", v6, 2u);
    }

    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 352);
    v44 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 344);
    v12 = *(v0 + 320);
    v13 = *(v0 + 312);

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    *(v0 + 248) = v14;
    *(v0 + 240) = sub_100375A3C;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100011678;
    *(v0 + 232) = &unk_1008DE608;
    v15 = _Block_copy((v0 + 208));

    static DispatchQoS.unspecified.getter();
    *(v0 + 288) = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
LABEL_8:
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v11 + 8))(v9, v10);
    (*(v8 + 8))(v7, v44);
LABEL_13:

    v31 = *(v0 + 8);

    return v31();
  }

  if (*(*(v0 + 328) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_privacyImprovements) != 1)
  {
    v23 = *(v0 + 368);
    v22 = *(v0 + 376);
    v24 = *(v0 + 352);
    v25 = *(v0 + 336);
    v26 = *(v0 + 344);
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    aBlock = *(v0 + 360);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;
    *(v0 + 56) = v29;
    *(v0 + 48) = sub_100375990;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100011678;
    *(v0 + 40) = &unk_1008DE4C8;
    v30 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 256) = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v26 + 8))(v24, v25);
    (*(v23 + 8))(v22, aBlock);
    goto LABEL_13;
  }

  v16 = sec_trust_copy_ref(*(v0 + 304));
  v18 = sub_10009159C(v16, v17);

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v33 = sub_100638124(v19, v21);
  v35 = v34;
  *(v0 + 392) = v33;
  *(v0 + 400) = v34;

  if (!v35)
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_10097B3F0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Missing altDSID on certificate", v40, 2u);
    }

    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 352);
    v44 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 344);
    v41 = *(v0 + 320);
    v42 = *(v0 + 312);

    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;
    *(v0 + 104) = v43;
    *(v0 + 96) = sub_100375A04;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_100011678;
    *(v0 + 88) = &unk_1008DE518;
    v15 = _Block_copy((v0 + 64));

    static DispatchQoS.unspecified.getter();
    *(v0 + 264) = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    goto LABEL_8;
  }

  v36 = swift_task_alloc();
  *(v0 + 408) = v36;
  *v36 = v0;
  v36[1] = sub_1003C91DC;

  return sub_100375C30(v33, v35);
}

uint64_t sub_1003C91DC(char a1)
{
  v2 = *(*v1 + 384);
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_1003C92F4, v2, 0);
}

uint64_t sub_1003C92F4()
{
  v40 = v0;
  if (*(v0 + 416) == 1)
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097B3F0);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[49];
      v4 = v0[50];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v39 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10000C4E4(v5, v4, &v39);
      _os_log_impl(&_mh_execute_header, v2, v3, "Matching altDSID found %s - accepting connection", v6, 0xCu);
      sub_10000C60C(v7);
    }

    v9 = v0[46];
    v8 = v0[47];
    v10 = v0[44];
    v37 = v0[45];
    v11 = v0[42];
    v12 = v0[43];
    v13 = v0[40];
    v14 = v0[39];
    *(v0[41] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_knownAltDSID) = *(v0 + 49);

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v0[25] = v15;
    v0[24] = sub_1003CDFB0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_100011678;
    v0[23] = &unk_1008DE5B8;
    v16 = _Block_copy(v0 + 20);

    static DispatchQoS.unspecified.getter();
    v0[35] = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v12 + 8))(v10, v11);
    (*(v9 + 8))(v8, v37);
  }

  else
  {
    if (qword_1009737A8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_10097B3F0);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[50];
    if (v20)
    {
      v22 = v0[49];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      v25 = sub_10000C4E4(v22, v21, &v39);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unknown altDSID on certificate %s", v23, 0xCu);
      sub_10000C60C(v24);
    }

    else
    {
    }

    v27 = v0[46];
    v26 = v0[47];
    v28 = v0[44];
    v29 = v0[42];
    v30 = v0[43];
    v31 = v0[40];
    v32 = v0[39];
    aBlock = v0[45];
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v0[19] = v33;
    v0[18] = sub_100375A3C;
    v0[14] = _NSConcreteStackBlock;
    v0[15] = 1107296256;
    v0[16] = sub_100011678;
    v0[17] = &unk_1008DE568;
    v34 = _Block_copy(v0 + 14);

    static DispatchQoS.unspecified.getter();
    v0[34] = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);
    (*(v30 + 8))(v28, v29);
    (*(v27 + 8))(v26, aBlock);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1003C9904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = qword_1009735E0;

  swift_unknownObjectRetain();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v15 = sub_1003CD52C(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v11;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;

  sub_1002B3398(0, 0, v9, &unk_1007FE8F8, v16);
}

uint64_t sub_1003C9B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a1;
  v7[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v7[9] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C9BB4, v8, 0);
}

uint64_t sub_1003C9BB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1003C9CB0;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_1003CCC28(v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1003C9CB0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);

  return _swift_task_switch(sub_1003C9DD8, v2, 0);
}

uint64_t sub_1003C9E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C9EA4, v4, 0);
}

uint64_t sub_1003C9EA4(uint64_t a1)
{
  v1[9] = sub_100674350();
  v1[10] = sub_1006749CC();
  v1[11] = v2;

  return _swift_task_switch(sub_1003C9F6C, 0, 0);
}

uint64_t sub_1003C9F6C()
{
  v6 = *(v0 + 80);
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  *(v3 + 40) = v1;
  *(v3 + 48) = 1;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1003CA088;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CDFDC, v3, &type metadata for () + 8);
}

uint64_t sub_1003CA088()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1003CA3A4;
  }

  else
  {

    v2 = sub_1003CA1A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003CA1A4()
{
  sub_100026AC0(v0[10], v0[11]);
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1003CA290;
  v2 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x800000010078E780, sub_1003CDFE0, v2, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003CA290()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1003CA474;
  }

  else
  {
    v2 = sub_1003CA41C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003CA3A4()
{
  sub_100026AC0(v0[10], v0[11]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003CA41C()
{
  v1 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 136) = *(v0 + 24);
  return _swift_task_switch(sub_1003CA448, v1, 0);
}

uint64_t sub_1003CA448()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 136);
  *v1 = *(v0 + 152);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1003CA48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CA588, v5, 0);
}

uint64_t sub_1003CA588(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1003CA654;

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003CA654()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1003CA99C;
  }

  else
  {
    v7 = sub_1003CA7DC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003CA7DC()
{
  v13 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName), *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName + 8), &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "DISCOVER request timeout for serviceName %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  NWConnection.forceCancel()();
  sub_1003CCAD0();
  swift_allocError();
  *v9 = 504;
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003CA99C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CAA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CAAA4, v4, 0);
}

uint64_t sub_1003CAAA4(uint64_t a1)
{
  v1[9] = sub_100674350();
  v1[10] = sub_1006749CC();
  v1[11] = v2;

  return _swift_task_switch(sub_1003CAB6C, 0, 0);
}

uint64_t sub_1003CAB6C()
{
  v6 = *(v0 + 80);
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  *(v3 + 40) = v1;
  *(v3 + 48) = 1;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1003CAC88;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000029, 0x800000010078B5E0, sub_1003CCB24, v3, &type metadata for () + 8);
}

uint64_t sub_1003CAC88()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1003CDFD8;
  }

  else
  {

    v2 = sub_1003CADA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003CADA4()
{
  sub_100026AC0(v0[10], v0[11]);
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1003CAE90;
  v2 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x800000010078E780, sub_1003CCB28, v2, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003CAE90()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1003CDFAC;
  }

  else
  {
    v2 = sub_1003CAFA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003CAFA4()
{
  v1 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 136) = *(v0 + 24);
  return _swift_task_switch(sub_1003CDFE4, v1, 0);
}

uint64_t sub_1003CAFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CB0CC, v5, 0);
}

uint64_t sub_1003CB0CC(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1003CB198;

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003CB198()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1003CDFA8;
  }

  else
  {
    v7 = sub_1003CB320;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003CB320()
{
  v13 = v0;
  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097B3F0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName), *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName + 8), &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "IDENTITY-SHARE request timeout for serviceName %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  NWConnection.forceCancel()();
  sub_1003CCAD0();
  swift_allocError();
  *v9 = 504;
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t type metadata accessor for SDAirDropBonjourDiscoverConnection(uint64_t a1)
{
  result = qword_10097B488;
  if (!qword_10097B488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CB68C(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1003CB76C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = swift_unknownObjectRetain();
  v3(v6, sub_1003CCB40, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003CB8CC()
{
  v1[27] = v0;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1[28] = swift_task_alloc();
  v2 = type metadata accessor for SDAirDropMessage(0);
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v1[31] = *(v3 + 64);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v1[34] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CBA14, v4, 0);
}

uint64_t sub_1003CBA14()
{
  v39 = v0;
  v1 = [*(v0[27] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_nearbyAgent) idSelfIdentity];
  v0[35] = v1;
  v2 = sub_10046AB74();
  v0[36] = v2;
  v0[37] = v3;
  if (v3 >> 60 != 15)
  {
    v4 = v3;
    v5 = v2;
    if (v1)
    {
      v6 = [v1 idsDeviceID];
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v0[38] = v8;
        v0[39] = v10;
        v11 = [v1 deviceIRKData];
        if (v11)
        {
          v12 = v11;
          v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v0[40] = v13;
          v0[41] = v15;
          v16 = [v1 edPKData];
          if (v16)
          {
            v17 = v16;
            v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v19;

            v0[42] = v18;
            v0[43] = v20;
            if (qword_1009737A8 != -1)
            {
              swift_once();
            }

            v21 = v0[27];
            v22 = type metadata accessor for Logger();
            sub_10000C4AC(v22, qword_10097B3F0);
            v23 = v21;
            v24 = Logger.logObject.getter();
            v25 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v38 = v27;
              *v26 = 136315138;
              v28 = NWEndpoint.debugDescription.getter();
              v30 = sub_10000C4E4(v28, v29, &v38);

              *(v26 + 4) = v30;
              _os_log_impl(&_mh_execute_header, v24, v25, "Sending IDENTITY-SHARE request %s", v26, 0xCu);
              sub_10000C60C(v27);
            }

            v31 = swift_task_alloc();
            v0[44] = v31;
            *v31 = v0;
            v31[1] = sub_1003CBE18;

            return sub_1003C7D78();
          }

          sub_100026AC0(v13, v15);
        }

        else
        {
        }
      }
    }

    sub_10028BCC0(v5, v4);
  }

  if (qword_1009737A8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_10097B3F0);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Missing data for identity update, skipping IDENTITY-SHARE", v36, 2u);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1003CBE18(uint64_t a1)
{
  v2 = *(*v1 + 272);
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_1003CBF30, v2, 0);
}

uint64_t sub_1003CBF30()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[41];
  v21 = v0[39];
  v22 = v0[43];
  v20 = v0[38];
  v6 = v0[36];
  v5 = v0[37];
  v27 = v4;
  v7 = v0[35];
  v8 = v0[33];
  v26 = v5;
  v24 = v0[32];
  v25 = v0[30];
  v23 = v0[28];
  v28 = v0[27];
  *&v28[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection] = v1;

  v9 = sub_1001BC3B0([v7 featureFlags]);
  v0[3] = 0;
  v0[2] = 0;
  *&v10 = v6;
  *(&v10 + 1) = v5;
  *&v11 = v3;
  *(&v11 + 1) = v4;
  *(v0 + 2) = v10;
  *(v0 + 3) = v11;
  v0[8] = v2;
  v0[9] = v22;
  v0[10] = v20;
  v0[11] = v21;
  v0[12] = v9;
  memmove(v8, v0 + 2, 0x58uLL);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v23, 1, 1, v12);
  sub_1003CC814(v8, v24);
  v13 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v14 = swift_allocObject();
  v0[46] = v14;
  *(v14 + 16) = v1;
  sub_1003CC878(v24, v14 + v13, type metadata accessor for SDAirDropMessage);
  v15 = swift_allocObject();
  v0[47] = v15;
  *(v15 + 16) = v28;
  *(v15 + 24) = v1;
  swift_retain_n();
  v16 = v28;
  sub_1002A9924(v6, v26);
  sub_100294008(v3, v27);
  sub_100294008(v2, v22);
  sub_1003398A0((v0 + 2), (v0 + 13));
  v17 = swift_task_alloc();
  v0[48] = v17;
  *v17 = v0;
  v17[1] = sub_1003CC1F8;
  v18 = v0[28];

  return concurrentRace<A>(priority:operation:against:)(v0 + 24, v18, &unk_1007FE8C8, v14, &unk_1007FE8D8, v15, &type metadata for SDNWHTTPResponse);
}

uint64_t sub_1003CC1F8()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 272);
  sub_100005508(*(v2 + 224), &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v4 = sub_1003CC6F4;
  }

  else
  {
    v4 = sub_1003CC390;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003CC390()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if (v1 >= 3)
  {
    if (v1 == 9)
    {
      v11 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      v13 = v15;
      v14 = &enum case for SFAirDropSend.Failure.unsupportedConnection(_:);
    }

    else if (v1 == 4)
    {
      v11 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      v13 = v12;
      v14 = &enum case for SFAirDropSend.Failure.receiverDeclined(_:);
    }

    else
    {
      v11 = type metadata accessor for SFAirDropSend.Failure();
      sub_1003CD52C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      v13 = v16;
      v14 = &enum case for SFAirDropSend.Failure.badRequest(_:);
    }

    (*(*(v11 - 8) + 104))(v13, *v14, v11);
    swift_willThrow();
    sub_100026AC0(v2, v3);
    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 288);
    v24 = *(v0 + 296);
    v25 = *(v0 + 280);
    v22 = *(v0 + 264);
    NWConnection.forceCancel()();
    swift_willThrow();
    sub_1003398D8(v0 + 16);
    sub_100026AC0(v18, v17);
    sub_100026AC0(v20, v19);
    sub_10028BCC0(v21, v24);

    sub_1003CCA70(v22, type metadata accessor for SDAirDropMessage);

    v10 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v26 = *(v0 + 280);
    v27 = *(v0 + 264);
    NWConnection.forceCancel()();
    sub_100026AC0(v2, v3);
    sub_1003398D8(v0 + 16);
    sub_100026AC0(v5, v4);
    sub_100026AC0(v7, v6);
    sub_10028BCC0(v9, v8);

    sub_1003CCA70(v27, type metadata accessor for SDAirDropMessage);

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1003CC6F4()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[36];
  v5 = v0[37];
  v10 = v0[35];
  v7 = v0[33];
  NWConnection.forceCancel()();
  swift_willThrow();
  sub_1003398D8((v0 + 2));
  sub_100026AC0(v2, v1);
  sub_100026AC0(v4, v3);
  sub_10028BCC0(v6, v5);

  sub_1003CCA70(v7, type metadata accessor for SDAirDropMessage);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003CC814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CC878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003CC8E0(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropMessage(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003CAA00(a1, v6, v1 + v5);
}

uint64_t sub_1003CC9C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1003CAFD0(a1, v5, v4);
}

uint64_t sub_1003CCA70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003CCAD0()
{
  result = qword_10097B4B0;
  if (!qword_10097B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B4B0);
  }

  return result;
}

uint64_t sub_1003CCB54(uint64_t a1)
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
  v10[1] = sub_100005C00;

  return sub_1003C9B10(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1003CCC28(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CCD80, v6, 0);
}

uint64_t sub_1003CCD80()
{
  v52 = v0;
  v1 = v0[25];
  v2 = sub_10046949C();
  v50 = v2;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_privacyImprovements) == 1)
  {
    v3 = (v0[25] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_knownAltDSID);
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      v6 = qword_1009737A8;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_10097B3F0);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v51 = v11;
        *v10 = 136315138;
        v12 = sub_10000C4E4(v5, v4, &v51);

        *(v10 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "Known peer detected %s - presenting AppleID cert for TLS", v10, 0xCu);
        sub_10000C60C(v11);
      }

      else
      {
      }

      v34 = v0[31];
      v35 = v0[28];
      v47 = v0[30];
      aBlocka = v0[29];
      v36 = v0[26];
      v37 = v0[27];
      v38 = v0[24];
      v39 = v0[23];
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = v38;
      v40[4] = v50;
      v0[19] = v40;
      v0[18] = sub_1003CD5A0;
      v0[14] = _NSConcreteStackBlock;
      v0[15] = 1107296256;
      v0[16] = sub_100011678;
      v0[17] = &unk_1008DE450;
      v41 = _Block_copy(v0 + 14);
      swift_unknownObjectRetain();

      static DispatchQoS.unspecified.getter();
      v0[22] = _swiftEmptyArrayStorage;
      sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v41);
      swift_unknownObjectRelease();
      (*(v37 + 8))(v35, v36);
      (*(v47 + 8))(v34, aBlocka);
    }

    else
    {
      if (qword_1009737A8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C4AC(v21, qword_10097B3F0);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Unknown peer detected - presenting self-signed cert for TLS", v24, 2u);
      }

      v26 = v0[30];
      v25 = v0[31];
      v27 = v0[28];
      v46 = v0[29];
      v28 = v0[26];
      v29 = v0[27];
      v30 = v0[24];
      v31 = v0[23];

      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      v0[13] = v32;
      v0[12] = sub_1003CD574;
      v0[8] = _NSConcreteStackBlock;
      v0[9] = 1107296256;
      v0[10] = sub_100011678;
      v0[11] = &unk_1008DE400;
      v33 = _Block_copy(v0 + 8);

      static DispatchQoS.unspecified.getter();
      v0[21] = _swiftEmptyArrayStorage;
      sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);
      swift_unknownObjectRelease();
      (*(v29 + 8))(v27, v28);
      (*(v26 + 8))(v25, v46);
    }
  }

  else
  {
    v13 = v2;
    v44 = v0[31];
    v14 = v0[28];
    v45 = v0[30];
    aBlock = v0[29];
    v15 = v0[26];
    v16 = v0[27];
    v17 = v0[24];
    v18 = v0[23];
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v17;
    v19[4] = v13;
    v0[6] = sub_1003CDFE8;
    v0[7] = v19;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008DE3B0;
    v20 = _Block_copy(v0 + 2);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    v0[20] = _swiftEmptyArrayStorage;
    sub_1003CD52C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    swift_unknownObjectRelease();
    (*(v16 + 8))(v14, v15);
    (*(v45 + 8))(v44, aBlock);
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_1003CD52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CD5D0(uint64_t a1)
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
  v11[1] = sub_100005C04;

  return sub_1003C8610(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1003CD6C4()
{
  v1 = *(type metadata accessor for SDAirDropMessage(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = (v0 + v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v25 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v25 - 8) + 8))(v0 + v2, v25);
      break;
    case 2u:
      v6 = v4[1];
      if (v6 >> 60 != 15)
      {
        v5 = *v4;
        goto LABEL_3;
      }

      break;
    case 3u:
      v26 = v4[1];
      if (v26 >> 60 != 15)
      {
        sub_100026AC0(*v4, v26);
      }

      v27 = v4[5];
      if (v27 >> 60 != 15)
      {
        sub_100026AC0(v4[4], v27);
      }

      v28 = v4[9];
      if (v28 >> 60 != 15)
      {
        sub_100026AC0(v4[8], v28);
      }

      v29 = v4[11];
      if (v29 >> 60 != 15)
      {
        sub_100026AC0(v4[10], v29);
      }

      goto LABEL_10;
    case 4u:
      v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v0 + v2, 1, v12))
      {
        (*(v13 + 8))(v0 + v2, v12);
      }

      v14 = _s10AskRequestVMa(0);
      v15 = v14[5];
      v16 = type metadata accessor for SFAirDrop.TransferType();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v4 + v15, 1, v16))
      {
        (*(v17 + 8))(v4 + v15, v16);
      }

      v18 = (v4 + v14[6]);
      v19 = v18[1];
      if (v19 >> 60 != 15)
      {
        sub_100026AC0(*v18, v19);
      }

      v20 = (v4 + v14[14]);
      v21 = v20[1];
      if (v21 >> 60 != 15)
      {
        sub_100026AC0(*v20, v21);
      }

      v22 = (v4 + v14[15]);
      v23 = v22[1];
      if (v23 >> 60 != 15)
      {
        sub_100026AC0(*v22, v23);
      }

      v24 = (v4 + v14[17]);
      v6 = v24[1];
      if (v6 >> 60 == 15)
      {
        break;
      }

      v5 = *v24;
      goto LABEL_3;
    case 5u:

      v6 = v4[12];
      if (v6 >> 60 == 15)
      {
        break;
      }

      v5 = v4[11];
LABEL_3:
      sub_100026AC0(v5, v6);
      break;
    case 6u:
      v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v0 + v2, 1, v7))
      {
        (*(v8 + 8))(v0 + v2, v7);
      }

      v9 = _s13UploadRequestVMa(0);

      v10 = (v4 + *(v9 + 28));
      v11 = v10[1];
      if (v11 >> 60 != 15)
      {
        sub_100026AC0(*v10, v11);
      }

LABEL_10:

      goto LABEL_46;
    case 7u:
    case 0xBu:
    case 0xDu:
      v5 = *v4;
      v6 = v4[1];
      goto LABEL_3;
    case 8u:
      v30 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v30 - 8) + 8))(v0 + v2, v30);
      v31 = _s15ExchangeRequestVMa(0);
      goto LABEL_38;
    case 9u:
      v35 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v35 - 8) + 8))(v0 + v2, v35);
      v31 = _s16ExchangeResponseVMa(0);
LABEL_38:
      v36 = v31;

      v37 = v36[7];
      v38 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      v39 = *(v38 - 8);
      if (!(*(v39 + 48))(v4 + v37, 1, v38))
      {
        (*(v39 + 8))(v4 + v37, v38);
      }

      v40 = (v4 + v36[8]);
      v41 = v40[1];
      if (v41 >> 60 != 15)
      {
        sub_100026AC0(*v40, v41);
      }

      v4 = (v4 + v36[9]);
      if (v4[9])
      {
        goto LABEL_43;
      }

      break;
    case 0xAu:
LABEL_43:

      v42 = v4[3];
      if (v42 >> 60 != 15)
      {
        sub_100026AC0(v4[2], v42);
      }

      sub_100026AC0(v4[4], v4[5]);
      sub_100026AC0(v4[6], v4[7]);
LABEL_46:

      break;
    case 0xCu:
      v32 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v32 - 8) + 8))(v0 + v2, v32);
      v33 = *(_s12ErrorRequestVMa(0) + 20);
      v34 = type metadata accessor for CodableError();
      (*(*(v34 - 8) + 8))(v4 + v33, v34);
      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1003CDDB4(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropMessage(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003C9E00(a1, v6, v1 + v5);
}

uint64_t sub_1003CDE98()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1003CDED8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C04;

  return sub_1003CA48C(a1, v5, v4);
}

void sub_1003CDFEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_1009746B8, &qword_1007F6598);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    type metadata accessor for FileProtectionType(0);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1000106E0((v26 + 8), v24);
    sub_1000106E0(v24, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v13;
    sub_1000106E0(v26, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1003CE294(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_1009744B0, &unk_1007F9630);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000C5B0(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000106E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000106E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000106E0(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1000106E0(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1003CE55C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_100974780, &qword_1007F6640);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_100012854(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1003CE73C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_100975640, &unk_1007F64E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1000106E0(&v22, v24);
        sub_1000106E0(v24, v25);
        sub_1000106E0(v25, &v23);
        v16 = sub_100012854(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_10000C60C(v10);
          sub_1000106E0(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1000106E0(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1003CE984(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_1009744B0, &unk_1007F9630);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 4 * v12);
    sub_10000C5B0(*(a1 + 56) + 32 * v12, v33 + 8);
    LODWORD(v33[0]) = v13;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v13;
    swift_dynamicCast();
    sub_1000106E0((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1000106E0(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000106E0(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_1000106E0(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *sub_1003CEC3C(unint64_t a1, uint64_t *a2)
{
  v5 = sub_10028088C(&qword_10097B548, &qword_1007FE968);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for SFSecurityScopedURL();
  v26 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v32 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v25 = &v23 - v11;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = a1 & 0xC000000000000001;
    v27 = (v26 + 32);
    v28 = (v26 + 48);
    v14 = _swiftEmptyArrayStorage;
    v23 = a1;
    v24 = a2;
    v29 = i;
    while (1)
    {
      if (v31)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v30 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v33 = v15;
      sub_1003D7928(&v33, a2, v7);
      if (v2)
      {

        return v14;
      }

      if ((*v28)(v7, 1, v8) == 1)
      {
        sub_100005508(v7, &qword_10097B548, &qword_1007FE968);
      }

      else
      {
        v18 = *v27;
        v19 = v25;
        (*v27)(v25, v7, v8);
        v18(v32, v19, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10028EE84(0, *(v14 + 2) + 1, 1, v14);
        }

        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_10028EE84((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v18(&v14[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21], v32, v8);
        a1 = v23;
        a2 = v24;
      }

      ++v13;
      if (v17 == v29)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t Sequence<>.fileCoordinatorReadingOptions()(uint64_t a1, uint64_t a2)
{
  if (Sequence.contains(where:)())
  {
    return 8;
  }

  else
  {
    return 131074;
  }
}

uint64_t sub_1003CEFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for URL();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for SFSecurityScopedURL();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CF150, v8, 0);
}

uint64_t sub_1003CF150()
{
  v1 = v0[2].i64[1];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = *(v1 + 16);
  v24 = v0[2].i64[1];
  if (v2)
  {
    v3 = v0[7].i64[0];
    v4 = *(v3 + 16);
    v3 += 16;
    v28 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = *(v3 + 56);
    v7 = (v0[5].i64[1] + 8);
    v25 = (v3 - 8);
    v26 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v27 = (v3 + 16);
    do
    {
      v8 = v0[6].i64[0];
      v9 = v0[5].i64[0];
      v28(v0[8].i64[0], v5, v0[6].i64[1]);
      SFSecurityScopedURL.url.getter();
      v10 = URL.isFileURL.getter();
      (*v7)(v8, v9);
      if (v10)
      {
        v11 = *v27;
        (*v27)(v0[7].i64[1], v0[8].i64[0], v0[6].i64[1]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FE08(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_10028FE08((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[7].i64[1];
        v15 = v0[6].i64[1];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        v11(_swiftEmptyArrayStorage + v26 + v13 * v6, v14, v15);
      }

      else
      {
        (*v25)(v0[8].i64[0], v0[6].i64[1]);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v16 = _swiftEmptyArrayStorage[2];

  if (v16)
  {
    v18 = v0[3].i64[0];
    v17 = v0[3].i64[1];
    v19 = swift_task_alloc();
    v0[9].i64[0] = v19;
    v19[1] = vextq_s8(v0[4], v0[4], 8uLL);
    v19[2].i64[0] = v18;
    v19[2].i64[1] = v17;
    v19[3].i64[0] = v24;
    v20 = swift_task_alloc();
    v0[9].i64[1] = v20;
    v21 = sub_10028088C(&qword_10097B618, &qword_1007FEA88);
    *v20 = v0;
    v20[1] = sub_1003CF474;

    return static SFSecurityScopedURL.withAccess<A>(to:body:)(&v0[1], v24, &unk_1007FEA80, v19, v21);
  }

  else
  {
LABEL_16:

    v22 = v0->i64[1];

    return v22(0, 0, 0);
  }
}

uint64_t sub_1003CF474()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_1003CF634;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1003CF598;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003CF598()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v2, v1, v3);
}

uint64_t sub_1003CF634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CF6C0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097B528);
  v1 = sub_10000C4AC(v0, qword_10097B528);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003CF788()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100010780(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10097B540 = result;
  return result;
}

uint64_t sub_1003CF9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 200) = a5;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v7 = type metadata accessor for SFPlatform();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003CFC84, v9, 0);
}

uint64_t sub_1003CFC84()
{
  v127 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v115 = v2;
  if (v2)
  {
    v3 = *(v0 + 128);
    v6 = *(v3 + 16);
    v5 = v3 + 16;
    v4 = v6;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v8 = *(v5 + 56);
    v118 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v9 = (v5 + 16);
    v10 = _swiftEmptyArrayStorage;
    v121 = v6;
    v6(*(v0 + 192), v7, *(v0 + 120));
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        v11 = *v9;
        (*v9)(*(v0 + 184), *(v0 + 192), *(v0 + 120));
        v126[0] = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, v10[2] + 1, 1);
          v10 = v126[0];
        }

        v13 = v10[2];
        v12 = v10[3];
        if (v13 >= v12 >> 1)
        {
          sub_10028FAB4((v12 > 1), v13 + 1, 1);
          v10 = v126[0];
        }

        v14 = *(v124 + 184);
        v15 = *(v124 + 120);
        v10[2] = v13 + 1;
        v16 = v10 + v118 + v13 * v8;
        v0 = v124;
        v11(v16, v14, v15);
        v4 = v121;
      }

      else
      {
        (*(v5 - 8))(*(v0 + 192), *(v0 + 120));
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v4(*(v0 + 192), v7, *(v0 + 120));
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v17 = v10[2];

  if (!v17)
  {
LABEL_44:
    **(v0 + 24) = *(v0 + 48);

    goto LABEL_45;
  }

  v18 = *(v0 + 112);
  v19 = *(v124 + 104);
  v20 = *(v124 + 96);
  static SFPlatform.visionOS.getter();
  v21 = static SFPlatform.isPlatform(_:)();
  (*(v19 + 8))(v18, v20);
  v0 = v124;
  if (v21)
  {
    if (!*(v124 + 200))
    {
      goto LABEL_39;
    }

    sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
    v22 = static NSUserDefaults.airdrop.getter();
    v23 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter();

    if (v23)
    {
      goto LABEL_39;
    }
  }

  else if (!*(v124 + 200) || (sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr), v24 = static NSUserDefaults.airdrop.getter(), v25 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter(), v24, (v25 & 1) != 0) || (v26 = static NSUserDefaults.airdrop.getter(), v27 = SFAirDropUserDefaults.moveToAppEnabled.getter(), v26, (v27 & 1) == 0))
  {
LABEL_39:
    sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
    v67 = static NSUserDefaults.airdrop.getter();
    v68 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter();

    if (v68)
    {
      if (qword_1009737B0 != -1)
      {
LABEL_69:
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000C4AC(v69, qword_10097B528);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "Not saving files to Downloads because path was overridden", v72, 2u);
      }
    }

    goto LABEL_44;
  }

  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_10097B528);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Saving files to Downloads", v31, 2u);
  }

  v32 = *(v124 + 128);
  v33 = *(v124 + 64);
  v114 = *(v124 + 56);

  v34 = 0;
  v110 = (v33 + 56);
  v111 = [objc_opt_self() defaultManager];
  v109 = (v33 + 48);
  v0 = v124;
  v117 = (v32 + 16);
  v119 = (v32 + 32);
  v35 = v115;
  v122 = _swiftEmptyArrayStorage;
  v36 = (v32 + 8);
  v112 = (v32 + 8);
  v113 = v32;
  v37 = v115 == 0;
  if (v115)
  {
    goto LABEL_27;
  }

LABEL_26:
  v38 = 1;
  v39 = v35;
  while (1)
  {
    v46 = *(v0 + 80);
    v45 = *(v0 + 88);
    v47 = *(v0 + 56);
    (*v110)(v46, v38, 1, v47);
    sub_10002C4E4(v46, v45, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v109)(v45, 1, v47) == 1)
    {
      break;
    }

    v48 = *(v0 + 88);
    v49 = *v48;
    v50 = *v119;
    (*v119)(*(v0 + 160), &v48[*(v114 + 48)], *(v0 + 120));
    URL._bridgeToObjectiveC()(v51);
    v53 = v52;
    *(v0 + 16) = 0;
    v54 = [v111 _doc_importItemAtURL:v52 toDestination:1 error:v0 + 16];

    v55 = *(v0 + 16);
    if (!v54)
    {
      v91 = *(v0 + 160);
      v92 = *(v0 + 136);
      v93 = *(v0 + 120);
      v94 = v55;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*v117)(v92, v91, v93);
      swift_errorRetain();
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 136);
      v99 = *(v0 + 120);
      if (v97)
      {
        v100 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v126[0] = v123;
        *v100 = 136315394;
        sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v102;
        v125 = *v112;
        (*v112)(v98, v99);
        v104 = sub_10000C4E4(v101, v103, v126);

        *(v100 + 4) = v104;
        *(v100 + 12) = 2112;
        swift_errorRetain();
        v105 = _swift_stdlib_bridgeErrorToNSError();
        *(v100 + 14) = v105;
        *v120 = v105;
        _os_log_impl(&_mh_execute_header, v95, v96, "Failed to save file %s to Downloads: %@", v100, 0x16u);
        sub_100005508(v120, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v123);
      }

      else
      {

        v125 = *v112;
        (*v112)(v98, v99);
      }

      v106 = *(v0 + 160);
      v107 = *(v0 + 120);
      swift_willThrow();

      v125(v106, v107);

      v73 = *(v0 + 8);
      goto LABEL_46;
    }

    v57 = *(v0 + 144);
    v56 = *(v0 + 152);
    v58 = *(v0 + 120);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v55;

    (*v117)(v57, v56, v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = sub_10028E2D4(0, v122[2] + 1, 1, v122);
    }

    v0 = v122[2];
    v60 = v122[3];
    v116 = v39;
    if (v0 >= v60 >> 1)
    {
      v122 = sub_10028E2D4((v60 > 1), v0 + 1, 1, v122);
    }

    v61 = *(v124 + 144);
    v62 = *(v124 + 120);
    v36 = v112;
    v63 = *(v113 + 8);
    v63(*(v124 + 152), v62);
    v122[2] = v0 + 1;
    v50(v122 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v0, v61, v62);
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v64 = *(v124 + 160);
    v65 = *(v124 + 120);
    v66 = *(v124 + 32);
    *v126 = (v49 + 1) / v115;
    v66(v126);
    v63(v64, v65);
    v0 = v124;
    v35 = v115;
    v34 = v116;
    v37 = v116 >= v115;
    if (v116 == v115)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (v37)
    {
      goto LABEL_67;
    }

    v0 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_68;
    }

    v40 = *(v124 + 120);
    v42 = *(v124 + 72);
    v41 = *(v124 + 80);
    v43 = *(v124 + 48) + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v34;
    v44 = *(v114 + 48);
    *v42 = v34;
    (*(v113 + 16))(&v42[v44], v43, v40);
    sub_10002C4E4(v42, v41, &qword_10097A3B0, &unk_1007FD5B0);
    v38 = 0;
    v39 = v34 + 1;
    v0 = v124;
  }

  v75 = v115;
  if (v115)
  {
    v76 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v77 = *(v0 + 48) + v76;
    v78 = *(v113 + 72);
    v79 = *(v113 + 16);
    v80 = _swiftEmptyArrayStorage;
    v79(*(v0 + 176), v77, *(v0 + 120));
    while (1)
    {
      v81 = URL.isFileURL.getter();
      v82 = *(v0 + 176);
      if (v81)
      {
        (*v36)(*(v0 + 176), *(v0 + 120));
      }

      else
      {
        v83 = *(v0 + 168);
        v84 = *(v0 + 120);
        v85 = *v119;
        (*v119)(v83, v82, v84);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126[0] = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, *(v80 + 2) + 1, 1);
          v80 = v126[0];
        }

        v88 = *(v80 + 2);
        v87 = *(v80 + 3);
        if (v88 >= v87 >> 1)
        {
          sub_10028FAB4((v87 > 1), v88 + 1, 1);
          v80 = v126[0];
        }

        v89 = *(v124 + 168);
        v90 = *(v124 + 120);
        *(v80 + 2) = v88 + 1;
        v85(&v80[v76 + v88 * v78], v89, v90);
        v0 = v124;
        v36 = v112;
      }

      v77 += v78;
      if (!--v75)
      {
        break;
      }

      v79(*(v0 + 176), v77, *(v0 + 120));
    }
  }

  else
  {
    v80 = _swiftEmptyArrayStorage;
  }

  v108 = *(v124 + 24);
  v126[0] = v122;
  sub_100403790(v80);

  *v108 = v126[0];
  v0 = v124;
LABEL_45:

  v73 = *(v0 + 8);
LABEL_46:

  return v73();
}

uint64_t sub_1003D0964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = a6;
  *(v6 + 120) = a5;
  *(v6 + 64) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  *(v6 + 88) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D0A0C, v7, 0);
}

uint64_t sub_1003D0A0C()
{
  v1 = *(v0 + 72);
  if (v1 && *(v0 + 120) == 1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_1003D0B58;
    v4 = *(v0 + 80);

    return sub_1003DB480(v2, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_1003D0D64;
    v7 = *(v0 + 80);

    return sub_1003DC438(v7);
  }
}

uint64_t sub_1003D0B58(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = v1;
  *(v4 + 24) = a1;
  *(v4 + 16) = v2;
  *(v4 + 104) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {
    v6 = sub_1003D0D00;
  }

  else
  {
    v6 = sub_1003D0C90;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003D0C90()
{
  **(v0 + 64) = *(v0 + 24);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D0D00()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D0D64(char a1)
{
  v3 = *v2;
  *(v3 + 56) = v1;
  *(v3 + 48) = a1;
  *(v3 + 40) = v2;
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 88);

    return _swift_task_switch(sub_1003D0EB4, v7, 0);
  }
}

uint64_t sub_1003D0ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = type metadata accessor for SFSandboxTokenURLPair();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for SFSecurityScopedURL();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D1120, v9, 0);
}

uint64_t sub_1003D1120()
{
  v79 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_10000FF90(v0[4], v3, &unk_100974E00, &qword_1007F8940);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v0[16] + 32))(v0[19], v0[14], v0[15]);
    if (qword_1009737B8 != -1)
    {
      swift_once();
    }

    (*(v0[16] + 16))(v0[18], v0[19], v0[15]);
    SFSecurityScopedURL.init(_:readWrite:)();
    static SFSecurityScopedURL.consumeSandboxToken(item:)();
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[6];
    v15 = v0[7];
    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097B528);
    v17 = *(v15 + 16);
    v17(v13, v12, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v73 = v17;
      v20 = v0[16];
      v21 = v0[17];
      v22 = v0[15];
      v68 = v0[9];
      v23 = v0[7];
      v76 = v0[6];
      v24 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78 = v70;
      *v24 = 136315138;
      SFSandboxTokenURLPair.url.getter();
      sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v25 = v22;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v29 = v21;
      v17 = v73;
      (*(v20 + 8))(v29, v25);
      v30 = v76;
      v77 = *(v23 + 8);
      v77(v68, v30);
      v31 = sub_10000C4E4(v26, v28, &v78);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Moving downloaded files to folder %s", v24, 0xCu);
      sub_10000C60C(v70);
    }

    else
    {
      v32 = v0[9];
      v33 = v0[6];
      v34 = v0[7];

      v77 = *(v34 + 8);
      v77(v32, v33);
    }

    v36 = v0[16];
    v35 = v0[17];
    v37 = v0[15];
    isa = Array._bridgeToObjectiveC()().super.isa;
    SFSandboxTokenURLPair.url.getter();
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v75 = *(v36 + 8);
    v75(v35, v37);
    v0[2] = 0;
    v42 = sub_1001F1DAC(isa, v41, 0, v0 + 2);

    v43 = v0[2];
    v74 = v43;
    if (v42)
    {
      v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v43;

      if (*(v44 + 16))
      {
LABEL_27:
        v60 = v0[19];
        v61 = v0[15];
        v63 = v0[12];
        v62 = v0[13];
        v64 = v0[10];
        v65 = v0[11];
        v66 = v0[6];
        v72 = v0[3];
        SFSandboxTokenURLPair.releaseSandboxExtension()();
        v77(v64, v66);
        (*(v63 + 8))(v62, v65);
        v75(v60, v61);

        *v72 = v44;
        goto LABEL_7;
      }
    }

    else
    {
      v46 = v43;
    }

    v17(v0[8], v0[10], v0[6]);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v0[17];
      v50 = v0[15];
      v51 = v0[8];
      v67 = v0[6];
      v52 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v78 = v71;
      *v52 = 136315394;
      SFSandboxTokenURLPair.url.getter();
      sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v75(v49, v50);
      v77(v51, v67);
      v56 = sub_10000C4E4(v53, v55, &v78);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v74;
      *v69 = v74;
      v57 = v74;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to save files to %s: %@", v52, 0x16u);
      sub_100005508(v69, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v71);
    }

    else
    {
      v58 = v0[8];
      v59 = v0[6];

      v77(v58, v59);
    }

    v44 = v0[5];

    goto LABEL_27;
  }

  sub_100005508(v0[14], &unk_100974E00, &qword_1007F8940);
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097B528);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not move files to nil folder", v7, 2u);
  }

  v8 = v0[5];
  v9 = v0[3];

  *v9 = v8;

LABEL_7:

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003D19DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = type metadata accessor for URL();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v7 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[40] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D1B98, v8, 0);
}

id sub_1003D1B98()
{
  v82 = v0;
  v1 = *(*(v0 + 232) + 16);
  *(v0 + 328) = v1;
  if (!v1)
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097B528);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cannot open empty list of URLs", v17, 2u);
    }

    v18 = 0;
LABEL_46:
    **(v0 + 208) = v18;

    v80 = *(v0 + 8);

    return v80();
  }

  v2 = *(v0 + 240);
  if (v2)
  {
    v3 = qword_1009737B0;
    v4 = v2;
    if (v3 != -1)
    {
LABEL_52:
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097B528);

    v6 = v4;
    v4 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v4, v7))
    {

      goto LABEL_26;
    }

    v8 = swift_slowAlloc();
    v81 = COERCE_DOUBLE(swift_slowAlloc());
    *v8 = 136315394;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10 = SFCompactStringFromCollection();

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0xD000000000000015;
      v13 = 0x8000000100789F30;
    }

    v28 = sub_10000C4E4(v11, v13, &v81);

    *(v8 + 4) = v28;
    *(v8 + 12) = 2080;
    v29 = [v6 bundleIdentifier];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0xD000000000000015;
      v33 = 0x8000000100789F30;
    }

    v34 = sub_10000C4E4(v31, v33, &v81);

    *(v8 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v4, v7, "Opening URLs: %s in %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097B528);

    v4 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v81 = *&v22;
      *v21 = 136315138;
      v23 = Array._bridgeToObjectiveC()().super.isa;
      v24 = SFCompactStringFromCollection();

      if (v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
        v25 = 0xD000000000000015;
        v27 = 0x8000000100789F30;
      }

      v35 = sub_10000C4E4(v25, v27, &v81);

      *(v21 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v4, v20, "Opening URLs: %s", v21, 0xCu);
      sub_10000C60C(v22);
    }
  }

LABEL_26:
  v36 = 0;
  v37 = 0;
  *(v0 + 336) = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  while (1)
  {
    v38 = *(v0 + 328);
    if (v37 == v38)
    {
      v39 = 1;
    }

    else
    {
      if (v37 >= v38)
      {
        goto LABEL_50;
      }

      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_51;
      }

      v42 = *(v0 + 296);
      v41 = *(v0 + 304);
      v43 = *(v0 + 248);
      v44 = *(v0 + 256);
      v45 = *(v44 + 16);
      v46 = *(v0 + 232) + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37;
      v47 = *(*(v0 + 280) + 48);
      *v42 = v37;
      v45(v42 + v47, v46, v43);
      sub_10002C4E4(v42, v41, &qword_10097A3B0, &unk_1007FD5B0);
      v39 = 0;
      v37 = v40;
    }

    *(v0 + 344) = v37;
    v49 = *(v0 + 304);
    v48 = *(v0 + 312);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    (*(v50 + 56))(v49, v39, 1, v51);
    sub_10002C4E4(v49, v48, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*(v50 + 48))(v48, 1, v51) == 1)
    {
      goto LABEL_45;
    }

    v52 = *(v0 + 312);
    v54 = *(v0 + 272);
    v53 = *(v0 + 280);
    v55 = *(v0 + 248);
    v56 = *(v0 + 256);
    *(v0 + 352) = *v52;
    (*(v56 + 32))(v54, &v52[*(v53 + 48)], v55);
    sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v58;
    *(inited + 48) = 1;
    v59 = sub_100281D9C(inited);
    *(v0 + 360) = v59;
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
    if ((sub_1003DDA98(v54) & 1) == 0)
    {
      break;
    }

    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v62 = result;
    URL._bridgeToObjectiveC()(v61);
    v64 = v63;
    sub_1003CE73C(v59);

    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    v66 = [v62 openSensitiveURL:v64 withOptions:v65];

    if ((v66 & 1) == 0)
    {
      (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
      v36 = 0;
LABEL_45:
      v18 = v36;
      goto LABEL_46;
    }

    v67 = *(v0 + 240);
    if (!v67 || (v68 = [v67 bundleIdentifier]) == 0)
    {
      v68 = 0;
    }

    v69 = *(v0 + 352);
    v70 = objc_opt_self();
    URL._bridgeToObjectiveC()(v71);
    v4 = v72;
    [v70 logReceiverBundleID:v68 forURL:v72];

    v73 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v74 = *(v0 + 272);
    v76 = *(v0 + 248);
    v75 = *(v0 + 256);
    v77 = *(v0 + 216);
    v4 = *(v0 + 224);
    v81 = v73 / (*(v0 + 328) + 1);
    v77(&v81);
    (*(v75 + 8))(v74, v76);
    v37 = *(v0 + 344);
    v36 = 1;
  }

  v78 = swift_task_alloc();
  *(v0 + 368) = v78;
  *v78 = v0;
  v78[1] = sub_1003D24B4;
  v79 = *(v0 + 272);

  return sub_1003DDCC0(v79);
}

uint64_t sub_1003D24B4(char a1)
{
  v2 = *(*v1 + 320);
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1003D25CC, v2, 0);
}

uint64_t sub_1003D25CC()
{
  v74 = v0;
  v1 = *(v0 + 360);
  if (*(v0 + 408))
  {

    if (qword_1009737B0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v2 = *(v0 + 264);
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097B528);
    (*(v5 + 16))(v2, v3, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v73 = *&v14;
      *v13 = 136315138;
      sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_10000C4E4(v15, v17, &v73);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Handled AppClip url %s", v13, 0xCu);
      sub_10000C60C(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    do
    {
      v27 = *(v0 + 240);
      if (!v27 || (v28 = [v27 bundleIdentifier]) == 0)
      {
        v28 = 0;
      }

      v29 = *(v0 + 352);
      v30 = objc_opt_self();
      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      [v30 logReceiverBundleID:v28 forURL:v32];

      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v35 = *(v0 + 272);
      v36 = *(v0 + 248);
      v37 = *(v0 + 256);
      v38 = *(v0 + 216);
      v73 = v34 / (*(v0 + 328) + 1);
      v38(&v73);
      (*(v37 + 8))(v35, v36);
      v39 = *(v0 + 344);
      v40 = *(v0 + 328);
      if (v39 == v40)
      {
        v41 = 1;
      }

      else
      {
        if (v39 >= v40)
        {
          goto LABEL_31;
        }

        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_32;
        }

        v43 = *(v0 + 296);
        v44 = *(v0 + 304);
        v45 = *(v0 + 248);
        v46 = *(v0 + 256);
        v47 = *(v46 + 16);
        v48 = *(v0 + 232) + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39;
        v49 = *(*(v0 + 280) + 48);
        *v43 = v39;
        v47(v43 + v49, v48, v45);
        sub_10002C4E4(v43, v44, &qword_10097A3B0, &unk_1007FD5B0);
        v41 = 0;
        v39 = v42;
      }

      *(v0 + 344) = v39;
      v50 = *(v0 + 304);
      v51 = *(v0 + 312);
      v52 = *(v0 + 280);
      v53 = *(v0 + 288);
      (*(v53 + 56))(v50, v41, 1, v52);
      sub_10002C4E4(v50, v51, &qword_10097A3B8, &qword_1007FE9C0);
      v54 = (*(v53 + 48))(v51, 1, v52);
      if (v54 == 1)
      {
        goto LABEL_24;
      }

      v55 = *(v0 + 312);
      v57 = *(v0 + 272);
      v56 = *(v0 + 280);
      v58 = *(v0 + 248);
      v59 = *(v0 + 256);
      *(v0 + 352) = *v55;
      (*(v59 + 32))(v57, &v55[*(v56 + 48)], v58);
      sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v61;
      *(inited + 48) = 1;
      v62 = sub_100281D9C(inited);
      *(v0 + 360) = v62;
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
      if ((sub_1003DDA98(v57) & 1) == 0)
      {
        v71 = swift_task_alloc();
        *(v0 + 368) = v71;
        *v71 = v0;
        v71[1] = sub_1003D24B4;
        v72 = *(v0 + 272);

        return sub_1003DDCC0(v72);
      }

      v21 = [objc_opt_self() defaultWorkspace];
      if (!v21)
      {
        __break(1u);
        goto LABEL_35;
      }

      v64 = v21;
      URL._bridgeToObjectiveC()(v63);
      v66 = v65;
      sub_1003CE73C(v62);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v68 = [v64 openSensitiveURL:v66 withOptions:isa];
    }

    while ((v68 & 1) != 0);
    (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
LABEL_24:
    **(v0 + 208) = v54 == 1;

    v69 = *(v0 + 8);

    return v69();
  }

  else
  {
    v19 = [objc_allocWithZone(_LSOpenConfiguration) init];
    *(v0 + 376) = v19;
    sub_1003CE73C(v1);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 setFrontBoardOptions:v20];

    v21 = [objc_opt_self() defaultWorkspace];
    *(v0 + 384) = v21;
    if (v21)
    {
      v22 = v21;

      URL._bridgeToObjectiveC()(v23);
      v25 = v24;
      *(v0 + 392) = v24;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 200;
      *(v0 + 24) = sub_1003D2DC0;
      v26 = swift_continuation_init();
      *(v0 + 136) = sub_10028088C(&qword_10097B5F8, &unk_1007FE9E0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1003D3474;
      *(v0 + 104) = &unk_1008DE6A8;
      *(v0 + 112) = v26;
      [v22 openURL:v25 configuration:v19 completionHandler:v0 + 80];
      v21 = (v0 + 16);
    }

    else
    {
LABEL_35:
      __break(1u);
    }

    return _swift_continuation_await(v21);
  }
}

uint64_t sub_1003D2DC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 320);
  if (v2)
  {
    v4 = sub_1003D3388;
  }

  else
  {
    v4 = sub_1003D2EE0;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1003D2EE0()
{
  v52 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);

  v4 = *(v0 + 200);

  if (v4)
  {
    while (1)
    {
      v5 = *(v0 + 240);
      if (!v5 || (v6 = [v5 bundleIdentifier]) == 0)
      {
        v6 = 0;
      }

      v7 = *(v0 + 352);
      v8 = objc_opt_self();
      URL._bridgeToObjectiveC()(v9);
      v11 = v10;
      [v8 logReceiverBundleID:v6 forURL:v10];

      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v13 = *(v0 + 272);
      v15 = *(v0 + 248);
      v14 = *(v0 + 256);
      v16 = *(v0 + 216);
      v51 = v12 / (*(v0 + 328) + 1);
      v16(&v51);
      (*(v14 + 8))(v13, v15);
      v17 = *(v0 + 344);
      v18 = *(v0 + 328);
      if (v17 == v18)
      {
        v19 = 1;
      }

      else
      {
        if (v17 >= v18)
        {
          goto LABEL_23;
        }

        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_24;
        }

        v22 = *(v0 + 296);
        v21 = *(v0 + 304);
        v23 = *(v0 + 248);
        v24 = *(v0 + 256);
        v25 = *(v24 + 16);
        v26 = *(v0 + 232) + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v17;
        v27 = *(*(v0 + 280) + 48);
        *v22 = v17;
        v25(v22 + v27, v26, v23);
        sub_10002C4E4(v22, v21, &qword_10097A3B0, &unk_1007FD5B0);
        v19 = 0;
        v17 = v20;
      }

      *(v0 + 344) = v17;
      v29 = *(v0 + 304);
      v28 = *(v0 + 312);
      v31 = *(v0 + 280);
      v30 = *(v0 + 288);
      v32 = 1;
      (*(v30 + 56))(v29, v19, 1, v31);
      sub_10002C4E4(v29, v28, &qword_10097A3B8, &qword_1007FE9C0);
      if ((*(v30 + 48))(v28, 1, v31) == 1)
      {
        goto LABEL_16;
      }

      v33 = *(v0 + 312);
      v35 = *(v0 + 272);
      v34 = *(v0 + 280);
      v36 = *(v0 + 248);
      v37 = *(v0 + 256);
      *(v0 + 352) = *v33;
      (*(v37 + 32))(v35, &v33[*(v34 + 48)], v36);
      sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v39;
      *(inited + 48) = 1;
      v40 = sub_100281D9C(inited);
      *(v0 + 360) = v40;
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
      if ((sub_1003DDA98(v35) & 1) == 0)
      {
        break;
      }

      v41 = [objc_opt_self() defaultWorkspace];
      if (!v41)
      {
        goto LABEL_25;
      }

      v43 = v41;
      URL._bridgeToObjectiveC()(v42);
      v45 = v44;
      sub_1003CE73C(v40);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v47 = [v43 openSensitiveURL:v45 withOptions:isa];

      if ((v47 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v49 = swift_task_alloc();
    *(v0 + 368) = v49;
    *v49 = v0;
    v49[1] = sub_1003D24B4;
    v50 = *(v0 + 272);

    sub_1003DDCC0(v50);
  }

  else
  {
LABEL_15:
    (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
    v32 = 0;
LABEL_16:
    **(v0 + 208) = v32;

    v48 = *(v0 + 8);

    v48();
  }
}

uint64_t sub_1003D3388(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[47];
  v4 = v1[48];
  v5 = v1[34];
  v7 = v1[31];
  v6 = v1[32];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1003D3474(uint64_t a1, uint64_t a2, void *a3)
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
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1003D3570(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9)
{
  v94 = a8;
  v110 = a7;
  v108 = a6;
  v102 = a4;
  v103 = a3;
  v89 = a1;
  v93 = a9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v92 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v85 - v15;
  v88 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v87 = *(v88 - 8);
  v85[1] = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = v85 - v17;
  v18 = *(a2 + 16);
  if (!v18)
  {
LABEL_32:
    v78 = v87;
    v79 = v86;
    v80 = v88;
    (*(v87 + 16))(v86, v89, v88);
    v81 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v82 = swift_allocObject();
    v83 = v110;
    *(v82 + 16) = v108;
    *(v82 + 24) = v83;
    (*(v78 + 32))(v82 + v81, v79, v80);
    v116 = sub_1003DE6B8;
    v117 = v82;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v115 = sub_100011678;
    *(&v115 + 1) = &unk_1008DE7C0;
    v84 = _Block_copy(&aBlock);

    [v93 addBarrierBlock:v84];
    _Block_release(v84);
    return;
  }

  v101 = sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  v100 = v103 ^ 1;
  v99 = LSMoveDocumentOnOpenKey;
  v98 = LSRequireOpenInPlaceKey;
  v19 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v97 = sub_10028088C(&unk_100975640, &unk_1007F64E0);
  v21 = *(v12 + 16);
  v20 = v12 + 16;
  v105 = v21;
  v104 = (v20 - 8);
  v91 = LSFileProviderStringKey;
  v106 = v20;
  v96 = *(v20 + 56);
  *&v22 = 136315394;
  v90 = v22;
  v95 = a5;
  v107 = v11;
  v111 = v16;
  while (1)
  {
    v109 = v18;
    v105(v16, v19, v11);
    v118.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118._urlString = v25;
    v26 = v101;
    v27.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v100 & 1).super.super.isa;
    v119 = v26;
    v118._baseURL = v27.super.super.isa;
    v120[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120[1] = v28;
    v29.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v103 & 1).super.super.isa;
    v120[5] = v26;
    v120[2] = v29.super.super.isa;
    v30 = static _DictionaryStorage.allocate(capacity:)();

    sub_10000FF90(&v118, &aBlock, &qword_1009744D0, &qword_1007F8A20);
    v31 = aBlock;
    v32 = sub_100012854(aBlock, *(&aBlock + 1));
    if (v33)
    {
      break;
    }

    *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v32;
    *(v30[6] + 16 * v32) = v31;
    sub_1000106E0(&v115, (v30[7] + 32 * v32));
    v34 = v30[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_34;
    }

    v30[2] = v36;
    sub_10000FF90(v120, &aBlock, &qword_1009744D0, &qword_1007F8A20);
    v37 = aBlock;
    v38 = sub_100012854(aBlock, *(&aBlock + 1));
    if (v39)
    {
      break;
    }

    *(v30 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
    *(v30[6] + 16 * v38) = v37;
    sub_1000106E0(&v115, (v30[7] + 32 * v38));
    v40 = v30[2];
    v35 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v35)
    {
      goto LABEL_34;
    }

    v30[2] = v41;

    sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
    swift_arrayDestroy();
    if (!*(*v102 + 16))
    {
      v42 = &v121;
      v16 = v111;
LABEL_16:
      if (a5)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

    v16 = v111;
    sub_100570988(v111);
    if ((v43 & 1) == 0)
    {
      goto LABEL_16;
    }

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = String._bridgeToObjectiveC()();

    *(&v115 + 1) = sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    *&aBlock = v47;
    sub_1000106E0(&aBlock, &v113);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v30;
    v49 = sub_100012854(v44, v46);
    v51 = v30[2];
    v52 = (v50 & 1) == 0;
    v35 = __OFADD__(v51, v52);
    v53 = v51 + v52;
    if (v35)
    {
      goto LABEL_35;
    }

    v54 = v50;
    if (v30[3] >= v53)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = v49;
        sub_1002CDFF4();
        v49 = v77;
      }
    }

    else
    {
      sub_100011310(v53, isUniquelyReferenced_nonNull_native);
      v49 = sub_100012854(v44, v46);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_37;
      }
    }

    v16 = v111;
    if (v54)
    {
      v56 = v49;

      v57 = (v112[7] + 32 * v56);
      sub_10000C60C(v57);
      sub_1000106E0(&v113, v57);
    }

    else
    {
      v58 = v112;
      v112[(v49 >> 6) + 8] |= 1 << v49;
      v59 = (v58[6] + 16 * v49);
      *v59 = v44;
      v59[1] = v46;
      sub_1000106E0(&v113, (v58[7] + 32 * v49));
      v60 = v58[2];
      v35 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v35)
      {
        goto LABEL_36;
      }

      v58[2] = v61;
    }

    v42 = &v118;
    a5 = v95;
    if (v95)
    {
LABEL_25:
      URL._bridgeToObjectiveC()(v42);
      v63 = v62;
      v64 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_1003CE73C(v94);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      v67 = [a5 operationToOpenResource:v63 usingApplication:v64 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:isa options:v66 delegate:0];

      v16 = v111;
      v11 = v107;
      if (v67)
      {
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        sub_10000C4AC(v68, qword_10097B528);
        v69 = v92;
        v105(v92, v16, v11);

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v72 = v90;
          *(v72 + 4) = sub_10000C4E4(v108, v110, &aBlock);
          *(v72 + 12) = 2080;
          sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          (*v104)(v69, v107);
          v76 = sub_10000C4E4(v73, v75, &aBlock);

          *(v72 + 14) = v76;
          _os_log_impl(&_mh_execute_header, v70, v71, "Enqueuing resource open operation for %s, with URL: %s", v72, 0x16u);
          swift_arrayDestroy();

          v11 = v107;
        }

        else
        {

          (*v104)(v69, v11);
        }

        [v93 addOperation:v67];

        a5 = v95;
        v16 = v111;
      }

      goto LABEL_4;
    }

LABEL_3:

    v11 = v107;
LABEL_4:
    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveC()();
    [v23 logReceiverBundleID:v24 forURL:0];

    (*v104)(v16, v11);
    v19 += v96;
    v18 = v109 - 1;
    if (v109 == 1)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003D411C(uint64_t a1, unint64_t a2)
{
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097B528);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Resource open operation completed for %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v11 = 1;
  sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  return CheckedContinuation.resume(returning:)();
}

void sub_1003D429C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097B608, &unk_1007FEA48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - v4);
  URL._bridgeToObjectiveC()(v4);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v5, v2);
  aBlock[4] = sub_1003DE614;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D4678;
  aBlock[3] = &unk_1008DE770;
  v11 = _Block_copy(aBlock);

  FPExtendBookmarkForDocumentURL();
  _Block_release(v11);
}

uint64_t sub_1003D4478(uint64_t a1, void *a2)
{
  if (!a1 || a2)
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097B528);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = 0;
      if (a2)
      {
        type metadata accessor for CFError(0);
        sub_100010780(&unk_100987420, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        swift_allocError();
        *v10 = v4;
        v11 = v4;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      *(v7 + 4) = v9;
      *v8 = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch FileProvider bookmark - %@", v7, 0xCu);
      sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10028088C(&qword_10097B608, &unk_1007FEA48);
  return CheckedContinuation.resume(returning:)();
}

void sub_1003D4678(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1003D4704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_10028088C(&unk_1009755F0, &unk_1007FE9A0);
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for SFPlatform();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for OS_dispatch_queue.Attributes();
  v3[36] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v3[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D4A44, v9, 0);
}

uint64_t sub_1003D4A44()
{
  v94 = v0;
  v1 = v0[33];
  v89 = v0[34];
  v90 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v91 = v0[29];
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v0[12] = _swiftEmptyArrayStorage;
  sub_100010780(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v89, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v90);
  v4 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static SFPlatform.macOS.getter();
  v5 = static SFPlatform.isPlatform(_:)();
  (*(v2 + 8))(v3, v91);
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v5)
  {
    v7 = v0[27];
    v8 = v0[28];
    v9 = v0[26];
    SFAirDropReceive.Transfer.state.getter();
    v10 = SFAirDropReceive.Transfer.State.completedSuccessfully.getter();
    (*(v7 + 8))(v8, v9);
    if (v10 & 1) == 0 && (SFAirDropReceive.Transfer.didReceiverAccept.getter())
    {
      v11 = v0[25];
      SFAirDropReceive.Transfer.fileInfo.getter();
      v12 = type metadata accessor for SFAirDropReceive.FileInfo();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 48))(v11, 1, v12);
      v15 = v0[25];
      if (v14 == 1)
      {
        sub_100005508(v0[25], &unk_1009755F0, &unk_1007FE9A0);
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_10000C4AC(v16, qword_10097B528);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "No placeholder file URLs to cleanup", v19, 2u);
        }

        v20 = type metadata accessor for SFAirDropReceive.Failure();
        sub_100010780(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        swift_allocError();
        v22 = v21;
        v23 = &enum case for SFAirDropReceive.Failure.incompleteTransfer(_:);
        goto LABEL_15;
      }

      v67 = SFAirDropReceive.FileInfo.placeholderURLs.getter();
      (*(v13 + 8))(v15, v12);
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v92 = v4;
      v68 = type metadata accessor for Logger();
      sub_10000C4AC(v68, qword_10097B528);

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v93 = v72;
        *v71 = 136315138;
        v73 = Array.description.getter();
        v75 = sub_10000C4E4(v73, v74, &v93);

        *(v71 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v69, v70, "Removing placeholder files %s", v71, 0xCu);
        sub_10000C60C(v72);
      }

      v76 = *(v67 + 16);
      if (!v76)
      {
LABEL_37:

        goto LABEL_25;
      }

      v77 = 0;
      p_opt_class_meths = v0[21];
      while (v77 < *(v67 + 16))
      {
        v78 = v0[24];
        v79 = v0[20];
        (p_opt_class_meths[2])(v78, v67 + ((*(p_opt_class_meths + 80) + 32) & ~*(p_opt_class_meths + 80)) + p_opt_class_meths[9] * v77, v79);
        v80 = [objc_opt_self() defaultManager];
        URL._bridgeToObjectiveC()(v81);
        v83 = v82;
        (p_opt_class_meths[1])(v78, v79);
        v0[14] = 0;
        LODWORD(v79) = [v80 removeItemAtURL:v83 error:v0 + 14];

        v84 = v0[14];
        if (!v79)
        {
          v86 = v84;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v4 = v92;
          p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
          goto LABEL_20;
        }

        ++v77;
        v85 = v84;
        if (v76 == v77)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  v24 = sub_1001F17F4();
  if (v24)
  {
    v92 = v4;
    v25 = v0[22];
    v26 = v0[23];
    v27 = v0[21];
    v87 = v0[20];
    v28 = v0[18];
    v29 = v0[19];
    v30 = v0[17];
    v31 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v27 + 32))(v26, v25, v87);
    v0[8] = 0xD000000000000011;
    v0[9] = 0x8000000100788A20;
    v32 = enum case for URL.DirectoryHint.isDirectory(_:);
    v88 = *(v28 + 104);
    v88(v29, enum case for URL.DirectoryHint.isDirectory(_:), v30);
    sub_10001229C();
    URL.append<A>(path:directoryHint:)();
    v33 = *(v28 + 8);
    v33(v29, v30);
    v0[10] = UUID.uuidString.getter();
    v0[11] = v34;
    v88(v29, v32, v30);
    URL.append<A>(path:directoryHint:)();
    v35 = v30;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    v33(v29, v35);

    if (qword_1009737B0 == -1)
    {
LABEL_12:
      v36 = v0;
      v37 = type metadata accessor for Logger();
      sub_10000C4AC(v37, qword_10097B528);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v0 + 12;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v93 = v42;
        *v41 = 136315138;
        swift_beginAccess();
        v43 = URL.path.getter();
        v45 = sub_10000C4E4(v43, v44, &v93);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "Cleaning up transfer folder %s", v41, 0xCu);
        sub_10000C60C(v42);

        v46 = v92;
      }

      else
      {

        v46 = v92;
        v40 = v0 + 12;
      }

      v48 = [objc_opt_self() defaultManager];
      swift_beginAccess();
      URL._bridgeToObjectiveC()(v49);
      v51 = v50;
      v36[13] = 0;
      v52 = [v48 removeItemAtURL:v50 error:v40 + 1];

      v53 = v36[13];
      v54 = v36[23];
      v55 = v36[20];
      v56 = v36[21];
      v0 = v36;
      if (v52)
      {
        v57 = v53;

        (*(v56 + 8))(v54, v55);
        goto LABEL_25;
      }

      v58 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v56 + 8))(v54, v55);
      v4 = v46;
      goto LABEL_20;
    }

LABEL_40:
    swift_once();
    goto LABEL_12;
  }

  v20 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100010780(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  v22 = v47;
  v23 = &enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:);
LABEL_15:
  (*(*(v20 - 8) + 104))(v22, *v23, v20);
  swift_willThrow();
LABEL_20:
  if (p_opt_class_meths[246] != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_10000C4AC(v59, qword_10097B528);
  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    swift_errorRetain();
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 4) = v64;
    *v63 = v64;
    _os_log_impl(&_mh_execute_header, v60, v61, "Remove URL failed with error %@", v62, 0xCu);
    sub_100005508(v63, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

LABEL_25:

  v65 = v0[1];

  return v65();
}

uint64_t sub_1003D568C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D572C, v3, 0);
}

uint64_t sub_1003D572C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1003D5848;
  v2 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B600, &unk_1007FEA10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003D59F8;
  v0[13] = &unk_1008DE720;
  v0[14] = v2;
  [v1 requestClipWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003D5848()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1003D598C;
  }

  else
  {
    v4 = sub_1003D5968;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003D598C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1003D59F8(uint64_t a1, char a2, void *a3)
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
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1003D5AC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D5BC0, v4, 0);
}

uint64_t sub_1003D5BC0(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1003D5C8C;

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003D5C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1003C13E4;
  }

  else
  {
    v7 = sub_1003D5E14;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003D5E14()
{
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097B528);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ClipServices request timed out", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  [v5 cancel];
  *v6 = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003D5F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v8 = type metadata accessor for URL();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003D6024, 0, 0);
}

uint64_t sub_1003D6024()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v17 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v9 = (v4 + 16);
    v18 = v6;
    do
    {
      v5(v0[11], v7, v0[8]);
      if (URL.isFileURL.getter())
      {
        v10 = *v9;
        (*v9)(v0[10], v0[11], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_10028FAB4((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[10];
        v14 = v0[8];
        _swiftEmptyArrayStorage[2] = v12 + 1;
        v10(_swiftEmptyArrayStorage + v17 + v12 * v8, v13, v14);
        v5 = v18;
      }

      else
      {
        (*(v4 - 8))(v0[11], v0[8]);
      }

      v7 += v8;
      --v2;
    }

    while (v2);
  }

  v0[12] = _swiftEmptyArrayStorage;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003D6220, v15, 0);
}

uint64_t sub_1003D6220()
{
  *(v0 + 104) = sub_1003DE840(*(v0 + 32));
  *(v0 + 136) = v1;

  return _swift_task_switch(sub_1003D6290, 0, 0);
}

uint64_t sub_1003D6290()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v11 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = v11;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1 & 1;
  *(v6 + 57) = BYTE1(v1) & 1;
  *(v6 + 58) = BYTE2(v1) & 1;
  *(v6 + 64) = v4;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = sub_10028088C(&qword_10097B618, &qword_1007FEA88);
  *v7 = v0;
  v7[1] = sub_1003D63E0;
  v9 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD000000000000023, 0x800000010078EA20, sub_1003DEA1C, v6, v8);
}

uint64_t sub_1003D63E0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1003D6580;
  }

  else
  {

    v2 = sub_1003D6508;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003D6508()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D6580()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1003D6610(objc_class *a1, NSString a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, uint64_t a10)
{
  v56 = a7;
  v57 = a8;
  v58 = a6;
  v59 = a5;
  v51 = a3;
  v13 = sub_10028088C(&qword_10097B620, &qword_1007FEA90);
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  __chkstk_darwin(v13);
  v53 = &v47 - v15;
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16 - 8);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_10097B528);
  sub_1002940CC(a2, v21);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    isa = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v48 = v17;
    aBlock[0] = v27;
    *v26 = 136315394;
    v28 = sub_10032B99C();
    v49 = a2;
    v29 = v14;
    v31 = v30;
    sub_1003DEB88(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v32 = sub_10000C4E4(v28, v31, aBlock);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    if (a4)
    {
      v33 = v51;
    }

    else
    {
      v33 = 0xD000000000000015;
    }

    if (a4)
    {
      v34 = a4;
    }

    else
    {
      v34 = 0x8000000100789F30;
    }

    v35 = sub_10000C4E4(v33, v34, aBlock);
    v14 = v29;
    a2 = v49;

    *(v26 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v23, v24, "Converting media items for endpoint %s from requestSource %s", v26, 0x16u);
    swift_arrayDestroy();
    v17 = v48;

    a1 = isa;
  }

  else
  {

    sub_1003DEB88(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  LODWORD(v51) = a9;
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v49 = String._bridgeToObjectiveC()();
  }

  else
  {
    v49 = 0;
  }

  v48 = objc_opt_self();
  v36 = v52;
  sub_1002940CC(a2, v52);
  v37 = v53;
  v38 = v54;
  v39 = v55;
  (*(v54 + 16))(v53, a1, v55);
  v40 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v41 = (v18 + *(v38 + 80) + v40) & ~*(v38 + 80);
  v42 = (v14 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_10000EDE0(v36, v43 + v40, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v38 + 32))(v43 + v41, v37, v39);
  *(v43 + v42) = v59;
  *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = a10;
  aBlock[4] = sub_1003DEA60;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D7F44;
  aBlock[3] = &unk_1008DE860;
  v44 = _Block_copy(aBlock);

  v45 = v49;
  v46 = isa;
  [v48 convertMediaItemsWithFileURLs:isa clientBundleID:v49 mediaCapabilities:v58 supportsLivePhoto:v56 & 1 supportsAssetBundles:v57 & 1 supportsWideGamut:v51 & 1 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_1003D6B6C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(char *, uint64_t))
{
  v116 = a6;
  v117 = a5;
  v110 = a4;
  v109 = a3;
  v120 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFSecurityScopedURL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v105 - v16;
  v18 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v23 = __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v27 = &v105 - v26;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1009737B0 != -1)
    {
LABEL_56:
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097B528);
    sub_1002940CC(v109, v27);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v124[0] = v33;
      *v31 = 136315394;
      v34 = sub_10032B99C();
      v36 = v35;
      sub_1003DEB88(v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v37 = sub_10000C4E4(v34, v36, v124);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v32 = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Conversion of media items for endpoint %s failed: %@", v31, 0x16u);
      sub_100005508(v32, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v33);
    }

    else
    {

      sub_1003DEB88(v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v124[0] = a2;
    sub_10028088C(&qword_10097B620, &qword_1007FEA90);
    return CheckedContinuation.resume(throwing:)();
  }

  v115 = v8;
  v40 = v116;
  v39 = v117;
  v118 = v17;
  v119 = v15;
  v112 = v12;
  v108 = v11;
  v114 = v10;
  v41 = v120;
  if (!v120)
  {
    v56 = v109;
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000C4AC(v57, qword_10097B528);
    sub_1002940CC(v56, v21);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v124[0] = v61;
      *v60 = 136315138;
      v62 = sub_10032B99C();
      v64 = v63;
      sub_1003DEB88(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v65 = sub_10000C4E4(v62, v64, v124);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "Conversion of media items for endpoint %s failed", v60, 0xCu);
      sub_10000C60C(v61);
    }

    else
    {

      sub_1003DEB88(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v66 = type metadata accessor for SFAirDropSend.Failure();
    sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    v67 = swift_allocError();
    (*(*(v66 - 8) + 104))(v68, enum case for SFAirDropSend.Failure.badRequest(_:), v66);
    v124[0] = v67;
    sub_10028088C(&qword_10097B620, &qword_1007FEA90);
    return CheckedContinuation.resume(throwing:)();
  }

  v42 = v25;
  v43 = v24;
  v125 = sub_100281ED8(_swiftEmptyArrayStorage);
  v44 = sub_1003CEC3C(v41, &v125);
  v105 = 0;
  v107 = v44;
  v45 = v109;
  if (!*(v44 + 2) && v39[2])
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000C4AC(v46, qword_10097B528);
    v47 = v42;
    sub_1002940CC(v45, v42);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v124[0] = v51;
      *v50 = 136315138;
      v117 = sub_10032B99C();
      v53 = v52;
      sub_1003DEB88(v47, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v54 = sub_10000C4E4(v117, v53, v124);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Conversion of media items for endpoint %s returned no results, falling back to initial URLs", v50, 0xCu);
      sub_10000C60C(v51);
    }

    else
    {

      sub_1003DEB88(v47, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    memset(v124, 0, 24);
    sub_10028088C(&qword_10097B620, &qword_1007FEA90);
    CheckedContinuation.resume(returning:)();
  }

  v106 = v43;
  v69 = v40[2];
  v113 = v7;
  if (v69)
  {
    v70 = v112 + 16;
    v71 = *(v112 + 16);
    v112 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v72 = v40 + v112;
    v73 = *(v70 + 56);
    v116 = (v115 + 1);
    v117 = v71;
    v115 = (v70 + 16);
    v111 = (v70 - 8);
    v27 = _swiftEmptyArrayStorage;
    v74 = v114;
    v75 = v108;
    v76 = v118;
    do
    {
      v77 = v70;
      (v117)(v76, v72, v75);
      v78 = v75;
      SFSecurityScopedURL.url.getter();
      v79 = URL.isFileURL.getter();
      (*v116)(v74, v7);
      if (v79)
      {
        (*v111)(v76, v78);
        v75 = v78;
      }

      else
      {
        v80 = *v115;
        (*v115)(v119, v76, v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v27;
        if (isUniquelyReferenced_nonNull_native)
        {
          v75 = v78;
        }

        else
        {
          sub_10028FE08(0, *(v27 + 2) + 1, 1);
          v75 = v108;
          v27 = v124[0];
        }

        v83 = *(v27 + 2);
        v82 = *(v27 + 3);
        if (v83 >= v82 >> 1)
        {
          sub_10028FE08((v82 > 1), v83 + 1, 1);
          v75 = v108;
          v27 = v124[0];
        }

        *(v27 + 2) = v83 + 1;
        v80(&v27[v112 + v83 * v73], v119, v75);
        v7 = v113;
        v74 = v114;
      }

      v72 += v73;
      v69 = (v69 - 1);
      v70 = v77;
    }

    while (v69);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v124[0] = v27;
  sub_1004038AC(v107);
  v84 = v124[0];
  v124[0] = _swiftEmptyArrayStorage;
  a2 = v120;
  v85 = v120 & 0xFFFFFFFFFFFFFF8;
  if (v120 >> 62)
  {
    v86 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v86 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = 0;
  v88 = a2 & 0xC000000000000001;
  v89 = _swiftEmptyArrayStorage;
  while (v86 != v87)
  {
    if (v88)
    {
      v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v87 >= *(v85 + 16))
      {
        goto LABEL_55;
      }

      v90 = *(v120 + 8 * v87 + 32);
    }

    v27 = v90;
    v91 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    a2 = [v90 conversionDestination];

    ++v87;
    if (a2)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v89 = v124[0];
      v87 = v91;
    }
  }

  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_10000C4AC(v92, qword_10097B528);
  v93 = v106;
  sub_1002940CC(v109, v106);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v124[0] = swift_slowAlloc();
    *v96 = 136315394;
    v97 = sub_10032DA30();
    v99 = v98;
    sub_1003DEB88(v93, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v100 = sub_10000C4E4(v97, v99, v124);

    *(v96 + 4) = v100;
    *(v96 + 12) = 2080;
    swift_beginAccess();
    sub_100010780(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v101 = Dictionary.description.getter();
    v103 = v102;

    v104 = sub_10000C4E4(v101, v103, v124);

    *(v96 + 14) = v104;
    _os_log_impl(&_mh_execute_header, v94, v95, "Conversion of media items for endpoint %s returned map of conversion needed: %s", v96, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1003DEB88(v93, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  swift_beginAccess();
  v121 = v84;
  v122 = v125;
  v123 = v89;
  sub_10028088C(&qword_10097B620, &qword_1007FEA90);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1003D7928@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10028088C(&qword_10097B548, &qword_1007FE968);
  __chkstk_darwin(v7 - 8);
  v62 = &v56 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v61 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = *a1;
  v22 = [v21 url];
  if (v22)
  {
    v58 = v3;
    v60 = a3;
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v10 + 16);
    v63 = v20;
    v59 = v9;
    v24(v18);
    v25 = [v21 conversionNeeded];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 BOOLValue];
    }

    else
    {
      v27 = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *a2;
    *a2 = 0x8000000000000000;
    sub_10057B0E4(v27, v18, isUniquelyReferenced_nonNull_native);
    v31 = *(v10 + 8);
    v32 = v18;
    v33 = v59;
    v31(v32, v59);
    *a2 = v64;

    v34 = v63;
    (v24)(v15, v63, v33);
    v35 = v62;
    v36 = v58;
    SFSecurityScopedURL.init(_:readWrite:)();
    if (v36)
    {
      v58 = v31;
      v62 = (v10 + 8);
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000C4AC(v37, qword_10097B528);
      v38 = v61;
      v39 = v63;
      (v24)(v61, v63, v33);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v33;
        v43 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v64 = v57;
        *v43 = 136315394;
        sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v38;
        v47 = v46;
        v48 = v58;
        v58(v45, v42);
        v49 = sub_10000C4E4(v44, v47, &v64);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2112;
        swift_errorRetain();
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 14) = v50;
        v51 = v56;
        *v56 = v50;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failed to get security scoped URL for URL: %s. Error: %@", v43, 0x16u);
        sub_100005508(v51, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v57);

        v48(v63, v42);
      }

      else
      {

        v53 = v58;
        v58(v38, v33);
        v53(v39, v33);
      }

      v54 = v60;
      v55 = type metadata accessor for SFSecurityScopedURL();
      return (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
    }

    else
    {
      v31(v34, v33);
      v52 = type metadata accessor for SFSecurityScopedURL();
      (*(*(v52 - 8) + 56))(v35, 0, 1, v52);
      return sub_10002C4E4(v35, v60, &qword_10097B548, &qword_1007FE968);
    }
  }

  else
  {
    v28 = type metadata accessor for SFSecurityScopedURL();
    return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
  }
}

uint64_t sub_1003D7F44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000276B4(0, &qword_10097B628, off_1008C8CE8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_1003D7FE8@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  v3 = [v1 isiWorkDocument];

  return v3;
}

uint64_t Sequence<>.markAllRecent()(void (**a1)(char *, char *, uint64_t), uint64_t a2)
{
  v4 = sub_10028088C(&unk_100989330, &qword_1007FE960);
  __chkstk_darwin(v4 - 8);
  v98 = &v81 - v5;
  v96 = type metadata accessor for SFSandboxTokenURLPair();
  v90 = *(v96 - 8);
  v6 = __chkstk_darwin(v96);
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v85 = &v81 - v9;
  __chkstk_darwin(v8);
  v84 = &v81 - v10;
  v11 = sub_10028088C(&qword_10097B548, &qword_1007FE968);
  __chkstk_darwin(v11 - 8);
  v97 = &v81 - v12;
  v99 = type metadata accessor for SFSecurityScopedURL();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v111 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v109 = &v81 - v18;
  __chkstk_darwin(v17);
  v20 = &v81 - v19;
  v21 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v22 = __chkstk_darwin(v21 - 8);
  v110 = &v81 - v23;
  v24 = *(a1 - 1);
  __chkstk_darwin(v22);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a2;
  v112 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v29 = &v81 - v28;
  v30 = type metadata accessor for SFPlatform();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v34 = static SFPlatform.isPlatform(_:)();
  result = (*(v31 + 8))(v33, v30);
  if (v34)
  {
    (*(v24 + 16))(v26, v107, v112);
    dispatch thunk of Sequence.makeIterator()();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = v110;
    v38 = v29;
    v108 = AssociatedConformanceWitness;
    dispatch thunk of IteratorProtocol.next()();
    v39 = v111;
    v106 = *(v111 + 48);
    v107 = v111 + 48;
    if (v106(v37, 1, v14) == 1)
    {
      v86 = _swiftEmptyArrayStorage;
    }

    else
    {
      v41 = 0;
      v43 = *(v39 + 32);
      v42 = v39 + 32;
      v112 = (v42 - 16);
      v102 = (v101 + 7);
      v103 = v43;
      v93 = (v101 + 4);
      v92 = v101 + 1;
      v91 = (v90 + 56);
      v101 = (v42 - 24);
      v83 = (v90 + 32);
      v82 = (v90 + 16);
      v86 = _swiftEmptyArrayStorage;
      v81 = v90 + 8;
      *&v40 = 136315138;
      v95 = v40;
      v45 = v97;
      v44 = v98;
      v113 = v20;
      v111 = v42;
      v104 = v38;
      v105 = AssociatedTypeWitness;
      do
      {
        v46 = v99;
        v47 = v88;
        while (1)
        {
          v103(v20, v37, v14);
          v50 = *v112;
          (*v112)(v109, v20, v14);
          SFSecurityScopedURL.init(_:readWrite:)();
          if (!v41)
          {
            break;
          }

          (*v102)(v45, 1, 1, v46);
          sub_100005508(v45, &qword_10097B548, &qword_1007FE968);
          v41 = 0;
          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_10000C4AC(v51, qword_10097B528);
          v50(v47, v20, v14);
          v52 = Logger.logObject.getter();
          v53 = v47;
          v54 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v52, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v114 = v56;
            *v55 = v95;
            sub_100010780(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v57 = dispatch thunk of CustomStringConvertible.description.getter();
            v59 = v58;
            v100 = 0;
            v60 = *v101;
            (*v101)(v53, v14);
            v61 = sub_10000C4E4(v57, v59, &v114);
            v46 = v99;

            *(v55 + 4) = v61;
            _os_log_impl(&_mh_execute_header, v52, v54, "Failed to get security scoped url %s", v55, 0xCu);
            sub_10000C60C(v56);
            v44 = v98;

            v60(v113, v14);
            v41 = v100;
            v45 = v97;
          }

          else
          {

            v48 = *v101;
            (*v101)(v53, v14);
            v48(v113, v14);
          }

          v47 = v53;
          v37 = v110;
          dispatch thunk of IteratorProtocol.next()();
          v49 = v106(v37, 1, v14);
          v42 = v111;
          v20 = v113;
          if (v49 == 1)
          {
            v38 = v104;
            AssociatedTypeWitness = v105;
            goto LABEL_22;
          }
        }

        (*v102)(v45, 0, 1, v46);
        (*v93)(v94, v45, v46);
        static SFSecurityScopedURL.consumeSandboxToken(item:)();
        v62 = v96;
        (*v91)(v44, 0, 1, v96);
        v63 = *v83;
        v64 = v84;
        (*v83)(v84, v44, v62);
        (*v82)(v85, v64, v62);
        v65 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_10028E7D4(0, v65[2] + 1, 1, v65);
        }

        v86 = v65;
        v67 = v65[2];
        v66 = v65[3];
        v100 = 0;
        v68 = v42;
        if (v67 >= v66 >> 1)
        {
          v86 = sub_10028E7D4((v66 > 1), v67 + 1, 1, v86);
        }

        v69 = v90;
        v70 = v96;
        (*(v90 + 8))(v84, v96);
        (*v92)(v94, v99);
        v71 = v113;
        (*v101)(v113, v14);
        v72 = v86;
        v86[2] = v67 + 1;
        v63(&v72[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67], v85, v70);
        v37 = v110;
        v38 = v104;
        AssociatedTypeWitness = v105;
        dispatch thunk of IteratorProtocol.next()();
        v73 = v106(v37, 1, v14);
        v42 = v68;
        v20 = v71;
        v41 = v100;
      }

      while (v73 != 1);
    }

LABEL_22:
    (*(v89 + 8))(v38, AssociatedTypeWitness);
    v74 = v86[2];
    if (v74)
    {
      v75 = *(v90 + 16);
      v76 = v86 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v77 = *(v90 + 72);
      v78 = (v90 + 8);
      v79 = v96;
      v80 = v87;
      do
      {
        v75(v80, v76, v79);
        SFSandboxTokenURLPair.releaseSandboxExtension()();
        (*v78)(v80, v79);
        v76 += v77;
        --v74;
      }

      while (v74);
    }
  }

  return result;
}

uint64_t sub_1003D8D18(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      v9._countAndFlagsBits = 95;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = v6;
      v10._object = v7;
      String.append(_:)(v10);

      if (v8 > 1 || (a2 & 1) != 0)
      {
        v5._countAndFlagsBits = 0x4C4152554C505FLL;
        v5._object = 0xE700000000000000;
        String.append(_:)(v5);
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v11._countAndFlagsBits = 0x4C4154495041435FLL;
    v11._object = 0xEC00000044455A49;
    String.append(_:)(v11);
  }

  v12._countAndFlagsBits = 0x545845545FLL;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  return 0x545F4E5245444F4DLL;
}

void sub_1003D8E44(uint64_t a1, char a2)
{
  v3 = type metadata accessor for SFPlatform();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v11 == 1)
  {
    v12 = SFAirDropReceive.AskRequest.files.getter();
    if (*(v12 + 16))
    {
      (*(v8 + 16))(v10, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      v13 = SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
      v15 = v14;
      (*(v8 + 8))(v10, v7);
      static SFPlatform.macOS.getter();
      v16 = static SFPlatform.isPlatform(_:)();
      (*(v4 + 8))(v6, v3);
      if ((v16 & 1) != 0 || (v17 = String._bridgeToObjectiveC()(), v18 = SFTruncateAirDropFilenameForUI(), v17, !v18))
      {

        v20 = v15;
      }

      else
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      inited = swift_initStackObject();
      v31 = xmmword_1007F5670;
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = 0xD000000000000017;
      v22 = inited + 32;
      *(inited + 40) = 0x800000010078E8F0;
      *(inited + 48) = 1;
      sub_1003D8D18(inited, a2 & 1);
      swift_setDeallocating();
      sub_100005508(v22, &qword_100981D40, &unk_1007FA6C0);
      v23 = String._bridgeToObjectiveC()();
      v24 = SFLocalizedStringForKey();

      if (v24)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v25 = swift_allocObject();
        *(v25 + 16) = v31;
        *(v25 + 56) = &type metadata for String;
        *(v25 + 64) = sub_100026764();
        *(v25 + 32) = v13;
        *(v25 + 40) = v20;
LABEL_12:
        static String.localizedStringWithFormat(_:_:)();

        return;
      }

      goto LABEL_14;
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v26 = swift_initStackObject();
  v31 = xmmword_1007F5670;
  *(v26 + 16) = xmmword_1007F5670;
  *(v26 + 32) = 0x5F434952454E4547;
  v27 = v26 + 32;
  *(v26 + 40) = 0xEC000000454C4946;
  *(v26 + 48) = v11;
  sub_1003D8D18(v26, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v27, &qword_100981D40, &unk_1007FA6C0);
  v28 = String._bridgeToObjectiveC()();
  v29 = SFLocalizedStringForKey();

  if (v29)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v30 = swift_allocObject();
    *(v30 + 16) = v31;
    *(v30 + 56) = &type metadata for Int;
    *(v30 + 64) = &protocol witness table for Int;
    *(v30 + 32) = v11;
    goto LABEL_12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void *sub_1003D92E8()
{
  v0 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSMutableOrderedSet) init];
  v5 = SFAirDropReceive.AskRequest.files.getter();
  v95 = *(v5 + 16);
  if (v95)
  {
    v93 = objc_opt_self();
    v94 = v0;
    v6 = 0;
    v85 = 0;
    v92 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v90 = v1 + 8;
    v91 = v1 + 16;
    *&v7 = 138412290;
    v84 = v7;
    v88 = v5;
    v89 = v1;
    v87 = v3;
    while (v6 < *(v5 + 16))
    {
      v11 = v4;
      v12 = v94;
      (*(v1 + 16))(v3, v92 + *(v1 + 72) * v6, v94);
      v97 = [objc_allocWithZone(NSMutableOrderedSet) init];
      SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
      v13 = v3;
      v14 = v1;
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v15 = String._bridgeToObjectiveC()();

      v16 = String._bridgeToObjectiveC()();

      v17 = [v93 documentProxyForName:v15 type:v16 MIMEType:0];

      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v18 = *(v14 + 8);
      v3 = v13;
      v18(v13, v12);
      v19 = String._bridgeToObjectiveC()();

      LOBYTE(v15) = SFIsCoreType();

      v96 = v6;
      v98 = v17;
      if (v15)
      {
        v4 = v11;
        v20 = v97;
      }

      else
      {
        v99 = 0;
        v21 = [v17 availableClaimBindingsForMode:1 error:&v99];
        v22 = v99;
        v4 = v11;
        if (v21)
        {
          v23 = v21;
          sub_1000276B4(0, &qword_10097B610, LSClaimBinding_ptr);
          v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v22;

          v99 = _swiftEmptyArrayStorage;
          if (v24 >> 62)
          {
            v26 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v27 = 0;
          v28 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v26 == v27)
            {

              sub_100468200(v28);

              isa = Array._bridgeToObjectiveC()().super.isa;

              v20 = v97;
              [v97 addObjectsFromArray:isa];

              v3 = v87;
              v5 = v88;
              v17 = v98;
              goto LABEL_29;
            }

            if ((v24 & 0xC000000000000001) != 0)
            {
              v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v29 = *(v24 + 8 * v27 + 32);
            }

            v30 = v29;
            v31 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            v32 = [v29 bundleRecord];

            ++v27;
            if (v32)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v28 = v99;
              v27 = v31;
            }
          }

          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          break;
        }

        v34 = v99;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v85 = 0;
        v35 = type metadata accessor for Logger();
        sub_10000C4AC(v35, qword_10097B528);
        swift_errorRetain();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = v84;
          swift_errorRetain();
          v40 = _swift_stdlib_bridgeErrorToNSError();
          *(v38 + 4) = v40;
          *v39 = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "Failed to get airdrop available applications for opening: %@", v38, 0xCu);
          sub_100005508(v39, &qword_100975400, &qword_1007F65D0);
        }

        else
        {
        }

        v5 = v88;
        v20 = v97;
        v3 = v13;
      }

LABEL_29:
      v41 = v20;
      v42 = [v41 set];
      v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = *(v43 + 16);

      if (!v44)
      {
        v99 = 0;
        v45 = [v17 availableClaimBindingsReturningError:&v99];
        v46 = v99;
        if (v45)
        {
          v47 = v45;
          sub_1000276B4(0, &qword_10097B610, LSClaimBinding_ptr);
          v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v46;

          v99 = _swiftEmptyArrayStorage;
          v86 = v4;
          if (v48 >> 62)
          {
            v50 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v51 = 0;
          v52 = _swiftEmptyArrayStorage;
          while (v50 != v51)
          {
            if ((v48 & 0xC000000000000001) != 0)
            {
              v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v51 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_67;
              }

              v53 = *(v48 + 8 * v51 + 32);
            }

            v54 = v53;
            v4 = (v51 + 1);
            if (__OFADD__(v51, 1))
            {
              goto LABEL_66;
            }

            v55 = [v53 bundleRecord];

            ++v51;
            if (v55)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v52 = v99;
              v51 = v4;
            }
          }

          sub_100468200(v52);

          v56 = Array._bridgeToObjectiveC()().super.isa;

          [v41 addObjectsFromArray:v56];

          v4 = v86;
          v3 = v87;
          v5 = v88;
        }

        else
        {
          v57 = v99;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v85 = 0;
          v58 = type metadata accessor for Logger();
          sub_10000C4AC(v58, qword_10097B528);
          swift_errorRetain();
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = v84;
            swift_errorRetain();
            v63 = _swift_stdlib_bridgeErrorToNSError();
            *(v61 + 4) = v63;
            *v62 = v63;
            _os_log_impl(&_mh_execute_header, v59, v60, "Failed to get airdrop available applications for opening: %@", v61, 0xCu);
            sub_100005508(v62, &qword_100975400, &qword_1007F65D0);
          }

          else
          {
          }

          v5 = v88;
        }
      }

      v64 = [v4 set];
      v65 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = *(v65 + 16);

      if (v66)
      {
        v67 = [v41 set];

        static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = Set._bridgeToObjectiveC()().super.isa;

        [v4 intersectSet:v9];
        v8 = v41;
        v10 = v98;
      }

      else
      {
        v8 = v4;
        v9 = v98;
        v10 = v41;
        v4 = v41;
      }

      v6 = v96 + 1;

      v1 = v89;
      if (v6 == v95)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_55:

    if (qword_1009737B0 == -1)
    {
      goto LABEL_56;
    }
  }

  swift_once();
LABEL_56:
  v68 = type metadata accessor for Logger();
  sub_10000C4AC(v68, qword_10097B528);
  v69 = v4;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v99 = v73;
    *v72 = 136315138;
    v74 = [v69 array];
    if (!v74)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = Array._bridgeToObjectiveC()().super.isa;
    }

    v75 = SFCompactStringFromCollection();

    if (v75)
    {
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;
    }

    else
    {
      v78 = 0x8000000100789F30;
      v76 = 0xD000000000000015;
    }

    v79 = sub_10000C4E4(v76, v78, &v99);

    *(v72 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v70, v71, "Generic handler found available applications %s", v72, 0xCu);
    sub_10000C60C(v73);
  }

  v80 = [v69 array];
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = sub_100468214(v81);

  return v82;
}

id sub_1003D9F30(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v39[-v7];
  __chkstk_darwin(v6);
  v10 = &v39[-v9];
  v11 = objc_opt_self();
  result = [v11 defaultWorkspace];
  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v14 = result;
  URL._bridgeToObjectiveC()(v13);
  v16 = v15;
  v17 = [v14 URLOverrideForURL:v15];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  }

  sub_10002C4E4(v8, v10, &unk_100974E00, &qword_1007F8940);
  result = [v11 defaultWorkspace];
  if (!result)
  {
    goto LABEL_27;
  }

  v20 = result;
  sub_10000FF90(v10, v5, &unk_100974E00, &qword_1007F8940);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v24 = 0;
  if ((*(v22 + 48))(v5, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v23);
    v24 = v25;
    (*(v22 + 8))(v5, v21);
  }

  v26 = [v20 applicationsAvailableForOpeningURL:v24];

  if (!v26)
  {
    goto LABEL_21;
  }

  sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v27 >> 62))
  {
    result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_20:

    goto LABEL_21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v27 & 0xC000000000000001) == 0)
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v27 + 32);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_26;
  }

  v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v29 = v28;

  v30 = [v29 correspondingApplicationRecord];

  if (!v30)
  {
LABEL_21:
    sub_100005508(v10, &unk_100974E00, &qword_1007F8940);
    return 0;
  }

  v31 = v30;
  v32 = [v30 bundleIdentifier];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v40[0] = v34;
    v40[1] = v36;
    __chkstk_darwin(v37);
    *&v39[-16] = v40;
    v38 = sub_10039026C(sub_100345B28, &v39[-32], a1);
    sub_100005508(v10, &unk_100974E00, &qword_1007F8940);

    result = v31;
    if (v38)
    {
      return result;
    }
  }

  else
  {
    sub_100005508(v10, &unk_100974E00, &qword_1007F8940);
  }

  return 0;
}

void sub_1003DA3B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a4;
  v52[1] = a3;
  v53 = type metadata accessor for URL();
  v5 = *(v53 - 8);
  v6 = __chkstk_darwin(v53);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v52 - v9;
  v11 = type metadata accessor for SFAirDrop.TransferType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropSend.Request.type.getter();
  v15 = (*(v12 + 88))(v14, v11);
  v16 = enum case for SFAirDrop.TransferType.links(_:);
  (*(v12 + 8))(v14, v11);
  if (v15 == v16 && *(a2 + 16))
  {
    type metadata accessor for SFSecurityScopedURL();
    SFSecurityScopedURL.url.getter();
    v17 = v5;
    v18 = v10;
    v19 = v53;
    (*(v5 + 32))(v10, v8, v53);
    URL.scheme.getter();
    if (v20)
    {
      String.lowercased()();

      v21 = String._bridgeToObjectiveC()();

      v22 = SFIsCredential();

      if ((v22 & 1) != 0 || (URL._bridgeToObjectiveC()(v23), v25 = v24, v26 = SFIsPasskeyCredentialLink(), v25, v26))
      {
        if ((sub_10032F010() & 1) == 0)
        {
          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          sub_10000C4AC(v40, qword_10097B528);
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v41, v42, "AirDrop unavailable - password / passkey unsupported", v43, 2u);
          }

          URL._bridgeToObjectiveC()(v44);
          v46 = v45;
          v47 = SFIsPasskeyCredentialLink();

          _sSo11SFUserAlertC16DaemoniOSLibraryE015credentialShareB09isPasskeyABSb_tFZ_0(v47);
          v49 = v48;
          [v48 present];
          v50 = type metadata accessor for SFAirDropSend.Failure();
          sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
          swift_allocError();
          (*(*(v50 - 8) + 104))(v51, enum case for SFAirDropSend.Failure.badRequest(_:), v50);
          swift_willThrow();

          (*(v17 + 8))(v18, v19);
          return;
        }
      }
    }

    (*(v5 + 8))(v10, v19);
  }

  v27 = v54;
  if ([v54 wirelessCarPlay])
  {
    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097B528);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "AirDrop unavailable - wireless CarPlay connected", v31, 2u);
    }

    _sSo11SFUserAlertC16DaemoniOSLibraryE07carPlayB0AByFZ_0();
  }

  else
  {
    if ([v27 isAirDropAllowed])
    {
      return;
    }

    if (qword_1009737B0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_10097B528);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "AirDrop unavailable - MDM restricted", v36, 2u);
    }

    _sSo11SFUserAlertC16DaemoniOSLibraryE03mdmB0AByFZ_0();
  }

  v37 = v32;
  [v32 present];
  v38 = type metadata accessor for SFAirDropSend.Failure();
  sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v38 - 8) + 104))(v39, enum case for SFAirDropSend.Failure.badRequest(_:), v38);
  swift_willThrow();
}

uint64_t sub_1003DAA70(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032F010();
  sub_1002940CC(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      goto LABEL_6;
    }

    sub_1003DEB88(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 0;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_6:
      sub_1003DEB88(v7, v9);
      return 0;
    }

    sub_10000EDE0(v7, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v11 = *v4;

    sub_1003DEB88(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    return v11;
  }
}

uint64_t sub_1003DAC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for SFSecurityScopedURL();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DADD8, v9, 0);
}

uint64_t sub_1003DADD8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
LABEL_31:

    v44 = *(v0 + 8);

    return v44(v3);
  }

  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  sub_10028FAB4(0, v2, 0);
  v6 = *(v5 + 16);
  v5 += 16;
  v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v46 = *(v5 + 56);
  v47 = v6;
  v8 = (v5 - 8);
  v45 = v2;
  v9 = v0;
  do
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    v47(v10, v7, v11);
    SFSecurityScopedURL.url.getter();
    (*v8)(v10, v11);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_10028FAB4((v12 > 1), v13 + 1, 1);
    }

    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    _swiftEmptyArrayStorage[2] = v13 + 1;
    (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v14, v15);
    v7 += v46;
    --v2;
  }

  while (v2);
  sub_1003DA3B0(*(v0 + 24), *(v0 + 32), *(v0 + 56), *(v0 + 64));
  v16 = *(v0 + 48);
  sub_1003DAA70(*(v9 + 56));
  v18 = v17;
  v20 = v19;
  sub_100467F54(_swiftEmptyArrayStorage);

  v21 = v9;
  v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (!v16)
  {
    v0 = v21;
    v23 = 0;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v0 = v21;
  v23 = String._bridgeToObjectiveC()();
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = String._bridgeToObjectiveC()();

LABEL_11:
  v25 = [objc_opt_self() preprocessItems:v22.super.isa forClientBundleID:v23 receiverIdentifier:v24 receiverSupportsURLs:v20 & 1 receiverIsUnknown:(v20 >> 8) & 1];

  if ([v25 success])
  {
    v26 = [v25 files];
    if (v26)
    {
      v27 = v26;
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = [v25 links];
      if (v29)
      {
        v30 = v29;
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100403790(v28);
        *(v0 + 16) = v31;
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        sub_100011630(&qword_100977C10, &qword_100975610, &qword_1007F89B0, &protocol conformance descriptor for [A]);
        v3 = RandomAccessCollection<>.securityScopedURLs.getter();

        if (v3[2])
        {
        }

        else
        {

          if (qword_1009737B0 != -1)
          {
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          sub_10000C4AC(v40, qword_10097B528);

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 134217984;
            *(v43 + 4) = v45;

            _os_log_impl(&_mh_execute_header, v41, v42, "Preprocessing URLs returned no items, although we were given %ld URLs. Falling back to initial URLs", v43, 0xCu);
          }

          else
          {
          }

          v3 = *(v0 + 32);
        }

        goto LABEL_31;
      }
    }
  }

  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000C4AC(v32, qword_10097B528);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Failed to preprocess items", v35, 2u);
  }

  v36 = type metadata accessor for SFAirDropSend.Failure();
  sub_100010780(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, enum case for SFAirDropSend.Failure.badRequest(_:), v36);
  swift_willThrow();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1003DB480(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for URL();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DB588, v4, 0);
}

uint64_t sub_1003DB588()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 112);
    v4 = [v2 applicationState];
    v5 = [v4 isInstalled];

    v6 = *(v0 + 112);
    if (v5)
    {
      v7 = [v2 applicationState];
      v8 = [v7 isRestricted];

      v9 = v8 ^ 1;
    }

    else
    {

      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = [*(v0 + 112) bundleIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v0 + 168) = v12;
    *(v0 + 176) = v14;
    if (v9)
    {
      v15 = sub_100292D28(&off_1008D78B8);
      sub_10032B298(&unk_1008D78D8);
      sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v17;
      *(inited + 48) = 1;
      *(v0 + 184) = sub_100281D9C(inited);
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
      *(v0 + 192) = [objc_allocWithZone(NSOperationQueue) init];
      *(v0 + 200) = [objc_opt_self() defaultWorkspace];
      v18 = sub_100569230(v12, v14, v15);
      *(v0 + 301) = v18 & 1;

      *(v0 + 88) = &_swiftEmptyDictionarySingleton;
      if ((v18 & 1) == 0)
      {
        goto LABEL_23;
      }

      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_10097B528);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Receive needs openInPlace - fetching URL bookmarks", v22, 2u);
      }

      v23 = *(v0 + 120);

      v24 = *(v23 + 16);
      *(v0 + 208) = v24;
      if (v24)
      {
        v25 = *(v0 + 136);
        v26 = *(v0 + 120);
        v27 = sub_100010780(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
        *(v0 + 216) = v27;
        v28 = *(v25 + 16);
        v25 += 16;
        v29 = *(v25 + 64);
        *(v0 + 296) = v29;
        *(v0 + 224) = *(v25 + 56);
        *(v0 + 232) = v28;
        *(v0 + 240) = 0;
        *(v0 + 248) = &_swiftEmptyDictionarySingleton;
        v30 = *(v0 + 168);
        v31 = *(v0 + 176);
        v33 = *(v0 + 152);
        v32 = *(v0 + 160);
        v34 = *(v0 + 128);
        *(v0 + 256) = v25 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v28(v33, v26 + ((v29 + 32) & ~v29), v34);
        v35 = swift_task_alloc();
        *(v0 + 264) = v35;
        v35[2] = v33;
        v35[3] = v30;
        v35[4] = v31;
        v36 = swift_task_alloc();
        *(v0 + 272) = v36;
        v37 = sub_10028088C(&qword_100975100, &qword_1007FBA10);
        *v36 = v0;
        v36[1] = sub_1003DBBFC;
        v38 = sub_1003DE608;
        v39 = (v0 + 72);
        v40 = 0xD00000000000001CLL;
        v41 = 0x800000010078E9B0;
        v42 = v32;
        v43 = v27;
        v44 = v35;
      }

      else
      {
LABEL_23:
        v52 = *(v0 + 301);
        v54 = *(v0 + 192);
        v53 = *(v0 + 200);
        v55 = *(v0 + 168);
        v61 = *(v0 + 160);
        v56 = *(v0 + 120);
        v57 = sub_100010780(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
        v58 = swift_task_alloc();
        *(v0 + 280) = v58;
        v59 = *(v0 + 176);
        *(v58 + 16) = v56;
        *(v58 + 24) = v52;
        *(v58 + 32) = v0 + 88;
        *(v58 + 40) = v53;
        *(v58 + 48) = v55;
        *(v58 + 56) = v59;
        *(v58 + 72) = v54;
        v60 = swift_task_alloc();
        *(v0 + 288) = v60;
        *v60 = v0;
        v60[1] = sub_1003DC244;
        v37 = &type metadata for Bool;
        v38 = sub_1003DE5D0;
        v39 = (v0 + 300);
        v41 = 0x800000010078E990;
        v42 = v61;
        v43 = v57;
        v40 = 0xD00000000000001ALL;
        v44 = v58;
      }

      return withCheckedContinuation<A>(isolation:function:_:)(v39, v42, v43, v40, v41, v38, v44, v37);
    }
  }

  v39 = [objc_opt_self() defaultWorkspace];
  if (!v39)
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v39, v42, v43, v40, v41, v38, v44, v37);
  }

  v45 = v39;
  v46 = *(v0 + 120);
  if (v46->_baseURL)
  {
    URL._bridgeToObjectiveC()(v46);
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = [*(v0 + 112) bundleIdentifier];
  [v45 _LSFailedToOpenURL:v48 withBundle:v49];

  v50 = *(v0 + 8);

  return v50(1);
}

uint64_t sub_1003DBBFC()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1003DBD28, v1, 0);
}

uint64_t sub_1003DBD28()
{
  v1 = *(v0 + 72);
  v2 = (v0 + 88);
  v3 = *(v0 + 80);
  (*(v0 + 232))(*(v0 + 144), *(v0 + 152), *(v0 + 128));
  if (v3)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 104) = v5;
    v7 = sub_100570988(v4);
    v9 = *(v5 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v8;
      if (*(v5 + 24) < v12)
      {
        v13 = *(v0 + 144);
        sub_100575798(v12, isUniquelyReferenced_nonNull_native);
        v7 = sub_100570988(v13);
        if ((v4 & 1) != (v14 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_12:
        v19 = *(v0 + 104);
        if (v4)
        {
LABEL_13:
          v25 = *(v0 + 136);
          v24 = *(v0 + 144);
          v26 = *(v0 + 128);
          v27 = (v19[7] + 16 * v7);
          *v27 = v1;
          v27[1] = v3;

          v23 = *(v25 + 8);
          v23(v24, v26);
LABEL_19:
          *v2 = v19;
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v28 = v7;
    sub_1002D0A58();
    v7 = v28;
    v19 = *(v0 + 104);
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_17:
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = *(v0 + 136);
    v18 = *(v0 + 144);
    v32 = *(v0 + 128);
    v19[(v7 >> 6) + 8] |= 1 << v7;
    v33 = v7;
    v30(v19[6] + v29 * v7, v18, v32);
    v34 = (v19[7] + 16 * v33);
    *v34 = v1;
    v34[1] = v3;
    v23 = *(v31 + 8);
    v23(v18, v32);
    v35 = v19[2];
    v11 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v11)
    {
      v19[2] = v36;
      goto LABEL_19;
    }

    __break(1u);
LABEL_27:
    sub_1002D0A58();
    v19 = *(v0 + 96);
    goto LABEL_10;
  }

  v16 = sub_100570988(*(v0 + 144));
  if ((v17 & 1) == 0)
  {
    v23 = *(*(v0 + 136) + 8);
    v23(*(v0 + 144), *(v0 + 128));
    v19 = *(v0 + 248);
    goto LABEL_20;
  }

  v18 = v16;
  v19 = *v2;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = v19;
  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_10:
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  v23 = *(*(v0 + 136) + 8);
  v23(v19[6] + *(v0 + 224) * v18, v22);

  sub_1002D4E90(v18, v19);
  v23(v21, v22);
  *(v0 + 88) = v19;
LABEL_20:
  v37 = *(v0 + 208);
  v38 = *(v0 + 240) + 1;
  v23(*(v0 + 152), *(v0 + 128));
  if (v38 == v37)
  {
    v39 = *(v0 + 301);
    v41 = *(v0 + 192);
    v40 = *(v0 + 200);
    v42 = *(v0 + 168);
    v67 = *(v0 + 160);
    v43 = *(v0 + 120);
    v44 = sub_100010780(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v45 = swift_task_alloc();
    *(v0 + 280) = v45;
    v46 = *(v0 + 176);
    *(v45 + 16) = v43;
    *(v45 + 24) = v39;
    *(v45 + 32) = v2;
    *(v45 + 40) = v40;
    *(v45 + 48) = v42;
    *(v45 + 56) = v46;
    *(v45 + 72) = v41;
    v47 = swift_task_alloc();
    *(v0 + 288) = v47;
    *v47 = v0;
    v47[1] = sub_1003DC244;
    v48 = &type metadata for Bool;
    v49 = sub_1003DE5D0;
    v50 = v0 + 300;
    v51 = 0x800000010078E990;
    v52 = v67;
    v53 = v44;
    v54 = 0xD00000000000001ALL;
    v55 = v45;
  }

  else
  {
    v56 = *(v0 + 232);
    v57 = *(v0 + 240) + 1;
    *(v0 + 240) = v57;
    *(v0 + 248) = v19;
    v58 = *(v0 + 216);
    v60 = *(v0 + 168);
    v59 = *(v0 + 176);
    v62 = *(v0 + 152);
    v61 = *(v0 + 160);
    v63 = *(v0 + 128);
    v64 = *(v0 + 120) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 224) * v57;
    *(v0 + 256) = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v56(v62, v64, v63);
    v65 = swift_task_alloc();
    *(v0 + 264) = v65;
    v65[2] = v62;
    v65[3] = v60;
    v65[4] = v59;
    v66 = swift_task_alloc();
    *(v0 + 272) = v66;
    v48 = sub_10028088C(&qword_100975100, &qword_1007FBA10);
    *v66 = v0;
    v66[1] = sub_1003DBBFC;
    v49 = sub_1003DE608;
    v54 = 0xD00000000000001CLL;
    v51 = 0x800000010078E9B0;
    v50 = v0 + 72;
    v52 = v61;
    v53 = v58;
    v55 = v65;
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v50, v52, v53, v54, v51, v49, v55, v48);
}

uint64_t sub_1003DC244()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1003DC3B0, v1, 0);
}

uint64_t sub_1003DC3B0()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 300);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1003DC438(uint64_t a1)
{
  v1[11] = a1;
  v2 = type metadata accessor for URLQueryItem();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for URLComponents();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v4 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v1[32] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003DC6E0, v6, 0);
}

uint64_t sub_1003DC6E0()
{
  if (qword_1009737B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097B528);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opening files with Files App for transfer", v4, 2u);
  }

  v5 = v0[11];

  v6 = *(v5 + 16);
  if (!v6)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No items to open with Files App", v20, 2u);
    }

    goto LABEL_28;
  }

  if (v6 == 1)
  {
    v7 = v0[30];
    v8 = v0[31];
    v10 = v0[23];
    v9 = v0[24];
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v0[2] = URL.absoluteString.getter();
    v0[3] = v12;
    v0[4] = 0x2F2F3A656C6966;
    v0[5] = 0xE700000000000000;
    v0[6] = 0xD000000000000012;
    v0[7] = 0x800000010078EA00;
    sub_10001229C();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    URL.init(string:)();

    sub_10000FF90(v8, v7, &unk_100974E00, &qword_1007F8940);
    if ((*(v9 + 48))(v7, 1, v10) == 1)
    {
      sub_100005508(v0[30], &unk_100974E00, &qword_1007F8940);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[31];
      if (v15)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Could not create Files launch URL", v17, 2u);
      }

      sub_100005508(v16, &unk_100974E00, &qword_1007F8940);
      goto LABEL_28;
    }

    v58 = v0[27];
    v59 = v0[23];
    v60 = v0[24];
    (*(v60 + 32))(v58, v0[30], v59);
    sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1007F5670;
    (*(v60 + 16))(v61 + v11, v58, v59);
    v0[10] = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    v63 = swift_task_alloc();
    v0[33] = v63;
    *v63 = v0;
    v63[1] = sub_1003DD210;
    v64 = v0[19];
    v65 = (v0 + 313);
  }

  else
  {
    v21 = v0[24];
    v81 = v0;
    v22 = v0[11];
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLQueryItem.init(name:value:)();
    sub_10028FBDC(0, v6, 0);
    v23 = *(v21 + 16);
    v21 += 16;
    v74 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v24 = v22 + v74;
    v78 = *(v21 + 56);
    v79 = v23;
    v25 = (v21 - 8);
    v26 = (v21 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v27 = v81[25];
      v28 = v81[23];
      v79(v27, v24, v28);
      v29 = URL.lastPathComponent.getter();
      v31 = v30;
      v32 = *v25;
      v81[35] = *v25;
      v81[36] = v26;
      v32(v27, v28);
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_10028FBDC((v33 > 1), v34 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[2 * v34];
      v35[4] = v29;
      v35[5] = v31;
      v24 += v78;
      --v6;
    }

    while (v6);
    v0 = v81;
    v36 = v81[28];
    v37 = v81[24];
    v76 = v81[29];
    v77 = v81[23];
    v38 = v81[14];
    v75 = v81[15];
    v39 = v81[12];
    v40 = v81[13];
    v81[8] = _swiftEmptyArrayStorage;
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
    BidirectionalCollection<>.joined(separator:)();

    URLQueryItem.init(name:value:)();

    sub_10028088C(&unk_100975000, &unk_1007FD260);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1007F8A70;
    v44 = v43 + v42;
    v45 = *(v40 + 16);
    v45(v44, v75, v39);
    v45(v44 + v41, v38, v39);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    sub_10000FF90(v76, v36, &unk_100974E00, &qword_1007F8940);
    if ((*(v37 + 48))(v36, 1, v77) == 1)
    {
      sub_100005508(v81[28], &unk_100974E00, &qword_1007F8940);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v81[29];
      v50 = v81[17];
      v51 = v81[18];
      v52 = v81[15];
      v80 = v81[16];
      v53 = v81[13];
      v54 = v81[14];
      v55 = v81[12];
      if (v48)
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Could not create Files launch URL", v56, 2u);
        v0 = v81;

        sub_100005508(v49, &unk_100974E00, &qword_1007F8940);
        v57 = *(v53 + 8);
        v57(v54, v55);
        v57(v52, v55);
      }

      else
      {

        sub_100005508(v49, &unk_100974E00, &qword_1007F8940);
        v71 = *(v53 + 8);
        v71(v54, v55);
        v71(v52, v55);
      }

      (*(v50 + 8))(v51, v80);
LABEL_28:

      v72 = v0[1];

      return v72(0);
    }

    v66 = v81[26];
    v67 = v81[23];
    (*(v81[24] + 32))(v66, v81[28], v67);
    sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1007F5670;
    v79(v68 + v74, v66, v67);
    v81[9] = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = 0;
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    v70 = swift_task_alloc();
    v81[37] = v70;
    *v70 = v81;
    v70[1] = sub_1003DD4D0;
    v64 = v81[19];
    v65 = v81 + 39;
  }

  return SFProgressTask.finalValue.getter(v65, v64);
}

uint64_t sub_1003DD210()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 272) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_1003DD7DC;
  }

  else
  {
    v7 = sub_1003DD398;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003DD398()
{
  v1 = *(v0 + 248);
  (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 184));
  sub_100005508(v1, &unk_100974E00, &qword_1007F8940);
  v4 = *(v0 + 313);

  v2 = *(v0 + 8);

  return v2(v4);
}

uint64_t sub_1003DD4D0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 304) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_1003DD914;
  }

  else
  {
    v7 = sub_1003DD658;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003DD658()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 96);
  (*(v0 + 280))(*(v0 + 208), *(v0 + 184));
  sub_100005508(v1, &unk_100974E00, &qword_1007F8940);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v3 + 8))(v2, v4);
  v12 = *(v0 + 312);

  v10 = *(v0 + 8);

  return v10(v12);
}

uint64_t sub_1003DD7DC()
{
  v1 = v0[31];
  (*(v0[24] + 8))(v0[27], v0[23]);
  sub_100005508(v1, &unk_100974E00, &qword_1007F8940);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_1003DD914()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 96);
  (*(v0 + 280))(*(v0 + 208), *(v0 + 184));
  sub_100005508(v1, &unk_100974E00, &qword_1007F8940);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_1003DDA98(uint64_t a1)
{
  URL.scheme.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = String.lowercased()();

  if (v2._countAndFlagsBits == 0x6D656D6563696F76 && v2._object == 0xEA0000000000736FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2._countAndFlagsBits == 0x736F746F6870 && v2._object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2._countAndFlagsBits == 0xD000000000000010 && 0x800000010078E930 == v2._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2._countAndFlagsBits == 0x786F62656F6873 && v2._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2._countAndFlagsBits == 0x736B636F7473 && v2._object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2._countAndFlagsBits == 0x6870656C69626F6DLL && v2._object == 0xEB00000000656E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2._countAndFlagsBits == 0x746361746E6F63 && v2._object == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v4 & 1;
  }
}