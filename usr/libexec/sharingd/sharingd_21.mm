uint64_t sub_1003A10C0()
{
  v1 = *(v0 + 960);
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
  *(v0 + 1544) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
  v3 = SFAirDropSend.Request.urls.getter();
  if (v3 && (v4 = *(v3 + 16), , v4))
  {
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    v5 = swift_task_alloc();
    *(v0 + 1552) = v5;
    *v5 = v0;
    v5[1] = sub_1003A1234;

    return sub_1003A4468(v1 + v2, 0, 0x300000000, v0 + 424);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 1600) = v7;
    *v7 = v0;
    v7[1] = sub_1003A1670;
    v8 = *(v0 + 1456);
    v9 = *(v0 + 1440);
    v10 = *(v0 + 1392);
    v11 = *(v0 + 1384);

    return sub_1003A8774(v0 + 168, v8, v9, v10, v11);
  }
}

uint64_t sub_1003A1234(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1560) = a1;
  *(v4 + 1568) = v1;

  v5 = *(v3 + 1536);
  if (v1)
  {
    v6 = sub_1003A3C38;
  }

  else
  {
    v6 = sub_1003A136C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003A136C()
{
  v1 = v0[120];
  v2 = swift_task_alloc();
  v0[197] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[198] = v3;
  *v3 = v0;
  v3[1] = sub_1003A143C;
  v4 = v0[195];
  v5 = v0[190];
  v6 = v0[184];

  return static SFSecurityScopedURL.withAccess<A>(to:body:)(v5, v4, &unk_1007FE520, v2, v6);
}

uint64_t sub_1003A143C()
{
  v2 = *v1;
  *(*v1 + 1592) = v0;

  v3 = *(v2 + 1536);

  if (v0)
  {
    v4 = sub_1003A3DB0;
  }

  else
  {
    v4 = sub_1003A15A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003A15A0()
{
  v1 = v0[185];
  v2 = *(v1 + 32);
  v2(v0[191], v0[190], v0[184]);
  v0[211] = v2;
  v0[210] = v1 + 32;
  sub_10047E40C();
  v3 = swift_task_alloc();
  v0[212] = v3;
  *v3 = v0;
  v3[1] = sub_1003A1F98;

  return sub_1003ACFD4(0);
}

uint64_t sub_1003A1670()
{
  v2 = *v1;
  v3 = *v1;
  v3[201] = v0;
  v4 = *(v3 + 172);
  v5 = *(v3 + 42);
  v25 = v2[22];
  v6 = v2[23];
  v7 = v2[24];
  v8 = v2[25];
  v9 = v2[26];
  v10 = *(v3 + 216);
  v23 = *(v3 + 17);
  v24 = *(v3 + 15);
  v21 = *(v3 + 16);
  v22 = *(v3 + 14);
  v11 = v2[36];

  if (v0)
  {
    v12 = v3[192];
    v13 = sub_1003A3F28;
  }

  else
  {
    v20 = v3[192];
    v14 = v3[173];
    *(v3 + 74) = v5;
    *(v3 + 300) = (v5 | (v4 << 32)) >> 32;
    v3[38] = v25;
    v3[39] = v6;
    v3[40] = v7;
    v3[41] = v8;
    v3[42] = v9;
    *(v3 + 344) = v10;
    *(v3 + 22) = v22;
    *(v3 + 23) = v24;
    *(v3 + 24) = v21;
    *(v3 + 25) = v23;
    v3[52] = v11;
    sub_100005508(v14, &qword_10097B1B8, &qword_1007FE4C0);
    v15 = *(v3 + 74);
    *(v3 + 1620) = *(v3 + 300);
    *(v3 + 404) = v15;
    v3[203] = v3[38];
    v16 = *(v3 + 49);
    *(v3 + 87) = *(v3 + 47);
    *(v3 + 89) = v16;
    v3[91] = v3[51];
    v17 = *(v3 + 41);
    *(v3 + 79) = *(v3 + 39);
    *(v3 + 81) = v17;
    v18 = *(v3 + 45);
    *(v3 + 83) = *(v3 + 43);
    *(v3 + 85) = v18;

    v13 = sub_1003A18EC;
    v12 = v20;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_1003A18EC()
{
  v1 = *(v0 + 1624);
  v14 = *(v0 + 1616) | (*(v0 + 1620) << 32);
  v2 = *(v0 + 1544);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 960);
  sub_10000ED78(*(v0 + 1456), *(v0 + 1464), _s10AskRequestVMa);
  sub_10000ED78(v4, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v6, v5, &qword_10097B1C0, &qword_1007FE4C8);
  v8 = *(v0 + 392);
  *(v0 + 592) = *(v0 + 376);
  *(v0 + 608) = v8;
  *(v0 + 624) = *(v0 + 408);
  v9 = *(v0 + 328);
  *(v0 + 528) = *(v0 + 312);
  *(v0 + 544) = v9;
  v10 = *(v0 + 360);
  *(v0 + 560) = *(v0 + 344);
  *(v0 + 576) = v10;
  v11 = v1;
  sub_1003C34C8(v0 + 312, v0 + 736);
  v12 = swift_task_alloc();
  *(v0 + 1632) = v12;
  *v12 = v0;
  v12[1] = sub_1003A1A6C;

  return sub_1003A4468(v7 + v2, v1, v14, v0 + 528);
}

uint64_t sub_1003A1A6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1640) = a1;
  *(v4 + 1648) = v1;

  v5 = *(v3 + 1624);
  v6 = *(v3 + 1536);
  sub_10030D74C(v4 + 312);

  if (v1)
  {
    v7 = sub_1003A40A0;
  }

  else
  {
    v7 = sub_1003A1BD0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003A1BD0()
{
  v1 = v0[203];
  v2 = v0[183];
  v3 = v0[181];
  v4 = v0[175];
  v5 = v0[120];
  v6 = swift_task_alloc();
  v0[207] = v6;
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v3;
  v6[6] = v0 + 79;
  v6[7] = v4;
  v7 = swift_task_alloc();
  v0[208] = v7;
  *v7 = v0;
  v7[1] = sub_1003A1CD4;
  v8 = v0[205];
  v9 = v0[189];
  v10 = v0[184];

  return static SFSecurityScopedURL.withAccess<A>(to:body:)(v9, v8, &unk_1007FE510, v6, v10);
}

uint64_t sub_1003A1CD4()
{
  v2 = *v1;
  *(*v1 + 1672) = v0;

  v3 = *(v2 + 1536);

  if (v0)
  {
    v4 = sub_1003A4284;
  }

  else
  {
    v4 = sub_1003A1E38;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003A1E38()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1480);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1464);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1400);

  sub_10030D74C(v0 + 312);
  v8 = *(v3 + 32);
  v8(v1, v2, v4);
  sub_100005508(v7, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v5, _s10AskRequestVMa);
  *(v0 + 1688) = v8;
  *(v0 + 1680) = v3 + 32;
  sub_10047E40C();
  v9 = swift_task_alloc();
  *(v0 + 1696) = v9;
  *v9 = v0;
  v9[1] = sub_1003A1F98;

  return sub_1003ACFD4(0);
}

uint64_t sub_1003A1F98()
{
  v1 = *(*v0 + 1536);

  return _swift_task_switch(sub_1003A20A8, v1, 0);
}

uint64_t sub_1003A20A8()
{
  (*(v0 + 1688))(*(v0 + 952), *(v0 + 1528), *(v0 + 1472));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A2388()
{
  v1 = *(*v0 + 1536);

  return _swift_task_switch(sub_1003A2498, v1, 0);
}

uint64_t sub_1003A2498()
{
  v1 = *(v0 + 1504);
  v52 = *(v0 + 1496);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v49 = *(v0 + 1376);
  v4 = *(v0 + 1352);
  v37 = *(v0 + 1344);
  v40 = *(v0 + 1248);
  v41 = *(v0 + 1240);
  v42 = *(v0 + 1216);
  v44 = *(v0 + 1208);
  v46 = *(v0 + 1200);
  v35 = *(v0 + 1232);
  v36 = *(v0 + 1056);
  v38 = *(v0 + 1048);
  v39 = *(v0 + 1224);
  v5 = *(v0 + 960);
  v6 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v7(v1, v5 + v6, v3);
  SFAirDropSend.Transfer.id.getter();
  v8 = *(v2 + 8);
  v8(v1, v3);
  v7(v52, v5 + v6, v3);
  SFAirDropSend.Transfer.startDate.getter();
  v51 = v8;
  v8(v52, v3);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v9 = *(v4 + 16);
  *(v0 + 1720) = v9;
  *(v0 + 1728) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10 = v49;
  v50 = v9;
  v9(v35, v10, v37);
  *(v0 + 1808) = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:);
  v11 = *(v36 + 104);
  *(v0 + 1736) = v11;
  *(v0 + 1744) = (v36 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v35);
  (*(v36 + 56))(v35, 0, 1, v38);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v40 + 56))(v39, 0, 1, v41);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  SFAirDropSend.Request.type.getter();
  LOBYTE(v1) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v12 = *(v44 + 8);
  *(v0 + 1752) = v12;
  *(v0 + 1760) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v42, v46);
  if ((v1 & 1) == 0)
  {
    v13 = *(v0 + 1368);
    v14 = *(v0 + 1352);
    v15 = *(v0 + 1344);
    v16 = *(v0 + 960);
    (*(v14 + 104))(v13, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v15);
    v17 = static SFAirDropSend.Failure.== infix(_:_:)();
    (*(v14 + 8))(v13, v15);
    v18 = *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
    ObjectType = swift_getObjectType();
    if (v17)
    {
      v20 = 5;
    }

    else
    {
      v20 = 4;
    }

    (*(v18 + 16))(v20, ObjectType, v18);
  }

  v47 = *(v0 + 1504);
  v48 = *(v0 + 1472);
  v21 = *(v0 + 1376);
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1312);
  v24 = *(v0 + 1304);
  v25 = *(v0 + 1296);
  v26 = *(v0 + 1192);
  v27 = *(v0 + 1184);
  v28 = *(v0 + 1176);
  v43 = *(v0 + 1488);
  v45 = *(v0 + 1168);
  v29 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
  (*(v24 + 16))(v26, v23, v25);
  v50(&v26[v29], v21, v22);
  (*(v27 + 104))(v26, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v28);
  sub_100335364(v26, v43);
  (*(v27 + 8))(v26, v28);
  v30 = type metadata accessor for SFNWInterfaceType();
  *(v0 + 1768) = v30;
  v31 = *(v30 - 8);
  *(v0 + 1776) = v31;
  v32 = *(v31 + 56);
  *(v0 + 1784) = v32;
  *(v0 + 1792) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v32(v45, 1, 1, v30);
  sub_100335980(v45, v47);
  sub_100005508(v45, &qword_100977DC0, &unk_1007FB320);
  v51(v47, v48);
  v33 = swift_task_alloc();
  *(v0 + 1800) = v33;
  *v33 = v0;
  v33[1] = sub_1003A29DC;

  return sub_100334168();
}

uint64_t sub_1003A29DC()
{
  v1 = *(*v0 + 1536);

  return _swift_task_switch(sub_1003A2AEC, v1, 0);
}

uint64_t sub_1003A2AEC()
{
  v134 = v0;
  v1 = *(v0 + 960);
  (*(*(v0 + 1136) + 16))(*(v0 + 1144), v1 + *(v0 + 1544), *(v0 + 1128));
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection;
  v3 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection);
  if (v3)
  {
    v4 = *(v0 + 1120);
    v5 = *(v0 + 1104);
    v6 = *(v0 + 976);
    v7 = *(v0 + 968);
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v4, v3 + v8, v7);
    (*(v6 + 56))(v4, 0, 1, v7);
    sub_1003C36B0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v9 = 0;
  }

  else
  {
    v9 = 1;
    (*(*(v0 + 976) + 56))(*(v0 + 1120), 1, 1, *(v0 + 968));
  }

  (*(*(v0 + 1416) + 56))(*(v0 + 1104), v9, 1, *(v0 + 1408));

  CurrentValueSubject.value.getter();

  v132 = *(v0 + 944);
  v10 = *(v1 + v2);
  if (v10)
  {
    v11 = *(v0 + 1776);
    v12 = *(v0 + 1768);
    v13 = *(v0 + 1160);
    v14 = *(v0 + 1088);
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    swift_beginAccess();
    sub_10000FF90(v10 + v15, v14, &qword_100977BB0, &qword_1007FADE0);
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    swift_beginAccess();
    (*(v11 + 16))(v13, v10 + v16, v12);
    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 1088);
    v19 = _s13UploadRequestVMa(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v17 = 1;
  }

  v128 = *(v0 + 1736);
  v20 = *(v0 + 1808);
  v21 = *(v0 + 1720);
  v22 = *(v0 + 1376);
  v23 = *(v0 + 1344);
  v24 = *(v0 + 1088);
  v25 = *(v0 + 1080);
  v26 = *(v0 + 1072);
  v27 = *(v0 + 1048);
  (*(v0 + 1784))(*(v0 + 1160), v17, 1, *(v0 + 1768));
  v21(v26, v22, v23);
  v128(v26, v20, v27);
  sub_10000FF90(v24, v25, &qword_100977BB0, &qword_1007FADE0);
  v28 = _s13UploadRequestVMa(0);
  v29 = (*(*(v28 - 8) + 48))(v25, 1, v28);
  v30 = *(v0 + 1080);
  if (v29 == 1)
  {
    sub_100005508(v30, &qword_100977BB0, &qword_1007FADE0);
  }

  else
  {
    sub_1003C41CC(v30, _s13UploadRequestVMa);
  }

  v31 = *(v0 + 1776);
  v32 = *(v0 + 1768);
  v33 = *(v0 + 1152);
  sub_10000FF90(*(v0 + 1160), v33, &qword_100977DC0, &unk_1007FB320);
  if ((*(v31 + 48))(v33, 1, v32) == 1)
  {
    sub_100005508(*(v0 + 1152), &qword_100977DC0, &unk_1007FB320);
  }

  else
  {
    v34 = *(v0 + 1776);
    v35 = *(v0 + 1768);
    v36 = *(v0 + 1152);
    SFNWInterfaceType.description.getter();
    (*(v34 + 8))(v36, v35);
  }

  v125 = *(v0 + 1808);
  v37 = *(v0 + 1280);
  v38 = *(v0 + 1272);
  v39 = *(v0 + 1264);
  v118 = *(v0 + 1072);
  v40 = *(v0 + 1056);
  v121 = *(v0 + 1048);
  v123 = *(v0 + 1064);
  v41 = *(v0 + 1040);
  v42 = *(v0 + 1032);
  v43 = *(v0 + 1024);
  sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = 0x726566736E617274;
  *(inited + 40) = 0xEA00000000004449;
  SFAirDropSend.Request.id.getter();
  SFAirDrop.TransferIdentifier.id.getter();
  (*(v38 + 8))(v37, v39);
  UUID.uuidString.getter();
  (*(v42 + 8))(v41, v43);
  v45 = String._bridgeToObjectiveC()();

  *(inited + 48) = v45;
  *(inited + 56) = 1702521203;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x726F70736E617274;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x746C75736572;
  *(inited + 112) = 0xE600000000000000;
  sub_1003E64C0();
  *(inited + 120) = Int._bridgeToObjectiveC()();
  strcpy((inited + 128), "failureSubType");
  *(inited + 143) = -18;
  (*(v40 + 16))(v123, v118, v121);
  if ((*(v40 + 88))(v123, v121) == v125)
  {
    v46 = *(v0 + 1360);
    v47 = *(v0 + 1352);
    v48 = *(v0 + 1344);
    v49 = *(v0 + 1064);
    (*(*(v0 + 1056) + 96))(v49, *(v0 + 1048));
    (*(v47 + 32))(v46, v49, v48);
    SFAirDropSend.Failure.errorDescription.getter();
    (*(v47 + 8))(v46, v48);
  }

  else
  {
    (*(*(v0 + 1056) + 8))(*(v0 + 1064), *(v0 + 1048));
  }

  v50 = *(v0 + 1416);
  v51 = *(v0 + 1408);
  v52 = *(v0 + 1104);
  v53 = *(v0 + 1096);
  v54 = String._bridgeToObjectiveC()();

  *(inited + 144) = v54;
  v55 = sub_1002812CC(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
  swift_arrayDestroy();
  sub_10000FF90(v52, v53, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v50 + 48))(v53, 1, v51) == 1)
  {
    sub_100005508(*(v0 + 1096), &qword_1009763E0, &qword_1007F95D0);
    if (*(v132 + 16))
    {
      sub_1003E5DF0(v132);
      v56 = String._bridgeToObjectiveC()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(v56, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      sub_1003E6060(v132);
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(isa, 0x6C6F636F746F7270, 0xE800000000000000, v59);
      sub_1003E6260(v132);
      v60 = Int._bridgeToObjectiveC()().super.super.isa;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v133[0] = v55;
      sub_10057B0BC(v60, 0xD000000000000010, 0x800000010078E320, v61);
    }
  }

  else
  {
    v62 = *(v0 + 1752);
    v63 = *(v0 + 1432);
    v129 = *(v0 + 1424);
    v64 = *(v0 + 1216);
    v65 = *(v0 + 1200);
    sub_10000ED78(*(v0 + 1096), v63, type metadata accessor for SDAirDropDiscoveredEndpoint);
    SFAirDropSend.Request.type.getter();
    sub_1003E67D8(v64);
    v62(v64, v65);
    v66 = String._bridgeToObjectiveC()();

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v55;
    sub_10057B0BC(v66, 1701869940, 0xE400000000000000, v67);
    sub_1003C36B0(v63, v129, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1003C41CC(*(v0 + 1424), off_1008DE230[EnumCaseMultiPayload]);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1016);
    v71 = *(v0 + 1008);
    v72 = *(v0 + 1000);
    v73 = Int._bridgeToObjectiveC()().super.super.isa;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v55;
    sub_10057B0BC(v73, 0x6C6F636F746F7270, 0xE800000000000000, v74);
    sub_10032C154(v70);
    SFAirDrop.DeviceRelationship.rawValue.getter();
    (*(v71 + 8))(v70, v72);
    v75 = Int._bridgeToObjectiveC()().super.super.isa;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v55;
    sub_10057B0BC(v75, 0xD000000000000010, 0x800000010078E320, v76);
    sub_1003C41CC(v69, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v77 = *(v0 + 1112);
  v78 = *(v0 + 976);
  v79 = *(v0 + 968);
  sub_10000FF90(*(v0 + 1120), v77, &qword_10097B1A8, &unk_1007FE4B0);
  v80 = (*(v78 + 48))(v77, 1, v79);
  v81 = *(v0 + 1112);
  if (v80 == 1)
  {

    sub_100005508(v81, &qword_10097B1A8, &unk_1007FE4B0);
  }

  else
  {
    (*(*(v0 + 976) + 32))(*(v0 + 992), *(v0 + 1112), *(v0 + 968));
    v82 = SFAirDrop.NetworkMetrics.payload.getter();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v55;
    sub_1003C3240(v82, sub_1003C29BC, 0, v83, v133);

    if (qword_1009737E0 != -1)
    {
      swift_once();
    }

    v84 = *(v0 + 992);
    v85 = *(v0 + 984);
    v86 = *(v0 + 976);
    v87 = *(v0 + 968);
    v88 = type metadata accessor for Logger();
    sub_10000C4AC(v88, qword_10097B8A0);
    (*(v86 + 16))(v85, v84, v87);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    v91 = os_log_type_enabled(v89, v90);
    v92 = *(v0 + 992);
    v93 = *(v0 + 984);
    v94 = *(v0 + 976);
    v95 = *(v0 + 968);
    if (v91)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v133[0] = v97;
      *v96 = 136315138;
      v98 = SFAirDrop.NetworkMetrics.description.getter();
      v130 = v92;
      v100 = v99;
      v101 = *(v94 + 8);
      v101(v93, v95);
      v102 = sub_10000C4E4(v98, v100, v133);

      *(v96 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v89, v90, "SFAirDrop.NetworkMetrics: %s", v96, 0xCu);
      sub_10000C60C(v97);

      v101(v130, v95);
    }

    else
    {

      v103 = *(v94 + 8);
      v103(v93, v95);
      v103(v92, v95);
    }
  }

  v127 = *(v0 + 1376);
  v131 = *(v0 + 1480);
  v104 = *(v0 + 1352);
  v124 = *(v0 + 1312);
  v126 = *(v0 + 1344);
  v105 = *(v0 + 1304);
  v122 = *(v0 + 1296);
  v114 = *(v0 + 1160);
  v106 = *(v0 + 1136);
  v119 = *(v0 + 1128);
  v120 = *(v0 + 1144);
  v117 = *(v0 + 1120);
  v115 = *(v0 + 1088);
  v116 = *(v0 + 1104);
  v107 = *(v0 + 1072);
  v108 = *(v0 + 1056);
  v109 = *(v0 + 1048);
  v110 = String._bridgeToObjectiveC()();
  sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
  v111 = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();

  (*(v108 + 8))(v107, v109);
  sub_100005508(v114, &qword_100977DC0, &unk_1007FB320);
  sub_100005508(v115, &qword_100977BB0, &qword_1007FADE0);
  sub_100005508(v116, &qword_1009763E0, &qword_1007F95D0);
  sub_100005508(v117, &qword_10097B1A8, &unk_1007FE4B0);
  (*(v106 + 8))(v120, v119);
  (*(v105 + 8))(v124, v122);
  (*(v104 + 8))(v127, v126);
  (*(v131 + 32))(*(v0 + 952), *(v0 + 1488), *(v0 + 1472));

  v112 = *(v0 + 8);

  return v112();
}

uint64_t sub_1003A3C38()
{
  v1 = v0[196];
  v0[213] = v1;
  v0[117] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = v0[167];
    v3 = v0[166];
    v4 = v0[165];
    (*(v0[169] + 104))(v0[172], enum case for SFAirDropSend.Failure.cancelled(_:), v0[168]);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  sub_10047E40C();
  v5 = swift_task_alloc();
  v0[214] = v5;
  *v5 = v0;
  v5[1] = sub_1003A2388;

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A3DB0()
{
  v1 = v0[199];
  v0[213] = v1;
  v0[117] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = v0[167];
    v3 = v0[166];
    v4 = v0[165];
    (*(v0[169] + 104))(v0[172], enum case for SFAirDropSend.Failure.cancelled(_:), v0[168]);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  sub_10047E40C();
  v5 = swift_task_alloc();
  v0[214] = v5;
  *v5 = v0;
  v5[1] = sub_1003A2388;

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A3F28()
{
  v1 = v0[201];
  v0[213] = v1;
  v0[117] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = v0[167];
    v3 = v0[166];
    v4 = v0[165];
    (*(v0[169] + 104))(v0[172], enum case for SFAirDropSend.Failure.cancelled(_:), v0[168]);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  sub_10047E40C();
  v5 = swift_task_alloc();
  v0[214] = v5;
  *v5 = v0;
  v5[1] = sub_1003A2388;

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A40A0()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1400);

  sub_10030D74C(v0 + 312);
  sub_100005508(v3, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v1, _s10AskRequestVMa);
  v4 = *(v0 + 1648);
  *(v0 + 1704) = v4;
  *(v0 + 936) = v4;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1336);
    v6 = *(v0 + 1328);
    v7 = *(v0 + 1320);
    (*(*(v0 + 1352) + 104))(*(v0 + 1376), enum case for SFAirDropSend.Failure.cancelled(_:), *(v0 + 1344));
    (*(v6 + 8))(v5, v7);
  }

  else
  {

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  sub_10047E40C();
  v8 = swift_task_alloc();
  *(v0 + 1712) = v8;
  *v8 = v0;
  v8[1] = sub_1003A2388;

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A4284()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1400);

  sub_10030D74C(v0 + 312);
  sub_100005508(v3, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v1, _s10AskRequestVMa);
  v4 = *(v0 + 1672);
  *(v0 + 1704) = v4;
  *(v0 + 936) = v4;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1336);
    v6 = *(v0 + 1328);
    v7 = *(v0 + 1320);
    (*(*(v0 + 1352) + 104))(*(v0 + 1376), enum case for SFAirDropSend.Failure.cancelled(_:), *(v0 + 1344));
    (*(v6 + 8))(v5, v7);
  }

  else
  {

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  sub_10047E40C();
  v8 = swift_task_alloc();
  *(v0 + 1712) = v8;
  *v8 = v0;
  v8[1] = sub_1003A2388;

  return sub_1003ACFD4(1);
}

uint64_t sub_1003A4468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_10028088C(&qword_10097B310, &qword_1007FE6C8);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for CodableError();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.TransferType();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A4600, v8, 0);
}

uint64_t sub_1003A4600(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  SFAirDropSend.Request.type.getter();
  v5 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {

    v6 = v1[1];

    return v6(_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = v1[6];
    if (v8[1])
    {
      v9 = v8[11];
      v10 = v8[12];
    }

    else
    {
      v9 = 0;
      v10 = 0xF000000000000000;
    }

    v11 = swift_task_alloc();
    v1[16] = v11;
    *v11 = v1;
    v11[1] = sub_1003A4758;

    return sub_1005435A0(v9, v10);
  }
}

uint64_t sub_1003A4758(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 120);
  if (v1)
  {
    v6 = sub_1003A4E44;
  }

  else
  {
    v6 = sub_1003A488C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003A488C()
{
  v1 = v0[17];
  if (*(v1 + 16))
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {

    v4 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for SFAirDropSend.Failure.badRequest(_:), v4);
    swift_willThrow();
    v0[19] = v5;
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to load final URLs %@", v9, 0xCu);
      sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
    }

    v12 = v0[10];

    v0[2] = v5;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v13 = swift_dynamicCast();
    v14 = *(v12 + 56);
    v16 = v0[10];
    v15 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    if (v13)
    {
      v14(v0[8], 0, 1, v0[9]);
      (*(v16 + 32))(v15, v18, v17);
    }

    else
    {
      v14(v0[8], 1, 1, v0[9]);
      swift_errorRetain();
      CodableError.init(_:)();
      if ((*(v16 + 48))(v18, 1, v17) != 1)
      {
        sub_100005508(v0[8], &qword_10097B310, &qword_1007FE6C8);
      }
    }

    v19 = v0[5];
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_1003A4C40;
    v21 = v0[11];
    v23 = v0[3];
    v22 = v0[4];

    return sub_1003BEA1C(v23, v22, v19 & 0xFFFFFFFFFFLL, v21);
  }
}

uint64_t sub_1003A4C40()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1003A4DAC, v1, 0);
}

uint64_t sub_1003A4DAC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1003A4E44()
{
  v1 = v0[18];
  v0[19] = v1;
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load final URLs %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  v7 = v0[10];

  v0[2] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v8 = swift_dynamicCast();
  v9 = *(v7 + 56);
  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  if (v8)
  {
    v9(v0[8], 0, 1, v0[9]);
    (*(v11 + 32))(v10, v13, v12);
  }

  else
  {
    v9(v0[8], 1, 1, v0[9]);
    swift_errorRetain();
    CodableError.init(_:)();
    if ((*(v11 + 48))(v13, 1, v12) != 1)
    {
      sub_100005508(v0[8], &qword_10097B310, &qword_1007FE6C8);
    }
  }

  v14 = v0[5];
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1003A4C40;
  v16 = v0[11];
  v18 = v0[3];
  v17 = v0[4];

  return sub_1003BEA1C(v18, v17, v14 & 0xFFFFFFFFFFLL, v16);
}

uint64_t sub_1003A50E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  _s10AskRequestVMa(0);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_1003A529C, 0, 0);
}

uint64_t sub_1003A529C()
{
  v1 = 0;
  v2 = v0[61];
  v3 = v0[50];
  v0[47] = v3;
  v4 = *(v3 + 16);
  while (v4 != v1)
  {
    v5 = v0[62];
    v6 = v0[60];
    (*(v2 + 16))(v5, v0[50] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1++, v6);
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = [v8 isiWorkDocument];

    (*(v2 + 8))(v5, v6);
    if (v10)
    {
      v11 = 8;
      goto LABEL_6;
    }
  }

  v11 = 131074;
LABEL_6:
  v12 = swift_task_alloc();
  v0[63] = v12;
  v13 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v14 = sub_100011630(&qword_10097B1D8, &qword_100975610, &qword_1007F89B0, &protocol conformance descriptor for [A]);
  *v12 = v0;
  v12[1] = sub_1003A5454;

  return Sequence<>.coordinateRead(withSaveToTempDir:options:)(0, v11, v13, v14);
}

