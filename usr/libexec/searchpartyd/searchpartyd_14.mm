void sub_1001A5B10()
{
  v1 = v0[28] + 1;
  if (v1 == v0[27])
  {

    type metadata accessor for Transaction();
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v4 = v0[1];

    v4();
  }

  else
  {
    v0[28] = v1;
    v5 = v0[26];
    if (v1 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = v0[14];
      v7 = v0[10];
      v8 = v0[6];
      v9 = type metadata accessor for MemberSharingCircle(0);
      v6(v7, v5 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v1 + *(v9 + 28), v8);
      v10 = swift_task_alloc();
      v0[29] = v10;
      *v10 = v0;
      v10[1] = sub_1001A59A8;
      v11 = v0[10];

      sub_1003B7584(v11);
    }
  }
}

uint64_t sub_1001A5D8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A5E14()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1001A6078;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1001A5F3C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001A5F3C()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001A6078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A6108(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for OwnedBeaconRecord(0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001A6200, v1, 0);
}

uint64_t sub_1001A6200()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1001BA80C(v7, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "forceStopSharingAfterUnpairing ownedBeacon %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_1001BA80C(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v14 = *(v0 + 72);
  v15 = *(*(v0 + 32) + 136);
  *(v0 + 88) = v15;
  *(v0 + 136) = *(v14 + 20);

  return _swift_task_switch(sub_1001A6470, v15, 0);
}

uint64_t sub_1001A6470()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  (*(v5 + 16))(v3, *(v0 + 24) + *(v0 + 136), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v0 + 96) = v8;
  *(v8 + 16) = v1;
  (*(v5 + 32))(v8 + v6, v3, v4);
  *(v8 + v7) = 0;

  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1001A6600;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v8, v10);
}

uint64_t sub_1001A6600()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_1001A672C, v1, 0);
}

uint64_t sub_1001A672C()
{
  v1 = v0[2];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1001A67D8;

  return sub_1003C8598(v1);
}

uint64_t sub_1001A67D8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1001A6A24;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1001A6900;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001A6900()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001A6A24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A6AA0(char a1, uint64_t a2, char a3)
{
  *(v4 + 210) = a3;
  *(v4 + 416) = a2;
  *(v4 + 424) = v3;
  *(v4 + 209) = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v4 + 432) = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C08, &unk_101390730);
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v5 = type metadata accessor for BeaconSharingService.PendingExpirationTask(0);
  *(v4 + 464) = v5;
  *(v4 + 472) = *(v5 - 8);
  *(v4 + 480) = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  *(v4 + 488) = v6;
  *(v4 + 496) = *(v6 - 8);
  *(v4 + 504) = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock.Instant();
  *(v4 + 512) = v7;
  v8 = *(v7 - 8);
  *(v4 + 520) = v8;
  *(v4 + 528) = *(v8 + 64);
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v9 = type metadata accessor for MemberPeerTrust(0);
  *(v4 + 584) = v9;
  *(v4 + 592) = *(v9 - 8);
  *(v4 + 600) = swift_task_alloc();
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  *(v4 + 640) = swift_task_alloc();
  *(v4 + 648) = swift_task_alloc();
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  *(v4 + 672) = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  *(v4 + 680) = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v4 + 704) = v10;
  *(v4 + 712) = *(v10 - 8);
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v4 + 768) = v11;
  v12 = *(v11 - 8);
  *(v4 + 776) = v12;
  *(v4 + 784) = *(v12 + 64);
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();
  *(v4 + 856) = swift_task_alloc();
  *(v4 + 864) = swift_task_alloc();
  *(v4 + 872) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 888) = swift_task_alloc();
  v13 = type metadata accessor for SharedBeaconRecord(0);
  *(v4 + 896) = v13;
  *(v4 + 904) = *(v13 - 8);
  *(v4 + 912) = swift_task_alloc();
  *(v4 + 920) = swift_task_alloc();
  v14 = type metadata accessor for MemberSharingCircle(0);
  *(v4 + 928) = v14;
  *(v4 + 936) = *(v14 - 8);
  *(v4 + 944) = swift_task_alloc();
  *(v4 + 952) = swift_task_alloc();
  *(v4 + 960) = swift_task_alloc();
  *(v4 + 968) = swift_task_alloc();
  *(v4 + 976) = swift_task_alloc();
  *(v4 + 984) = swift_task_alloc();
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  *(v4 + 1008) = swift_task_alloc();
  *(v4 + 1016) = swift_task_alloc();
  *(v4 + 1024) = swift_task_alloc();
  *(v4 + 1032) = swift_task_alloc();
  *(v4 + 1040) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v4 + 1048) = swift_task_alloc();
  *(v4 + 1056) = swift_task_alloc();

  return _swift_task_switch(sub_1001A71C0, v3, 0);
}

uint64_t sub_1001A71C0()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1064) = v1;
  *(v0 + 1072) = sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 210);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 224) = *(v0 + 416);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v9;
    }

    v10 = sub_1000136BC(v7, v8, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s BeaconSharingService: Returning all shares.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = *(v0 + 1056);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v14 = *(v0 + 424);
  *(v0 + 216) = &_swiftEmptySetSingleton;
  *(v0 + 384) = &_swiftEmptySetSingleton;
  *(v0 + 1080) = swift_allocBox();
  *(v0 + 1088) = v15;
  static Date.distantFuture.getter();
  v16 = *(v12 + 56);
  *(v0 + 1096) = v16;
  *(v0 + 1104) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v11, 1, 1, v13);
  v17 = *(v14 + 136);
  *(v0 + 1112) = v17;

  return _swift_task_switch(sub_1001A73E8, v17, 0);
}

uint64_t sub_1001A73E8()
{

  v1 = swift_task_alloc();
  v0[140] = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  v0[141] = v2;
  *v1 = v0;
  v1[1] = sub_1001A74D8;
  v3 = v0[139];

  return unsafeBlocking<A>(context:_:)(v0 + 36, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_1001A74D8()
{
  v1 = *(*v0 + 1112);

  return _swift_task_switch(sub_1001A75F0, v1, 0);
}

uint64_t sub_1001A75F0()
{
  v1 = v0[53];
  v0[142] = v0[36];
  return _swift_task_switch(sub_1001A7614, v1, 0);
}

uint64_t sub_1001A7614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1136);
  v5 = *(v4 + 2);
  *(v3 + 1144) = v5;
  if (v5)
  {
    v6 = *(v3 + 936);
    v7 = *(v3 + 928);
    v8 = *(v6 + 80);
    *(v3 + 212) = v8;
    *(v3 + 1544) = enum case for Feature.FindMy.itemSharing(_:);
    *(v3 + 1152) = 0;
    if (*(v4 + 2))
    {
      v9 = *(v3 + 1112);
      v10 = *(v3 + 1040);
      *(v3 + 1160) = *(v6 + 72);
      sub_1001BB2E0(v4 + ((v8 + 32) & ~v8), v10, type metadata accessor for MemberSharingCircle);
      *(v3 + 1548) = *(v7 + 24);
      v4 = sub_1001A7768;
      a2 = v9;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v4, a2, a3);
  }

  else
  {

    v11 = swift_task_alloc();
    *(v3 + 1504) = v11;
    *v11 = v3;
    v11[1] = sub_1001AC3AC;
    v12 = *(v3 + 209);

    return sub_1001AEEC0(v12);
  }
}

uint64_t sub_1001A7768()
{
  v1 = *(v0 + 1548);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 864);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v5 + 16);
  *(v0 + 1168) = v7;
  *(v0 + 1176) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3 + v1, v6);
  v8 = *(v5 + 80);
  *(v0 + 1552) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 1184) = v10;
  *(v10 + 16) = v2;
  v11 = *(v5 + 32);
  *(v0 + 1192) = v11;
  *(v0 + 1200) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v4, v6);

  v12 = swift_task_alloc();
  *(v0 + 1208) = v12;
  *v12 = v0;
  v12[1] = sub_1001A78FC;
  v13 = *(v0 + 888);
  v14 = *(v0 + 872);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7DC, v10, v14);
}

uint64_t sub_1001A78FC()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_1001A7A28, v1, 0);
}

uint64_t sub_1001A7A28()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v1 + 48);
  *(v0 + 1216) = v4;
  *(v0 + 1224) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
LABEL_11:
    v11 = *(v0 + 1112);
    v12 = sub_1001A7F74;
    goto LABEL_12;
  }

  v5 = *(v0 + 1544);
  sub_1001BAAE8(v3, *(v0 + 920), type metadata accessor for SharedBeaconRecord);
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 40) = My;
  *(v0 + 48) = sub_1001B8FE4(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v7 = sub_1000280DC((v0 + 16));
  (*(*(My - 8) + 104))(v7, v5, My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 16));
  if (My)
  {
    v8 = *(v0 + 920);
    v9 = *(v8 + *(*(v0 + 896) + 64));
    v10 = v9 == 4 || v9 == 1;
    if (!v10 || *(v0 + 209) == 1)
    {
      sub_1001BA80C(v8, type metadata accessor for SharedBeaconRecord);
      goto LABEL_11;
    }
  }

  sub_1001BB2E0(*(v0 + 1040), *(v0 + 1032), type metadata accessor for MemberSharingCircle);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 210);
    v17 = swift_slowAlloc();
    *(v0 + 392) = swift_slowAlloc();
    *v17 = 136315651;
    if (v16)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 400) = *(v0 + 416);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v23;
    }

    v24 = *(v0 + 1032);
    v40 = *(v0 + 920);
    v25 = sub_1000136BC(v18, v19, (v0 + 392));

    *(v17 + 4) = v25;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_1001BA80C(v24, type metadata accessor for MemberSharingCircle);
    v29 = sub_1000136BC(v26, v28, (v0 + 392));

    *(v17 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s Filtering beacon %{private,mask.hash}s", v17, 0x20u);
    swift_arrayDestroy();

    v22 = v40;
  }

  else
  {
    v20 = *(v0 + 1032);
    v21 = *(v0 + 920);

    sub_1001BA80C(v20, type metadata accessor for MemberSharingCircle);
    v22 = v21;
  }

  sub_1001BA80C(v22, type metadata accessor for SharedBeaconRecord);
  v12 = sub_1001BA80C(*(v0 + 1040), type metadata accessor for MemberSharingCircle);
  v30 = *(v0 + 1152) + 1;
  if (v30 != *(v0 + 1144))
  {
    *(v0 + 1152) = v30;
    v34 = *(v0 + 1136);
    if (v30 >= *(v34 + 16))
    {
      __break(1u);
      return _swift_task_switch(v12, v11, v13);
    }

    v35 = *(v0 + 1112);
    v36 = *(v0 + 1040);
    v37 = *(v0 + 928);
    v38 = v34 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
    v39 = *(*(v0 + 936) + 72);
    *(v0 + 1160) = v39;
    sub_1001BB2E0(v38 + v39 * v30, v36, type metadata accessor for MemberSharingCircle);
    *(v0 + 1548) = *(v37 + 24);
    v12 = sub_1001A7768;
    v11 = v35;
LABEL_12:
    v13 = 0;

    return _swift_task_switch(v12, v11, v13);
  }

  v31 = swift_task_alloc();
  *(v0 + 1504) = v31;
  *v31 = v0;
  v31[1] = sub_1001AC3AC;
  v32 = *(v0 + 209);

  return sub_1001AEEC0(v32);
}

uint64_t sub_1001A7F74()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 864);
  v4 = *(v0 + 768);
  v5 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v3, *(v0 + 1040) + *(v0 + 1548), v4);
  v6 = swift_allocObject();
  *(v0 + 1232) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1240) = v7;
  *v7 = v0;
  v7[1] = sub_1001A80D8;
  v8 = *(v0 + 880);
  v9 = *(v0 + 872);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A4, v6, v9);
}

uint64_t sub_1001A80D8()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_1001A8204, v1, 0);
}

uint64_t sub_1001A8204()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 880);
  if ((*(v0 + 1216))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
LABEL_10:
    v12 = *(v0 + 1112);

    return _swift_task_switch(sub_1001A88C4, v12, 0);
  }

  v3 = *(v0 + 912);
  sub_1001BAAE8(v2, v3, type metadata accessor for SharedBeaconRecord);
  if (*(v3 + *(v1 + 64)) != 5)
  {
    sub_1001BA80C(*(v0 + 912), type metadata accessor for SharedBeaconRecord);
    goto LABEL_10;
  }

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 1040);
  v5 = *(v0 + 1024);
  *(v0 + 1248) = sub_1000076D4(*(v0 + 1064), qword_10177AE40);
  sub_1001BB2E0(v4, v5, type metadata accessor for MemberSharingCircle);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 210);
    v9 = swift_slowAlloc();
    *(v0 + 368) = swift_slowAlloc();
    *v9 = 136315651;
    if (v8)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 376) = *(v0 + 416);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v14;
    }

    v15 = *(v0 + 1024);
    v16 = sub_1000136BC(v10, v11, (v0 + 368));

    *(v9 + 4) = v16;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001BA80C(v15, type metadata accessor for MemberSharingCircle);
    v20 = sub_1000136BC(v17, v19, (v0 + 368));

    *(v9 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Imported circle found for share: %{private,mask.hash}s ", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 1024);

    sub_1001BA80C(v13, type metadata accessor for MemberSharingCircle);
  }

  v21 = swift_task_alloc();
  *(v0 + 1256) = v21;
  *v21 = v0;
  v21[1] = sub_1001A85F0;
  v22 = *(v0 + 1040);
  v23 = *(v0 + 912);

  return sub_1001AD894(v23, v22);
}

uint64_t sub_1001A85F0(uint64_t a1)
{
  v4 = *v2;
  v4[158] = v1;

  v5 = v4[53];
  if (v1)
  {
    v6 = sub_1001AD4A0;
  }

  else
  {
    v4[159] = a1;
    v6 = sub_1001A872C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001A872C()
{
  v1 = *(v0 + 912);
  sub_1005C9D24(*(v0 + 1272));
  sub_1001BA80C(v1, type metadata accessor for SharedBeaconRecord);
  v2 = sub_1001BA80C(*(v0 + 1040), type metadata accessor for MemberSharingCircle);
  v5 = *(v0 + 1152) + 1;
  if (v5 == *(v0 + 1144))
  {

    v6 = swift_task_alloc();
    *(v0 + 1504) = v6;
    *v6 = v0;
    v6[1] = sub_1001AC3AC;
    v7 = *(v0 + 209);

    return sub_1001AEEC0(v7);
  }

  else
  {
    *(v0 + 1152) = v5;
    v9 = *(v0 + 1136);
    if (v5 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = *(v0 + 1112);
      v11 = *(v0 + 1040);
      v12 = *(v0 + 928);
      v13 = v9 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
      v14 = *(*(v0 + 936) + 72);
      *(v0 + 1160) = v14;
      sub_1001BB2E0(v13 + v14 * v5, v11, type metadata accessor for MemberSharingCircle);
      *(v0 + 1548) = *(v12 + 24);
      v2 = sub_1001A7768;
      v3 = v10;
      v4 = 0;
    }

    return _swift_task_switch(v2, v3, v4);
  }
}

uint64_t sub_1001A88C4()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 864);
  v4 = *(v0 + 768);
  v5 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v3, *(v0 + 1040) + *(v0 + 1548), v4);
  v6 = swift_allocObject();
  *(v0 + 1280) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1288) = v7;
  *v7 = v0;
  v7[1] = sub_1001A8A28;
  v8 = *(v0 + 1128);

  return unsafeBlocking<A>(context:_:)(v0 + 272, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7F4, v6, v8);
}

uint64_t sub_1001A8A28()
{
  v1 = *(*v0 + 1112);

  return _swift_task_switch(sub_1001A8B54, v1, 0);
}

uint64_t sub_1001A8B54()
{
  v1 = v0[53];
  v0[162] = v0[34];
  return _swift_task_switch(sub_1001A8B78, v1, 0);
}

