uint64_t sub_1003AE7C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AE828()
{
  v1 = v0[196];
  v15 = v0[195];
  v2 = v0[190];
  v3 = v0[184];
  v4 = type metadata accessor for SharingCircleKeyManager();
  v0[198] = v4;
  v5 = swift_allocObject();
  v0[199] = v5;

  swift_defaultActor_initialize();
  v0[200] = type metadata accessor for KeyDropInterface();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 112) = v6;
  *(v5 + 120) = v2;
  sub_10001F280(v3, (v0 + 26));
  v7 = v0[29];
  v8 = sub_10015049C((v0 + 26), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  v11 = *v10;

  v0[201] = sub_1003AB3B8(v12, v2, v11, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 26);

  v0[144] = v15;
  v0[145] = &off_10164F7C0;
  v0[141] = v1;
  v0[124] = v4;
  v0[125] = &off_10164E4F0;
  v0[121] = v5;
  sub_10001F280(v3, (v0 + 66));

  v13 = swift_task_alloc();
  v0[202] = v13;
  *v13 = v0;
  v13[1] = sub_1003AEA68;

  return daemon.getter();
}

uint64_t sub_1003AEA68(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[203] = a1;

  v4 = swift_task_alloc();
  v2[204] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[205] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  v2[206] = v6;
  *v4 = v3;
  v4[1] = sub_1003AEC24;
  v7 = v2[189];
  v8 = v2[188];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003AEC24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1656) = v1;

  if (v1)
  {
    v5 = sub_1003AF1D4;
  }

  else
  {

    *(v4 + 1664) = a1;
    v5 = sub_1003AEDC4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003AED54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AEDC4()
{
  v1 = v0[208];
  v2 = v0[201];
  v3 = v0[200];
  v0[39] = v0[205];
  v0[40] = &off_10164F068;
  v0[36] = v1;
  v4 = type metadata accessor for ShareKeysDownloadUseCase();
  v0[209] = v4;
  v0[179] = v4;
  v0[180] = &off_1016344E0;
  v0[176] = v2;
  v5 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v0[5] = v3;
  v0[6] = &off_101660C48;
  v0[7] = &off_10162BCD8;
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[210] = v6;
  *v6 = v0;
  v6[1] = sub_1003AEEE0;

  return daemon.getter();
}

uint64_t sub_1003AEEE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1688) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1696) = v5;
  v6 = type metadata accessor for LegacyServiceContainer();
  v7 = sub_100019420(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v5 = v4;
  v5[1] = sub_1003AF094;
  v8 = *(v2 + 1512);
  v9 = *(v2 + 1504);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003AF094(uint64_t a1)
{
  v4 = *v2;
  v4[213] = a1;
  v4[214] = v1;

  if (v1)
  {

    v4[224] = v1;
    v5 = sub_1003B013C;
    v6 = 0;
  }

  else
  {
    v5 = sub_1003AF288;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003AF1D4()
{

  sub_100007BAC(v0 + 66);

  sub_100007BAC(v0 + 121);
  sub_100007BAC(v0 + 141);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003AF288()
{
  v1 = v0[214];
  sub_10001B108();
  v0[215] = v2;
  v0[216] = v1;
  sub_100019420(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_1003B00C0;
  }

  else
  {
    v5 = sub_1003AF364;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003AF364()
{

  return _swift_task_switch(sub_1003AF3D8, 0, 0);
}

uint64_t sub_1003AF3D8()
{
  v53 = *(v0 + 1720);
  v66 = *(v0 + 1640);
  v67 = *(v0 + 1672);
  v55 = *(v0 + 1600);
  v64 = *(v0 + 1592);
  v68 = *(v0 + 1584);
  v63 = *(v0 + 1568);
  v65 = *(v0 + 1560);
  v62 = *(v0 + 1520);
  v1 = *(v0 + 1152);
  sub_10015049C(v0 + 1128, v1);
  v2 = *(v1 - 8);
  v61 = swift_task_alloc();
  (*(v2 + 16))();
  v3 = *(v0 + 992);
  sub_10015049C(v0 + 968, v3);
  v4 = *(v3 - 8);
  v60 = swift_task_alloc();
  (*(v4 + 16))();
  v5 = *(v0 + 552);
  sub_10015049C(v0 + 528, v5);
  v6 = *(v5 - 8);
  v59 = swift_task_alloc();
  (*(v6 + 16))();
  v7 = *(v0 + 312);
  sub_10015049C(v0 + 288, v7);
  v8 = *(v7 - 8);
  v58 = swift_task_alloc();
  (*(v8 + 16))();
  v9 = *(v0 + 1432);
  sub_10015049C(v0 + 1408, v9);
  v10 = *(v9 - 8);
  v57 = swift_task_alloc();
  (*(v10 + 16))();
  v11 = *(v0 + 40);
  sub_10015049C(v0 + 16, v11);
  v12 = *(v11 - 8);
  v56 = swift_task_alloc();
  (*(v12 + 16))();
  v13 = *v61;
  v14 = *v60;
  v15 = *v59;
  v16 = *v58;
  v17 = *v57;
  v18 = *v56;
  *(v0 + 352) = v65;
  *(v0 + 360) = &off_10164F7C0;
  *(v0 + 328) = v13;
  *(v0 + 392) = v68;
  *(v0 + 400) = &off_10164E4F0;
  *(v0 + 368) = v14;
  v52 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 432) = v52;
  *(v0 + 440) = &off_1016634E8;
  *(v0 + 408) = v15;
  *(v0 + 472) = v66;
  *(v0 + 480) = &off_10164F068;
  *(v0 + 448) = v16;
  *(v0 + 512) = v67;
  *(v0 + 520) = &off_1016344E0;
  *(v0 + 488) = v17;
  *(v0 + 184) = v55;
  *(v0 + 192) = &off_101660C48;
  *(v0 + 200) = &off_10162BCD8;
  *(v0 + 160) = v18;
  v51 = type metadata accessor for BeaconManagerService(0);
  *(v0 + 592) = v51;
  *(v0 + 600) = &off_101622B80;
  *(v0 + 568) = v53;
  *(v0 + 1736) = type metadata accessor for ShareAcceptUseCase();
  v19 = swift_allocObject();
  *(v0 + 1744) = v19;
  v20 = sub_10015049C(v0 + 328, v65);
  v21 = *(v65 - 8);
  *(v0 + 1752) = v21;
  v22 = v21;
  v54 = swift_task_alloc();
  (*(v22 + 16))(v54, v20, v65);
  v23 = *(v0 + 392);
  v24 = sub_10015049C(v0 + 368, v23);
  v25 = *(v23 - 8);
  v50 = swift_task_alloc();
  (*(v25 + 16))(v50, v24, v23);
  v26 = *(v0 + 432);
  v27 = sub_10015049C(v0 + 408, v26);
  v28 = *(v26 - 8);
  v29 = swift_task_alloc();
  (*(v28 + 16))(v29, v27, v26);
  v30 = *(v0 + 472);
  v31 = sub_10015049C(v0 + 448, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  v34 = *(v0 + 512);
  v35 = sub_10015049C(v0 + 488, v34);
  v36 = *(v34 - 8);
  v37 = swift_task_alloc();
  (*(v36 + 16))(v37, v35, v34);
  v38 = *(v0 + 592);
  v39 = sub_10015049C(v0 + 568, v38);
  v40 = *(v38 - 8);
  v41 = swift_task_alloc();
  (*(v40 + 16))(v41, v39, v38);
  v42 = *v54;
  v43 = *v50;
  v44 = *v29;
  v45 = *v33;
  v46 = *v37;
  v47 = *v41;
  *(v0 + 632) = v65;
  *(v0 + 640) = &off_10164F7C0;
  *(v0 + 608) = v42;
  *(v0 + 672) = v68;
  *(v0 + 680) = &off_10164E4F0;
  *(v0 + 648) = v43;
  *(v0 + 712) = v52;
  *(v0 + 720) = &off_1016634E8;
  *(v0 + 688) = v44;
  *(v0 + 752) = v66;
  *(v0 + 760) = &off_10164F068;
  *(v0 + 728) = v45;
  *(v0 + 792) = v67;
  *(v0 + 800) = &off_1016344E0;
  *(v0 + 768) = v46;
  *(v0 + 832) = v51;
  *(v0 + 840) = &off_101622B80;
  *(v0 + 808) = v47;

  swift_defaultActor_initialize();
  *(v19 + 408) = _swiftEmptyDictionarySingleton;
  *(v19 + 112) = v62;
  sub_10000A748((v0 + 608), v19 + 120);
  sub_10000A748((v0 + 648), v19 + 160);
  sub_10000A748((v0 + 688), v19 + 200);
  sub_10000A748((v0 + 728), v19 + 240);
  sub_10000A748((v0 + 768), v19 + 280);
  sub_1000BB3F0((v0 + 160), (v19 + 320));
  sub_10000A748((v0 + 808), v19 + 368);
  sub_100007BAC((v0 + 568));

  sub_100007BAC((v0 + 488));

  sub_100007BAC((v0 + 448));

  sub_100007BAC((v0 + 408));

  sub_100007BAC((v0 + 368));

  sub_100007BAC((v0 + 328));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 1408));

  sub_100007BAC((v0 + 288));

  sub_100007BAC((v0 + 528));

  sub_100007BAC((v0 + 968));

  sub_100007BAC((v0 + 1128));

  *(v0 + 872) = v65;
  *(v0 + 880) = &off_10164F7C0;
  *(v0 + 848) = v63;
  *(v0 + 912) = v68;
  *(v0 + 920) = &off_10164E4F0;
  *(v0 + 888) = v64;
  v48 = swift_task_alloc();
  *(v0 + 1760) = v48;
  *v48 = v0;
  v48[1] = sub_1003AFDF0;

  return daemon.getter();
}

uint64_t sub_1003AFDF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[221] = a1;

  v4 = swift_task_alloc();
  v2[222] = v4;
  *v4 = v3;
  v4[1] = sub_1003AFF7C;
  v5 = v2[206];
  v6 = v2[205];
  v7 = v2[189];
  v8 = v2[188];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_1003AFF7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1784) = v1;

  if (v1)
  {
    v5 = sub_1003B05DC;
  }

  else
  {
    *(v4 + 1800) = a1;
    v5 = sub_1003B0200;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B00C0()
{

  *(v0 + 1792) = *(v0 + 1728);

  return _swift_task_switch(sub_1003B013C, 0, 0);
}

uint64_t sub_1003B013C()
{
  sub_100007BAC(v0 + 66);

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 176);
  sub_100007BAC(v0 + 36);
  sub_100007BAC(v0 + 121);
  sub_100007BAC(v0 + 141);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003B0200()
{
  v1 = v0[225];
  v2 = v0[200];
  v0[119] = v0[205];
  v0[120] = &off_10164F068;
  v0[116] = v1;
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v0[17] = v2;
  v0[18] = &off_101660C48;
  v0[19] = &off_10162BCD8;
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[226] = v4;
  *v4 = v0;
  v4[1] = sub_1003B02E8;

  return daemon.getter();
}

uint64_t sub_1003B02E8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1816) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1824) = v5;
  v6 = type metadata accessor for PeerTrustService();
  v7 = sub_100019420(&qword_1016B1190, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v5 = v4;
  v5[1] = sub_1003B049C;
  v8 = *(v2 + 1512);
  v9 = *(v2 + 1504);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003B049C(uint64_t a1)
{
  v3 = *v2;
  v3[181] = v2;
  v3[182] = a1;
  v3[183] = v1;
  v3[229] = v1;

  if (v1)
  {
    v4 = sub_1003B0EA4;
  }

  else
  {
    v4 = sub_1003B0668;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B05DC()
{

  sub_100007BAC(v0 + 111);
  sub_100007BAC(v0 + 106);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003B0668()
{
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 1456);
  v43 = *(v0 + 1752);
  v42 = *(v0 + 1744);
  v56 = *(v0 + 1672);
  v57 = *(v0 + 1736);
  v1 = *(v0 + 1640);
  v41 = *(v0 + 1608);
  v46 = *(v0 + 1600);
  v2 = *(v0 + 1584);
  v44 = v2;
  v45 = v1;
  v55 = *(v0 + 1560);
  v52 = qword_10177B2E8;
  v53 = *(v0 + 1520);
  v3 = *(v0 + 872);
  sub_10015049C(v0 + 848, v3);
  v4 = *(v3 - 8);
  v51 = swift_task_alloc();
  (*(v4 + 16))();
  v5 = *(v0 + 912);
  sub_10015049C(v0 + 888, v5);
  v6 = *(v5 - 8);
  v50 = swift_task_alloc();
  (*(v6 + 16))();
  v7 = *(v0 + 952);
  sub_10015049C(v0 + 928, v7);
  v8 = *(v7 - 8);
  v49 = swift_task_alloc();
  (*(v8 + 16))();
  v9 = *(v0 + 136);
  sub_10015049C(v0 + 112, v9);
  v10 = *(v9 - 8);
  v48 = swift_task_alloc();
  (*(v10 + 16))();
  v11 = *v51;
  v12 = *v50;
  v13 = *v49;
  v14 = *v48;
  *(v0 + 1032) = v55;
  *(v0 + 1040) = &off_10164F7C0;
  *(v0 + 1008) = v11;
  *(v0 + 1072) = v2;
  *(v0 + 1080) = &off_10164E4F0;
  *(v0 + 1048) = v12;
  *(v0 + 1112) = v1;
  *(v0 + 1120) = &off_10164F068;
  *(v0 + 1088) = v13;
  *(v0 + 88) = v46;
  *(v0 + 96) = &off_101660C48;
  *(v0 + 104) = &off_10162BCD8;
  *(v0 + 64) = v14;
  v47 = sub_100019420(&qword_10169EF00, type metadata accessor for PeerTrustService, &unk_1013EBCB8);
  *(v0 + 1192) = v56;
  *(v0 + 1200) = &off_1016344E0;
  *(v0 + 1168) = v41;
  *(v0 + 1232) = v57;
  *(v0 + 1240) = &off_10160F130;
  *(v0 + 1208) = v42;
  type metadata accessor for ShareCreateUseCase();
  v15 = swift_allocObject();
  v16 = sub_10015049C(v0 + 1008, v55);
  v17 = swift_task_alloc();
  (*(v43 + 16))(v17, v16, v55);
  v18 = *(v0 + 1072);
  v19 = sub_10015049C(v0 + 1048, v18);
  v20 = *(v18 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v18);
  v22 = *(v0 + 1112);
  v23 = sub_10015049C(v0 + 1088, v22);
  v24 = *(v22 - 8);
  v25 = swift_task_alloc();
  (*(v24 + 16))(v25, v23, v22);
  v26 = *(v0 + 1192);
  v27 = sub_10015049C(v0 + 1168, v26);
  v28 = *(v26 - 8);
  v29 = swift_task_alloc();
  (*(v28 + 16))(v29, v27, v26);
  v30 = *(v0 + 1232);
  v31 = sub_10015049C(v0 + 1208, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  v34 = *v17;
  v35 = *v21;
  v36 = *v25;
  v37 = *v29;
  v38 = *v33;
  *(v0 + 1272) = v55;
  *(v0 + 1280) = &off_10164F7C0;
  *(v0 + 1248) = v34;
  *(v0 + 1312) = v44;
  *(v0 + 1320) = &off_10164E4F0;
  *(v0 + 1288) = v35;
  *(v0 + 1352) = v45;
  *(v0 + 1360) = &off_10164F068;
  *(v0 + 1328) = v36;
  *(v0 + 1392) = v56;
  *(v0 + 1400) = &off_1016344E0;
  *(v0 + 1368) = v37;
  *(v0 + 272) = v57;
  *(v0 + 280) = &off_10160F130;
  *(v0 + 248) = v38;

  swift_defaultActor_initialize();
  *(v15 + 384) = _swiftEmptyDictionarySingleton;
  sub_1000BB3F0((v0 + 64), (v15 + 112));
  sub_10000A748((v0 + 1288), v15 + 248);
  *(v15 + 160) = v53;
  sub_10000A748((v0 + 1248), v15 + 168);
  sub_10000A748((v0 + 1328), v15 + 208);
  *(v15 + 288) = v54;
  *(v15 + 296) = v47;
  sub_10000A748((v0 + 1368), v15 + 304);
  sub_10000A748((v0 + 248), v15 + 344);
  *(v15 + 392) = v52;
  sub_100007BAC((v0 + 1208));

  sub_100007BAC((v0 + 1168));

  sub_100007BAC((v0 + 1088));

  sub_100007BAC((v0 + 1048));

  sub_100007BAC((v0 + 1008));

  sub_100007BAC((v0 + 112));

  sub_100007BAC((v0 + 928));

  sub_100007BAC((v0 + 888));

  sub_100007BAC((v0 + 848));

  v39 = *(v0 + 8);

  return v39(v15);
}

uint64_t sub_1003B0EA4()
{

  sub_100007BAC(v0 + 14);
  sub_100007BAC(v0 + 116);
  sub_100007BAC(v0 + 111);
  sub_100007BAC(v0 + 106);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003B0F40(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 616) = a3;
  *(v3 + 344) = a1;
  *(v3 + 352) = a2;
  v4 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  *(v3 + 360) = v4;
  *(v3 + 368) = *(v4 + 64);
  *(v3 + 376) = swift_task_alloc();
  v5 = *(type metadata accessor for OwnerPeerTrust(0) - 8);
  *(v3 + 384) = v5;
  *(v3 + 392) = *(v5 + 64);
  *(v3 + 400) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 408) = v6;
  *v6 = v3;
  v6[1] = sub_1003B1098;

  return daemon.getter();
}

uint64_t sub_1003B1098(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[52] = a1;

  v3 = swift_task_alloc();
  v2[53] = v3;
  v4 = type metadata accessor for Daemon();
  v2[54] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[55] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B1278;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B1278(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_1003CC2B8;
  }

  else
  {

    v4 = sub_1003B1394;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B1394()
{
  v1 = v0[56];
  v0[58] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[59] = v2;

  swift_defaultActor_initialize();
  v0[60] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_1003B1488;

  return daemon.getter();
}

uint64_t sub_1003B1488(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[62] = a1;

  v4 = swift_task_alloc();
  v2[63] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[64] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003B1640;
  v7 = v2[55];
  v8 = v2[54];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B1640(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = sub_1003CC308;
  }

  else
  {

    *(v4 + 528) = a1;
    v5 = sub_1003B1770;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B1770()
{
  v1 = v0[66];
  v0[11] = v0[64];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[67] = v2;
  *v2 = v0;
  v2[1] = sub_1003B1818;

  return daemon.getter();
}

uint64_t sub_1003B1818(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[68] = a1;

  v4 = swift_task_alloc();
  v2[69] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[70] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003B19D0;
  v7 = v2[55];
  v8 = v2[54];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B19D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v5 = sub_1003CC2D8;
  }

  else
  {

    *(v4 + 576) = a1;
    v5 = sub_1003B1B00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B1B00()
{
  v1 = *(v0 + 560);
  v34 = *(v0 + 576);
  v2 = *(v0 + 512);
  v3 = *(v0 + 480);
  v37 = *(v0 + 464);
  v39 = *(v0 + 472);
  v35 = *(v0 + 448);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v36 = swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *v36;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v7;
  *(v0 + 144) = v34;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v37;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v39;
  type metadata accessor for ShareStopUseCase();
  v8 = swift_allocObject();
  *(v0 + 584) = v8;
  v9 = sub_10015049C(v0 + 104, v2);
  v33 = swift_task_alloc();
  (v6)(v33, v9, v2);
  v10 = *(v0 + 168);
  v11 = sub_10015049C(v0 + 144, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v14 = *(v0 + 208);
  v15 = sub_10015049C(v0 + 184, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *v13;
  v19 = *v17;
  *(v0 + 224) = *v33;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v18;
  *(v0 + 328) = v37;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v19;

  swift_defaultActor_initialize();
  *(v8 + 112) = v35;
  sub_10000A748((v0 + 224), v8 + 120);
  sub_10000A748((v0 + 264), v8 + 160);
  sub_1000BB3F0((v0 + 16), (v8 + 200));
  sub_10000A748((v0 + 304), v8 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 392);
  v20 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  v24 = *(v0 + 360);
  v25 = *(v0 + 368);
  v26 = *(v0 + 616);
  v27 = *(v0 + 352);
  sub_10002FDC4(*(v0 + 344), v20, type metadata accessor for OwnerPeerTrust);
  sub_10002FDC4(v27, v22, type metadata accessor for OwnerSharingCircle);
  v28 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v29 = (v21 + *(v24 + 80) + v28) & ~*(v24 + 80);
  v30 = swift_allocObject();
  *(v0 + 592) = v30;
  *(v30 + 16) = v8;
  sub_1003CBBBC(v20, v30 + v28, type metadata accessor for OwnerPeerTrust);
  sub_1003CBBBC(v22, v30 + v29, type metadata accessor for OwnerSharingCircle);
  *(v30 + v29 + v25) = v26;
  v38 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v31 = swift_task_alloc();
  *(v0 + 600) = v31;
  *v31 = v0;
  v31[1] = sub_1003B205C;

  return v38(&unk_10139FCB8, v30);
}

uint64_t sub_1003B205C()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_1003CC2BC;
  }

  else
  {
    v2 = sub_1003CC314;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B218C(uint64_t a1, char a2)
{
  *(v2 + 272) = a2;
  *(v2 + 56) = a1;
  v3 = type metadata accessor for UUID();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 + 64);
  *(v2 + 88) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 96) = v5;
  *v5 = v2;
  v5[1] = sub_1003B2288;

  return daemon.getter();
}

uint64_t sub_1003B2288(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[16] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B2468;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B2468(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003CC2F0, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[19] = v4;
    *v4 = v3;
    v4[1] = sub_1003B25DC;

    return daemon.getter();
  }
}

uint64_t sub_1003B25DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[20] = a1;

  v4 = swift_task_alloc();
  v2[21] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[22] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003B2794;
  v7 = v2[16];
  v8 = v2[15];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B2794(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1003CC2EC;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_1003B28C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B28C4()
{
  v1 = v0[24];
  v0[5] = v0[22];
  v0[6] = &off_10164F068;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_1003B296C;

  return daemon.getter();
}

uint64_t sub_1003B296C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 208) = a1;

  v5 = swift_task_alloc();
  *(v3 + 216) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_1003B2B20;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003B2B20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1003CC31C;
  }

  else
  {

    *(v4 + 232) = a1;
    v5 = sub_1003B2C50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B2C50()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = sub_10015049C(v0 + 16, v2);
  v5 = *(v2 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v2);
  v7 = sub_1003AB5DC(v3, *v6, v1);
  *(v0 + 240) = v7;
  sub_100007BAC((v0 + 16));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 272);
  (*(v11 + 16))(v8, *(v0 + 56), v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = v13 + v9;
  v15 = swift_allocObject();
  *(v0 + 248) = v15;
  *(v15 + 16) = v7;
  (*(v11 + 32))(v15 + v13, v8, v10);
  *(v15 + v14) = v12;
  v18 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v16 = swift_task_alloc();
  *(v0 + 256) = v16;
  *v16 = v0;
  v16[1] = sub_1003B2E98;

  return v18(&unk_10139FBC8, v15);
}

uint64_t sub_1003B2E98()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1003CC2F4;
  }

  else
  {
    v2 = sub_1003CC2B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B2FC8(uint64_t a1, uint64_t a2)
{
  v2[105] = a2;
  v2[104] = a1;
  v3 = type metadata accessor for UUID();
  v2[106] = v3;
  v4 = *(v3 - 8);
  v2[107] = v4;
  v2[108] = *(v4 + 64);
  v2[109] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[110] = v5;
  *v5 = v2;
  v5[1] = sub_1003B30C4;

  return daemon.getter();
}

uint64_t sub_1003B30C4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[111] = a1;

  v3 = swift_task_alloc();
  v2[112] = v3;
  v4 = type metadata accessor for Daemon();
  v2[113] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[114] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B32A4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B32A4(uint64_t a1)
{
  v3 = *v2;
  v3[115] = a1;
  v3[116] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003B36F4, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[117] = v4;
    *v4 = v3;
    v4[1] = sub_1003B341C;

    return daemon.getter();
  }
}

uint64_t sub_1003B341C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[118] = a1;

  v4 = swift_task_alloc();
  v2[119] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[120] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003B35D4;
  v7 = v2[114];
  v8 = v2[113];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B35D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 968) = a1;
  *(v3 + 976) = v1;

  if (v1)
  {
    v4 = sub_1003B3C80;
  }

  else
  {

    v4 = sub_1003B3760;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B36F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B3760()
{
  v1 = v0[121];
  v15 = v0[120];
  v2 = v0[115];
  v3 = v0[105];
  v4 = type metadata accessor for SharingCircleKeyManager();
  v0[123] = v4;
  v5 = swift_allocObject();
  v0[124] = v5;

  swift_defaultActor_initialize();
  v0[125] = type metadata accessor for KeyDropInterface();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 112) = v6;
  *(v5 + 120) = v2;
  sub_10001F280(v3, (v0 + 14));
  v7 = v0[17];
  v8 = sub_10015049C((v0 + 14), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  v11 = *v10;

  v0[126] = sub_1003AB3B8(v12, v2, v11, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 14);

  v0[22] = v15;
  v0[23] = &off_10164F7C0;
  v0[19] = v1;
  v0[27] = v4;
  v0[28] = &off_10164E4F0;
  v0[24] = v5;
  sub_10001F280(v3, (v0 + 29));

  v13 = swift_task_alloc();
  v0[127] = v13;
  *v13 = v0;
  v13[1] = sub_1003B3998;

  return daemon.getter();
}

uint64_t sub_1003B3998(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[128] = a1;

  v4 = swift_task_alloc();
  v2[129] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[130] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003B3B50;
  v7 = v2[114];
  v8 = v2[113];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B3B50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1048) = v1;

  if (v1)
  {
    v5 = sub_1003B4104;
  }

  else
  {

    *(v4 + 1056) = a1;
    v5 = sub_1003B3CF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B3C80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B3CF8()
{
  v1 = v0[132];
  v2 = v0[126];
  v3 = v0[125];
  v0[37] = v0[130];
  v0[38] = &off_10164F068;
  v0[34] = v1;
  v4 = type metadata accessor for ShareKeysDownloadUseCase();
  v0[133] = v4;
  v0[42] = v4;
  v0[43] = &off_1016344E0;
  v0[39] = v2;
  v5 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v0[5] = v3;
  v0[6] = &off_101660C48;
  v0[7] = &off_10162BCD8;
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[134] = v6;
  *v6 = v0;
  v6[1] = sub_1003B3E10;

  return daemon.getter();
}

uint64_t sub_1003B3E10(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1080) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1088) = v5;
  v6 = type metadata accessor for LegacyServiceContainer();
  v7 = sub_100019420(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v5 = v4;
  v5[1] = sub_1003B3FC4;
  v8 = *(v2 + 912);
  v9 = *(v2 + 904);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003B3FC4(uint64_t a1)
{
  v4 = *v2;
  v4[137] = a1;
  v4[138] = v1;

  if (v1)
  {

    v4[145] = v1;
    v5 = sub_1003B4F6C;
    v6 = 0;
  }

  else
  {
    v5 = sub_1003B41C0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003B4104()
{

  sub_100007BAC(v0 + 29);

  sub_100007BAC(v0 + 24);
  sub_100007BAC(v0 + 19);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003B41C0()
{
  v1 = v0[138];
  sub_10001B108();
  v0[139] = v2;
  v0[140] = v1;
  sub_100019420(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_1003B4EF0;
  }

  else
  {
    v5 = sub_1003B429C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003B429C()
{

  return _swift_task_switch(sub_1003B4310, 0, 0);
}

uint64_t sub_1003B4310()
{
  v1 = v0;
  v59 = *(v0 + 1112);
  v70 = *(v0 + 1040);
  v71 = *(v0 + 1064);
  v56 = *(v0 + 1000);
  v68 = *(v0 + 960);
  v69 = *(v0 + 984);
  v67 = *(v0 + 920);
  v2 = *(v0 + 176);
  sub_10015049C(v0 + 152, v2);
  v3 = *(v2 - 8);
  v66 = swift_task_alloc();
  (*(v3 + 16))();
  v4 = *(v0 + 216);
  sub_10015049C((v1 + 24), v1[27]);
  v5 = *(v4 - 8);
  v65 = swift_task_alloc();
  (*(v5 + 16))();
  v6 = *(v0 + 256);
  sub_10015049C((v1 + 29), v1[32]);
  v7 = *(v6 - 8);
  v64 = swift_task_alloc();
  (*(v7 + 16))();
  v8 = *(v0 + 296);
  sub_10015049C((v1 + 34), v1[37]);
  v9 = *(v8 - 8);
  v63 = swift_task_alloc();
  (*(v9 + 16))();
  v10 = *(v0 + 336);
  sub_10015049C((v1 + 39), v1[42]);
  v11 = *(v10 - 8);
  v62 = swift_task_alloc();
  (*(v11 + 16))();
  v12 = *(v0 + 40);
  sub_10015049C((v1 + 2), v1[5]);
  v13 = *(v12 - 8);
  v61 = swift_task_alloc();
  (*(v13 + 16))();
  v14 = *v66;
  v15 = *v65;
  v16 = *v64;
  v17 = *v63;
  v18 = *v62;
  v19 = *v61;
  *(v0 + 376) = v68;
  *(v0 + 384) = &off_10164F7C0;
  *(v0 + 352) = v14;
  *(v0 + 416) = v69;
  *(v0 + 424) = &off_10164E4F0;
  *(v0 + 392) = v15;
  v58 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 64) = v19;
  *(v0 + 456) = v58;
  *(v0 + 464) = &off_1016634E8;
  *(v0 + 432) = v16;
  *(v0 + 496) = v70;
  *(v0 + 504) = &off_10164F068;
  *(v0 + 472) = v17;
  *(v0 + 512) = v18;
  *(v0 + 536) = v71;
  *(v0 + 544) = &off_1016344E0;
  *(v0 + 88) = v56;
  *(v0 + 96) = &off_101660C48;
  *(v0 + 104) = &off_10162BCD8;
  v57 = type metadata accessor for BeaconManagerService(0);
  *(v0 + 576) = v57;
  *(v0 + 584) = &off_101622B80;
  *(v0 + 552) = v59;
  type metadata accessor for ShareAcceptUseCase();
  v20 = swift_allocObject();
  *(v0 + 1128) = v20;
  v21 = sub_10015049C(v0 + 352, v68);
  v22 = *(v68 - 8);
  v60 = swift_task_alloc();
  (*(v22 + 16))(v60, v21, v68);
  v23 = *(v0 + 416);
  v24 = sub_10015049C((v1 + 49), v1[52]);
  v25 = *(v23 - 8);
  v55 = swift_task_alloc();
  (*(v25 + 16))(v55, v24, v23);
  v26 = *(v0 + 456);
  v27 = sub_10015049C((v1 + 54), v1[57]);
  v28 = *(v26 - 8);
  v29 = swift_task_alloc();
  (*(v28 + 16))(v29, v27, v26);
  v30 = *(v0 + 496);
  v31 = sub_10015049C((v1 + 59), v1[62]);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  v34 = *(v0 + 536);
  v35 = sub_10015049C((v1 + 64), v1[67]);
  v36 = *(v34 - 8);
  v37 = swift_task_alloc();
  (*(v36 + 16))(v37, v35, v34);
  v38 = *(v0 + 576);
  v39 = sub_10015049C((v1 + 69), v1[72]);
  v40 = *(v38 - 8);
  v41 = swift_task_alloc();
  (*(v40 + 16))(v41, v39, v38);
  v42 = *v60;
  v43 = *v55;
  v44 = *v29;
  v45 = *v33;
  v46 = *v37;
  v47 = *v41;
  *(v0 + 616) = v68;
  *(v0 + 624) = &off_10164F7C0;
  *(v0 + 592) = v42;
  *(v0 + 656) = v69;
  *(v0 + 664) = &off_10164E4F0;
  *(v0 + 632) = v43;
  *(v0 + 696) = v58;
  *(v0 + 704) = &off_1016634E8;
  *(v0 + 672) = v44;
  *(v0 + 736) = v70;
  *(v0 + 744) = &off_10164F068;
  *(v0 + 712) = v45;
  *(v0 + 776) = v71;
  *(v0 + 784) = &off_1016344E0;
  *(v0 + 752) = v46;
  *(v0 + 816) = v57;
  *(v0 + 824) = &off_101622B80;
  *(v0 + 792) = v47;

  swift_defaultActor_initialize();
  *(v20 + 408) = _swiftEmptyDictionarySingleton;
  *(v20 + 112) = v67;
  sub_10000A748((v0 + 592), v20 + 120);
  sub_10000A748((v0 + 632), v20 + 160);
  sub_10000A748((v0 + 672), v20 + 200);
  sub_10000A748((v0 + 712), v20 + 240);
  sub_10000A748((v0 + 752), v20 + 280);
  sub_1000BB3F0((v0 + 64), (v20 + 320));
  sub_10000A748((v0 + 792), v20 + 368);
  sub_100007BAC((v0 + 552));

  sub_100007BAC((v0 + 512));

  sub_100007BAC((v0 + 472));

  sub_100007BAC((v0 + 432));

  sub_100007BAC((v0 + 392));

  sub_100007BAC((v0 + 352));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 312));

  sub_100007BAC((v0 + 272));

  sub_100007BAC((v0 + 232));

  sub_100007BAC((v0 + 192));

  sub_100007BAC((v0 + 152));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 872);
  v49 = v1[107];
  v50 = v1[106];
  (*(v49 + 16))(v1[109], v1[104], v50);
  v51 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v52 = swift_allocObject();
  v1[142] = v52;
  *(v52 + 16) = v20;
  (*(v49 + 32))(v52 + v51, v48, v50);
  v72 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v53 = swift_task_alloc();
  v1[143] = v53;
  *v53 = v1;
  v53[1] = sub_1003B4DBC;

  return v72(&unk_10139FFF8, v52);
}

uint64_t sub_1003B4DBC()
{
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v2 = sub_1003B50E8;
  }

  else
  {
    v2 = sub_1003B5038;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B4EF0()
{

  *(v0 + 1160) = *(v0 + 1120);

  return _swift_task_switch(sub_1003B4F6C, 0, 0);
}

uint64_t sub_1003B4F6C()
{
  sub_100007BAC(v0 + 29);

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 39);
  sub_100007BAC(v0 + 34);
  sub_100007BAC(v0 + 24);
  sub_100007BAC(v0 + 19);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003B5038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B50E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B518C(uint64_t a1)
{
  *(v1 + 344) = a1;
  v2 = swift_task_alloc();
  *(v1 + 352) = v2;
  *v2 = v1;
  v2[1] = sub_1003B5220;

  return daemon.getter();
}

uint64_t sub_1003B5220(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[45] = a1;

  v3 = swift_task_alloc();
  v2[46] = v3;
  v4 = type metadata accessor for Daemon();
  v2[47] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[48] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B5400;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B5400(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1003B58F8;
  }

  else
  {

    v4 = sub_1003B551C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B551C()
{
  v1 = v0[49];
  v0[51] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[52] = v2;

  swift_defaultActor_initialize();
  v0[53] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_1003B5610;

  return daemon.getter();
}

uint64_t sub_1003B5610(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[55] = a1;

  v4 = swift_task_alloc();
  v2[56] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[57] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003B57C8;
  v7 = v2[48];
  v8 = v2[47];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B57C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v5 = sub_1003B5CEC;
  }

  else
  {

    *(v4 + 472) = a1;
    v5 = sub_1003B595C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B58F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B595C()
{
  v1 = v0[59];
  v0[11] = v0[57];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_1003B5A04;

  return daemon.getter();
}

uint64_t sub_1003B5A04(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[61] = a1;

  v4 = swift_task_alloc();
  v2[62] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[63] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003B5BBC;
  v7 = v2[48];
  v8 = v2[47];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B5BBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_1003B6330;
  }

  else
  {

    *(v4 + 520) = a1;
    v5 = sub_1003B5D68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B5CEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B5D68()
{
  v1 = *(v0 + 504);
  v25 = *(v0 + 520);
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v28 = *(v0 + 408);
  v29 = *(v0 + 416);
  v26 = *(v0 + 392);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v27 = swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *v27;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v7;
  *(v0 + 144) = v25;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v28;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v29;
  type metadata accessor for ShareStopUseCase();
  v8 = swift_allocObject();
  *(v0 + 528) = v8;
  v9 = sub_10015049C(v0 + 104, v2);
  v24 = swift_task_alloc();
  (v6)(v24, v9, v2);
  v10 = *(v0 + 168);
  v11 = sub_10015049C(v0 + 144, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v14 = *(v0 + 208);
  v15 = sub_10015049C(v0 + 184, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *v13;
  v19 = *v17;
  *(v0 + 224) = *v24;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v18;
  *(v0 + 328) = v28;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v19;

  swift_defaultActor_initialize();
  *(v8 + 112) = v26;
  sub_10000A748((v0 + 224), v8 + 120);
  sub_10000A748((v0 + 264), v8 + 160);
  sub_1000BB3F0((v0 + 16), (v8 + 200));
  sub_10000A748((v0 + 304), v8 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 344);
  v21 = swift_allocObject();
  *(v0 + 536) = v21;
  *(v21 + 16) = v8;
  *(v21 + 24) = v20;
  v30 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v22 = swift_task_alloc();
  *(v0 + 544) = v22;
  *v22 = v0;
  v22[1] = sub_1003B6214;

  return v30(&unk_10139FFE0, v21);
}

uint64_t sub_1003B6214()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1003B6430;
  }

  else
  {

    v2 = sub_1003B63B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B6330()
{

  sub_100007BAC((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B63B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B6430()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B64C0(uint64_t a1)
{
  *(v1 + 344) = a1;
  v2 = swift_task_alloc();
  *(v1 + 352) = v2;
  *v2 = v1;
  v2[1] = sub_1003B6554;

  return daemon.getter();
}

uint64_t sub_1003B6554(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[45] = a1;

  v3 = swift_task_alloc();
  v2[46] = v3;
  v4 = type metadata accessor for Daemon();
  v2[47] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[48] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B6734;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B6734(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1003CC300;
  }

  else
  {

    v4 = sub_1003B6850;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B6850()
{
  v1 = v0[49];
  v0[51] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[52] = v2;

  swift_defaultActor_initialize();
  v0[53] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_1003B6944;

  return daemon.getter();
}

uint64_t sub_1003B6944(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[55] = a1;

  v4 = swift_task_alloc();
  v2[56] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[57] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003B6AFC;
  v7 = v2[48];
  v8 = v2[47];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B6AFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v5 = sub_1003CC2DC;
  }

  else
  {

    *(v4 + 472) = a1;
    v5 = sub_1003B6C2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B6C2C()
{
  v1 = v0[59];
  v0[11] = v0[57];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_1003B6CD4;

  return daemon.getter();
}

uint64_t sub_1003B6CD4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[61] = a1;

  v4 = swift_task_alloc();
  v2[62] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[63] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003B6E8C;
  v7 = v2[48];
  v8 = v2[47];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B6E8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_1003CC320;
  }

  else
  {

    *(v4 + 520) = a1;
    v5 = sub_1003B6FBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B6FBC()
{
  v1 = *(v0 + 504);
  v25 = *(v0 + 520);
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v28 = *(v0 + 408);
  v29 = *(v0 + 416);
  v26 = *(v0 + 392);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v27 = swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *v27;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v7;
  *(v0 + 144) = v25;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v28;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v29;
  type metadata accessor for ShareStopUseCase();
  v8 = swift_allocObject();
  *(v0 + 528) = v8;
  v9 = sub_10015049C(v0 + 104, v2);
  v24 = swift_task_alloc();
  (v6)(v24, v9, v2);
  v10 = *(v0 + 168);
  v11 = sub_10015049C(v0 + 144, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v14 = *(v0 + 208);
  v15 = sub_10015049C(v0 + 184, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *v13;
  v19 = *v17;
  *(v0 + 224) = *v24;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v18;
  *(v0 + 328) = v28;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v19;

  swift_defaultActor_initialize();
  *(v8 + 112) = v26;
  sub_10000A748((v0 + 224), v8 + 120);
  sub_10000A748((v0 + 264), v8 + 160);
  sub_1000BB3F0((v0 + 16), (v8 + 200));
  sub_10000A748((v0 + 304), v8 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 344);
  v21 = swift_allocObject();
  *(v0 + 536) = v21;
  *(v21 + 16) = v8;
  *(v21 + 24) = v20;
  v30 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v22 = swift_task_alloc();
  *(v0 + 544) = v22;
  *v22 = v0;
  v22[1] = sub_1003B7468;

  return v30(&unk_10139FFB0, v21);
}

uint64_t sub_1003B7468()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1003CC30C;
  }

  else
  {

    v2 = sub_1003CC2C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B7584(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_1003B767C;

  return daemon.getter();
}

uint64_t sub_1003B767C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[16] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B785C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B785C(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003B7CB8, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[19] = v4;
    *v4 = v3;
    v4[1] = sub_1003B79D0;

    return daemon.getter();
  }
}

uint64_t sub_1003B79D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[20] = a1;

  v4 = swift_task_alloc();
  v2[21] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[22] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003B7B88;
  v7 = v2[16];
  v8 = v2[15];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B7B88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1003B80B0;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_1003B7D24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B7CB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B7D24()
{
  v1 = v0[24];
  v0[5] = v0[22];
  v0[6] = &off_10164F068;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_1003B7DCC;

  return daemon.getter();
}

uint64_t sub_1003B7DCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 208) = a1;

  v5 = swift_task_alloc();
  *(v3 + 216) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  v7 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v5 = v4;
  v5[1] = sub_1003B7F80;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003B7F80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1003B848C;
  }

  else
  {

    *(v4 + 232) = a1;
    v5 = sub_1003B8128;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B80B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B8128()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[17];
  v4 = sub_10015049C((v0 + 2), v2);
  v5 = *(v2 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v2);
  v7 = sub_1003AB5DC(v3, *v6, v1);
  v0[30] = v7;
  sub_100007BAC(v0 + 2);

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  (*(v10 + 16))(v8, v0[7], v9);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v0[31] = v12;
  *(v12 + 16) = v7;
  (*(v10 + 32))(v12 + v11, v8, v9);
  v15 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_1003B835C;

  return v15(&unk_10139FF98, v12);
}

uint64_t sub_1003B835C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1003B857C;
  }

  else
  {
    v2 = sub_1003B850C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B848C()
{

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B850C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B857C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B85E8(uint64_t a1, uint64_t a2)
{
  v2[43] = a1;
  v2[44] = a2;
  v3 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v2[45] = v3;
  v2[46] = *(v3 + 64);
  v2[47] = swift_task_alloc();
  v4 = *(type metadata accessor for OwnerPeerTrust(0) - 8);
  v2[48] = v4;
  v2[49] = *(v4 + 64);
  v2[50] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[51] = v5;
  *v5 = v2;
  v5[1] = sub_1003B873C;

  return daemon.getter();
}

uint64_t sub_1003B873C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[52] = a1;

  v3 = swift_task_alloc();
  v2[53] = v3;
  v4 = type metadata accessor for Daemon();
  v2[54] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[55] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B891C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B891C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_1003B8E14;
  }

  else
  {

    v4 = sub_1003B8A38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B8A38()
{
  v1 = v0[56];
  v0[58] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[59] = v2;

  swift_defaultActor_initialize();
  v0[60] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_1003B8B2C;

  return daemon.getter();
}

uint64_t sub_1003B8B2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[62] = a1;

  v4 = swift_task_alloc();
  v2[63] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[64] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003B8CE4;
  v7 = v2[55];
  v8 = v2[54];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B8CE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = sub_1003B921C;
  }

  else
  {

    *(v4 + 528) = a1;
    v5 = sub_1003B8E8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B8E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B8E8C()
{
  v1 = v0[66];
  v0[11] = v0[64];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[67] = v2;
  *v2 = v0;
  v2[1] = sub_1003B8F34;

  return daemon.getter();
}

uint64_t sub_1003B8F34(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[68] = a1;

  v4 = swift_task_alloc();
  v2[69] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[70] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003B90EC;
  v7 = v2[55];
  v8 = v2[54];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003B90EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v5 = sub_1003B9928;
  }

  else
  {

    *(v4 + 576) = a1;
    v5 = sub_1003B92AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B921C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B92AC()
{
  v1 = *(v0 + 560);
  v32 = *(v0 + 576);
  v2 = *(v0 + 512);
  v3 = *(v0 + 480);
  v35 = *(v0 + 464);
  v36 = *(v0 + 472);
  v33 = *(v0 + 448);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v34 = swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *v34;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v7;
  *(v0 + 144) = v32;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v35;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v36;
  type metadata accessor for ShareStopUseCase();
  v8 = swift_allocObject();
  *(v0 + 584) = v8;
  v9 = sub_10015049C(v0 + 104, v2);
  v31 = swift_task_alloc();
  (v6)(v31, v9, v2);
  v10 = *(v0 + 168);
  v11 = sub_10015049C(v0 + 144, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v14 = *(v0 + 208);
  v15 = sub_10015049C(v0 + 184, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *v13;
  v19 = *v17;
  *(v0 + 224) = *v31;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v18;
  *(v0 + 328) = v35;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v19;

  swift_defaultActor_initialize();
  *(v8 + 112) = v33;
  sub_10000A748((v0 + 224), v8 + 120);
  sub_10000A748((v0 + 264), v8 + 160);
  sub_1000BB3F0((v0 + 16), (v8 + 200));
  sub_10000A748((v0 + 304), v8 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 392);
  v20 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  v24 = *(v0 + 360);
  v25 = *(v0 + 352);
  sub_10002FDC4(*(v0 + 344), v20, type metadata accessor for OwnerPeerTrust);
  sub_10002FDC4(v25, v22, type metadata accessor for OwnerSharingCircle);
  v26 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v27 = (v21 + *(v24 + 80) + v26) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v0 + 592) = v28;
  *(v28 + 16) = v8;
  sub_1003CBBBC(v20, v28 + v26, type metadata accessor for OwnerPeerTrust);
  sub_1003CBBBC(v22, v28 + v27, type metadata accessor for OwnerSharingCircle);
  v37 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v29 = swift_task_alloc();
  *(v0 + 600) = v29;
  *v29 = v0;
  v29[1] = sub_1003B97F8;

  return v37(&unk_10139FFC8, v28);
}

uint64_t sub_1003B97F8()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_1003B9A5C;
  }

  else
  {
    v2 = sub_1003B99C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B9928()
{

  sub_100007BAC((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B99C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B9A5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B9AEC()
{
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v0[77] = swift_task_alloc();
  v0[78] = *(sub_1000BC4D4(&qword_101697700, &unk_10139FB90) - 8);
  v0[79] = swift_task_alloc();
  v0[80] = swift_task_alloc();
  v1 = type metadata accessor for UUID();
  v0[81] = v1;
  v0[82] = *(v1 - 8);
  v0[83] = swift_task_alloc();
  v0[84] = swift_task_alloc();
  v0[85] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[86] = v2;
  *v2 = v0;
  v2[1] = sub_1003B9C98;

  return daemon.getter();
}

uint64_t sub_1003B9C98(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[87] = a1;

  v3 = swift_task_alloc();
  v2[88] = v3;
  v4 = type metadata accessor for Daemon();
  v2[89] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[90] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003B9E78;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003B9E78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 728) = a1;
  *(v3 + 736) = v1;

  if (v1)
  {
    v4 = sub_1003BA374;
  }

  else
  {

    v4 = sub_1003B9F98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B9F98()
{
  v1 = v0[91];
  v0[93] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[94] = v2;

  swift_defaultActor_initialize();
  v0[95] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[96] = v4;
  *v4 = v0;
  v4[1] = sub_1003BA08C;

  return daemon.getter();
}

uint64_t sub_1003BA08C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[97] = a1;

  v4 = swift_task_alloc();
  v2[98] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[99] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003BA244;
  v7 = v2[90];
  v8 = v2[89];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003BA244(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 800) = v1;

  if (v1)
  {
    v5 = sub_1003BA7BC;
  }

  else
  {

    *(v4 + 808) = a1;
    v5 = sub_1003BA42C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BA374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BA42C()
{
  v1 = v0[101];
  v0[20] = v0[99];
  v0[21] = &off_10164F068;
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[102] = v2;
  *v2 = v0;
  v2[1] = sub_1003BA4D4;

  return daemon.getter();
}

uint64_t sub_1003BA4D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[103] = a1;

  v4 = swift_task_alloc();
  v2[104] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[105] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003BA68C;
  v7 = v2[90];
  v8 = v2[89];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003BA68C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 848) = v1;

  if (v1)
  {
    v5 = sub_1003BAE8C;
  }

  else
  {

    *(v4 + 856) = a1;
    v5 = sub_1003BA88C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BA7BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BA88C()
{
  v1 = *(v0 + 840);
  v27 = v1;
  v28 = *(v0 + 856);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v26 = *(v0 + 792);
  v29 = *(v0 + 728);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v6 = *(v0 + 160);
  sub_10015049C(v0 + 136, v6);
  v7 = *(v6 - 8);
  v30 = swift_task_alloc();
  (*(v7 + 16))();
  v8 = *v30;
  *(v0 + 200) = v26;
  *(v0 + 208) = &off_10164F068;
  *(v0 + 176) = v8;
  *(v0 + 240) = v1;
  *(v0 + 248) = &off_10164F7C0;
  *(v0 + 216) = v28;
  *(v0 + 112) = v2;
  *(v0 + 120) = &off_101660C48;
  *(v0 + 88) = v5;
  *(v0 + 128) = &off_10162BCD8;
  *(v0 + 280) = v4;
  *(v0 + 288) = &off_10164E4F0;
  *(v0 + 256) = v3;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 864) = v9;
  v10 = sub_10015049C(v0 + 176, v26);
  v11 = *(v26 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v26);
  v13 = *(v0 + 240);
  v14 = sub_10015049C(v0 + 216, v13);
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v13);
  v17 = *(v0 + 280);
  v18 = sub_10015049C(v0 + 256, v17);
  v19 = *(v17 - 8);
  v20 = swift_task_alloc();
  (*(v19 + 16))(v20, v18, v17);
  v21 = *v12;
  v22 = *v16;
  v23 = *v20;
  *(v0 + 320) = v26;
  *(v0 + 328) = &off_10164F068;
  *(v0 + 296) = v21;
  *(v0 + 360) = v27;
  *(v0 + 368) = &off_10164F7C0;
  *(v0 + 336) = v22;
  *(v0 + 400) = v4;
  *(v0 + 408) = &off_10164E4F0;
  *(v0 + 376) = v23;

  swift_defaultActor_initialize();
  *(v9 + 112) = v29;
  sub_10000A748((v0 + 296), v9 + 120);
  sub_10000A748((v0 + 336), v9 + 160);
  sub_1000BB3F0((v0 + 88), (v9 + 200));
  sub_10000A748((v0 + 376), v9 + 248);
  sub_100007BAC((v0 + 256));

  sub_100007BAC((v0 + 216));

  sub_100007BAC((v0 + 176));

  sub_100007BAC((v0 + 136));

  type metadata accessor for CheckDataIntegrityUseCase();
  swift_allocObject();
  v24 = swift_task_alloc();
  *(v0 + 872) = v24;
  *v24 = v0;
  v24[1] = sub_1003BAD04;

  return sub_100111F58();
}

uint64_t sub_1003BAD04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 880) = a1;

  if (v1)
  {
    *(v3 + 984) = v1;

    return _swift_task_switch(sub_1003BB73C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v3 + 888) = v5;
    *v5 = v4;
    v5[1] = sub_1003BAF64;

    return sub_100119784(v3 + 16);
  }
}

uint64_t sub_1003BAE8C()
{

  sub_100007BAC((v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BAF64()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 32);
  *(v3 + 904) = *(v3 + 16);
  *(v3 + 896) = v0;
  *(v3 + 920) = v4;
  *(v3 + 936) = *(v2 + 48);
  *(v3 + 944) = *(v3 + 72);

  if (v0)
  {
    v5 = sub_1003BB6CC;
    v6 = 0;
  }

  else
  {
    v7 = *(v3 + 864);

    v5 = sub_1003BB104;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003BB104()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[113];
  v0[75] = _swiftEmptyArrayStorage;
  v6 = sub_10039BA14(v5);

  sub_100008950(v6, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v7 = sub_10039BC18(v4);

  sub_100008950(v7, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v8 = sub_10039BE1C(v3);

  sub_100008950(v8, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v9 = sub_10039C020(v2);

  sub_100008950(v9, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v10 = sub_10039C224(v1);

  sub_100008950(v10, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v0[120] = v0[75];
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  v11 = Array.chunked(into:)();
  v0[121] = v11;
  v12 = *(v11 + 16);
  v0[122] = v12;
  if (!v12)
  {

    v23 = swift_task_alloc();
    v0[124] = v23;
    *v23 = v0;
    v23[1] = sub_1003BB80C;

    return daemon.getter();
  }

  v13 = v0[112];
  v0[134] = 0;
  if (!*(v11 + 16))
  {
    goto LABEL_30;
  }

  v14 = *(v11 + 32);
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v16 = (inited + 24);
  v17 = *(v14 + 16);

  if (!v17)
  {
LABEL_13:

    swift_beginAccess();
    v29 = *(inited + 16);
    if (*(v29 + 16))
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    if ((*v16 & 0xC000000000000001) != 0)
    {

      v30 = __CocoaDictionary.count.getter();

      if (v30)
      {
        goto LABEL_16;
      }
    }

    else if (*(*v16 + 16))
    {
LABEL_16:
      UUID.init()();
      swift_beginAccess();
      v31 = *v16;
      if ((v31 & 0xC000000000000001) != 0)
      {

        v32 = __CocoaDictionary.count.getter();
        if (v32)
        {
LABEL_18:
          v33 = sub_1003A8AC8(v32, 0);
          v34 = sub_1003A95D8((v0 + 57), v33 + 4, v32, v31);
          sub_1000128F8(v0[57]);
          if (v34 != v32)
          {
LABEL_31:
            __break(1u);
            return daemon.getter();
          }

          goto LABEL_22;
        }
      }

      else
      {
        v32 = *(v31 + 16);

        if (v32)
        {
          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
      v33 = _swiftEmptyArrayStorage;
LABEL_22:
      v35 = v0[77];
      (*(v0[82] + 32))(v35, v0[83], v0[81]);
      v36 = type metadata accessor for CloudKitChangeSet(0);
      *(v35 + *(v36 + 20)) = v33;
      *(v35 + *(v36 + 24)) = v29;
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
LABEL_23:
      v22 = *(v0[108] + 112);
      v0[135] = v22;
      v21 = sub_1003BC878;
      goto LABEL_24;
    }

    v37 = v0[77];

    v38 = type metadata accessor for CloudKitChangeSet(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    goto LABEL_23;
  }

  sub_10001F280(v14 + 32, (v0 + 52));
  v18 = v0[55];
  v19 = v0[56];
  v20 = sub_1000035D0(v0 + 52, v18);
  sub_100EC4898(v20, v18, v19);
  if (!v13)
  {
    sub_100007BAC(v0 + 52);
    if (v17 != 1)
    {
      v24 = v14 + 72;
      v25 = 1;
      while (v25 < *(v14 + 16))
      {
        sub_10001F280(v24, (v0 + 52));
        v26 = v0[55];
        v27 = v0[56];
        v28 = sub_1000035D0(v0 + 52, v26);
        sub_100EC4898(v28, v26, v27);
        ++v25;
        sub_100007BAC(v0 + 52);
        v24 += 40;
        if (v17 == v25)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  swift_setDeallocating();

  sub_100007BAC(v0 + 52);

  v0[133] = v13;
  v21 = sub_1003BC7A8;
  v22 = 0;
LABEL_24:

  return _swift_task_switch(v21, v22, 0);
}

uint64_t sub_1003BB6CC()
{

  *(v0 + 984) = *(v0 + 896);

  return _swift_task_switch(sub_1003BB73C, 0, 0);
}

uint64_t sub_1003BB73C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BB80C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1000) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1008) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  v7 = sub_100019420(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v5 = v4;
  v5[1] = sub_1003BB9C0;
  v8 = *(v2 + 720);
  v9 = *(v2 + 712);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003BB9C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 1016) = a1;

  if (v1)
  {
    v5 = *(v3 + 864);

    return _swift_task_switch(sub_1003BBCC0, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 1024) = v6;
    *v6 = v4;
    v6[1] = sub_1003BBB78;

    return sub_1010D55E4();
  }
}

uint64_t sub_1003BBB78()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = *(v2 + 864);

    v4 = sub_1003BC4F0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 864);
    v4 = sub_1003BC0D4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003BBCC0()
{
  v1 = v0[119];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[82];
    v4 = v0[78];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v40 = v3;
    v42 = *(v4 + 72);
    v6 = (v3 + 32);
    do
    {
      v44 = v2;
      v7 = v0[84];
      v8 = v0[81];
      v9 = v0[80];
      v10 = v0[79];
      sub_1000D2A70(v5, v9, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v9, v10, &qword_101697700, &unk_10139FB90);
      v11 = *v6;
      (*v6)(v7, v10, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_101123D4C((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[84];
      v15 = v0[81];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v11(_swiftEmptyArrayStorage + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v13, v14, v15);
      v5 += v42;
      v2 = v44 - 1;
    }

    while (v44 != 1);
  }

  v16 = v0[118];
  v17 = sub_10000954C(_swiftEmptyArrayStorage);

  v18 = *(v16 + 16);
  if (v18)
  {
    v39 = v17;
    v19 = v0[118];
    v20 = v0[82];
    v21 = v0[78];
    sub_101123D4C(0, v18, 0);
    v22 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v41 = v20;
    v43 = *(v21 + 72);
    v23 = (v20 + 32);
    do
    {
      v45 = v18;
      v24 = v0[85];
      v25 = v0[81];
      v26 = v0[80];
      v27 = v0[79];
      sub_1000D2A70(v22, v26, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v26, v27, &qword_101697700, &unk_10139FB90);
      v28 = *v23;
      (*v23)(v24, v27, v25);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_101123D4C((v29 > 1), v30 + 1, 1);
      }

      v31 = v0[85];
      v32 = v0[81];
      _swiftEmptyArrayStorage[2] = v30 + 1;
      v28(_swiftEmptyArrayStorage + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, v31, v32);
      v22 += v43;
      --v18;
    }

    while (v45 != 1);

    v17 = v39;
  }

  else
  {
  }

  v33 = sub_1003ADDE8(_swiftEmptyArrayStorage, v17);
  v0[130] = v33;

  v0[76] = v33;
  v34 = swift_task_alloc();
  v0[131] = v34;
  v35 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v36 = sub_1003BD16C();
  *v34 = v0;
  v34[1] = sub_1003BC560;
  v37 = v0[108];

  return Sequence.asyncForEach(_:)(&unk_10139FBA0, v37, v35, v36);
}

uint64_t sub_1003BC0D4()
{

  v1 = v0[119];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[82];
    v4 = v0[78];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v40 = v3;
    v42 = *(v4 + 72);
    v6 = (v3 + 32);
    do
    {
      v44 = v2;
      v7 = v0[84];
      v8 = v0[81];
      v9 = v0[80];
      v10 = v0[79];
      sub_1000D2A70(v5, v9, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v9, v10, &qword_101697700, &unk_10139FB90);
      v11 = *v6;
      (*v6)(v7, v10, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_101123D4C((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[84];
      v15 = v0[81];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v11(_swiftEmptyArrayStorage + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v13, v14, v15);
      v5 += v42;
      v2 = v44 - 1;
    }

    while (v44 != 1);
  }

  v16 = v0[118];
  v17 = sub_10000954C(_swiftEmptyArrayStorage);

  v18 = *(v16 + 16);
  if (v18)
  {
    v39 = v17;
    v19 = v0[118];
    v20 = v0[82];
    v21 = v0[78];
    sub_101123D4C(0, v18, 0);
    v22 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v41 = v20;
    v43 = *(v21 + 72);
    v23 = (v20 + 32);
    do
    {
      v45 = v18;
      v24 = v0[85];
      v25 = v0[81];
      v26 = v0[80];
      v27 = v0[79];
      sub_1000D2A70(v22, v26, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v26, v27, &qword_101697700, &unk_10139FB90);
      v28 = *v23;
      (*v23)(v24, v27, v25);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_101123D4C((v29 > 1), v30 + 1, 1);
      }

      v31 = v0[85];
      v32 = v0[81];
      _swiftEmptyArrayStorage[2] = v30 + 1;
      v28(_swiftEmptyArrayStorage + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, v31, v32);
      v22 += v43;
      --v18;
    }

    while (v45 != 1);

    v17 = v39;
  }

  else
  {
  }

  v33 = sub_1003ADDE8(_swiftEmptyArrayStorage, v17);
  v0[130] = v33;

  v0[76] = v33;
  v34 = swift_task_alloc();
  v0[131] = v34;
  v35 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v36 = sub_1003BD16C();
  *v34 = v0;
  v34[1] = sub_1003BC560;
  v37 = v0[108];

  return Sequence.asyncForEach(_:)(&unk_10139FBA0, v37, v35, v36);
}

uint64_t sub_1003BC4F0()
{

  *(v0 + 1064) = *(v0 + 1032);

  return _swift_task_switch(sub_1003BC7A8, 0, 0);
}

uint64_t sub_1003BC560()
{
  v2 = *v1;
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v3 = *(v2 + 864);

    v4 = sub_1003BC784;
  }

  else
  {
    v3 = *(v2 + 864);

    v4 = sub_1003BC68C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003BC6A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BC7A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BC8A0()
{
  v1 = v0[136];
  v2 = v0[77];
  v3 = swift_task_alloc();
  v0[137] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[138] = v4;
  *v4 = v0;
  v4[1] = sub_1003BC998;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_1003BC998()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {

    v2 = sub_1003BCFCC;
  }

  else
  {

    v2 = sub_1003BCAF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003BCB14()
{
  v1 = v0[122];
  v2 = v0[134] + 1;
  sub_10000B3A8(v0[77], &qword_1016975C8, &qword_10138C1F0);
  if (v2 == v1)
  {

    v3 = swift_task_alloc();
    v0[124] = v3;
    *v3 = v0;
    v3[1] = sub_1003BB80C;

    return daemon.getter();
  }

  v4 = v0[139];
  v5 = v0[134] + 1;
  v0[134] = v5;
  v6 = v0[121];
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_30;
  }

  v7 = *(v6 + 8 * v5 + 32);
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v9 = (inited + 24);
  v10 = *(v7 + 16);

  if (!v10)
  {
LABEL_13:

    swift_beginAccess();
    v21 = *(inited + 16);
    if (*(v21 + 16))
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    if ((*v9 & 0xC000000000000001) != 0)
    {

      v22 = __CocoaDictionary.count.getter();

      if (v22)
      {
        goto LABEL_16;
      }
    }

    else if (*(*v9 + 16))
    {
LABEL_16:
      UUID.init()();
      swift_beginAccess();
      v23 = *v9;
      if ((v23 & 0xC000000000000001) != 0)
      {

        v24 = __CocoaDictionary.count.getter();
        if (v24)
        {
LABEL_18:
          v25 = sub_1003A8AC8(v24, 0);
          v26 = sub_1003A95D8((v0 + 57), v25 + 4, v24, v23);
          sub_1000128F8(v0[57]);
          if (v26 != v24)
          {
LABEL_31:
            __break(1u);
            return daemon.getter();
          }

          goto LABEL_22;
        }
      }

      else
      {
        v24 = *(v23 + 16);

        if (v24)
        {
          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
      v25 = _swiftEmptyArrayStorage;
LABEL_22:
      v27 = v0[77];
      (*(v0[82] + 32))(v27, v0[83], v0[81]);
      v28 = type metadata accessor for CloudKitChangeSet(0);
      *(v27 + *(v28 + 20)) = v25;
      *(v27 + *(v28 + 24)) = v21;
      (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
LABEL_23:
      v15 = *(v0[108] + 112);
      v0[135] = v15;
      v14 = sub_1003BC878;
      goto LABEL_24;
    }

    v29 = v0[77];

    v30 = type metadata accessor for CloudKitChangeSet(0);
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    goto LABEL_23;
  }

  sub_10001F280(v7 + 32, (v0 + 52));
  v11 = v0[55];
  v12 = v0[56];
  v13 = sub_1000035D0(v0 + 52, v11);
  sub_100EC4898(v13, v11, v12);
  if (!v4)
  {
    sub_100007BAC(v0 + 52);
    if (v10 != 1)
    {
      v16 = v7 + 72;
      v17 = 1;
      while (v17 < *(v7 + 16))
      {
        sub_10001F280(v16, (v0 + 52));
        v18 = v0[55];
        v19 = v0[56];
        v20 = sub_1000035D0(v0 + 52, v18);
        sub_100EC4898(v20, v18, v19);
        ++v17;
        sub_100007BAC(v0 + 52);
        v16 += 40;
        if (v10 == v17)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  swift_setDeallocating();

  sub_100007BAC(v0 + 52);

  v0[133] = v4;
  v14 = sub_1003BC7A8;
  v15 = 0;
LABEL_24:

  return _swift_task_switch(v14, v15, 0);
}

uint64_t sub_1003BCFE8()
{
  v1 = *(v0 + 864);

  return _swift_task_switch(sub_1003BD054, v1, 0);
}

uint64_t sub_1003BD054()
{
  sub_10000B3A8(v0[77], &qword_1016975C8, &qword_10138C1F0);
  v0[133] = v0[139];

  return _swift_task_switch(sub_1003BC7A8, 0, 0);
}

uint64_t sub_1003BD0D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_101289A94(a1, v1);
}

unint64_t sub_1003BD16C()
{
  result = qword_1016AF940;
  if (!qword_1016AF940)
  {
    sub_1000BC580(&qword_1016AF8E0, &qword_101393130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF940);
  }

  return result;
}

uint64_t sub_1003BD1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_1003BD260;

  return daemon.getter();
}

uint64_t sub_1003BD260(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[44] = a1;

  v3 = swift_task_alloc();
  v2[45] = v3;
  v4 = type metadata accessor for Daemon();
  v2[46] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[47] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003BD440;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003BD440(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v4 = sub_1003BD938;
  }

  else
  {

    v4 = sub_1003BD55C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003BD55C()
{
  v1 = v0[48];
  v0[50] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[51] = v2;

  swift_defaultActor_initialize();
  v0[52] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = sub_1003BD650;

  return daemon.getter();
}

uint64_t sub_1003BD650(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[54] = a1;

  v4 = swift_task_alloc();
  v2[55] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[56] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003BD808;
  v7 = v2[47];
  v8 = v2[46];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003BD808(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = sub_1003BDD2C;
  }

  else
  {

    *(v4 + 464) = a1;
    v5 = sub_1003BD99C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BD938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BD99C()
{
  v1 = v0[58];
  v0[11] = v0[56];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_1003BDA44;

  return daemon.getter();
}

uint64_t sub_1003BDA44(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[60] = a1;

  v4 = swift_task_alloc();
  v2[61] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[62] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003BDBFC;
  v7 = v2[47];
  v8 = v2[46];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003BDBFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = sub_1003BE2D0;
  }

  else
  {

    *(v4 + 512) = a1;
    v5 = sub_1003BDDA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BDD2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BDDA8()
{
  v1 = *(v0 + 496);
  v24 = v1;
  v25 = *(v0 + 512);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  v28 = *(v0 + 400);
  v29 = *(v0 + 408);
  v26 = *(v0 + 384);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v27 = swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *v27;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v7;
  *(v0 + 144) = v25;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v28;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v29;
  type metadata accessor for ShareStopUseCase();
  v8 = swift_allocObject();
  *(v0 + 520) = v8;
  v9 = sub_10015049C(v0 + 104, v2);
  v23 = swift_task_alloc();
  (v6)(v23, v9, v2);
  v10 = *(v0 + 168);
  v11 = sub_10015049C(v0 + 144, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v14 = *(v0 + 208);
  v15 = sub_10015049C(v0 + 184, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *v23;
  v19 = *v13;
  v20 = *v17;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 224) = v18;
  *(v0 + 288) = v24;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v19;
  *(v0 + 328) = v28;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v20;

  swift_defaultActor_initialize();
  *(v8 + 112) = v26;
  sub_10000A748((v0 + 224), v8 + 120);
  sub_10000A748((v0 + 264), v8 + 160);
  sub_1000BB3F0((v0 + 16), (v8 + 200));
  sub_10000A748((v0 + 304), v8 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  v21 = swift_task_alloc();
  *(v0 + 528) = v21;
  *v21 = v0;
  v21[1] = sub_1003BE1BC;

  return sub_10127C728();
}

uint64_t sub_1003BE1BC()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_1003BE3D0;
  }

  else
  {
    v2 = sub_1003BE354;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003BE2D0()
{

  sub_100007BAC((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BE354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BE3D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BE44C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003A72CC(v3, v4, v5);
}

unint64_t sub_1003BE54C()
{
  result = qword_10169EF10;
  if (!qword_10169EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EF10);
  }

  return result;
}

uint64_t sub_1003BE5A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_1003BE5C0(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = *(type metadata accessor for MemberPeerTrust(0) - 8);
  v2[14] = v3;
  v2[15] = *(v3 + 64);
  v2[16] = swift_task_alloc();
  v4 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[20] = v5;
  *v5 = v2;
  v5[1] = sub_1003BE714;

  return daemon.getter();
}

uint64_t sub_1003BE714(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[21] = a1;

  v3 = swift_task_alloc();
  v2[22] = v3;
  v4 = type metadata accessor for Daemon();
  v2[23] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[24] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003BE8F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003BE8F4(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003BED50, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[27] = v4;
    *v4 = v3;
    v4[1] = sub_1003BEA68;

    return daemon.getter();
  }
}

uint64_t sub_1003BEA68(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[28] = a1;

  v4 = swift_task_alloc();
  v2[29] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[30] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003BEC20;
  v7 = v2[24];
  v8 = v2[23];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003BEC20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_1003BF1D0;
  }

  else
  {

    *(v4 + 256) = a1;
    v5 = sub_1003BEDC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BED50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BEDC8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_10164F068;
  *(v0 + 16) = v1;
  type metadata accessor for ShareRequestUseCase();
  v4 = swift_allocObject();
  *(v0 + 264) = v4;
  v5 = sub_10015049C(v0 + 16, v2);
  v6 = *(v2 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v2);
  *(v0 + 56) = *v7;
  *(v0 + 80) = v2;
  *(v0 + 88) = &off_10164F068;
  swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  sub_10000A748((v0 + 56), v4 + 120);
  sub_100007BAC((v0 + 16));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 104);
  sub_10002FDC4(*(v0 + 96), v8, type metadata accessor for MemberSharingCircle);
  sub_10002FDC4(v13, v10, type metadata accessor for MemberPeerTrust);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v9 + *(v12 + 80) + v14) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v0 + 272) = v16;
  *(v16 + 16) = v4;
  sub_1003CBBBC(v8, v16 + v14, type metadata accessor for MemberSharingCircle);
  sub_1003CBBBC(v10, v16 + v15, type metadata accessor for MemberPeerTrust);
  v19 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  *v17 = v0;
  v17[1] = sub_1003BF0A0;

  return v19(&unk_10139FF80, v16);
}

uint64_t sub_1003BF0A0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1003BF2D0;
  }

  else
  {
    v2 = sub_1003BF254;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003BF1D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BF254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BF2D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BF348(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_1003BF3E0;

  return daemon.getter();
}

uint64_t sub_1003BF3E0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003BF5BC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003BF5BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1003BF928;
  }

  else
  {

    v4 = sub_1003BF6D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003BF6D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  *(v0 + 72) = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;

  *(v0 + 80) = sub_1003AB3B8(v3, v1, v2, type metadata accessor for ShareKeysUploadUseCase);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1003BF814;
  v6 = *(v0 + 104);
  v7 = *(v0 + 16);

  return sub_1007256F8(v7, v6);
}

uint64_t sub_1003BF814()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003BFA04;
  }

  else
  {
    v2 = sub_1003BF98C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003BF928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BF98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BFA04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BFA7C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_1003BFB10;

  return daemon.getter();
}

uint64_t sub_1003BFB10(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003BFCEC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003BFCEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1003CC304;
  }

  else
  {

    v4 = sub_1003BFE08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003BFE08()
{
  v1 = v0[12];
  v2 = v0[8];
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  v0[14] = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;
  sub_10001F280(v2, (v0 + 2));
  v5 = v0[5];
  v6 = sub_10015049C((v0 + 2), v5);
  v7 = *(v5 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v5);
  v9 = *v8;

  v0[15] = sub_1003AB3B8(v10, v1, v9, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 2);

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1003BFFDC;
  v12 = v0[7];

  return sub_1007C6E34(v12);
}

uint64_t sub_1003BFFDC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1003CC310;
  }

  else
  {
    v2 = sub_1003CC2C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C00F0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_1003C0184;

  return daemon.getter();
}

uint64_t sub_1003C0184(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C0360;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C0360(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1003C0764;
  }

  else
  {

    v4 = sub_1003C047C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C047C()
{
  v1 = v0[12];
  v2 = v0[8];
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  v0[14] = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;
  sub_10001F280(v2, (v0 + 2));
  v5 = v0[5];
  v6 = sub_10015049C((v0 + 2), v5);
  v7 = *(v5 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v5);
  v9 = *v8;

  v0[15] = sub_1003AB3B8(v10, v1, v9, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 2);

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1003C0650;
  v12 = v0[7];

  return sub_1007CFB78(v12);
}

uint64_t sub_1003C0650()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1003C0840;
  }

  else
  {
    v2 = sub_1003C07C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C0764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C07C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C0840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C08B8(uint64_t a1)
{
  v1[6] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for CheckDataIntegrityUseCase();
  swift_allocObject();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_1003C09F4;

  return sub_100111F58();
}

uint64_t sub_1003C09F4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1003C0B50, 0, 0);
  }
}

uint64_t sub_1003C0B50()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1000D2A70(v0[6], v3, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[7], &qword_1016980D0, &unk_10138F3B0);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1003C0E78;

    return sub_1001124D0();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1003C0CD0;
    v7 = v0[10];

    return sub_10011407C(v7);
  }
}

uint64_t sub_1003C0CD0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return _swift_task_switch(sub_1003C0DD0, 0, 0);
}

uint64_t sub_1003C0DD0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);
  v4 = v0[3];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1003C0E78(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  return _swift_task_switch(sub_1003C0F78, 0, 0);
}

uint64_t sub_1003C0F78()
{

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1003C0FF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1003C108C;

  return daemon.getter();
}

uint64_t sub_1003C108C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C1268;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C1268(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1003C1628;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1003C1398;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C1398()
{
  v1 = v0[7];
  type metadata accessor for ImportedShareUseCase();
  swift_allocObject();
  v2 = sub_1001E87D4(v1);
  v0[8] = v2;
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = swift_allocObject();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v8 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = v3;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1003C150C;

  return (v8)(v0 + 12, &unk_10139FF68, v4, &type metadata for Bool);
}

uint64_t sub_1003C150C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1003C16F8;
  }

  else
  {

    v2 = sub_1003C1690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C1628()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003C1690()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1003C16F8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003C1768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1003C1800;

  return daemon.getter();
}

uint64_t sub_1003C1800(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C19DC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C19DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1003C1DAC;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_1003C1B0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C1B0C()
{
  v1 = *(v0 + 72);
  type metadata accessor for ImportedShareUseCase();
  swift_allocObject();
  v2 = sub_1001E87D4(v1);
  *(v0 + 80) = v2;
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  v8 = *(v0 + 16);
  *(v4 + 24) = v8;
  *(v4 + 40) = v3;
  v9 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v5 = v8;

  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_1003C1C90;

  return v9(&unk_10139FF50, v4);
}

uint64_t sub_1003C1C90()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1003C1E74;
  }

  else
  {

    v2 = sub_1003C1E10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C1DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C1E10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C1E74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C1EE0(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for UUID();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 + 64);
  *(v2 + 48) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1003C1FDC;

  return daemon.getter();
}

uint64_t sub_1003C1FDC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C21B8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C21B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1003C2488;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_1003C22E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C22E8()
{
  v1 = *(v0 + 88);
  type metadata accessor for ImportedShareUseCase();
  swift_allocObject();
  v2 = sub_1001E87D4(v1);
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 96);
  (*(v6 + 16))(v3, *(v0 + 16), v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = v8 + v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  (*(v6 + 32))(v10 + v8, v3, v5);
  *(v10 + v9) = v7;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003C2488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C24F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003C25C4, 0, 0);
}

uint64_t sub_1003C25C4()
{
  sub_10001F280(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1003C2664;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C2664(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003C2A74;
  }

  else
  {
    v4 = sub_1003C2790;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C2790()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  (*(v5 + 16))(v2, v0[7], v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[18] = v10;
  *(v10 + 16) = v1;
  (*(v5 + 32))(v10 + v8, v2, v4);
  v11 = (v10 + v9);
  *v11 = v6;
  v11[1] = v7;
  v14 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1003C2944;

  return v14(&unk_10139FF30, v10);
}

uint64_t sub_1003C2944()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1003C2B48;
  }

  else
  {
    v2 = sub_1003C2AD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C2A74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C2AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C2B48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C2BB4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003C2C7C, 0, 0);
}

uint64_t sub_1003C2C7C()
{
  sub_10001F280(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1003C2D1C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C2D1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003C3100;
  }

  else
  {
    v4 = sub_1003C2E48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C2E48()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v4 + 16))(v2, v0[7], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v9 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1003C2FD0;

  return v9(&unk_10139FF18, v6);
}

uint64_t sub_1003C2FD0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1003C31D4;
  }

  else
  {
    v2 = sub_1003C3164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C3100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C3164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C31D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C3260()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1003C3304;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C3304(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003C3688;
  }

  else
  {
    v4 = sub_1003C3430;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C3430()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[7];
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v6 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1003C356C;

  return v6(&unk_10139FEC0, v3);
}

uint64_t sub_1003C356C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1003C3704;
  }

  else
  {

    v2 = sub_1003C36A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C36A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C3704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C3774(uint64_t a1)
{
  v1[10] = a1;
  v2 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v1[11] = v2;
  v1[12] = *(v2 + 64);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003C3838, 0, 0);
}

uint64_t sub_1003C3838()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1003C38DC;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C38DC(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[15] = v1;

  sub_10000B3A8((v3 + 2), &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003C3B6C;
  }

  else
  {
    v4 = sub_1003C3A10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C3A10()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[13];
  v3 = v0[11];
  sub_10002FDC4(v0[10], v2, type metadata accessor for OwnerSharingCircle);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  sub_1003CBBBC(v2, v5 + v4, type metadata accessor for OwnerSharingCircle);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003C3B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C3BD0(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003C3CA4, 0, 0);
}

uint64_t sub_1003C3CA4()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1003C3D48;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C3D48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003C4128;
  }

  else
  {
    v4 = sub_1003C3E74;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C3E74()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  (*(v3 + 16))(v2, v0[7], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1003C400C;

  return (v9)(v0 + 19, &unk_10139FEA8, v6, &type metadata for Bool);
}

uint64_t sub_1003C400C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1003C447C;
  }

  else
  {

    v2 = sub_1003C4404;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C4128()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not verify delegation meta-data for %{private,mask.hash}s, %{public}@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1003C4404()
{

  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1003C447C()
{
  v23 = v0;

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not verify delegation meta-data for %{private,mask.hash}s, %{public}@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1003C476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v4[11] = v5;
  v4[12] = *(v5 + 64);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003C4834, 0, 0);
}

uint64_t sub_1003C4834()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1003C48D8;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C48D8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    sub_10000B3A8(v4 + 16, &unk_101698E08, &qword_101390A08);
    v5 = sub_1003C4BC8;
  }

  else
  {
    *(v4 + 120) = a1;
    sub_10000B3A8(v4 + 16, &unk_101698E08, &qword_101390A08);
    v5 = sub_1003C4A30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C4A30()
{
  v1 = v0[15];
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  sub_10002FDC4(v0[7], v2, type metadata accessor for OwnerSharingCircle);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  sub_1003CBBBC(v2, v10 + v8, type metadata accessor for OwnerSharingCircle);
  v11 = (v10 + v9);
  *v11 = v7;
  v11[1] = v6;
  v11[2] = v4;

  sub_1003CB5AC(v7, v6, v4);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003C4BC8()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  sub_10002FDC4(v0[7], v1, type metadata accessor for OwnerSharingCircle);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_1003CBBBC(v1, v9 + v7, type metadata accessor for OwnerSharingCircle);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v3;
  sub_1003CB5AC(v6, v5, v3);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003C4D3C(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003C4E04, 0, 0);
}

uint64_t sub_1003C4E04()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1003C4EA8;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C4EA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003C528C;
  }

  else
  {
    v4 = sub_1003C4FD4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C4FD4()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v4 + 16))(v2, v0[7], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v9 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1003C515C;

  return v9(&unk_10139FE78, v6);
}

uint64_t sub_1003C515C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1003C5360;
  }

  else
  {
    v2 = sub_1003C52F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C528C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C52F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C5360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C53CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_1003C5464;

  return daemon.getter();
}

uint64_t sub_1003C5464(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C5640;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C5640(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1003CC2E8;
  }

  else
  {

    v4 = sub_1003C575C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C575C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  *(v0 + 72) = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;

  *(v0 + 80) = sub_1003AB3B8(v3, v1, v2, type metadata accessor for ShareKeysUploadUseCase);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1003C5898;
  v6 = *(v0 + 104);
  v7 = *(v0 + 16);

  return sub_100725B0C(v7, v6);
}

uint64_t sub_1003C5898()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003CC2AC;
  }

  else
  {
    v2 = sub_1003CC2C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C59C8()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1003C5A6C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C5A6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003CC2FC;
  }

  else
  {
    v4 = sub_1003C5B98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C5B98()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v4 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1003C5C98;
  v2 = *(v0 + 64);

  return v4(&unk_10139FEE0, v2);
}

uint64_t sub_1003C5C98()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1003C5DB4;
  }

  else
  {

    v2 = sub_1003CC324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C5DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C5E1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 768) = a3;
  *(v3 + 472) = a1;
  *(v3 + 480) = a2;
  v4 = type metadata accessor for UUID();
  *(v3 + 488) = v4;
  v5 = *(v4 - 8);
  *(v3 + 496) = v5;
  *(v3 + 504) = *(v5 + 64);
  *(v3 + 512) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 520) = v6;
  *v6 = v3;
  v6[1] = sub_1003C5F18;

  return daemon.getter();
}

uint64_t sub_1003C5F18(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[66] = a1;

  v3 = swift_task_alloc();
  v2[67] = v3;
  v4 = type metadata accessor for Daemon();
  v2[68] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[69] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C60F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C60F8(uint64_t a1)
{
  v3 = *v2;
  v3[70] = a1;
  v3[71] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C6548, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[72] = v4;
    *v4 = v3;
    v4[1] = sub_1003C6270;

    return daemon.getter();
  }
}

uint64_t sub_1003C6270(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[73] = a1;

  v4 = swift_task_alloc();
  v2[74] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[75] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003C6428;
  v7 = v2[69];
  v8 = v2[68];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003C6428(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 608) = a1;
  *(v3 + 616) = v1;

  if (v1)
  {
    v4 = sub_1003C69D8;
  }

  else
  {

    v4 = sub_1003C65B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C6548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C65B4()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[70];
  v4 = type metadata accessor for SharingCircleKeyManager();
  v0[78] = v4;
  v5 = swift_allocObject();
  v0[79] = v5;

  swift_defaultActor_initialize();
  v0[80] = type metadata accessor for KeyDropInterface();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 112) = v6;
  *(v5 + 120) = v3;
  v0[17] = v2;
  v0[18] = &off_10164F7C0;
  v0[14] = v1;
  v0[22] = v4;
  v0[23] = &off_10164E4F0;
  v0[19] = v5;

  v7 = swift_task_alloc();
  v0[81] = v7;
  *v7 = v0;
  v7[1] = sub_1003C66F0;

  return daemon.getter();
}

uint64_t sub_1003C66F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[82] = a1;

  v4 = swift_task_alloc();
  v2[83] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[84] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003C68A8;
  v7 = v2[69];
  v8 = v2[68];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003C68A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 680) = v1;

  if (v1)
  {
    v5 = sub_1003C6E18;
  }

  else
  {

    *(v4 + 688) = a1;
    v5 = sub_1003C6A50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C69D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C6A50()
{
  v1 = v0[86];
  v2 = v0[80];
  v0[27] = v0[84];
  v0[28] = &off_10164F068;
  v0[24] = v1;
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v0[5] = v2;
  v0[6] = &off_101660C48;
  v0[7] = &off_10162BCD8;
  v0[2] = v3;
  v4 = swift_task_alloc();
  v0[87] = v4;
  *v4 = v0;
  v4[1] = sub_1003C6B34;

  return daemon.getter();
}

uint64_t sub_1003C6B34(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 704) = a1;

  v5 = swift_task_alloc();
  *(v3 + 712) = v5;
  v6 = type metadata accessor for PeerTrustService();
  v7 = sub_100019420(&qword_1016B1190, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v5 = v4;
  v5[1] = sub_1003C6CE8;
  v8 = *(v2 + 552);
  v9 = *(v2 + 544);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003C6CE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 720) = v1;

  if (v1)
  {
    v5 = sub_1003C7714;
  }

  else
  {

    *(v4 + 728) = a1;
    v5 = sub_1003C6EC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C6E18()
{

  sub_100007BAC(v0 + 19);
  sub_100007BAC(v0 + 14);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003C6EC0()
{
  v1 = v0;
  v52 = *(v0 + 728);
  v2 = *(v0 + 672);
  v44 = *(v0 + 640);
  v3 = *(v0 + 624);
  v43 = v3;
  v41 = v2;
  v42 = *(v0 + 600);
  v50 = *(v0 + 560);
  v4 = *(v0 + 136);
  sub_10015049C(v0 + 112, v4);
  v5 = *(v4 - 8);
  v49 = swift_task_alloc();
  (*(v5 + 16))();
  v6 = *(v0 + 176);
  sub_10015049C(v1 + 152, *(v1 + 176));
  v7 = *(v6 - 8);
  v48 = swift_task_alloc();
  (*(v7 + 16))();
  v8 = *(v0 + 216);
  sub_10015049C(v1 + 192, *(v1 + 216));
  v9 = *(v8 - 8);
  v47 = swift_task_alloc();
  (*(v9 + 16))();
  v10 = *(v0 + 40);
  sub_10015049C(v1 + 16, *(v1 + 40));
  v11 = *(v10 - 8);
  v46 = swift_task_alloc();
  (*(v11 + 16))();
  v12 = *v49;
  v13 = *v48;
  v14 = *v47;
  *(v0 + 64) = *v46;
  *(v0 + 256) = v42;
  *(v0 + 264) = &off_10164F7C0;
  *(v0 + 232) = v12;
  *(v0 + 296) = v3;
  *(v0 + 304) = &off_10164E4F0;
  *(v0 + 272) = v13;
  *(v0 + 312) = v14;
  *(v0 + 336) = v2;
  *(v0 + 344) = &off_10164F068;
  *(v0 + 88) = v44;
  *(v0 + 96) = &off_101660C48;
  *(v0 + 104) = &off_10162BCD8;
  type metadata accessor for SelfBeaconingShareUseCase();
  v15 = swift_allocObject();
  *(v0 + 736) = v15;
  v16 = sub_10015049C(v0 + 232, v42);
  v17 = *(v42 - 8);
  v45 = swift_task_alloc();
  (*(v17 + 16))(v45, v16, v42);
  v18 = *(v0 + 296);
  v19 = sub_10015049C(v1 + 272, *(v1 + 296));
  v20 = *(v18 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v18);
  v22 = *(v0 + 336);
  v23 = sub_10015049C(v1 + 312, *(v1 + 336));
  v24 = *(v22 - 8);
  v25 = swift_task_alloc();
  (*(v24 + 16))(v25, v23, v22);
  v26 = *v45;
  v27 = *v21;
  v28 = *v25;
  *(v0 + 376) = v42;
  *(v0 + 384) = &off_10164F7C0;
  *(v0 + 352) = v26;
  *(v0 + 416) = v43;
  *(v0 + 424) = &off_10164E4F0;
  *(v0 + 392) = v27;
  *(v0 + 456) = v41;
  *(v0 + 464) = &off_10164F068;
  *(v0 + 432) = v28;

  swift_defaultActor_initialize();
  sub_1000BB3F0((v0 + 64), (v15 + 112));
  sub_10000A748((v0 + 392), v15 + 248);
  *(v15 + 160) = v50;
  sub_10000A748((v0 + 352), v15 + 168);
  sub_10000A748((v0 + 432), v15 + 208);
  *(v15 + 288) = v52;
  sub_100007BAC((v0 + 312));

  sub_100007BAC((v0 + 272));

  sub_100007BAC((v0 + 232));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 192));

  sub_100007BAC((v0 + 152));

  sub_100007BAC((v0 + 112));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 504);
  v29 = *(v0 + 512);
  v31 = *(v1 + 488);
  v32 = *(v1 + 496);
  v33 = *(v1 + 768);
  v34 = *(v1 + 480);
  (*(v32 + 16))(*(v1 + 512), *(v1 + 472), v31);
  v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v36 = (v30 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v1 + 744) = v37;
  *(v37 + 16) = v15;
  (*(v32 + 32))(v37 + v35, v29, v31);
  v38 = v37 + v36;
  *v38 = v34;
  *(v38 + 8) = v33;
  v51 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v39 = swift_task_alloc();
  *(v1 + 752) = v39;
  *v39 = v1;
  v39[1] = sub_1003C75E4;

  return v51(&unk_10139FD78, v37);
}

uint64_t sub_1003C75E4()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_1003C7868;
  }

  else
  {
    v2 = sub_1003C77CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C7714()
{

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 24);
  sub_100007BAC(v0 + 19);
  sub_100007BAC(v0 + 14);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003C77CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C7868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C7900(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v1[13] = v2;
  v1[14] = *(v2 + 64);
  v1[15] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[16] = v3;
  *v3 = v1;
  v3[1] = sub_1003C79F4;

  return daemon.getter();
}

uint64_t sub_1003C79F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[17] = a1;

  v3 = swift_task_alloc();
  v2[18] = v3;
  v4 = type metadata accessor for Daemon();
  v2[19] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[20] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C7BD4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C7BD4(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C8030, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[23] = v4;
    *v4 = v3;
    v4[1] = sub_1003C7D48;

    return daemon.getter();
  }
}

uint64_t sub_1003C7D48(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[24] = a1;

  v4 = swift_task_alloc();
  v2[25] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[26] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003C7F00;
  v7 = v2[20];
  v8 = v2[19];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003C7F00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_1003C8444;
  }

  else
  {

    *(v4 + 224) = a1;
    v5 = sub_1003C809C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C8030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C809C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 168);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_10164F068;
  *(v0 + 16) = v1;
  type metadata accessor for ShareRequestUseCase();
  v4 = swift_allocObject();
  *(v0 + 232) = v4;
  v5 = sub_10015049C(v0 + 16, v2);
  v6 = *(v2 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v2);
  *(v0 + 56) = *v7;
  *(v0 + 80) = v2;
  *(v0 + 88) = &off_10164F068;
  swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  sub_10000A748((v0 + 56), v4 + 120);
  sub_100007BAC((v0 + 16));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  sub_10002FDC4(*(v0 + 96), v8, type metadata accessor for MemberSharingCircle);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v0 + 240) = v11;
  *(v11 + 16) = v4;
  sub_1003CBBBC(v8, v11 + v10, type metadata accessor for MemberSharingCircle);
  v14 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_1003C8314;

  return v14(&unk_10139FCD8, v11);
}

uint64_t sub_1003C8314()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1003C852C;
  }

  else
  {
    v2 = sub_1003C84BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C8444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C84BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C852C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C8598(uint64_t a1)
{
  *(v1 + 344) = a1;
  v2 = swift_task_alloc();
  *(v1 + 352) = v2;
  *v2 = v1;
  v2[1] = sub_1003C862C;

  return daemon.getter();
}

uint64_t sub_1003C862C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[45] = a1;

  v3 = swift_task_alloc();
  v2[46] = v3;
  v4 = type metadata accessor for Daemon();
  v2[47] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[48] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003C880C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C880C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1003CC300;
  }

  else
  {

    v4 = sub_1003C8928;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C8928()
{
  v1 = v0[49];
  v0[51] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[52] = v2;

  swift_defaultActor_initialize();
  v0[53] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_1003C8A1C;

  return daemon.getter();
}

uint64_t sub_1003C8A1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[55] = a1;

  v4 = swift_task_alloc();
  v2[56] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[57] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003C8BD4;
  v7 = v2[48];
  v8 = v2[47];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003C8BD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v5 = sub_1003CC2DC;
  }

  else
  {

    *(v4 + 472) = a1;
    v5 = sub_1003C8D04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C8D04()
{
  v1 = v0[59];
  v0[11] = v0[57];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_1003C8DAC;

  return daemon.getter();
}

uint64_t sub_1003C8DAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[61] = a1;

  v4 = swift_task_alloc();
  v2[62] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[63] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003C8F64;
  v7 = v2[48];
  v8 = v2[47];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003C8F64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_1003CC320;
  }

  else
  {

    *(v4 + 520) = a1;
    v5 = sub_1003C9094;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C9094()
{
  v1 = *(v0 + 504);
  v25 = *(v0 + 520);
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v28 = *(v0 + 408);
  v29 = *(v0 + 416);
  v26 = *(v0 + 392);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v27 = swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *v27;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v7;
  *(v0 + 144) = v25;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v28;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v29;
  type metadata accessor for ShareStopUseCase();
  v8 = swift_allocObject();
  *(v0 + 528) = v8;
  v9 = sub_10015049C(v0 + 104, v2);
  v24 = swift_task_alloc();
  (v6)(v24, v9, v2);
  v10 = *(v0 + 168);
  v11 = sub_10015049C(v0 + 144, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v14 = *(v0 + 208);
  v15 = sub_10015049C(v0 + 184, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *v13;
  v19 = *v17;
  *(v0 + 224) = *v24;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v18;
  *(v0 + 328) = v28;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v19;

  swift_defaultActor_initialize();
  *(v8 + 112) = v26;
  sub_10000A748((v0 + 224), v8 + 120);
  sub_10000A748((v0 + 264), v8 + 160);
  sub_1000BB3F0((v0 + 16), (v8 + 200));
  sub_10000A748((v0 + 304), v8 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 344);
  v21 = swift_allocObject();
  *(v0 + 536) = v21;
  *(v21 + 16) = v8;
  *(v21 + 24) = v20;
  v30 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v22 = swift_task_alloc();
  *(v0 + 544) = v22;
  *v22 = v0;
  v22[1] = sub_1003B7468;

  return v30(&unk_10139FC70, v21);
}

uint64_t sub_1003C9540()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A799C(v2, v3);
}

uint64_t sub_1003C95D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 160) = a2;
  *(v4 + 56) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 + 64);
  *(v4 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1003C96A8, 0, 0);
}

uint64_t sub_1003C96A8()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1003C974C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C974C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003C9B6C;
  }

  else
  {
    v4 = sub_1003C9878;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C9878()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v14 = *(v0 + 160);
  (*(v5 + 16))(v2, *(v0 + 56), v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 136) = v10;
  *(v10 + 16) = v1;
  (*(v5 + 32))(v10 + v8, v2, v4);
  v11 = v10 + v9;
  *v11 = v14;
  *(v11 + 8) = v7;
  *(v11 + 16) = v6;
  v15 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_1003C9A3C;

  return v15(&unk_10139FCA0, v10);
}

uint64_t sub_1003C9A3C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1003C9C40;
  }

  else
  {
    v2 = sub_1003C9BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C9B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C9BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C9C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C9CAC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v5 + 1);
  v7 = *(v5 + 2);
  v8 = *v5;
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1003A5A30(v4, v0 + v3, v8, v6, v7);
}

uint64_t sub_1003C9DCC()
{
  v2 = *(type metadata accessor for OwnerPeerTrust(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v6;
  v9 = *(v0 + v6 + *(v5 + 64));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_1003A7414(v7, v0 + v3, v8, v9);
}

uint64_t sub_1003C9F30()
{
  v2 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7AE4(v4, v0 + v3);
}

uint64_t sub_1003CA008()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A0AC0(v4, v0 + v3, v6, v7);
}

uint64_t sub_1003CA124()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003A1C54(v3, v4, v5);
}

uint64_t sub_1003CA280()
{
  type metadata accessor for UUID();

  return sub_100E6F7C4();
}

uint64_t sub_1003CA2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v6 = type metadata accessor for Date();
  v3[6] = v6;
  v3[7] = *(v6 - 8);
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[9] = v7;
  v3[10] = *(v7 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[14] = v8;
  *v8 = v3;
  v8[1] = sub_1003CA484;

  return sub_101296F78(a1, a3);
}

uint64_t sub_1003CA484(char a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1003CA584, 0, 0);
}

uint64_t sub_1003CA584()
{
  v25 = v0;
  if (*(v0 + 200) == 1)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 24);
    v5 = type metadata accessor for Logger();
    *(v0 + 120) = sub_1000076D4(v5, qword_10177AE28);
    v6 = *(v3 + 16);
    *(v0 + 128) = v6;
    *(v0 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v13 = 136315138;
      sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v17 = *(v12 + 8);
      v17(v10, v11);
      v18 = sub_1000136BC(v14, v16, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Notify owner about %s being reunited with sharee.", v13, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {

      v17 = *(v12 + 8);
      v17(v10, v11);
    }

    *(v0 + 144) = v17;
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v21[1] = sub_1003CA87C;
    v22 = *(v0 + 24);

    return sub_1005BE314(v22);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1003CA87C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1003CB12C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 40);
    v3 = sub_1003CA998;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1003CA998()
{

  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1003CAA78;
  v3 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1003CAA78()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1003CAB90, v1, 0);
}

uint64_t sub_1003CABB4()
{
  static Date.trustedNow.getter(v0[8]);
  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1003CAC7C;
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[3];

  return sub_10068A7D8(v5, v3, v4);
}

uint64_t sub_1003CAC7C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v5[24] = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1003CAE7C, 0, 0);
  }

  else
  {
    (*(v5[7] + 8))(v5[8], v5[6]);

    v6 = v5[1];

    return v6();
  }
}

uint64_t sub_1003CAE7C()
{
  v22 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 24), *(v0 + 72));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  if (v6)
  {
    v19 = v4;
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v10 = 136315394;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v7(v8, v9);
    v14 = sub_1000136BC(v11, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v18 = v15;
    _os_log_impl(&_mh_execute_header, v19, v5, "Failed to notify owner about %s being reunited with sharee %{public}@.", v10, 0x16u);
    sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v20);
  }

  else
  {

    v7(v8, v9);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1003CB12C()
{
  v19 = v0;
  (*(v0 + 128))(*(v0 + 88), *(v0 + 24), *(v0 + 72));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  if (v3)
  {
    v16 = v1;
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v7 = 136315394;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v15 = v12;
    _os_log_impl(&_mh_execute_header, v16, v2, "Failed to notify owner about %s being reunited with sharee %{public}@.", v7, 0x16u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v17);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1003CB3B4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A2FA0(v4, v0 + v3);
}

uint64_t sub_1003CB48C()
{
  v2 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1003A2B94(v4, v0 + v3, v6, v7, v8);
}

double sub_1003CB5AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
  }

  return result;
}

uint64_t sub_1003CB5C0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1003A29F4(a1, v6, v1 + v5);
}

uint64_t sub_1003CB6A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A2958(v2, v3);
}

uint64_t sub_1003CB73C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1003A31B4();
}

uint64_t sub_1003CB7CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A7B80(v2, v0 + 24, v3);
}

uint64_t sub_1003CB874()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A25A0(v4, v0 + v3);
}

uint64_t sub_1003CB94C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A1D00(v4, v0 + v3, v6, v7);
}

uint64_t sub_1003CBA64()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003A13AC(v2, v3, v5, v4);
}

uint64_t sub_1003CBB10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1003A1198(a1, v5, v4);
}

uint64_t sub_1003CBBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003CBC24()
{
  v2 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MemberPeerTrust(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A7A38(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003CBD58()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7378(v4, v0 + v3);
}

uint64_t sub_1003CBE30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A7900(v2, v3);
}

uint64_t sub_1003CBEC8()
{
  v2 = *(type metadata accessor for OwnerPeerTrust(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A77B8(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003CBFFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A7864(v2, v3);
}

uint64_t sub_1003CC094()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7230(v4, v0 + v3);
}

uint64_t sub_1003CC16C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A28BC(v4, v0 + v3);
}

unint64_t sub_1003CC258()
{
  result = qword_10169F060;
  if (!qword_10169F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F060);
  }

  return result;
}

uint64_t sub_1003CC384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1003CC404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1003CC4A0(uint64_t a1)
{
  strcpy(v4, "ServiceUUID(");
  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4[0];
}

unint64_t sub_1003CC510()
{
  _StringGuts.grow(_:)(22);

  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000013;
}

Swift::Int sub_1003CC5A0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003CC8E4(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003CC628(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1003CC8E4(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1003CC6AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003CC8E4(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003CC730@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v7 + 32))(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1003CC8E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CCA70()
{
  v1 = [v0 fetchLimit];
  if (v1)
  {
    v2 = v1;
    [v1 integerValue];
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C2C(v4);
  }

  return 0;
}

id sub_1003CCB60(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for UUID();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v36 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v41 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 8);
  v9 = *(v8 + 8);
  v10 = *(v9 + 24);
  v11 = v10(a1, v9);
  v44 = xmmword_10138C660;
  v42 = v11 >> 6;
  v43[3] = &type metadata for UnsafeRawBufferPointer;
  v43[4] = &protocol witness table for UnsafeRawBufferPointer;
  v43[0] = &v42;
  v43[1] = v43;
  sub_1000035D0(v43, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(v43);
  v12 = (*(v9 + 8))(a1, v9);
  v33 = v13;
  v34 = v12;
  v30 = (*(v8 + 16))(a1, v8);
  v27 = v14;
  v28 = *(&v44 + 1);
  v29 = v44;
  v32 = v10(a1, v9);
  v31 = (*(v9 + 40))(a1, v9);
  (*(v9 + 48))(a1, v9);
  v15 = v36;
  (*(*(v35 + 16) + 8))(a1);
  v16 = objc_allocWithZone(SPBeaconAdvertisement);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = v27;
  v19 = Data._bridgeToObjectiveC()().super.isa;
  v20 = Data._bridgeToObjectiveC()().super.isa;
  v21 = Data._bridgeToObjectiveC()().super.isa;
  v22 = Date._bridgeToObjectiveC()().super.isa;
  v23 = UUID._bridgeToObjectiveC()().super.isa;
  v24 = [v16 initWithAddress:isa publicKey:v19 deviceType:v20 batteryState:v21 rawStatus:v32 rssi:v31 scanDate:v22 recordIdentifier:v23];

  sub_100016590(v30, v18);
  sub_100016590(v34, v33);
  (*(v39 + 8))(v15, v40);
  (*(v37 + 8))(v41, v38);
  sub_100016590(v44, *(&v44 + 1));
  return v24;
}

uint64_t sub_1003CCF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1003CCFD0@<X0>(void *a1@<X8>)
{
  v3 = [v1 location];
  if (v3)
  {
    v4 = v3;
    [v3 latitude];
    v6 = v5;
    [v4 longitude];
    v8 = v7;
    [v4 horizontalAccuracy];
    v10 = v9;
    v11 = [v4 timestamp];
    v12 = type metadata accessor for CachedHistoricalLocation(0);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v10;
    v13 = *(*(v12 - 8) + 56);
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for CachedHistoricalLocation(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1003CD15C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 advertisement];
  v6 = [v5 *a3];

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

id sub_1003CD1D4()
{
  v1 = [*v0 advertisement];
  v2 = [v1 status];

  return v2;
}

id sub_1003CD224()
{
  v1 = [*v0 advertisement];
  v2 = [v1 rssi];

  return v2;
}

void sub_1003CD274()
{
  v1 = [*v0 advertisement];
  v2 = [v1 scanDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t type metadata accessor for SPCachedAdvertisement(uint64_t a1)
{
  result = qword_10169F220;
  if (!qword_10169F220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CD368(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003CD400@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for PairingLockCheckEndPoint(0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v5);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for PairingLockCheckEndPoint(uint64_t a1)
{
  result = qword_10169F2C0;
  if (!qword_10169F2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1003CD5D0()
{
  result = sub_1003CD5F0();
  qword_10169F2F8 = result;
  return result;
}

void *sub_1003CD5F0()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v2];

    v3 = [objc_allocWithZone(GEOLatLng) initWithLatitude:31.8502665 longitude:125.094901];
    [v1 addVertex:v3];

    v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:36.7747537 longitude:133.334647];
    [v1 addVertex:v4];

    v5 = [objc_allocWithZone(GEOLatLng) initWithLatitude:39.1903306 longitude:130.434257];
    [v1 addVertex:v5];

    v6 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v6];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1003CD7F8()
{
  v1 = [*v0 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

void *sub_1003CD878()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = 36;
    v3 = &unk_101607C88;
    do
    {
      v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:*v3 longitude:*(v3 - 1)];
      [v1 addVertex:v4];

      v3 += 2;
      --v2;
    }

    while (v2);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1003CD99C(uint64_t a1)
{
  *(a1 + 8) = sub_1003CD9CC();
  result = sub_1003928F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1003CD9CC()
{
  result = qword_10169F308;
  if (!qword_10169F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F308);
  }

  return result;
}

void *sub_1003CDA20(uint64_t a1)
{
  v49 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v3 = __chkstk_darwin(v49);
  v48 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v47 = (&v41 - v6);
  v7 = __chkstk_darwin(v5);
  v46 = (&v41 - v8);
  __chkstk_darwin(v7);
  v45 = (&v41 - v9);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v41 = v1;
  v56 = _swiftEmptyArrayStorage;
  sub_101123CB8(0, v10, 0);
  v11 = v56;
  v12 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v55 = *(a1 + 36);
  v42 = a1 + 72;
  v43 = v10;
  v44 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v51 = 1 << v14;
    v52 = v14 >> 6;
    v50 = v15;
    v17 = v49;
    v18 = *(v49 + 48);
    v19 = *(a1 + 56);
    v53 = *(*(a1 + 48) + 16 * v14);
    v20 = v45;
    *v45 = v53;
    v21 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_100032504(v19 + *(*(v21 - 8) + 72) * v14, v20 + v18, type metadata accessor for OwnedBeaconGroup.PairingState);
    v22 = *v20;
    v54 = v11;
    v23 = v46;
    *v46 = v22;
    sub_10040A014(v20 + v18, v23 + *(v17 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v24 = v47;
    sub_1000D2A70(v23, v47, &qword_1016A4190, &unk_1013A3550);
    v25 = *(v17 + 48);
    v26 = v48;
    *v48 = *v24;
    sub_10040A014(v24 + v25, v26 + v25, type metadata accessor for OwnedBeaconGroup.PairingState);
    v27 = a1;
    v29 = *v26;
    v28 = v26[1];
    sub_100017D5C(v53, *(&v53 + 1));
    sub_100017D5C(v29, v28);
    sub_10000B3A8(v26, &qword_1016A4190, &unk_1013A3550);
    v30 = v23;
    v11 = v54;
    result = sub_10000B3A8(v30, &qword_1016A4190, &unk_1013A3550);
    v56 = v11;
    v32 = v11[2];
    v31 = v11[3];
    if (v32 >= v31 >> 1)
    {
      result = sub_101123CB8((v31 > 1), v32 + 1, 1);
      v11 = v56;
    }

    v11[2] = v32 + 1;
    v33 = &v11[2 * v32];
    v33[4] = v29;
    v33[5] = v28;
    v16 = 1 << *(v27 + 32);
    if (v14 >= v16)
    {
      goto LABEL_24;
    }

    a1 = v27;
    v12 = v44;
    v34 = *(v44 + 8 * v52);
    if ((v34 & v51) == 0)
    {
      goto LABEL_25;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v35 = v34 & (-2 << (v14 & 0x3F));
    if (v35)
    {
      v16 = __clz(__rbit64(v35)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = v52 << 6;
      v37 = v52 + 1;
      v38 = (v42 + 8 * v52);
      while (v37 < (v16 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_1000BB408(v14, v55, 0);
          v16 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v14, v55, 0);
    }

LABEL_4:
    v15 = v50 + 1;
    v14 = v16;
    if (v50 + 1 == v43)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1003CDE4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ACC8);
  sub_1000076D4(v0, qword_10177ACC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003CDEC4()
{
  result = Data.init(stringLiteral:)();
  qword_10177ACE0 = result;
  *algn_10177ACE8 = v1;
  return result;
}

uint64_t sub_1003CDF00(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  v20[1] = *v2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000023;
  *(v10 + 80) = 0x8000000101353A20;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}@", 22, 2, v10);

  v15 = v2[35];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v2;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v15;
  v18[5] = sub_10040820C;
  v18[6] = v16;

  sub_10025EDD4(0, 0, v7, &unk_1013A0968, v18);
}

void sub_1003CE19C(uint64_t a1, void (*a2)(id, uint64_t))
{
  if (a1)
  {
    v9 = sub_100A3F8D4();
    a2(v9, v3 & 1);
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v8 = v4;
      swift_once();
      v4 = v8;
    }

    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10177C3B0, "#Durian: initiatePairingSession - manatee not available!", 56, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 48) = 0xD00000000000002FLL;
    *(inited + 56) = 0x8000000101353A90;
    v7 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    sub_1006953B0(v7);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    a2(v10, 1);
  }
}

uint64_t sub_1003CE3B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v36 = a3;
  v33 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v31 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138B360;
  aBlock[0] = *v4;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD000000000000026;
  *(v13 + 80) = 0x8000000101353970;
  v18 = v35;
  v19 = [v35 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  (*(v10 + 8))(v12, v9);
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v17;
  *(v13 + 112) = v20;
  *(v13 + 120) = v22;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v31, "%{public}@: %{public}@ for session - %@", 39, 2, v13);

  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = v18;
  v24 = v36;
  v23[4] = v33;
  v23[5] = v24;
  aBlock[4] = sub_100408164;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B330;
  v25 = _Block_copy(aBlock);

  v26 = v18;

  v27 = v34;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v28 = v39;
  v29 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v40 + 8))(v28, v29);
  (*(v37 + 8))(v27, v38);
}

uint64_t sub_1003CE8E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v56 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();
  v21 = *(a1 + v20);
  if (*(v21 + 16))
  {

    v22 = sub_1000210EC(v18);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      v51 = v9;
      v25 = *(v13 + 8);

      v25(v18, v12);

      v26 = v24;
      v54 = v24;
      v27 = sub_100FC752C();
      v52 = v28;
      v29 = [*(v26 + 16) identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1007AA0B4(v16);
      v25(v16, v12);
      swift_endAccess();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v30 = v51;
      v31 = v55;
      (*(v51 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v55);
      v53 = static OS_dispatch_queue.global(qos:)();
      (*(v30 + 8))(v11, v31);
      v32 = swift_allocObject();
      v33 = v57;
      *(v32 + 16) = v56;
      *(v32 + 24) = v33;
      *(v32 + 32) = v27;
      v34 = v52 & 1;
      *(v32 + 40) = v52 & 1;
      v69 = sub_10040817C;
      v70 = v32;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_100006684;
      v68 = &unk_10161B3D0;
      v35 = _Block_copy(&aBlock);

      sub_1004081B0(v27, v34);
      v36 = v58;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v37 = v59;
      v38 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v53;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);

      sub_100408170(v27, v34);
      goto LABEL_8;
    }
  }

  (*(v13 + 8))(v18, v12);
  v40 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    v50 = v40;
    swift_once();
    v40 = v50;
  }

  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, qword_10177C3B0, "#Durian: Invalidate session called for incorrect session.", 57, 2, _swiftEmptyArrayStorage);
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v42;
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x80000001013539E0;
  v43 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v44 = v55;
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v55);
  v45 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v44);
  v46 = swift_allocObject();
  v47 = v57;
  v46[2] = v56;
  v46[3] = v47;
  v46[4] = v43;
  v69 = sub_10040BAA4;
  v70 = v46;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100006684;
  v68 = &unk_10161B380;
  v48 = _Block_copy(&aBlock);

  v36 = v58;
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v37 = v59;
  v38 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);

LABEL_8:
  (*(v62 + 8))(v37, v38);
  (*(v60 + 8))(v36, v61);
}

uint64_t sub_1003CF218(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a1;
  v38 = a3;
  v34 = *v3;
  v35 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138B360;
  aBlock[0] = *v4;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD000000000000022;
  *(v13 + 80) = 0x8000000101353300;
  v18 = v37;
  v19 = [v37 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  (*(v10 + 8))(v12, v9);
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v17;
  *(v13 + 112) = v20;
  *(v13 + 120) = v22;
  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v32, "%{public}@: %{public}@ for session - %@", 39, 2, v13);

  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = v18;
  v24 = v34;
  v25 = v38;
  v23[4] = v35;
  v23[5] = v25;
  v23[6] = v24;
  aBlock[4] = sub_100407E48;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B240;
  v26 = _Block_copy(aBlock);

  v27 = v18;

  v28 = v36;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v29 = v41;
  v30 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v42 + 8))(v29, v30);
  (*(v39 + 8))(v28, v40);
}

void *sub_1003CF778(uint64_t a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v172 = a5;
  v176 = a3;
  v177 = a4;
  v7 = type metadata accessor for HashAlgorithm();
  v174 = *(v7 - 8);
  __chkstk_darwin(v7);
  v173 = (v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v159 - v14;
  v178 = a2;
  v16 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();
  v175 = a1;
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_11;
  }

  v19 = sub_1000210EC(v15);
  if ((v20 & 1) == 0)
  {

LABEL_11:
    v43 = *(v10 + 8);
    v43(v15, v9);
    v44 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v158 = v44;
      swift_once();
      v44 = v158;
    }

    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, qword_10177C3B0, "#Durian: Verification step reached for a session that was not instantiated from here.", 85, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v46;
    *(inited + 48) = 0xD000000000000048;
    *(inited + 56) = 0x8000000101353390;
    v47 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v181 = 6;
    sub_1006953B0(v47);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = v193;
    v176(v193, 1);

    v49 = [v178 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1007AA0B4(v13);
    v43(v13, v9);
    swift_endAccess();
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  v22 = *(v10 + 8);

  v22(v15, v9);

  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C3B0;
  os_signpost(_:dso:log:name:signpostID:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  type metadata accessor for Transaction();
  v24 = swift_allocObject();
  v25 = v178;
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;

  v26 = v25;
  static Transaction.asyncTask(name:block:)();

  v27 = [v26 collaborativeKeyC1];
  if (!v27)
  {
    v50 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v23, "#Durian: Commitment is not available to verify pairing info", 59, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_101385D80;
    *(v51 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v51 + 40) = v52;
    *(v51 + 48) = 0xD000000000000041;
    *(v51 + 56) = 0x8000000101353400;
    v53 = sub_100907E70(v51);
    swift_setDeallocating();
    sub_10000B3A8(v51 + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v181 = 6;
    sub_1006953B0(v53);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = v193;
    sub_100FC7E50(v193, 1, v176, v177);
LABEL_49:
  }

  v28 = v27;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = [v26 attestation];
  if (!v32)
  {
    v55 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v23, "#Durian: attestation(S1) is not available.", 42, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_101385D80;
    *(v56 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v56 + 40) = v57;
    *(v56 + 48) = 0xD000000000000042;
    *(v56 + 56) = 0x8000000101353480;
    v58 = sub_100907E70(v56);
    swift_setDeallocating();
    sub_10000B3A8(v56 + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v181 = 6;
    sub_1006953B0(v58);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = v193;
    sub_100FC7E50(v193, 1, v176, v177);
    sub_100016590(v29, v31);
    goto LABEL_49;
  }

  v165 = v23;
  v33 = v32;
  v178 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [v26 nonce];
  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = v39;
  v41 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    if (!v41)
    {
      sub_100016590(v37, v39);
      v42 = BYTE6(v39);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v41 != 2)
  {
    sub_100016590(v37, v39);
    v42 = 0;
    goto LABEL_23;
  }

  v60 = *(v37 + 16);
  v59 = *(v37 + 24);
  sub_100016590(v37, v40);
  v42 = v59 - v60;
  if (__OFSUB__(v59, v60))
  {
    __break(1u);
LABEL_20:
    result = sub_100016590(v37, v40);
    LODWORD(v42) = HIDWORD(v37) - v37;
    if (__OFSUB__(HIDWORD(v37), v37))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v42 = v42;
  }

LABEL_23:
  v168 = v7;
  v169 = v31;
  v62 = v42 - 1;
  if (__OFSUB__(v42, 1))
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v62 < 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_31;
  }

  v63 = v29;
  v64 = sub_100503ED4(0, v62, v178, v35);
  v66 = v65;
  v67 = [v26 nonce];
  v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v166 = v64;
  v167 = v66;
  LOBYTE(v67) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v64, v66, v68, v70);
  sub_100016590(v68, v70);
  if (v67)
  {
    My = type metadata accessor for Feature.FindMy();
    *(&v194 + 1) = My;
    *&v195 = sub_1003FD7F0(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v72 = sub_1000280DC(&v193);
    (*(*(My - 8) + 104))(v72, enum case for Feature.FindMy.alphaWasp(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&v193);
    v31 = v63;
    if (My)
    {
      v73 = [objc_opt_self() sharedInstance];
      v170 = [v73 isInternalBuild];
    }

    else
    {
      v170 = 0;
    }
  }

  else
  {
    v170 = 0;
    v31 = v63;
  }

  v29 = v169;
  *(v21 + 65) = v170;
  if (qword_1016946D0 != -1)
  {
    goto LABEL_56;
  }

LABEL_31:
  v74 = type metadata accessor for Logger();
  sub_1000076D4(v74, qword_10177ACC8);
  v75 = v178;
  sub_100017D5C(v178, v35);
  v76 = Logger.logObject.getter();
  v77 = v35;
  v78 = static os_log_type_t.debug.getter();
  v79 = os_log_type_enabled(v76, v78);
  v171 = v77;
  if (!v79)
  {
    sub_100016590(v75, v77);

LABEL_44:
    v91 = v26;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    v94 = os_log_type_enabled(v92, v93);
    v163 = v91;
    if (v94)
    {
      v95 = swift_slowAlloc();
      v161 = v95;
      v162 = swift_slowAlloc();
      *&v193 = v162;
      *v95 = 136315138;
      v96 = [v91 nonce];
      v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v160) = v93;
      v98 = v31;
      v100 = v99;

      v101 = v29;
      v102 = Data.hexString.getter();
      v103 = v21;
      v105 = v104;
      v106 = v100;
      v31 = v98;
      sub_100016590(v97, v106);
      v107 = sub_1000136BC(v102, v105, &v193);
      v21 = v103;
      v29 = v101;

      v108 = v161;
      *(v161 + 1) = v107;
      _os_log_impl(&_mh_execute_header, v92, v160, "Session nonce: %s", v108, 0xCu);
      sub_100007BAC(v162);
    }

    v109 = v168;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 67109120;
      *(v112 + 4) = v170;
      _os_log_impl(&_mh_execute_header, v110, v111, "isAlphaWasp ? %{BOOL}d", v112, 8u);
    }

    v113 = sub_100A7491C(v31, v29);
    v168 = v114;
    v116 = v115;
    v118 = v173;
    v117 = v174;
    v119 = v113;
    (*(v174 + 104))(v173, enum case for HashAlgorithm.sha256(_:), v109);
    v160 = v119;
    v161 = v116;
    v120 = Data.hash(algorithm:)();
    v122 = v121;
    (*(v117 + 8))(v118, v109);
    v123 = v163;
    v162 = v120;
    sub_1003FE810(v163, v31, v29, v120, v122, v180);
    v189 = v180[8];
    v190 = v180[9];
    v191 = v180[10];
    v192 = v180[11];
    v185 = v180[4];
    v186 = v180[5];
    v187 = v180[6];
    v188 = v180[7];
    v181 = v180[0];
    v182 = v180[1];
    v183 = v180[2];
    v184 = v180[3];
    v124 = sub_1000424A8(&v181);
    if (v124 == 1)
    {
      v125 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, v165, "#Durian: insufficient data to check pairing lock.", 49, 2, _swiftEmptyArrayStorage);
      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_101385D80;
      *(v126 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v126 + 40) = v127;
      *(v126 + 48) = 0xD000000000000048;
      *(v126 + 56) = 0x80000001013535A0;
      v128 = sub_100907E70(v126);
      swift_setDeallocating();
      sub_10000B3A8(v126 + 32, &qword_101696D88, &unk_10138B760);
      swift_deallocClassInstance();
      type metadata accessor for SPPairingSessionError(0);
      v179[0] = 6;
      sub_1006953B0(v128);

      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v129 = v193;
      sub_100FC7E50(v193, 1, v176, v177);
      sub_100016590(v178, v171);

      sub_100016590(v162, v122);
      sub_100016590(v160, v161);
      sub_100016590(v166, v167);
      sub_100016590(v31, v29);
    }

    else
    {
      v201 = v189;
      v202 = v190;
      v203 = v191;
      v204 = v192;
      v197 = v185;
      v198 = v186;
      v199 = v187;
      v200 = v188;
      v193 = v181;
      v194 = v182;
      v195 = v183;
      v196 = v184;
      *(v21 + 24) = v168;

      sub_1008895B4(&v193);
      v174 = v130;
      v131 = v123;
      v132 = dispatch_group_create();
      v133 = swift_allocObject();
      v165 = v122;
      v134 = v133;
      type metadata accessor for SPPairingSessionError(0);
      v179[24] = 1;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      *(v134 + 16) = v179[0];
      v173 = (v134 + 16);
      *(v134 + 24) = 1;
      dispatch_group_enter(v132);
      v135 = swift_allocObject();
      v164 = v31;
      *(v135 + 16) = v132;
      *(v135 + 24) = v21;
      *(v135 + 32) = v170;
      *(v135 + 40) = v134;
      *(v135 + 48) = v131;
      v136 = v175;
      v137 = v172;
      *(v135 + 56) = v175;
      *(v135 + 64) = v137;

      v138 = v131;
      v139 = v132;

      Future.addFailure(block:)();

      v140 = swift_allocObject();
      *(v140 + 16) = v139;
      *(v140 + 24) = v134;
      *(v140 + 32) = v136;
      *(v140 + 40) = v138;
      v141 = v202;
      *(v140 + 176) = v201;
      *(v140 + 192) = v141;
      v142 = v204;
      *(v140 + 208) = v203;
      *(v140 + 224) = v142;
      v143 = v198;
      *(v140 + 112) = v197;
      *(v140 + 128) = v143;
      v144 = v200;
      *(v140 + 144) = v199;
      *(v140 + 160) = v144;
      v145 = v194;
      *(v140 + 48) = v193;
      *(v140 + 64) = v145;
      v146 = v196;
      *(v140 + 80) = v195;
      *(v140 + 96) = v146;
      v147 = v161;
      v148 = v162;
      v149 = v165;
      *(v140 + 240) = v162;
      *(v140 + 248) = v149;
      *(v140 + 256) = v170;
      v159[1] = v21;
      v150 = v160;
      *(v140 + 264) = v21;
      *(v140 + 272) = v150;
      v151 = v172;
      *(v140 + 280) = v147;
      *(v140 + 288) = v151;

      v152 = v138;
      v153 = v139;

      sub_1000D2A70(v180, v179, &qword_10169F440, &unk_1013A0950);
      v154 = v149;
      sub_100017D5C(v148, v149);
      sub_100017D5C(v150, v147);
      Future.addSuccess(block:)();

      OS_dispatch_group.wait()();
      v155 = v173;
      swift_beginAccess();
      v156 = *v155;
      LODWORD(v132) = *(v134 + 24);
      v157 = v156;
      sub_100FC7E50(v156, v132, v176, v177);

      sub_10000B3A8(v180, &qword_10169F440, &unk_1013A0950);
      sub_100016590(v162, v154);

      sub_100016590(v150, v147);
      sub_100016590(v166, v167);
      sub_100016590(v178, v171);
      sub_100016590(v164, v169);
    }
  }

  v80 = swift_slowAlloc();
  result = swift_slowAlloc();
  *&v193 = result;
  *v80 = 134218242;
  v81 = v77 >> 62;
  v164 = v31;
  if ((v77 >> 62) > 1)
  {
    if (v81 != 2)
    {
      v82 = result;
      v83 = 0;
      goto LABEL_42;
    }

    v84 = v178;
    v86 = *(v178 + 2);
    v85 = *(v178 + 3);
    v87 = __OFSUB__(v85, v86);
    v83 = v85 - v86;
    if (!v87)
    {
      v82 = result;
LABEL_43:
      *(v80 + 4) = v83;
      sub_100016590(v84, v171);
      *(v80 + 12) = 2080;
      v88 = Data.hexString.getter();
      v90 = sub_1000136BC(v88, v89, &v193);

      *(v80 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v76, v78, "S1 count %ld - %s", v80, 0x16u);
      sub_100007BAC(v82);

      v29 = v169;
      v31 = v164;
      goto LABEL_44;
    }

    goto LABEL_58;
  }

  if (!v81)
  {
    v82 = result;
    v83 = BYTE6(v171);
LABEL_42:
    v84 = v178;
    goto LABEL_43;
  }

  v84 = v178;
  LODWORD(v83) = HIDWORD(v178) - v178;
  if (!__OFSUB__(HIDWORD(v178), v178))
  {
    v82 = result;
    v83 = v83;
    goto LABEL_43;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1003D0CEC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DispatchTime();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003D0DAC, 0, 0);
}

uint64_t sub_1003D0DAC()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 80) = v1;
  return _swift_task_switch(sub_1003D0DDC, v1, 0);
}

uint64_t sub_1003D0DDC(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[7];
  v5 = v1[8];
  static DispatchTime.now()();
  v6 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v6, v3, v4);
  swift_endAccess();
  v1[11] = type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1003D0EEC, 0, 0);
}

uint64_t sub_1003D0EEC()
{
  v1 = [*(v0 + 48) serialNumber];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 96) = v6;
    v7 = [v2 systemVersion];
    if (v7)
    {
      v8 = *(v0 + 80);
      *(v0 + 104) = v4;
      v9 = v7;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *(v0 + 112) = v10;
      *(v0 + 120) = v12;

      return _swift_task_switch(sub_1003D100C, v8, 0);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1003D100C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = v3;
  v6[8] = v4;

  static Transaction.asyncTask(name:block:)();

  v7 = v0[1];

  return v7();
}

void sub_1003D10F4(uint64_t a1, NSObject *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v41 = a7;
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v45 = a2;
  v8 = type metadata accessor for UUID();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  v37 = xmmword_101385D80;
  *(v12 + 16) = xmmword_101385D80;
  v47 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "#Durian: Pairing check request failed with error - %@", 53, 2, v12);

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (v42)
  {
    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177ACC8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "AlphaWasp: bypassing pairing lock check failure for hardcoded pairing", v20, 2u);
    }

    v21 = v43;
    swift_beginAccess();
    v22 = *(v21 + 16);
    v23 = v44;
    *(v21 + 16) = v44;
    *(v21 + 24) = 0;

    v24 = v23;
  }

  else
  {
    v47 = a1;
    swift_errorRetain();
    type metadata accessor for SPPairingSessionError(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      inited = swift_initStackObject();
      *(inited + 16) = v37;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v26;
      v27 = swift_allocObject();
      *(v27 + 16) = v37;
      v47 = a1;
      swift_errorRetain();
      v28 = String.init<A>(describing:)();
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = v16;
      *(v27 + 32) = v28;
      *(v27 + 40) = v29;
      *(inited + 48) = String.init(format:_:)();
      *(inited + 56) = v30;
      v31 = sub_100907E70(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
      v47 = 3;
      sub_1006953B0(v31);

      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    v32 = v46;
    v33 = v43;
    swift_beginAccess();
    v34 = *(v33 + 16);
    *(v33 + 16) = v32;
    *(v33 + 24) = 1;

    v35 = [v44 identifier];
    v36 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1007AA0B4(v36);
    (*(v39 + 8))(v36, v40);
    swift_endAccess();
  }

  dispatch_group_leave(v45);
}

void sub_1003D1634(__int128 *a1, NSObject *a2, NSObject *a3, NSObject *a4, NSObject *a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9, NSObject *a10, uint64_t a11, NSObject *a12)
{
  v141 = a7;
  v142 = a8;
  v140 = a6;
  v17 = type metadata accessor for LocalizationUtility.Table();
  v138 = *(v17 - 8);
  v139 = v17;
  __chkstk_darwin(v17);
  v137 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  isa = v19[-1].isa;
  __chkstk_darwin(v19);
  v145 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v156 = *a1;
  v157 = v22;
  v23 = a1[3];
  v158 = a1[2];
  v159 = v23;
  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_1000076D4(v24, qword_10177ACC8);
  sub_100407F70(&v156, &v152);
  v136 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  sub_100407FCC(&v156);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v143 = v19;
    v144 = a5;
    v135 = a3;
    v29 = a2;
    v30 = v28;
    v31 = a4;
    v32 = swift_slowAlloc();
    v147[0] = v32;
    *v30 = 136315138;
    v152 = v156;
    v153 = v157;
    v154 = v158;
    v155 = v159;
    sub_100407F70(&v156, v146);
    v33 = String.init<A>(describing:)();
    v35 = isa;
    v36 = sub_1000136BC(v33, v34, v147);

    *(v30 + 4) = v36;
    isa = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "pairingCheckResponse: %s", v30, 0xCu);
    sub_100007BAC(v32);
    a4 = v31;

    a2 = v29;
    v19 = v143;
    a5 = v144;
    a3 = v135;
  }

  if (v156 >= 2u)
  {
    v46 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v120 = v46;
      swift_once();
      v46 = v120;
    }

    os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, qword_10177C3B0, "#Durian: Device being paired is locked. Cannot proceed.", 55, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v48;
    *(inited + 48) = 0xD000000000000036;
    *(inited + 56) = 0x80000001013537D0;
    v49 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v152 = 18;
    sub_1006953B0(v49);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v50 = v146[0];
    swift_beginAccess();
    v51 = a3[2].isa;
    a3[2].isa = v50;
    LOBYTE(a3[3].isa) = 1;

    v52 = [a5 identifier];
  }

  else
  {
    if (v158 >> 60 != 15 && *(&v159 + 1) && *(*(&v158 + 1) + 16) == 2)
    {
      v130 = *(&v158 + 1);
      v129 = v159;
      v134 = *(&v157 + 1);
      v135 = v158;
      sub_100017D5C(*(&v157 + 1), v158);
      if (qword_1016946D8 != -1)
      {
        swift_once();
      }

      v132 = *algn_10177ACE8;
      v133 = qword_10177ACE0;
      v37 = [a5 nonce];
      v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      *(&v153 + 1) = &type metadata for Data;
      *&v154 = &protocol witness table for Data;
      *&v152 = v38;
      *(&v152 + 1) = v40;
      v41 = sub_1000035D0(&v152, &type metadata for Data);
      v42 = *v41;
      v43 = v41[1];
      v44 = v43 >> 62;
      if ((v43 >> 62) > 1)
      {
        if (v44 != 2)
        {
          memset(v147, 0, 14);
          v45 = v147;
          goto LABEL_46;
        }

        v143 = v19;
        v144 = isa;
        v19 = a3;
        a3 = a5;
        a5 = a2;
        a2 = *(v42 + 16);
        isa = *(v42 + 24);
        v41 = __DataStorage._bytes.getter();
        v58 = v41;
        if (v41)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v41))
          {
            __break(1u);
            goto LABEL_84;
          }

          v58 = (v58 + a2 - v41);
        }

        v59 = __OFSUB__(isa, a2);
        a2 = (isa - a2);
        if (!v59)
        {
          v60 = __DataStorage._length.getter();
          if (v60 >= a2)
          {
            v61 = a2;
          }

          else
          {
            v61 = v60;
          }

          v62 = v58 + v61;
          if (v58)
          {
            v63 = v62;
          }

          else
          {
            v63 = 0;
          }

          sub_100267F80(v58, v63, v146);
          a2 = a5;
          a5 = a3;
          a3 = v19;
          v19 = v143;
          isa = v144;
LABEL_47:
          LODWORD(v143) = a9;
          v70 = v146[0];
          v71 = v146[1];
          sub_100007BAC(&v152);
          v150 = v70;
          v151 = v71;
          Data.append(_:)();
          Data.append(_:)();
          v72 = sub_100A74FAC(v133, v132, v150, v151, v134, v135, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
          v131 = a2;
          if ((v72 & 1) == 0)
          {
            v74 = static os_log_type_t.error.getter();
            if (qword_101695068 != -1)
            {
              v124 = v74;
              swift_once();
              v74 = v124;
            }

            v140 = qword_10177C3B0;
            os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, qword_10177C3B0, "#Durian: Signature(S3) did not match", 36, 2, _swiftEmptyArrayStorage);
            if ((v143 & 1) == 0)
            {
              sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
              v113 = swift_initStackObject();
              *(v113 + 16) = xmmword_101385D80;
              *(v113 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v113 + 40) = v114;
              *(v113 + 48) = 0xD00000000000003FLL;
              *(v113 + 56) = 0x8000000101353720;
              v115 = sub_100907E70(v113);
              swift_setDeallocating();
              sub_10000B3A8(v113 + 32, &qword_101696D88, &unk_10138B760);
              type metadata accessor for SPPairingSessionError(0);
              *&v152 = 3;
              sub_1006953B0(v115);

              sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
              _BridgedStoredNSError.init(_:userInfo:)();
              v116 = v146[0];
              swift_beginAccess();
              v117 = a3[2].isa;
              a3[2].isa = v116;
              LOBYTE(a3[3].isa) = 1;

              v118 = [a5 identifier];
              v119 = v145;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              swift_beginAccess();
              sub_1007AA0B4(v119);
              (isa[1].isa)(v119, v19);
              swift_endAccess();

              sub_100006654(v134, v135);
              goto LABEL_75;
            }

            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              *v77 = 0;
              _os_log_impl(&_mh_execute_header, v75, v76, "AlphaWasp: bypassing pairing lock check failure for alphaWasp hardcoded pairing", v77, 2u);
            }

            swift_beginAccess();
            v78 = a3[2].isa;
            a3[2].isa = a5;
            LOBYTE(a3[3].isa) = 0;

            v73 = a5;
LABEL_56:
            v79 = v130[2];
            if (v79)
            {
              v128 = a4;
              v144 = a5;
              if (v79 != 1)
              {
                v81 = v130[4];
                v80 = v130[5];
                v82 = v130[6];
                v83 = v130[7];
                v148 = v81;
                v149 = v80;
                sub_100017D5C(v81, v80);
                sub_100017D5C(v81, v80);
                sub_100017D5C(v82, v83);
                Data.append(_:)();
                v84 = a10[4].isa;
                v142 = a10[5].isa;
                a10[4].isa = v81;
                a10[5].isa = v80;
                v130 = v81;
                v136 = v80;
                sub_100017D5C(v81, v80);
                sub_100006654(v84, v142);
                v85 = a10[6].isa;
                v86 = a10[7].isa;
                a10[6].isa = v82;
                a10[7].isa = v83;
                v127 = a10;
                v141 = v82;
                v142 = v83;
                sub_100017D5C(v82, v83);
                sub_100006654(v85, v86);
                if (v143)
                {
                  if (v157 >> 60 == 15)
                  {
                    v87 = 0;
                  }

                  else
                  {
                    v87 = *(&v156 + 1);
                  }

                  if (v157 >> 60 == 15)
                  {
                    v88 = 0xC000000000000000;
                  }

                  else
                  {
                    v88 = v157;
                  }

                  sub_10002E98C(*(&v156 + 1), v157);
                  goto LABEL_70;
                }

                v88 = v157;
                a2 = v131;
                a5 = v144;
                if (v157 >> 60 != 15)
                {
                  v87 = *(&v156 + 1);
                  sub_100017D5C(*(&v156 + 1), v157);
LABEL_70:
                  v128 = a12;
                  v95 = v137;
                  v96 = v138;
                  v97 = v139;
                  (*(v138 + 104))(v137, enum case for LocalizationUtility.Table.default(_:), v139);
                  static LocalizationUtility.localizedString(key:table:)();
                  (*(v96 + 8))(v95, v97);
                  v143 = v87;
                  v145 = v88;
                  v98 = Data._bridgeToObjectiveC()().super.isa;
                  v99 = Data._bridgeToObjectiveC()().super.isa;
                  v100 = Data._bridgeToObjectiveC()().super.isa;
                  v101 = Data._bridgeToObjectiveC()().super.isa;
                  v102 = String._bridgeToObjectiveC()();
                  v103 = String._bridgeToObjectiveC()();

                  v104 = Data._bridgeToObjectiveC()().super.isa;
                  v137 = v104;
                  v138 = v148;
                  v139 = v149;
                  v105 = Data._bridgeToObjectiveC()().super.isa;
                  v126 = v104;
                  v106 = v144;
                  [v144 updateWithSeed:v98 collaborativeKeyC2:v99 serverSignature:v100 serverPublicKey:v101 maskedAppleID:v102 userMessage:v103 baaIntermediateCert:v126 baaLeafCert:v105];

                  a4 = v127;
                  v107 = *(&v127->isa + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor);
                  v108 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
                  swift_beginAccess();
                  if (*(v107 + v108))
                  {
                    [v106 updatePairingLocation:?];
                  }

                  v19 = v106;
                  v73 = static os_log_type_t.default.getter();
                  a2 = v131;
                  if (qword_101695068 == -1)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_79;
                }

                v41 = static os_log_type_t.error.getter();
                if (qword_101695068 == -1)
                {
LABEL_68:
                  os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v140, "#Durian: Could not get necessary data from sever response", 57, 2, _swiftEmptyArrayStorage);
                  type metadata accessor for SPPairingSessionError(0);
                  v146[0] = 3;
                  sub_100032898(_swiftEmptyArrayStorage);
                  sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
                  _BridgedStoredNSError.init(_:userInfo:)();
                  v89 = v147[0];
                  swift_beginAccess();
                  v90 = a3[2].isa;
                  a3[2].isa = v89;
                  LOBYTE(a3[3].isa) = 1;

                  v91 = [a5 identifier];
                  v92 = v145;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  swift_beginAccess();
                  sub_1007AA0B4(v92);
                  (isa[1].isa)(v92, v19);
                  swift_endAccess();

                  sub_100006654(v134, v135);
                  sub_100016590(v141, v142);
                  sub_100016590(v130, v136);
                  v93 = v148;
                  v94 = v149;
LABEL_74:
                  sub_100016590(v93, v94);
LABEL_75:
                  sub_100016590(v150, v151);
                  goto LABEL_21;
                }

LABEL_85:
                v125 = v41;
                swift_once();
                v41 = v125;
                goto LABEL_68;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_79:
            v122 = v73;
            swift_once();
            v73 = v122;
LABEL_73:
            os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v140, "#Durian: Verification completed successfully. Collaborative share is added to session.", 86, 2, _swiftEmptyArrayStorage);
            v109 = a4[2].isa;
            a4[2].isa = v19;
            v110 = v19;

            swift_beginAccess();
            v111 = a3[2].isa;
            a3[2].isa = v110;
            LOBYTE(a3[3].isa) = 0;

            v112 = v110;
            static os_signpost_type_t.end.getter();
            os_signpost(_:dso:log:name:signpostID:)();
            static os_signpost_type_t.begin.getter();
            os_signpost(_:dso:log:name:signpostID:)();
            sub_100006654(v134, v135);
            sub_100016590(v130, v136);
            sub_100016590(v141, v142);
            sub_100016590(v143, v145);
            v93 = v138;
            v94 = v139;
            goto LABEL_74;
          }

          v41 = static os_log_type_t.default.getter();
          if (qword_101695068 == -1)
          {
LABEL_49:
            v140 = qword_10177C3B0;
            v73 = os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, qword_10177C3B0, "#Durian: Signature(S3) verified.", 32, 2, _swiftEmptyArrayStorage);
            goto LABEL_56;
          }

LABEL_82:
          v123 = v41;
          swift_once();
          v41 = v123;
          goto LABEL_49;
        }
      }

      else
      {
        if (!v44)
        {
          v147[0] = *v41;
          LOWORD(v147[1]) = v43;
          BYTE2(v147[1]) = BYTE2(v43);
          BYTE3(v147[1]) = BYTE3(v43);
          BYTE4(v147[1]) = BYTE4(v43);
          BYTE5(v147[1]) = BYTE5(v43);
          v45 = (v147 + BYTE6(v43));
LABEL_46:
          sub_100267F80(v147, v45, v146);
          goto LABEL_47;
        }

        v128 = a4;
        a4 = isa;
        v143 = v19;
        v19 = a3;
        a3 = a5;
        a5 = a2;
        isa = v42;
        v64 = v42 >> 32;
        a2 = (v64 - isa);
        if (v64 >= isa)
        {
          v65 = __DataStorage._bytes.getter();
          if (!v65)
          {
LABEL_38:
            isa = a4;
            v66 = __DataStorage._length.getter();
            if (v66 >= a2)
            {
              v67 = a2;
            }

            else
            {
              v67 = v66;
            }

            v68 = &v65[v67];
            if (v65)
            {
              v69 = v68;
            }

            else
            {
              v69 = 0;
            }

            sub_100267F80(v65, v69, v146);
            a2 = a5;
            a5 = a3;
            a3 = v19;
            v19 = v143;
            a4 = v128;
            goto LABEL_47;
          }

          v41 = __DataStorage._offset.getter();
          if (!__OFSUB__(isa, v41))
          {
            v65 += isa - v41;
            goto LABEL_38;
          }

LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_82;
    }

    v53 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v121 = v53;
      swift_once();
      v53 = v121;
    }

    os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, qword_10177C3B0, "#Durian: Could not get necessary data from sever response", 57, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPPairingSessionError(0);
    *&v152 = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = v146[0];
    swift_beginAccess();
    v55 = a3[2].isa;
    a3[2].isa = v54;
    LOBYTE(a3[3].isa) = 1;

    v52 = [a5 identifier];
  }

  v56 = v52;
  v57 = v145;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1007AA0B4(v57);
  (isa[1].isa)(v57, v19);
  swift_endAccess();

LABEL_21:
  dispatch_group_leave(a2);
}