uint64_t sub_1003A5454(uint64_t a1)
{
  v3 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A5DF4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[66] = v4;
    *v4 = v3;
    v4[1] = sub_1003A55C8;
    v5 = v3[50];

    return sub_1003A61D4(v5);
  }
}

uint64_t sub_1003A55C8()
{
  v2 = *v1;
  v2[67] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A5EC8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[68] = v3;
    *v3 = v2;
    v3[1] = sub_1003A5748;
    v4 = v2[58];
    v5 = v2[56];
    v6 = v2[54];
    v7 = v2[52];

    return sub_1003A8774((v2 + 2), v4, v5, v6, v7);
  }
}

uint64_t sub_1003A5748()
{
  v2 = *v1;
  v3 = *v1;
  v3[69] = v0;
  v4 = *(v3 + 20);
  v5 = *(v3 + 4);
  v6 = v2[3];
  v3[70] = v6;
  v21 = v2[4];
  v20 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = *(v3 + 64);
  v18 = *(v3 + 15);
  v19 = *(v3 + 11);
  v16 = *(v3 + 13);
  v17 = *(v3 + 9);
  v10 = v2[17];
  v3[71] = v10;

  if (v0)
  {

    v11 = sub_1003A5FA4;
  }

  else
  {
    *(v3 + 36) = v5;
    *(v3 + 148) = (v5 | (v4 << 32)) >> 32;
    v3[19] = v6;
    v3[20] = v21;
    v3[21] = v20;
    v3[22] = v7;
    v3[23] = v8;
    *(v3 + 192) = v9;
    *(v3 + 25) = v17;
    *(v3 + 27) = v19;
    *(v3 + 29) = v16;
    *(v3 + 31) = v18;
    v3[33] = v10;
    v12 = *(v3 + 11);
    *(v3 + 17) = *(v3 + 10);
    *(v3 + 18) = v12;
    v13 = *(v3 + 13);
    *(v3 + 19) = *(v3 + 12);
    *(v3 + 20) = v13;
    v14 = *(v3 + 15);
    *(v3 + 21) = *(v3 + 14);
    *(v3 + 22) = v14;
    v3[46] = v3[32];
    v11 = sub_1003A5998;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1003A5998()
{
  v1 = v0[71];
  v2 = v0[56];
  v3 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  sub_10000ED78(v0[58], v0[59], _s10AskRequestVMa);
  sub_10000ED78(v2, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v5, v4, &qword_10097B1C0, &qword_1007FE4C8);
  sub_10002C4E4(v7, v6, &qword_10097B1B8, &qword_1007FE4C0);
  if (v1)
  {
    v0[48] = v0[71];
    sub_10028088C(&qword_10097B1E0, &unk_1007FE540);
    sub_100011630(&qword_10097B1E8, &qword_10097B1E0, &unk_1007FE540, &protocol conformance descriptor for [A]);
    v8 = RandomAccessCollection<>.urls.getter();
  }

  else
  {
    v8 = v0[64];
  }

  v0[72] = v8;
  v9 = swift_task_alloc();
  v0[73] = v9;
  *v9 = v0;
  v9[1] = sub_1003A5B70;
  v10 = v0[70];
  v11 = v0[59];
  v12 = v0[57];
  v13 = v0[55];
  v14 = v0[53];
  v15 = v0[49];

  return sub_1003A9FB4(v15, v11, v10, v12, (v0 + 34), v13, v8, v14);
}

uint64_t sub_1003A5B70()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_1003A6078;
  }

  else
  {
    v2 = sub_1003A5CA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A5CA0()
{
  v1 = v0[70];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[53];
  sub_10030D74C((v0 + 20));

  sub_100005508(v5, &qword_10097B1B8, &qword_1007FE4C0);
  sub_100005508(v4, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v2, _s10AskRequestVMa);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A5DF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A5EC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A5FA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A6078()
{
  v1 = v0[70];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[53];
  sub_10030D74C((v0 + 20));

  sub_100005508(v5, &qword_10097B1B8, &qword_1007FE4C0);
  sub_100005508(v4, &qword_10097B1C0, &qword_1007FE4C8);
  sub_1003C41CC(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v2, _s10AskRequestVMa);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A61D4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for SFInterventionResponse();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_10028088C(&qword_10097B2D8, &qword_1007FE688);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for SFInterventionWorkflow();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = sub_10028088C(&qword_10097B2E0, &qword_1007FE690);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097B2E8, &qword_1007FE698);
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v9 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  v2[36] = v9;
  v2[37] = *(v9 - 8);
  v2[38] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[39] = v10;
  v2[40] = *(v10 - 8);
  v2[41] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropSend.Transfer();
  v2[42] = v11;
  v2[43] = *(v11 - 8);
  v2[44] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v2[45] = v12;
  v2[46] = *(v12 - 8);
  v2[47] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  v2[48] = v13;
  v2[49] = *(v13 - 8);
  v2[50] = swift_task_alloc();
  v14 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v2[51] = v14;
  v15 = *(v14 - 8);
  v2[52] = v15;
  v2[53] = *(v15 + 64);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v2[56] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A677C, v16, 0);
}

uint64_t sub_1003A677C()
{
  v55 = v0;
  v1 = type metadata accessor for SDAirDropUserSafetyContentHandler();
  *(v0 + 16) = swift_allocObject();
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_1008E3278;
  v3 = sub_10049F1E0();
  v5 = v4;
  *(v0 + 456) = v3;
  *(v0 + 464) = v4;
  *(v0 + 472) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  if (v2 == 2)
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v3, v5, 2u);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v54 = v9;
      *v8 = 136315138;

      v10 = sub_100498E20(v3, v5, 2);
      v12 = v11;
      sub_1003C3F0C(v3, v5, 2u);
      v13 = sub_10000C4E4(v10, v12, &v54);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Send StateMachine UserSafety ANALYZE START {userSafetyMode: %s}", v8, 0xCu);
      sub_10000C60C(v9);

      v1 = *(v0 + 40);
    }

    else
    {
    }

    v22 = *(v0 + 440);
    v23 = *(v0 + 416);
    v44 = *(v0 + 432);
    v45 = *(v0 + 400);
    v46 = *(v0 + 392);
    v48 = *(v0 + 384);
    v24 = *(v0 + 368);
    v25 = *(v0 + 376);
    v42 = *(v0 + 360);
    v43 = *(v0 + 408);
    v50 = *(v0 + 352);
    v51 = *(v0 + 344);
    v53 = *(v0 + 336);
    v26 = *(v0 + 328);
    v47 = *(v0 + 320);
    v27 = *(v0 + 80);
    v49 = *(v0 + 312);
    sub_10002CDC0((v0 + 16), v1);
    sub_100498F44(v27);
    *v25 = 0x656E696C636544;
    v25[1] = 0xE700000000000000;
    (*(v24 + 104))(v25, enum case for SFAirDrop.ButtonConfiguration.text(_:), v42);
    (*(v23 + 16))(v44, v22, v43);
    v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v29 = swift_allocObject();
    (*(v23 + 32))(v29 + v28, v44, v43);
    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
    v30 = sub_10028088C(&unk_100986230, &qword_1007FE6B0);
    *(v0 + 480) = v30;
    v31 = *(v30 + 64);
    *v26 = v27;

    SFProgressTask.initialValue.getter();
    v32 = *(v46 + 16);
    *(v0 + 488) = v32;
    *(v0 + 496) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(&v26[v31], v45, v48);
    *(v0 + 68) = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
    v33 = *(v47 + 104);
    *(v0 + 504) = v33;
    *(v0 + 512) = (v47 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v33(v26);
    sub_100335364(v26, v50);
    v34 = *(v47 + 8);
    *(v0 + 520) = v34;
    *(v0 + 528) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v26, v49);
    v35 = *(v51 + 8);
    *(v0 + 536) = v35;
    *(v0 + 544) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v50, v53);
    SFProgressTask.makeAsyncIterator()();
    v36 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    *(v0 + 552) = v36;
    v37 = *(v0 + 448);
    v38 = swift_task_alloc();
    *(v0 + 560) = v38;
    *v38 = v0;
    v38[1] = sub_1003A6EAC;
    v39 = *(v0 + 288);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 56, v37, v36, v39, v0 + 72);
  }

  else
  {
    v14 = v2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v17 = 136315138;
      v18 = sub_100498E20(v3, v5, v14);
      v20 = v19;
      sub_1003C3F0C(v3, v5, v14);
      v21 = sub_10000C4E4(v18, v20, &v54);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Send StateMachine UserSafety SKIP {userSafetyMode: %s}", v17, 0xCu);
      sub_10000C60C(v52);
    }

    else
    {

      sub_1003C3F0C(v3, v5, v14);
    }

    sub_10000C60C((v0 + 16));

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1003A6EAC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[56];
    sub_1003C3F0C(v2[57], v2[58], 2u);
    v4 = sub_1003A8228;
    v5 = v3;
  }

  else
  {
    v5 = v2[56];
    v4 = sub_1003A6FD4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003A6FD4()
{
  v1 = *(v0 + 56);
  if (*(v0 + 64))
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288), v1);
    v2 = swift_task_alloc();
    *(v0 + 568) = v2;
    *v2 = v0;
    v2[1] = sub_1003A71F4;
    v3 = *(v0 + 408);

    return SFProgressTask.finalValue.getter(v0 + 65, v3);
  }

  else
  {
    v20 = *(v0 + 536);
    v19 = *(v0 + 520);
    v4 = *(v0 + 504);
    v5 = *(v0 + 68);
    v6 = *(v0 + 488);
    v7 = *(v0 + 400);
    v8 = *(v0 + 384);
    v9 = *(v0 + 352);
    v10 = *(v0 + 328);
    v18 = *(v0 + 336);
    v11 = *(v0 + 312);
    v12 = *(*(v0 + 480) + 64);
    *v10 = *(v0 + 80);
    *(v10 + 8) = v1;
    v6(v10 + v12, v7, v8);
    v4(v10, v5, v11);

    sub_100335364(v10, v9);
    v19(v10, v11);
    v20(v9, v18);
    v13 = *(v0 + 552);
    v14 = *(v0 + 448);
    v15 = swift_task_alloc();
    *(v0 + 560) = v15;
    *v15 = v0;
    v15[1] = sub_1003A6EAC;
    v16 = *(v0 + 288);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 56, v14, v13, v16, v0 + 72);
  }
}

uint64_t sub_1003A71F4()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = v2[56];
    sub_1003C3F0C(v2[57], v2[58], 2u);
    v4 = sub_1003A83EC;
    v5 = v3;
  }

  else
  {
    v5 = v2[56];
    v4 = sub_1003A7320;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003A7320(uint64_t a1)
{
  v2 = *(v1 + 65);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Send StateMachine UserSafety ANALYZE END {isSensitiveContent: %{BOOL}d}", v5, 8u);
  }

  v6 = *(v1 + 440);
  v7 = *(v1 + 408);
  v8 = *(v1 + 416);
  v10 = *(v1 + 392);
  v9 = *(v1 + 400);
  v11 = *(v1 + 384);

  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);
  if (v2)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Send StateMachine UserSafety INTERVENTION START", v14, 2u);
    }

    v56 = *(v1 + 536);
    v54 = *(v1 + 520);
    v51 = *(v1 + 504);
    v52 = *(v1 + 352);
    v53 = *(v1 + 336);
    v49 = *(v1 + 328);
    v50 = *(v1 + 312);
    v16 = *(v1 + 272);
    v15 = *(v1 + 280);
    v18 = *(v1 + 256);
    v17 = *(v1 + 264);
    v33 = v18;
    v34 = *(v1 + 248);
    v35 = *(v1 + 232);
    v19 = *(v1 + 216);
    v40 = *(v1 + 224);
    v41 = *(v1 + 200);
    v42 = *(v1 + 208);
    v43 = *(v1 + 192);
    v45 = *(v1 + 184);
    v47 = *(v1 + 176);
    v48 = *(v1 + 168);
    v36 = *(v1 + 160);
    v37 = *(v1 + 240);
    v55 = *(v1 + 152);
    v38 = *(v1 + 144);
    v57 = *(v1 + 136);
    v44 = *(v1 + 128);
    v46 = *(v1 + 80);

    UUID.init()();
    static Date.now.getter();
    v32 = *(v17 + 16);
    v32(v16, v15, v18);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1003C3718(&qword_10097B2F0, &type metadata accessor for SFInterventionResponse, &protocol conformance descriptor for SFInterventionResponse);
    v20 = sub_1003C3718(&qword_10097B2F8, &type metadata accessor for SFInterventionResponse, &protocol conformance descriptor for SFInterventionResponse);
    v21 = sub_1003C3718(&qword_10097B300, &type metadata accessor for SFInterventionResponse, &protocol conformance descriptor for SFInterventionResponse);
    SFAirDrop.PermissionRequest.InterventionAction.init(id:operation:)();
    v32(v16, v15, v33);
    (*(v35 + 16))(v37, v34, v40);
    LODWORD(v40) = enum case for SFInterventionWorkflow.send(_:);
    v39 = *(v38 + 104);
    v39(v36);
    (*(v41 + 16))(v42, v19, v43);
    v22 = sub_10028088C(&qword_10097B308, &qword_1007FE6B8);
    (*(*(v22 - 8) + 56))(v44, 1, 1, v22);
    SFAirDrop.PermissionRequest.init(id:requestDate:interventionWorkflow:action:isAnswered:telemetryData:)();
    v23 = *(sub_10028088C(&unk_100986220, &qword_1007FE6C0) + 48);
    *v49 = v46;
    (*(v47 + 16))(&v49[v23], v45, v48);
    v51(v49, enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:), v50);

    sub_100335364(v49, v52);
    v54(v49, v50);
    v56(v52, v53);
    *(v1 + 584) = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
    (v39)(v55, v40, v57);
    v24 = swift_task_alloc();
    *(v1 + 592) = v24;
    *v24 = v1;
    v24[1] = sub_1003A7A68;
    v25 = *(v1 + 152);
    v26 = *(v1 + 120);

    return sub_1004B1884(v26, v25);
  }

  else
  {
    sub_1003C3F0C(*(v1 + 456), *(v1 + 464), 2u);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Send StateMachine UserSafety INTERVENTION SKIP. Content is not sensitive", v30, 2u);
    }

    sub_10000C60C((v1 + 16));

    v31 = *(v1 + 8);

    return v31();
  }
}

uint64_t sub_1003A7A68()
{
  v2 = *v1;
  v2[75] = v0;

  v3 = v2[73];
  if (v0)
  {
    v5 = v2[57];
    v4 = v2[58];
    v6 = v2[56];
    (*(v2[18] + 8))(v2[19], v2[17]);

    sub_1003C3F0C(v5, v4, 2u);
    v7 = sub_1003A8590;
    v8 = v6;
  }

  else
  {
    v9 = v2[56];
    (*(v2[18] + 8))(v2[19], v2[17]);

    v7 = sub_1003A7C00;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1003A7C00()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  (*(v3 + 16))(v1, v0[15], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for SFInterventionResponse.accept(_:))
  {
    sub_1003C3F0C(v0[57], v0[58], 2u);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[35];
    v9 = v0[33];
    v43 = v0[32];
    v45 = v0[31];
    v10 = v0[29];
    v39 = v0[27];
    v41 = v0[28];
    v11 = v0[25];
    v12 = v0[22];
    v35 = v0[23];
    v37 = v0[24];
    v31 = v0[15];
    v33 = v0[21];
    v14 = v0[12];
    v13 = v0[13];
    if (v7)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Send StateMachine UserSafety INTERVENTION ACCEPTED", v15, 2u);
    }

    (*(v13 + 8))(v31, v14);
    (*(v12 + 8))(v35, v33);
    (*(v11 + 8))(v39, v37);
    (*(v10 + 8))(v45, v41);
    (*(v9 + 8))(v8, v43);
    sub_10000C60C(v0 + 2);

    v16 = v0[1];
  }

  else
  {
    if (v4 != enum case for SFInterventionResponse.reject(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    sub_1003C3F0C(v0[57], v0[58], 2u);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Send StateMachine UserSafety INTERVENTION REJECTED", v19, 2u);
    }

    v20 = v0[33];
    v42 = v0[32];
    v44 = v0[35];
    v21 = v0[29];
    v38 = v0[28];
    v40 = v0[31];
    v22 = v0[25];
    v34 = v0[24];
    v36 = v0[27];
    v23 = v0[22];
    v30 = v0[21];
    v32 = v0[23];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];

    v27 = type metadata accessor for SFAirDropSend.Failure();
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for SFAirDropSend.Failure.cancelled(_:), v27);
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    (*(v23 + 8))(v32, v30);
    (*(v22 + 8))(v36, v34);
    (*(v21 + 8))(v40, v38);
    (*(v20 + 8))(v44, v42);
    sub_10000C60C(v0 + 2);

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_1003A8228()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[48];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10000C60C(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003A83EC()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  (*(v0[49] + 8))(v0[50], v0[48]);
  (*(v3 + 8))(v1, v2);
  sub_10000C60C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A8590()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  sub_10000C60C(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A8774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[134] = v5;
  v6[133] = a5;
  v6[132] = a4;
  v6[131] = a3;
  v6[130] = a2;
  v6[129] = a1;
  v6[135] = sub_10028088C(&qword_10097B320, &qword_100806120);
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropSend.Transfer.State();
  v6[145] = v7;
  v6[146] = *(v7 - 8);
  v6[147] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Transfer();
  v6[148] = v8;
  v6[149] = *(v8 - 8);
  v6[150] = swift_task_alloc();
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferType();
  v6[153] = v9;
  v6[154] = *(v9 - 8);
  v6[155] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v6[156] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003A89F0, v10, 0);
}

uint64_t sub_1003A89F0(uint64_t a1)
{
  v2 = v1[155];
  v3 = v1[154];
  v4 = v1[153];
  v5 = v1[134];
  v6 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
  SFAirDropSend.Request.type.getter();
  v7 = (*(v3 + 88))(v2, v4);
  v8 = enum case for SFAirDrop.TransferType.exchange(_:);
  (*(v3 + 8))(v2, v4);
  if (v7 == v8 && (, CurrentValueSubject.value.getter(), , v9 = *(v1[128] + 16), , v9 == 1))
  {
    v10 = swift_task_alloc();
    v1[157] = v10;
    *v10 = v1;
    v10[1] = sub_1003A8E14;
    v11 = v1[133];
    v12 = v1[132];
    v13 = v1[131];
    v14 = v1[130];

    return sub_1003ADDF8((v1 + 18), v14, v13, v12, v11);
  }

  else
  {
    v41 = v6;
    v42 = v5;
    v1[158] = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Send StateMachine ASK START", v18, 2u);
    }

    v19 = v1[151];
    v20 = v1[149];
    v21 = v1[148];
    v34 = v1[152];
    v22 = v1[147];
    v23 = v1[146];
    v24 = v1[145];
    v39 = v1[150];
    v40 = v1[144];
    v38 = v1[135];
    v25 = v1[134];

    v37 = *(v25 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield);
    v26 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    v36 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v35 = *(v20 + 16);
    v35(v19, v25 + v26, v21);
    (*(v23 + 104))(v22, enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:), v24);
    SFAirDropSend.Transfer.update(state:)();
    (*(v23 + 8))(v22, v24);
    v27 = *(v20 + 8);
    v1[159] = v27;
    v1[160] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v19, v21);
    v37(v34);
    v27(v34, v21);
    v28 = v38[12];
    v29 = v38[20];
    v30 = v38[32];
    v35(v39, v25 + v36, v21);
    v31 = *(v25 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);
    v32 = swift_task_alloc();
    v1[161] = v32;
    *v32 = v1;
    v32[1] = sub_1003A9264;
    v33 = v1[150];

    return sub_1003B0DF8((v1 + 2), v40 + v28, v40 + v29, v40 + v30, v42 + v41, v33, v31);
  }
}

uint64_t sub_1003A8E14()
{
  v2 = *v1;
  v19 = *v1;
  v7 = *(*v1 + 148);
  v6 = *(*v1 + 144);
  v18 = *(*v1 + 152);
  v17 = *(*v1 + 160);
  v16 = *(*v1 + 168);
  v15 = *(*v1 + 176);
  v14 = *(*v1 + 184);
  v9 = *(*v1 + 192);
  v12 = *(*v1 + 216);
  v13 = *(*v1 + 200);
  v10 = *(*v1 + 248);
  v11 = *(*v1 + 232);
  v8 = *(*v1 + 264);

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 1032);

    *(v4 + 4) = (v6 | (v7 << 32)) >> 32;
    *v4 = v6;
    *(v4 + 8) = v18;
    *(v4 + 16) = v17;
    *(v4 + 24) = v16;
    *(v4 + 32) = v15;
    *(v4 + 40) = v14;
    *(v4 + 48) = v9;
    *(v4 + 72) = v12;
    *(v4 + 56) = v13;
    *(v4 + 104) = v10;
    *(v4 + 88) = v11;
    *(v4 + 120) = v8;
  }

  v3 = *(v19 + 8);

  return v3();
}