uint64_t sub_1001A8B78(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 209) & 1) == 0)
  {
    v4 = *(v3 + 1296);
    if (*(*(v3 + 1040) + *(*(v3 + 928) + 40)) == 4)
    {
      v5 = *(v4 + 16);
      if (v5 >= 2)
      {
        v6 = 0;
        v7 = v4 + ((*(v3 + 212) + 32) & ~*(v3 + 212));
        while (1)
        {
          if (v5 == v6)
          {
            goto LABEL_12;
          }

          if (v6 >= *(v4 + 16))
          {
            break;
          }

          v8 = *(v3 + 1016);
          v9 = *(v3 + 928);
          sub_1001BB2E0(v7 + *(v3 + 1160) * v6++, v8, type metadata accessor for MemberSharingCircle);
          LODWORD(v9) = *(v8 + *(v9 + 40));
          a1 = sub_1001BA80C(v8, type metadata accessor for MemberSharingCircle);
          if (v9 != 4)
          {

            v10 = Logger.logObject.getter();
            v11 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v10, v11))
            {
              v12 = *(v3 + 210);
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              *(v3 + 336) = v14;
              *v13 = 136315394;
              if (v12)
              {
                v15 = 0;
                v16 = 0xE000000000000000;
              }

              else
              {
                *(v3 + 344) = *(v3 + 416);
                v15 = dispatch thunk of CustomStringConvertible.description.getter();
                v16 = v17;
              }

              v18 = sub_1000136BC(v15, v16, (v3 + 336));

              *(v13 + 4) = v18;
              *(v13 + 12) = 2048;
              v19 = *(v4 + 16);

              *(v13 + 14) = v19 - 1;

              _os_log_impl(&_mh_execute_header, v10, v11, "%s Filtering out tentativelyRevoked share that has %ld other member circle(s).", v13, 0x16u);
              sub_100007BAC(v14);
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            a1 = sub_1001BA80C(*(v3 + 1040), type metadata accessor for MemberSharingCircle);
            v20 = *(v3 + 1152) + 1;
            if (v20 == *(v3 + 1144))
            {

              v21 = swift_task_alloc();
              *(v3 + 1504) = v21;
              *v21 = v3;
              v21[1] = sub_1001AC3AC;
              v22 = *(v3 + 209);

              return sub_1001AEEC0(v22);
            }

            *(v3 + 1152) = v20;
            v24 = *(v3 + 1136);
            if (v20 < *(v24 + 16))
            {
              v25 = *(v3 + 1112);
              v26 = *(v3 + 1040);
              v27 = *(v3 + 928);
              v28 = v24 + ((*(v3 + 212) + 32) & ~*(v3 + 212));
              v29 = *(*(v3 + 936) + 72);
              *(v3 + 1160) = v29;
              sub_1001BB2E0(v28 + v29 * v20, v26, type metadata accessor for MemberSharingCircle);
              *(v3 + 1548) = *(v27 + 24);
              a1 = sub_1001A7768;
              a2 = v25;
              goto LABEL_13;
            }

LABEL_26:
            __break(1u);
            return _swift_task_switch(a1, a2, a3);
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }
  }

LABEL_12:

  a2 = *(v3 + 1112);
  a1 = sub_1001A8F20;
LABEL_13:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1001A8F20()
{

  v1 = swift_task_alloc();
  *(v0 + 1304) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1001A9000;
  v3 = *(v0 + 1112);

  return unsafeBlocking<A>(context:_:)(v0 + 264, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1001A9000()
{
  v1 = *(*v0 + 1112);

  return _swift_task_switch(sub_1001A9118, v1, 0);
}

uint64_t sub_1001A9118()
{
  v1 = v0[53];
  v0[164] = v0[33];
  return _swift_task_switch(sub_1001A913C, v1, 0);
}

uint64_t sub_1001A913C()
{
  v0 = getuid();
  sub_1000294F0(v0);

  return _swift_task_switch(sub_1001A91AC, 0, 0);
}

uint64_t sub_1001A91AC()
{
  v1 = *(v0 + 1548);
  v2 = *(v0 + 1040);
  v3 = swift_task_alloc();
  *(v0 + 1320) = v3;
  *v3 = v0;
  v3[1] = sub_1001A926C;
  v4 = *(v0 + 680);

  return sub_10068A150(v4, v2 + v1);
}

uint64_t sub_1001A926C()
{
  v2 = *v1;
  *(*v1 + 1328) = v0;

  if (v0)
  {

    v3 = sub_1001A9C08;
    v4 = 0;
  }

  else
  {
    v5 = v2[107];
    v6 = v2[96];
    v7 = v2[53];
    v8 = *(v2[97] + 8);
    v2[167] = v8;
    v8(v5, v6);

    v3 = sub_1001A93C8;
    v4 = v7;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1001A93C8()
{
  v1 = *(v0 + 680);
  v2 = type metadata accessor for KeyDropLostItemDates(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C20, &qword_101390748);
    v84 = *(v0 + 1328);
    (*(*(v0 + 712) + 56))(*(v0 + 696), 1, 1, *(v0 + 704));
LABEL_5:
    v7 = *(v0 + 1040);
    v8 = *(v0 + 1008);
    sub_10000B3A8(*(v0 + 696), &unk_101696900, &unk_10138B1E0);
    sub_1001BB2E0(v7, v8, type metadata accessor for MemberSharingCircle);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 210);
      v12 = swift_slowAlloc();
      *(v0 + 320) = swift_slowAlloc();
      *v12 = 136315394;
      if (v11)
      {
        v13 = 0;
        v14 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 328) = *(v0 + 416);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v23;
      }

      v24 = *(v0 + 1008);
      v25 = sub_1000136BC(v13, v14, (v0 + 320));

      *(v12 + 4) = v25;
      *(v12 + 12) = 2080;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_1001BA80C(v24, type metadata accessor for MemberSharingCircle);
      v29 = sub_1000136BC(v26, v28, (v0 + 320));

      *(v12 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Beacon %s is not delegated.", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v15 = *(v0 + 1008);

      sub_1001BA80C(v15, type metadata accessor for MemberSharingCircle);
    }

    v30 = 0;
    goto LABEL_19;
  }

  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  sub_1000D2A70(v1, v5, &unk_101696900, &unk_10138B1E0);
  sub_1001BA80C(v1, type metadata accessor for KeyDropLostItemDates);
  v6 = *(v3 + 48);
  if (v6(v5, 1, v4) == 1)
  {
    v84 = *(v0 + 1328);
    goto LABEL_5;
  }

  v16 = *(v0 + 760);
  v17 = *(v0 + 704);
  v18 = *(v0 + 688);
  v19 = *(*(v0 + 712) + 32);
  v19(v16, *(v0 + 696), v17);
  type metadata accessor for DelegatedShareUseCase();
  sub_10059E4D4(v16);
  v20 = v6(v18, 1, v17);
  v21 = *(v0 + 704);
  v22 = *(v0 + 688);
  if (v20 == 1)
  {
    static Date.distantFuture.getter();
    if (v6(v22, 1, v21) != 1)
    {
      sub_10000B3A8(*(v0 + 688), &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v19(*(v0 + 752), *(v0 + 688), *(v0 + 704));
  }

  v31 = *(v0 + 744);
  v32 = *(v0 + 712);
  v33 = *(v0 + 704);
  (*(v32 + 16))(v31, *(v0 + 1088), v33);
  v34 = static Date.< infix(_:_:)();
  v35 = *(v32 + 8);
  v35(v31, v33);
  if (v34)
  {
    v36 = *(v0 + 1168);
    v83 = *(v0 + 1096);
    v85 = *(v0 + 1088);
    v37 = *(v0 + 1056);
    v38 = *(v0 + 1040);
    v39 = *(v0 + 928);
    v40 = *(v0 + 768);
    v41 = *(v0 + 712);
    v81 = *(v0 + 704);
    v82 = *(v0 + 752);
    sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
    v36(v37, v38 + *(v39 + 28), v40);
    v83(v37, 0, 1, v40);
    (*(v41 + 24))(v85, v82, v81);
  }

  v42 = *(v0 + 760);
  v43 = *(v0 + 752);
  v44 = *(v0 + 744);
  v45 = *(v0 + 704);
  static Date.trustedNow.getter(v44);
  Date.timeIntervalSince(_:)();
  v47 = v46;
  v35(v44, v45);
  v35(v43, v45);
  v35(v42, v45);
  v30 = v47 > 0.0;
  v84 = *(v0 + 1328);
LABEL_19:
  *(v0 + 211) = v30;
  *(v0 + 1352) = *(&v84 + 1);
  v48 = *(v0 + 1040);
  v49 = *(v48 + *(*(v0 + 928) + 36));
  *(v0 + 1360) = v49;
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = sub_1003A85FC(*(v49 + 16), 0);
    v52 = sub_1003CC2CC();
    v53 = *(v0 + 56);

    v54 = sub_1000128F8(v53);
    if (v52 != v50)
    {
      __break(1u);
      return _swift_task_switch(v54, v55, v56);
    }

    v48 = *(v0 + 1040);
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  v57 = swift_task_alloc();
  *(v57 + 16) = v48;
  v58 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BA86C, v57, v51);
  *(v0 + 1368) = v58;

  v59 = *(v58 + 32);
  *(v0 + 1568) = v59;
  v60 = -1;
  v61 = -1 << v59;
  v62 = *(v58 + 64);
  if (-v61 < 64)
  {
    v60 = ~(-1 << -v61);
  }

  *(v0 + 1392) = *(&v84 + 1);
  *(v0 + 1376) = v84;
  v63 = v60 & v62;
  if (v63)
  {
    v64 = 0;
    v65 = *(v0 + 1368);
LABEL_30:
    *(v0 + 1408) = v64;
    *(v0 + 1400) = v63;
    v68 = *(v0 + 1192);
    v69 = *(v0 + 1168);
    v86 = *(v0 + 1112);
    v70 = *(v0 + 768);
    v71 = *(v0 + 672);
    v72 = *(v0 + 664);
    v73 = *(v0 + 632);
    v74 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v63)) | (v64 << 6));
    v69(v71, *(v65 + 48) + v74, v70);
    v75 = *(v65 + 56);
    v76 = *(v73 + 48);
    v69(v71 + v76, v75 + v74, v70);
    v77 = *(v73 + 48);
    *(v0 + 1556) = v77;
    v68(v72, v71, v70);
    v68(v72 + v77, v71 + v76, v70);
    v54 = sub_1001AA1B4;
    v55 = v86;
  }

  else
  {
    v66 = 0;
    v67 = ((63 - v61) >> 6) - 1;
    v65 = *(v0 + 1368);
    while (v67 != v66)
    {
      v64 = v66 + 1;
      v63 = *(v65 + 8 * v66++ + 72);
      if (v63)
      {
        goto LABEL_30;
      }
    }

    v78 = *(v0 + 1040);
    v79 = *(v0 + 928);

    *(v0 + 1480) = qword_101390FD8[*(v78 + *(v79 + 40))];
    v55 = *(v0 + 1112);
    *(v0 + 1564) = *(*(v0 + 928) + 32);
    v54 = sub_1001AB8C0;
  }

  v56 = 0;

  return _swift_task_switch(v54, v55, v56);
}

uint64_t sub_1001A9C08()
{
  v1 = v0[107];
  v2 = v0[96];
  v3 = v0[53];
  v4 = *(v0[97] + 8);
  v0[168] = v4;
  v4(v1, v2);

  return _swift_task_switch(sub_1001A9C98, v3, 0);
}

uint64_t sub_1001A9C98()
{
  v1 = *(v0 + 1344);
  (*(*(v0 + 712) + 56))(*(v0 + 696), 1, 1, *(v0 + 704));
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1008);
  sub_10000B3A8(*(v0 + 696), &unk_101696900, &unk_10138B1E0);
  sub_1001BB2E0(v2, v3, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v51 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 210);
    v7 = swift_slowAlloc();
    *(v0 + 320) = swift_slowAlloc();
    *v7 = 136315394;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 328) = *(v0 + 416);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v0 + 1008);
    v13 = sub_1000136BC(v8, v9, (v0 + 320));

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1001BA80C(v12, type metadata accessor for MemberSharingCircle);
    v17 = sub_1000136BC(v14, v16, (v0 + 320));

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Beacon %s is not delegated.", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 1008);

    sub_1001BA80C(v10, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 211) = 0;
  *(v0 + 1352) = v1;
  v18 = *(v0 + 1040);
  v19 = *(v18 + *(*(v0 + 928) + 36));
  *(v0 + 1360) = v19;
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = sub_1003A85FC(*(v19 + 16), 0);
    v22 = sub_1003CC2CC();
    v23 = *(v0 + 56);

    v24 = sub_1000128F8(v23);
    if (v22 != v20)
    {
      __break(1u);
      return _swift_task_switch(v24, v25, v26);
    }

    v18 = *(v0 + 1040);
    v1 = v51;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v27 = swift_task_alloc();
  *(v27 + 16) = v18;
  v28 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BA86C, v27, v21);
  *(v0 + 1368) = v28;

  v29 = *(v28 + 32);
  *(v0 + 1568) = v29;
  v30 = -1;
  v31 = -1 << v29;
  v32 = *(v28 + 64);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  *(v0 + 1392) = v1;
  *(v0 + 1384) = v1;
  *(v0 + 1376) = 0;
  v33 = v30 & v32;
  if (v33)
  {
    v34 = 0;
    v35 = *(v0 + 1368);
LABEL_18:
    *(v0 + 1408) = v34;
    *(v0 + 1400) = v33;
    v38 = *(v0 + 1192);
    v39 = *(v0 + 1168);
    v52 = *(v0 + 1112);
    v40 = *(v0 + 768);
    v41 = *(v0 + 672);
    v42 = *(v0 + 664);
    v43 = *(v0 + 632);
    v44 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v33)) | (v34 << 6));
    v39(v41, *(v35 + 48) + v44, v40);
    v45 = *(v35 + 56);
    v46 = *(v43 + 48);
    v39(v41 + v46, v45 + v44, v40);
    v47 = *(v43 + 48);
    *(v0 + 1556) = v47;
    v38(v42, v41, v40);
    v38(v42 + v47, v41 + v46, v40);
    v24 = sub_1001AA1B4;
    v25 = v52;
  }

  else
  {
    v36 = 0;
    v37 = ((63 - v31) >> 6) - 1;
    v35 = *(v0 + 1368);
    while (v37 != v36)
    {
      v34 = v36 + 1;
      v33 = *(v35 + 8 * v36++ + 72);
      if (v33)
      {
        goto LABEL_18;
      }
    }

    v48 = *(v0 + 1040);
    v49 = *(v0 + 928);

    *(v0 + 1480) = qword_101390FD8[*(v48 + *(v49 + 40))];
    v25 = *(v0 + 1112);
    *(v0 + 1564) = *(*(v0 + 928) + 32);
    v24 = sub_1001AB8C0;
  }

  v26 = 0;

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_1001AA1B4()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 864);
  v4 = *(v0 + 768);
  v5 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v3, *(v0 + 664) + *(v0 + 1556), v4);
  v6 = swift_allocObject();
  *(v0 + 1416) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1424) = v7;
  *v7 = v0;
  v7[1] = sub_1001AA318;
  v8 = *(v0 + 576);
  v9 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA89C, v6, v9);
}

uint64_t sub_1001AA318()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_1001AA444, v1, 0);
}

uint64_t sub_1001AA444()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v1 + 48);
  *(v0 + 1432) = v4;
  *(v0 + 1440) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) != 1)
  {
    v14 = *(v0 + 1168);
    v15 = *(v0 + 768);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    sub_1001BAAE8(v3, v16, type metadata accessor for MemberPeerTrust);
    v18 = (v16 + v2[8]);
    v19 = *v18;
    v20 = v18[1];
    v21 = sub_100A4F304(*v18, v20);
    v23 = v22;
    *(v0 + 1448) = v21;
    *(v0 + 1456) = v22;
    v14(&v17[v2[5]], v16 + v2[5], v15);
    LOBYTE(v14) = *(v16 + v2[6]);
    sub_1001BB2E0(v16 + v2[7], &v17[v2[7]], type metadata accessor for PeerCommunicationIdentifier);
    v24 = (v16 + v2[9]);
    v26 = *v24;
    v25 = v24[1];
    *v17 = xmmword_10138C660;
    v17[v2[6]] = v14;
    v27 = &v17[v2[8]];
    *v27 = v21;
    v27[1] = v23;
    v28 = &v17[v2[9]];
    *v28 = v26;
    v28[1] = v25;
    if (v21 == v19 && v23 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100017D5C(v26, v25);
    }

    else
    {
      sub_100017D5C(v26, v25);

      sub_100DEA8E0(v0 + 192, v21, v23, 1);
    }

    v33 = *(v0 + 1112);
    *(v0 + 1560) = *(*(v0 + 928) + 32);
    v34 = sub_1001AAAB8;
LABEL_12:
    v35 = v34;
    goto LABEL_22;
  }

  v5 = *(v0 + 1040);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  sub_10000B3A8(v3, &qword_101698C10, &unk_10138C1E0);
  sub_1001BB2E0(v5, v6, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v5, v7, type metadata accessor for MemberSharingCircle);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v67 = v9;
    v10 = *(v0 + 210);
    v11 = swift_slowAlloc();
    *(v0 + 256) = swift_slowAlloc();
    *v11 = 136316163;
    if (v10)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 408) = *(v0 + 416);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v36;
    }

    v37 = *(v0 + 976);
    v65 = *(v0 + 968);
    v66 = *(v0 + 664);
    v38 = sub_1000136BC(v12, v13, (v0 + 256));

    *(v11 + 4) = v38;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    sub_1001BA80C(v37, type metadata accessor for MemberSharingCircle);
    v42 = sub_1000136BC(v39, v41, (v0 + 256));

    *(v11 + 24) = v42;
    *(v11 + 32) = 2160;
    *(v11 + 34) = 1752392040;
    *(v11 + 42) = 2081;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_1001BA80C(v65, type metadata accessor for MemberSharingCircle);
    v46 = sub_1000136BC(v43, v45, (v0 + 256));

    *(v11 + 44) = v46;
    _os_log_impl(&_mh_execute_header, v8, v67, "%s Missing member peer trust for member in member circle: %{private,mask.hash}s,\nowner: %{private,mask.hash}s.", v11, 0x34u);
    swift_arrayDestroy();

    v32 = v66;
  }

  else
  {
    v29 = *(v0 + 976);
    v30 = *(v0 + 968);
    v31 = *(v0 + 664);

    sub_1001BA80C(v30, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v29, type metadata accessor for MemberSharingCircle);
    v32 = v31;
  }

  v35 = sub_10000B3A8(v32, &qword_101698C18, &qword_101390740);
  v48 = *(v0 + 1408);
  v49 = (*(v0 + 1400) - 1) & *(v0 + 1400);
  if (v49)
  {
    v50 = *(v0 + 1368);
LABEL_21:
    *(v0 + 1408) = v48;
    *(v0 + 1400) = v49;
    v52 = *(v0 + 1192);
    v53 = *(v0 + 1168);
    v68 = *(v0 + 1112);
    v54 = *(v0 + 768);
    v55 = *(v0 + 672);
    v56 = *(v0 + 664);
    v57 = *(v0 + 632);
    v58 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v49)) | (v48 << 6));
    v53(v55, *(v50 + 48) + v58, v54);
    v59 = *(v50 + 56);
    v60 = *(v57 + 48);
    v53(v55 + v60, v59 + v58, v54);
    v61 = *(v57 + 48);
    *(v0 + 1556) = v61;
    v52(v56, v55, v54);
    v52(v56 + v61, v55 + v60, v54);
    v35 = sub_1001AA1B4;
    v33 = v68;
LABEL_22:
    v47 = 0;

    return _swift_task_switch(v35, v33, v47);
  }

  while (1)
  {
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    v50 = *(v0 + 1368);
    if (v51 >= (((1 << *(v0 + 1568)) + 63) >> 6))
    {
      v62 = *(v0 + 1040);
      v63 = *(v0 + 928);

      *(v0 + 1480) = qword_101390FD8[*(v62 + *(v63 + 40))];
      v33 = *(v0 + 1112);
      *(v0 + 1564) = *(*(v0 + 928) + 32);
      v34 = sub_1001AB8C0;
      goto LABEL_12;
    }

    v49 = *(v50 + 8 * v51 + 64);
    ++v48;
    if (v49)
    {
      v48 = v51;
      goto LABEL_21;
    }
  }

  __break(1u);
  return _swift_task_switch(v35, v33, v47);
}

uint64_t sub_1001AAAB8()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 864);
  v4 = *(v0 + 768);
  v5 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v3, *(v0 + 1040) + *(v0 + 1560), v4);
  v6 = swift_allocObject();
  *(v0 + 1464) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1472) = v7;
  *v7 = v0;
  v7[1] = sub_1001AAC1C;
  v8 = *(v0 + 568);
  v9 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A8, v6, v9);
}

uint64_t sub_1001AAC1C()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_1001AAD48, v1, 0);
}

void sub_1001AAD48()
{
  v127 = v0;
  v1 = *(v0 + 568);
  if ((*(v0 + 1432))(v1, 1, *(v0 + 584)) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    v2 = *(v0 + 1392);
    v3 = *(v0 + 1384);
    goto LABEL_13;
  }

  v4 = *(v0 + 1360);
  v5 = *(v0 + 664);
  v6 = *(v0 + 656);
  v7 = *(v0 + 632);
  sub_1001BAAE8(v1, *(v0 + 608), type metadata accessor for MemberPeerTrust);
  sub_1000D2A70(v5, v6, &qword_101698C18, &qword_101390740);
  v8 = *(v7 + 48);
  if (!*(v4 + 16) || (v9 = sub_1000210EC(v6 + v8), (v10 & 1) == 0))
  {
    v34 = *(v0 + 1352);
    v35 = *(v0 + 768);
    v36 = *(v0 + 656);
    sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberPeerTrust);
    v34(v6 + v8, v35);
    v34(v36, v35);
    v3 = *(v0 + 1352);
LABEL_12:
    v2 = v3;
LABEL_13:
    v37 = *(v0 + 1040);
    v38 = *(v0 + 984);
    sub_1001BB2E0(v37, *(v0 + 992), type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v37, v38, type metadata accessor for MemberSharingCircle);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 210);
      v42 = swift_slowAlloc();
      *(v0 + 232) = swift_slowAlloc();
      *v42 = 136316163;
      v121 = v2;
      v124 = v3;
      if (v41)
      {
        v43 = 0;
        v44 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 240) = *(v0 + 416);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v54;
      }

      v55 = *(v0 + 992);
      v105 = *(v0 + 984);
      v113 = *(v0 + 624);
      v107 = *(v0 + 664);
      v109 = *(v0 + 616);
      v56 = sub_1000136BC(v43, v44, (v0 + 232));

      *(v42 + 4) = v56;
      *(v42 + 12) = 2160;
      *(v42 + 14) = 1752392040;
      *(v42 + 22) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_1001BA80C(v55, type metadata accessor for MemberSharingCircle);
      v60 = sub_1000136BC(v57, v59, (v0 + 232));

      *(v42 + 24) = v60;
      *(v42 + 32) = 2160;
      *(v42 + 34) = 1752392040;
      *(v42 + 42) = 2081;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      sub_1001BA80C(v105, type metadata accessor for MemberSharingCircle);
      v64 = sub_1000136BC(v61, v63, (v0 + 232));

      *(v42 + 44) = v64;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Missing member peer trust for owner in member circle: %{private,mask.hash}s,\nowner: %{private,mask.hash}s.", v42, 0x34u);
      swift_arrayDestroy();

      sub_10000B3A8(v107, &qword_101698C18, &qword_101390740);
      sub_1001BA80C(v109, type metadata accessor for MemberPeerTrust);
      v50 = sub_1001BA80C(v113, type metadata accessor for MemberPeerTrust);
      v53 = *(v0 + 1376);
      v2 = v121;
      v3 = v124;
    }

    else
    {
      v45 = *(v0 + 992);
      v46 = *(v0 + 984);
      v47 = *(v0 + 664);
      v48 = *(v0 + 624);
      v49 = *(v0 + 616);

      sub_1001BA80C(v46, type metadata accessor for MemberSharingCircle);
      sub_1001BA80C(v45, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v47, &qword_101698C18, &qword_101390740);
      sub_1001BA80C(v49, type metadata accessor for MemberPeerTrust);
      v50 = sub_1001BA80C(v48, type metadata accessor for MemberPeerTrust);
      v53 = *(v0 + 1376);
    }

    goto LABEL_19;
  }

  v11 = *(v0 + 1384);
  v12 = *(v0 + 768);
  v13 = *(v0 + 656);
  v14 = *(*(*(v0 + 1360) + 56) + v9);
  v11(v6 + v8, v12);
  v11(v13, v12);
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 handleWithString:v15];

  if (!v17)
  {
    sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberPeerTrust);
    v3 = *(v0 + 1384);
    goto LABEL_12;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 handleWithString:v18];

  if (!v19)
  {
    sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberPeerTrust);

    v3 = *(v0 + 1384);
    goto LABEL_12;
  }

  v20 = *(v0 + 1168);
  v108 = *(v0 + 1548);
  v21 = *(v0 + 1040);
  v22 = *(v0 + 1000);
  v23 = *(v0 + 848);
  v111 = *(v0 + 928);
  v114 = *(v0 + 840);
  v24 = *(v0 + 768);
  v119 = v14;
  v25 = *(v0 + 664);
  v123 = *(v0 + 640);
  v117.super.isa = *(v0 + 632);
  sub_1000D2A70(v25, *(v0 + 648), &qword_101698C18, &qword_101390740);
  sub_1001BB2E0(v21, v22, type metadata accessor for MemberSharingCircle);
  v20(v23, v21 + v108, v24);
  v20(v114, v21 + *(v111 + 28), v24);
  sub_1000D2A70(v25, v123, &qword_101698C18, &qword_101390740);
  v26 = *(v117.super.isa + 12);
  v115 = qword_101390FD8[v119];
  v120 = *(v0 + 1376);
  v27 = *(v0 + 1000);
  v28 = *(v0 + 736);
  v29 = v17;
  v30 = v19;
  v118.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v31.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v32.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v112.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v33 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v27, v28);
  if (v120)
  {

    objc_autoreleasePoolPop(v33);
    return;
  }

  v100 = v26;
  v93 = *(v0 + 1384);
  v94 = *(v0 + 211);
  v97 = *(v0 + 840);
  v98 = *(v0 + 848);
  v82 = *(v0 + 768);
  v83 = *(v0 + 744);
  v84 = *(v0 + 736);
  isa = v32.super.isa;
  v96 = v30;
  v85 = *(v0 + 712);
  v86 = *(v0 + 704);
  v103 = *(v0 + 1000);
  v104 = *(v0 + 664);
  v99 = *(v0 + 648);
  v102 = *(v0 + 640);
  v122 = *(v0 + 624);
  v110 = *(v0 + 616);
  v106 = *(v0 + 608);
  v101 = *(*(v0 + 632) + 48);
  v92 = objc_allocWithZone(SPBeaconShare);
  objc_autoreleasePoolPop(v33);
  v87 = Date._bridgeToObjectiveC()().super.isa;
  v91 = v29;
  v88 = *(v85 + 8);
  v88(v84, v86);
  static Date.distantFuture.getter();
  v89 = Date._bridgeToObjectiveC()().super.isa;
  v88(v83, v86);
  LOBYTE(v90) = v94;
  v116 = [v92 initWithIdentifier:v118.super.isa beaconIdentifier:v31.super.isa sharingCircleIdentifier:isa peerTrustIdentifier:v112.super.isa owner:v91 sharee:v96 state:v115 creationDate:v87 expirationDate:v89 visitorCount:0 delegationStatus:v90];

  v93(v97, v82);
  v93(v98, v82);
  v93(v123 + v100, v82);
  v93(v99, v82);
  sub_1001BA80C(v103, type metadata accessor for MemberSharingCircle);
  v93(v102, v82);
  v93(v99 + v101, v82);
  sub_100DEA678(v126, v116);

  sub_10000B3A8(v104, &qword_101698C18, &qword_101390740);
  sub_1001BA80C(v106, type metadata accessor for MemberPeerTrust);
  sub_1001BA80C(v110, type metadata accessor for MemberPeerTrust);
  v50 = sub_1001BA80C(v122, type metadata accessor for MemberPeerTrust);
  v53 = 0;
  v3 = *(v0 + 1384);
  v2 = v3;
LABEL_19:
  v65 = *(v0 + 1408);
  v66 = *(v0 + 1400);
  *(v0 + 1392) = v2;
  *(v0 + 1384) = v3;
  *(v0 + 1376) = v53;
  v67 = (v66 - 1) & v66;
  if (v67)
  {
    v68 = *(v0 + 1368);
LABEL_25:
    *(v0 + 1408) = v65;
    *(v0 + 1400) = v67;
    v70 = *(v0 + 1192);
    v71 = *(v0 + 1168);
    v125 = *(v0 + 1112);
    v72 = *(v0 + 768);
    v73 = *(v0 + 672);
    v74 = *(v0 + 664);
    v75 = *(v0 + 632);
    v76 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v67)) | (v65 << 6));
    v71(v73, *(v68 + 48) + v76, v72);
    v77 = *(v68 + 56);
    v78 = *(v75 + 48);
    v71(v73 + v78, v77 + v76, v72);
    v79 = *(v75 + 48);
    *(v0 + 1556) = v79;
    v70(v74, v73, v72);
    v70(v74 + v79, v73 + v78, v72);
    v50 = sub_1001AA1B4;
    v51 = v125;
LABEL_26:
    v52 = 0;
  }

  else
  {
    while (1)
    {
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v68 = *(v0 + 1368);
      if (v69 >= (((1 << *(v0 + 1568)) + 63) >> 6))
      {
        v80 = *(v0 + 1040);
        v81 = *(v0 + 928);

        *(v0 + 1480) = qword_101390FD8[*(v80 + *(v81 + 40))];
        v51 = *(v0 + 1112);
        *(v0 + 1564) = *(*(v0 + 928) + 32);
        v50 = sub_1001AB8C0;
        goto LABEL_26;
      }

      v67 = *(v68 + 8 * v69 + 64);
      ++v65;
      if (v67)
      {
        v65 = v69;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  _swift_task_switch(v50, v51, v52);
}

uint64_t sub_1001AB8C0()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 864);
  v4 = *(v0 + 768);
  v5 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v3, *(v0 + 1040) + *(v0 + 1564), v4);
  v6 = swift_allocObject();
  *(v0 + 1488) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1496) = v7;
  *v7 = v0;
  v7[1] = sub_1001ABA24;
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A8, v6, v9);
}

uint64_t sub_1001ABA24()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_1001ABB50, v1, 0);
}

void sub_1001ABB50()
{
  v81 = v0;
  v1 = *(v0 + 560);
  if ((*(*(v0 + 592) + 48))(v1, 1, *(v0 + 584)) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
LABEL_9:
    v15 = *(v0 + 1040);
    v16 = *(v0 + 952);
    sub_1001BB2E0(v15, *(v0 + 960), type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v15, v16, type metadata accessor for MemberSharingCircle);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v78 = v18;
      v19 = *(v0 + 210);
      v20 = swift_slowAlloc();
      *(v0 + 296) = swift_slowAlloc();
      *v20 = 136316163;
      if (v19)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 304) = *(v0 + 416);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v25;
      }

      v26 = *(v0 + 960);
      v73 = *(v0 + 952);
      v27 = sub_1000136BC(v21, v22, (v0 + 296));

      *(v20 + 4) = v27;
      *(v20 + 12) = 2160;
      *(v20 + 14) = 1752392040;
      *(v20 + 22) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_1001BA80C(v26, type metadata accessor for MemberSharingCircle);
      v31 = sub_1000136BC(v28, v30, (v0 + 296));

      *(v20 + 24) = v31;
      *(v20 + 32) = 2160;
      *(v20 + 34) = 1752392040;
      *(v20 + 42) = 2081;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1001BA80C(v73, type metadata accessor for MemberSharingCircle);
      v35 = sub_1000136BC(v32, v34, (v0 + 296));

      *(v20 + 44) = v35;
      _os_log_impl(&_mh_execute_header, v17, v78, "%s Missing ownerTrust for member circle: %{private,mask.hash}s,\nowner: %{private,mask.hash}s.", v20, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v23 = *(v0 + 960);
      v24 = *(v0 + 952);

      sub_1001BA80C(v24, type metadata accessor for MemberSharingCircle);
      sub_1001BA80C(v23, type metadata accessor for MemberSharingCircle);
    }

    v36 = *(v0 + 1040);
LABEL_16:
    v37 = sub_1001BA80C(v36, type metadata accessor for MemberSharingCircle);
    v40 = *(v0 + 1152) + 1;
    if (v40 == *(v0 + 1144))
    {

      v41 = swift_task_alloc();
      *(v0 + 1504) = v41;
      *v41 = v0;
      v41[1] = sub_1001AC3AC;
      v42 = *(v0 + 209);

      sub_1001AEEC0(v42);
    }

    else
    {
      *(v0 + 1152) = v40;
      v43 = *(v0 + 1136);
      if (v40 >= *(v43 + 16))
      {
        __break(1u);
      }

      else
      {
        v44 = *(v0 + 1112);
        v45 = *(v0 + 1040);
        v46 = *(v0 + 928);
        v47 = v43 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
        v48 = *(*(v0 + 936) + 72);
        *(v0 + 1160) = v48;
        sub_1001BB2E0(v47 + v48 * v40, v45, type metadata accessor for MemberSharingCircle);
        *(v0 + 1548) = *(v46 + 24);
        v37 = sub_1001A7768;
        v38 = v44;
        v39 = 0;
      }

      _swift_task_switch(v37, v38, v39);
    }

    return;
  }

  sub_1001BAAE8(v1, *(v0 + 600), type metadata accessor for MemberPeerTrust);
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 handleWithString:v2];

  if (!v4)
  {
    sub_1001BA80C(*(v0 + 600), type metadata accessor for MemberPeerTrust);
    goto LABEL_9;
  }

  v71 = v4;
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1548);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 824);
  v9 = *(v0 + 816);
  v10 = *(v0 + 768);
  v75 = *(v0 + 728);
  v77 = *(v0 + 1376);
  v11 = *(*(v0 + 928) + 20);
  v5(*(v0 + 832), v7 + v11, v10);
  v5(v8, v7 + v6, v10);
  v5(v9, v7 + v11, v10);
  UUID.init()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v3 handleWithEmailAddress:v12];

  v14 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v7, v75);
  if (!v77)
  {
    v63 = *(v0 + 1480);
    v74 = *(v0 + 1392);
    v62 = *(v0 + 211);
    v79 = *(v0 + 1040);
    v65 = v13;
    v67 = *(v0 + 824);
    v68 = *(v0 + 832);
    v66 = *(v0 + 816);
    v64 = *(v0 + 808);
    v49 = *(v0 + 744);
    v60 = *(v0 + 712);
    v61 = *(v0 + 728);
    v69 = *(v0 + 704);
    v70 = *(v0 + 768);
    v76 = *(v0 + 600);
    objc_autoreleasePoolPop(v14);
    static Date.distantFuture.getter();
    v58 = objc_allocWithZone(SPBeaconShare);
    v59 = v71;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v51 = UUID._bridgeToObjectiveC()().super.isa;
    v52 = UUID._bridgeToObjectiveC()().super.isa;
    v53 = UUID._bridgeToObjectiveC()().super.isa;
    v54 = Date._bridgeToObjectiveC()().super.isa;
    v55 = Date._bridgeToObjectiveC()().super.isa;
    LOBYTE(v57) = v62;
    v72 = [v58 initWithIdentifier:isa beaconIdentifier:v51 sharingCircleIdentifier:v52 peerTrustIdentifier:v53 owner:v59 sharee:v65 state:v63 creationDate:v54 expirationDate:v55 delegationStatus:v57];

    v56 = *(v60 + 8);
    v56(v49, v69);
    v56(v61, v69);
    v74(v64, v70);
    v74(v66, v70);
    v74(v67, v70);
    v74(v68, v70);
    sub_100DEA678(v80, v72);

    sub_1001BA80C(v76, type metadata accessor for MemberPeerTrust);
    v36 = v79;
    goto LABEL_16;
  }

  objc_autoreleasePoolPop(v14);
}

uint64_t sub_1001AC3AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  *(v3 + 1512) = a1;
  *(v3 + 1520) = a2;

  return _swift_task_switch(sub_1001AC4C8, v4, 0);
}

uint64_t sub_1001AC4C8()
{
  v1 = *(v0 + 1520);
  sub_1005C9D24(*(v0 + 1512));
  sub_1005C9D54(v1);
  v2 = swift_task_alloc();
  *(v0 + 1528) = v2;
  *v2 = v0;
  v2[1] = sub_1001AC584;
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 209);

  return sub_1001B185C(v5, v4, v3);
}

uint64_t sub_1001AC584(uint64_t a1)
{
  v2 = *(*v1 + 424);
  *(*v1 + 1536) = a1;

  return _swift_task_switch(sub_1001AC69C, v2, 0);
}

uint64_t sub_1001AC69C()
{
  v116 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 776);
  v112 = *(v0 + 768);
  v5 = *(v0 + 744);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  sub_1005C9D24(*(v0 + 1536));
  v107 = *(v7 + 16);
  v107(v5, v1, v8);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11 = *(v7 + 8);
  v11(v6, v8);
  v11(v5, v8);
  sub_1000D2A70(v2, v3, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v4 + 48))(v3, 1, v112) == 1)
  {
    v12 = &qword_1016980D0;
    v13 = &unk_10138F3B0;
    v14 = *(v0 + 1048);
  }

  else
  {
    v113 = v11;
    v106 = *(*(v0 + 776) + 32);
    v106(*(v0 + 800), *(v0 + 1048), *(v0 + 768));
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    v17 = *(v0 + 776);
    v18 = *(v0 + 768);
    sub_1000076D4(*(v0 + 1064), qword_10177AE28);
    v104 = *(v17 + 16);
    v104(v16, v15, v18);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v98 = v20;
      v21 = *(v0 + 210);
      v22 = swift_slowAlloc();
      v115[0] = swift_slowAlloc();
      *v22 = 136316162;
      v100 = v19;
      if (v21)
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 280) = *(v0 + 416);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v28;
      }

      v29 = *(v0 + 1088);
      v30 = *(v0 + 792);
      v31 = *(v0 + 776);
      v32 = *(v0 + 768);
      v33 = *(v0 + 744);
      v34 = *(v0 + 704);
      v35 = sub_1000136BC(v23, v24, v115);

      *(v22 + 4) = v35;
      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2080;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v102 = *(v31 + 8);
      v102(v30, v32);
      v39 = sub_1000136BC(v36, v38, v115);

      *(v22 + 24) = v39;
      *(v22 + 32) = 2082;
      swift_beginAccess();
      v107(v33, v29, v34);
      sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v113(v33, v34);
      v43 = sub_1000136BC(v40, v42, v115);

      *(v22 + 34) = v43;
      *(v22 + 42) = 2048;
      *(v22 + 44) = v10;
      _os_log_impl(&_mh_execute_header, v100, v98, "%s Will expire next delegation: %{mask.hash}s at %{public}s [in %f seconds]", v22, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v25 = *(v0 + 792);
      v26 = *(v0 + 776);
      v27 = *(v0 + 768);

      v102 = *(v26 + 8);
      v102(v25, v27);
    }

    v44 = *(v0 + 536);
    v45 = *(v0 + 520);
    v46 = *(v0 + 504);
    v47 = *(v0 + 488);
    v48 = *(v0 + 496);
    v49 = *(v0 + 472);
    v110 = *(v0 + 464);
    v114 = *(v0 + 512);
    v50 = *(v0 + 456);
    v51 = *(v0 + 424);
    ContinuousClock.init()();
    ContinuousClock.now.getter();
    (*(v48 + 8))(v46, v47);
    v52 = v51;
    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    v53 = *(v45 + 8);
    v53(v44, v114);
    v54 = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_pendingExpirationTask;
    swift_beginAccess();
    sub_1000D2A70(v52 + v54, v50, &qword_101698C08, &unk_101390730);
    v55 = *(v49 + 48);
    if (v55(v50, 1, v110) == 1)
    {
      sub_10000B3A8(*(v0 + 456), &qword_101698C08, &unk_101390730);
    }

    else
    {
      sub_1001BAAE8(*(v0 + 456), *(v0 + 480), type metadata accessor for BeaconSharingService.PendingExpirationTask);
      sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v0 + 480);
      if ((v56 & 1) == 0)
      {
        v58 = *(v0 + 464);
        v59 = *(v0 + 472);
        v60 = *(v0 + 448);
        v61 = *(v0 + 480);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        Task.cancel()();
        (*(v59 + 56))(v60, 1, 1, v58);
        swift_beginAccess();
        sub_1001BAA78(v60, v52 + v54);
        swift_endAccess();
        v57 = v61;
      }

      sub_1001BA80C(v57, type metadata accessor for BeaconSharingService.PendingExpirationTask);
    }

    v62 = *(v0 + 464);
    v63 = *(v0 + 440);
    sub_1000D2A70(v52 + v54, v63, &qword_101698C08, &unk_101390730);
    if (v55(v63, 1, v62) == 1)
    {
      v101 = *(v0 + 1080);
      v64 = *(v0 + 864);
      v89 = v64;
      v65 = *(v0 + 800);
      v91 = *(v0 + 776);
      v92 = *(v0 + 784);
      v66 = *(v0 + 768);
      v88 = v66;
      v67 = *(v0 + 544);
      v96 = v54;
      v97 = v67;
      v68 = *(v0 + 536);
      v90 = *(v0 + 528);
      v108 = v53;
      v69 = *(v0 + 520);
      v70 = *(v0 + 512);
      v109 = *(v0 + 464);
      v111 = *(v0 + 472);
      v103 = *(v0 + 448);
      v71 = *(v0 + 432);
      v95 = *(v0 + 210);
      v99 = *(v0 + 424);
      v93 = *(v0 + 416);
      v94 = v71;
      sub_10000B3A8(*(v0 + 440), &qword_101698C08, &unk_101390730);
      v72 = type metadata accessor for TaskPriority();
      (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
      v73 = v70;
      (*(v69 + 16))(v68, v67, v70);
      v104(v64, v65, v66);
      v105 = v52;
      v74 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v75 = (v90 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = (*(v91 + 80) + v75 + 9) & ~*(v91 + 80);
      v77 = (v92 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
      v78 = swift_allocObject();
      *(v78 + 16) = 0;
      *(v78 + 24) = 0;
      (*(v69 + 32))(v78 + v74, v68, v73);
      v79 = v78 + v75;
      *v79 = v93;
      *(v79 + 8) = v95 & 1;
      v106(v78 + v76, v89, v88);
      *(v78 + v77) = v101;
      *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;

      v80 = sub_100BB9ADC(0, 0, v94, &unk_101390768, v78);
      sub_10000B3A8(v94, &qword_101698C00, &qword_10138B570);
      v108(v97, v73);
      v106(v103, v65, v88);
      *(v103 + *(v109 + 20)) = v80;
      (*(v111 + 56))(v103, 0, 1);
      swift_beginAccess();
      sub_1001BAA78(v103, v105 + v96);
      swift_endAccess();
      goto LABEL_20;
    }

    v81 = *(v0 + 800);
    v82 = *(v0 + 768);
    v83 = *(v0 + 440);
    v53(*(v0 + 544), *(v0 + 512));
    v102(v81, v82);
    v12 = &qword_101698C08;
    v13 = &unk_101390730;
    v14 = v83;
  }

  sub_10000B3A8(v14, v12, v13);
LABEL_20:
  v84 = *(v0 + 1056);
  sub_100A4E94C(*(v0 + 384));

  sub_10000B3A8(v84, &qword_1016980D0, &unk_10138F3B0);

  v85 = *(v0 + 216);

  v86 = *(v0 + 8);

  return v86(v85);
}

uint64_t sub_1001AD4A0()
{
  sub_1001BB2E0(*(v0 + 1040), *(v0 + 944), type metadata accessor for MemberSharingCircle);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 210);
    v4 = swift_slowAlloc();
    *(v0 + 352) = swift_slowAlloc();
    *v4 = 136315651;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 360) = *(v0 + 416);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v10;
    }

    v11 = *(v0 + 944);
    v30 = *(v0 + 912);
    v12 = sub_1000136BC(v5, v6, (v0 + 352));

    *(v4 + 4) = v12;
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v11, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, (v0 + 352));

    *(v4 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failed to get imported share for share id: %{private,mask.hash}s ", v4, 0x20u);
    swift_arrayDestroy();

    v9 = v30;
  }

  else
  {
    v7 = *(v0 + 944);
    v8 = *(v0 + 912);

    sub_1001BA80C(v7, type metadata accessor for MemberSharingCircle);
    v9 = v8;
  }

  sub_1001BA80C(v9, type metadata accessor for SharedBeaconRecord);
  v17 = sub_1001BA80C(*(v0 + 1040), type metadata accessor for MemberSharingCircle);
  v20 = *(v0 + 1152) + 1;
  if (v20 == *(v0 + 1144))
  {

    v21 = swift_task_alloc();
    *(v0 + 1504) = v21;
    *v21 = v0;
    v21[1] = sub_1001AC3AC;
    v22 = *(v0 + 209);

    return sub_1001AEEC0(v22);
  }

  else
  {
    *(v0 + 1152) = v20;
    v24 = *(v0 + 1136);
    if (v20 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v0 + 1112);
      v26 = *(v0 + 1040);
      v27 = *(v0 + 928);
      v28 = v24 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
      v29 = *(*(v0 + 936) + 72);
      *(v0 + 1160) = v29;
      sub_1001BB2E0(v28 + v29 * v20, v26, type metadata accessor for MemberSharingCircle);
      *(v0 + 1548) = *(v27 + 24);
      v17 = sub_1001A7768;
      v18 = v25;
      v19 = 0;
    }

    return _swift_task_switch(v17, v18, v19);
  }
}

uint64_t sub_1001AD894(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = type metadata accessor for MemberSharingCircle(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for PeerCommunicationIdentifier(0);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for MemberPeerTrust(0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_1001ADB00, v2, 0);
}

uint64_t sub_1001ADB00()
{
  v1 = v0[7];
  v0[2] = &_swiftEmptySetSingleton;
  v2 = *(v1 + 136);
  v0[32] = v2;
  return _swift_task_switch(sub_1001ADB30, v2, 0);
}

uint64_t sub_1001ADB30()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1001ADC10;
  v3 = *(v0 + 256);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001ADC10()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_1001ADD28, v1, 0);
}

uint64_t sub_1001ADD28()
{
  v1 = v0[7];
  v0[34] = v0[3];
  return _swift_task_switch(sub_1001ADD4C, v1, 0);
}

uint64_t sub_1001ADD4C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v1 + 28);
  *(v0 + 336) = v3;
  v4 = *(v1 + 24);
  *(v0 + 340) = v4;
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  *v6 = v0;
  v6[1] = sub_1001ADE1C;
  v7 = *(v0 + 248);

  return sub_1012D866C(v2 + v3, v2 + v4, v7);
}

uint64_t sub_1001ADE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v8[36] = v4;

  v9 = v8[31];
  v10 = v8[24];
  v11 = v8[23];
  v12 = v8[7];
  if (v4)
  {

    (*(v10 + 8))(v9, v11);
    v13 = sub_1001AEAC0;
  }

  else
  {
    v8[37] = a2;
    v8[38] = a1;
    v8[39] = a4;
    v14 = *(v10 + 8);
    v8[40] = v14;
    v8[41] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);
    v13 = sub_1001ADFFC;
  }

  return _swift_task_switch(v13, v12, 0);
}

void sub_1001ADFFC()
{
  v102 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v98 = *(v0 + 184);
  v5 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);

  UUID.init()();
  swift_storeEnumTagMultiPayload();
  if (v2)
  {
    v8 = v1;
  }

  else
  {
    v8 = 0;
  }

  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  sub_1005CAD68(v101);
  v11 = v101[0];
  v10 = v101[1];
  *v5 = xmmword_10138C660;
  v96 = v6[5];
  (*(v4 + 32))(&v5[v96], v3, v98);
  v12 = v6;
  v5[v6[6]] = 1;
  sub_1001BAAE8(v7, &v5[v6[7]], type metadata accessor for PeerCommunicationIdentifier);
  v13 = &v5[v6[8]];
  *v13 = v8;
  *(v13 + 1) = v9;
  v14 = &v5[v6[9]];
  *v14 = v11;
  *(v14 + 1) = v10;
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 handleWithString:v15];

  if (v17)
  {
    v99 = v17;
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 96);
    v21 = *(v0 + 40);
    type metadata accessor for ImportedShareUseCase();
    v84 = v21 + *(type metadata accessor for SharedBeaconRecord(0) + 72);
    sub_1001E8554(v84);
    v22 = *(v19 + 48);
    v83 = v16;
    if (v22(v20, 1, v18) == 1)
    {
      v24 = *(v0 + 96);
      v23 = *(v0 + 104);
      static Date.distantFuture.getter();
      if (v22(v24, 1, v23) != 1)
      {
        sub_10000B3A8(*(v0 + 96), &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      (*(*(v0 + 112) + 32))(*(v0 + 136), *(v0 + 96), *(v0 + 104));
    }

    v38 = *(v0 + 336);
    v39 = *(v0 + 224);
    v85 = *(v0 + 340);
    v87 = *(v0 + 216);
    v89 = *(v0 + 208);
    v40 = *(v0 + 184);
    v92 = *(v0 + 128);
    v94 = *(v0 + 288);
    v41 = *(v0 + 88);
    v42 = *(v0 + 48);
    v43 = *(*(v0 + 192) + 16);
    v43(*(v0 + 232), v42 + v38, v40);
    sub_1001BB2E0(v42, v41, type metadata accessor for MemberSharingCircle);
    v43(v39, v42 + v85, v40);
    v43(v87, v42 + v38, v40);
    v43(v89, &v5[v96], v40);
    v44 = v99;
    v45.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v46.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v47.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v48.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v49 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v41, v92);
    if (v94)
    {

      objc_autoreleasePoolPop(v49);
    }

    else
    {
      v86 = *(v0 + 320);
      v91 = *(v0 + 232);
      v93 = *(v0 + 224);
      v95 = *(v0 + 208);
      v97 = *(v0 + 216);
      v88 = *(v0 + 200);
      v82 = *(v0 + 184);
      v81 = *(v0 + 176);
      v50 = *(v0 + 128);
      v90 = *(v0 + 136);
      isa = v46.super.isa;
      v77 = v45.super.isa;
      v52 = *(v0 + 112);
      v51 = *(v0 + 120);
      v53 = *(v0 + 104);
      v100 = *(v0 + 88);
      v78 = objc_allocWithZone(SPBeaconShare);
      objc_autoreleasePoolPop(v49);
      v54 = Date._bridgeToObjectiveC()().super.isa;
      v55 = *(v52 + 8);
      v80 = v53;
      v55(v50, v53);
      static Date.distantFuture.getter();
      v56 = Date._bridgeToObjectiveC()().super.isa;
      v55(v51, v53);
      LOBYTE(v75) = 0;
      v79 = [v78 initWithIdentifier:v77 beaconIdentifier:isa sharingCircleIdentifier:v47.super.isa peerTrustIdentifier:v48.super.isa owner:v44 sharee:v44 state:5 creationDate:v54 expirationDate:v56 visitorCount:0 delegationStatus:v75];

      v86(v95, v82);
      v86(v97, v82);
      v86(v93, v82);
      v86(v91, v82);
      sub_1001BA80C(v100, type metadata accessor for MemberSharingCircle);
      UUID.init()();
      v57 = v44;
      v58 = String._bridgeToObjectiveC()();
      v59 = [v83 handleWithRecipient:v58];

      v60 = objc_allocWithZone(SPBeaconShare);
      v61 = UUID._bridgeToObjectiveC()().super.isa;
      v62 = UUID._bridgeToObjectiveC()().super.isa;
      v63 = UUID._bridgeToObjectiveC()().super.isa;
      v64 = UUID._bridgeToObjectiveC()().super.isa;
      v65 = Date._bridgeToObjectiveC()().super.isa;
      v66 = Date._bridgeToObjectiveC()().super.isa;
      v67 = [v60 initWithIdentifier:v61 beaconIdentifier:v62 sharingCircleIdentifier:v63 peerTrustIdentifier:v64 owner:v57 sharee:v59 state:5 creationDate:v65 expirationDate:v66];

      v86(v88, v82);
      v68 = v79;
      sub_100DEA678(v101, v68);

      v69 = v67;
      sub_100DEA678(v101, v69);

      v55(v90, v80);
      sub_1001BA80C(v81, type metadata accessor for MemberPeerTrust);
      v70 = *(v0 + 16);

      v71 = *(v0 + 8);

      v71(v70);
    }
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177AE40);
    sub_1001BB2E0(v26, v25, type metadata accessor for MemberPeerTrust);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 168);
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v101[0] = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v34 = (v31 + v12[8]);
      v35 = *v34;
      v36 = v34[1];

      sub_1001BA80C(v31, type metadata accessor for MemberPeerTrust);
      v37 = sub_1000136BC(v35, v36, v101);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "SPHandle failed for %{private,mask.hash}s", v32, 0x16u);
      sub_100007BAC(v33);
    }

    else
    {

      sub_1001BA80C(v31, type metadata accessor for MemberPeerTrust);
    }

    v72 = *(v0 + 176);
    sub_1001BAB50();
    swift_allocError();
    *v73 = 12;
    swift_willThrow();

    sub_1001BA80C(v72, type metadata accessor for MemberPeerTrust);

    v74 = *(v0 + 8);

    v74();
  }
}