uint64_t sub_1003A9264()
{
  v2 = *v1;
  v3 = *v1;
  v3[162] = v0;
  v4 = *(v3 + 4);
  *(v3 + 1308) = *(v3 + 20);
  *(v3 + 326) = v4;
  v3[164] = v2[3];
  v3[165] = v2[4];
  *(v3 + 83) = *(v3 + 5);
  v3[168] = v2[7];
  *(v3 + 1443) = *(v3 + 64);
  *(v3 + 169) = *(v3 + 9);
  *(v3 + 171) = *(v3 + 11);
  *(v3 + 173) = *(v3 + 13);
  *(v3 + 175) = *(v3 + 15);
  v3[177] = v2[17];

  if (v0)
  {
    v5 = v3[156];
    (v3[159])(v3[150], v3[148]);
    v6 = sub_1003A9E84;
  }

  else
  {
    v7 = v3[159];
    v5 = v3[156];
    v8 = v3[150];
    v9 = v3[148];
    v10 = v3[135];
    *(v3 + 356) = v10[16];
    *(v3 + 357) = v10[24];
    *(v3 + 358) = v10[28];
    v7(v8, v9);
    v6 = sub_1003A947C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003A947C()
{
  v126 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1443);
  v5 = *(v0 + 1344);
  v6 = *(v0 + 1336);
  v7 = *(v0 + 1320);
  v8 = *(v0 + 1312);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = v10 + *(v0 + 1428);
  v13 = *(v0 + 1352);
  v14 = *(v0 + 1368);
  v15 = *(v0 + 1384);
  v16 = *(v0 + 1400);
  *(v10 + 4) = *(v0 + 1308);
  *v10 = v9;
  *(v10 + v2) = v8;
  *v12 = v7;
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  *(v12 + 32) = v4;
  v17 = *(v0 + 1436);
  *(v12 + 36) = *(v0 + 1439);
  *(v12 + 33) = v17;
  *(v12 + 40) = v13;
  *(v12 + 56) = v14;
  *(v12 + 72) = v15;
  *(v12 + 88) = v16;
  *(v10 + v1) = v3;
  sub_10000FF90(v10, v11, &qword_10097B320, &qword_100806120);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 1144);
  if (v20)
  {
    v22 = *(v0 + 1136);
    v23 = *(v0 + 1080);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v125 = v25;
    *v24 = 136315138;
    sub_10000FF90(v21, v22, &qword_10097B320, &qword_100806120);
    v26 = v23[12];

    v27 = v23[20];
    v28 = v22 + v23[24];
    v30 = *(v28 + 64);
    v29 = *(v28 + 80);
    v31 = *(v28 + 48);
    *(v0 + 368) = *(v28 + 96);
    *(v0 + 336) = v30;
    *(v0 + 352) = v29;
    *(v0 + 320) = v31;
    v32 = *v28;
    v33 = *(v28 + 32);
    *(v0 + 288) = *(v28 + 16);
    *(v0 + 304) = v33;
    *(v0 + 272) = v32;

    sub_100005508(v22 + v23[32], &qword_10097B1B8, &qword_1007FE4C0);
    sub_1003C41CC(v22 + v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1003C41CC(v22 + v26, _s10AskRequestVMa);
    v34 = sub_1005A43F8();
    v36 = v35;
    sub_10030D74C(v0 + 272);
    sub_100005508(v21, &qword_10097B320, &qword_100806120);
    v37 = sub_10000C4E4(v34, v36, &v125);

    *(v24 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v18, v19, "Send StateMachine ASK END {response: %s}", v24, 0xCu);
    sub_10000C60C(v25);
  }

  else
  {

    sub_100005508(v21, &qword_10097B320, &qword_100806120);
  }

  v38 = *(v0 + 1152);
  v39 = *(v0 + 1136);
  v40 = *(v0 + 1128);
  v122 = *(v0 + 1112);
  v123 = *(v0 + 1104);
  v124 = *(v0 + 1120);
  v97 = *(v0 + 1096);
  v99 = *(v0 + 1088);
  v41 = *(v0 + 1080);
  v113 = *(v0 + 1064);
  v94 = *(v0 + 1056);
  v109 = *(v0 + 1048);
  v116 = *(v0 + 1040);
  sub_10000FF90(v38, v39, &qword_10097B320, &qword_100806120);
  v121 = *v39;
  v120 = *(v39 + 4);
  v119 = v41[12];

  v118 = v41[20];
  v42 = v39 + v41[24];
  v44 = *(v42 + 64);
  v43 = *(v42 + 80);
  v45 = *(v42 + 48);
  *(v0 + 992) = *(v42 + 96);
  *(v0 + 960) = v44;
  *(v0 + 976) = v43;
  *(v0 + 944) = v45;
  v46 = *v42;
  v47 = *(v42 + 32);
  *(v0 + 912) = *(v42 + 16);
  *(v0 + 928) = v47;
  *(v0 + 896) = v46;
  sub_10030D74C(v0 + 896);

  v115 = v41[32];
  sub_10000FF90(v38, v40, &qword_10097B320, &qword_100806120);
  v48 = v41[12];

  v114 = v41[20];
  v49 = v40 + v41[24];
  v51 = *(v49 + 64);
  v50 = *(v49 + 80);
  v52 = *(v49 + 48);
  *(v0 + 888) = *(v49 + 96);
  *(v0 + 856) = v51;
  *(v0 + 872) = v50;
  *(v0 + 840) = v52;
  v53 = *v49;
  v54 = *(v49 + 32);
  *(v0 + 808) = *(v49 + 16);
  *(v0 + 824) = v54;
  *(v0 + 792) = v53;
  sub_10030D74C(v0 + 792);
  v111 = v40;

  v112 = v41[32];
  sub_10000ED78(v40 + v48, v116, _s10AskRequestVMa);
  sub_10000FF90(v38, v124, &qword_10097B320, &qword_100806120);
  v117 = *(v124 + v41[16]);
  v100 = v41[20];
  v101 = v41[12];
  v55 = v124 + v41[24];
  v57 = *(v55 + 16);
  v56 = *(v55 + 32);
  *(v0 + 688) = *v55;
  *(v0 + 704) = v57;
  *(v0 + 720) = v56;
  v58 = *(v55 + 96);
  v59 = *(v55 + 80);
  v60 = *(v55 + 48);
  *(v0 + 752) = *(v55 + 64);
  *(v0 + 768) = v59;
  *(v0 + 784) = v58;
  *(v0 + 736) = v60;
  sub_10030D74C(v0 + 688);

  v98 = v41[32];
  sub_10000FF90(v38, v122, &qword_10097B320, &qword_100806120);
  v96 = v41[12];

  v61 = v41[20];
  v62 = v122 + v41[24];
  v64 = *(v62 + 64);
  v63 = *(v62 + 80);
  v65 = *(v62 + 48);
  *(v0 + 680) = *(v62 + 96);
  *(v0 + 648) = v64;
  *(v0 + 664) = v63;
  *(v0 + 632) = v65;
  v66 = *v62;
  v67 = *(v62 + 32);
  *(v0 + 600) = *(v62 + 16);
  *(v0 + 616) = v67;
  *(v0 + 584) = v66;
  sub_10030D74C(v0 + 584);

  v93 = v41[32];
  sub_10000ED78(v122 + v61, v109, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10000FF90(v38, v123, &qword_10097B320, &qword_100806120);
  v92 = v41[12];

  v91 = v41[20];
  v68 = v123 + v41[24];
  v110 = *v68;
  v107 = *(v68 + 24);
  v108 = *(v68 + 16);
  v106 = *(v68 + 32);
  v104 = *(v68 + 72);
  v105 = *(v68 + 40);
  v102 = *(v68 + 88);
  v103 = *(v68 + 56);

  v90 = v41[32];
  v69 = type metadata accessor for SFAirDrop.ContactRequest();
  (*(*(v69 - 8) + 56))(v94, 1, 1, v69);
  sub_10000FF90(v38, v97, &qword_10097B320, &qword_100806120);
  v89 = v41[12];

  v88 = v41[20];
  v70 = v97 + v41[24];
  v72 = *(v70 + 64);
  v71 = *(v70 + 80);
  v73 = *(v70 + 48);
  *(v0 + 576) = *(v70 + 96);
  *(v0 + 544) = v72;
  *(v0 + 560) = v71;
  *(v0 + 528) = v73;
  v74 = *v70;
  v75 = *(v70 + 32);
  *(v0 + 496) = *(v70 + 16);
  *(v0 + 512) = v75;
  *(v0 + 480) = v74;
  sub_10030D74C(v0 + 480);
  v95 = *(v97 + v41[28]);
  v87 = v41[32];
  sub_10002C4E4(v38, v99, &qword_10097B320, &qword_100806120);
  v76 = v41[12];

  v77 = v41[20];
  v78 = v99 + v41[24];
  v80 = *(v78 + 64);
  v79 = *(v78 + 80);
  v81 = *(v78 + 48);
  *(v0 + 472) = *(v78 + 96);
  *(v0 + 440) = v80;
  *(v0 + 456) = v79;
  *(v0 + 424) = v81;
  v82 = *v78;
  v83 = *(v78 + 32);
  *(v0 + 392) = *(v78 + 16);
  *(v0 + 408) = v83;
  *(v0 + 376) = v82;
  sub_10030D74C(v0 + 376);

  sub_10002C4E4(v99 + v41[32], v113, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v99 + v77, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v99 + v76, _s10AskRequestVMa);
  sub_100005508(v97 + v87, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v97 + v88, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v97 + v89, _s10AskRequestVMa);
  sub_100005508(v123 + v90, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v123 + v91, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v123 + v92, _s10AskRequestVMa);
  sub_100005508(v122 + v93, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v122 + v96, _s10AskRequestVMa);
  sub_100005508(v124 + v98, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v124 + v100, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v124 + v101, _s10AskRequestVMa);
  sub_100005508(v111 + v112, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v111 + v114, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_100005508(v39 + v115, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1003C41CC(v39 + v118, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1003C41CC(v39 + v119, _s10AskRequestVMa);
  v84 = *(v0 + 1032);

  *(v84 + 4) = v120;
  *v84 = v121;
  *(v84 + 8) = v117;
  *(v84 + 16) = v110;
  *(v84 + 32) = v108;
  *(v84 + 40) = v107;
  *(v84 + 48) = v106;
  *(v84 + 72) = v103;
  *(v84 + 56) = v105;
  *(v84 + 104) = v102;
  *(v84 + 88) = v104;
  *(v84 + 120) = v95;
  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_1003A9E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A9FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[54] = a8;
  v9[55] = v8;
  v9[52] = a6;
  v9[53] = a7;
  v9[50] = a4;
  v9[51] = a5;
  v9[48] = a2;
  v9[49] = a3;
  v9[47] = a1;
  v10 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v9[56] = v10;
  v9[57] = *(v10 - 8);
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v9[60] = v11;
  v9[61] = *(v11 - 8);
  v9[62] = swift_task_alloc();
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9[63] = v12;
  v9[64] = *(v12 - 8);
  v9[65] = swift_task_alloc();
  v9[66] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropSend.Failure();
  v9[67] = v13;
  v9[68] = *(v13 - 8);
  v9[69] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v9[70] = v14;
  v9[71] = *(v14 - 8);
  v9[72] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v9[73] = v15;
  v9[74] = *(v15 - 8);
  v9[75] = swift_task_alloc();
  v9[76] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v9[77] = swift_task_alloc();
  v9[78] = swift_task_alloc();
  sub_10028088C(&qword_100977BB0, &qword_1007FADE0);
  v9[79] = swift_task_alloc();
  v9[80] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v9[81] = swift_task_alloc();
  v9[82] = swift_task_alloc();
  sub_10028088C(&qword_10097B1A8, &unk_1007FE4B0);
  v9[83] = swift_task_alloc();
  v9[84] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropSend.Request();
  v9[85] = v16;
  v9[86] = *(v16 - 8);
  v9[87] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDropSend.Transfer.State();
  v9[88] = v17;
  v9[89] = *(v17 - 8);
  v9[90] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9[91] = swift_task_alloc();
  sub_10028088C(&qword_10097B1B0, &unk_10080DD40);
  v9[92] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v9[93] = v18;
  v9[94] = *(v18 - 8);
  v9[95] = swift_task_alloc();
  v19 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9[96] = v19;
  v9[97] = *(v19 - 8);
  v9[98] = swift_task_alloc();
  v9[99] = swift_task_alloc();
  v20 = type metadata accessor for SFAirDropSend.Transfer();
  v9[100] = v20;
  v9[101] = *(v20 - 8);
  v9[102] = swift_task_alloc();
  v9[103] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v9[104] = v21;
  v9[105] = *(v21 - 8);
  v9[106] = swift_task_alloc();
  v22 = type metadata accessor for SFAirDrop.TransferType();
  v9[107] = v22;
  v9[108] = *(v22 - 8);
  v9[109] = swift_task_alloc();
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v9[110] = swift_task_alloc();
  v9[111] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v23 = static AirDropActor.shared;
  v9[112] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AA710, v23, 0);
}

uint64_t sub_1003AA710()
{
  if (*(v0[53] + 16))
  {
    goto LABEL_2;
  }

  v14 = v0[111];
  v15 = v0[108];
  v16 = v0[107];
  v17 = v0[48];
  v18 = *(_s10AskRequestVMa(0) + 20);
  sub_10000FF90(v17 + v18, v14, &qword_100977BD8, &qword_1007FAE38);
  v19 = *(v15 + 48);
  v20 = v19(v14, 1, v16);
  v21 = v0[111];
  if (v20 == 1)
  {
    sub_100005508(v0[111], &qword_100977BD8, &qword_1007FAE38);
  }

  else
  {
    v22 = v0[108];
    v23 = v0[107];
    v24 = SFAirDrop.TransferType.isOnlyExchange.getter();
    (*(v22 + 8))(v21, v23);
    if (v24)
    {
      goto LABEL_2;
    }
  }

  v25 = v0[110];
  v26 = v0[107];
  sub_10000FF90(v17 + v18, v25, &qword_100977BD8, &qword_1007FAE38);
  v27 = v19(v25, 1, v26);
  v28 = v0[110];
  if (v27 != 1)
  {
    v29 = v0[108];
    v30 = v0[107];
    v31 = SFAirDrop.TransferType.isCustom.getter();
    (*(v29 + 8))(v28, v30);
    if ((v31 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_2:
    v1 = v0[109];
    v2 = v0[108];
    v3 = v0[107];
    *(v0[55] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls) = v0[53];

    v0[113] = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;

    SFAirDropSend.Request.type.getter();
    v4 = SFAirDrop.TransferType.isOnlyExchange.getter();
    v5 = *(v2 + 8);
    v0[114] = v5;
    v0[115] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v1, v3);
    if ((v4 & 1) == 0)
    {
      v6 = *(v0[55] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(1, ObjectType, v6);
    }

    v8 = swift_task_alloc();
    v0[116] = v8;
    *v8 = v0;
    v8[1] = sub_1003AAC20;
    v9 = v0[54];
    v10 = v0[49];
    v11 = v0[50];
    v12 = v0[48];

    return sub_1003B6148(v12, v10, v11, v9);
  }

  sub_100005508(v0[110], &qword_100977BD8, &qword_1007FAE38);
LABEL_13:
  v32 = v0[68];
  v33 = v0[67];
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v32 + 104))(v34, enum case for SFAirDropSend.Failure.badRequest(_:), v33);
  swift_willThrow();

  v35 = v0[1];

  return v35();
}

uint64_t sub_1003AAC20()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 896);

    return _swift_task_switch(sub_1003AAF10, v6, 0);
  }
}

uint64_t sub_1003AAF10(uint64_t a1, uint64_t a2)
{
  v3 = v2[114];
  v4 = v2[109];
  v5 = v2[107];
  sub_1003365C8(a1, a2);
  SFAirDropSend.Request.type.getter();
  v6 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v3(v4, v5);
  if ((v6 & 1) == 0)
  {
    v7 = *(v2[55] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(2, ObjectType, v7);
  }

  v9 = *(v2[51] + 32);
  v10 = swift_task_alloc();
  v2[117] = v10;
  *v10 = v2;
  v10[1] = sub_1003AB04C;
  v11 = v2[52];
  v13 = v2[48];
  v12 = v2[49];

  return sub_1003B7F1C(v13, v12, v11, v9);
}

uint64_t sub_1003AB04C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[118] = v2;

  if (v2)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = v6[112];
    v6[119] = a2;
    v6[120] = a1;

    return _swift_task_switch(sub_1003AB34C, v9, 0);
  }
}

uint64_t sub_1003AB34C()
{
  v26 = *(v0 + 952);
  v27 = *(v0 + 960);
  v15 = *(v0 + 848);
  v22 = *(v0 + 840);
  v25 = *(v0 + 832);
  v1 = *(v0 + 824);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v13 = *(v0 + 816);
  v18 = *(v0 + 752);
  v19 = *(v0 + 744);
  v16 = *(v0 + 736);
  v17 = *(v0 + 728);
  v20 = *(v0 + 720);
  v21 = *(v0 + 712);
  v4 = *(v0 + 592);
  v14 = *(v0 + 584);
  v5 = *(v0 + 440);
  v23 = *(v0 + 704);
  v24 = *(v0 + 376);
  v6 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v7(v1, v5 + v6, v3);
  SFAirDropSend.Transfer.id.getter();
  v8 = *(v2 + 8);
  v8(v1, v3);
  v7(v13, v5 + v6, v3);
  SFAirDropSend.Transfer.startDate.getter();
  v8(v13, v3);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  *(v0 + 992) = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:);
  v9 = *(v4 + 104);
  *(v0 + 968) = v9;
  *(v0 + 976) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v16);
  (*(v4 + 56))(v16, 0, 1, v14);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v18 + 56))(v17, 0, 1, v19);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  v10 = &v20[*(sub_10028088C(&qword_10097E9D0, &unk_1007FC200) + 48)];
  (*(v22 + 16))(v20, v15, v25);
  *v10 = v27;
  *(v10 + 1) = v26;
  (*(v21 + 104))(v20, enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:), v23);
  sub_100335364(v20, v24);
  (*(v21 + 8))(v20, v23);
  v11 = swift_task_alloc();
  *(v0 + 984) = v11;
  *v11 = v0;
  v11[1] = sub_1003AB67C;

  return sub_100334168();
}

uint64_t sub_1003AB67C()
{
  v1 = *(*v0 + 896);

  return _swift_task_switch(sub_1003AB78C, v1, 0);
}

uint64_t sub_1003AB78C()
{
  v127 = v0;
  v1 = *(v0 + 440);
  (*(*(v0 + 688) + 16))(*(v0 + 696), v1 + *(v0 + 904), *(v0 + 680));
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection;
  v3 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection);
  if (v3)
  {
    v4 = *(v0 + 672);
    v5 = *(v0 + 656);
    v6 = *(v0 + 448);
    v7 = *(v0 + 456);
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    swift_beginAccess();
    (*(v7 + 16))(v4, v3 + v8, v6);
    (*(v7 + 56))(v4, 0, 1, v6);
    sub_1003C36B0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v9 = 0;
  }

  else
  {
    v9 = 1;
    (*(*(v0 + 456) + 56))(*(v0 + 672), 1, 1, *(v0 + 448));
  }

  (*(*(v0 + 512) + 56))(*(v0 + 656), v9, 1, *(v0 + 504));

  CurrentValueSubject.value.getter();

  v125 = *(v0 + 368);
  v10 = *(v1 + v2);
  v11 = *(v0 + 640);
  v12 = *(v0 + 624);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    swift_beginAccess();
    sub_10000FF90(v10 + v13, v11, &qword_100977BB0, &qword_1007FADE0);
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    swift_beginAccess();
    v15 = type metadata accessor for SFNWInterfaceType();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v12, v10 + v14, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
  }

  else
  {
    v17 = _s13UploadRequestVMa(0);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = type metadata accessor for SFNWInterfaceType();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  v19 = *(v0 + 640);
  v20 = *(v0 + 632);
  (*(v0 + 968))(*(v0 + 608), *(v0 + 992), *(v0 + 584));
  sub_10000FF90(v19, v20, &qword_100977BB0, &qword_1007FADE0);
  v21 = _s13UploadRequestVMa(0);
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  v23 = *(v0 + 632);
  if (v22 == 1)
  {
    sub_100005508(v23, &qword_100977BB0, &qword_1007FADE0);
  }

  else
  {
    sub_1003C41CC(v23, _s13UploadRequestVMa);
  }

  v24 = *(v0 + 616);
  sub_10000FF90(*(v0 + 624), v24, &qword_100977DC0, &unk_1007FB320);
  v25 = type metadata accessor for SFNWInterfaceType();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v24, 1, v25);
  v28 = *(v0 + 616);
  if (v27 == 1)
  {
    sub_100005508(*(v0 + 616), &qword_100977DC0, &unk_1007FB320);
  }

  else
  {
    SFNWInterfaceType.description.getter();
    (*(v26 + 8))(v28, v25);
  }

  v29 = *(v0 + 784);
  v30 = *(v0 + 776);
  v31 = *(v0 + 768);
  v119 = *(v0 + 608);
  v32 = *(v0 + 592);
  v120 = *(v0 + 584);
  v121 = *(v0 + 600);
  v33 = *(v0 + 576);
  v34 = *(v0 + 568);
  v35 = *(v0 + 560);
  sub_10028088C(&qword_10097B1C8, &unk_1007FE4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = 0x726566736E617274;
  *(inited + 40) = 0xEA00000000004449;
  SFAirDropSend.Request.id.getter();
  SFAirDrop.TransferIdentifier.id.getter();
  (*(v30 + 8))(v29, v31);
  UUID.uuidString.getter();
  (*(v34 + 8))(v33, v35);
  v37 = String._bridgeToObjectiveC()();

  *(inited + 48) = v37;
  *(inited + 56) = 1702521203;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x726F70736E617274;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x746C75736572;
  *(inited + 112) = 0xE600000000000000;
  sub_1003E64C0();
  *(inited + 120) = Int._bridgeToObjectiveC()();
  strcpy((inited + 128), "failureSubType");
  *(inited + 143) = -18;
  (*(v32 + 16))(v121, v119, v120);
  v38 = (*(v32 + 88))(v121, v120);
  v39 = *(v0 + 600);
  v40 = *(v0 + 592);
  v41 = *(v0 + 584);
  if (v38 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
  {
    v42 = *(v0 + 552);
    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    (*(v40 + 96))(*(v0 + 600), v41);
    (*(v43 + 32))(v42, v39, v44);
    SFAirDropSend.Failure.errorDescription.getter();
    (*(v43 + 8))(v42, v44);
  }

  else
  {
    (*(v40 + 8))(*(v0 + 600), v41);
  }

  v45 = *(v0 + 656);
  v46 = *(v0 + 648);
  v47 = *(v0 + 504);
  v48 = *(v0 + 512);
  v49 = String._bridgeToObjectiveC()();

  *(inited + 144) = v49;
  v50 = sub_1002812CC(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_10097B1D0, &qword_1007FEC90);
  swift_arrayDestroy();
  sub_10000FF90(v45, v46, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_100005508(*(v0 + 648), &qword_1009763E0, &qword_1007F95D0);
    if (*(v125 + 16))
    {
      sub_1003E5DF0(v125);
      v51 = String._bridgeToObjectiveC()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(v51, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      sub_1003E6060(v125);
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      sub_10057B0BC(isa, 0x6C6F636F746F7270, 0xE800000000000000, v54);
      sub_1003E6260(v125);
      v55 = Int._bridgeToObjectiveC()().super.super.isa;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v126[0] = v50;
      sub_10057B0BC(v55, 0xD000000000000010, 0x800000010078E320, v56);
    }
  }

  else
  {
    v57 = *(v0 + 912);
    v58 = *(v0 + 872);
    v59 = *(v0 + 856);
    v60 = *(v0 + 528);
    v122 = *(v0 + 520);
    sub_10000ED78(*(v0 + 648), v60, type metadata accessor for SDAirDropDiscoveredEndpoint);
    SFAirDropSend.Request.type.getter();
    sub_1003E67D8(v58);
    v57(v58, v59);
    v61 = String._bridgeToObjectiveC()();

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v50;
    sub_10057B0BC(v61, 1701869940, 0xE400000000000000, v62);
    sub_1003C36B0(v60, v122, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1003C41CC(*(v0 + 520), off_1008DE250[EnumCaseMultiPayload]);
    v64 = *(v0 + 528);
    v66 = *(v0 + 488);
    v65 = *(v0 + 496);
    v67 = *(v0 + 480);
    v68 = Int._bridgeToObjectiveC()().super.super.isa;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v50;
    sub_10057B0BC(v68, 0x6C6F636F746F7270, 0xE800000000000000, v69);
    sub_10032C154(v65);
    SFAirDrop.DeviceRelationship.rawValue.getter();
    (*(v66 + 8))(v65, v67);
    v70 = Int._bridgeToObjectiveC()().super.super.isa;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v50;
    sub_10057B0BC(v70, 0xD000000000000010, 0x800000010078E320, v71);
    sub_1003C41CC(v64, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v72 = *(v0 + 664);
  v73 = *(v0 + 448);
  v74 = *(v0 + 456);
  sub_10000FF90(*(v0 + 672), v72, &qword_10097B1A8, &unk_1007FE4B0);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    v75 = *(v0 + 664);

    sub_100005508(v75, &qword_10097B1A8, &unk_1007FE4B0);
  }

  else
  {
    (*(*(v0 + 456) + 32))(*(v0 + 472), *(v0 + 664), *(v0 + 448));
    v76 = SFAirDrop.NetworkMetrics.payload.getter();
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v50;
    sub_1003C3240(v76, sub_1003C29BC, 0, v77, v126);

    v50 = v126[0];
    if (qword_1009737E0 != -1)
    {
      swift_once();
    }

    v78 = *(v0 + 464);
    v79 = *(v0 + 472);
    v80 = *(v0 + 448);
    v81 = *(v0 + 456);
    v82 = type metadata accessor for Logger();
    sub_10000C4AC(v82, qword_10097B8A0);
    (*(v81 + 16))(v78, v79, v80);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 464);
    v87 = *(v0 + 472);
    v88 = *(v0 + 448);
    v89 = *(v0 + 456);
    if (v85)
    {
      v90 = swift_slowAlloc();
      v124 = v87;
      v91 = swift_slowAlloc();
      v126[0] = v91;
      *v90 = 136315138;
      v92 = SFAirDrop.NetworkMetrics.description.getter();
      v93 = v88;
      v123 = v88;
      v95 = v94;
      v96 = *(v89 + 8);
      v96(v86, v93);
      v97 = sub_10000C4E4(v92, v95, v126);

      *(v90 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v83, v84, "SFAirDrop.NetworkMetrics: %s", v90, 0xCu);
      sub_10000C60C(v91);

      v96(v124, v123);
    }

    else
    {

      v98 = *(v89 + 8);
      v98(v86, v88);
      v98(v87, v88);
    }
  }

  v99 = *(v0 + 840);
  v117 = *(v0 + 832);
  v118 = *(v0 + 848);
  v100 = *(v0 + 688);
  v115 = *(v0 + 680);
  v116 = *(v0 + 696);
  v113 = *(v0 + 656);
  v114 = *(v0 + 672);
  v111 = *(v0 + 624);
  v112 = *(v0 + 640);
  v110 = *(v0 + 608);
  v101 = *(v0 + 592);
  v102 = *(v0 + 584);
  v103 = *(v0 + 408);
  sub_1003C34C8(v103, v0 + 168);
  v104 = String._bridgeToObjectiveC()();
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v126[0] = v50;
  sub_10057B0BC(v104, 0xD000000000000012, 0x800000010078E370, v105);
  sub_10030D74C(v103);
  v106 = String._bridgeToObjectiveC()();
  sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
  v107 = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();

  (*(v101 + 8))(v110, v102);
  sub_100005508(v111, &qword_100977DC0, &unk_1007FB320);
  sub_100005508(v112, &qword_100977BB0, &qword_1007FADE0);
  sub_100005508(v113, &qword_1009763E0, &qword_1007F95D0);
  sub_100005508(v114, &qword_10097B1A8, &unk_1007FE4B0);
  (*(v100 + 8))(v116, v115);
  (*(v99 + 8))(v118, v117);

  v108 = *(v0 + 8);

  return v108();
}

uint64_t sub_1003AC85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0);
  v8[11] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003AC960, 0, 0);
}

uint64_t sub_1003AC960()
{
  v1 = 0;
  v2 = v0[4];
  v0[2] = v2;
  v3 = v0[13];
  v4 = *(v2 + 16);
  while (v4 != v1)
  {
    v5 = v0[14];
    v6 = v0[12];
    (*(v3 + 16))(v5, v0[4] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1++, v6);
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = [v8 isiWorkDocument];

    (*(v3 + 8))(v5, v6);
    if (v10)
    {
      v11 = 8;
      goto LABEL_6;
    }
  }

  v11 = 131074;
LABEL_6:
  v12 = swift_task_alloc();
  v0[15] = v12;
  v13 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v14 = sub_100011630(&qword_10097B1D8, &qword_100975610, &qword_1007F89B0, &protocol conformance descriptor for [A]);
  *v12 = v0;
  v12[1] = sub_1003ACB20;

  return Sequence<>.coordinateRead(withSaveToTempDir:options:)(0, v11, v13, v14);
}

uint64_t sub_1003ACB20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1003ACEF4;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_1003ACC48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003ACC48()
{
  v1 = v0[11];
  v2 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1003ACD40;
  v4 = v0[17];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[3];

  return sub_1003A9FB4(v11, v9, v10, v7, v8, v5, v4, v6);
}

uint64_t sub_1003ACD40()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(*v1 + 152) = v0;

  sub_100005508(v2, &qword_10097B1B8, &qword_1007FE4C0);

  if (v0)
  {

    return _swift_task_switch(sub_1003ACF64, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1003ACEF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ACF64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ACFD4(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 104) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AD074, v3, 0);
}

void sub_1003AD074()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections;
  swift_beginAccess();
  v19 = v1;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SDAirDropSendConnection(0);
    sub_1003C3718(&qword_10097AB18, type metadata accessor for SDAirDropSendConnection, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_100027D64(v3);
      *(v19 + v2) = &_swiftEmptySetSingleton;

      v18 = *(v0 + 8);

      v18();
      return;
    }

    while (1)
    {
      sub_100305E34(*(v0 + 104));

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = __CocoaSet.Iterator.next()();
      if (v17)
      {
        *(v0 + 88) = v17;
        type metadata accessor for SDAirDropSendConnection(0);
        swift_dynamicCast();
        v16 = *(v0 + 80);
        v14 = v6;
        v15 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003AD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = type metadata accessor for Logger();
  v14 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = a3;
    v18 = Strong;
    (*(v14 + 16))(v16, Strong + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log, v39);

    (*(v11 + 16))(v13, a2, v10);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = v21;
      v34 = swift_slowAlloc();
      v40 = v34;
      *v21 = 136315138;
      SFAirDropSend.Transfer.id.getter();
      sub_1003C3718(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v32 = v20;
      v22 = v38;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = a4;
      v25 = v24;
      (*(v37 + 8))(v9, v22);
      (*(v11 + 8))(v13, v10);
      v26 = sub_10000C4E4(v23, v25, &v40);

      v27 = v33;
      *(v33 + 1) = v26;
      _os_log_impl(&_mh_execute_header, v19, v32, "Transfer %s was cancelled.", v27, 0xCu);
      sub_10000C60C(v34);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v14 + 8))(v16, v39);
  }

  v28 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, enum case for SFAirDropSend.Failure.cancelled(_:), v28);
  sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  SFProgressTask.cancel(_:)();

  return sub_100305E34(1);
}

uint64_t sub_1003AD788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10028088C(&qword_10097B330, &qword_1007FE728);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = _s12HelloRequestVMa(0);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AD920, v7, 0);
}

uint64_t sub_1003AD920()
{
  if (sub_10032ED50())
  {
    v2 = v0[12];
    v1 = v0[13];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[9];
    SFAirDropSend.Request.type.getter();
    v6 = SFAirDrop.TransferType.isPeerPayment.getter();
    (*(v2 + 8))(v1, v3);
    SFAirDropSend.Request.id.getter();
    v7 = *(v5 + 24);
    *(v4 + *(v5 + 20)) = 3;
    *(v4 + v7) = v6 & 1;
    sub_1002FD580(v4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1003ADB44;
    v9 = v0[6];

    return SFProgressTask.finalValue.getter(v0 + 16, v9);
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Receiver does not support HELLO, skipping", v12, 2u);
    }

    v13 = v0[1];

    return v13(0x300000000);
  }
}

uint64_t sub_1003ADB44()
{
  v2 = *v1;

  v3 = *(v2 + 112);
  if (v0)
  {

    v4 = sub_1003ADD44;
  }

  else
  {
    v4 = sub_1003ADC7C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003ADC7C()
{
  v1 = *(v0 + 128) | (*(v0 + 132) << 32);
  v2 = *(v0 + 80);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  sub_1003C41CC(v2, _s12HelloRequestVMa);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1003ADD44()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_1003C41CC(v1, _s12HelloRequestVMa);

  v2 = v0[1];

  return v2(0x300000000);
}

uint64_t sub_1003ADDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[191] = v5;
  v6[190] = a5;
  v6[189] = a4;
  v6[188] = a3;
  v6[187] = a2;
  v6[186] = a1;
  v7 = type metadata accessor for SFAirDropSend.Failure();
  v6[192] = v7;
  v6[193] = *(v7 - 8);
  v6[194] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.ContactRequest();
  v6[195] = v8;
  v6[196] = *(v8 - 8);
  v6[197] = swift_task_alloc();
  v6[198] = swift_task_alloc();
  v6[199] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Transfer.State();
  v6[200] = v9;
  v6[201] = *(v9 - 8);
  v6[202] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  v6[203] = v10;
  v6[204] = *(v10 - 8);
  v6[205] = swift_task_alloc();
  sub_10028088C(&qword_10097B200, &qword_1007FE578);
  v6[206] = swift_task_alloc();
  v11 = _s10AskRequestVMa(0);
  v6[207] = v11;
  v12 = *(v11 - 8);
  v6[208] = v12;
  v6[209] = *(v12 + 64);
  v6[210] = swift_task_alloc();
  v6[211] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v6[212] = v13;
  v6[213] = *(v13 - 8);
  v6[214] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropSend.Request();
  v6[215] = v14;
  v6[216] = *(v14 - 8);
  v6[217] = swift_task_alloc();
  v6[218] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDrop.TransferType();
  v6[219] = v15;
  v6[220] = *(v15 - 8);
  v6[221] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v6[222] = swift_task_alloc();
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6[223] = v16;
  v6[224] = *(v16 - 8);
  v6[225] = swift_task_alloc();
  v6[226] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v6[227] = v17;
  v6[228] = *(v17 - 8);
  v6[229] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDrop.ContactInfo();
  v6[230] = v18;
  v6[231] = *(v18 - 8);
  v6[232] = swift_task_alloc();
  sub_10028088C(&qword_10097B198, &qword_1007FE450);
  v6[233] = swift_task_alloc();
  v6[234] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v6[235] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003AE398, v19, 0);
}