uint64_t sub_1001AEAC0()
{
  v24 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_1001BB2E0(v3, v2, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v3, v1, type metadata accessor for MemberSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v22 = v0[9];
    v8 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v8 = 141558787;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_1001BA80C(v7, type metadata accessor for MemberSharingCircle);
    v12 = sub_1000136BC(v9, v11, v23);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2081;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v22, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, v23);

    *(v8 + 34) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get displayIdentifier for share id %{private,mask.hash}s,\nbeacon id %{private,mask.hash}s", v8, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[9];
    v17 = v0[10];

    sub_1001BA80C(v18, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v17, type metadata accessor for MemberSharingCircle);
  }

  sub_1001BAB50();
  swift_allocError();
  *v19 = 12;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001AEEC0(char a1)
{
  *(v2 + 120) = v1;
  *(v2 + 73) = a1;
  v3 = type metadata accessor for Date();
  *(v2 + 128) = v3;
  *(v2 + 136) = *(v3 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 160) = v4;
  v5 = *(v4 - 8);
  *(v2 + 168) = v5;
  *(v2 + 176) = *(v5 + 64);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *(v2 + 232) = swift_task_alloc();
  v6 = type metadata accessor for OwnerPeerTrust(0);
  *(v2 + 240) = v6;
  *(v2 + 248) = *(v6 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  *(v2 + 312) = v7;
  *(v2 + 320) = *(v7 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_1001AF1A8, v1, 0);
}

uint64_t sub_1001AF1A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 73);
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = &_swiftEmptySetSingleton;
  v3 = *(v1 + 136);
  *(v0 + 360) = v3;
  if (v2 == 1)
  {
    v4 = sub_1001AF1F4;
  }

  else
  {
    v4 = sub_1001AFB70;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001AF1F4()
{

  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_1001AF2E0;
  v3 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_1001AF2E0()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_1001AF3F8, v1, 0);
}

uint64_t sub_1001AF3F8()
{
  v1 = v0[15];
  v0[47] = v0[14];
  return _swift_task_switch(sub_1001AF418, v1, 0);
}

void sub_1001AF418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = v3;
  v4 = *(v3 + 376);
  *(v3 + 424) = v4;
  v5 = *(v4 + 16);
  *(v3 + 432) = v5;
  if (v5)
  {
    *(v3 + 76) = *(*(v3 + 320) + 80);
    *(v3 + 440) = 0;
    if (*(v4 + 16))
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v3 + 352);
        v8 = *(v3 + 312);
        sub_1001BB2E0(v4 + ((*(v3 + 76) + 32) & ~*(v3 + 76)) + *(*(v3 + 320) + 72) * v6, v7, type metadata accessor for OwnerSharingCircle);
        v9 = *(v7 + *(v8 + 32));
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = sub_1003A85FC(*(v9 + 16), 0);
          v12 = sub_1003CC2CC();
          v13 = *(v3 + 16);

          v4 = sub_1000128F8(v13);
          if (v12 != v10)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v11 = _swiftEmptyArrayStorage;
        }

        v14 = *(v3 + 352);
        v15 = swift_task_alloc();
        *(v15 + 16) = v14;
        v16 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BACF8, v15, v11);
        *(v3 + 448) = v16;
        *(v3 + 456) = 0;

        v17 = *(v16 + 32);
        *(v3 + 74) = v17;
        v18 = -1 << v17;
        v19 = -v18 < 64 ? ~(-1 << -v18) : -1;
        v20 = v19 & *(v16 + 64);
        if (v20)
        {
          break;
        }

        v21 = 0;
        v22 = ((63 - v18) >> 6) - 1;
        v23 = *(v3 + 448);
        while (v22 != v21)
        {
          v24 = v21 + 1;
          v20 = *(v23 + 8 * v21++ + 72);
          if (v20)
          {
            goto LABEL_23;
          }
        }

        v25 = *(v3 + 352);
        v26 = *(v3 + 312);
        v28 = *(v3 + 200);
        v27 = *(v3 + 208);
        v29 = *(v3 + 192);
        v30 = *(v3 + 160);
        v31 = *(v3 + 168);

        v32 = *(v26 + 20);
        v33 = *(v31 + 16);
        v33(v27, v25 + v32, v30);
        v33(v28, v25 + *(v26 + 24), v30);
        v33(v29, v25 + v32, v30);
        UUID.init()();
        if (qword_101694558 != -1)
        {
          swift_once();
        }

        v34 = *(v3 + 456);
        v35 = *(v3 + 352);
        v36 = *(v3 + 152);
        v37 = qword_10177A8F0;
        v38 = qword_10177A8F8;
        v39 = byte_10177A8E8;
        v40 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
        v41 = sub_100EB3708(v39, v37, v38);
        v42 = objc_autoreleasePoolPush();
        sub_100E7AB5C(v35, v36);
        if (v34)
        {

          objc_autoreleasePoolPop(v42);
          return;
        }

        v80 = *(v3 + 352);
        v82 = *(v3 + 432);
        v69 = v41;
        v76 = *(v3 + 200);
        v77 = *(v3 + 208);
        v72 = *(v3 + 184);
        v73 = *(v3 + 192);
        v43 = *(v3 + 168);
        v78 = *(v3 + 160);
        v44 = *(v3 + 144);
        v68 = *(v3 + 152);
        v79 = *(v3 + 440) + 1;
        v74 = *(v3 + 136);
        v75 = *(v3 + 128);
        objc_autoreleasePoolPop(v42);
        static Date.distantFuture.getter();
        v70 = objc_allocWithZone(SPBeaconShare);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v45 = UUID._bridgeToObjectiveC()().super.isa;
        v46 = UUID._bridgeToObjectiveC()().super.isa;
        v47 = v40;
        v48 = UUID._bridgeToObjectiveC()().super.isa;
        v49 = Date._bridgeToObjectiveC()().super.isa;
        v50 = Date._bridgeToObjectiveC()().super.isa;
        v71 = [v70 initWithIdentifier:isa beaconIdentifier:v45 sharingCircleIdentifier:v46 peerTrustIdentifier:v48 owner:v47 sharee:v69 state:5 creationDate:v49 expirationDate:v50];

        v51 = *(v74 + 8);
        v51(v44, v75);
        v51(v68, v75);
        v52 = *(v43 + 8);
        v52(v72, v78);
        v52(v73, v78);
        v52(v76, v78);
        v52(v77, v78);
        sub_100DEA678(v85, v71);

        sub_1001BA80C(v80, type metadata accessor for OwnerSharingCircle);
        if (v79 == v82)
        {
          goto LABEL_29;
        }

        v6 = *(v3 + 440) + 1;
        *(v3 + 440) = v6;
        v4 = *(v3 + 424);
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_32;
        }
      }

      v24 = 0;
      v23 = *(v3 + 448);
LABEL_23:
      *(v3 + 464) = v20;
      *(v3 + 472) = v24;
      v83 = *(v3 + 360);
      v54 = *(v3 + 296);
      v53 = *(v3 + 304);
      v55 = *(v3 + 280);
      v56 = *(v3 + 160);
      v57 = *(v3 + 168);
      v58 = __clz(__rbit64(v20)) | (v24 << 6);
      v59 = *(v23 + 48);
      v60 = v57[9] * v58;
      v61 = v57[2];
      *(v3 + 480) = v61;
      *(v3 + 488) = (v57 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v61(v53, v59 + v60, v56);
      v62 = *(v23 + 56);
      v63 = *(v55 + 48);
      v61(v53 + v63, v62 + v60, v56);
      v64 = *(v55 + 48);
      *(v3 + 528) = v64;
      v65 = v57[4];
      *(v3 + 496) = v65;
      *(v3 + 504) = (v57 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v65(v54, v53, v56);
      v65(v54 + v64, v53 + v63, v56);
      v4 = sub_1001B0764;
      a2 = v83;
      a3 = 0;
    }

    else
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    _swift_task_switch(v4, a2, a3);
  }

  else
  {
LABEL_29:

    v84 = *(v3 + 80);
    v81 = *(v3 + 88);

    v66 = *(v3 + 8);

    v66(v84, v81);
  }
}

uint64_t sub_1001AFB70()
{

  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_1001AFC5C;
  v3 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_1001AFC5C()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_1001AFD74, v1, 0);
}

uint64_t sub_1001AFD74()
{
  v1 = v0[15];
  v0[49] = v0[12];
  return _swift_task_switch(sub_1001AFD98, v1, 0);
}

uint64_t sub_1001AFD98()
{
  v1 = swift_task_alloc();
  v0[50] = v1;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  v4 = sub_1000041A4(&qword_101698C88, &unk_101698BD0, &unk_10138C210, &protocol conformance descriptor for [A]);
  *v1 = v0;
  v1[1] = sub_1001AFEB8;
  v5 = v0[49];
  v6 = v0[15];

  return Array<A>.asyncFlatMap<A>(_:)(&unk_1013907C8, v6, v5, v2, v3, v4);
}

uint64_t sub_1001AFEB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
  }

  else
  {
    v6 = *(v4 + 120);

    *(v4 + 416) = a1;

    return _swift_task_switch(sub_1001B0004, v6, 0);
  }
}

void sub_1001B0004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = v3;
  v5 = *(v3 + 408);
  v4 = *(v3 + 416);
  *(v3 + 424) = v4;
  v6 = *(v4 + 16);
  *(v3 + 432) = v6;
  if (v6)
  {
    *(v3 + 76) = *(*(v3 + 320) + 80);
    *(v3 + 440) = 0;
    if (*(v4 + 16))
    {
      v7 = 0;
      while (1)
      {
        v8 = *(v3 + 352);
        v9 = *(v3 + 312);
        sub_1001BB2E0(v4 + ((*(v3 + 76) + 32) & ~*(v3 + 76)) + *(*(v3 + 320) + 72) * v7, v8, type metadata accessor for OwnerSharingCircle);
        v10 = *(*(v8 + *(v9 + 32)) + 16);
        if (v10)
        {
          v82 = v5;
          v11 = sub_1003A85FC(v10, 0);
          v12 = sub_1003CC2CC();
          v13 = *(v3 + 16);

          v4 = sub_1000128F8(v13);
          if (v12 != v10)
          {
            goto LABEL_33;
          }

          v5 = v82;
        }

        else
        {
          v11 = _swiftEmptyArrayStorage;
        }

        v14 = *(v3 + 352);
        v15 = swift_task_alloc();
        *(v15 + 16) = v14;
        v16 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BACF8, v15, v11);
        *(v3 + 448) = v16;
        *(v3 + 456) = v5;

        v17 = *(v16 + 32);
        *(v3 + 74) = v17;
        v18 = -1 << v17;
        v19 = -v18 < 64 ? ~(-1 << -v18) : -1;
        v20 = v19 & *(v16 + 64);
        if (v20)
        {
          break;
        }

        v21 = 0;
        v22 = ((63 - v18) >> 6) - 1;
        v23 = *(v3 + 448);
        while (v22 != v21)
        {
          v24 = v21 + 1;
          v20 = *(v23 + 8 * v21++ + 72);
          if (v20)
          {
            goto LABEL_23;
          }
        }

        v25 = *(v3 + 352);
        v26 = *(v3 + 312);
        v28 = *(v3 + 200);
        v27 = *(v3 + 208);
        v29 = *(v3 + 192);
        v30 = *(v3 + 160);
        v31 = *(v3 + 168);

        v32 = *(v26 + 20);
        v33 = *(v31 + 16);
        v33(v27, v25 + v32, v30);
        v33(v28, v25 + *(v26 + 24), v30);
        v33(v29, v25 + v32, v30);
        UUID.init()();
        if (qword_101694558 != -1)
        {
          swift_once();
        }

        v34 = *(v3 + 456);
        v35 = *(v3 + 352);
        v36 = *(v3 + 152);
        v37 = qword_10177A8F0;
        v38 = qword_10177A8F8;
        v39 = byte_10177A8E8;
        v40 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
        v41 = sub_100EB3708(v39, v37, v38);
        v42 = objc_autoreleasePoolPush();
        sub_100E7AB5C(v35, v36);
        if (v34)
        {

          objc_autoreleasePoolPop(v42);
          return;
        }

        v80 = *(v3 + 352);
        v83 = *(v3 + 432);
        v69 = v41;
        v76 = *(v3 + 200);
        v77 = *(v3 + 208);
        v72 = *(v3 + 184);
        v73 = *(v3 + 192);
        v43 = *(v3 + 168);
        v78 = *(v3 + 160);
        v44 = *(v3 + 144);
        v68 = *(v3 + 152);
        v79 = *(v3 + 440) + 1;
        v74 = *(v3 + 136);
        v75 = *(v3 + 128);
        objc_autoreleasePoolPop(v42);
        static Date.distantFuture.getter();
        v70 = objc_allocWithZone(SPBeaconShare);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v45 = UUID._bridgeToObjectiveC()().super.isa;
        v46 = UUID._bridgeToObjectiveC()().super.isa;
        v47 = v40;
        v48 = UUID._bridgeToObjectiveC()().super.isa;
        v49 = Date._bridgeToObjectiveC()().super.isa;
        v50 = Date._bridgeToObjectiveC()().super.isa;
        v71 = [v70 initWithIdentifier:isa beaconIdentifier:v45 sharingCircleIdentifier:v46 peerTrustIdentifier:v48 owner:v47 sharee:v69 state:5 creationDate:v49 expirationDate:v50];

        v51 = *(v74 + 8);
        v51(v44, v75);
        v51(v68, v75);
        v52 = *(v43 + 8);
        v52(v72, v78);
        v52(v73, v78);
        v52(v76, v78);
        v52(v77, v78);
        sub_100DEA678(v86, v71);

        sub_1001BA80C(v80, type metadata accessor for OwnerSharingCircle);
        if (v79 == v83)
        {
          goto LABEL_29;
        }

        v5 = 0;
        v7 = *(v3 + 440) + 1;
        *(v3 + 440) = v7;
        v4 = *(v3 + 424);
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_32;
        }
      }

      v24 = 0;
      v23 = *(v3 + 448);
LABEL_23:
      *(v3 + 464) = v20;
      *(v3 + 472) = v24;
      v84 = *(v3 + 360);
      v54 = *(v3 + 296);
      v53 = *(v3 + 304);
      v55 = *(v3 + 280);
      v56 = *(v3 + 160);
      v57 = *(v3 + 168);
      v58 = __clz(__rbit64(v20)) | (v24 << 6);
      v59 = *(v23 + 48);
      v60 = v57[9] * v58;
      v61 = v57[2];
      *(v3 + 480) = v61;
      *(v3 + 488) = (v57 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v61(v53, v59 + v60, v56);
      v62 = *(v23 + 56);
      v63 = *(v55 + 48);
      v61(v53 + v63, v62 + v60, v56);
      v64 = *(v55 + 48);
      *(v3 + 528) = v64;
      v65 = v57[4];
      *(v3 + 496) = v65;
      *(v3 + 504) = (v57 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v65(v54, v53, v56);
      v65(v54 + v64, v53 + v63, v56);
      v4 = sub_1001B0764;
      a2 = v84;
      a3 = 0;
    }

    else
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    _swift_task_switch(v4, a2, a3);
  }

  else
  {
LABEL_29:

    v85 = *(v3 + 80);
    v81 = *(v3 + 88);

    v66 = *(v3 + 8);

    v66(v85, v81);
  }
}

uint64_t sub_1001B0764()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 360);
  v3 = *(v0 + 216);
  v4 = *(v0 + 168);
  v5 = *(v0 + 160);
  (*(v0 + 480))(v3, *(v0 + 296) + *(v0 + 528), v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 512) = v7;
  *(v7 + 16) = v2;
  v1(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  *(v0 + 520) = v8;
  *v8 = v0;
  v8[1] = sub_1001B08BC;
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1001BAD28, v7, v10);
}

uint64_t sub_1001B08BC()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1001B09E8, v1, 0);
}

void sub_1001B09E8()
{
  v147 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  if ((*(*(v0 + 248) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    if (qword_101694480 != -1)
    {
LABEL_51:
      swift_once();
    }

    v3 = *(v0 + 352);
    v4 = *(v0 + 328);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    sub_1001BB2E0(v3, v4, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 328);
    if (v8)
    {
      v10 = *(v0 + 296);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v146[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
      v16 = sub_1000136BC(v13, v15, v146);

      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing ownerPeerTrust for owner circle: %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);

      v17 = v10;
    }

    else
    {
      v32 = *(v0 + 296);

      sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
      v17 = v32;
    }

    sub_10000B3A8(v17, &qword_101698C18, &qword_101390740);
  }

  else
  {
    v18 = *(v0 + 480);
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 160);
    sub_1001BAAE8(v2, v19, type metadata accessor for OwnerPeerTrust);
    v22 = (v19 + v1[8]);
    v23 = *v22;
    v24 = v22[1];
    v25 = sub_100A4F304(*v22, v24);
    v140 = v26;
    v18(&v20[v1[5]], v19 + v1[5], v21);
    LOBYTE(v18) = *(v19 + v1[6]);
    sub_1001BB2E0(v19 + v1[7], &v20[v1[7]], type metadata accessor for PeerCommunicationIdentifier);
    v27 = (v19 + v1[9]);
    v29 = *v27;
    v28 = v27[1];
    LOBYTE(v27) = *(v19 + v1[10]);
    *v20 = xmmword_10138C660;
    v20[v1[6]] = v18;
    v30 = &v20[v1[8]];
    *v30 = v25;
    v30[1] = v140;
    v31 = &v20[v1[9]];
    *v31 = v29;
    v31[1] = v28;
    v20[v1[10]] = v27;
    if (v25 == v23 && v140 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100017D5C(v29, v28);
    }

    else
    {
      sub_100017D5C(v29, v28);

      sub_100DEA8E0(v0 + 56, v25, v140, 0);
    }

    v33 = *(v0 + 344);
    v34 = *(v0 + 352);
    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    v37 = *(v0 + 280);
    v39 = *(v0 + 256);
    v38 = *(v0 + 264);
    v40 = *(v0 + 168);
    v141 = *(v0 + 160);
    sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
    sub_1000D2A70(v35, v36, &qword_101698C18, &qword_101390740);
    v41 = *(v37 + 48);
    sub_1001BB2E0(v34, v33, type metadata accessor for OwnerSharingCircle);
    sub_1001BB2E0(v38, v39, type metadata accessor for OwnerPeerTrust);
    v42 = sub_1001B7644(v36, v33, v39);
    (*(v40 + 8))(v36 + v41, v141);
    if (v42)
    {
      v43 = *(v0 + 296);
      v45 = *(v0 + 264);
      v44 = *(v0 + 272);
      sub_100DEA678(v146, v42);

      sub_10000B3A8(v43, &qword_101698C18, &qword_101390740);
      sub_1001BA80C(v45, type metadata accessor for OwnerPeerTrust);
      v46 = v44;
    }

    else
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 352);
      v48 = *(v0 + 336);
      v49 = type metadata accessor for Logger();
      sub_1000076D4(v49, qword_10177A560);
      sub_1001BB2E0(v47, v48, type metadata accessor for OwnerSharingCircle);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v0 + 336);
      if (v52)
      {
        v54 = *(v0 + 296);
        v55 = *(v0 + 264);
        v142 = *(v0 + 272);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v146[0] = v57;
        *v56 = 141558275;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        sub_1001BA80C(v53, type metadata accessor for OwnerSharingCircle);
        v61 = sub_1000136BC(v58, v60, v146);

        *(v56 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v50, v51, "Cannot create client beacon share for owner circle: %{private,mask.hash}s.", v56, 0x16u);
        sub_100007BAC(v57);

        sub_10000B3A8(v54, &qword_101698C18, &qword_101390740);
        sub_1001BA80C(v55, type metadata accessor for OwnerPeerTrust);
        v46 = v142;
      }

      else
      {
        v62 = *(v0 + 296);
        v64 = *(v0 + 264);
        v63 = *(v0 + 272);

        sub_1001BA80C(v53, type metadata accessor for OwnerSharingCircle);
        sub_10000B3A8(v62, &qword_101698C18, &qword_101390740);
        sub_1001BA80C(v64, type metadata accessor for OwnerPeerTrust);
        v46 = v63;
      }
    }

    sub_1001BA80C(v46, type metadata accessor for OwnerPeerTrust);
  }

  v65 = *(v0 + 472);
  v66 = (*(v0 + 464) - 1) & *(v0 + 464);
  if (v66)
  {
LABEL_21:
    *(v0 + 464) = v66;
    *(v0 + 472) = v65;
    v67 = *(v0 + 448);
    v143 = *(v0 + 360);
    v69 = *(v0 + 296);
    v68 = *(v0 + 304);
    v70 = *(v0 + 280);
    v71 = *(v0 + 160);
    v72 = *(v0 + 168);
    v73 = *(v67 + 48);
    v74 = v72[9] * (__clz(__rbit64(v66)) | (v65 << 6));
    v75 = v72[2];
    *(v0 + 480) = v75;
    *(v0 + 488) = (v72 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v75(v68, v73 + v74, v71);
    v76 = *(v67 + 56);
    v77 = *(v70 + 48);
    v75(v68 + v77, v76 + v74, v71);
    v78 = *(v70 + 48);
    *(v0 + 528) = v78;
    v79 = v72[4];
    *(v0 + 496) = v79;
    *(v0 + 504) = (v72 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v79(v69, v68, v71);
    v79(v69 + v78, v68 + v77, v71);

    _swift_task_switch(sub_1001B0764, v143, 0);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        if (__OFADD__(v65++, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v65 >= (((1 << *(v0 + 74)) + 63) >> 6))
        {
          break;
        }

        v66 = *(*(v0 + 448) + 8 * v65 + 64);
        if (v66)
        {
          goto LABEL_21;
        }
      }

      v81 = *(v0 + 352);
      v82 = *(v0 + 312);
      v83 = *(v0 + 200);
      v84 = *(v0 + 208);
      v85 = *(v0 + 192);
      v86 = *(v0 + 160);
      v87 = *(v0 + 168);

      v88 = *(v82 + 20);
      v89 = *(v87 + 16);
      v89(v84, v81 + v88, v86);
      v89(v83, v81 + *(v82 + 24), v86);
      v89(v85, v81 + v88, v86);
      UUID.init()();
      if (qword_101694558 != -1)
      {
        swift_once();
      }

      v90 = *(v0 + 456);
      v91 = *(v0 + 352);
      v92 = *(v0 + 152);
      v93 = qword_10177A8F0;
      v94 = qword_10177A8F8;
      v95 = byte_10177A8E8;
      v96 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
      v97 = sub_100EB3708(v95, v93, v94);
      v98 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v91, v92);
      if (v90)
      {
        break;
      }

      v138 = *(v0 + 352);
      v144 = *(v0 + 432);
      v127 = v97;
      v134 = *(v0 + 200);
      v135 = *(v0 + 208);
      v130 = *(v0 + 184);
      v131 = *(v0 + 192);
      v99 = *(v0 + 168);
      v136 = *(v0 + 160);
      v100 = *(v0 + 144);
      v126 = *(v0 + 152);
      v137 = *(v0 + 440) + 1;
      v132 = *(v0 + 136);
      v133 = *(v0 + 128);
      objc_autoreleasePoolPop(v98);
      static Date.distantFuture.getter();
      v128 = objc_allocWithZone(SPBeaconShare);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v101 = UUID._bridgeToObjectiveC()().super.isa;
      v102 = UUID._bridgeToObjectiveC()().super.isa;
      v103 = v96;
      v104 = UUID._bridgeToObjectiveC()().super.isa;
      v105 = Date._bridgeToObjectiveC()().super.isa;
      v106 = Date._bridgeToObjectiveC()().super.isa;
      v129 = [v128 initWithIdentifier:isa beaconIdentifier:v101 sharingCircleIdentifier:v102 peerTrustIdentifier:v104 owner:v103 sharee:v127 state:5 creationDate:v105 expirationDate:v106];

      v107 = *(v132 + 8);
      v107(v100, v133);
      v107(v126, v133);
      v108 = *(v99 + 8);
      v108(v130, v136);
      v108(v131, v136);
      v108(v134, v136);
      v108(v135, v136);
      sub_100DEA678(v146, v129);

      sub_1001BA80C(v138, type metadata accessor for OwnerSharingCircle);
      if (v137 == v144)
      {

        v145 = *(v0 + 80);
        v139 = *(v0 + 88);

        v124 = *(v0 + 8);

        v124(v145, v139);
        return;
      }

      v109 = *(v0 + 440) + 1;
      *(v0 + 440) = v109;
      v110 = *(v0 + 424);
      if (v109 >= *(v110 + 16))
      {
        goto LABEL_49;
      }

      v111 = *(v0 + 352);
      v112 = *(v0 + 312);
      sub_1001BB2E0(v110 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 320) + 72) * v109, v111, type metadata accessor for OwnerSharingCircle);
      v113 = *(v111 + *(v112 + 32));
      v114 = *(v113 + 16);
      if (v114)
      {
        v115 = sub_1003A85FC(*(v113 + 16), 0);
        v116 = sub_1003CC2CC();
        v117 = *(v0 + 16);

        sub_1000128F8(v117);
        if (v116 != v114)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v115 = _swiftEmptyArrayStorage;
      }

      v118 = *(v0 + 352);
      v119 = swift_task_alloc();
      v65 = 0;
      *(v119 + 16) = v118;
      v120 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BACF8, v119, v115);
      *(v0 + 448) = v120;
      *(v0 + 456) = 0;

      v121 = *(v120 + 32);
      *(v0 + 74) = v121;
      v122 = 1 << v121;
      if (v122 < 64)
      {
        v123 = ~(-1 << v122);
      }

      else
      {
        v123 = -1;
      }

      v66 = v123 & *(v120 + 64);
      if (v66)
      {
        goto LABEL_21;
      }
    }

    objc_autoreleasePoolPop(v98);
  }
}