uint64_t sub_1003AE398()
{
  v81 = v0;
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  sub_1003A0614(v1);
  sub_10000FF90(v1, v2, &qword_10097B198, &qword_1007FE450);
  v5 = *(v3 + 48);
  v6 = v5(v2, 1, v4);
  v7 = *(v0 + 1864);
  if (v6 == 1)
  {
    v8 = *(v0 + 1840);
    v9 = *(v0 + 1832);
    v10 = *(v0 + 1824);
    v11 = *(v0 + 1816);
    *v9 = 0xD000000000000012;
    v9[1] = 0x800000010078E5D0;
    (*(v10 + 104))(v9, enum case for SFAirDrop.ContactInfo.Handle.email(_:), v11);
    SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();
    if (v5(v7, 1, v8) != 1)
    {
      sub_100005508(*(v0 + 1864), &qword_10097B198, &qword_1007FE450);
    }
  }

  else
  {
    (*(*(v0 + 1848) + 32))(*(v0 + 1856), *(v0 + 1864), *(v0 + 1840));
  }

  v12 = *(v0 + 1792);
  v13 = *(v0 + 1784);
  v14 = *(v0 + 1776);

  CurrentValueSubject.value.getter();

  sub_1002FB3B4(*(v0 + 1472), v14);

  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v15 = *(v0 + 1872);
    v16 = *(v0 + 1856);
    v17 = *(v0 + 1848);
    v18 = *(v0 + 1840);
    v19 = *(v0 + 1544);
    v20 = *(v0 + 1536);
    sub_100005508(*(v0 + 1776), &qword_1009763E0, &qword_1007F95D0);
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    v22 = v21;
    UUID.init()();
    (*(v19 + 104))(v22, enum case for SFAirDropSend.Failure.missingEndpoint(_:), v20);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    sub_100005508(v15, &qword_10097B198, &qword_1007FE450);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 1528);
    sub_10000ED78(*(v0 + 1776), *(v0 + 1808), type metadata accessor for SDAirDropDiscoveredEndpoint);
    *(v0 + 1888) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 1768);
      v30 = *(v0 + 1760);
      v31 = *(v0 + 1752);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v80[0] = v33;
      *v32 = 136315138;
      SFAirDropSend.Request.type.getter();
      sub_1003C3718(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v30 + 8))(v29, v31);
      v37 = sub_10000C4E4(v34, v36, v80);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Send StateMachine ASK START - Async {type: %s}", v32, 0xCu);
      sub_10000C60C(v33);
    }

    v38 = *(v0 + 1800);
    v39 = *(v0 + 1744);
    v40 = *(v0 + 1728);
    v41 = *(v0 + 1720);
    v71 = v39;
    v75 = *(v0 + 1712);
    v76 = *(v0 + 1704);
    v78 = *(v0 + 1696);
    v42 = *(v0 + 1664);
    v43 = *(v0 + 1656);
    v44 = *(v0 + 1528);
    sub_1003C36B0(*(v0 + 1808), v38, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v73 = *(v44 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);
    *(v0 + 1896) = v73;
    v74 = *(v44 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_pseudonymService);
    v45 = *(v44 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue);
    v79 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
    *(v0 + 1904) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;
    v72 = *(v40 + 16);
    *(v0 + 1912) = v72;
    *(v0 + 1920) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v72(v39, v44 + v79, v41);
    v77 = type metadata accessor for SDAirDropSendConnection(0);
    v46 = objc_allocWithZone(v77);
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags] = 0;
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection] = 0;
    v47 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloRequest;
    v48 = _s12HelloRequestVMa(0);
    (*(*(v48 - 8) + 56))(&v46[v47], 1, 1, v48);
    v49 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
    v50 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
    (*(*(v50 - 8) + 56))(&v46[v49], 1, 1, v50);
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection] = 0;
    (*(v42 + 56))(&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest], 1, 1, v43);
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection] = 0;
    v51 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
    v52 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
    (*(*(v52 - 8) + 56))(&v46[v51], 1, 1, v52);
    v53 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    v54 = _s13UploadRequestVMa(0);
    (*(*(v54 - 8) + 56))(&v46[v53], 1, 1, v54);
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext] = 0;
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection] = 0;
    v55 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
    v56 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
    (*(*(v56 - 8) + 56))(&v46[v55], 1, 1, v56);
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs] = _swiftEmptyArrayStorage;
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection] = 0;
    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
    v58 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
    (*(*(v58 - 8) + 56))(&v46[v57], 1, 1, v58);
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection] = 0;
    v59 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    v60 = enum case for SFNWInterfaceType.awdl(_:);
    v61 = type metadata accessor for SFNWInterfaceType();
    (*(*(v61 - 8) + 104))(&v46[v59], v60, v61);
    sub_10062DCB4();
    sub_1003C36B0(v38, &v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint], type metadata accessor for SDAirDropDiscoveredEndpoint);
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_queue] = v45;
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_deviceStatus] = v73;
    *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_pseudonymService] = v74;
    v72(&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendRequest], v71, v41);
    v62 = v45;
    v63 = v73;

    SFAirDrop.NetworkMetrics.init()();
    (*(v76 + 32))(&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics], v75, v78);
    v64 = type metadata accessor for SDAirDropP2PMonitor();
    v65 = swift_allocObject();
    *(v65 + 16) = [objc_allocWithZone(WiFiP2PAWDLStateMonitor) init];
    v66 = &v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor];
    v66[3] = v64;
    v66[4] = &off_1008DBC50;
    *v66 = v65;
    *(v0 + 1440) = v46;
    *(v0 + 1448) = v77;
    v67 = objc_msgSendSuper2((v0 + 1440), "init");
    *(v0 + 1928) = v67;
    (*(v40 + 8))(v71, v41);
    sub_1003C41CC(v38, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_beginAccess();
    v68 = v67;
    sub_10046EFE8(v80, v68);
    swift_endAccess();

    v69 = swift_task_alloc();
    *(v0 + 1936) = v69;
    *v69 = v0;
    v69[1] = sub_1003AEF6C;
    v70 = *(v0 + 1808);

    return sub_1003AD788(v44 + v79, v68, v70);
  }
}

uint64_t sub_1003AEF6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1456) = v1;
  *(v3 + 1464) = a1;
  v4 = *(v2 + 1880);

  return _swift_task_switch(sub_1003AF084, v4, 0);
}

uint64_t sub_1003AF084()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1528);
  (*(v0 + 1912))(*(v0 + 1736), v2 + *(v0 + 1904), *(v0 + 1720));
  sub_10032FC64(v1, *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent));
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v8 = swift_task_alloc();
  *(v0 + 1944) = v8;
  *v8 = v0;
  v8[1] = sub_1003AF190;
  v9 = *(v0 + 1896);
  v10 = *(v0 + 1736);
  v11 = *(v0 + 1688);

  return sub_1005A1C54(v11, v10, v4, v6, v9, 0, 0, 0);
}

uint64_t sub_1003AF190()
{
  v2 = *v1;
  *(*v1 + 1952) = v0;

  v3 = *(v2 + 1880);
  if (v0)
  {
    v4 = sub_1003B04B4;
  }

  else
  {
    v4 = sub_1003AF2BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003AF2BC()
{
  v1 = v0[241];
  v2 = v0[210];
  v3 = v0[208];
  sub_1003C36B0(v0[211], v2, _s10AskRequestVMa);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[245] = v5;
  *(v5 + 16) = v1;
  sub_10000ED78(v2, v5 + v4, _s10AskRequestVMa);
  v6 = v1;
  swift_asyncLet_begin();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Send StateMachine SHARE CONTACT PERMISSION START", v9, 2u);
  }

  v10 = v0[232];
  v11 = v0[231];
  v12 = v0[230];
  v13 = v0[206];
  v14 = v0[204];
  v25 = v0[205];
  v26 = v0[203];
  v15 = v0[202];
  v16 = v0[201];
  v24 = v0[200];

  sub_1003BF3B0(v10, 0, v13);
  v17 = *(sub_10028088C(&unk_100986200, &unk_1007FE580) + 48);
  (*(v11 + 16))(v15, v10, v12);
  v18 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
  (*(*(v18 - 8) + 16))(&v15[v17], v13, v18);
  v19 = enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:);
  v20 = *(v16 + 104);
  v0[246] = v20;
  v0[247] = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v15, v19, v24);
  sub_100335364(v15, v25);
  v21 = *(v16 + 8);
  v0[248] = v21;
  v0[249] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v15, v24);
  v22 = *(v14 + 8);
  v0[250] = v22;
  v0[251] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v25, v26);

  return _swift_task_switch(sub_1003AF5C0, 0, 0);
}

uint64_t sub_1003AF5C0()
{
  v1 = v0[206];
  v2 = swift_task_alloc();
  v0[252] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[253] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[254] = v4;
  *v4 = v0;
  v4[1] = sub_1003AF6C8;
  v5 = v0[198];
  v6 = v0[195];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1007FE718, v2, sub_1003C43C0, v3, 0, 0, v6);
}

uint64_t sub_1003AF6C8()
{
  v2 = *v1;
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v3 = sub_1003AFB6C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 1880);

    v3 = sub_1003AF7FC;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1003AF7FC()
{
  v35 = v0;
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[196];
  v5 = v0[195];
  v6 = *(v4 + 32);
  v0[256] = v6;
  v0[257] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v6(v1, v2, v5);
  v33 = *(v4 + 16);
  v33(v3, v1, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[197];
  v11 = v0[196];
  v12 = v0[195];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1003C3718(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000C4E4(v14, v16, &v34);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Send StateMachine SHARE CONTACT PERMISSION END {contactRequest: %{private,mask.hash}s}", v13, 0x16u);
    sub_10000C60C(v32);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[258] = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Send StateMachine EXCHANGING START", v21, 2u);
  }

  v31 = v0[250];
  v30 = v0[248];
  v22 = v0[246];
  v23 = v0[205];
  v29 = v0[203];
  v24 = v0[202];
  v25 = v0[200];
  v26 = v0[199];
  v27 = v0[195];

  v33(v24, v26, v27);
  v22(v24, enum case for SFAirDropSend.Transfer.State.exchanging(_:), v25);
  sub_100335364(v24, v23);
  v30(v24, v25);
  v31(v23, v29);

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 105, sub_1003AFE94, v0 + 136);
}

uint64_t sub_1003AFB6C()
{
  v1 = *(v0 + 1880);

  return _swift_task_switch(sub_1003AFBE4, v1, 0);
}

uint64_t sub_1003AFBE4()
{
  v0[185] = v0[255];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v1 = (*(v0[193] + 88))(v0[194], v0[192]);
    if (v1 == enum case for SFAirDropSend.Failure.cancelled(_:))
    {
      v2 = v1;

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Send StateMachine SHARE CONTACT PERMISSION END - Cancelling exchange", v5, 2u);
      }

      v6 = v0[206];
      v7 = v0[193];
      v8 = v0[192];

      sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      v0[273] = swift_allocError();
      (*(v7 + 104))(v9, v2, v8);
      swift_willThrow();
      sub_100005508(v6, &qword_10097B200, &qword_1007FE578);

      v10 = sub_1003B06A0;
      v11 = v0 + 2;
      v12 = v0 + 105;
      v13 = v0 + 118;
    }

    else
    {
      v14 = v0[194];
      v15 = v0[193];
      v16 = v0[192];
      sub_100005508(v0[206], &qword_10097B200, &qword_1007FE578);
      (*(v15 + 8))(v14, v16);

      v10 = sub_1003B08D4;
      v11 = v0 + 2;
      v12 = v0 + 105;
      v13 = v0 + 100;
    }
  }

  else
  {
    sub_100005508(v0[206], &qword_10097B200, &qword_1007FE578);

    v10 = sub_1003B0B08;
    v11 = v0 + 2;
    v12 = v0 + 105;
    v13 = v0 + 82;
  }

  return _swift_asyncLet_finish(v11, v12, v10, v13);
}

uint64_t sub_1003AFE94()
{
  *(v1 + 2072) = v0;
  if (v0)
  {
    v2 = sub_1003B0B24;
  }

  else
  {
    v2 = sub_1003AFEC8;
  }

  return _swift_task_switch(v2, *(v1 + 1880), 0);
}

uint64_t sub_1003AFEC8()
{
  v30 = v0;
  v1 = *(v0 + 920);
  *(v0 + 760) = *(v0 + 904);
  *(v0 + 776) = v1;
  v2 = *(v0 + 856);
  *(v0 + 696) = *(v0 + 840);
  *(v0 + 712) = v2;
  v3 = *(v0 + 888);
  *(v0 + 728) = *(v0 + 872);
  *(v0 + 744) = v3;
  v4 = *(v0 + 896);
  *(v0 + 2112) = *(v0 + 880);
  *(v0 + 2128) = v4;
  v5 = *(v0 + 928);
  *(v0 + 2144) = *(v0 + 912);
  *(v0 + 792) = *(v0 + 936);
  *(v0 + 2080) = *(v0 + 840);
  *(v0 + 2088) = *(v0 + 848);
  *(v0 + 2096) = *(v0 + 856);
  *(v0 + 2104) = *(v0 + 864);
  *(v0 + 2192) = *(v0 + 872);
  *(v0 + 2160) = v5;
  sub_1003C34C8(v0 + 696, v0 + 984);
  sub_1003C34C8(v0 + 696, v0 + 1128);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_10030D74C(v0 + 696);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1648);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    sub_1003C34C8(v0 + 696, v0 + 1272);
    v11 = sub_1005A43F8();
    v13 = v12;
    sub_10030D74C(v0 + 696);
    v14 = sub_10000C4E4(v11, v13, &v29);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Send StateMachine ASK END - Async {response: %s}", v9, 0xCu);
    sub_10000C60C(v10);

    v15 = v8;
  }

  else
  {
    v16 = *(v0 + 1648);

    v15 = v16;
  }

  sub_100005508(v15, &qword_10097B200, &qword_1007FE578);
  v17 = *(v0 + 2048);
  v18 = *(v0 + 1808);
  v19 = *(v0 + 1688);
  v20 = *(v0 + 1592);
  v21 = *(v0 + 1568);
  v22 = *(v0 + 1560);
  v28 = *(v0 + 1520);
  v23 = *(v0 + 1512);
  v24 = *(v0 + 1504);
  v25 = *(v0 + 1496);
  *(v0 + 2176) = *(v0 + 1464);
  sub_1003C36B0(v19, v25, _s10AskRequestVMa);
  sub_1003C36B0(v18, v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v17(v23, v20, v22);
  (*(v21 + 56))(v23, 0, 1, v22);
  v26 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  (*(*(v26 - 8) + 56))(v28, 1, 1, v26);

  return _swift_asyncLet_finish(v0 + 16, v0 + 840, sub_1003B01EC, v0 + 1376);
}

uint64_t sub_1003B0208()
{
  v19 = *(v0 + 2192);
  v17 = *(v0 + 2096);
  v18 = *(v0 + 2104);
  v16 = *(v0 + 2088);
  v14 = *(v0 + 2176);
  v15 = *(v0 + 2080);
  v13 = *(v0 + 1928);
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1808);
  v12 = *(v0 + 2112);
  v10 = *(v0 + 2128);
  v11 = *(v0 + 2144);
  v9 = *(v0 + 2160);
  v6 = *(v0 + 1488);
  sub_1003C41CC(*(v0 + 1688), _s10AskRequestVMa);
  sub_1003C41CC(v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_10097B198, &qword_1007FE450);

  *(v6 + 4) = BYTE4(v14);
  *v6 = v14;
  *(v6 + 8) = v13;
  *(v6 + 16) = v15;
  *(v6 + 24) = v16;
  *(v6 + 32) = v17;
  *(v6 + 40) = v18;
  *(v6 + 48) = v19;
  *(v6 + 72) = v10;
  *(v6 + 56) = v12;
  *(v6 + 104) = v9;
  *(v6 + 88) = v11;
  *(v6 + 120) = 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003B04B4()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1808);

  sub_1003C41CC(v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_10097B198, &qword_1007FE450);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003B06BC()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1808);
  v6 = *(v0 + 1688);

  sub_1003C41CC(v6, _s10AskRequestVMa);
  sub_1003C41CC(v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_10097B198, &qword_1007FE450);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003B08F0()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1808);
  v6 = *(v0 + 1688);

  sub_1003C41CC(v6, _s10AskRequestVMa);
  sub_1003C41CC(v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_10097B198, &qword_1007FE450);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003B0B24()
{
  v1 = *(v0 + 1648);
  (*(v0 + 2064))(*(v0 + 1592), *(v0 + 1560));
  sub_100005508(v1, &qword_10097B200, &qword_1007FE578);

  return _swift_asyncLet_finish(v0 + 16, v0 + 840, sub_1003B0BC4, v0 + 1232);
}

uint64_t sub_1003B0BE0()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1808);
  v6 = *(v0 + 1688);

  sub_1003C41CC(v6, _s10AskRequestVMa);
  sub_1003C41CC(v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_10097B198, &qword_1007FE450);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003B0DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[52] = a7;
  v8[53] = v7;
  v8[50] = a5;
  v8[51] = a6;
  v8[48] = a3;
  v8[49] = a4;
  v8[46] = a1;
  v8[47] = a2;
  v8[54] = swift_getObjectType();
  v8[55] = sub_10028088C(&qword_10097B320, &qword_100806120);
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  sub_10028088C(&qword_10097B338, &unk_1007FE730);
  v8[58] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v8[59] = v9;
  v8[60] = *(v9 - 8);
  v8[61] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropSend.Request();
  v8[65] = v11;
  v8[66] = *(v11 - 8);
  v8[67] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v8[68] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B1044, v12, 0);
}

uint64_t sub_1003B1044()
{
  v36 = v0[67];
  v33 = v0[66];
  v1 = v0[63];
  v2 = v0[64];
  v24 = v2;
  v3 = v0[62];
  v21 = v0[65];
  v28 = v0[61];
  v29 = v0[60];
  v30 = v0[59];
  v32 = v0[58];
  v4 = v0[54];
  v34 = v0[55];
  v35 = v0[57];
  v5 = v0[53];
  v27 = v0[52];
  v6 = v0[51];
  v7 = *(v33 + 16);
  v7();
  v22 = *(v1 + 16);
  v22(v2, v6, v3);
  v23 = *&v5[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService];
  v0[27] = v4;
  v0[28] = &off_1008DE058;
  v0[24] = v5;
  type metadata accessor for SDAirDropAskFanoutHelper(0);
  v8 = swift_allocObject();
  v0[69] = v8;
  sub_10002F5B4((v0 + 24), v4);
  v9 = *(v4 - 8);
  v31 = swift_task_alloc();
  (*(v9 + 16))();
  v10 = *v31;
  v0[32] = v4;
  v0[33] = &off_1008DE058;
  v0[29] = v10;
  v11 = v5;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  v26 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v25 = *(*(v26 - 8) + 56);
  v25(v8 + v12, 1, 1, v26);
  *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askTasks) = &_swiftEmptySetSingleton;
  *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_failedResolveEndpointIDs) = &_swiftEmptySetSingleton;
  *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_needsFallbackDeviceIDs) = &_swiftEmptySetSingleton;
  *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_pipelinedUploadAvailable) = 1;
  (v7)(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest, v36, v21);
  v22(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_initialTransfer, v24, v3);
  *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_endpointService) = v23;
  *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_deviceStatus) = v27;
  sub_1002A9938((v0 + 29), v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner);
  v13 = v23;
  v14 = v27;
  Date.init()();
  (*(v29 + 32))(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askStart, v28, v30);
  v0[43] = 0;
  sub_10028088C(&unk_100985A40, &qword_1007FE740);
  sub_10028088C(&qword_10097B348, &qword_1007FE748);
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v1 + 8))(v24, v3);
  (*(v33 + 8))(v36, v21);
  sub_10000C60C(v0 + 29);
  v25(v32, 0, 1, v26);
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  sub_10000C788(v32, v8 + v15, &qword_10097B338, &unk_1007FE730);
  swift_endAccess();
  sub_10000C60C(v0 + 24);

  v16 = v34[12];
  v17 = v34[20];
  v18 = v34[32];
  v19 = swift_task_alloc();
  v0[70] = v19;
  *v19 = v0;
  v19[1] = sub_1003B150C;

  return sub_1004B28C0((v0 + 2), v35 + v16, v35 + v17, v35 + v18);
}

uint64_t sub_1003B150C()
{
  v2 = *v1;
  v3 = *v1;
  v3[71] = v0;
  v4 = *(v3 + 4);
  *(v3 + 580) = *(v3 + 20);
  *(v3 + 144) = v4;
  v3[73] = v2[3];
  v3[74] = v2[4];
  *(v3 + 75) = *(v3 + 5);
  v3[77] = v2[7];
  *(v3 + 716) = *(v3 + 64);
  v5 = *(v3 + 11);
  *(v3 + 39) = *(v3 + 9);
  *(v3 + 40) = v5;
  v6 = *(v3 + 15);
  *(v3 + 41) = *(v3 + 13);
  *(v3 + 42) = v6;
  v3[86] = v2[17];
  v3[87] = v2[18];

  v7 = v2[68];
  if (v0)
  {
    v8 = sub_1003B1BC4;
  }

  else
  {
    v9 = v3[55];
    *(v3 + 176) = v9[16];
    *(v3 + 177) = v9[24];
    *(v3 + 178) = v9[28];
    v8 = sub_1003B1708;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_1003B1708()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 716);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  v10 = *(v0 + 576);
  v11 = *(v0 + 456);
  v12 = *(v0 + 424);
  v13 = v11 + *(v0 + 708);
  v14 = *(v0 + 624);
  v15 = *(v0 + 640);
  v16 = *(v0 + 656);
  v17 = *(v0 + 672);
  *(v11 + 4) = *(v0 + 580);
  *v11 = v10;
  *(v11 + v2) = v9;
  *v13 = v8;
  *(v13 + 16) = v7;
  *(v13 + 24) = v6;
  *(v13 + 32) = v5;
  *(v13 + 40) = v14;
  *(v13 + 56) = v15;
  *(v13 + 72) = v16;
  *(v13 + 88) = v17;
  *(v11 + v1) = v4;
  v18 = *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection);
  *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection) = v3;
  v19 = v3;

  swift_beginAccess();
  v20 = v19;

  v22 = sub_1003C3038(v21, v20);

  if ((v22 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for SDAirDropSendConnection(0);
    sub_1003C3718(&qword_10097AB18, type metadata accessor for SDAirDropSendConnection, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);
  }

  else
  {
    v25 = 0;
    v27 = -1 << *(v22 + 32);
    v23 = v22 + 56;
    v24 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(v22 + 56);
  }

  v30 = (v24 + 64) >> 6;
  if (v22 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v31 = v25;
    v32 = v26;
    v33 = v25;
    if (!v26)
    {
      break;
    }

LABEL_12:
    v34 = (v32 - 1) & v32;
    v35 = *(*(v22 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    if (!v35)
    {
LABEL_18:
      v38 = *(v0 + 696);
      v39 = *(v0 + 456);
      v41 = *(v0 + 440);
      v40 = *(v0 + 448);
      v61 = *(v0 + 392);
      v55 = *(v0 + 384);
      v42 = *(v0 + 368);
      v52 = *(v0 + 376);
      sub_100027D64(v22);

      sub_10002C4E4(v39, v40, &qword_10097B320, &qword_100806120);
      v62 = *v40;
      v60 = *(v40 + 4);
      v43 = v41[12];
      v59 = *(v40 + v41[16]);
      v44 = v41[20];
      v45 = v40 + v41[24];
      v47 = *(v45 + 16);
      v46 = *(v45 + 24);
      v48 = *(v40 + v41[28]);
      v49 = *(v45 + 32);
      v50 = v41[32];
      v57 = *(v45 + 40);
      v58 = *v45;
      v56 = *(v45 + 72);
      v53 = *(v45 + 88);
      v54 = *(v45 + 56);
      sub_10000ED78(v40 + v43, v52, _s10AskRequestVMa);
      sub_10000ED78(v40 + v44, v55, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10002C4E4(v40 + v50, v61, &qword_10097B1B8, &qword_1007FE4C0);

      *(v42 + 4) = v60;
      *v42 = v62;
      *(v42 + 8) = v59;
      *(v42 + 16) = v58;
      *(v42 + 32) = v47;
      *(v42 + 40) = v46;
      *(v42 + 48) = v49;
      *(v42 + 72) = v54;
      *(v42 + 56) = v57;
      *(v42 + 104) = v53;
      *(v42 + 88) = v56;
      *(v42 + 120) = v48;
      v51 = *(v0 + 8);

      v51();
      return;
    }

    while (1)
    {
      sub_100305E34(0);
      swift_beginAccess();
      v37 = sub_10036E36C(v35);
      swift_endAccess();

      v25 = v33;
      v26 = v34;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v36 = __CocoaSet.Iterator.next()();
      if (v36)
      {
        *(v0 + 360) = v36;
        type metadata accessor for SDAirDropSendConnection(0);
        swift_dynamicCast();
        v35 = *(v0 + 352);
        v33 = v25;
        v34 = v26;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
      goto LABEL_18;
    }

    v32 = *(v23 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003B1BC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B1C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 368) = a7;
  *(v8 + 376) = v7;
  *(v8 + 944) = a6;
  *(v8 + 352) = a4;
  *(v8 + 360) = a5;
  *(v8 + 336) = a2;
  *(v8 + 344) = a3;
  *(v8 + 328) = a1;
  sub_10028088C(&qword_10097B350, &qword_1007FE758);
  *(v8 + 384) = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Failure();
  *(v8 + 392) = v9;
  *(v8 + 400) = *(v9 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v10 = type metadata accessor for SFSecurityScopedURL();
  *(v8 + 424) = v10;
  *(v8 + 432) = *(v10 - 8);
  *(v8 + 440) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v8 + 448) = v11;
  *(v8 + 456) = *(v11 - 8);
  *(v8 + 464) = swift_task_alloc();
  v12 = type metadata accessor for CancellationError();
  *(v8 + 472) = v12;
  *(v8 + 480) = *(v12 - 8);
  *(v8 + 488) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
  *(v8 + 496) = v13;
  *(v8 + 504) = *(v13 - 8);
  *(v8 + 512) = swift_task_alloc();
  sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0);
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = swift_task_alloc();
  v14 = sub_10028088C(&qword_10097B328, &qword_1007FE720);
  *(v8 + 536) = v14;
  *(v8 + 544) = *(v14 - 8);
  *(v8 + 552) = swift_task_alloc();
  v15 = _s10AskRequestVMa(0);
  *(v8 + 560) = v15;
  *(v8 + 568) = *(v15 - 8);
  *(v8 + 576) = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.TransferType();
  *(v8 + 584) = v16;
  *(v8 + 592) = *(v16 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = sub_10028088C(&qword_10097B320, &qword_100806120);
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v17 = type metadata accessor for SFAirDrop.NetworkMetrics();
  *(v8 + 632) = v17;
  *(v8 + 640) = *(v17 - 8);
  *(v8 + 648) = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropSend.Request();
  *(v8 + 656) = v18;
  *(v8 + 664) = *(v18 - 8);
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  *(v8 + 712) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B21F0, v19, 0);
}

uint64_t sub_1003B21F0()
{
  v89 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;

  sub_100390318(sub_1003C422C, v5, v4);
  LOBYTE(v2) = v6;

  *(v0 + 720) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  v7 = *(v0 + 360);
  if (v2)
  {
    sub_1003C36B0(v7, *(v0 + 688), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 688);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v88[0] = v13;
      *v12 = 136315138;
      v14 = sub_10032DA30();
      v16 = v15;
      sub_1003C41CC(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v17 = sub_10000C4E4(v14, v16, v88);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ask connection already exists for endpoint - %s", v12, 0xCu);
      sub_10000C60C(v13);
    }

    else
    {

      sub_1003C41CC(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v28 = *(v0 + 392);
    v29 = *(v0 + 400);
    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v29 + 104))(v30, enum case for SFAirDropSend.Failure.badRequest(_:), v28);
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    sub_1003C36B0(v7, *(v0 + 704), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 704);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88[0] = v23;
      *v22 = 136315138;
      v24 = sub_10032DA30();
      v26 = v25;
      sub_1003C41CC(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v27 = sub_10000C4E4(v24, v26, v88);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Sending Ask to new endpoint: %s", v22, 0xCu);
      sub_10000C60C(v23);
    }

    else
    {

      sub_1003C41CC(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v33 = *(v0 + 696);
    v34 = *(v0 + 680);
    v35 = *(v0 + 664);
    v36 = *(v0 + 656);
    v83 = *(v0 + 648);
    v84 = *(v0 + 640);
    v86 = *(v0 + 632);
    v87 = v35;
    v37 = *(v0 + 568);
    v38 = *(v0 + 560);
    v39 = *(v0 + 368);
    v40 = *(v0 + 376);
    sub_1003C36B0(*(v0 + 360), v33, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v81 = *(v40 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);
    *(v0 + 728) = v81;
    v82 = *(v40 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_pseudonymService);
    v79 = *(v40 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue);
    v80 = *(v35 + 16);
    *(v0 + 736) = v80;
    *(v0 + 744) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v36;
    v80(v34, v39, v36);
    v85 = type metadata accessor for SDAirDropSendConnection(0);
    v42 = objc_allocWithZone(v85);
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags] = 0;
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection] = 0;
    v43 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloRequest;
    v44 = _s12HelloRequestVMa(0);
    (*(*(v44 - 8) + 56))(&v42[v43], 1, 1, v44);
    v45 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
    v46 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
    (*(*(v46 - 8) + 56))(&v42[v45], 1, 1, v46);
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection] = 0;
    (*(v37 + 56))(&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest], 1, 1, v38);
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection] = 0;
    v47 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
    v48 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
    (*(*(v48 - 8) + 56))(&v42[v47], 1, 1, v48);
    v49 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
    v50 = _s13UploadRequestVMa(0);
    (*(*(v50 - 8) + 56))(&v42[v49], 1, 1, v50);
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext] = 0;
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection] = 0;
    v51 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
    v52 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
    (*(*(v52 - 8) + 56))(&v42[v51], 1, 1, v52);
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs] = _swiftEmptyArrayStorage;
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection] = 0;
    v53 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
    v54 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
    (*(*(v54 - 8) + 56))(&v42[v53], 1, 1, v54);
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection] = 0;
    v55 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
    v56 = enum case for SFNWInterfaceType.awdl(_:);
    v57 = type metadata accessor for SFNWInterfaceType();
    (*(*(v57 - 8) + 104))(&v42[v55], v56, v57);
    sub_10062DCB4();
    sub_1003C36B0(v33, &v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint], type metadata accessor for SDAirDropDiscoveredEndpoint);
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_queue] = v79;
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_deviceStatus] = v81;
    *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_pseudonymService] = v82;
    v80(&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendRequest], v34, v41);
    v58 = v79;
    v59 = v81;

    SFAirDrop.NetworkMetrics.init()();
    (*(v84 + 32))(&v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics], v83, v86);
    v60 = type metadata accessor for SDAirDropP2PMonitor();
    v61 = swift_allocObject();
    *(v61 + 16) = [objc_allocWithZone(WiFiP2PAWDLStateMonitor) init];
    v62 = &v42[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor];
    v62[3] = v60;
    v62[4] = &off_1008DBC50;
    *v62 = v61;
    *(v0 + 296) = v42;
    *(v0 + 304) = v85;
    v63 = objc_msgSendSuper2((v0 + 296), "init");
    *(v0 + 752) = v63;
    (*(v87 + 8))(v34, v41);
    sub_1003C41CC(v33, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_beginAccess();
    sub_10046EFE8(v88, v63);
    swift_endAccess();

    v64 = SFAirDropSend.Request.urls.getter();
    *(v0 + 760) = v64;
    if (v64)
    {
      v65 = v64;
      v66 = SFAirDropSend.Request.requestSource.getter();
      v67 = v59;
      v69 = v68;
      *(v0 + 768) = v68;
      v70 = swift_task_alloc();
      *(v0 + 776) = v70;
      *v70 = v0;
      v70[1] = sub_1003B2DD8;
      v71 = *(v0 + 360);
      v72 = *(v0 + 368);

      return sub_1003DAC7C(v72, v65, v66, v69, v71, v67);
    }

    else
    {
      v73 = SFAirDropSend.Request.urls.getter();
      *(v0 + 808) = 0;
      *(v0 + 800) = v73;
      type metadata accessor for SDAirDropContentHandlerUtilities();
      v74 = SFAirDropSend.Request.requestSource.getter();
      v76 = v75;
      *(v0 + 816) = v75;
      v77 = swift_task_alloc();
      *(v0 + 824) = v77;
      *v77 = v0;
      v77[1] = sub_1003B354C;
      v78 = *(v0 + 360);

      return sub_1003CEFE4(v73, v74, v76, v78);
    }
  }
}

uint64_t sub_1003B2DD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 784) = v1;

  if (v1)
  {
    v5 = *(v4 + 712);
    v6 = sub_1003B3008;
  }

  else
  {
    v7 = *(v4 + 712);

    *(v4 + 792) = a1;

    v6 = sub_1003B2F2C;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003B2F2C()
{
  v1 = v0[99];
  v0[101] = v1;
  v0[100] = v1;
  type metadata accessor for SDAirDropContentHandlerUtilities();

  v2 = SFAirDropSend.Request.requestSource.getter();
  v4 = v3;
  v0[102] = v3;
  v5 = swift_task_alloc();
  v0[103] = v5;
  *v5 = v0;
  v5[1] = sub_1003B354C;
  v6 = v0[45];

  return sub_1003CEFE4(v1, v2, v4, v6);
}

uint64_t sub_1003B3008()
{

  v1 = v0[98];
  v0[39] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = v0[94];
    v3 = v0[87];
    v4 = v0[60];
    v29 = v0[59];
    v30 = v0[61];
    v5 = v0[52];
    v7 = v0[49];
    v6 = v0[50];
    v8 = v0[45];

    sub_1003C36B0(v8, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.cancelled(_:), v7);
    v9 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v11 = v10;
    sub_10000ED78(v3, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v6 + 32))(v11 + *(v9 + 20), v5, v7);
    swift_willThrow();

    (*(v4 + 8))(v30, v29);
  }

  else
  {
    v12 = v0[50];

    v0[40] = v1;
    swift_errorRetain();
    v13 = swift_dynamicCast();
    v14 = *(v12 + 56);
    v16 = v0[50];
    v15 = v0[51];
    v18 = v0[48];
    v17 = v0[49];
    if (v13)
    {
      v14(v0[48], 0, 1, v0[49]);
      (*(v16 + 32))(v15, v18, v17);
    }

    else
    {
      v14(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v16 + 104))(v15, enum case for SFAirDropSend.Failure.unexpected(_:), v17);
      if ((*(v16 + 48))(v18, 1, v17) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v31 = v0[94];
    v19 = v0[87];
    v20 = v0[51];
    v21 = v0[52];
    v23 = v0[49];
    v22 = v0[50];
    sub_1003C36B0(v0[45], v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v22 + 16))(v21, v20, v23);
    v24 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v26 = v25;
    sub_10000ED78(v19, v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v22 + 32))(v26 + *(v24 + 20), v21, v23);
    swift_willThrow();

    (*(v22 + 8))(v20, v23);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1003B354C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[104] = a1;
  v5[105] = a2;
  v5[106] = a3;
  v5[107] = v3;

  if (v3)
  {
    v6 = v5[89];
    v7 = sub_1003B3804;
  }

  else
  {
    v8 = v5[89];

    v7 = sub_1003B368C;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003B368C()
{
  if (v0[104])
  {
    v1 = v0[106];
    sub_1003C42B8(v0[104], v0[105], v1);

    swift_beginAccess();
    sub_1004037BC(v1);
    swift_endAccess();

    v2 = v0[104];
  }

  else
  {
    v3 = v0[101];
    swift_beginAccess();
    sub_1004037BC(_swiftEmptyArrayStorage);
    swift_endAccess();
    if (v3)
    {
    }

    else
    {
      v2 = SFAirDropSend.Request.urls.getter();
    }
  }

  v0[108] = v2;
  v4 = swift_task_alloc();
  v0[109] = v4;
  *v4 = v0;
  v4[1] = sub_1003B3D54;
  v5 = v0[94];
  v6 = v0[46];
  v7 = v0[45];

  return sub_1003AD788(v6, v5, v7);
}

uint64_t sub_1003B3804()
{

  v1 = v0[107];
  v0[39] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = v0[94];
    v3 = v0[87];
    v4 = v0[60];
    v29 = v0[59];
    v30 = v0[61];
    v5 = v0[52];
    v7 = v0[49];
    v6 = v0[50];
    v8 = v0[45];

    sub_1003C36B0(v8, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.cancelled(_:), v7);
    v9 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v11 = v10;
    sub_10000ED78(v3, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v6 + 32))(v11 + *(v9 + 20), v5, v7);
    swift_willThrow();

    (*(v4 + 8))(v30, v29);
  }

  else
  {
    v12 = v0[50];

    v0[40] = v1;
    swift_errorRetain();
    v13 = swift_dynamicCast();
    v14 = *(v12 + 56);
    v16 = v0[50];
    v15 = v0[51];
    v18 = v0[48];
    v17 = v0[49];
    if (v13)
    {
      v14(v0[48], 0, 1, v0[49]);
      (*(v16 + 32))(v15, v18, v17);
    }

    else
    {
      v14(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v16 + 104))(v15, enum case for SFAirDropSend.Failure.unexpected(_:), v17);
      if ((*(v16 + 48))(v18, 1, v17) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v31 = v0[94];
    v19 = v0[87];
    v20 = v0[51];
    v21 = v0[52];
    v23 = v0[49];
    v22 = v0[50];
    sub_1003C36B0(v0[45], v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v22 + 16))(v21, v20, v23);
    v24 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v26 = v25;
    sub_10000ED78(v19, v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v22 + 32))(v26 + *(v24 + 20), v21, v23);
    swift_willThrow();

    (*(v22 + 8))(v20, v23);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1003B3D54(uint64_t a1)
{
  v2 = *(*v1 + 712);
  *(*v1 + 880) = a1;

  return _swift_task_switch(sub_1003B3E6C, v2, 0);
}

uint64_t sub_1003B3E6C(uint64_t a1)
{
  v2 = v1[110];
  v3 = v1[75];
  v4 = v1[74];
  v5 = v1[73];
  SFAirDropSend.Request.type.getter();
  v6 = SFAirDrop.TransferType.isPeerPayment.getter();
  (*(v4 + 8))(v3, v5);
  if ((v6 & 1) != 0 && ((v2 & 0xFF00000000) != 0x300000000 ? (v7 = (v2 & 2) == 0) : (v7 = 0), v7))
  {
    v8 = v1[106];
    v9 = v1[105];
    v10 = v1[104];

    sub_1003C426C(v10, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Hello response - peerPayment type is not supported by receiver device", v13, 2u);
    }

    v14 = v1[49];
    v15 = v1[50];

    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    v16 = swift_allocError();
    (*(v15 + 104))(v17, enum case for SFAirDropSend.Failure.unsupportedConnection(_:), v14);
    swift_willThrow();

    v1[39] = v16;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v18 = v1[94];
      v19 = v1[87];
      v20 = v1[60];
      v62 = v1[59];
      v63 = v1[61];
      v21 = v1[52];
      v23 = v1[49];
      v22 = v1[50];
      v24 = v1[45];

      sub_1003C36B0(v24, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v22 + 104))(v21, enum case for SFAirDropSend.Failure.cancelled(_:), v23);
      v25 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
      swift_allocError();
      v27 = v26;
      sub_10000ED78(v19, v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v22 + 32))(v27 + *(v25 + 20), v21, v23);
      swift_willThrow();

      (*(v20 + 8))(v63, v62);
    }

    else
    {
      v46 = v1[50];

      v1[40] = v16;
      swift_errorRetain();
      v47 = swift_dynamicCast();
      v48 = *(v46 + 56);
      v50 = v1[50];
      v49 = v1[51];
      v52 = v1[48];
      v51 = v1[49];
      if (v47)
      {
        v48(v1[48], 0, 1, v1[49]);
        (*(v50 + 32))(v49, v52, v51);
      }

      else
      {
        v48(v1[48], 1, 1, v1[49]);
        swift_errorRetain();
        CodableError.init(_:)();
        (*(v50 + 104))(v49, enum case for SFAirDropSend.Failure.unexpected(_:), v51);
        if ((*(v50 + 48))(v52, 1, v51) != 1)
        {
          sub_100005508(v1[48], &qword_10097B350, &qword_1007FE758);
        }
      }

      v64 = v1[94];
      v53 = v1[87];
      v54 = v1[51];
      v55 = v1[52];
      v57 = v1[49];
      v56 = v1[50];
      sub_1003C36B0(v1[45], v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v56 + 16))(v55, v54, v57);
      v58 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
      swift_allocError();
      v60 = v59;
      sub_10000ED78(v53, v59, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v56 + 32))(v60 + *(v58 + 20), v55, v57);
      swift_willThrow();

      (*(v56 + 8))(v54, v57);
    }

    v61 = v1[1];

    return v61();
  }

  else
  {
    v28 = v1[92];
    v29 = v1[91];
    v30 = v1[84];
    v31 = v1[82];
    v32 = v1[46];
    sub_10032FC64(v29, *(v1[47] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent));
    v34 = v33;
    v36 = v35;
    v28(v30, v32, v31);
    v37 = v29;

    v38 = swift_task_alloc();
    v1[111] = v38;
    *v38 = v1;
    v38[1] = sub_1003B4618;
    v39 = v1[105];
    v40 = v1[104];
    v41 = v1[101];
    v42 = v1[91];
    v43 = v1[84];
    v44 = v1[72];

    return sub_1005A1C54(v44, v43, v34, v36, v42, v41, v40, v39);
  }
}

uint64_t sub_1003B4618()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v3 = *(v2 + 712);

    v4 = sub_1003B5050;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 712);
    v4 = sub_1003B4740;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003B4740()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 528);
  sub_1002FF790(*(v0 + 576));
  v3 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  if (v1)
  {
    v5 = (*(v0 + 880) & 0xFF00000000) == 0x300000000 || (*(v0 + 880) & 1) == 0;
    if (!v5 && *(v0 + 944) != 0)
    {
      v7 = *(v0 + 864);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = *(v0 + 456);
        v10 = *(v0 + 432);

        sub_10028FAB4(0, v8, 0);
        v11 = *(v10 + 16);
        v10 += 16;
        v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
        v60 = *(v10 + 56);
        v62 = v11;
        v13 = (v10 - 8);
        do
        {
          v14 = *(v0 + 440);
          v15 = *(v0 + 424);
          v62(v14, v12, v15);
          SFSecurityScopedURL.url.getter();
          (*v13)(v14, v15);
          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_10028FAB4((v16 > 1), v17 + 1, 1);
          }

          v18 = *(v0 + 464);
          v19 = *(v0 + 448);
          _swiftEmptyArrayStorage[2] = v17 + 1;
          (*(v9 + 32))(_swiftEmptyArrayStorage + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v18, v19);
          v12 += v60;
          --v8;
        }

        while (v8);
      }

      v20 = *(v0 + 528);
      v21 = *(v0 + 520);
      v22 = *(v0 + 504);
      v23 = *(v0 + 512);
      v24 = *(v0 + 496);
      SFAirDropSend.Request.id.getter();
      sub_100301C1C(_swiftEmptyArrayStorage, v21);

      (*(v22 + 8))(v23, v24);
      sub_100005508(v20, &qword_10097B1B8, &qword_1007FE4C0);
      v4(v21, 0, 1, v3);
      sub_10002C4E4(v21, v20, &qword_10097B1B8, &qword_1007FE4C0);
    }
  }

  if (static Task<>.isCancelled.getter())
  {
    v25 = *(v0 + 576);
    v26 = *(v0 + 552);
    v27 = *(v0 + 544);
    v28 = *(v0 + 536);
    v29 = *(v0 + 528);

    sub_1003C3718(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v30 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    sub_100005508(v29, &qword_10097B1B8, &qword_1007FE4C0);
    (*(v27 + 8))(v26, v28);
    sub_1003C41CC(v25, _s10AskRequestVMa);
    *(v0 + 312) = v30;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v31 = *(v0 + 752);
      v32 = *(v0 + 696);
      v33 = *(v0 + 480);
      v61 = *(v0 + 472);
      v63 = *(v0 + 488);
      v34 = *(v0 + 416);
      v36 = *(v0 + 392);
      v35 = *(v0 + 400);
      v37 = *(v0 + 360);

      sub_1003C36B0(v37, v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v35 + 104))(v34, enum case for SFAirDropSend.Failure.cancelled(_:), v36);
      v38 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
      swift_allocError();
      v40 = v39;
      sub_10000ED78(v32, v39, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v35 + 32))(v40 + *(v38 + 20), v34, v36);
      swift_willThrow();

      (*(v33 + 8))(v63, v61);
    }

    else
    {
      v43 = *(v0 + 400);

      *(v0 + 320) = v30;
      swift_errorRetain();
      v44 = swift_dynamicCast();
      v45 = *(v43 + 56);
      v47 = *(v0 + 400);
      v46 = *(v0 + 408);
      v49 = *(v0 + 384);
      v48 = *(v0 + 392);
      if (v44)
      {
        v45(*(v0 + 384), 0, 1, *(v0 + 392));
        (*(v47 + 32))(v46, v49, v48);
      }

      else
      {
        v45(*(v0 + 384), 1, 1, *(v0 + 392));
        swift_errorRetain();
        CodableError.init(_:)();
        (*(v47 + 104))(v46, enum case for SFAirDropSend.Failure.unexpected(_:), v48);
        if ((*(v47 + 48))(v49, 1, v48) != 1)
        {
          sub_100005508(*(v0 + 384), &qword_10097B350, &qword_1007FE758);
        }
      }

      v64 = *(v0 + 752);
      v50 = *(v0 + 696);
      v51 = *(v0 + 408);
      v52 = *(v0 + 416);
      v54 = *(v0 + 392);
      v53 = *(v0 + 400);
      sub_1003C36B0(*(v0 + 360), v50, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v53 + 16))(v52, v51, v54);
      v55 = _s15EndpointFailureVMa(0);
      sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
      swift_allocError();
      v57 = v56;
      sub_10000ED78(v50, v56, type metadata accessor for SDAirDropDiscoveredEndpoint);
      (*(v53 + 32))(v57 + *(v55 + 20), v52, v54);
      swift_willThrow();

      (*(v53 + 8))(v51, v54);
    }

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    v41 = swift_task_alloc();
    *(v0 + 904) = v41;
    *v41 = v0;
    v41[1] = sub_1003B5588;
    v42 = *(v0 + 536);

    return SFProgressTask.finalValue.getter(v0 + 16, v42);
  }
}