uint64_t sub_1001B185C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 564) = a1;
  *(v4 + 104) = type metadata accessor for DelegatedShareMeta(0);
  *(v4 + 112) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Calendar.Component();
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  *(v4 + 168) = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v4 + 200) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 208) = v8;
  *(v4 + 216) = *(v8 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle(0);
  *(v4 + 272) = v9;
  *(v4 + 280) = *(v9 - 8);
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v4 + 304) = v10;
  *(v4 + 312) = *(v10 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v11 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  *(v4 + 360) = v11;
  *(v4 + 368) = *(v11 + 64);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();

  return _swift_task_switch(sub_1001B1C54, v3, 0);
}

uint64_t sub_1001B1C54()
{
  v1 = v0[48];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[12];
  v0[4] = &_swiftEmptySetSingleton;
  v5 = *(v4 + 136);
  v0[49] = v5;
  v6 = *(v3 + 56);
  v0[50] = v6;
  v0[51] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v2);

  return _swift_task_switch(sub_1001B1CF8, v5, 0);
}

uint64_t sub_1001B1CF8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 564);
  sub_1000D2A70(*(v0 + 384), v3, &qword_1016980D0, &unk_10138F3B0);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = v6 + v2;
  v8 = swift_allocObject();
  *(v0 + 416) = v8;
  *(v8 + 16) = v1;
  sub_1000D2AD8(v3, v8 + v6, &qword_1016980D0, &unk_10138F3B0);
  *(v8 + v7) = (v5 & 1) == 0;

  v9 = swift_task_alloc();
  *(v0 + 424) = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1001B1E84;

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2718, v8, v10);
}

uint64_t sub_1001B1E84()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_1001B1FB0, v1, 0);
}

uint64_t sub_1001B1FB0()
{
  v1 = v0[12];
  sub_10000B3A8(v0[48], &qword_1016980D0, &unk_10138F3B0);
  v0[54] = v0[5];

  return _swift_task_switch(sub_1001B2034, v1, 0);
}

void sub_1001B2034(uint64_t a1)
{
  v95 = v1;
  v2 = *(v1 + 432);
  static Date.now.getter();
  v3 = *(v2 + 16);
  *(v1 + 440) = v3;
  if (v3)
  {
    v4 = 0;
    *(v1 + 560) = enum case for Calendar.Component.second(_:);
    while (1)
    {
      *(v1 + 448) = v4;
      v10 = *(v1 + 432);
      if (v4 >= *(v10 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v11 = *(v1 + 336);
      v12 = *(v1 + 296);
      v13 = *(v1 + 272);
      v14 = *(v1 + 264);
      v15 = *(v1 + 208);
      v16 = *(v1 + 216);
      sub_1001BB2E0(v10 + ((*(*(v1 + 280) + 80) + 32) & ~*(*(v1 + 280) + 80)) + *(*(v1 + 280) + 72) * v4, v12, type metadata accessor for OwnerSharingCircle);
      v17 = *(v16 + 16);
      v18 = *(v13 + 24);
      *(v1 + 456) = v17;
      *(v1 + 464) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v17(v14, v12 + v18, v15);
      v19 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v12, v11);
      objc_autoreleasePoolPop(v19);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v20 = *(v1 + 56);
      KeyPath = swift_getKeyPath();
      v22 = sub_1010790F4(KeyPath, v20);
      if (v23)
      {
        v93 = 0;
        v94 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v66 = v94;
        *(v1 + 16) = v93;
        *(v1 + 24) = v66;
        v67._object = 0x800000010134CA80;
        v67._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v67);
        *(v1 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v24 = *&v22;
      v86 = v17;
      v25 = *(v1 + 560);
      v27 = *(v1 + 160);
      v26 = *(v1 + 168);
      v28 = *(v1 + 152);

      static Calendar.current.getter();
      (*(v27 + 104))(v26, v25, v28);
      if ((~*&v24 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_33;
      }

      if (v24 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v24 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v89 = v4;
      v29 = *(v1 + 336);
      v30 = *(v1 + 304);
      v31 = *(v1 + 312);
      v32 = *(v1 + 192);
      v33 = *(v1 + 200);
      v34 = *(v1 + 184);
      v91 = *(v1 + 176);
      v35 = *(v1 + 160);
      v36 = *(v1 + 168);
      v37 = *(v1 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v35 + 8))(v36, v37);
      (*(v34 + 8))(v32, v91);
      v38 = *(v31 + 8);
      *(v1 + 472) = v38;
      *(v1 + 480) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v92 = v38;
      v38(v29, v30);
      v39 = *(v31 + 48);
      if (v39(v33, 1, v30) == 1)
      {
        v40 = *(v1 + 304);
        v41 = *(v1 + 200);
        static Date.distantFuture.getter();
        if (v39(v41, 1, v40) != 1)
        {
          sub_10000B3A8(*(v1 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v1 + 312) + 32))(*(v1 + 344), *(v1 + 200), *(v1 + 304));
      }

      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v42 = *(v1 + 344);
      v43 = *(v1 + 328);
      v44 = *(v1 + 304);
      v45 = *(v1 + 312);
      v47 = *(v1 + 288);
      v46 = *(v1 + 296);
      v48 = type metadata accessor for Logger();
      sub_1000076D4(v48, qword_10177AE28);
      sub_1001BB2E0(v46, v47, type metadata accessor for OwnerSharingCircle);
      (*(v45 + 16))(v43, v42, v44);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v1 + 328);
      v53 = *(v1 + 304);
      v87 = *(v1 + 344);
      v88 = *(v1 + 296);
      v54 = *(v1 + 288);
      if (v51)
      {
        v84 = *(v1 + 216);
        v85 = *(v1 + 264);
        v83 = *(v1 + 208);
        v55 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v55 = 141558531;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        sub_1001BA80C(v54, type metadata accessor for OwnerSharingCircle);
        v59 = sub_1000136BC(v56, v58, &v93);

        *(v55 + 14) = v59;
        *(v55 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        v63 = v52;
        v9 = v92;
        v92(v63, v53);
        v64 = sub_1000136BC(v60, v62, &v93);

        *(v55 + 24) = v64;
        _os_log_impl(&_mh_execute_header, v49, v50, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v55, 0x20u);
        swift_arrayDestroy();

        v92(v87, v53);
        (*(v84 + 8))(v85, v83);
      }

      else
      {
        v5 = *(v1 + 264);
        v6 = *(v1 + 208);
        v7 = *(v1 + 216);

        v8 = v52;
        v9 = v92;
        v92(v8, v53);
        sub_1001BA80C(v54, type metadata accessor for OwnerSharingCircle);
        v92(v87, v53);
        (*(v7 + 8))(v5, v6);
      }

      sub_1001BA80C(v88, type metadata accessor for OwnerSharingCircle);
      v4 = v89 + 1;
      if (v89 + 1 == *(v1 + 440))
      {
        v65 = v9;
        goto LABEL_29;
      }
    }

    if (static Date.< infix(_:_:)())
    {
      v68 = *(v1 + 400);
      v90 = *(v1 + 344);
      v69 = *(v1 + 304);
      v70 = *(v1 + 312);
      v71 = *(v1 + 296);
      v72 = *(v1 + 272);
      v73 = *(v1 + 208);
      v75 = *(v1 + 80);
      v74 = *(v1 + 88);
      v92(v74, v69);
      sub_10000B3A8(v75, &qword_1016980D0, &unk_10138F3B0);
      v86(v75, v71 + *(v72 + 20), v73);
      v68(v75, 0, 1, v73);
      (*(v70 + 16))(v74, v90, v69);
    }

    v76 = objc_allocWithZone(SPBeaconLocationShareContext);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v78 = [v76 initWithBeaconIdentifier:isa];
    *(v1 + 488) = v78;

    v79 = swift_task_alloc();
    *(v1 + 496) = v79;
    *v79 = v1;
    v79[1] = sub_1001B2AC4;
    v80 = *(v1 + 136);

    sub_100192E2C(v80, v78);
  }

  else
  {
    v65 = *(*(v1 + 312) + 8);
LABEL_29:
    v65(*(v1 + 352), *(v1 + 304));

    v81 = *(v1 + 32);

    v82 = *(v1 + 8);

    v82(v81);
  }
}

uint64_t sub_1001B2AC4()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_1001B3F40;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1001B2BEC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001B2BEC()
{
  (*(v0[16] + 32))(v0[18], v0[17], v0[15]);
  v1 = swift_task_alloc();
  v0[64] = v1;
  *v1 = v0;
  v1[1] = sub_1001B2C94;

  return daemon.getter();
}

uint64_t sub_1001B2C94(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 520) = a1;

  v3 = swift_task_alloc();
  *(v2 + 528) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DelegatedShareMetadataService();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService, &unk_1013BB8D0);
  *v3 = v9;
  v3[1] = sub_1001B2E70;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001B2E70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 536) = a1;

  if (v1)
  {
    v5 = v3[12];

    return _swift_task_switch(sub_1001B4CA0, v5, 0);
  }

  else
  {
    v6 = v3[37];
    v7 = v3[34];

    v8 = *(v7 + 20);
    v9 = swift_task_alloc();
    v3[68] = v9;
    *v9 = v4;
    v9[1] = sub_1001B303C;
    v10 = v3[14];

    return sub_1007AF3E4(v10, v6 + v8);
  }
}

uint64_t sub_1001B303C()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {

    v4 = sub_1001B5A2C;
  }

  else
  {
    v4 = sub_1001B3174;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1001B3174()
{
  v127 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  v121 = *(v2 + *(v1 + 20));
  sub_1001BA80C(v2, type metadata accessor for DelegatedShareMeta);
  v123 = *(v0 + 552);
  v3 = *(v0 + 456);
  v4 = *(v0 + 296);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(*(v0 + 272) + 20);
  v3(*(v0 + 256), v4 + v9, v8);
  v3(v6, v5, v8);
  v3(v7, v4 + v9, v8);
  UUID.init()();
  if (qword_101694558 != -1)
  {
LABEL_40:
    swift_once();
  }

  v10 = *(v0 + 320);
  v11 = *(v0 + 296);
  v119 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
  URL.absoluteString.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() handleWithWeb:v12];

  v14 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v11, v10);
  if (v123)
  {

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v108 = *(v0 + 472);
    v100 = *(v0 + 344);
    v101 = *(v0 + 320);
    v107 = *(v0 + 304);
    v123 = *(v0 + 296);
    v117 = *(v0 + 264);
    v104 = *(v0 + 248);
    v105 = *(v0 + 256);
    v102 = *(v0 + 232);
    v103 = *(v0 + 240);
    v15 = *(v0 + 216);
    v106 = *(v0 + 208);
    v114 = *(v0 + 144);
    v110 = *(v0 + 128);
    v112 = *(v0 + 120);
    objc_autoreleasePoolPop(v14);
    v99 = objc_allocWithZone(SPBeaconShare);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v97 = UUID._bridgeToObjectiveC()().super.isa;
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    v17 = UUID._bridgeToObjectiveC()().super.isa;
    v18 = Date._bridgeToObjectiveC()().super.isa;
    v19 = Date._bridgeToObjectiveC()().super.isa;
    LOBYTE(v96) = 1;
    v121 = [v99 initWithIdentifier:isa beaconIdentifier:v97 sharingCircleIdentifier:v16 peerTrustIdentifier:v17 owner:v119 sharee:v13 state:5 creationDate:v18 expirationDate:v19 visitorCount:v121 delegationStatus:v96];

    v108(v101, v107);
    v20 = *(v15 + 8);
    v20(v102, v106);
    v20(v103, v106);
    v20(v104, v106);
    v20(v105, v106);
    sub_100DEA678(&v125, v121);

    (*(v110 + 8))(v114, v112);
    v108(v100, v107);
    v20(v117, v106);
    sub_1001BA80C(v123, type metadata accessor for OwnerSharingCircle);
    v21 = *(v0 + 448) + 1;
    if (v21 == *(v0 + 440))
    {
      v123 = *(v0 + 472);
LABEL_8:
      v123(*(v0 + 352), *(v0 + 304));

      v22 = *(v0 + 32);

      v23 = *(v0 + 8);

      v23(v22);
    }

    else
    {
      while (1)
      {
        *(v0 + 448) = v21;
        v27 = *(v0 + 432);
        if (v21 >= *(v27 + 16))
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

        v28 = *(v0 + 336);
        v29 = *(v0 + 296);
        v30 = *(v0 + 272);
        v31 = *(v0 + 264);
        v32 = *(v0 + 208);
        v33 = *(v0 + 216);
        sub_1001BB2E0(v27 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v21, v29, type metadata accessor for OwnerSharingCircle);
        v34 = *(v33 + 16);
        v35 = *(v30 + 24);
        *(v0 + 456) = v34;
        *(v0 + 464) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v34(v31, v29 + v35, v32);
        v36 = objc_autoreleasePoolPush();
        sub_100E7AB5C(v29, v28);
        objc_autoreleasePoolPop(v36);
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        OS_dispatch_queue.sync<A>(execute:)();
        v37 = *(v0 + 56);
        KeyPath = swift_getKeyPath();
        v39 = sub_1010790F4(KeyPath, v37);
        if (v40)
        {
          v125 = 0;
          v126 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);
          v81 = v126;
          *(v0 + 16) = v125;
          *(v0 + 24) = v81;
          v82._object = 0x800000010134CA80;
          v82._countAndFlagsBits = 0xD000000000000026;
          String.append(_:)(v82);
          *(v0 + 64) = KeyPath;
          sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          return;
        }

        v41 = *&v39;
        v115 = v34;
        v121 = 0;
        v42 = *(v0 + 560);
        v44 = *(v0 + 160);
        v43 = *(v0 + 168);
        v45 = *(v0 + 152);

        static Calendar.current.getter();
        (*(v44 + 104))(v43, v42, v45);
        if ((~*&v41 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_37;
        }

        if (v41 <= -9.22337204e18)
        {
          goto LABEL_38;
        }

        if (v41 >= 9.22337204e18)
        {
          goto LABEL_39;
        }

        v120 = v21;
        v46 = *(v0 + 336);
        v47 = *(v0 + 304);
        v48 = *(v0 + 312);
        v49 = *(v0 + 192);
        v50 = *(v0 + 200);
        v51 = *(v0 + 184);
        v124 = *(v0 + 176);
        v52 = *(v0 + 160);
        v53 = *(v0 + 168);
        v54 = *(v0 + 152);
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        (*(v52 + 8))(v53, v54);
        (*(v51 + 8))(v49, v124);
        v55 = *(v48 + 8);
        *(v0 + 472) = v55;
        *(v0 + 480) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v123 = v55;
        v55(v46, v47);
        v56 = *(v48 + 48);
        if (v56(v50, 1, v47) == 1)
        {
          v57 = *(v0 + 304);
          v58 = *(v0 + 200);
          static Date.distantFuture.getter();
          if (v56(v58, 1, v57) != 1)
          {
            sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
        }

        if ((static Date.> infix(_:_:)() & 1) == 0)
        {
          break;
        }

        if (qword_101694778 != -1)
        {
          swift_once();
        }

        v59 = *(v0 + 344);
        v60 = *(v0 + 328);
        v61 = *(v0 + 304);
        v62 = *(v0 + 312);
        v64 = *(v0 + 288);
        v63 = *(v0 + 296);
        v65 = type metadata accessor for Logger();
        sub_1000076D4(v65, qword_10177AE28);
        sub_1001BB2E0(v63, v64, type metadata accessor for OwnerSharingCircle);
        (*(v62 + 16))(v60, v59, v61);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        v68 = os_log_type_enabled(v66, v67);
        v69 = *(v0 + 328);
        v70 = *(v0 + 304);
        v116 = *(v0 + 344);
        v118 = *(v0 + 296);
        v71 = *(v0 + 288);
        if (v68)
        {
          v113 = *(v0 + 264);
          v109 = *(v0 + 208);
          v111 = *(v0 + 216);
          v72 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *v72 = 141558531;
          *(v72 + 4) = 1752392040;
          *(v72 + 12) = 2081;
          sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          sub_1001BA80C(v71, type metadata accessor for OwnerSharingCircle);
          v76 = sub_1000136BC(v73, v75, &v125);

          *(v72 + 14) = v76;
          *(v72 + 22) = 2082;
          sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v78;
          v123(v69, v70);
          v80 = sub_1000136BC(v77, v79, &v125);

          *(v72 + 24) = v80;
          _os_log_impl(&_mh_execute_header, v66, v67, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v72, 0x20u);
          swift_arrayDestroy();

          v123(v116, v70);
          (*(v111 + 8))(v113, v109);
        }

        else
        {
          v24 = *(v0 + 264);
          v25 = *(v0 + 208);
          v26 = *(v0 + 216);

          v123(v69, v70);
          sub_1001BA80C(v71, type metadata accessor for OwnerSharingCircle);
          v123(v116, v70);
          (*(v26 + 8))(v24, v25);
        }

        sub_1001BA80C(v118, type metadata accessor for OwnerSharingCircle);
        v21 = v120 + 1;
        if (v120 + 1 == *(v0 + 440))
        {
          goto LABEL_8;
        }
      }

      if (static Date.< infix(_:_:)())
      {
        v83 = *(v0 + 400);
        v122 = *(v0 + 344);
        v84 = *(v0 + 304);
        v85 = *(v0 + 312);
        v86 = *(v0 + 296);
        v87 = *(v0 + 272);
        v88 = *(v0 + 208);
        v90 = *(v0 + 80);
        v89 = *(v0 + 88);
        v123(v89, v84);
        sub_10000B3A8(v90, &qword_1016980D0, &unk_10138F3B0);
        v115(v90, v86 + *(v87 + 20), v88);
        v83(v90, 0, 1, v88);
        (*(v85 + 16))(v89, v122, v84);
      }

      v91 = objc_allocWithZone(SPBeaconLocationShareContext);
      v92 = UUID._bridgeToObjectiveC()().super.isa;
      v93 = [v91 initWithBeaconIdentifier:v92];
      *(v0 + 488) = v93;

      v94 = swift_task_alloc();
      *(v0 + 496) = v94;
      *v94 = v0;
      v94[1] = sub_1001B2AC4;
      v95 = *(v0 + 136);

      sub_100192E2C(v95, v93);
    }
  }
}