uint64_t sub_1003B5050()
{

  v1 = v0[112];
  v0[39] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = v0[94];
    v3 = v0[87];
    v4 = v0[60];
    v29 = v0[59];
    v30 = v0[61];
    v5 = v0[52];
    v7 = v0[49];
    v6 = v0[50];
    v8 = v0[45];

    sub_1003C36B0(v8, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.cancelled(_:), v7);
    v9 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v11 = v10;
    sub_10000ED78(v3, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v6 + 32))(v11 + *(v9 + 20), v5, v7);
    swift_willThrow();

    (*(v4 + 8))(v30, v29);
  }

  else
  {
    v12 = v0[50];

    v0[40] = v1;
    swift_errorRetain();
    v13 = swift_dynamicCast();
    v14 = *(v12 + 56);
    v16 = v0[50];
    v15 = v0[51];
    v18 = v0[48];
    v17 = v0[49];
    if (v13)
    {
      v14(v0[48], 0, 1, v0[49]);
      (*(v16 + 32))(v15, v18, v17);
    }

    else
    {
      v14(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v16 + 104))(v15, enum case for SFAirDropSend.Failure.unexpected(_:), v17);
      if ((*(v16 + 48))(v18, 1, v17) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v31 = v0[94];
    v19 = v0[87];
    v20 = v0[51];
    v21 = v0[52];
    v23 = v0[49];
    v22 = v0[50];
    sub_1003C36B0(v0[45], v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v22 + 16))(v21, v20, v23);
    v24 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v26 = v25;
    sub_10000ED78(v19, v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v22 + 32))(v26 + *(v24 + 20), v21, v23);
    swift_willThrow();

    (*(v22 + 8))(v20, v23);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1003B5588()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = *(v2 + 712);

    v4 = sub_1003B5B08;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 712);
    v6 = *(v2 + 608);
    *(v2 + 920) = v6[12];
    *(v2 + 924) = v6[16];
    *(v2 + 928) = v6[20];
    *(v2 + 932) = v6[24];
    *(v2 + 936) = v6[28];
    *(v2 + 940) = v6[32];
    v4 = sub_1003B56E4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003B56E4()
{
  v44 = *(v0 + 936);
  v31 = *(v0 + 928);
  v29 = *(v0 + 920);
  v33 = *(v0 + 880);
  v39 = *(v0 + 924);
  v40 = *(v0 + 864);
  v35 = *(v0 + 940);
  v37 = *(v0 + 752);
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 576);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v46 = *(v0 + 528);
  v8 = v1 + *(v0 + 932);
  v27 = *(v0 + 360);
  v43 = *(v0 + 352);
  v41 = *(v0 + 336);
  v42 = *(v0 + 344);
  v9 = *(v0 + 328);

  (*(v6 + 8))(v5, v7);
  v10 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v11 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v11;
  *(v0 + 216) = *(v0 + 112);
  v12 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v12;
  *(v0 + 152) = v10;
  sub_10000ED78(v4, v1 + v29, _s10AskRequestVMa);
  sub_1003C36B0(v27, v1 + v31, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v46, v1 + v35, &qword_10097B1B8, &qword_1007FE4C0);
  *(v1 + 4) = BYTE4(v33);
  *v1 = v33;
  *(v1 + v39) = v37;
  v13 = *(v0 + 168);
  v14 = *(v0 + 184);
  v15 = *(v0 + 200);
  *(v8 + 96) = *(v0 + 216);
  *(v8 + 64) = v14;
  *(v8 + 80) = v15;
  *(v8 + 48) = v13;
  v16 = *(v0 + 120);
  v17 = *(v0 + 152);
  *(v8 + 16) = *(v0 + 136);
  *(v8 + 32) = v17;
  *v8 = v16;
  *(v1 + v44) = v40;
  v45 = v37;
  sub_10002C4E4(v1, v2, &qword_10097B320, &qword_100806120);
  LODWORD(v40) = *v2;
  LOBYTE(v39) = *(v2 + 4);
  v18 = v3[12];
  v19 = v3[20];
  v20 = v2 + v3[24];
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  v36 = *(v2 + v3[28]);
  v38 = *(v2 + v3[16]);
  LOBYTE(v5) = *(v20 + 32);
  v23 = v3[32];
  v32 = *(v20 + 40);
  v34 = *v20;
  v28 = *(v20 + 56);
  v30 = *(v20 + 72);
  v26 = *(v20 + 88);
  sub_10000ED78(v2 + v18, v41, _s10AskRequestVMa);
  sub_10000ED78(v2 + v19, v42, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v2 + v23, v43, &qword_10097B1B8, &qword_1007FE4C0);

  *(v9 + 4) = v39;
  *v9 = v40;
  *(v9 + 8) = v38;
  *(v9 + 16) = v34;
  *(v9 + 32) = v21;
  *(v9 + 40) = v22;
  *(v9 + 48) = v5;
  *(v9 + 72) = v28;
  *(v9 + 56) = v32;
  *(v9 + 104) = v26;
  *(v9 + 88) = v30;
  *(v9 + 120) = v36;
  *(v9 + 128) = v45;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003B5B08()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];

  sub_100005508(v5, &qword_10097B1B8, &qword_1007FE4C0);
  (*(v3 + 8))(v2, v4);
  sub_1003C41CC(v1, _s10AskRequestVMa);
  v6 = v0[114];
  v0[39] = v6;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v7 = v0[94];
    v8 = v0[87];
    v9 = v0[60];
    v34 = v0[59];
    v35 = v0[61];
    v10 = v0[52];
    v12 = v0[49];
    v11 = v0[50];
    v13 = v0[45];

    sub_1003C36B0(v13, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v11 + 104))(v10, enum case for SFAirDropSend.Failure.cancelled(_:), v12);
    v14 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v16 = v15;
    sub_10000ED78(v8, v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v11 + 32))(v16 + *(v14 + 20), v10, v12);
    swift_willThrow();

    (*(v9 + 8))(v35, v34);
  }

  else
  {
    v17 = v0[50];

    v0[40] = v6;
    swift_errorRetain();
    v18 = swift_dynamicCast();
    v19 = *(v17 + 56);
    v21 = v0[50];
    v20 = v0[51];
    v23 = v0[48];
    v22 = v0[49];
    if (v18)
    {
      v19(v0[48], 0, 1, v0[49]);
      (*(v21 + 32))(v20, v23, v22);
    }

    else
    {
      v19(v0[48], 1, 1, v0[49]);
      swift_errorRetain();
      CodableError.init(_:)();
      (*(v21 + 104))(v20, enum case for SFAirDropSend.Failure.unexpected(_:), v22);
      if ((*(v21 + 48))(v23, 1, v22) != 1)
      {
        sub_100005508(v0[48], &qword_10097B350, &qword_1007FE758);
      }
    }

    v36 = v0[94];
    v24 = v0[87];
    v25 = v0[51];
    v26 = v0[52];
    v28 = v0[49];
    v27 = v0[50];
    sub_1003C36B0(v0[45], v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v27 + 16))(v26, v25, v28);
    v29 = _s15EndpointFailureVMa(0);
    sub_1003C3718(&qword_10097B358, _s15EndpointFailureVMa, &unk_1007FE774);
    swift_allocError();
    v31 = v30;
    sub_10000ED78(v24, v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
    (*(v27 + 32))(v31 + *(v29 + 20), v26, v28);
    swift_willThrow();

    (*(v27 + 8))(v25, v28);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_1003B60A0()
{
  v0 = sub_10032B99C();
  v2 = v1;
  if (v0 == sub_10032B99C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1003B6148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v5[14] = _s10AskRequestVMa(0);
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for SFNWInterfaceTypeCategory();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.Progress();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  sub_10028088C(&qword_10097B2B0, &unk_100808F70);
  v5[24] = swift_task_alloc();
  v8 = sub_10028088C(&qword_10097B2B8, &qword_1007FE670);
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v9 = type metadata accessor for SFNWInterfaceType();
  v5[28] = v9;
  v5[29] = *(v9 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer.State();
  v5[32] = v10;
  v5[33] = *(v10 - 8);
  v5[34] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v5[35] = v11;
  v5[36] = *(v11 - 8);
  v5[37] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.DeclineAction();
  v5[38] = v12;
  v5[39] = *(v12 - 8);
  v5[40] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v5[41] = v13;
  v5[42] = *(v13 - 8);
  v5[43] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropSend.Transfer();
  v5[44] = v14;
  v15 = *(v14 - 8);
  v5[45] = v15;
  v5[46] = *(v15 + 64);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  sub_10028088C(&qword_10097B1B8, &qword_1007FE4C0);
  v5[49] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v5[50] = v16;
  v5[51] = *(v16 - 8);
  v5[52] = swift_task_alloc();
  v17 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  v5[53] = v17;
  v18 = *(v17 - 8);
  v5[54] = v18;
  v5[55] = *(v18 + 64);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v19 = type metadata accessor for SFAirDrop.TransferType();
  v5[60] = v19;
  v5[61] = *(v19 - 8);
  v5[62] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v20 = static AirDropActor.shared;
  v5[63] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B67B4, v20, 0);
}

uint64_t sub_1003B67B4()
{
  v92 = v0;
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls);
  *(v0 + 512) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  sub_10000FF90(*(v0 + 72) + *(*(v0 + 112) + 20), v4, &qword_100977BD8, &qword_1007FAE38);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 472), *(v0 + 480));

    v17 = SFAirDrop.TransferType.isFiles.getter();
    v19 = *(v0 + 488);
    v18 = *(v0 + 496);
    v20 = *(v0 + 480);
    if (v17)
    {
      (*(v19 + 8))(*(v0 + 496), *(v0 + 480));
    }

    else
    {
      v28 = SFAirDrop.TransferType.isCustom.getter();
      (*(v19 + 8))(v18, v20);
      if ((v28 & 1) == 0)
      {

        goto LABEL_4;
      }
    }

    *(v0 + 520) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Send StateMachine UPLOAD START", v31, 2u);
    }

    v32 = *(v0 + 424);
    v33 = *(v0 + 432);
    v34 = *(v0 + 96);

    v35 = *(v33 + 48);
    if (v35(v34, 1, v32) == 1)
    {
      v36 = *(v0 + 456);
      v38 = *(v0 + 408);
      v37 = *(v0 + 416);
      v39 = *(v0 + 400);
      SFAirDropSend.Request.id.getter();
      sub_100301C1C(v1, v36);
      (*(v38 + 8))(v37, v39);
    }

    else
    {
      v40 = *(v0 + 424);
      v41 = *(v0 + 392);
      sub_10000FF90(*(v0 + 96), v41, &qword_10097B1B8, &qword_1007FE4C0);
      v42 = v35(v41, 1, v40);
      if (v42 == 1)
      {
        __break(1u);
        return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v42, v43, v44, v45, v46);
      }

      (*(*(v0 + 432) + 32))(*(v0 + 456), *(v0 + 392), *(v0 + 424));
    }

    v89 = *(v0 + 456);
    v79 = *(v0 + 440);
    v74 = *(v0 + 432);
    v76 = *(v0 + 424);
    v77 = *(v0 + 448);
    v47 = *(v0 + 384);
    v88 = *(v0 + 376);
    v48 = *(v0 + 360);
    v78 = *(v0 + 368);
    v49 = *(v0 + 344);
    v90 = *(v0 + 352);
    v50 = *(v0 + 328);
    v51 = *(v0 + 336);
    v80 = *(v0 + 320);
    v82 = *(v0 + 312);
    v83 = *(v0 + 304);
    v87 = *(v0 + 296);
    v52 = *(v0 + 288);
    v81 = *(v0 + 272);
    v84 = *(v0 + 264);
    v85 = *(v0 + 256);
    v86 = *(v0 + 248);
    v53 = *(v0 + 104);
    v54 = *(v0 + 80);
    v55 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    *(v0 + 528) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
    swift_beginAccess();
    v56 = *(v51 + 16);
    *(v0 + 536) = v56;
    *(v0 + 544) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v56(v49, &v54[v55], v50);
    sub_100335F90(v47);
    v57 = *(v51 + 8);
    *(v0 + 552) = v57;
    *(v0 + 560) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57(v49, v50);
    v75 = *(v48 + 8);
    *(v0 + 568) = v75;
    *(v0 + 576) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75(v47, v90);
    v58 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v59 = *(v48 + 16);
    v59(v47, v53 + v58, v90);
    *v87 = 0x662E657261757173;
    v87[1] = 0xEB000000006C6C69;
    (*(v52 + 104))();
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59(v88, v47, v90);
    (*(v74 + 16))(v77, v89, v76);
    v61 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v62 = (v78 + *(v74 + 80) + v61) & ~*(v74 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v60;
    (*(v48 + 32))(v63 + v61, v88, v90);
    (*(v74 + 32))(v63 + v62, v77, v76);
    *(v63 + ((v79 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;

    v54;
    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
    v75(v47, v90);

    v64 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
    *(v0 + 584) = v64;
    v65 = (v81 + *(v64 + 64));
    v66 = *(v64 + 80);
    *v81 = sub_10032B99C();
    *(v81 + 8) = v67;
    SFProgressTask.initialValue.getter();
    *v65 = 0;
    v65[1] = 0;
    v68 = *(v82 + 16);
    *(v0 + 592) = v68;
    *(v0 + 600) = (v82 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v68(v81 + v66, v80, v83);
    *(v0 + 656) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
    v69 = *(v84 + 104);
    *(v0 + 608) = v69;
    *(v0 + 616) = (v84 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v69(v81);
    sub_100335364(v81, v47);
    v70 = *(v84 + 8);
    *(v0 + 624) = v70;
    *(v0 + 632) = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70(v81, v85);
    v75(v47, v90);
    sub_1002FCB68(v86);
    SFProgressTask.makeAsyncIterator()();
    v71 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    *(v0 + 640) = v71;
    *(v0 + 660) = enum case for SFNWInterfaceTypeCategory.regular(_:);
    v72 = *(v0 + 504);
    v73 = swift_task_alloc();
    *(v0 + 648) = v73;
    *v73 = v0;
    v73[1] = sub_1003B72F0;
    v42 = *(v0 + 192);
    v45 = *(v0 + 200);
    v46 = v0 + 64;
    v43 = v72;
    v44 = v71;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v42, v43, v44, v45, v46);
  }

  sub_100005508(*(v0 + 472), &qword_100977BD8, &qword_1007FAE38);
LABEL_4:
  sub_1003C36B0(*(v0 + 72), *(v0 + 120), _s10AskRequestVMa);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 480);
    v8 = *(v0 + 488);
    v9 = *(v0 + 464);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v91 = v13;
    *v12 = 136315138;
    sub_10000FF90(v10 + *(v11 + 20), v9, &qword_100977BD8, &qword_1007FAE38);
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_100005508(*(v0 + 464), &qword_100977BD8, &qword_1007FAE38);
      v14 = 0x800000010078E3B0;
      v15 = 0xD000000000000020;
    }

    else
    {
      v21 = *(v0 + 480);
      v22 = *(v0 + 488);
      v23 = *(v0 + 464);
      v15 = SFAirDrop.TransferType.description.getter();
      v14 = v24;
      (*(v22 + 8))(v23, v21);
    }

    sub_1003C41CC(*(v0 + 120), _s10AskRequestVMa);
    v25 = sub_10000C4E4(v15, v14, &v91);

    *(v12 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v5, v6, "Send StateMachine UPLOAD SKIPPED {type: %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  else
  {
    v16 = *(v0 + 120);

    sub_1003C41CC(v16, _s10AskRequestVMa);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1003B72F0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 504);

    v4 = sub_1003B7D24;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 504);
    v4 = sub_1003B7410;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003B7410()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v85 = *(v0 + 624);
  v84 = *(v0 + 608);
  v83 = *(v0 + 656);
  v82 = *(v0 + 592);
  v5 = *(v0 + 584);
  v86 = *(v0 + 568);
  if (v4 == 1)
  {
    v68 = *(v0 + 552);
    v67 = *(v0 + 536);
    v66 = *(v0 + 528);
    v6 = *(v0 + 384);
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);
    v71 = *(v0 + 512);
    v9 = *(v0 + 328);
    v73 = *(v0 + 304);
    v75 = *(v0 + 320);
    v10 = *(v0 + 272);
    v79 = *(v0 + 232);
    v81 = *(v0 + 224);
    v76 = *(v0 + 256);
    v78 = *(v0 + 160);
    v69 = v2;
    v11 = *(v0 + 80);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v67(v7, v11 + v66, v9);
    sub_100335F90(v6);
    v68(v7, v9);
    v86(v6, v8);
    v12 = v5[12];
    v13 = (v10 + v5[16]);
    v14 = v5[20];
    *v10 = sub_10032B99C();
    *(v10 + 8) = v15;
    *(v10 + v12) = v71;
    (*(v3 + 104))(v10 + v12, enum case for SFAirDrop.Progress.completed(_:), v69);
    *v13 = 0;
    v13[1] = 0;
    v82(v10 + v14, v75, v73);
    v84(v10, v83, v76);
    sub_100335364(v10, v6);
    v85(v10, v76);
    v86(v6, v8);
    (*(v79 + 56))(v78, 1, 1, v81);
    sub_100335980(v78, v6);
    sub_100005508(v78, &qword_100977DC0, &unk_1007FB320);
    v86(v6, v8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Send StateMachine UPLOAD END", v18, 2u);
    }

    v19 = *(v0 + 432);
    v87 = *(v0 + 424);
    v88 = *(v0 + 456);
    v20 = *(v0 + 312);
    v21 = *(v0 + 320);
    v22 = *(v0 + 304);
    v23 = *(v0 + 248);
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);

    sub_100305E34(0);
    (*(v24 + 8))(v23, v25);
    (*(v20 + 8))(v21, v22);
    (*(v19 + 8))(v88, v87);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v70 = *(v0 + 304);
    v72 = *(v0 + 320);
    v28 = *(v0 + 272);
    v29 = *(v0 + 240);
    v77 = *(v0 + 384);
    v80 = *(v0 + 352);
    v30 = *(v0 + 184);
    v74 = *(v0 + 256);
    (*(v3 + 32))(v30, v1, v2);
    sub_1002FCB68(v29);
    v31 = v5[12];
    v32 = v2;
    v33 = (v28 + v5[16]);
    v34 = v5[20];
    *v28 = sub_10032B99C();
    *(v28 + 8) = v35;
    (*(v3 + 16))(v28 + v31, v30, v32);
    *v33 = sub_100333B60();
    v33[1] = v36;
    v82(v28 + v34, v72, v70);
    v84(v28, v83, v74);
    sub_100335364(v28, v77);
    v85(v28, v74);
    v86(v77, v80);
    sub_1003C3718(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType, &protocol conformance descriptor for SFNWInterfaceType);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v37 = *(v0 + 568);
      v38 = *(v0 + 384);
      v39 = *(v0 + 352);
      v40 = *(v0 + 232);
      v41 = *(v0 + 224);
      v42 = *(v0 + 160);
      (*(v40 + 16))(v42, *(v0 + 240), v41);
      (*(v40 + 56))(v42, 0, 1, v41);
      sub_100335980(v42, v38);
      sub_100005508(v42, &qword_100977DC0, &unk_1007FB320);
      v37(v38, v39);
    }

    v43 = *(v0 + 660);
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    v46 = *(v0 + 128);
    v47 = *(v0 + 136);
    SFNWInterfaceType.category()();
    (*(v47 + 104))(v45, v43, v46);
    sub_1003C3718(&qword_10097B2D0, &type metadata accessor for SFNWInterfaceTypeCategory, &protocol conformance descriptor for SFNWInterfaceTypeCategory);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *(v47 + 8);
    v49(v45, v46);
    v49(v44, v46);
    if ((v48 & 1) == 0)
    {
      v51 = *(v0 + 144);
      v50 = *(v0 + 152);
      v52 = *(v0 + 128);
      SFNWInterfaceType.category()();
      SFNWInterfaceType.category()();
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49(v51, v52);
      v49(v50, v52);
      if ((v53 & 1) == 0)
      {
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "AirDrop interface changed to high priority category", v56, 2u);
        }

        sub_100336748(3.0);
      }
    }

    v57 = *(v0 + 240);
    v58 = *(v0 + 248);
    v59 = *(v0 + 224);
    v60 = *(v0 + 232);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v60 + 8))(v58, v59);
    (*(v60 + 32))(v58, v57, v59);
    v61 = *(v0 + 640);
    v62 = *(v0 + 504);
    v63 = swift_task_alloc();
    *(v0 + 648) = v63;
    *v63 = v0;
    v63[1] = sub_1003B72F0;
    v64 = *(v0 + 192);
    v65 = *(v0 + 200);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v64, v62, v61, v65, v0 + 64);
  }
}

uint64_t sub_1003B7D24()
{
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[29];
  (*(v0[26] + 8))();
  (*(v9 + 8))(v7, v8);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003B7F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 1640) = v4;
  *(v5 + 2489) = a4;
  *(v5 + 1632) = a3;
  *(v5 + 1624) = a2;
  *(v5 + 1616) = a1;
  *(v5 + 1648) = _s10AskRequestVMa(0);
  *(v5 + 1656) = swift_task_alloc();
  sub_10028088C(&qword_10097B1F0, &qword_1007FE568);
  *(v5 + 1664) = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097B1F8, &qword_1007FE570);
  *(v5 + 1672) = v6;
  *(v5 + 1680) = *(v6 - 8);
  *(v5 + 1688) = swift_task_alloc();
  *(v5 + 1696) = swift_task_alloc();
  *(v5 + 1704) = _s16ExchangeResponseVMa(0);
  *(v5 + 1712) = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  *(v5 + 1720) = v7;
  *(v5 + 1728) = *(v7 - 8);
  *(v5 + 1736) = swift_task_alloc();
  *(v5 + 1744) = swift_task_alloc();
  *(v5 + 1752) = _s15ExchangeRequestVMa(0);
  *(v5 + 1760) = swift_task_alloc();
  *(v5 + 1768) = swift_task_alloc();
  *(v5 + 1776) = swift_task_alloc();
  *(v5 + 1784) = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Failure();
  *(v5 + 1792) = v8;
  *(v5 + 1800) = *(v8 - 8);
  *(v5 + 1808) = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Transfer.State();
  *(v5 + 1816) = v9;
  *(v5 + 1824) = *(v9 - 8);
  *(v5 + 1832) = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  *(v5 + 1840) = v10;
  *(v5 + 1848) = *(v10 - 8);
  *(v5 + 1856) = swift_task_alloc();
  *(v5 + 1864) = swift_task_alloc();
  *(v5 + 1872) = swift_task_alloc();
  sub_10028088C(&qword_10097B200, &qword_1007FE578);
  *(v5 + 1880) = swift_task_alloc();
  sub_10028088C(&qword_10097B198, &qword_1007FE450);
  *(v5 + 1888) = swift_task_alloc();
  *(v5 + 1896) = swift_task_alloc();
  *(v5 + 1904) = swift_task_alloc();
  *(v5 + 1912) = swift_task_alloc();
  *(v5 + 1920) = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.ContactInfo();
  *(v5 + 1928) = v11;
  *(v5 + 1936) = *(v11 - 8);
  *(v5 + 1944) = swift_task_alloc();
  *(v5 + 1952) = swift_task_alloc();
  *(v5 + 1960) = swift_task_alloc();
  *(v5 + 1968) = swift_task_alloc();
  *(v5 + 1976) = swift_task_alloc();
  sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8);
  *(v5 + 1984) = swift_task_alloc();
  *(v5 + 1992) = swift_task_alloc();
  *(v5 + 2000) = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.ContactRequest();
  *(v5 + 2008) = v12;
  *(v5 + 2016) = *(v12 - 8);
  *(v5 + 2024) = swift_task_alloc();
  *(v5 + 2032) = swift_task_alloc();
  *(v5 + 2040) = swift_task_alloc();
  *(v5 + 2048) = swift_task_alloc();
  *(v5 + 2056) = swift_task_alloc();
  *(v5 + 2064) = swift_task_alloc();
  *(v5 + 2072) = swift_task_alloc();
  *(v5 + 2080) = swift_task_alloc();
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  *(v5 + 2088) = swift_task_alloc();
  *(v5 + 2096) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.TransferType();
  *(v5 + 2104) = v13;
  *(v5 + 2112) = *(v13 - 8);
  *(v5 + 2120) = swift_task_alloc();
  *(v5 + 2128) = swift_task_alloc();
  *(v5 + 2136) = swift_task_alloc();
  *(v5 + 2144) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  *(v5 + 2152) = static AirDropActor.shared;

  return _swift_task_switch(sub_1003B85B0, v14, 0);
}

uint64_t sub_1003B85B0()
{
  v212 = v0;
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2096);
  v4 = *(v0 + 1648);
  sub_10000FF90(*(v0 + 1616) + *(v4 + 20), v3, &qword_100977BD8, &qword_1007FAE38);
  v5 = *(v1 + 48);
  if (v5(v3, 1, v2) == 1)
  {
    sub_100005508(*(v0 + 2096), &qword_100977BD8, &qword_1007FAE38);
    goto LABEL_20;
  }

  (*(*(v0 + 2112) + 32))(*(v0 + 2144), *(v0 + 2096), *(v0 + 2104));
  SFAirDrop.TransferType.exchangeType.getter();
  if (!v6)
  {
    (*(*(v0 + 2112) + 8))(*(v0 + 2144), *(v0 + 2104));
LABEL_20:
    v30 = *(v0 + 1640);
    sub_1003C36B0(*(v0 + 1616), *(v0 + 1656), _s10AskRequestVMa);
    v31 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v205 = v33;
      v34 = *(v0 + 1936);
      v35 = *(v0 + 1928);
      v36 = *(v0 + 1896);
      v37 = swift_slowAlloc();
      v211[0] = swift_slowAlloc();
      *v37 = 141558787;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_1003A0614(v36);
      v208 = v32;
      if ((*(v34 + 48))(v36, 1, v35))
      {
        sub_100005508(*(v0 + 1896), &qword_10097B198, &qword_1007FE450);
        v38 = 0x800000010078E390;
        v39 = 0xD00000000000001CLL;
      }

      else
      {
        v41 = *(v0 + 1952);
        v42 = *(v0 + 1936);
        v43 = *(v0 + 1928);
        v44 = *(v0 + 1896);
        (*(v42 + 16))(v41, v44, v43);
        sub_100005508(v44, &qword_10097B198, &qword_1007FE450);
        v45 = SFAirDrop.ContactInfo.description.getter();
        v38 = v46;
        (*(v42 + 8))(v41, v43);
        v39 = v45;
      }

      v47 = *(v0 + 2104);
      v48 = *(v0 + 2088);
      v49 = *(v0 + 1656);
      v50 = sub_10000C4E4(v39, v38, v211);

      *(v37 + 14) = v50;
      *(v37 + 22) = 1024;
      sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
      v51 = static NSUserDefaults.airdrop.getter();
      LOBYTE(v50) = SFAirDropUserDefaults.alwaysExchangeContacts.getter();

      *(v37 + 24) = v50 & 1;
      *(v37 + 28) = 2080;
      sub_10000FF90(v49 + *(v4 + 20), v48, &qword_100977BD8, &qword_1007FAE38);
      if (v5(v48, 1, v47) == 1)
      {
        sub_100005508(*(v0 + 2088), &qword_100977BD8, &qword_1007FAE38);
        v52 = 0x800000010078E3B0;
        v53 = 0xD000000000000020;
      }

      else
      {
        v54 = *(v0 + 2112);
        v55 = *(v0 + 2104);
        v56 = *(v0 + 2088);
        v53 = SFAirDrop.TransferType.description.getter();
        v52 = v57;
        (*(v54 + 8))(v56, v55);
      }

      sub_1003C41CC(*(v0 + 1656), _s10AskRequestVMa);
      v58 = sub_10000C4E4(v53, v52, v211);

      *(v37 + 30) = v58;
      _os_log_impl(&_mh_execute_header, v208, v205, "Send StateMachine CONTACTS SKIPPED - Not needed {senderContact: %{private,mask.hash}s, alwaysExchangeContacts: %{BOOL}d, type: %s}", v37, 0x26u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = *(v0 + 1656);

      sub_1003C41CC(v40, _s10AskRequestVMa);
    }

LABEL_29:

    v59 = *(v0 + 8);

    return v59(0, 0);
  }

  v7 = *(v0 + 2489);

  if ((v7 == 2 || (*(v0 + 2489) & 1) == 0) && (SFAirDrop.TransferType.isOnlyExchange.getter() & 1) == 0)
  {
    (*(*(v0 + 2112) + 16))(*(v0 + 2120), *(v0 + 2144), *(v0 + 2104));
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 2144);
    v65 = *(v0 + 2120);
    v66 = *(v0 + 2112);
    v67 = *(v0 + 2104);
    if (v63)
    {
      v68 = *(v0 + 2489);
      v209 = *(v0 + 2144);
      v69 = swift_slowAlloc();
      v211[0] = swift_slowAlloc();
      *v69 = 136315394;
      v70 = 1702195828;
      if ((v68 & 1) == 0)
      {
        v70 = 0x65736C6166;
      }

      v71 = 0xE500000000000000;
      if (v68)
      {
        v71 = 0xE400000000000000;
      }

      if (v7 == 2)
      {
        v72 = 0xD000000000000024;
      }

      else
      {
        v72 = v70;
      }

      if (v7 == 2)
      {
        v73 = 0x800000010078E3E0;
      }

      else
      {
        v73 = v71;
      }

      v74 = sub_10000C4E4(v72, v73, v211);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      sub_1003C3718(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v78 = *(v66 + 8);
      v78(v65, v67);
      v79 = sub_10000C4E4(v75, v77, v211);

      *(v69 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v61, v62, "Send StateMachine CONTACTS SKIPPED - {receiverSupportsContactExchange: %s, type: %s} ", v69, 0x16u);
      swift_arrayDestroy();

      v78(v209, v67);
    }

    else
    {

      v102 = *(v66 + 8);
      v102(v65, v67);
      v102(v64, v67);
    }

    goto LABEL_29;
  }

  v8 = *(v0 + 2144);
  v9 = *(v0 + 2136);
  v10 = *(v0 + 2112);
  v11 = *(v0 + 2104);
  *(v0 + 2160) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  (*(v10 + 16))(v9, v8, v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 2136);
  v16 = *(v0 + 2112);
  v17 = *(v0 + 2104);
  if (v14)
  {
    v18 = *(v0 + 2489);
    v19 = swift_slowAlloc();
    v211[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = 1702195828;
    if ((v18 & 1) == 0)
    {
      v20 = 0x65736C6166;
    }

    v21 = 0xE500000000000000;
    if (v18)
    {
      v21 = 0xE400000000000000;
    }

    if (v7 == 2)
    {
      v22 = 0xD000000000000024;
    }

    else
    {
      v22 = v20;
    }

    if (v7 == 2)
    {
      v23 = 0x800000010078E3E0;
    }

    else
    {
      v23 = v21;
    }

    v24 = sub_10000C4E4(v22, v23, v211);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    sub_1003C3718(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = *(v16 + 8);
    v28(v15, v17);
    v29 = sub_10000C4E4(v25, v27, v211);

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v12, v13, "Send StateMachine CONTACTS START {receiverSupportsContactExchange: %s, type: %s}", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = *(v16 + 8);
    v28(v15, v17);
  }

  *(v0 + 2168) = v28;
  v80 = *(v0 + 2016);
  v81 = *(v0 + 2008);
  v82 = *(v0 + 2000);
  v83 = *(v0 + 1632);
  v84 = *(v80 + 48);
  *(v0 + 2176) = v84;
  *(v0 + 2184) = (v80 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v85 = v84(v83, 1, v81);
  *(v0 + 2480) = v85;
  sub_10000FF90(v83, v82, &qword_10097B1C0, &qword_1007FE4C8);
  if (v84(v82, 1, v81) == 1)
  {
    v86 = *(v0 + 1936);
    v87 = *(v0 + 1928);
    v88 = *(v0 + 1920);
    sub_100005508(*(v0 + 2000), &qword_10097B1C0, &qword_1007FE4C8);
    sub_1003A0614(v88);
    v89 = *(v86 + 48);
    *(v0 + 2192) = v89;
    *(v0 + 2200) = (v86 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v89(v88, 1, v87) == 1)
    {
      sub_100005508(*(v0 + 1920), &qword_10097B198, &qword_1007FE450);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.fault.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 2144);
      v94 = *(v0 + 2104);
      if (v92)
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Send StateMachine CONTACTS FAILED - Unexpectedly missing sender contact", v95, 2u);
      }

      v28(v93, v94);
      goto LABEL_29;
    }

    v103 = *(v0 + 1976);
    v104 = *(v0 + 1936);
    v105 = *(v0 + 1928);
    v106 = *(v0 + 1920);
    v107 = *(v104 + 32);
    *(v0 + 2208) = v107;
    *(v0 + 2216) = (v104 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v107(v103, v106, v105);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "Send StateMachine SHARE CONTACT PERMISSION START", v110, 2u);
    }

    v111 = *(v0 + 1976);
    v112 = v85 == 1;
    v113 = *(v0 + 1936);
    v114 = *(v0 + 1880);
    v115 = *(v0 + 1848);
    v206 = *(v0 + 1872);
    v210 = *(v0 + 1840);
    v116 = *(v0 + 1832);
    v117 = *(v0 + 1824);
    v201 = *(v0 + 1928);
    v203 = *(v0 + 1816);

    sub_1003BF3B0(v111, v112, v114);
    v118 = *(sub_10028088C(&unk_100986200, &unk_1007FE580) + 48);
    (*(v113 + 16))(v116, v111, v201);
    v119 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v119 - 8) + 16))(&v116[v118], v114, v119);
    v120 = enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:);
    v121 = *(v117 + 104);
    *(v0 + 2224) = v121;
    *(v0 + 2232) = (v117 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v121(v116, v120, v203);
    sub_100335364(v116, v206);
    v122 = *(v117 + 8);
    *(v0 + 2240) = v122;
    *(v0 + 2248) = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v122(v116, v203);
    v123 = *(v115 + 8);
    *(v0 + 2256) = v123;
    *(v0 + 2264) = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v123(v206, v210);

    return _swift_task_switch(sub_1003B9B68, 0, 0);
  }

  else
  {
    v96 = (v0 + 872);
    (*(*(v0 + 2016) + 32))(*(v0 + 2080), *(v0 + 2000), *(v0 + 2008));
    v97 = *(v0 + 1936);
    v98 = *(v0 + 1928);
    v99 = *(v0 + 1912);
    SFAirDrop.ContactRequest.contact.getter();
    v200 = *(v97 + 48);
    if (v200(v99, 1, v98) == 1)
    {
      sub_100005508(*(v0 + 1912), &qword_10097B198, &qword_1007FE450);
      v100 = 0;
      v101 = 0;
    }

    else
    {
      v124 = *(v0 + 1936);
      v125 = *(v0 + 1928);
      v126 = *(v0 + 1912);
      v127 = SFAirDrop.ContactInfo.accountHandle.getter();
      v101 = v128;
      (*(v124 + 8))(v126, v125);
      v100 = v127;
    }

    v129 = (v0 + 960);
    v130 = *(v0 + 2064);
    v131 = *(v0 + 2016);
    v132 = *(v0 + 2008);
    sub_10046A56C(v100, v101, (v0 + 784));
    v133 = *(v0 + 832);
    *(v0 + 904) = *(v0 + 816);
    *(v0 + 920) = v133;
    *(v0 + 936) = *(v0 + 848);
    *(v0 + 952) = *(v0 + 864);
    v134 = *(v0 + 800);
    *v96 = *(v0 + 784);
    *(v0 + 888) = v134;

    *(v0 + 2484) = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
    v135 = *(v131 + 104);
    *(v0 + 2304) = v135;
    *(v0 + 2312) = (v131 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v135(v130);
    v136 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    v137 = *(v131 + 8);
    *(v0 + 2320) = v137;
    *(v0 + 2328) = (v131 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v204 = v137;
    v137(v130, v132);
    if (v136)
    {
      *(v0 + 1040) = 0;
      *(v0 + 1008) = 0u;
      *(v0 + 1024) = 0u;
      *(v0 + 976) = 0u;
      *(v0 + 992) = 0u;
      *v129 = 0u;
    }

    else
    {
      sub_10000FF90(v0 + 784, v0 + 1048, &qword_10097B208, &qword_1007FE5A8);
      v138 = *(v0 + 920);
      *(v0 + 992) = *(v0 + 904);
      *(v0 + 1008) = v138;
      *(v0 + 1024) = *(v0 + 936);
      *(v0 + 1040) = *(v0 + 952);
      v139 = *(v0 + 888);
      *v129 = *v96;
      *(v0 + 976) = v139;
    }

    v140 = *(v0 + 2080);
    v141 = *(v0 + 2056);
    v142 = *(v0 + 2016);
    v143 = *(v0 + 2008);
    v198 = *(v0 + 1928);
    v144 = *(v0 + 1904);
    v145 = *(v0 + 1864);
    v146 = *(v0 + 1848);
    v147 = *(v0 + 1840);
    v148 = *(v0 + 1640);
    v149 = *(v142 + 16);
    *(v0 + 2336) = v149;
    *(v0 + 2344) = (v142 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v149(v141, v140, v143);
    v150 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    (*(v146 + 16))(v145, v148 + v150, v147);
    SFAirDropSend.Transfer.id.getter();
    v151 = *(v146 + 8);
    *(v0 + 2352) = v151;
    *(v0 + 2360) = (v146 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v151(v145, v147);
    sub_10000FF90(v0 + 960, v0 + 1136, &qword_10097B208, &qword_1007FE5A8);
    SFAirDrop.ContactRequest.contact.getter();
    v152 = v200(v144, 1, v198);
    v153 = *(v0 + 2056);
    if (v152 == 1)
    {
      v154 = *(v0 + 1904);
      v155 = *(v0 + 1776);
      v156 = *(v0 + 1752);
      v157 = *(v0 + 1744);
      v158 = *(v0 + 1728);
      v159 = *(v0 + 1720);
      v204(*(v0 + 2056), *(v0 + 2008));
      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v154, &qword_10097B198, &qword_1007FE450);
      v160 = v156[7];
      v161 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v161 - 8) + 56))(v155 + v160, 1, 1, v161);
      (*(v158 + 32))(v155, v157, v159);
      v162 = (v155 + v156[5]);
      *v162 = 0;
      v162[1] = 0;
      v163 = (v155 + v156[6]);
      *v163 = 0;
      v163[1] = 0;
      *(v155 + v156[8]) = xmmword_1007F8A80;
      v164 = v155 + v156[9];
      *(v164 + 80) = 0;
      *(v164 + 48) = 0u;
      *(v164 + 64) = 0u;
      *(v164 + 16) = 0u;
      *(v164 + 32) = 0u;
      *v164 = 0u;
    }

    else
    {
      v165 = *(v0 + 1968);
      v166 = *(v0 + 1936);
      v207 = *(v0 + 2008);
      v167 = *(v0 + 1776);
      v168 = *(v0 + 1752);
      v169 = *(v0 + 1744);
      v194 = v169;
      v195 = *(v0 + 1928);
      v170 = *(v0 + 1728);
      v171 = *(v0 + 1720);
      v193 = v171;
      (*(v166 + 32))(v165, *(v0 + 1904));
      (*(v170 + 16))(v167, v169, v171);
      v172 = SFAirDrop.ContactInfo.givenName.getter();
      v199 = v173;
      v202 = v172;
      v174 = SFAirDrop.ContactInfo.fullName.getter();
      v196 = v175;
      v197 = v174;
      v176 = v168[7];
      SFAirDrop.ContactInfo.handle.getter();
      v177 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v177 - 8) + 56))(v167 + v176, 0, 1, v177);
      v178 = SFAirDrop.ContactInfo.vcard.getter();
      v180 = v179;
      (*(v166 + 8))(v165, v195);
      (*(v170 + 8))(v194, v193);
      v204(v153, v207);
      v181 = (v167 + v168[5]);
      *v181 = v202;
      v181[1] = v199;
      v182 = (v167 + v168[6]);
      *v182 = v197;
      v182[1] = v196;
      v183 = (v167 + v168[8]);
      *v183 = v178;
      v183[1] = v180;
      v184 = v167 + v168[9];
      v185 = *(v0 + 976);
      *v184 = *v129;
      *(v184 + 16) = v185;
      v186 = *(v0 + 992);
      v187 = *(v0 + 1008);
      v188 = *(v0 + 1024);
      *(v184 + 80) = *(v0 + 1040);
      *(v184 + 48) = v187;
      *(v184 + 64) = v188;
      *(v184 + 32) = v186;
    }

    v189 = *(v0 + 1784);
    sub_10000ED78(*(v0 + 1776), v189, _s15ExchangeRequestVMa);
    sub_100302D38(v189);
    v190 = swift_task_alloc();
    *(v0 + 2368) = v190;
    *v190 = v0;
    v190[1] = sub_1003BAF18;
    v191 = *(v0 + 1712);
    v192 = *(v0 + 1672);

    return SFProgressTask.finalValue.getter(v191, v192);
  }
}

uint64_t sub_1003B9B68()
{
  v1 = v0[235];
  v2 = swift_task_alloc();
  v0[284] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[285] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[286] = v4;
  *v4 = v0;
  v4[1] = sub_1003B9C70;
  v5 = v0[259];
  v6 = v0[251];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1007FE590, v2, sub_1003C3800, v3, 0, 0, v6);
}

uint64_t sub_1003B9C70()
{
  v2 = *v1;
  *(*v1 + 2296) = v0;

  if (v0)
  {
    v3 = sub_1003BA610;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 2152);

    v3 = sub_1003B9DA4;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1003B9DA4()
{
  (*(*(v0 + 2016) + 32))(*(v0 + 2080), *(v0 + 2072), *(v0 + 2008));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Send StateMachine SHARE CONTACT PERMISSION END", v3, 2u);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Send StateMachine EXCHANGING START", v6, 2u);
  }

  v7 = (v0 + 872);
  v94 = *(v0 + 2240);
  v90 = *(v0 + 2224);
  v8 = *(v0 + 2080);
  v9 = *(v0 + 2016);
  v10 = *(v0 + 2008);
  v99 = (v0 + 784);
  v102 = *(v0 + 1976);
  v11 = *(v0 + 1936);
  v97 = *(v0 + 1928);
  v105 = *(v0 + 2256);
  v107 = *(v0 + 1880);
  v12 = *(v0 + 1872);
  v92 = *(v0 + 1840);
  v13 = *(v0 + 1832);
  v14 = *(v0 + 1816);

  (*(v9 + 16))(v13, v8, v10);
  v90(v13, enum case for SFAirDropSend.Transfer.State.exchanging(_:), v14);
  sub_100335364(v13, v12);
  v94(v13, v14);
  v105(v12, v92);
  (*(v11 + 8))(v102, v97);
  sub_100005508(v107, &qword_10097B200, &qword_1007FE578);
  v15 = *(v0 + 1936);
  v16 = *(v0 + 1928);
  v17 = *(v0 + 1912);
  SFAirDrop.ContactRequest.contact.getter();
  v103 = *(v15 + 48);
  if (v103(v17, 1, v16) == 1)
  {
    sub_100005508(*(v0 + 1912), &qword_10097B198, &qword_1007FE450);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 1936);
    v21 = *(v0 + 1928);
    v22 = *(v0 + 1912);
    v23 = SFAirDrop.ContactInfo.accountHandle.getter();
    v19 = v24;
    (*(v20 + 8))(v22, v21);
    v18 = v23;
  }

  v25 = (v0 + 960);
  v26 = *(v0 + 2064);
  v27 = *(v0 + 2016);
  v28 = *(v0 + 2008);
  sub_10046A56C(v18, v19, v99);
  v29 = *(v0 + 832);
  *(v0 + 904) = *(v0 + 816);
  *(v0 + 920) = v29;
  *(v0 + 936) = *(v0 + 848);
  *(v0 + 952) = *(v0 + 864);
  v30 = *(v0 + 800);
  *v7 = *v99;
  *(v0 + 888) = v30;

  *(v0 + 2484) = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
  v31 = *(v27 + 104);
  *(v0 + 2304) = v31;
  *(v0 + 2312) = (v27 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31(v26);
  v32 = static SFAirDrop.ContactRequest.== infix(_:_:)();
  v33 = *(v27 + 8);
  *(v0 + 2320) = v33;
  *(v0 + 2328) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v106 = v33;
  v33(v26, v28);
  if (v32)
  {
    *(v0 + 1040) = 0;
    *(v0 + 1008) = 0u;
    *(v0 + 1024) = 0u;
    *(v0 + 976) = 0u;
    *(v0 + 992) = 0u;
    *v25 = 0u;
  }

  else
  {
    sub_10000FF90(v99, v0 + 1048, &qword_10097B208, &qword_1007FE5A8);
    v34 = *(v0 + 920);
    *(v0 + 992) = *(v0 + 904);
    *(v0 + 1008) = v34;
    *(v0 + 1024) = *(v0 + 936);
    *(v0 + 1040) = *(v0 + 952);
    v35 = *(v0 + 888);
    *v25 = *v7;
    *(v0 + 976) = v35;
  }

  v36 = *(v0 + 2080);
  v37 = *(v0 + 2056);
  v38 = *(v0 + 2016);
  v39 = *(v0 + 2008);
  v100 = *(v0 + 1928);
  v40 = *(v0 + 1904);
  v41 = *(v0 + 1864);
  v42 = *(v0 + 1848);
  v43 = *(v0 + 1840);
  v44 = *(v0 + 1640);
  v45 = *(v38 + 16);
  *(v0 + 2336) = v45;
  *(v0 + 2344) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45(v37, v36, v39);
  v46 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  (*(v42 + 16))(v41, v44 + v46, v43);
  SFAirDropSend.Transfer.id.getter();
  v47 = *(v42 + 8);
  *(v0 + 2352) = v47;
  *(v0 + 2360) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v41, v43);
  sub_10000FF90(v0 + 960, v0 + 1136, &qword_10097B208, &qword_1007FE5A8);
  SFAirDrop.ContactRequest.contact.getter();
  v48 = v103(v40, 1, v100);
  v49 = *(v0 + 2008);
  if (v48 == 1)
  {
    v50 = *(v0 + 1904);
    v51 = *(v0 + 1776);
    v52 = *(v0 + 1752);
    v53 = *(v0 + 1744);
    v54 = *(v0 + 1728);
    v55 = *(v0 + 1720);
    v106(*(v0 + 2056), *(v0 + 2008));
    sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v50, &qword_10097B198, &qword_1007FE450);
    v56 = v52[7];
    v57 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v57 - 8) + 56))(v51 + v56, 1, 1, v57);
    (*(v54 + 32))(v51, v53, v55);
    v58 = (v51 + v52[5]);
    *v58 = 0;
    v58[1] = 0;
    v59 = (v51 + v52[6]);
    *v59 = 0;
    v59[1] = 0;
    *(v51 + v52[8]) = xmmword_1007F8A80;
    v60 = v51 + v52[9];
    *(v60 + 80) = 0;
    *(v60 + 48) = 0u;
    *(v60 + 64) = 0u;
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    *v60 = 0u;
  }

  else
  {
    v61 = *(v0 + 1968);
    v62 = *(v0 + 1936);
    v63 = *(v0 + 1776);
    v64 = *(v0 + 1752);
    v65 = *(v0 + 1744);
    v93 = v65;
    v95 = *(v0 + 1928);
    v66 = *(v0 + 1728);
    v67 = *(v0 + 1720);
    v91 = v67;
    v108 = *(v0 + 2056);
    (*(v62 + 32))(v61, *(v0 + 1904));
    (*(v66 + 16))(v63, v65, v67);
    v68 = SFAirDrop.ContactInfo.givenName.getter();
    v101 = v69;
    v104 = v68;
    v70 = SFAirDrop.ContactInfo.fullName.getter();
    v96 = v71;
    v98 = v70;
    v72 = v64[7];
    SFAirDrop.ContactInfo.handle.getter();
    v73 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v73 - 8) + 56))(v63 + v72, 0, 1, v73);
    v74 = SFAirDrop.ContactInfo.vcard.getter();
    v76 = v75;
    (*(v62 + 8))(v61, v95);
    (*(v66 + 8))(v93, v91);
    v106(v108, v49);
    v77 = (v63 + v64[5]);
    *v77 = v104;
    v77[1] = v101;
    v78 = (v63 + v64[6]);
    *v78 = v98;
    v78[1] = v96;
    v79 = (v63 + v64[8]);
    *v79 = v74;
    v79[1] = v76;
    v80 = v63 + v64[9];
    v81 = *(v0 + 976);
    *v80 = *v25;
    *(v80 + 16) = v81;
    v82 = *(v0 + 992);
    v83 = *(v0 + 1008);
    v84 = *(v0 + 1024);
    *(v80 + 80) = *(v0 + 1040);
    *(v80 + 48) = v83;
    *(v80 + 64) = v84;
    *(v80 + 32) = v82;
  }

  v85 = *(v0 + 1784);
  sub_10000ED78(*(v0 + 1776), v85, _s15ExchangeRequestVMa);
  sub_100302D38(v85);
  v86 = swift_task_alloc();
  *(v0 + 2368) = v86;
  *v86 = v0;
  v86[1] = sub_1003BAF18;
  v87 = *(v0 + 1712);
  v88 = *(v0 + 1672);

  return SFProgressTask.finalValue.getter(v87, v88);
}

uint64_t sub_1003BA610()
{
  v1 = *(v0 + 2152);

  return _swift_task_switch(sub_1003BA688, v1, 0);
}

uint64_t sub_1003BA688()
{
  *(v0 + 1608) = *(v0 + 2296);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 1800) + 88))(*(v0 + 1808), *(v0 + 1792)) == enum case for SFAirDropSend.Failure.cancelled(_:))
    {

      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v1, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&_mh_execute_header, v1, v2, "Send StateMachine SHARE CONTACT PERMISSION END - Not exchanging contacts", v3, 2u);
      }

      v67 = *(v0 + 2256);
      v72 = *(v0 + 2192);
      v4 = *(v0 + 2024);
      v5 = *(v0 + 2016);
      v6 = *(v0 + 2008);
      v70 = *(v0 + 1928);
      v7 = *(v0 + 1888);
      v8 = *(v0 + 1856);
      v9 = *(v0 + 1848);
      v10 = *(v0 + 1840);
      v11 = *(v0 + 1640);

      (*(v5 + 104))(v4, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v6);
      v12 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
      swift_beginAccess();
      (*(v9 + 16))(v8, v11 + v12, v10);
      SFAirDropSend.Transfer.id.getter();
      v67(v8, v10);
      SFAirDrop.ContactRequest.contact.getter();
      if (v72(v7, 1, v70) == 1)
      {
        v13 = *(v0 + 1888);
        v14 = *(v0 + 1760);
        v15 = *(v0 + 1752);
        v16 = *(v0 + 1736);
        v17 = *(v0 + 1728);
        v18 = *(v0 + 1720);
        (*(*(v0 + 2016) + 8))(*(v0 + 2024), *(v0 + 2008));
        sub_100005508(v13, &qword_10097B198, &qword_1007FE450);
        v19 = v15[7];
        v20 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
        (*(v17 + 32))(v14, v16, v18);
        v21 = 0;
        v22 = (v14 + v15[5]);
        *v22 = 0;
        v22[1] = 0;
        v23 = (v14 + v15[6]);
        *v23 = 0;
        v23[1] = 0;
        v24 = 0xF000000000000000;
      }

      else
      {
        v38 = *(v0 + 2016);
        v73 = *(v0 + 2008);
        v74 = *(v0 + 2024);
        v39 = *(v0 + 1944);
        v40 = *(v0 + 1936);
        v41 = *(v0 + 1928);
        v42 = *(v0 + 1760);
        v43 = *(v0 + 1752);
        v44 = *(v0 + 1736);
        v45 = *(v0 + 1728);
        v46 = *(v0 + 1720);
        v64 = v46;
        v65 = v44;
        (*(v0 + 2208))(v39, *(v0 + 1888), v41);
        (*(v45 + 16))(v42, v44, v46);
        v47 = SFAirDrop.ContactInfo.givenName.getter();
        v69 = v48;
        v71 = v47;
        v49 = SFAirDrop.ContactInfo.fullName.getter();
        v66 = v50;
        v68 = v49;
        v51 = v43[7];
        SFAirDrop.ContactInfo.handle.getter();
        v52 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v52 - 8) + 56))(v42 + v51, 0, 1, v52);
        v21 = SFAirDrop.ContactInfo.vcard.getter();
        v24 = v53;
        (*(v40 + 8))(v39, v41);
        (*(v45 + 8))(v65, v64);
        (*(v38 + 8))(v74, v73);
        v54 = (v42 + v43[5]);
        *v54 = v71;
        v54[1] = v69;
        v55 = (v42 + v43[6]);
        *v55 = v68;
        v55[1] = v66;
      }

      v56 = *(v0 + 1768);
      v57 = *(v0 + 1760);
      v58 = *(v0 + 1752);
      v59 = *(v0 + 1624);
      v60 = (v57 + *(v58 + 32));
      *v60 = v21;
      v60[1] = v24;
      v61 = v57 + *(v58 + 36);
      *(v61 + 80) = 0;
      *(v61 + 48) = 0u;
      *(v61 + 64) = 0u;
      *(v61 + 16) = 0u;
      *(v61 + 32) = 0u;
      *v61 = 0u;
      sub_10000ED78(v57, v56, _s15ExchangeRequestVMa);
      v62 = swift_task_alloc();
      *(v0 + 2472) = v62;
      *(v62 + 16) = v59;
      *(v62 + 24) = v56;
      swift_asyncLet_begin();
      v63 = *(v0 + 1688);

      return _swift_asyncLet_finish(v0 + 16, v63, sub_1003BE324, v0 + 656);
    }

    v29 = *(v0 + 2168);
    v30 = *(v0 + 2144);
    v31 = *(v0 + 2104);
    v32 = *(v0 + 1880);
    v33 = *(v0 + 1808);
    v34 = *(v0 + 1800);
    v35 = *(v0 + 1792);
    (*(*(v0 + 1936) + 8))(*(v0 + 1976), *(v0 + 1928));
    v29(v30, v31);
    sub_100005508(v32, &qword_10097B200, &qword_1007FE578);
    (*(v34 + 8))(v33, v35);
  }

  else
  {
    v25 = *(v0 + 2168);
    v26 = *(v0 + 2144);
    v27 = *(v0 + 2104);
    v28 = *(v0 + 1880);
    (*(*(v0 + 1936) + 8))(*(v0 + 1976), *(v0 + 1928));
    v25(v26, v27);
    sub_100005508(v28, &qword_10097B200, &qword_1007FE578);
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1003BAF18()
{
  v2 = *v1;
  *(*v1 + 2376) = v0;

  v3 = v2[269];
  (*(v2[210] + 8))(v2[212], v2[209]);
  if (v0)
  {
    v4 = sub_1003BE6AC;
  }

  else
  {
    v4 = sub_1003BB094;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003BB094()
{
  v71 = v0;
  sub_1005824F4(*(v0 + 2048));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Send StateMachine EXCHANGING END", v3, 2u);
  }

  v4 = *(v0 + 2336);
  v5 = *(v0 + 2048);
  v6 = *(v0 + 2040);
  v7 = *(v0 + 2016);
  v8 = *(v0 + 2008);

  v4(v6, v5, v8);
  if ((*(v7 + 88))(v6, v8) == enum case for SFAirDrop.ContactRequest.contact(_:))
  {
    v9 = *(v0 + 2040);
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1936);
    v13 = *(v0 + 1928);
    v14 = *(v0 + 1632);
    (*(*(v0 + 2016) + 96))(v9, *(v0 + 2008));
    (*(v12 + 32))(v11, v9, v13);
    sub_10000FF90(v14, v10, &qword_10097B1C0, &qword_1007FE4C8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 2176);
      v18 = *(v0 + 2008);
      v19 = *(v0 + 1992);
      v20 = *(v0 + 1984);
      v21 = *(v0 + 2480) == 1;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v70[0] = v23;
      *v22 = 67109635;
      *(v22 + 4) = v21;
      *(v22 + 8) = 2160;
      *(v22 + 10) = 1752392040;
      *(v22 + 18) = 2081;
      sub_10000FF90(v19, v20, &qword_10097B1C0, &qword_1007FE4C8);
      if (v17(v20, 1, v18) == 1)
      {
        sub_100005508(*(v0 + 1984), &qword_10097B1C0, &qword_1007FE4C8);
        v24 = 0x800000010078E410;
        v25 = 0xD000000000000013;
      }

      else
      {
        v47 = *(v0 + 2320);
        v48 = *(v0 + 2008);
        v49 = *(v0 + 1984);
        v25 = SFAirDrop.ContactRequest.description.getter();
        v24 = v50;
        v47(v49, v48);
      }

      sub_100005508(*(v0 + 1992), &qword_10097B1C0, &qword_1007FE4C8);
      v51 = sub_10000C4E4(v25, v24, v70);

      *(v22 + 20) = v51;
      _os_log_impl(&_mh_execute_header, v15, v16, "Should Import CONTACT START {afterAirDrop: %{BOOL}d, contactRequest: %{private,mask.hash}s}", v22, 0x1Cu);
      sub_10000C60C(v23);
    }

    else
    {
      v44 = *(v0 + 1992);

      sub_100005508(v44, &qword_10097B1C0, &qword_1007FE4C8);
    }

    v68 = *(v0 + 2352);
    v52 = *(v0 + 1960);
    v53 = *(v0 + 1936);
    v54 = *(v0 + 1928);
    v66 = *(v0 + 1872);
    v67 = *(v0 + 1840);
    v55 = *(v0 + 1832);
    v56 = *(v0 + 1824);
    v57 = *(v0 + 1816);
    v58 = *(v0 + 1664);
    sub_1003C02E4(v52, *(v0 + 2480) == 1, v58);
    v59 = *(sub_10028088C(&unk_1009861F0, &unk_1007FE5B0) + 48);
    (*(v53 + 16))(v55, v52, v54);
    v60 = sub_10028088C(&qword_10097B218, &unk_100809050);
    (*(*(v60 - 8) + 16))(&v55[v59], v58, v60);
    (*(v56 + 104))(v55, enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:), v57);
    sub_100335364(v55, v66);
    (*(v56 + 8))(v55, v57);
    v68(v66, v67);

    return _swift_task_switch(sub_1003BBAE8, 0, 0);
  }

  else
  {
    v26 = *(v0 + 2336);
    v27 = *(v0 + 2048);
    v28 = *(v0 + 2032);
    v29 = *(v0 + 2008);
    (*(v0 + 2320))(*(v0 + 2040), v29);
    v26(v28, v27, v29);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 2320);
    v34 = *(v0 + 2168);
    v35 = *(v0 + 2144);
    v69 = *(v0 + 2104);
    v63 = *(v0 + 2048);
    v36 = *(v0 + 2032);
    v37 = *(v0 + 2008);
    v64 = *(v0 + 1784);
    v65 = *(v0 + 2080);
    if (v32)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v70[0] = v39;
      *v38 = 136315138;
      sub_1003C3718(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
      v61 = v35;
      v62 = v34;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v33(v36, v37);
      v43 = sub_10000C4E4(v40, v42, v70);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Import CONTACT SKIP. No contact from receiver {exchangeContactResponse: %s}", v38, 0xCu);
      sub_10000C60C(v39);

      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
      v33(v63, v37);
      sub_1003C41CC(v64, _s15ExchangeRequestVMa);
      v33(v65, v37);
      v62(v61, v69);
    }

    else
    {

      sub_100005508(v0 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v0 + 784, &qword_10097B208, &qword_1007FE5A8);
      v33(v36, v37);
      v33(v63, v37);
      sub_1003C41CC(v64, _s15ExchangeRequestVMa);
      v33(v65, v37);
      v34(v35, v69);
    }

    sub_1003C41CC(*(v0 + 1712), _s16ExchangeResponseVMa);

    v45 = *(v0 + 8);

    return v45(0, 0);
  }
}

uint64_t sub_1003BBAE8()
{
  v1 = v0[208];
  v2 = swift_task_alloc();
  v0[298] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[299] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[300] = v4;
  *v4 = v0;
  v4[1] = sub_1003BBBF4;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 311, &unk_1007FE5C8, v2, sub_1003C3968, v3, 0, 0, &type metadata for Bool);
}

uint64_t sub_1003BBBF4()
{
  v2 = *v1;
  *(*v1 + 2408) = v0;

  if (v0)
  {
    v3 = sub_1003BC324;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 2152);

    *(v2 + 2490) = *(v2 + 2488);
    v3 = sub_1003BBD38;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1003BBD38(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 2490);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Should Import CONTACT END {shouldImportContact: %{BOOL}d}", v5, 8u);
  }

  v6 = *(v1 + 2490);

  if (v6 == 1)
  {
    v7 = *(v1 + 2168);
    v8 = *(v1 + 2128);
    v9 = *(v1 + 2112);
    v10 = *(v1 + 2104);
    SFAirDropSend.Request.type.getter();
    v11 = SFAirDrop.TransferType.isOnlyExchange.getter();
    *(v1 + 2416) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v8, v10);
    v12 = swift_task_alloc();
    *(v1 + 2424) = v12;
    *v12 = v1;
    v12[1] = sub_1003BC78C;
    v13 = *(v1 + 1960);

    return sub_10034B410(v13, v11 & 1);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Import CONTACT SKIP. Declined.", v17, 2u);
    }

    v18 = *(v1 + 2320);
    v29 = *(v1 + 2144);
    v30 = *(v1 + 2168);
    v28 = *(v1 + 2104);
    v19 = *(v1 + 2048);
    v20 = *(v1 + 2008);
    v21 = *(v1 + 1960);
    v22 = *(v1 + 1936);
    v23 = *(v1 + 1928);
    v25 = *(v1 + 1784);
    v26 = *(v1 + 2080);
    v31 = *(v1 + 1712);
    v27 = *(v1 + 1664);

    sub_100005508(v1 + 960, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v1 + 784, &qword_10097B208, &qword_1007FE5A8);
    (*(v22 + 8))(v21, v23);
    v18(v19, v20);
    sub_1003C41CC(v25, _s15ExchangeRequestVMa);
    v18(v26, v20);
    v30(v29, v28);
    sub_100005508(v27, &qword_10097B1F0, &qword_1007FE568);
    sub_1003C41CC(v31, _s16ExchangeResponseVMa);

    v24 = *(v1 + 8);

    return v24(0, 0);
  }
}

uint64_t sub_1003BC324()
{
  v1 = *(v0 + 2152);

  return _swift_task_switch(sub_1003BC39C, v1, 0);
}