void sub_1001B3F40()
{
  v117 = v0;

  if (qword_101694778 != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = *(v0 + 456);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v104 = type metadata accessor for Logger();
  sub_1000076D4(v104, qword_10177AE28);
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 472);
  v9 = *(v0 + 296);
  v110 = *(v0 + 304);
  v112 = *(v0 + 344);
  v10 = *(v0 + 264);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  if (v7)
  {
    v107 = *(v0 + 296);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v115 = v102;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v98 = v8;
    v100 = v10;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = sub_1000136BC(v16, v18, &v115);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v21;
    *v15 = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Beacon: %{private,mask.hash}s is not delegated. Error thrown %{public}@.", v14, 0x20u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v102);

    v98(v112, v110);
    v19(v100, v13);
    v22 = v107;
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v8(v112, v110);
    v23(v10, v13);
    v22 = v9;
  }

  sub_1001BA80C(v22, type metadata accessor for OwnerSharingCircle);
  v24 = *(v0 + 448) + 1;
  if (v24 == *(v0 + 440))
  {
    v113 = *(v0 + 472);
LABEL_7:
    v113(*(v0 + 352), *(v0 + 304));

    v25 = *(v0 + 32);

    v26 = *(v0 + 8);

    v26(v25);
  }

  else
  {
    while (1)
    {
      *(v0 + 448) = v24;
      v30 = *(v0 + 432);
      if (v24 >= *(v30 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v31 = *(v0 + 336);
      v32 = *(v0 + 296);
      v33 = *(v0 + 272);
      v34 = *(v0 + 264);
      v35 = *(v0 + 208);
      v36 = *(v0 + 216);
      sub_1001BB2E0(v30 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v24, v32, type metadata accessor for OwnerSharingCircle);
      v37 = *(v36 + 16);
      v38 = *(v33 + 24);
      *(v0 + 456) = v37;
      *(v0 + 464) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v34, v32 + v38, v35);
      v39 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v32, v31);
      objc_autoreleasePoolPop(v39);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v40 = *(v0 + 56);
      KeyPath = swift_getKeyPath();
      v42 = sub_1010790F4(KeyPath, v40);
      if (v43)
      {
        v115 = 0;
        v116 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v83 = v116;
        *(v0 + 16) = v115;
        *(v0 + 24) = v83;
        v84._object = 0x800000010134CA80;
        v84._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v84);
        *(v0 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v44 = *&v42;
      v105 = v37;
      v45 = *(v0 + 560);
      v47 = *(v0 + 160);
      v46 = *(v0 + 168);
      v48 = *(v0 + 152);

      static Calendar.current.getter();
      (*(v47 + 104))(v46, v45, v48);
      if ((~*&v44 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_36;
      }

      if (v44 <= -9.22337204e18)
      {
        goto LABEL_37;
      }

      if (v44 >= 9.22337204e18)
      {
        goto LABEL_38;
      }

      v109 = v24;
      v49 = *(v0 + 336);
      v50 = *(v0 + 304);
      v51 = *(v0 + 312);
      v52 = *(v0 + 192);
      v53 = *(v0 + 200);
      v54 = *(v0 + 184);
      v114 = *(v0 + 176);
      v55 = *(v0 + 160);
      v56 = *(v0 + 168);
      v57 = *(v0 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v55 + 8))(v56, v57);
      (*(v54 + 8))(v52, v114);
      v58 = *(v51 + 8);
      *(v0 + 472) = v58;
      *(v0 + 480) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v113 = v58;
      v58(v49, v50);
      v59 = *(v51 + 48);
      if (v59(v53, 1, v50) == 1)
      {
        v60 = *(v0 + 304);
        v61 = *(v0 + 200);
        static Date.distantFuture.getter();
        if (v59(v61, 1, v60) != 1)
        {
          sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
      }

      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 344);
      v63 = *(v0 + 328);
      v64 = *(v0 + 304);
      v65 = *(v0 + 312);
      v67 = *(v0 + 288);
      v66 = *(v0 + 296);
      sub_1000076D4(v104, qword_10177AE28);
      sub_1001BB2E0(v66, v67, type metadata accessor for OwnerSharingCircle);
      (*(v65 + 16))(v63, v62, v64);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 328);
      v72 = *(v0 + 304);
      v106 = *(v0 + 344);
      v108 = *(v0 + 296);
      v73 = *(v0 + 288);
      if (v70)
      {
        v101 = *(v0 + 216);
        v103 = *(v0 + 264);
        v99 = *(v0 + 208);
        v74 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v74 = 141558531;
        *(v74 + 4) = 1752392040;
        *(v74 + 12) = 2081;
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        sub_1001BA80C(v73, type metadata accessor for OwnerSharingCircle);
        v78 = sub_1000136BC(v75, v77, &v115);

        *(v74 + 14) = v78;
        *(v74 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        v113(v71, v72);
        v82 = sub_1000136BC(v79, v81, &v115);

        *(v74 + 24) = v82;
        _os_log_impl(&_mh_execute_header, v68, v69, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v74, 0x20u);
        swift_arrayDestroy();

        v113(v106, v72);
        (*(v101 + 8))(v103, v99);
      }

      else
      {
        v27 = *(v0 + 264);
        v28 = *(v0 + 208);
        v29 = *(v0 + 216);

        v113(v71, v72);
        sub_1001BA80C(v73, type metadata accessor for OwnerSharingCircle);
        v113(v106, v72);
        (*(v29 + 8))(v27, v28);
      }

      sub_1001BA80C(v108, type metadata accessor for OwnerSharingCircle);
      v24 = v109 + 1;
      if (v109 + 1 == *(v0 + 440))
      {
        goto LABEL_7;
      }
    }

    if (static Date.< infix(_:_:)())
    {
      v85 = *(v0 + 400);
      v111 = *(v0 + 344);
      v86 = *(v0 + 304);
      v87 = *(v0 + 312);
      v88 = *(v0 + 296);
      v89 = *(v0 + 272);
      v90 = *(v0 + 208);
      v92 = *(v0 + 80);
      v91 = *(v0 + 88);
      v113(v91, v86);
      sub_10000B3A8(v92, &qword_1016980D0, &unk_10138F3B0);
      v105(v92, v88 + *(v89 + 20), v90);
      v85(v92, 0, 1, v90);
      (*(v87 + 16))(v91, v111, v86);
    }

    v93 = objc_allocWithZone(SPBeaconLocationShareContext);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v95 = [v93 initWithBeaconIdentifier:isa];
    *(v0 + 488) = v95;

    v96 = swift_task_alloc();
    *(v0 + 496) = v96;
    *v96 = v0;
    v96[1] = sub_1001B2AC4;
    v97 = *(v0 + 136);

    sub_100192E2C(v97, v95);
  }
}

void sub_1001B4CA0()
{
  v126 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 240);
  v6 = *(v0 + 208);
  v7 = *(*(v0 + 272) + 20);
  v1(*(v0 + 256), v2 + v7, v6);
  v1(v4, v3, v6);
  v1(v5, v2 + v7, v6);
  UUID.init()();
  if (qword_101694558 != -1)
  {
LABEL_36:
    swift_once();
  }

  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  v121 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
  URL.absoluteString.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() handleWithWeb:v10];

  v12 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v9, v8);
  v107 = *(v0 + 472);
  v97 = *(v0 + 344);
  v100 = *(v0 + 320);
  v106 = *(v0 + 304);
  v117 = *(v0 + 264);
  v119 = *(v0 + 296);
  v103 = *(v0 + 248);
  v104 = *(v0 + 256);
  v101 = *(v0 + 232);
  v102 = *(v0 + 240);
  v13 = *(v0 + 216);
  v105 = *(v0 + 208);
  v115 = *(v0 + 144);
  v110 = *(v0 + 128);
  v112 = *(v0 + 120);
  objc_autoreleasePoolPop(v12);
  v98 = objc_allocWithZone(SPBeaconShare);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v95 = UUID._bridgeToObjectiveC()().super.isa;
  v14 = UUID._bridgeToObjectiveC()().super.isa;
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = Date._bridgeToObjectiveC()().super.isa;
  v17 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v94) = 1;
  v99 = [v98 initWithIdentifier:isa beaconIdentifier:v95 sharingCircleIdentifier:v14 peerTrustIdentifier:v15 owner:v121 sharee:v11 state:5 creationDate:v16 expirationDate:v17 visitorCount:0 delegationStatus:v94];

  v107(v100, v106);
  v18 = *(v13 + 8);
  v18(v101, v105);
  v18(v102, v105);
  v18(v103, v105);
  v18(v104, v105);
  sub_100DEA678(&v124, v99);

  (*(v110 + 8))(v115, v112);
  v107(v97, v106);
  v18(v117, v105);
  sub_1001BA80C(v119, type metadata accessor for OwnerSharingCircle);
  v19 = *(v0 + 448) + 1;
  if (v19 == *(v0 + 440))
  {
    v122 = *(v0 + 472);
LABEL_4:
    v122(*(v0 + 352), *(v0 + 304));

    v20 = *(v0 + 32);

    v21 = *(v0 + 8);

    v21(v20);
  }

  else
  {
    while (1)
    {
      *(v0 + 448) = v19;
      v25 = *(v0 + 432);
      if (v19 >= *(v25 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v26 = *(v0 + 336);
      v27 = *(v0 + 296);
      v28 = *(v0 + 272);
      v29 = *(v0 + 264);
      v30 = *(v0 + 208);
      v31 = *(v0 + 216);
      sub_1001BB2E0(v25 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v19, v27, type metadata accessor for OwnerSharingCircle);
      v32 = *(v31 + 16);
      v33 = *(v28 + 24);
      *(v0 + 456) = v32;
      *(v0 + 464) = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v32(v29, v27 + v33, v30);
      v34 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v27, v26);
      objc_autoreleasePoolPop(v34);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v35 = *(v0 + 56);
      KeyPath = swift_getKeyPath();
      v37 = sub_1010790F4(KeyPath, v35);
      if (v38)
      {
        v124 = 0;
        v125 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v79 = v125;
        *(v0 + 16) = v124;
        *(v0 + 24) = v79;
        v80._object = 0x800000010134CA80;
        v80._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v80);
        *(v0 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v39 = *&v37;
      v113 = v32;
      v40 = *(v0 + 560);
      v42 = *(v0 + 160);
      v41 = *(v0 + 168);
      v43 = *(v0 + 152);

      static Calendar.current.getter();
      (*(v42 + 104))(v41, v40, v43);
      if ((~*&v39 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_33;
      }

      if (v39 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v39 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v118 = v19;
      v44 = *(v0 + 336);
      v45 = *(v0 + 304);
      v46 = *(v0 + 312);
      v47 = *(v0 + 192);
      v48 = *(v0 + 200);
      v49 = *(v0 + 184);
      v123 = *(v0 + 176);
      v50 = *(v0 + 160);
      v51 = *(v0 + 168);
      v52 = *(v0 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v50 + 8))(v51, v52);
      (*(v49 + 8))(v47, v123);
      v53 = *(v46 + 8);
      *(v0 + 472) = v53;
      *(v0 + 480) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v122 = v53;
      v53(v44, v45);
      v54 = *(v46 + 48);
      if (v54(v48, 1, v45) == 1)
      {
        v55 = *(v0 + 304);
        v56 = *(v0 + 200);
        static Date.distantFuture.getter();
        if (v54(v56, 1, v55) != 1)
        {
          sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
      }

      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v57 = *(v0 + 344);
      v58 = *(v0 + 328);
      v59 = *(v0 + 304);
      v60 = *(v0 + 312);
      v62 = *(v0 + 288);
      v61 = *(v0 + 296);
      v63 = type metadata accessor for Logger();
      sub_1000076D4(v63, qword_10177AE28);
      sub_1001BB2E0(v61, v62, type metadata accessor for OwnerSharingCircle);
      (*(v60 + 16))(v58, v57, v59);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 328);
      v68 = *(v0 + 304);
      v114 = *(v0 + 344);
      v116 = *(v0 + 296);
      v69 = *(v0 + 288);
      if (v66)
      {
        v109 = *(v0 + 216);
        v111 = *(v0 + 264);
        v108 = *(v0 + 208);
        v70 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *v70 = 141558531;
        *(v70 + 4) = 1752392040;
        *(v70 + 12) = 2081;
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        sub_1001BA80C(v69, type metadata accessor for OwnerSharingCircle);
        v74 = sub_1000136BC(v71, v73, &v124);

        *(v70 + 14) = v74;
        *(v70 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v122(v67, v68);
        v78 = sub_1000136BC(v75, v77, &v124);

        *(v70 + 24) = v78;
        _os_log_impl(&_mh_execute_header, v64, v65, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v70, 0x20u);
        swift_arrayDestroy();

        v122(v114, v68);
        (*(v109 + 8))(v111, v108);
      }

      else
      {
        v22 = *(v0 + 264);
        v23 = *(v0 + 208);
        v24 = *(v0 + 216);

        v122(v67, v68);
        sub_1001BA80C(v69, type metadata accessor for OwnerSharingCircle);
        v122(v114, v68);
        (*(v24 + 8))(v22, v23);
      }

      sub_1001BA80C(v116, type metadata accessor for OwnerSharingCircle);
      v19 = v118 + 1;
      if (v118 + 1 == *(v0 + 440))
      {
        goto LABEL_4;
      }
    }

    if (static Date.< infix(_:_:)())
    {
      v81 = *(v0 + 400);
      v120 = *(v0 + 344);
      v82 = *(v0 + 304);
      v83 = *(v0 + 312);
      v84 = *(v0 + 296);
      v85 = *(v0 + 272);
      v86 = *(v0 + 208);
      v88 = *(v0 + 80);
      v87 = *(v0 + 88);
      v122(v87, v82);
      sub_10000B3A8(v88, &qword_1016980D0, &unk_10138F3B0);
      v113(v88, v84 + *(v85 + 20), v86);
      v81(v88, 0, 1, v86);
      (*(v83 + 16))(v87, v120, v82);
    }

    v89 = objc_allocWithZone(SPBeaconLocationShareContext);
    v90 = UUID._bridgeToObjectiveC()().super.isa;
    v91 = [v89 initWithBeaconIdentifier:v90];
    *(v0 + 488) = v91;

    v92 = swift_task_alloc();
    *(v0 + 496) = v92;
    *v92 = v0;
    v92[1] = sub_1001B2AC4;
    v93 = *(v0 + 136);

    sub_100192E2C(v93, v91);
  }
}

void sub_1001B5A2C()
{
  v126 = v0;

  v1 = *(v0 + 456);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 240);
  v6 = *(v0 + 208);
  v7 = *(*(v0 + 272) + 20);
  v1(*(v0 + 256), v2 + v7, v6);
  v1(v4, v3, v6);
  v1(v5, v2 + v7, v6);
  UUID.init()();
  if (qword_101694558 != -1)
  {
LABEL_36:
    swift_once();
  }

  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  v121 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
  URL.absoluteString.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() handleWithWeb:v10];

  v12 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v9, v8);
  v107 = *(v0 + 472);
  v97 = *(v0 + 344);
  v100 = *(v0 + 320);
  v106 = *(v0 + 304);
  v117 = *(v0 + 264);
  v119 = *(v0 + 296);
  v103 = *(v0 + 248);
  v104 = *(v0 + 256);
  v101 = *(v0 + 232);
  v102 = *(v0 + 240);
  v13 = *(v0 + 216);
  v105 = *(v0 + 208);
  v115 = *(v0 + 144);
  v110 = *(v0 + 128);
  v112 = *(v0 + 120);
  objc_autoreleasePoolPop(v12);
  v98 = objc_allocWithZone(SPBeaconShare);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v95 = UUID._bridgeToObjectiveC()().super.isa;
  v14 = UUID._bridgeToObjectiveC()().super.isa;
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = Date._bridgeToObjectiveC()().super.isa;
  v17 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v94) = 1;
  v99 = [v98 initWithIdentifier:isa beaconIdentifier:v95 sharingCircleIdentifier:v14 peerTrustIdentifier:v15 owner:v121 sharee:v11 state:5 creationDate:v16 expirationDate:v17 visitorCount:0 delegationStatus:v94];

  v107(v100, v106);
  v18 = *(v13 + 8);
  v18(v101, v105);
  v18(v102, v105);
  v18(v103, v105);
  v18(v104, v105);
  sub_100DEA678(&v124, v99);

  (*(v110 + 8))(v115, v112);
  v107(v97, v106);
  v18(v117, v105);
  sub_1001BA80C(v119, type metadata accessor for OwnerSharingCircle);
  v19 = *(v0 + 448) + 1;
  if (v19 == *(v0 + 440))
  {
    v122 = *(v0 + 472);
LABEL_4:
    v122(*(v0 + 352), *(v0 + 304));

    v20 = *(v0 + 32);

    v21 = *(v0 + 8);

    v21(v20);
  }

  else
  {
    while (1)
    {
      *(v0 + 448) = v19;
      v25 = *(v0 + 432);
      if (v19 >= *(v25 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v26 = *(v0 + 336);
      v27 = *(v0 + 296);
      v28 = *(v0 + 272);
      v29 = *(v0 + 264);
      v30 = *(v0 + 208);
      v31 = *(v0 + 216);
      sub_1001BB2E0(v25 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v19, v27, type metadata accessor for OwnerSharingCircle);
      v32 = *(v31 + 16);
      v33 = *(v28 + 24);
      *(v0 + 456) = v32;
      *(v0 + 464) = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v32(v29, v27 + v33, v30);
      v34 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v27, v26);
      objc_autoreleasePoolPop(v34);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v35 = *(v0 + 56);
      KeyPath = swift_getKeyPath();
      v37 = sub_1010790F4(KeyPath, v35);
      if (v38)
      {
        v124 = 0;
        v125 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v79 = v125;
        *(v0 + 16) = v124;
        *(v0 + 24) = v79;
        v80._object = 0x800000010134CA80;
        v80._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v80);
        *(v0 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v39 = *&v37;
      v113 = v32;
      v40 = *(v0 + 560);
      v42 = *(v0 + 160);
      v41 = *(v0 + 168);
      v43 = *(v0 + 152);

      static Calendar.current.getter();
      (*(v42 + 104))(v41, v40, v43);
      if ((~*&v39 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_33;
      }

      if (v39 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v39 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v118 = v19;
      v44 = *(v0 + 336);
      v45 = *(v0 + 304);
      v46 = *(v0 + 312);
      v47 = *(v0 + 192);
      v48 = *(v0 + 200);
      v49 = *(v0 + 184);
      v123 = *(v0 + 176);
      v50 = *(v0 + 160);
      v51 = *(v0 + 168);
      v52 = *(v0 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v50 + 8))(v51, v52);
      (*(v49 + 8))(v47, v123);
      v53 = *(v46 + 8);
      *(v0 + 472) = v53;
      *(v0 + 480) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v122 = v53;
      v53(v44, v45);
      v54 = *(v46 + 48);
      if (v54(v48, 1, v45) == 1)
      {
        v55 = *(v0 + 304);
        v56 = *(v0 + 200);
        static Date.distantFuture.getter();
        if (v54(v56, 1, v55) != 1)
        {
          sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
      }

      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v57 = *(v0 + 344);
      v58 = *(v0 + 328);
      v59 = *(v0 + 304);
      v60 = *(v0 + 312);
      v62 = *(v0 + 288);
      v61 = *(v0 + 296);
      v63 = type metadata accessor for Logger();
      sub_1000076D4(v63, qword_10177AE28);
      sub_1001BB2E0(v61, v62, type metadata accessor for OwnerSharingCircle);
      (*(v60 + 16))(v58, v57, v59);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 328);
      v68 = *(v0 + 304);
      v114 = *(v0 + 344);
      v116 = *(v0 + 296);
      v69 = *(v0 + 288);
      if (v66)
      {
        v109 = *(v0 + 216);
        v111 = *(v0 + 264);
        v108 = *(v0 + 208);
        v70 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *v70 = 141558531;
        *(v70 + 4) = 1752392040;
        *(v70 + 12) = 2081;
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        sub_1001BA80C(v69, type metadata accessor for OwnerSharingCircle);
        v74 = sub_1000136BC(v71, v73, &v124);

        *(v70 + 14) = v74;
        *(v70 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v122(v67, v68);
        v78 = sub_1000136BC(v75, v77, &v124);

        *(v70 + 24) = v78;
        _os_log_impl(&_mh_execute_header, v64, v65, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v70, 0x20u);
        swift_arrayDestroy();

        v122(v114, v68);
        (*(v109 + 8))(v111, v108);
      }

      else
      {
        v22 = *(v0 + 264);
        v23 = *(v0 + 208);
        v24 = *(v0 + 216);

        v122(v67, v68);
        sub_1001BA80C(v69, type metadata accessor for OwnerSharingCircle);
        v122(v114, v68);
        (*(v24 + 8))(v22, v23);
      }

      sub_1001BA80C(v116, type metadata accessor for OwnerSharingCircle);
      v19 = v118 + 1;
      if (v118 + 1 == *(v0 + 440))
      {
        goto LABEL_4;
      }
    }

    if (static Date.< infix(_:_:)())
    {
      v81 = *(v0 + 400);
      v120 = *(v0 + 344);
      v82 = *(v0 + 304);
      v83 = *(v0 + 312);
      v84 = *(v0 + 296);
      v85 = *(v0 + 272);
      v86 = *(v0 + 208);
      v88 = *(v0 + 80);
      v87 = *(v0 + 88);
      v122(v87, v82);
      sub_10000B3A8(v88, &qword_1016980D0, &unk_10138F3B0);
      v113(v88, v84 + *(v85 + 20), v86);
      v81(v88, 0, 1, v86);
      (*(v83 + 16))(v87, v120, v82);
    }

    v89 = objc_allocWithZone(SPBeaconLocationShareContext);
    v90 = UUID._bridgeToObjectiveC()().super.isa;
    v91 = [v89 initWithBeaconIdentifier:v90];
    *(v0 + 488) = v91;

    v92 = swift_task_alloc();
    *(v0 + 496) = v92;
    *v92 = v0;
    v92[1] = sub_1001B2AC4;
    v93 = *(v0 + 136);

    sub_100192E2C(v93, v91);
  }
}

uint64_t sub_1001B67C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v14;
  *(v8 + 80) = a5;
  *(v8 + 88) = a7;
  *(v8 + 57) = a6;
  *(v8 + 72) = a4;
  v9 = type metadata accessor for Date();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  *(v8 + 160) = v11;
  *(v8 + 168) = *(v11 - 8);
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1001B694C, 0, 0);
}

uint64_t sub_1001B694C()
{
  *(v0 + 40) = xmmword_1013903C0;
  *(v0 + 56) = 0;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  v2 = sub_1001B8FE4(&qword_101698C58, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_1001B6A44;
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 72);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v5, v0 + 40, v3, v4, v2);
}

uint64_t sub_1001B6A44()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1001B7114;
  }

  else
  {
    v5 = sub_1001B6BB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B6BB4()
{
  v38 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v35 = v7;
    v8 = *(v0 + 57);
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 136315907;
    log = v6;
    v37 = v34;
    if (v8)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 64) = *(v0 + 80);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v15;
    }

    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    v22 = sub_1000136BC(v10, v11, &v37);

    *(v9 + 4) = v22;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v16 + 8))(v17, v18);
    v26 = sub_1000136BC(v23, v25, &v37);

    *(v9 + 24) = v26;
    *(v9 + 32) = 2082;
    v27 = swift_projectBox();
    swift_beginAccess();
    (*(v21 + 16))(v19, v27, v20);
    sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v21 + 8))(v19, v20);
    v31 = sub_1000136BC(v28, v30, &v37);

    *(v9 + 34) = v31;
    _os_log_impl(&_mh_execute_header, log, v35, "%s Expiring %{private,mask.hash}s at %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v14 = *(v0 + 136);

    (*(v12 + 8))(v13, v14);
  }

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 104);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1001B6FCC, v32, 0);
}

uint64_t sub_1001B6FCC()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 80);
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1 & 1;

  static Transaction.asyncTask(name:block:)();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001B7114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B7190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001B7260, a3, 0);
}

uint64_t sub_1001B7260()
{
  v1 = *(*(v0 + 40) + 136);
  *(v0 + 80) = v1;
  *(v0 + 120) = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
  *(v0 + 88) = sub_100B08164(&off_1016082B0);

  return _swift_task_switch(sub_1001B72EC, v1, 0);
}

uint64_t sub_1001B72EC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  (*(v6 + 16))(v4, *(v0 + 32) + *(v0 + 120), v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 96) = v9;
  *(v9 + 16) = v1;
  (*(v6 + 32))(v9 + v7, v4, v5);
  *(v9 + v8) = v2;

  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v11 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v10 = v0;
  v10[1] = sub_1001B7484;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v11);
}

uint64_t sub_1001B7484()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1001B75B0, v1, 0);
}

uint64_t sub_1001B75B0()
{
  v1 = v0[5];
  v0[14] = v0[2];
  return _swift_task_switch(sub_1001B75D4, v1, 0);
}

uint64_t sub_1001B75D4()
{
  **(v0 + 24) = *(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001B7644(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v42 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for OwnerPeerTrust(0);
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() handleWithString:v15];

  if (v16)
  {
    v43 = a1;
    v17 = *(a2 + *(type metadata accessor for OwnerSharingCircle(0) + 32));
    if (*(v17 + 16) && (v41 = v4, v18 = sub_1000210EC(a3 + *(v14 + 20)), (v19 & 1) != 0))
    {
      v36 = qword_101391008[*(*(v17 + 56) + v18)];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v39 = UUID._bridgeToObjectiveC()().super.isa;
      v38 = UUID._bridgeToObjectiveC()().super.isa;
      v37 = UUID._bridgeToObjectiveC()().super.isa;
      v35 = [objc_opt_self() SPOwner];
      v20 = objc_autoreleasePoolPush();
      sub_100E7AB5C(a2, v13);
      v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      objc_autoreleasePoolPop(v20);
      v21 = Date._bridgeToObjectiveC()().super.isa;
      v34 = v21;
      v22 = *(v42 + 8);
      v22(v13, v8);
      static Date.distantFuture.getter();
      v23 = Date._bridgeToObjectiveC()().super.isa;
      v22(v11, v8);
      LOBYTE(v33) = 0;
      v32 = v21;
      v24 = isa;
      v26 = v38;
      v25 = v39;
      v27 = v37;
      v28 = v35;
      v29 = [v41 initWithIdentifier:isa beaconIdentifier:v39 sharingCircleIdentifier:v38 peerTrustIdentifier:v37 owner:v35 sharee:v16 state:v36 creationDate:v32 expirationDate:v23 visitorCount:0 delegationStatus:v33];
    }

    else
    {

      v29 = 0;
    }

    a1 = v43;
  }

  else
  {
    v29 = 0;
  }

  sub_1001BA80C(a3, type metadata accessor for OwnerPeerTrust);
  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 8))(a1, v30);
  sub_1001BA80C(a2, type metadata accessor for OwnerSharingCircle);
  return v29;
}

uint64_t sub_1001B79E4()
{
  v1 = v0[3];
  if (v1 == 1)
  {
    v5 = sub_1003BD1D0;
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v3 = sub_1000D2464;
    goto LABEL_5;
  }

  if (!v1)
  {
    v5 = sub_1003B9AEC;
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v3 = sub_1001B7B20;
LABEL_5:
    v2[1] = v3;

    return v5();
  }

  type metadata accessor for SPRecordsTypeToDelete(0);
  v0[2] = v1;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_1001B7B20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001B7C14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001B7D6C, v1, 0);
}

uint64_t sub_1001B7D6C()
{
  v1 = *(*(v0 + 64) + 136);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_1001B7D90, v1, 0);
}

uint64_t sub_1001B7D90()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);
  v6 = *(v3 + 16);
  *(v0 + 160) = v6;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 280) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_1001B7F14;
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9818, v9, v13);
}

uint64_t sub_1001B7F14()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1001B8040, v1, 0);
}

uint64_t sub_1001B8040()
{
  v1 = v0[18];
  v2 = type metadata accessor for MemberSharingCircle(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  if (v3 == 1)
  {
    v4 = v0[19];

    return _swift_task_switch(sub_1001B8320, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_1001B8190;
    v6 = v0[7];

    return sub_1003B218C(v6, 1);
  }
}

uint64_t sub_1001B8190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001B8320()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 280) + 24) & ~*(v0 + 280);
  (*(v0 + 160))(v3, *(v0 + 56), v4);
  v6 = swift_allocObject();
  *(v0 + 216) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_1001B8470;
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9830, v6, v9);
}

uint64_t sub_1001B8470()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1001B859C, v1, 0);
}

uint64_t sub_1001B859C()
{
  v26 = v0;
  v1 = v0[10];
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  if (v3 == 1)
  {
    if (qword_101694488 != -1)
    {
      swift_once();
    }

    v4 = v0[20];
    v5 = v0[14];
    v6 = v0[11];
    v7 = v0[7];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A578);
    v4(v5, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[12];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_1000136BC(v17, v19, &v25);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "No share for %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    v24 = v0[1];

    return v24();
  }

  else
  {
    v21 = *(v0[8] + 200);
    v0[5] = type metadata accessor for MemberCircleRevokeManager();
    v0[6] = &off_1016634E8;
    v0[2] = v21;

    v22 = swift_task_alloc();
    v0[29] = v22;
    *v22 = v0;
    v22[1] = sub_1001B8920;

    return sub_1003AE100((v0 + 2));
  }
}

uint64_t sub_1001B8920(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    *(v3 + 272) = v1;
    v4 = *(v3 + 64);
    v5 = sub_1001B8E18;
  }

  else
  {
    v5 = sub_1001B8A50;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001B8A50()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 280) + 24) & ~*(v0 + 280);
  (*(v0 + 160))(v3, *(v0 + 56), v4);
  v6 = swift_allocObject();
  *(v0 + 248) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);
  v9 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_1001B8BD0;

  return v9(&unk_1013906E0, v6);
}

uint64_t sub_1001B8BD0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1001B8DA8;
  }

  else
  {
    v2 = sub_1001B8D00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B8D00()
{

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B8DA8()
{

  v0[34] = v0[33];
  v1 = v0[8];

  return _swift_task_switch(sub_1001B8E18, v1, 0);
}

uint64_t sub_1001B8E18()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B8EC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1001B7C14(a1);
}

uint64_t sub_1001B8FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B9084(uint64_t a1, char *a2, uint64_t a3, void (*a4)(void))
{
  v24[1] = a1;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v24 - v14;
  a4(0);
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v16;
  v17._countAndFlagsBits = 124;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19 = String.utf8Data.getter();
  v21 = v20;

  v25 = v19;
  v26 = v21;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v19, v21);
  v22 = *(v10 + 16);
  v22(v13, v15, v9);
  v22(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1001DDB40(v8, v13);
  return (*(v10 + 8))(v15, v9);
}

char *sub_1001B9320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v39 = a4;
  v38 = a3;
  v40 = a2;
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for SharingScheduler();
  v51[3] = v12;
  v51[4] = &off_1016590E8;
  v51[0] = a1;
  v13 = type metadata accessor for SystemInfoDynamic();
  v49 = v13;
  v50 = &off_10166FF90;
  v48[0] = a5;
  type metadata accessor for SharesRemovalManager(0);
  v14 = swift_allocObject();
  v15 = sub_10015049C(v51, v12);
  __chkstk_darwin(v15);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_10015049C(v48, v49);
  __chkstk_darwin(v19);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v17;
  v24 = *v21;
  v46 = v12;
  v47 = &off_1016590E8;
  v44 = &off_10166FF90;
  *&v45 = v23;
  v43 = v13;
  *&v42 = v24;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v25 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  UUID.init()();
  *(v14 + 27) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v14 + 30) = 0;
  v26 = OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isFindMyAppInstalledCached;
  if (qword_101695158 != -1)
  {
    swift_once();
  }

  v27 = &v14[v26];
  v28 = type metadata accessor for PrefixedDefaults();
  v29 = sub_1000076D4(v28, qword_1016C37A0);
  v30 = sub_1000BC4D4(&qword_101698E40, &unk_101390D30);
  v31 = *(*(v28 - 8) + 16);
  v31(&v27[*(v30 + 40)], v29, v28);
  v27[16] = 1;
  strcpy(v27, "findmyappstate");
  v27[15] = -18;
  v32 = &v14[OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isThisMeDeviceCached];
  v31(&v14[OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isThisMeDeviceCached + *(v30 + 40)], v29, v28);
  v32[16] = 0;
  *v32 = 0xD000000000000011;
  *(v32 + 1) = 0x800000010134CD20;
  v33 = &v14[OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__revokedCircles];
  v34 = sub_1000BC4D4(&qword_101698E48, &qword_1013F8A00);
  v31(&v33[*(v34 + 40)], v29, v28);
  strcpy(v33, "revokedcircles");
  v33[15] = -18;
  *(v33 + 2) = _swiftEmptyArrayStorage;
  v35 = v39;
  *(v14 + 28) = v38;
  *(v14 + 29) = v35;
  sub_10000A748(&v45, (v14 + 112));
  sub_10000A748(&v42, (v14 + 152));
  *(v14 + 24) = v41;
  *(v14 + 25) = &off_10162A850;
  *(v14 + 26) = v40;
  sub_100007BAC(v48);
  sub_100007BAC(v51);
  return v14;
}

uint64_t sub_1001B9848()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7194(v4, v0 + v3);
}

void sub_1001B9924(uint64_t a1, void (*a2)(uint64_t, void *))
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = [objc_opt_self() currentConnection];
  if (v7)
  {
    v8 = v7;
    if (sub_100F9CA44(v7))
    {

      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = a1;

      sub_10025EDD4(0, 0, v6, &unk_101390BA0, v10);

      a2(1, 0);

      return;
    }
  }

  type metadata accessor for SPBeaconSharingError(0);
  v12 = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
  _BridgedStoredNSError.init(_:userInfo:)();
  v11 = v13;
  a2(0, v13);
}

void sub_1001B9B28(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v4 = [objc_opt_self() currentConnection];
  if (v4)
  {
    v5 = v4;
    v6 = *(v3 + 184);
    v7 = *(v6 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    v9 = swift_allocObject();
    v9[2] = sub_1001BCDB8;
    v9[3] = v8;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_101611F70;
    v10 = _Block_copy(aBlock);

    v11 = v5;

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      (*(a2 + 16))(a2, 1, 0);
    }
  }

  else
  {
    type metadata accessor for SPBeaconSharingError(0);
    aBlock[6] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v12);
  }
}

char *sub_1001B9D8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 14) = 0xD000000000000014;
  *(v2 + 15) = 0x80000001013904B0;
  *(v2 + 19) = 2;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010749F0(v20);

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  *(v2 + 20) = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  *(v2 + 21) = XPCSessionManager.init(name:)();
  *(v2 + 22) = 0;
  type metadata accessor for BeaconSharingServiceConnections(0);
  swift_allocObject();
  *(v2 + 23) = sub_100F04FA4();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B2E8;
  v22 = &off_101632E88;
  v23 = &off_101613BE0;
  v21 = type metadata accessor for BeaconObservationStore(0);
  *&v20 = v6;
  type metadata accessor for MemberCircleRevokeManager();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v20, (v7 + 32));
  *(v3 + 25) = v7;
  type metadata accessor for MessagingQueryController();
  swift_allocObject();

  *(v3 + 26) = sub_10126766C(0xD00000000000001BLL, 0x800000010134CCA0);
  swift_allocObject();
  *(v3 + 27) = sub_10126766C(0xD000000000000037, 0x800000010134CCC0);
  *(v3 + 28) = 0;
  *(v3 + 29) = 0;
  *(v3 + 30) = _swiftEmptyArrayStorage;
  *(v3 + 31) = &_swiftEmptySetSingleton;
  type metadata accessor for DeviceIdentityUtility(0);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v8 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v8 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 1;
  *(v3 + 32) = v8;
  *(v3 + 33) = 0;
  v11 = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_pendingExpirationTask;
  v12 = type metadata accessor for BeaconSharingService.PendingExpirationTask(0);
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_dailySharesCountAnalyticsThrottle;
  *&v3[v13] = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  *(v3 + 17) = a1;
  type metadata accessor for SharingCircleKeyManager();
  v14 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v14 + 112) = v15;
  *(v14 + 120) = a1;
  *(v3 + 16) = v14;
  *(v3 + 24) = a2;
  v16 = qword_101695510;
  swift_retain_n();

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_10177CEA0;
  type metadata accessor for AppDeletionObserver();
  v18 = swift_allocObject();
  v18[4] = 0;
  v18[5] = 0;
  v18[2] = 0xD000000000000010;
  v18[3] = 0x800000010134AAC0;

  *(v3 + 18) = sub_1001B9320(a2, a1, &unk_101390D20, a1, v17, v18);
  *(*(v3 + 25) + 24) = &off_101610E20;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_1001BA24C()
{
  sub_1001BAFE0();
  v0 = NSXPCConnection.hasEntitlement<A>(_:)();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0 & 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "BeaconSharingService: Received new XPC connection (has entitlement: %{BOOL}d).", v4, 8u);
  }

  return v0 & 1;
}

void sub_1001BA354(uint64_t a1)
{
  v3 = type metadata accessor for SharingCircleSecret(0) - 8;
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7 <= 9)
  {
    if (v7)
    {
      v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v13 = *(v4 + 72);
      do
      {
        sub_1001BB2E0(v12, v6, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v6);
        sub_1001BA80C(v6, type metadata accessor for SharingCircleSecret);
        if (v1)
        {
          break;
        }

        v12 += v13;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A560);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = 9;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;

      _os_log_impl(&_mh_execute_header, v9, v10, "More than %ld shared secrets - leaving them orphaned for later cleanup. Count: %ld.", v11, 0x16u);
    }

    else
    {
    }
  }
}

uint64_t sub_1001BA578()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1001881A8(v2, v3, v4);
}

uint64_t sub_1001BA620()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BA6C8;

  return sub_100188514(v2, v3, v4);
}

uint64_t sub_1001BA6C8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1001BA80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001BA8B4(uint64_t a1)
{
  v3 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 9) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + v5;
  v11 = *(v1 + v5);
  v12 = *(v10 + 8);
  v13 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100014744;

  return sub_1001B67C0(a1, v8, v9, v1 + v4, v11, v12, v1 + v7, v13);
}

uint64_t sub_1001BAA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C08, &unk_101390730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BAAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001BAB50()
{
  result = qword_101698C50;
  if (!qword_101698C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698C50);
  }

  return result;
}

uint64_t sub_1001BABA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1001881A8(v2, v3, v4);
}

uint64_t sub_1001BAC4C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1001B7190(a1, a2, v2);
}

uint64_t sub_1001BAD58()
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

  return sub_1003A0A0C(v4, v0 + v3, v6, v7);
}

unint64_t sub_1001BAEE0()
{
  result = qword_101698CC8;
  if (!qword_101698CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698CC8);
  }

  return result;
}

unint64_t sub_1001BAF88()
{
  result = qword_101698CD0;
  if (!qword_101698CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698CD0);
  }

  return result;
}

unint64_t sub_1001BAFE0()
{
  result = qword_101698CF0;
  if (!qword_101698CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698CF0);
  }

  return result;
}

unint64_t sub_1001BB034()
{
  result = qword_101698D28;
  if (!qword_101698D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698D28);
  }

  return result;
}

unint64_t sub_1001BB088()
{
  result = qword_101698D48;
  if (!qword_101698D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698D48);
  }

  return result;
}

uint64_t sub_1001BB130()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A3244(v0 + v3);
}

uint64_t sub_1001BB214()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A659C(v0 + v3);
}

uint64_t sub_1001BB2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BB348(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1006ADD3C(a1, v1 + 16, v4, v5, v6);
}

uint64_t sub_1001BB408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10017C0E8(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BB570(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100174124(a1, a2, v2);
}

uint64_t sub_1001BB61C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10102AB90(v0);
}

uint64_t sub_1001BB6AC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100174088(v2, v0 + 24);
}

uint64_t sub_1001BB744()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001BB784()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100173DAC(v2, v0 + 24);
}

uint64_t sub_1001BB81C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100ECDAC8(v0);
}

uint64_t sub_1001BB8AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001BB8F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10017C364(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BB9BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001BBA4C;

  return sub_100186F4C(v0);
}

uint64_t sub_1001BBA4C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1001BBB48()
{
  v2 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A5AF4(v4, v0 + v3);
}