uint64_t sub_1003BC39C()
{
  v1 = v0[290];
  v13 = v0[268];
  v14 = v0[271];
  v12 = v0[263];
  v2 = v0[256];
  v3 = v0[251];
  v4 = v0[245];
  v5 = v0[242];
  v6 = v0[241];
  v9 = v0[223];
  v10 = v0[260];
  v15 = v0[214];
  v11 = v0[208];
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_1003C41CC(v9, _s15ExchangeRequestVMa);
  v1(v10, v3);
  v14(v13, v12);
  sub_100005508(v11, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v15, _s16ExchangeResponseVMa);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003BC78C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[304] = a1;
  v5[305] = a2;
  v5[306] = v2;

  v6 = v4[269];
  if (v2)
  {
    v7 = sub_1003BD630;
  }

  else
  {
    v7 = sub_1003BC8C8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003BC8C8(uint64_t a1)
{
  v2 = *(v1 + 2440);
  if (v2)
  {
    v3 = *(v1 + 1712) + *(*(v1 + 1704) + 36);
    v4 = *(v3 + 16);
    *(v1 + 1224) = *v3;
    *(v1 + 1240) = v4;
    v6 = *(v3 + 48);
    v5 = *(v3 + 64);
    v7 = *(v3 + 32);
    *(v1 + 1304) = *(v3 + 80);
    *(v1 + 1272) = v6;
    *(v1 + 1288) = v5;
    *(v1 + 1256) = v7;
    *(v1 + 1488) = *v3;
    v9 = *(v3 + 32);
    v8 = *(v3 + 48);
    v10 = *(v3 + 16);
    *(v1 + 1552) = *(v3 + 64);
    *(v1 + 1520) = v9;
    *(v1 + 1536) = v8;
    *(v1 + 1504) = v10;
    v11 = *(v1 + 1296);
    if (!v11)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v1 + 2320);
      v84 = *(v1 + 2144);
      v86 = *(v1 + 2168);
      v69 = *(v1 + 2048);
      v47 = *(v1 + 2008);
      v48 = *(v1 + 1960);
      v49 = *(v1 + 1936);
      v50 = *(v1 + 1928);
      v72 = *(v1 + 1784);
      v75 = *(v1 + 2080);
      v78 = *(v1 + 1664);
      v81 = *(v1 + 2104);
      if (v45)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Import Identity SKIP. Not provided", v51, 2u);
      }

      sub_100005508(v1 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v1 + 784, &qword_10097B208, &qword_1007FE5A8);
      (*(v49 + 8))(v48, v50);
      v46(v69, v47);
      sub_1003C41CC(v72, _s15ExchangeRequestVMa);
      v46(v75, v47);
      v86(v84, v81);
      v60 = v78;
      goto LABEL_20;
    }

    v82 = *(v1 + 2320);
    v12 = *(v1 + 2304);
    v13 = *(v1 + 2484);
    v14 = *(v1 + 2064);
    v15 = *(v1 + 2008);
    v16 = *(v1 + 1304);
    v17 = *(v1 + 1536);
    *(v1 + 728) = *(v1 + 1520);
    *(v1 + 744) = v17;
    *(v1 + 760) = *(v1 + 1552);
    v18 = *(v1 + 1504);
    *(v1 + 696) = *(v1 + 1488);
    *(v1 + 712) = v18;
    *(v1 + 768) = v11;
    *(v1 + 776) = v16;
    v12(v14, v13, v15);
    v19 = *(v1 + 1272);
    *(v1 + 1344) = *(v1 + 1256);
    *(v1 + 1360) = v19;
    *(v1 + 1376) = *(v1 + 1288);
    *(v1 + 1392) = *(v1 + 1304);
    v20 = *(v1 + 1240);
    *(v1 + 1312) = *(v1 + 1224);
    *(v1 + 1328) = v20;
    sub_1003398A0(v1 + 1312, v1 + 1400);
    v21 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    v82(v14, v15);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    if (v21)
    {
      v25 = *(v1 + 2320);
      v83 = *(v1 + 2168);
      v76 = *(v1 + 2104);
      v79 = *(v1 + 2144);
      v26 = *(v1 + 2008);
      v63 = *(v1 + 1960);
      v65 = *(v1 + 2048);
      v27 = *(v1 + 1936);
      v28 = *(v1 + 1928);
      v67 = *(v1 + 1784);
      v70 = *(v1 + 2080);
      v73 = *(v1 + 1664);
      if (v24)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Exchange Contact IDENTITY IMPORT SKIP. User chose to only receive", v29, 2u);
      }

      sub_100005508(v1 + 1224, &qword_10097B208, &qword_1007FE5A8);

      sub_100005508(v1 + 960, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v1 + 784, &qword_10097B208, &qword_1007FE5A8);
      (*(v27 + 8))(v63, v28);
      v25(v65, v26);
      sub_1003C41CC(v67, _s15ExchangeRequestVMa);
      v25(v70, v26);
      v83(v79, v76);
      v60 = v73;
LABEL_20:
      sub_100005508(v60, &qword_10097B1F0, &qword_1007FE568);
      sub_1003C41CC(*(v1 + 1712), _s16ExchangeResponseVMa);
      v85 = *(v1 + 2432);
      v87 = *(v1 + 2440);

      v61 = *(v1 + 8);

      return v61(v85, v87);
    }

    if (v24)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Import Identity CONTINUE. Attempting identity import", v52, 2u);
    }

    v53 = *(v1 + 1712);
    v54 = *(v1 + 1704);

    v55 = (v53 + *(v54 + 32));
    v56 = *v55;
    v57 = v55[1];
    v58 = swift_task_alloc();
    *(v1 + 2456) = v58;
    *v58 = v1;
    v58[1] = sub_1003BDA14;
    v59 = *(v1 + 2432);

    return sub_10034E3C0(v1 + 696, v56, v57, v59, v2);
  }

  else
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Import CONTACT FAILED", v32, 2u);
    }

    v33 = *(v1 + 2320);
    v74 = *(v1 + 2144);
    v77 = *(v1 + 2168);
    v62 = *(v1 + 2048);
    v34 = *(v1 + 2008);
    v35 = *(v1 + 1960);
    v36 = *(v1 + 1936);
    v37 = *(v1 + 1928);
    v38 = *(v1 + 1800);
    v39 = *(v1 + 1792);
    v64 = *(v1 + 1784);
    v66 = *(v1 + 2080);
    v80 = *(v1 + 1712);
    v68 = *(v1 + 1664);
    v71 = *(v1 + 2104);

    sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v38 + 104))(v40, enum case for SFAirDropSend.Failure.badRequest(_:), v39);
    swift_willThrow();
    sub_100005508(v1 + 960, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v1 + 784, &qword_10097B208, &qword_1007FE5A8);
    (*(v36 + 8))(v35, v37);
    v33(v62, v34);
    sub_1003C41CC(v64, _s15ExchangeRequestVMa);
    v33(v66, v34);
    v77(v74, v71);
    sub_100005508(v68, &qword_10097B1F0, &qword_1007FE568);
    sub_1003C41CC(v80, _s16ExchangeResponseVMa);

    v41 = *(v1 + 8);

    return v41();
  }
}

uint64_t sub_1003BD630()
{
  v1 = v0[290];
  v14 = v0[271];
  v12 = v0[263];
  v13 = v0[268];
  v2 = v0[256];
  v3 = v0[251];
  v4 = v0[245];
  v5 = v0[242];
  v6 = v0[241];
  v9 = v0[223];
  v10 = v0[260];
  v15 = v0[214];
  v11 = v0[208];
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_1003C41CC(v9, _s15ExchangeRequestVMa);
  v1(v10, v3);
  v14(v13, v12);
  sub_100005508(v11, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v15, _s16ExchangeResponseVMa);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003BDA14()
{
  v2 = *v1;
  *(*v1 + 2464) = v0;

  if (v0)
  {
    v3 = *(v2 + 2152);

    v4 = sub_1003BDF30;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 2152);
    v4 = sub_1003BDB3C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003BDB3C()
{
  v1 = v0[290];
  v14 = v0[271];
  v12 = v0[263];
  v13 = v0[268];
  v2 = v0[256];
  v3 = v0[251];
  v4 = v0[245];
  v5 = v0[242];
  v6 = v0[241];
  v9 = v0[223];
  v10 = v0[260];
  v11 = v0[208];
  sub_100005508((v0 + 153), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_1003C41CC(v9, _s15ExchangeRequestVMa);
  v1(v10, v3);
  v14(v13, v12);
  sub_100005508(v11, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v0[214], _s16ExchangeResponseVMa);
  v15 = v0[304];
  v16 = v0[305];

  v7 = v0[1];

  return v7(v15, v16);
}

uint64_t sub_1003BDF30()
{
  v1 = v0[290];
  v14 = v0[271];
  v12 = v0[263];
  v13 = v0[268];
  v2 = v0[256];
  v3 = v0[251];
  v4 = v0[245];
  v5 = v0[242];
  v6 = v0[241];
  v9 = v0[223];
  v10 = v0[260];
  v15 = v0[214];
  v11 = v0[208];
  sub_100005508((v0 + 153), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_1003C41CC(v9, _s15ExchangeRequestVMa);
  v1(v10, v3);
  v14(v13, v12);
  sub_100005508(v11, &qword_10097B1F0, &qword_1007FE568);
  sub_1003C41CC(v15, _s16ExchangeResponseVMa);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003BE340()
{
  v1 = v0[271];
  v2 = v0[268];
  v3 = v0[263];
  v4 = v0[247];
  v5 = v0[242];
  v6 = v0[241];
  v7 = v0[235];
  v8 = v0[221];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_100005508(v7, &qword_10097B200, &qword_1007FE578);
  sub_1003C41CC(v8, _s15ExchangeRequestVMa);

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_1003BE6AC()
{
  v1 = v0[290];
  v8 = v0[268];
  v9 = v0[271];
  v2 = v0[263];
  v3 = v0[260];
  v4 = v0[251];
  v5 = v0[223];
  sub_100005508((v0 + 120), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 98), &qword_10097B208, &qword_1007FE5A8);
  sub_1003C41CC(v5, _s15ExchangeRequestVMa);
  v1(v3, v4);
  v9(v8, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003BEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_10028088C(&qword_10097B318, &unk_1007FE6E0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = _s12ErrorRequestVMa(0);
  v5[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v5[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003BEB5C, v7, 0);
}

uint64_t sub_1003BEB5C()
{
  v1 = v0[5];
  if (v1)
  {
    if ((v0[6] & 0xFF00000000) != 0x300000000 && (v0[6] & 4) != 0)
    {
      v10 = v0[12];
      v9 = v0[13];
      v11 = v0[11];
      v12 = v0[7];
      v1;
      SFAirDropSend.Request.id.getter();
      v13 = *(v10 + 20);
      v14 = type metadata accessor for CodableError();
      (*(*(v14 - 8) + 16))(v9 + v13, v12, v14);
      sub_1003046F0(v9, v11);
      v15 = swift_task_alloc();
      v0[15] = v15;
      *v15 = v0;
      v15[1] = sub_1003BED78;
      v16 = v0[9];

      return SFProgressTask.finalValue.getter(v0 + 2, v16);
    }

    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No HELLO response present with .errorMessage support", v6, 2u);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003BED78()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[14];

    v4 = sub_1003C43B8;
    v5 = v3;
  }

  else
  {
    v6 = v2[14];
    sub_100026AC0(v2[2], v2[3]);
    v4 = sub_1003BEEA8;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003BEEA8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  sub_1003C41CC(v1, _s12ErrorRequestVMa);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003BEF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_10028088C(&qword_10097B328, &qword_1007FE720);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003BF034, 0, 0);
}

uint64_t sub_1003BF034()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003BF0CC, v0, 0);
}

uint64_t sub_1003BF0CC()
{
  sub_1002FF790(v0[4]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003BF178;
  v2 = v0[5];
  v3 = v0[2];

  return SFProgressTask.finalValue.getter(v3, v2);
}

uint64_t sub_1003BF178()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003BF34C;
  }

  else
  {
    v5 = sub_1003BF2E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BF2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BF34C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BF3B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v96 = a1;
  v103 = a3;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v91 = &v72[-v5];
  v6 = sub_10028088C(&qword_10097B258, &unk_100808E00);
  __chkstk_darwin(v6 - 8);
  v90 = &v72[-v7];
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8);
  v88 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v87 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for SFAirDrop.ContactRequest();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_10028088C(&qword_10097B260, &unk_1007FE620);
  v89 = *(v102 - 8);
  __chkstk_darwin(v102);
  v104 = &v72[-v14];
  v81 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v15 = *(v81 - 1);
  __chkstk_darwin(v81);
  v17 = &v72[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = type metadata accessor for SFAirDrop.DeclineAction();
  v86 = *(v101 - 8);
  v18 = __chkstk_darwin(v101);
  v83 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v105 = &v72[-v20];
  v21 = sub_10028088C(&qword_10097B268, &unk_100808E10);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = v24;
  __chkstk_darwin(v23);
  v27 = &v72[-v26];
  v92 = 0xD000000000000017;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v93 = v17;
  *v17 = 0x776F4E20746F4ELL;
  v17[1] = 0xE700000000000000;
  LODWORD(v76) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v28 = *(v15 + 104);
  v80 = v15 + 104;
  v82 = v28;
  v28(v17);
  v73 = ~a2;
  v97 = *(v22 + 16);
  v100 = v21;
  v97(v25, v27, v21);
  v29 = *(v22 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = swift_allocObject();
  v85 = v22;
  v32 = *(v22 + 32);
  (v32)(v31 + v30, v25, v21);
  v33 = v93;
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  *v33 = 0x6572616853;
  v33[1] = 0xE500000000000000;
  v82(v33, v76, v81);
  v34 = type metadata accessor for SFAirDrop.ContactInfo();
  v35 = v94;
  (*(*(v34 - 8) + 16))(v94, v96, v34);
  (*(v95 + 104))(v35, enum case for SFAirDrop.ContactRequest.contact(_:), v99);
  v36 = v100;
  v80 = v22 + 16;
  v97(v25, v27, v100);
  v95 = v29;
  v37 = swift_allocObject();
  v82 = (v22 + 32);
  v81 = v32;
  (v32)(v37 + v30, v25, v36);
  v38 = sub_1003C3718(&qword_10097B270, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v39 = sub_1003C3718(&qword_10097B278, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v74 = sub_1003C3718(&qword_10097B280, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v75 = v39;
  v76 = v38;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v40 = (v77 + 8);
  v84 = v27;
  if (v73)
  {
    v106 = SFAirDrop.ContactInfo.fullName.getter();
    v107 = v47;
    v48._countAndFlagsBits = 10;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49 = v78;
    SFAirDrop.ContactInfo.handle.getter();
    sub_1003C3718(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    v50 = v79;
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    (*v40)(v49, v50);
    v93 = v107;
    v94 = v106;
  }

  else
  {
    v106 = SFAirDrop.ContactInfo.fullName.getter();
    v107 = v41;
    v42._countAndFlagsBits = 10272;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    v43 = v78;
    SFAirDrop.ContactInfo.handle.getter();
    sub_1003C3718(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    v44 = v79;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    (*v40)(v43, v44);
    v46._countAndFlagsBits = 41;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v93 = v107;
    v94 = v106;
    v92 = 0xD00000000000001FLL;
  }

  v96 = ~v95;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_10097B288, &unk_1007FE630);
  v52 = sub_10028088C(&qword_10097B290, &unk_100808E20);
  v53 = *(v52 - 8);
  v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1007F5670;
  v56 = v55 + v54;
  sub_10028088C(&qword_10097B298, &unk_1007FE640);
  v57 = v89;
  (*(v89 + 16))(v56, v104, v102);
  UUID.init()();
  (*(v53 + 104))(v56, enum case for SFAirDrop.AcceptAction.single<A>(_:), v52);
  v58 = v86;
  (*(v86 + 16))(v83, v105, v101);
  v59 = sub_10028088C(&qword_10097B2A0, &qword_100808E30);
  (*(*(v59 - 8) + 56))(v90, 1, 1, v59);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v60 = type metadata accessor for TaskPriority();
  v61 = v91;
  (*(*(v60 - 8) + 56))(v91, 1, 1, v60);
  v62 = v25;
  v63 = v25;
  v64 = v84;
  v65 = v100;
  v97(v63, v84, v100);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v66 = static AirDropActor.shared;
  v67 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v68 = (v95 + 32) & v96;
  v69 = swift_allocObject();
  *(v69 + 16) = v66;
  *(v69 + 24) = v67;
  (v81)(v69 + v68, v62, v65);

  v70 = sub_1002B2B00(0, 0, v61, &unk_1007FE658, v69);
  (*(v57 + 8))(v104, v102);
  (*(v58 + 8))(v105, v101);
  (*(v85 + 8))(v64, v65);
  result = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  *(v103 + *(result + 52)) = v70;
  return result;
}

uint64_t sub_1003C01C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003C01E4, 0, 0);
}

uint64_t sub_1003C01E4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C027C, v0, 0);
}

uint64_t sub_1003C027C()
{
  sub_100302D38(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C02E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  LODWORD(v71) = a2;
  v76 = a1;
  v91 = a3;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v86 = &v65 - v5;
  v6 = sub_10028088C(&qword_10097B220, &qword_1007FE5D8);
  __chkstk_darwin(v6 - 8);
  v84 = &v65 - v7;
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8);
  v82 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v81 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10028088C(&qword_10097B228, &unk_1007FE5E0);
  v85 = *(v90 - 8);
  __chkstk_darwin(v90);
  v93 = &v65 - v13;
  v73 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v14 = *(v73 - 8);
  __chkstk_darwin(v73);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for SFAirDrop.DeclineAction();
  v83 = *(v89 - 8);
  v17 = __chkstk_darwin(v89);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v92 = &v65 - v19;
  v20 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v23;
  __chkstk_darwin(v22);
  v26 = &v65 - v25;
  v88 = &v65 - v25;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v27 = 0x6574656C6544;
  if (v3)
  {
    v27 = 0x656E696C636544;
  }

  v28 = 0xE700000000000000;
  if ((v3 & 1) == 0)
  {
    v28 = 0xE600000000000000;
  }

  *v16 = v27;
  v16[1] = v28;
  LODWORD(v69) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v29 = *(v14 + 104);
  v72 = (v14 + 104);
  v74 = v29;
  v30 = 1885693259;
  if (v3)
  {
    v30 = 0x747065636341;
  }

  v75 = v30;
  v31 = 0xE400000000000000;
  if (v3)
  {
    v31 = 0xE600000000000000;
  }

  v68 = v31;
  (v29)(v16);
  v32 = *(v21 + 16);
  v32(v24, v26, v20);
  v33 = *(v21 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = swift_allocObject();
  v79 = v21;
  v36 = *(v21 + 32);
  v36(v35 + v34, v24, v20);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v70 = v16;
  v37 = v68;
  *v16 = v75;
  v16[1] = v37;
  v74(v16, v69, v73);
  LOBYTE(v94) = 1;
  v73 = v21 + 16;
  v72 = v32;
  v32(v24, v88, v20);
  v38 = swift_allocObject();
  v75 = v21 + 32;
  v74 = v36;
  v36(v38 + v34, v24, v20);
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v80 = v20;
  v78 = v24;
  if (v71)
  {
    SFAirDrop.ContactInfo.fullName.getter();
    v71 = v39;
    v70 = 0x800000010078E4E0;
    v69 = 0xD000000000000013;
  }

  else
  {
    v71 = 0x800000010078E4C0;
    v94 = SFAirDrop.ContactInfo.fullName.getter();
    v95 = v40;
    v41._countAndFlagsBits = 10;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    v42 = v65;
    SFAirDrop.ContactInfo.handle.getter();
    sub_1003C3718(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    v43 = v67;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    (*(v66 + 8))(v42, v43);
    v69 = v94;
    v70 = v95;
  }

  v76 = ~v33;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_10097B238, &qword_1007FE5F0);
  v45 = sub_10028088C(&qword_10097B240, &qword_1007FE5F8);
  v46 = *(v45 - 8);
  v47 = v33;
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007F5670;
  v50 = v49 + v48;
  sub_10028088C(&qword_10097B248, &qword_1007FE600);
  v51 = v85;
  (*(v85 + 16))(v50, v93, v90);
  UUID.init()();
  (*(v46 + 104))(v50, enum case for SFAirDrop.AcceptAction.single<A>(_:), v45);
  v52 = v83;
  (*(v83 + 16))(v77, v92, v89);
  v53 = sub_10028088C(&qword_10097B250, &qword_1007FE608);
  (*(*(v53 - 8) + 56))(v84, 1, 1, v53);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v54 = type metadata accessor for TaskPriority();
  v55 = v86;
  (*(*(v54 - 8) + 56))(v86, 1, 1, v54);
  v56 = v78;
  v57 = v88;
  v58 = v80;
  v72(v78, v88, v80);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v59 = static AirDropActor.shared;
  v60 = sub_1003C3718(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v61 = (v47 + 32) & v76;
  v62 = swift_allocObject();
  *(v62 + 16) = v59;
  *(v62 + 24) = v60;
  v74(v62 + v61, v56, v58);

  v63 = sub_1002B2DE0(0, 0, v55, &unk_1007FE618, v62);
  (*(v51 + 8))(v93, v90);
  (*(v52 + 8))(v92, v89);
  (*(v79 + 8))(v57, v58);
  result = sub_10028088C(&qword_10097B1F0, &qword_1007FE568);
  *(v91 + *(result + 52)) = v63;
  return result;
}

uint64_t sub_1003C0F3C()
{
  v0 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, enum case for SFAirDropSend.Failure.cancelled(_:), v0);
  sub_10028088C(&qword_10097B268, &unk_100808E10);
  SFProgressContinuation.fail(with:)();
}

uint64_t sub_1003C102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097B2A8, &unk_1007FE660);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C1134, v6, 0);
}

uint64_t sub_1003C1134()
{
  sub_10028088C(&qword_10097B268, &unk_100808E10);
  SFProgressContinuation.task.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003C11F8;
  v2 = v0[4];
  v3 = v0[2];

  return SFProgressTask.finalValue.getter(v3, v2);
}

uint64_t sub_1003C11F8()
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
    v7 = sub_1003C1380;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003C1380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C13E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C1448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_100975658, &qword_1007F8A40);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003C1550, v6, 0);
}

uint64_t sub_1003C1550()
{
  sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  SFProgressContinuation.task.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003C1614;
  v2 = v0[4];
  v3 = v0[2];

  return SFProgressTask.finalValue.getter(v3, v2);
}

uint64_t sub_1003C1614()
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
    v7 = sub_1003C43BC;
  }

  else
  {
    v7 = sub_1003C43B4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003C179C()
{
  v0 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003C3718(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, enum case for SFAirDropSend.Failure.cancelled(_:), v0);
  sub_10028088C(&qword_100976900, &unk_1007FD250);
  SFProgressTask.cancel(_:)();
}

void *sub_1003C188C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, result + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log, v2);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Accepted intervention via permission request", v10, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1003C1A14(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v53 = &v52 - v11;
  __chkstk_darwin(v10);
  v54 = &v52 - v12;
  v13 = type metadata accessor for SFAirDrop.TransferType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropSend.Request.type.getter();
  v17 = SFAirDrop.TransferType.isOnlyExchange.getter();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    return result;
  }

  v52 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints;

  CurrentValueSubject.value.getter();

  v20 = v56;
  __chkstk_darwin(v19);
  *(&v52 - 2) = a1;
  sub_1002CC594(sub_1003C2904, v20, v4);

  v21 = v6;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005508(v4, &qword_1009763E0, &qword_1007F95D0);
    v22 = a1;
LABEL_8:
    sub_1003C36B0(v22, v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v21;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56 = v39;
      *v38 = 136315138;
      v40 = sub_10032DA30();
      v42 = v41;
      sub_1003C41CC(v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v43 = sub_10000C4E4(v40, v42, &v56);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Adding connectable endpoint to runner endpoints %s", v38, 0xCu);
      sub_10000C60C(v39);

      v21 = v37;
    }

    else
    {

      sub_1003C41CC(v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    sub_10028088C(&qword_1009750D0, &qword_1007FE490);
    v44 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1007F5670;
    sub_1003C36B0(v22, v45 + v44, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v46 = sub_100292E1C(v45);
    swift_setDeallocating();
    sub_1003C41CC(v45 + v44, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_deallocClassInstance();

    CurrentValueSubject.value.getter();

    v47 = v56;

    v55 = sub_1006947E0(v46, v47);
    CurrentValueSubject.send(_:)();
  }

  v23 = v54;
  sub_10000ED78(v4, v54, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v24 = sub_10032FEAC();
  v22 = a1;
  if (sub_10032FEAC() >= v24)
  {
    sub_1003C41CC(v23, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_8;
  }

  v25 = v53;
  sub_1003C36B0(a1, v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v25;
    v30 = swift_slowAlloc();
    v56 = v30;
    *v28 = 136315138;
    v31 = sub_10032DA30();
    v52 = v22;
    v33 = v32;
    sub_1003C41CC(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v34 = sub_10000C4E4(v31, v33, &v56);
    v22 = v52;

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Adding connectable endpoint to backup endpoints %s", v28, 0xCu);
    sub_10000C60C(v30);
  }

  else
  {

    sub_1003C41CC(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  sub_10028088C(&qword_1009750D0, &qword_1007FE490);
  v48 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007F5670;
  sub_1003C36B0(v22, v49 + v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v50 = sub_100292E1C(v49);
  swift_setDeallocating();
  sub_1003C41CC(v49 + v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
  swift_deallocClassInstance();

  CurrentValueSubject.value.getter();

  v51 = v56;

  v55 = sub_1006947E0(v50, v51);
  CurrentValueSubject.send(_:)();

  return sub_1003C41CC(v23, type metadata accessor for SDAirDropDiscoveredEndpoint);
}

uint64_t sub_1003C2210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  sub_1003C36B0(a1, &v38 - v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_1003C41CC(v18, v24);
    device_id = 0;
    v23 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10000ED78(v18, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v25 = &v6[*(v4 + 28)];
      device_id = *v25;
      v23 = v25[1];

      v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v27 = v6;
    }

    else
    {
      sub_10000ED78(v18, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
        goto LABEL_41;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        device_id = String.init(cString:)();
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v27 = v12;
    }

    sub_1003C41CC(v27, v26);
  }

  sub_1003C36B0(a2, v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v28 = swift_getEnumCaseMultiPayload();
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v32 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_1003C41CC(v16, v32);
    v29 = 0;
    v31 = 0;
    if (!v23)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (v28)
  {
    sub_10000ED78(v16, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v33 = &v6[*(v4 + 28)];
    v29 = *v33;
    v31 = v33[1];

    v34 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v35 = v6;
    goto LABEL_34;
  }

  sub_10000ED78(v16, v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v29 = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (v29)
    {
      v29 = String.init(cString:)();
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v34 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v35 = v10;
LABEL_34:
    sub_1003C41CC(v35, v34);
    if (!v23)
    {
LABEL_35:
      if (!v31)
      {
        v37 = 1;
        return v37 & 1;
      }

      v37 = 0;
LABEL_37:

      return v37 & 1;
    }

LABEL_24:
    if (v31)
    {
      if (device_id == v29 && v23 == v31)
      {

        v37 = 1;
      }

      else
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v37 = 0;
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1003C267C()
{

  return sub_100005508(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner____lazy_storage___senderContact, &qword_10097B1A0, &qword_1007FE498);
}

void sub_1003C27D8(uint64_t a1)
{
  sub_1003C28A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003C28A0(uint64_t a1)
{
  if (!qword_10097B190)
  {
    sub_100280938(&qword_10097B198, &qword_1007FE450);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097B190);
    }
  }
}

unint64_t *sub_1003C2924(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1003C2C5C(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

id sub_1003C29BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1003C2A08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003C2A28, 0, 0);
}

uint64_t sub_1003C2A28()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + *(sub_10028088C(&qword_10097B1F0, &qword_1007FE568) + 52));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v4 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
  *v3 = v0;
  v3[1] = sub_1003C2B0C;

  return Task.value.getter(v0 + 48, v2, &type metadata for Bool, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003C2B0C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1003C2C44;
  }

  else
  {
    v2 = sub_1003C2C20;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1003C2C5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v19 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1006E375C(a1, a2, v19, a3);
        return;
      }
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
      goto LABEL_15;
    }

    v12 = *(a3 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_1003C2DB4(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v25 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v25;
  v9 = a2;
  v28 = v9;
  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24[1] = v24;
    v24[2] = v3;
    __chkstk_darwin(v9);
    v26 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v8);
    v27 = 0;
    v3 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v8 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v16 = v13 | (v3 << 6);
      v17 = *(*(a1 + 48) + 8 * v16);
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_1006E375C(v26, v25, v27, a1);

          return v20;
        }
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        goto LABEL_16;
      }

      v15 = *(a1 + 56 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v28;
  v20 = sub_1003C2924(v22, v25, a1, v23);

  return v20;
}

Swift::Int sub_1003C3038(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1003C2DB4(a1, a2);
  }

  v4 = a2;
  __CocoaSet.makeIterator()();
  while (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    if (static NSObject.== infix(_:_:)())
    {
    }

    else
    {
      v5 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v5)
      {
        sub_100471EC4(v5 + 1);
      }

      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
      v7 = &_swiftEmptySetSingleton + 56;
      v8 = -1 << *(&_swiftEmptySetSingleton + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
      {
        v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 0;
        v13 = (63 - v8) >> 6;
        do
        {
          if (++v10 == v13 && (v12 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v14 = v10 == v13;
          if (v10 == v13)
          {
            v10 = 0;
          }

          v12 |= v14;
          v15 = *&v7[8 * v10];
        }

        while (v15 == -1);
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
      }

      *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v16;
      ++*(&_swiftEmptySetSingleton + 2);
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1003C3240(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_100012854(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_1002D0A44();
      }
    }

    else
    {
      sub_100575784(v29, v42 & 1);
      v31 = sub_100012854(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100027D64(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}