uint64_t sub_1001BBC20(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_100171CB4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBD10(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_1001713BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBDFC(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_100170E04(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBED0(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_1001707D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBFCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016FF18(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BC110(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016F9A0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BC20C(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016F48C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BC2F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10016F054(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BC3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10016ECA4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BC484()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001BC4CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10016E618(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BC594(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016DE6C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BC6DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = v1[4];
  v12 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_10016D5E0(a1, v8, v9, v11, v1 + v6, v10, v13, v14);
}

uint64_t sub_1001BC824()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_1001BC904(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = v1[4];
  v12 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_10016CE88(a1, v8, v9, v11, v1 + v6, v10, v13, v14);
}

uint64_t sub_1001BCA4C(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016C8D8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BCB20(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016C314(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BCCCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for MACAddress();
  return sub_100E70158((v1 + v4), *(v1 + v5 + 8), *(v1 + v5 + 16), a1);
}

uint64_t sub_1001BCDC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10018D030();
}

uint64_t sub_1001BCE7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10016BE2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BCF44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001BCF8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10016BB68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BD054(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016B5A4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BD190(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016AF88(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BD264(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016A9C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BD3A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001BD3F0(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016A52C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BD4C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001BD50C(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016A064(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BD5E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100169A2C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_1001BD71C(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100E6F32C(v5, (v1 + v4), v6, a1);
}

uint64_t sub_1001BD7BC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1001BD844(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1001691D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BD980(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100168C10(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BDABC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100168658(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BDBF8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001BDCDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100168094(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BDE20(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014744;

  return sub_1001665B0(a1, v6, v7, v9, v10, v1 + v4, v8, v11);
}

uint64_t sub_1001BDF7C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_1001BE054(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1001726F0(a1, v1);
}

uint64_t sub_1001BE0EC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t getEnumTagSinglePayload for BeaconSharingService.BeaconSharingServiceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BeaconSharingService.BeaconSharingServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001BE2E8()
{
  result = qword_101698E58;
  if (!qword_101698E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E58);
  }

  return result;
}

unint64_t sub_1001BE340()
{
  result = qword_101698E60;
  if (!qword_101698E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E60);
  }

  return result;
}

unint64_t sub_1001BE398()
{
  result = qword_101698E68;
  if (!qword_101698E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E68);
  }

  return result;
}

unint64_t sub_1001BE3F0()
{
  result = qword_101698E70;
  if (!qword_101698E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E70);
  }

  return result;
}

uint64_t sub_1001BE4E0(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v18 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v18, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v5, *(&v5 + 1));
    v17 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v17, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v16 = v1[3];
    v5 = v1[3];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v16, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v15 = v1[4];
    v5 = v1[4];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v15, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v14 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v14, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v13 = v1[5];
    v5 = v1[5];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v13, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v12 = v1[7];
    v5 = v1[7];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v12, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v11 = v1[6];
    v5 = v1[6];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v11, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v10 = v1[8];
    v5 = v1[8];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v10, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v9 = v1[9];
    v5 = v1[9];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[10];
    v5 = v1[10];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v5, *(&v5 + 1));
  return sub_100007BAC(v6);
}

double sub_1001BE978@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001BF4F4(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_1001BE9F4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17)
{
  v128 = result;
  v141 = a5;
  v142 = a6;
  v21 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v22 = 0;
    if (v21 != 2)
    {
      goto LABEL_10;
    }

    v24 = *(a5 + 16);
    v23 = *(a5 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(a6);
    goto LABEL_10;
  }

  LODWORD(v22) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v22 = v22;
LABEL_10:
  v26 = 60 - v22;
  if (__OFSUB__(60, v22))
  {
    __break(1u);
    goto LABEL_167;
  }

  sub_100017D5C(a5, a6);
  v139 = sub_100845C88(v26);
  v140 = v28;
  sub_100776394(&v139, 0);
  v29 = v139;
  v30 = v140;
  Data.append(_:)();
  result = sub_100016590(v29, v30);
  v139 = a7;
  v140 = a8;
  v31 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(a8);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v31 != 2)
  {
    v32 = 0;
    goto LABEL_21;
  }

  v34 = *(a7 + 16);
  v33 = *(a7 + 24);
  v25 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v25)
  {
    __break(1u);
LABEL_18:
    LODWORD(v32) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v32 = v32;
  }

LABEL_21:
  v35 = 100 - v32;
  if (__OFSUB__(100, v32))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v122 = a4;
  sub_100017D5C(a7, a8);
  v137 = sub_100845C88(v35);
  v138 = v36;
  sub_100776394(&v137, 0);
  v38 = v137;
  v37 = v138;
  Data.append(_:)();
  result = sub_100016590(v38, v37);
  v137 = a10;
  v138 = a11;
  v39 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE6(a11);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v39 != 2)
  {
    v40 = 0;
    goto LABEL_32;
  }

  v42 = *(a10 + 16);
  v41 = *(a10 + 24);
  v25 = __OFSUB__(v41, v42);
  v40 = v41 - v42;
  if (v25)
  {
    __break(1u);
LABEL_29:
    LODWORD(v40) = HIDWORD(a10) - a10;
    if (__OFSUB__(HIDWORD(a10), a10))
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v40 = v40;
  }

LABEL_32:
  v43 = 706 - v40;
  if (__OFSUB__(706, v40))
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_100017D5C(a10, a11);
  v135 = sub_100845C88(v43);
  v136 = v44;
  sub_100776394(&v135, 0);
  v45 = v135;
  v46 = v136;
  Data.append(_:)();
  result = sub_100016590(v45, v46);
  v47 = v142;
  v48 = v140;
  v133 = v141;
  v134 = v139;
  if (v31 <= 1)
  {
    if (!v31)
    {
      v49 = BYTE6(a8);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v31 != 2)
  {
    v49 = 0;
    goto LABEL_43;
  }

  v51 = *(a7 + 16);
  v50 = *(a7 + 24);
  v25 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v25)
  {
    __break(1u);
LABEL_40:
    LODWORD(v49) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v49 = v49;
  }

LABEL_43:
  v135 = v49;
  v121 = v47;
  sub_100017D5C(v133, v47);
  v129 = v48;
  sub_100017D5C(v134, v48);
  sub_1000C3258();
  v52 = FixedWidthInteger.data.getter();
  v54 = v53;
  v127 = Data.trimmed.getter();
  v132 = v55;
  sub_100016590(v52, v54);
  result = v137;
  v56 = v138;
  if (v39 > 1)
  {
    if (v39 != 2 || !__OFSUB__(*(a10 + 24), *(a10 + 16)))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  else if (!v39)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

LABEL_51:
  v120 = result;
  v57 = v56;
  sub_100017D5C(result, v56);
  v58 = FixedWidthInteger.data.getter();
  v60 = v59;
  v126 = Data.trimmed.getter();
  v131 = v61;
  result = sub_100016590(v58, v60);
  v62 = a13 >> 62;
  if ((a13 >> 62) > 1)
  {
    if (v62 != 2 || !__OFSUB__(*(a12 + 24), *(a12 + 16)))
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else if (!v62)
  {
    goto LABEL_59;
  }

  if (__OFSUB__(HIDWORD(a12), a12))
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

LABEL_59:
  v63 = FixedWidthInteger.data.getter();
  v65 = v64;
  v125 = Data.trimmed.getter();
  v130 = v66;
  sub_100016590(a10, a11);
  sub_100016590(a7, a8);
  sub_100016590(a5, a6);
  result = sub_100016590(v63, v65);
  v67 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v68 = a3;
    if (!v67)
    {
      v69 = BYTE6(a2);
LABEL_68:
      v70 = v122;
      v71 = v129;
      goto LABEL_69;
    }

LABEL_66:
    LODWORD(v69) = HIDWORD(v128) - v128;
    if (__OFSUB__(HIDWORD(v128), v128))
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v69 = v69;
    goto LABEL_68;
  }

  v70 = v122;
  v68 = a3;
  v71 = v129;
  if (v67 != 2)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v73 = *(v128 + 16);
  v72 = *(v128 + 24);
  v25 = __OFSUB__(v72, v73);
  v69 = v72 - v73;
  if (v25)
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_69:
  if (v69 != 89)
  {
    goto LABEL_190;
  }

  v74 = v70 >> 62;
  if ((v70 >> 62) <= 1)
  {
    if (!v74)
    {
      v75 = BYTE6(v70);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (v74 != 2)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v77 = *(v68 + 16);
  v76 = *(v68 + 24);
  v25 = __OFSUB__(v76, v77);
  v75 = v76 - v77;
  if (v25)
  {
    __break(1u);
LABEL_77:
    LODWORD(v75) = HIDWORD(v68) - v68;
    if (__OFSUB__(HIDWORD(v68), v68))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v75 = v75;
  }

LABEL_79:
  if (v75 != 32)
  {
    goto LABEL_191;
  }

  v78 = v71 >> 62;
  if ((v71 >> 62) <= 1)
  {
    if (!v78)
    {
      v79 = BYTE6(v71);
LABEL_89:
      v81 = v120;
      v80 = v121;
      goto LABEL_90;
    }

LABEL_87:
    LODWORD(v79) = HIDWORD(v134) - v134;
    if (__OFSUB__(HIDWORD(v134), v134))
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v79 = v79;
    goto LABEL_89;
  }

  v81 = v120;
  v80 = v121;
  if (v78 != 2)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v83 = *(v134 + 16);
  v82 = *(v134 + 24);
  v25 = __OFSUB__(v82, v83);
  v79 = v82 - v83;
  if (v25)
  {
    __break(1u);
    goto LABEL_87;
  }

LABEL_90:
  if (v79 != 100)
  {
    goto LABEL_192;
  }

  v84 = v132 >> 62;
  if ((v132 >> 62) <= 1)
  {
    if (!v84)
    {
      v85 = BYTE6(v132);
      goto LABEL_100;
    }

    goto LABEL_98;
  }

  if (v84 != 2)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v87 = *(v127 + 16);
  v86 = *(v127 + 24);
  v25 = __OFSUB__(v86, v87);
  v85 = v86 - v87;
  if (v25)
  {
    __break(1u);
LABEL_98:
    LODWORD(v85) = HIDWORD(v127) - v127;
    if (__OFSUB__(HIDWORD(v127), v127))
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v85 = v85;
  }

LABEL_100:
  if (v85 != 1)
  {
    goto LABEL_193;
  }

  v88 = v80 >> 62;
  if ((v80 >> 62) <= 1)
  {
    if (!v88)
    {
      v89 = BYTE6(v80);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  if (v88 != 2)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v91 = *(v133 + 16);
  v90 = *(v133 + 24);
  v25 = __OFSUB__(v90, v91);
  v89 = v90 - v91;
  if (v25)
  {
    __break(1u);
LABEL_108:
    LODWORD(v89) = HIDWORD(v133) - v133;
    if (__OFSUB__(HIDWORD(v133), v133))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v89 = v89;
  }

LABEL_110:
  if (v89 != 60)
  {
    goto LABEL_194;
  }

  if ((v57 >> 62) <= 1)
  {
    if (v57 >> 62 == 1)
    {
      LODWORD(v92) = HIDWORD(v81) - v81;
      if (!__OFSUB__(HIDWORD(v81), v81))
      {
        v92 = v92;
        goto LABEL_117;
      }

      goto LABEL_169;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  if (v57 >> 62 != 2)
  {
    goto LABEL_188;
  }

  v94 = *(v81 + 16);
  v93 = *(v81 + 24);
  v25 = __OFSUB__(v93, v94);
  v92 = v93 - v94;
  if (v25)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

LABEL_117:
  if (v92 != 706)
  {
    goto LABEL_188;
  }

  v95 = v131 >> 62;
  if ((v131 >> 62) <= 1)
  {
    if (!v95)
    {
      v96 = BYTE6(v131);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  if (v95 != 2)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v98 = *(v126 + 16);
  v97 = *(v126 + 24);
  v25 = __OFSUB__(v97, v98);
  v96 = v97 - v98;
  if (v25)
  {
    __break(1u);
LABEL_125:
    LODWORD(v96) = HIDWORD(v126) - v126;
    if (__OFSUB__(HIDWORD(v126), v126))
    {
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v96 = v96;
  }

LABEL_127:
  if (v96 != 2)
  {
    goto LABEL_195;
  }

  if (v62 <= 1)
  {
    if (v62 == 1)
    {
      LODWORD(v99) = HIDWORD(a12) - a12;
      if (!__OFSUB__(HIDWORD(a12), a12))
      {
        v99 = v99;
        goto LABEL_134;
      }

      goto LABEL_171;
    }

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (v62 != 2)
  {
    goto LABEL_189;
  }

  v101 = *(a12 + 16);
  v100 = *(a12 + 24);
  v25 = __OFSUB__(v100, v101);
  v99 = v100 - v101;
  if (v25)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_134:
  if (v99 != 554)
  {
    goto LABEL_189;
  }

  v102 = v130 >> 62;
  if ((v130 >> 62) <= 1)
  {
    if (!v102)
    {
      v103 = BYTE6(v130);
      goto LABEL_144;
    }

LABEL_142:
    LODWORD(v103) = HIDWORD(v125) - v125;
    if (!__OFSUB__(HIDWORD(v125), v125))
    {
      v103 = v103;
      goto LABEL_144;
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if (v102 != 2)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v105 = *(v125 + 16);
  v104 = *(v125 + 24);
  v25 = __OFSUB__(v104, v105);
  v103 = v104 - v105;
  if (v25)
  {
    __break(1u);
    goto LABEL_142;
  }

LABEL_144:
  if (v103 != 2)
  {
    goto LABEL_196;
  }

  v106 = a15 >> 62;
  if ((a15 >> 62) <= 1)
  {
    if (!v106)
    {
      v107 = BYTE6(a15);
      goto LABEL_154;
    }

LABEL_152:
    LODWORD(v107) = HIDWORD(a14) - a14;
    if (!__OFSUB__(HIDWORD(a14), a14))
    {
      v107 = v107;
      goto LABEL_154;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v106 != 2)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v109 = *(a14 + 16);
  v108 = *(a14 + 24);
  v25 = __OFSUB__(v108, v109);
  v107 = v108 - v109;
  if (v25)
  {
    __break(1u);
    goto LABEL_152;
  }

LABEL_154:
  if (v107 != 8)
  {
    goto LABEL_197;
  }

  v110 = a17 >> 62;
  if ((a17 >> 62) <= 1)
  {
    if (!v110)
    {
      v111 = BYTE6(a17);
      goto LABEL_164;
    }

LABEL_162:
    LODWORD(v111) = HIDWORD(a16) - a16;
    if (!__OFSUB__(HIDWORD(a16), a16))
    {
      v111 = v111;
      goto LABEL_164;
    }

    goto LABEL_181;
  }

  if (v110 != 2)
  {
    goto LABEL_198;
  }

  v113 = *(a16 + 16);
  v112 = *(a16 + 24);
  v25 = __OFSUB__(v112, v113);
  v111 = v112 - v113;
  if (v25)
  {
    __break(1u);
    goto LABEL_162;
  }

LABEL_164:
  if (v111 == 24)
  {
    v114 = v57;
    v115 = v57;
    v116 = v68;
    sub_100016590(v81, v114);
    sub_100016590(v134, v129);
    result = sub_100016590(v133, v80);
    *a9 = v128;
    *(a9 + 8) = a2;
    *(a9 + 16) = v116;
    *(a9 + 24) = v70;
    *&v117 = v133;
    *(&v117 + 1) = v80;
    *&v118 = v134;
    *(&v118 + 1) = v129;
    *(a9 + 32) = v117;
    *(a9 + 48) = v118;
    *(a9 + 64) = v127;
    *(a9 + 72) = v132;
    *(a9 + 80) = v81;
    *(a9 + 88) = v115;
    *(a9 + 96) = v126;
    *(a9 + 104) = v131;
    *(a9 + 112) = a12;
    *(a9 + 120) = a13;
    *(a9 + 128) = v125;
    *(a9 + 136) = v130;
    *(a9 + 144) = a14;
    *(a9 + 152) = a15;
    *(a9 + 160) = a16;
    *(a9 + 168) = a17;
    *(a9 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_1001BF2DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001BF304(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1001BF338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 192))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001BF38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1001BF41C(uint64_t a1)
{
  *(a1 + 8) = sub_1001BF44C();
  result = sub_1001BF4A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001BF44C()
{
  result = qword_101698E80;
  if (!qword_101698E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E80);
  }

  return result;
}

unint64_t sub_1001BF4A0()
{
  result = qword_101698E88;
  if (!qword_101698E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E88);
  }

  return result;
}

uint64_t sub_1001BF4F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v102, v103);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v102);
    return sub_100007BAC(a1);
  }

  v99 = v5;
  v104 = v6;
  sub_10015049C(v102, v103);
  v97 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v98 = v7;
  sub_10015049C(v102, v103);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_10015049C(v102, v103);
  v93 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v94 = v11;
  v95 = v8;
  v96 = v10;
  sub_100017D5C(v8, v10);
  sub_1000E0A3C();
  v12 = DataProtocol.intValue.getter();
  sub_10002EA98(v12, v8, v10, &v100);
  v13 = v100;
  v14 = v101;
  sub_10015049C(v102, v103);
  v89 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v90 = v15;
  v91 = v14;
  v92 = v13;
  sub_10015049C(v102, v103);
  v87 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v18 = v17;
  sub_10015049C(v102, v103);
  v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v86 = v20;
  v83 = v18;
  v84 = v19;
  sub_100017D5C(v87, v18);
  v21 = DataProtocol.intValue.getter();
  sub_10002EA98(v21, v87, v18, &v100);
  v22 = v101;
  v85 = v100;
  sub_10015049C(v102, v103);
  v23 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v25 = v24;
  v81 = v22;
  v82 = v23;
  sub_10015049C(v102, v103);
  v79 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v80 = v26;
  sub_100017D5C(v82, v25);
  v27 = DataProtocol.intValue.getter();
  sub_10002EA98(v27, v82, v25, &v100);
  v28 = v101;
  v88 = v100;
  sub_10015049C(v102, v103);
  v77 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v78 = v29;
  sub_10015049C(v102, v103);
  v30 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v32 = v31;
  sub_100016590(v82, v25);
  sub_100016590(v87, v83);
  result = sub_100016590(v95, v96);
  v33 = v104 >> 62;
  if ((v104 >> 62) <= 1)
  {
    if (!v33)
    {
      v34 = BYTE6(v104);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v33 != 2)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v35 = *(v99 + 16);
  v36 = *(v99 + 24);
  v37 = __OFSUB__(v36, v35);
  v34 = v36 - v35;
  if (v37)
  {
    __break(1u);
LABEL_11:
    LODWORD(v34) = HIDWORD(v99) - v99;
    if (__OFSUB__(HIDWORD(v99), v99))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v34 = v34;
  }

LABEL_13:
  if (v34 != 89)
  {
    goto LABEL_124;
  }

  v38 = v98 >> 62;
  if ((v98 >> 62) <= 1)
  {
    if (!v38)
    {
      v39 = BYTE6(v98);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v38 != 2)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v40 = *(v97 + 16);
  v41 = *(v97 + 24);
  v37 = __OFSUB__(v41, v40);
  v39 = v41 - v40;
  if (v37)
  {
    __break(1u);
LABEL_21:
    LODWORD(v39) = HIDWORD(v97) - v97;
    if (__OFSUB__(HIDWORD(v97), v97))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v39 = v39;
  }

LABEL_23:
  if (v39 != 32)
  {
    goto LABEL_125;
  }

  v42 = v91 >> 62;
  if ((v91 >> 62) <= 1)
  {
    if (!v42)
    {
      v43 = BYTE6(v91);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v42 != 2)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v45 = *(v92 + 16);
  v44 = *(v92 + 24);
  v37 = __OFSUB__(v44, v45);
  v43 = v44 - v45;
  if (v37)
  {
    __break(1u);
LABEL_31:
    LODWORD(v43) = HIDWORD(v92) - v92;
    if (__OFSUB__(HIDWORD(v92), v92))
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v43 = v43;
  }

LABEL_33:
  if (v43 != 100)
  {
    goto LABEL_126;
  }

  v46 = v94 >> 62;
  if ((v94 >> 62) <= 1)
  {
    if (!v46)
    {
      v47 = BYTE6(v94);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v46 != 2)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v48 = *(v93 + 16);
  v49 = *(v93 + 24);
  v37 = __OFSUB__(v49, v48);
  v47 = v49 - v48;
  if (v37)
  {
    __break(1u);
LABEL_41:
    LODWORD(v47) = HIDWORD(v93) - v93;
    if (__OFSUB__(HIDWORD(v93), v93))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v47 = v47;
  }

LABEL_43:
  if (v47 != 1)
  {
    goto LABEL_127;
  }

  v50 = v90 >> 62;
  if ((v90 >> 62) <= 1)
  {
    if (!v50)
    {
      v51 = BYTE6(v90);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v50 != 2)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v53 = *(v89 + 16);
  v52 = *(v89 + 24);
  v37 = __OFSUB__(v52, v53);
  v51 = v52 - v53;
  if (v37)
  {
    __break(1u);
LABEL_51:
    LODWORD(v51) = HIDWORD(v89) - v89;
    if (__OFSUB__(HIDWORD(v89), v89))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v51 = v51;
  }

LABEL_53:
  if (v51 != 60)
  {
    goto LABEL_128;
  }

  if ((v81 >> 62) <= 1)
  {
    if (v81 >> 62 == 1)
    {
      LODWORD(v54) = HIDWORD(v85) - v85;
      if (!__OFSUB__(HIDWORD(v85), v85))
      {
        v54 = v54;
        goto LABEL_60;
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v81 >> 62 != 2)
  {
    goto LABEL_122;
  }

  v56 = *(v85 + 16);
  v55 = *(v85 + 24);
  v37 = __OFSUB__(v55, v56);
  v54 = v55 - v56;
  if (v37)
  {
    goto LABEL_110;
  }

LABEL_60:
  if (v54 != 706)
  {
    goto LABEL_122;
  }

  v57 = v86 >> 62;
  if ((v86 >> 62) <= 1)
  {
    if (!v57)
    {
      v58 = BYTE6(v86);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if (v57 != 2)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v60 = *(v84 + 16);
  v59 = *(v84 + 24);
  v37 = __OFSUB__(v59, v60);
  v58 = v59 - v60;
  if (v37)
  {
    __break(1u);
LABEL_68:
    LODWORD(v58) = HIDWORD(v84) - v84;
    if (__OFSUB__(HIDWORD(v84), v84))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v58 = v58;
  }

LABEL_70:
  if (v58 != 2)
  {
    goto LABEL_129;
  }

  if ((v28 >> 62) <= 1)
  {
    if (v28 >> 62 == 1)
    {
      LODWORD(v61) = HIDWORD(v88) - v88;
      if (!__OFSUB__(HIDWORD(v88), v88))
      {
        v61 = v61;
        goto LABEL_77;
      }

      goto LABEL_111;
    }

LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v28 >> 62 != 2)
  {
    goto LABEL_123;
  }

  v63 = *(v88 + 16);
  v62 = *(v88 + 24);
  v37 = __OFSUB__(v62, v63);
  v61 = v62 - v63;
  if (v37)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

LABEL_77:
  if (v61 != 554)
  {
    goto LABEL_123;
  }

  v64 = v80 >> 62;
  if ((v80 >> 62) <= 1)
  {
    if (!v64)
    {
      v65 = BYTE6(v80);
      goto LABEL_87;
    }

LABEL_85:
    LODWORD(v65) = HIDWORD(v79) - v79;
    if (!__OFSUB__(HIDWORD(v79), v79))
    {
      v65 = v65;
      goto LABEL_87;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v64 != 2)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v67 = *(v79 + 16);
  v66 = *(v79 + 24);
  v37 = __OFSUB__(v66, v67);
  v65 = v66 - v67;
  if (v37)
  {
    __break(1u);
    goto LABEL_85;
  }

LABEL_87:
  if (v65 != 2)
  {
    goto LABEL_130;
  }

  v68 = v78 >> 62;
  if ((v78 >> 62) <= 1)
  {
    if (!v68)
    {
      v69 = BYTE6(v78);
      goto LABEL_97;
    }

LABEL_95:
    LODWORD(v69) = HIDWORD(v77) - v77;
    if (!__OFSUB__(HIDWORD(v77), v77))
    {
      v69 = v69;
      goto LABEL_97;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v68 != 2)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v71 = *(v77 + 16);
  v70 = *(v77 + 24);
  v37 = __OFSUB__(v70, v71);
  v69 = v70 - v71;
  if (v37)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_97:
  if (v69 != 8)
  {
    goto LABEL_131;
  }

  v72 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v72)
    {
      v73 = BYTE6(v32);
      goto LABEL_107;
    }

LABEL_105:
    LODWORD(v73) = HIDWORD(v30) - v30;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v73 = v73;
      goto LABEL_107;
    }

    goto LABEL_121;
  }

  if (v72 != 2)
  {
    goto LABEL_132;
  }

  v75 = *(v30 + 16);
  v74 = *(v30 + 24);
  v37 = __OFSUB__(v74, v75);
  v73 = v74 - v75;
  if (v37)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_107:
  if (v73 == 24)
  {
    sub_100007BAC(v102);
    result = sub_100007BAC(a1);
    v76 = v104;
    *a2 = v99;
    *(a2 + 8) = v76;
    *(a2 + 16) = v97;
    *(a2 + 24) = v98;
    *(a2 + 32) = v89;
    *(a2 + 40) = v90;
    *(a2 + 48) = v92;
    *(a2 + 56) = v91;
    *(a2 + 64) = v93;
    *(a2 + 72) = v94;
    *(a2 + 80) = v85;
    *(a2 + 88) = v81;
    *(a2 + 96) = v84;
    *(a2 + 104) = v86;
    *(a2 + 112) = v88;
    *(a2 + 120) = v28;
    *(a2 + 128) = v79;
    *(a2 + 136) = v80;
    *(a2 + 144) = v77;
    *(a2 + 152) = v78;
    *(a2 + 160) = v30;
    *(a2 + 168) = v32;
    *(a2 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1001BFE58()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1001BFEC0()
{
  result = qword_101698F68;
  if (!qword_101698F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698F68);
  }

  return result;
}

uint64_t sub_1001BFF14(uint64_t a1, uint64_t *a2)
{
  v53 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v51 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v52 = &v49 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = (a1 + 40);
  *&v7 = 141558275;
  v50 = v7;
  while (1)
  {
    v14 = *(v10 - 1);
    v13 = *v10;
    sub_100017D5C(v14, *v10);
    v15 = Data.subdata(in:)();
    v17 = v16;
    v57[0] = v15;
    v57[1] = v16;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177C418);
      sub_100017D5C(v15, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      sub_100016590(v15, v17);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v58 = v9;
        v22 = v21;
        v23 = swift_slowAlloc();
        v56 = v13;
        v57[0] = v23;
        v24 = v23;
        *v22 = v50;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        v25 = Data.hexString.getter();
        v55 = v14;
        v27 = sub_1000136BC(v25, v26, v57);

        *(v22 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid serial number %{private,mask.hash}s", v22, 0x16u);
        sub_100007BAC(v24);

        v9 = v58;

        sub_100016590(v15, v17);

        v11 = v55;
        v12 = v56;
      }

      else
      {

        sub_100016590(v15, v17);
        v11 = v14;
        v12 = v13;
      }

      result = sub_100016590(v11, v12);
      goto LABEL_5;
    }

    v55 = v14;
    v56 = v13;
    v58 = v9;
    v28 = Data.trimmed.getter();
    v30 = v29;
    v31 = type metadata accessor for MACAddress();
    v32 = v52;
    (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
    sub_1000E18CC(v32, v54);
    v33 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v33;
    v57[0] = v35;
    v37 = sub_100771E30(v28, v30);
    v38 = *(v35 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v36;
    if (*(v35 + 24) >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v57[0];
        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1010052E8();
        v44 = v57[0];
        if ((v41 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_100FE68E4(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_100771E30(v28, v30);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v37 = v42;
      v44 = v57[0];
      if ((v41 & 1) == 0)
      {
LABEL_15:
        v44[(v37 >> 6) + 8] |= 1 << v37;
        v45 = (v44[6] + 16 * v37);
        *v45 = v28;
        v45[1] = v30;
        sub_1000E18CC(v54, v44[7] + *(v51 + 72) * v37);
        v46 = v44[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_25;
        }

        v44[2] = v48;
        goto LABEL_20;
      }
    }

    sub_10002311C(v54, v44[7] + *(v51 + 72) * v37, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v28, v30);
LABEL_20:
    *v53 = v44;
    sub_100016590(v15, v17);
    result = sub_100016590(v55, v56);
    v9 = v58;
LABEL_5:
    v10 += 2;
    if (!--v9)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}